-- Global Variables
DPSMate.Modules.DPS = {}
DPSMate.Modules.DPS.Hist = "DMGDone"
DPSMate.Options.Options[1]["args"]["dps"] = {
	order = 10,
	type = 'toggle',
	name = DPSMate.L["dps"],
	desc = DPSMate.L["show"].." "..DPSMate.L["dps"]..".",
	get = function() return DPSMateSettings["windows"][DPSMate.Options.Dewdrop:GetOpenedParent().Key]["options"][1]["dps"] end, -- Addons might conflicting here with dewdrop
	set = function() DPSMate.Options:ToggleDrewDrop(1, "dps", DPSMate.Options.Dewdrop:GetOpenedParent()) end,
}

-- Register the moodule
DPSMate:Register("dps", DPSMate.Modules.DPS, DPSMate.L["dps"])

local tinsert = table.insert
local strformat = string.format

function DPSMate.Modules.DPS:GetSortedTable(arr,k)
	local b, a, total = {}, {}, 0
	if arr then
		for cat, val in pairs(arr) do
			local name = DPSMate:GetUserById(cat)
			if (not DPSMateUser[name][4] or (DPSMateUser[name][4] and not DPSMateSettings["mergepets"])) then
				if DPSMate:ApplyFilter(k, name) then
					local CV = val["i"]
					if DPSMate:PlayerExist(DPSMateUser, DPSMateUser[name][5]) and arr[DPSMateUser[DPSMateUser[name][5]][1]] then
						CV=CV+arr[DPSMateUser[DPSMateUser[name][5]][1]]["i"]
					end
					a[CV] = name
					local i = 1
					while true do
						if (not b[i]) then
							tinsert(b, i, CV)
							tinsert(a, i, name)
							break
						else
							if b[i] < CV then
								tinsert(b, i, CV)
								tinsert(a, i, name)
								break
							end
						end
						i=i+1
					end
					total = total + CV
				end
			end
		end
	end
	return b, total, a
end

function DPSMate.Modules.DPS:EvalTable(user, k, cbt)
	local a, u, p, d, total, pet = {}, {}, {}, {}, 0, false
	local arr, cbet = DPSMate:GetMode(k)
	cbt = cbt or cbet
	if not arr[user[1]] then return end
	if (user[5] and user[5] ~= DPSMate.L["unknown"] and arr[DPSMateUser[user[5]][1]]) and DPSMateSettings["mergepets"] then u={user[1],DPSMateUser[user[5]][1]} else u={user[1]} end
	for _, v in pairs(u) do
		for cat, val in pairs(arr[v]) do
			if (type(val) == "table" and cat~="i") then
				if val[13]~=0 and cat~="" then
					if (DPSMateUser[DPSMate:GetUserById(v)][4]) then pet=true; else pet=false; end
					local i = 1
					while true do
						if (not d[i]) then
							tinsert(a, i, cat)
							tinsert(d, i, {val[13]/cbt, pet})
							break
						else
							if (d[i][1] < val[13]/cbt) then
								tinsert(a, i, cat)
								tinsert(d, i, {val[13]/cbt, pet})
								break
							end
						end
						i = i + 1
					end
				end
			end
		end
		total=total+arr[v]["i"]
	end
	return a, total/(cbt or 1), d
end

function DPSMate.Modules.DPS:GetSettingValues(arr, cbt, k, ecbt)
	local name, value, perc, sortedTable, total, a, p, strt = {}, {}, {}, {}, 0, 0, "", {[1]="",[2]=""}
	if DPSMateSettings["windows"][k]["numberformat"] == 2 then p = "K" end
	sortedTable, total, a = DPSMate.Modules.DPS:GetSortedTable(arr,k)
	for cat, val in pairs(sortedTable) do
		local dmg, tot, sort = DPSMate:FormatNumbers(val, total, sortedTable[1], k)
		if dmg==0 then break end
		local str = {[1]="",[2]="",[3]="",[4]=""}
		local pname = DPSMate:GetUserById(a[cat])
		if DPSMateSettings["columnsdps"][1] then str[1] = "("..dmg..p..")"; strt[1] = "("..tot..p..")" end
		if DPSMateSettings["columnsdps"][2] then str[2] = " "..strformat("%.1f", (dmg/cbt))..p; strt[2] = " "..strformat("%.1f", (tot/cbt))..p end
		if DPSMateSettings["columnsdps"][3] then str[3] = " ("..strformat("%.1f", 100*dmg/tot).."%)" end
		if DPSMateSettings["columnsdps"][4] then str[4] = " ("..strformat("%.1f", (dmg/(ecbt[pname] or cbt)))..p..")" end
		tinsert(name, a[cat])
		tinsert(value, str[1]..str[2]..str[4]..str[3])
		tinsert(perc, 100*(dmg/sort))
	end
	return name, value, perc, strt
end

function DPSMate.Modules.DPS:ShowTooltip(user,k)
	local a,b,c = DPSMate.Modules.DPS:EvalTable(DPSMateUser[user], k)
	local pet = ""
	if DPSMateSettings["informativetooltips"] then
		for i=1, DPSMateSettings["subviewrows"] do
			if not a[i] then break end
			if c[i][2] then pet="(Pet)" else pet="" end
			GameTooltip:AddDoubleLine(i..". "..DPSMate:GetAbilityById(a[i])..pet,strformat("%.2f", c[i][1]).." ("..strformat("%.2f", 100*c[i][1]/b).."%)",1,1,1,1,1,1)
		end
	end
end

function DPSMate.Modules.DPS:OpenDetails(obj, key, bool)
	if bool then
		DPSMate.Modules.DetailsDamage:UpdateCompare(obj, key, bool)
	else
		DPSMate.Modules.DetailsDamage:UpdateDetails(obj, key)
	end
end

function DPSMate.Modules.DPS:OpenTotalDetails(obj, key)
	DPSMate.Modules.DetailsDamageTotal:UpdateDetails(obj, key)
end
