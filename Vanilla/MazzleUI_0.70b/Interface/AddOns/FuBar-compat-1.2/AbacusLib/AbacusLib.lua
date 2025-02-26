local MAJOR_VERSION = "1.0"
local MINOR_VERSION = tonumber(string.sub("$Revision: 13306 $", 12, -3))
if AbacusLib and AbacusLib.versions[MAJOR_VERSION] and AbacusLib.versions[MAJOR_VERSION].minor >= MINOR_VERSION then
	return
end

-------------IRIEL'S-STUB-CODE--------------
local stub = {};

-- Instance replacement method, replace contents of old with that of new
function stub:ReplaceInstance(old, new)
   for k,v in pairs(old) do old[k]=nil; end
   for k,v in pairs(new) do old[k]=v; end
end

-- Get a new copy of the stub
function stub:NewStub()
  local newStub = {};
  self:ReplaceInstance(newStub, self);
  newStub.lastVersion = '';
  newStub.versions = {};
  return newStub;
end

-- Get instance version
function stub:GetInstance(version)
   if (not version) then version = self.lastVersion; end
   local versionData = self.versions[version];
   if (not versionData) then
      message("Cannot find library instance with version '" 
              .. version .. "'");
      return;
   end
   return versionData.instance;
end

-- Register new instance
function stub:Register(newInstance)
   local version,minor = newInstance:GetLibraryVersion();
   self.lastVersion = version;
   local versionData = self.versions[version];
   if (not versionData) then
      -- This one is new!
      versionData = { instance = newInstance,
         minor = minor,
         old = {} 
      };
      self.versions[version] = versionData;
      newInstance:LibActivate(self);
      return newInstance;
   end
   if (minor <= versionData.minor) then
      -- This one is already obsolete
      if (newInstance.LibDiscard) then
         newInstance:LibDiscard();
      end
      return versionData.instance;
   end
   -- This is an update
   local oldInstance = versionData.instance;
   local oldList = versionData.old;
   versionData.instance = newInstance;
   versionData.minor = minor;
   local skipCopy = newInstance:LibActivate(self, oldInstance, oldList);
   table.insert(oldList, oldInstance);
   if (not skipCopy) then
      for i, old in ipairs(oldList) do
         self:ReplaceInstance(old, newInstance);
      end
   end
   return newInstance;
end

-- Bind stub to global scope if it's not already there
if (not AbacusLib) then
   AbacusLib = stub:NewStub();
end

-- Nil stub for garbage collection
stub = nil;
-----------END-IRIEL'S-STUB-CODE------------

local function assert(condition, message)
	if not condition then
		local stack = debugstack()
		local first = string.gsub(stack, "\n.*", "")
		local file = string.gsub(first, "^(.*\\.*).lua:%d+: .*", "%1")
		file = string.gsub(file, "([%(%)%.%*%+%-%[%]%?%^%$%%])", "%%%1")
		if not message then
			local _,_,second = string.find(stack, "\n(.-)\n")
			message = "assertion failed! " .. second
		end
		message = "BabbleLib-Zone: " .. message
		local i = 1
		for s in string.gfind(stack, "\n([^\n]*)") do
			i = i + 1
			if not string.find(s, file .. "%.lua:%d+:") then
				error(message, i)
				return
			end
		end
		error(message, 2)
		return
	end
	return condition
end

local function argCheck(arg, num, kind, kind2, kind3, kind4)
	if tostring(type(arg)) ~= kind then
		if kind2 then
			if tostring(type(arg)) ~= kind2 then
				if kind3 then
					if tostring(type(arg)) ~= kind3 then
						if kind4 then
							if tostring(type(arg)) ~= kind4 then
								local _,_,func = string.find(debugstack(), "\n.-`(.-)'\n")
								assert(false, format("Bad argument #%d to `%s' (%s, %s, %s, or %s expected, got %s)", num, func, kind, kind2, kind3, kind4, type(arg)))
							end
						else
							local _,_,func = string.find(debugstack(), "\n.-`(.-)'\n")
							assert(false, format("Bad argument #%d to `%s' (%s, %s, or %s expected, got %s)", num, func, kind, kind2, kind3, type(arg)))
						end
					end
				else
					local _,_,func = string.find(debugstack(), "\n.-`(.-)'\n")
					assert(false, format("Bad argument #%d to `%s' (%s or %s expected, got %s)", num, func, kind, kind2, type(arg)))
				end
			end
		else
			local _,_,func = string.find(debugstack(), "\n.-`(.-)'\n")
			assert(false, format("Bad argument #%d to `%s' (%s expected, got %s)", num, func, kind, type(arg)))
		end
	end
end

local lib = {}

local COPPER_ABBR = strlower(strsub(COPPER, 1, 1))
local SILVER_ABBR = strlower(strsub(SILVER, 1, 1))
local GOLD_ABBR = strlower(strsub(GOLD, 1, 1))

local COLOR_WHITE = "ffffff"
local COLOR_GREEN = "00ff00"
local COLOR_RED = "ff0000"
local COLOR_COPPER = "eda55f"
local COLOR_SILVER = "c7c7cf"
local COLOR_GOLD = "ffd700"

local inf = 1/0

function lib:FormatMoneyExtended(value, colorize, textColor)
	argCheck(value, 2, "number")
	local gold = abs(value / 10000)
	local silver = abs(mod(value / 100, 100))
	local copper = abs(mod(value, 100))
	
	local negl = ""
	local color = COLOR_WHITE
	if value > 0 then
		if textColor then
			color = COLOR_GREEN
		end
	elseif value < 0 then
		negl = "-"
		if textColor then
			color = COLOR_RED
		end
	end
	if colorize then
		if value == inf or value == -inf then
			return format("|cff%s%s|r", color, value)
		elseif value ~= value then
			return format("|cff%s0|r|cff%s %s|r", COLOR_WHITE, COLOR_COPPER, COPPER)
		elseif value >= 10000 or value <= -10000 then
			return format("|cff%s%s%d|r|cff%s %s|r |cff%s%d|r|cff%s %s|r |cff%s%d|r|cff%s %s|r", color, negl, gold, COLOR_GOLD, GOLD, color, silver, COLOR_SILVER, SILVER, color, copper, COLOR_COPPER, COPPER)
		elseif value >= 100 or value <= -100 then
			return format("|cff%s%s%d|r|cff%s %s|r |cff%s%d|r|cff%s %s|r", color, negl, silver, COLOR_SILVER, SILVER, color, copper, COLOR_COPPER, COPPER)
		else
			return format("|cff%s%s%d|r|cff%s %s|r", color, negl, copper, COLOR_COPPER, COPPER)
		end
	else
		if value == inf or value == -inf then
			return format("%s", value)
		elseif value ~= value then
			return format("0 %s", COPPER)
		elseif value >= 10000 or value <= -10000 then
			return format("%s%d %s %d %s %d %s", negl, gold, GOLD, silver, SILVER, copper, COPPER)
		elseif value >= 100 or value <= -100 then
			return format("%s%d %s %d %s", negl, silver, SILVER, copper, COPPER)
		else
			return format("%s%d %s", negl, copper, COPPER)
		end
	end
end

function lib:FormatMoneyFull(value, colorize, textColor)
	argCheck(value, 2, "number")
	local gold = abs(value / 10000)
	local silver = abs(mod(value / 100, 100))
	local copper = abs(mod(value, 100))
	
	local negl = ""
	local color = COLOR_WHITE
	if value > 0 then
		if textColor then
			color = COLOR_GREEN
		end
	elseif value < 0 then
		negl = "-"
		if textColor then
			color = COLOR_RED
		end
	end
	if colorize then
		if value == inf or value == -inf then
			return format("|cff%s%s|r", color, value)
		elseif value ~= value then
			return format("|cff%s0|r|cff%s%s|r", COLOR_WHITE, COLOR_COPPER, COPPER_ABBR)
		elseif value >= 10000 or value <= -10000 then
			return format("|cff%s%s%d|r|cff%s%s|r |cff%s%d|r|cff%s%s|r |cff%s%d|r|cff%s%s|r", color, negl, gold, COLOR_GOLD, GOLD_ABBR, color, silver, COLOR_SILVER, SILVER_ABBR, color, copper, COLOR_COPPER, COPPER_ABBR)
		elseif value >= 100 or value <= -100 then
			return format("|cff%s%s%d|r|cff%s%s|r |cff%s%d|r|cff%s%s|r", color, negl, silver, COLOR_SILVER, SILVER_ABBR, color, copper, COLOR_COPPER, COPPER_ABBR)
		else
			return format("|cff%s%s%d|r|cff%s%s|r", color, negl, copper, COLOR_COPPER, COPPER_ABBR)
		end
	else
		if value == inf or value == -inf then
			return format("%s", value)
		elseif value ~= value then
			return format("0%s", COPPER_ABBR)
		elseif value >= 10000 or value <= -10000 then
			return format("%s%d%s %d%s %d%s", negl, gold, GOLD_ABBR, silver, SILVER_ABBR, copper, COPPER_ABBR)
		elseif value >= 100 or value <= -100 then
			return format("%s%d%s %d%s", negl, silver, SILVER_ABBR, copper, COPPER_ABBR)
		else
			return format("%s%d%s", negl, copper, COPPER_ABBR)
		end
	end
end

function lib:FormatMoneyShort(copper, colorize, textColor)
	argCheck(copper, 2, "number")
	local color = COLOR_WHITE
	if textColor then
		if copper > 0 then
			color = COLOR_GREEN
		elseif copper < 0 then
			color = COLOR_RED
		end
	end
	if colorize then
		if copper == inf or copper == -inf then
			return format("|cff%s%s|r", color, copper)
		elseif copper ~= copper then
			return format("|cff%s0|r|cff%s%s|r", COLOR_WHITE, COLOR_COPPER, COPPER_ABBR)
		elseif copper >= 10000 or copper <= -10000 then
			return format("|cff%s%.1f|r|cff%s%s|r", color, copper / 10000, COLOR_GOLD, GOLD_ABBR)
		elseif copper >= 100 or copper <= -100 then
			return format("|cff%s%.1f|r|cff%s%s|r", color, copper / 100, COLOR_SILVER, SILVER_ABBR)
		else
			return format("|cff%s%d|r|cff%s%s|r", color, copper, COLOR_COPPER, COPPER_ABBR)
		end
	else
		if copper == inf or copper == -inf then
			return format("%s", copper)
		elseif copper ~= copper then
			return format("0%s", COPPER_ABBR)
		elseif copper >= 10000 or copper <= -10000 then
			return format("%.1f%s", copper / 10000, GOLD_ABBR)
		elseif copper >= 100 or copper <= -100 then
			return format("%.1f%s", copper / 100, SILVER_ABBR)
		else
			return format("%.0f%s", copper, COPPER_ABBR)
		end
	end
end

function lib:FormatMoneyCondensed(value, colorize, textColor)
	argCheck(value, 2, "number")
	local negl = value < 0 and "(-" or ""
	local negr = value < 0 and ")" or ""
	if value < 0 then
		if colorize and textColor then
			negl = "|cffff0000-(|r"
			negr = "|cffff0000)|r"
		else
			negl = "-("
			negr = ")"
		end
	else
		negl = ""
		negr = ""
	end
	local gold = floor(math.abs(value) / 10000)
	local silver = mod(floor(math.abs(value) / 100), 100)
	local copper = mod(floor(math.abs(value)), 100)
	if colorize then
		if value == inf or value == -inf then
			return format("%s|cff%s%s|r%s", negl, COLOR_COPPER, math.abs(value), negr)
		elseif value ~= value then
			return format("|cff%s0|r", COLOR_COPPER)
		elseif gold ~= 0 then
			return format("%s|cff%s%d|r.|cff%s%02d|r.|cff%s%02d|r%s", negl, COLOR_GOLD, gold, COLOR_SILVER, silver, COLOR_COPPER, copper, negr)
		elseif silver ~= 0 then
			return format("%s|cff%s%d|r.|cff%s%02d|r%s", negl, COLOR_SILVER, silver, COLOR_COPPER, copper, negr)
		else
			return format("%s|cff%s%d|r%s", negl, COLOR_COPPER, copper, negr)
		end
	else
		if value == inf or value == -inf then
			return tostring(value)
		elseif value ~= value then
			return "0"
		elseif gold ~= 0 then
			return format("%s%d.%02d.%02d%s", negl, gold, silver, copper, negr)
		elseif silver ~= 0 then
			return format("%s%d.%02d%s", negl, silver, copper, negr)
		else
			return format("%s%d%s", negl, copper, negr)
		end
	end
end

local t
function lib:FormatDurationExtended(duration, colorize, hideSeconds)
	argCheck(duration, 2, "number")
	local negative = ""
	if duration ~= duration then
		duration = 0
	end
	if duration < 0 then
		negative = "-"
		duration = -duration
	end
	local days = floor(duration / 86400)
	local hours = mod(floor(duration / 3600), 24)
	local mins = mod(floor(duration / 60), 60)
	local secs = mod(floor(duration), 60)
	if not t then
		t = {}
	else
		for k in pairs(t) do
			t[k] = nil
		end
		table.setn(t, 0)
	end
	if not colorize then
		if duration == nil or duration > 86400*365 then
			return "Undetermined"
		end
		if days > 1 then
			table.insert(t, format("%d %s", days, DAYS_ABBR_P1))
		elseif days == 1 then
			table.insert(t, format("%d %s", days, DAYS_ABBR))
		end
		if hours > 1 then
			table.insert(t, format("%d %s", hours, HOURS_ABBR_P1))
		elseif hours == 1 then
			table.insert(t, format("%d %s", hours, HOURS_ABBR))
		end
		if mins > 1 then
			table.insert(t, format("%d %s", mins, MINUTES_ABBR_P1))
		elseif mins == 1 then
			table.insert(t, format("%d %s", mins, MINUTES_ABBR))
		end
		if not hideSeconds then
			if secs > 1 then
				table.insert(t, format("%d %s", secs, SECONDS_ABBR_P1))
			elseif secs == 1 then
				table.insert(t, format("%d %s", secs, SECONDS_ABBR))
			end
		end
		if table.getn(t) == 0 then
			if not hideSeconds then
				return "0 " .. SECONDS_ABBR_P1
			else
				return "0 " .. MINUTES_ABBR_P1
			end
		else
			return negative .. table.concat(t, " ")
		end
	else
		if duration == nil or duration > 86400*365 then
			return "|cffffffffUndetermined|r"
		end
		if days > 1 then
			table.insert(t, format("|cffffffff%d|r %s", days, DAYS_ABBR_P1))
		elseif days == 1 then
			table.insert(t, format("|cffffffff%d|r %s", days, DAYS_ABBR))
		end
		if hours > 1 then
			table.insert(t, format("|cffffffff%d|r %s", hours, HOURS_ABBR_P1))
		elseif hours == 1 then
			table.insert(t, format("|cffffffff%d|r %s", hours, HOURS_ABBR))
		end
		if mins > 1 then
			table.insert(t, format("|cffffffff%d|r %s", mins, MINUTES_ABBR_P1))
		elseif mins == 1 then
			table.insert(t, format("|cffffffff%d|r %s", mins, MINUTES_ABBR))
		end
		if not hideSeconds then
			if secs > 1 then
				table.insert(t, format("|cffffffff%d|r %s", secs, SECONDS_ABBR_P1))
			elseif secs == 1 then
				table.insert(t, format("|cffffffff%d|r %s", secs, SECONDS_ABBR))
			end
		end
		if table.getn(t) == 0 then
			if not hideSeconds then
				return "|cffffffff0|r " .. SECONDS_ABBR_P1
			else
				return "|cffffffff0|r " .. MINUTES_ABBR_P1
			end
		elseif negative == "-" then
			return "|cffffffff-|r" .. table.concat(t, " ")
		else
			return table.concat(t, " ")
		end
	end
end

local DAY_ONELETTER_ABBR = string.gsub(DAY_ONELETTER_ABBR, "%s*%%d%s*", "")
local HOUR_ONELETTER_ABBR = string.gsub(HOUR_ONELETTER_ABBR, "%s*%%d%s*", "")
local MINUTE_ONELETTER_ABBR = string.gsub(MINUTE_ONELETTER_ABBR, "%s*%%d%s*", "")
local SECOND_ONELETTER_ABBR = string.gsub(SECOND_ONELETTER_ABBR, "%s*%%d%s*", "")

function lib:FormatDurationFull(duration, colorize, hideSeconds)
	argCheck(duration, 2, "number")
	local negative = ""
	if duration ~= duration then
		duration = 0
	end
	if duration < 0 then
		negative = "-"
		duration = -duration
	end
	if not colorize then
		if not hideSeconds then
			if duration == nil or duration > 86400*365 then
				return "Undetermined"
			elseif duration >= 86400 then
				return format("%s%d%s %02d%s %02d%s %02d%s", negative, duration/86400, DAY_ONELETTER_ABBR, mod(duration/3600, 24), HOUR_ONELETTER_ABBR, mod(duration/60, 60), MINUTE_ONELETTER_ABBR, mod(duration, 60), SECOND_ONELETTER_ABBR)
			elseif duration >= 3600 then
				return format("%s%d%s %02d%s %02d%s", negative, duration/3600, HOUR_ONELETTER_ABBR, mod(duration/60, 60), MINUTE_ONELETTER_ABBR, mod(duration, 60), SECOND_ONELETTER_ABBR)
			elseif duration >= 120 then
				return format("%s%d%s %02d%s", negative, duration/60, MINUTE_ONELETTER_ABBR, mod(duration, 60), SECOND_ONELETTER_ABBR)
			else
				return format("%s%d%s", negative, duration, SECOND_ONELETTER_ABBR)
			end
		else
			if duration == nil or duration > 86400*365 then
				return "Undetermined"
			elseif duration >= 86400 then
				return format("%s%d%s %02d%s %02d%s", negative, duration/86400, DAY_ONELETTER_ABBR, mod(duration/3600, 24), HOUR_ONELETTER_ABBR, mod(duration/60, 60), MINUTE_ONELETTER_ABBR)
			elseif duration >= 3600 then
				return format("%s%d%s %02d%s", negative, duration/3600, HOUR_ONELETTER_ABBR, mod(duration/60, 60), MINUTE_ONELETTER_ABBR)
			else
				return format("%s%d%s", negative, duration/60, MINUTE_ONELETTER_ABBR)
			end
		end
	else
		if not hideSeconds then
			if duration == nil or duration > 86400*365 then
				return "|cffffffffUndetermined|r"
			elseif duration >= 86400 then
				return format("|cffffffff%s%d|r%s |cffffffff%02d|r%s |cffffffff%02d|r%s |cffffffff%02d|r%s", negative, duration/86400, DAY_ONELETTER_ABBR, mod(duration/3600, 24), HOUR_ONELETTER_ABBR, mod(duration/60, 60), MINUTE_ONELETTER_ABBR, mod(duration, 60), SECOND_ONELETTER_ABBR)
			elseif duration >= 3600 then
				return format("|cffffffff%s%d|r%s |cffffffff%02d|r%s |cffffffff%02d|r%s", negative, duration/3600, HOUR_ONELETTER_ABBR, mod(duration/60, 60), MINUTE_ONELETTER_ABBR, mod(duration, 60), SECOND_ONELETTER_ABBR)
			elseif duration >= 120 then
				return format("|cffffffff%s%d|r%s |cffffffff%02d|r%s", negative, duration/60, MINUTE_ONELETTER_ABBR, mod(duration, 60), SECOND_ONELETTER_ABBR)
			else
				return format("|cffffffff%s%d|r%s", negative, duration, SECOND_ONELETTER_ABBR)
			end
		else
			if duration == nil or duration > 86400*365 then
				return "|cffffffffUndetermined|r"
			elseif duration >= 86400 then
				return format("|cffffffff%s%d|r%s |cffffffff%02d|r%s |cffffffff%02d|r%s", negative, duration/86400, DAY_ONELETTER_ABBR, mod(duration/3600, 24), HOUR_ONELETTER_ABBR, mod(duration/60, 60), MINUTE_ONELETTER_ABBR)
			elseif duration >= 3600 then
				return format("|cffffffff%s%d|r%s |cffffffff%02d|r%s", negative, duration/3600, HOUR_ONELETTER_ABBR, mod(duration/60, 60), MINUTE_ONELETTER_ABBR)
			else
				return format("|cffffffff%s%d|r%s", negative, duration/60, MINUTE_ONELETTER_ABBR)
			end
		end
	end
end

function lib:FormatDurationShort(duration, colorize, hideSeconds)
	argCheck(duration, 2, "number")
	local negative = ""
	if duration ~= duration then
		duration = 0
	end
	if duration < 0 then
		negative = "-"
		duration = -duration
	end
	if not colorize then
		if duration == nil or duration >= 86400*365 then
			return "***"
		elseif duration >= 172800 then
			return format("%s%.1f %s", negative, duration/86400, DAYS_ABBR_P1)
		elseif duration >= 7200 then
			return format("%s%.1f %s", negative, duration/3600, HOURS_ABBR_P1)
		elseif duration >= 120 or not hideSeconds then
			return format("%s%.1f %s", negative, duration/60, MINUTES_ABBR_P1)
		else
			return format("%s%.0f %s", negative, duration, SECONDS_ABBR_P1)
		end
	else
		if duration == nil or duration >= 86400*365 then
			return "|cffffffff***|r"
		elseif duration >= 172800 then
			return format("|cffffffff%s%.1f|r %s", negative, duration/86400, DAYS_ABBR_P1)
		elseif duration >= 7200 then
			return format("|cffffffff%s%.1f|r %s", negative, duration/3600, HOURS_ABBR_P1)
		elseif duration >= 120 or not hideSeconds then
			return format("|cffffffff%s%.1f|r %s", negative, duration/60, MINUTES_ABBR_P1)
		else
			return format("|cffffffff%s%.0f|r %s", negative, duration, SECONDS_ABBR_P1)
		end
	end
end

function lib:FormatDurationCondensed(duration, colorize, hideSeconds)
	argCheck(duration, 2, "number")
	local negative = ""
	if duration ~= duration then
		duration = 0
	end
	if duration < 0 then
		negative = "-"
		duration = -duration
	end
	if not colorize then
		if hideSeconds then
			if duration == nil or duration >= 86400*365 then
				return format("%s**%s **:**", negative, DAY_ONELETTER_ABBR)
			elseif duration >= 86400 then
				return format("%s%d%s %d:%02d", negative, duration/86400, DAY_ONELETTER_ABBR, mod(duration/3600, 24), mod(duration/60, 60))
			else
				return format("%s%d:%02d", negative, duration/3600, mod(duration/60, 60))
			end
		else
			if duration == nil or duration >= 86400*365 then
				return negative .. "**:**:**:**"
			elseif duration >= 86400 then
				return format("%s%d%s %d:%02d:%02d", negative, duration/86400, DAY_ONELETTER_ABBR, mod(duration/3600, 24), mod(duration/60, 60), mod(duration, 60))
			elseif duration >= 3600 then
				return format("%s%d:%02d:%02d", negative, duration/3600, mod(duration/60, 60), mod(duration, 60))
			else
				return format("%s%d:%02d", negative, duration/60, mod(duration, 60))
			end
		end
	else
		if hideSeconds then
			if duration == nil or duration >= 86400*365 then
				return format("|cffffffff%s**|r%s |cffffffff**|r:|cffffffff**|r", negative, DAY_ONELETTER_ABBR)
			elseif duration >= 86400 then
				return format("|cffffffff%s%d|r%s |cffffffff%d|r:|cffffffff%02d|r", negative, duration/86400, DAY_ONELETTER_ABBR, mod(duration/3600, 24), mod(duration/60, 60))
			else
				return format("|cffffffff%s%d|r:|cffffffff%02d|r", negative, duration/3600, mod(duration/60, 60))
			end
		else
			if duration == nil or duration >= 86400*365 then
				return format("|cffffffff%s**|r%s |cffffffff**|r:|cffffffff**|r:|cffffffff**|r", negative, DAY_ONELETTER_ABBR)
			elseif duration >= 86400 then
				return format("|cffffffff%s%d|r%s |cffffffff%d|r:|cffffffff%02d|r:|cffffffff%02d|r", negative, duration/86400, DAY_ONELETTER_ABBR, mod(duration/3600, 24), mod(duration/60, 60), mod(duration, 60))
			elseif duration >= 3600 then
				return format("|cffffffff%s%d|r:|cffffffff%02d|r:|cffffffff%02d|r", negative, duration/3600, mod(duration/60, 60), mod(duration, 60))
			else
				return format("|cffffffff%s%d|r:|cffffffff%02d|r", negative, duration/60, mod(duration, 60))
			end
		end
	end
end

function lib:GetLibraryVersion()
	return MAJOR_VERSION, MINOR_VERSION
end

function lib:LibActivate(stub, oldLib, oldList)
end

function lib:LibDeactivate(stub)
end

AbacusLib:Register(lib)
lib = nil
