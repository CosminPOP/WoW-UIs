-- Global Variables
DPSMate.Modules.DispelsReceived = {}
DPSMate.Modules.DispelsReceived.Hist = "Dispels"
DPSMate.Options.Options[1]["args"]["dispelsreceived"] = {
	order = 190,
	type = 'toggle',
	name = DPSMate.L["dispelsreceived"],
	desc = DPSMate.L["show"].." "..DPSMate.L["dispelsreceived"]..".",
	get = function() return DPSMateSettings["windows"][DPSMate.Options.Dewdrop:GetOpenedParent().Key]["options"][1]["dispelsreceived"] end,
	set = function() DPSMate.Options:ToggleDrewDrop(1, "dispelsreceived", DPSMate.Options.Dewdrop:GetOpenedParent()) end,
}

-- Register the moodule
DPSMate:Register("dispelsreceived", DPSMate.Modules.DispelsReceived, DPSMate.L["dispelsreceived"])

local tinsert = table.insert
local strformat = string.format

function DPSMate.Modules.DispelsReceived:GetSortedTable(arr,k)
	local b, a, temp, total = {}, {}, {}, 0
	for cat, val in pairs(arr) do -- 3 Owner
		for ca, va in pairs(val) do -- 42 Ability
			if ca~="i" then
				for c, v in pairs(va) do -- 3 Target
					if DPSMate:ApplyFilter(k, DPSMate:GetUserById(c)) then
						for ce, ve in pairs(v) do
							if temp[c] then temp[c]=temp[c]+ve else temp[c]=ve end
						end
					end
				end
			end
		end
	end
	for cat, val in pairs(temp) do
		local i = 1
		while true do
			if (not b[i]) then
				tinsert(b, i, val)
				tinsert(a, i, cat)
				break
			else
				if b[i] < val then
					tinsert(b, i, val)
					tinsert(a, i, cat)
					break
				end
			end
			i=i+1
		end
		total = total + val
	end
	return b, total, a
end

function DPSMate.Modules.DispelsReceived:EvalTable(user, k)
	local b, a, temp, total = {}, {}, {}, 0
	local arr = DPSMate:GetMode(k)
	for cat, val in pairs(arr) do -- 3 Owner
		temp[cat] = {
			[1] = 0,
			[2] = {},
			[3] = {}
		}
		for ca, va in pairs(val) do -- 42 Ability
			if ca~="i" then
				for c, v in pairs(va) do -- 3 Target
					if c==user[1] then
						for ce, ve in pairs(v) do
							temp[cat][1]=temp[cat][1]+ve
							local i = 1
							while true do
								if (not temp[cat][3][i]) then
									tinsert(temp[cat][3], i, ve)
									tinsert(temp[cat][2], i, ce)
									break
								else
									if temp[cat][3][i] < ve then
										tinsert(temp[cat][3], i, ve)
										tinsert(temp[cat][2], i, ce)
										break
									end
								end
								i=i+1
							end
						end
						break
					end
				end
			end
		end
	end
	for cat, val in pairs(temp) do
		if val[1]>0 then
			local i = 1
			while true do
				if (not b[i]) then
					tinsert(b, i, val)
					tinsert(a, i, cat)
					break
				else
					if b[i][1] < val[1] then
						tinsert(b, i, val)
						tinsert(a, i, cat)
						break
					end
				end
				i=i+1
			end
			total = total + val[1]
		end
	end
	return a, total, b
end

function DPSMate.Modules.DispelsReceived:GetSettingValues(arr, cbt, k)
	local name, value, perc, sortedTable, total, a, p, strt = {}, {}, {}, {}, 0, 0, "", {[1]="",[2]=""}
	
	sortedTable, total, a = DPSMate.Modules.DispelsReceived:GetSortedTable(arr,k)
	for cat, val in pairs(sortedTable) do
		local dmg, tot, sort = val, total, sortedTable[1]
		if dmg==0 then break end
		local str = {[1]="",[2]="",[3]=""}
		if DPSMateSettings["columnsdispelsreceived"][1] then str[1] = " "..dmg..p; strt[2] = tot..p end
		if DPSMateSettings["columnsdispelsreceived"][2] then str[3] = " ("..strformat("%.1f", 100*dmg/tot).."%)" end
		tinsert(name, DPSMate:GetUserById(a[cat]))
		tinsert(value, str[2]..str[1]..str[3])
		tinsert(perc, 100*(dmg/sort))
	end
	return name, value, perc, strt
end

function DPSMate.Modules.DispelsReceived:ShowTooltip(user,k)
	local a,b,c = DPSMate.Modules.DispelsReceived:EvalTable(DPSMateUser[user], k)
	if DPSMateSettings["informativetooltips"] then
		for i=1, DPSMateSettings["subviewrows"] do
			if not a[i] then break end
			GameTooltip:AddDoubleLine(i..". "..DPSMate:GetUserById(a[i]),c[i][1].." ("..strformat("%.2f", 100*c[i][1]/b).."%)",1,1,1,1,1,1)
			for p=1, 3 do 
				if not c[i][2][p] or c[i][3][p]==0 then break end
				GameTooltip:AddDoubleLine("       "..p..". "..DPSMate:GetAbilityById(c[i][2][p]),c[i][3][p].." ("..strformat("%.2f", 100*c[i][3][p]/c[i][1]).."%)",0.5,0.5,0.5,0.5,0.5,0.5)
			end
		end
	end
end

function DPSMate.Modules.DispelsReceived:OpenDetails(obj, key,bool)
	if bool then
		DPSMate.Modules.DetailsDispelsReceived:UpdateCompare(obj, key, bool)
	else
		DPSMate.Modules.DetailsDispelsReceived:UpdateDetails(obj, key)
	end
end

function DPSMate.Modules.DispelsReceived:OpenTotalDetails(obj, key)
	DPSMate.Modules.DetailsDispelsTotal:UpdateDetails(obj, key)
end

