-- Chinese simp Translation: ela, valkyrie@CWDG
-- CWDG site: http://cwowaddon.com

local L = AceLibrary("AceLocale-2.2"):new("Quartz")
L:RegisterTranslations("zhCN", function()
	return {
		["Quartz"] = "Quartz",
		["Latency"] = "延迟",
		["Tradeskill Merge"] = "商业技能合并",
		["Global Cooldown"] = "公共CD",
		["Buff"] = "增益效果",
		["Target"] = "目标",
		["Pet"] = "宠物",
		["Focus"] = "焦点目标",
		["Player"] = "玩家",
		["Mirror"] = "镜像",
		["Timer"] = "计时器",
		["Swing"] = "再次攻击",
		["Interrupt"] = "打断",
		["Range"] = "距离",
		["Flight"] = "飞行",
		
		["GCD"] = "公共CD",
		["Tradeskill"] = "商业技能",
		
		-- Basic shared stuff
		["Above"] = "上面",
		["Alpha"] = "透明度",
		["Background"] = "背景",
		["Below"] = "下面",
		["Border"] = "边框",
		["Bottom"] = "底部",
		["Bottom Left"] = "左下",
		["Bottom Right"] = "右下",
		["Center"] = "中间",
		["Colors"] = "颜色",
		["Default"] = "默认",
		["Down"] = "向下",
		["Enable"] = "开启",
		["Font"] = "字体",
		["Font Size"] = "字体尺寸",
		["Free"] = "自由",
		["Full Text"] = "全文本",
		["Gap"] = "间隙",
		["Height"] = "高度",
		["Horizontal"] = "水平",
		["Left"] = "左侧",
		["Left (grow down)"] = "左侧 (向下延伸)",
		["Left (grow up)"] = "左侧 (向上延伸)",
		["None"] = "无",
		["Number"] = "数字",
		["Outside"] = "外侧",
		["Right"] = "右侧",
		["Right (grow down)"] = "右侧 (向下延伸)",
		["Right (grow up)"] = "右侧 (向上延伸)",
		["Scale"] = "比例",
		["Spacing"] = "间隔",
		["Texture"] = "材质",
		["Text Color"] = "文本颜色",
		["Top"] = "顶部",
		["Top Left"] = "左上",
		["Top Right"] = "右上",
		["Up"] = "向上",
		["Vertical"] = "垂直",
		["X"] = "X值",
		["Y"] = "Y值",
		["Width"] = "宽度",
		
		-- Option Names
		
		["Lock"] = "锁定",
		["Hide Icon"] = "隐藏图标",
		["Icon Alpha"] ="图标透明度",
		["Icon Gap"] = "图标间隙",
		["Name Text Position"] = "名称文本位置",
		["Name Text Font Size"] = "名称文本字体尺寸",
		["Spell Rank"] = "法术等级",
		["Spell Rank Style"] = "法术等级类型",
		["Hide Name Text"] = "隐藏名称文本",
		["Hide Time Text"] = "隐藏时间文本",
		["Hide Cast Time"] = "隐藏施法时间",
		["Cast Time Precision"] = "施法时间精度",
		["Time Font Size"] = "时间字体尺寸",
		["Time Text Position"] = "时间文本位置",
		["Spell Text"] = "法术文本",
		["Time Text"] = "时间文本",
		["Casting"] = "施放",
		["Channeling"] = "通道",
		["Complete"] = "完成",
		["Failed"] = "失败",
		["Spark Color"] = "闪烁颜色",
		["Background Alpha"] = "背景透明度",
		["Border Alpha"] = "边框透明度",
		["Disable Blizzard Cast Bar"] = "关闭默认施法条",
		["Snap to Center"] = "吸附到中间",
		["Icon Position"] = "图标位置",
		["Text Alignment"] = "文本队列",
		["Text Position"] = "文本位置",
		["Copy Settings From"] = "复制设定",
		["Cast Start Side"] = "施法条前端",
		["Cast End Side"] = "施法条末端",
		["Name Text X Offset"] = "名称文本X值偏移",
		["Name Text Y Offset"] = "名称文本Y值偏移",
		["Time Text X Offset"] = "时间文本X值偏移",
		["Time Text Y Offset"] = "时间文本Y值偏移",
		["Hide Samwise Icon"] = "隐藏无用图标",
		["Show for Friends"] = "显示给朋友",
		["Show for Enemies"] = "显示给敌人",
		["Show if Target"] = "目标则显示",
		["Target Name"] = "目标名称",
		["Display target name of spellcasts after spell name"] = "在法术名称后显示施法目标名字",
		
		["Roman"] = "罗马字体",
		["Roman Full Text"] = "罗马字体全文本",
			--Latency
			["Embed"] = "插入",
			["Embed Safety Margin"] = "插入安全边缘数值",
			["Bar Color"] = "颜色",
			["Show Text"] = "显示文本",
			--GCD
			["Primary"] = "主要",
			["Backup"] = "后备",
			["%s Spell"] = "%s法术",
			["Bar Position"] = "位置",
			["Deplete"] = "衰竭",
			--Buffs
			["Focus"] = "关注目标",
			["Target"] = "目标",
			["Enable %s"] = "开启%s",
			["Enable Buffs"] = "开启增益效果",
			["Enable Debuffs"] = "开启减益效果",
			["Position"] = "位置",
			["Offset"] = "偏移",
			["Show Icons"] = "显示图标",
			["Buff Bar Width"] = "增益条宽度",
			["Buff Bar Height"] = "增益条高度",
			["Buff Name Text"] = "增益效果名称文本",
			["Buff Time Text"] = "增益效果时间文本",
			["Buff Color"] = "增益效果颜色",
			["Debuff Color"] = "减益效果颜色",
			["Debuffs by Type"] = "减益效果类型",
			["Undispellable Color"] = "不可驱散法术颜色",
			["Curse Color"] = "诅咒效果颜色",
			["Disease Color"] = "疾病效果颜色",
			["Magic Color"] = "魔法效果颜色",
			["Poison Color"] = "毒效果颜色",
			["Anchor Frame"] = "定位点框架",
			["Grow Direction"] = "延伸方向",
			["Sort by Remaining Time"] = "按剩余时间排列",
			--Mirror
			["Mirror Bar Width"] = "镜像条宽度",
			["Mirror Bar Height"] = "镜像条高度",
			["Mirror Name Text"] = "镜像名称文本",
			["Mirror Time Text"] = "镜像时间文本",
			["Hide Blizz Mirror Bars"] = "隐藏默认镜像条",
			["%s Color"] = "%s颜色",
			["Breath"] = "呼吸",
			["Exhaustion"] = "疲劳度",
			["Feign Death"] = "假死",
			["Show Mirror"] = "显示镜像",
			["Show Static"] = "显示静态",
			["Show PvP"] = "显示PVP",
			--Timer
			["Stop Timer"] = "停止计时器",
			["Make Timer"] = "生成计时器",
			["New Timer Name"] = "新计时器名称",
			["New Timer Length"] = "新计时器长度",
			--Swing
			["Duration Text"] = "持续文本",
			["Remaining Text"] = "再次攻击剩余文本",
			--Interrupt
			["Interrupt Color"] = "打断颜色",
		    --Range
			["Out of Range Color"] = "超出距离颜色",
			--Flight
			["Flight Map Color"] = "飞行颜色",
			
		-- Option descriptions
		
		["Toggle Cast Bar lock"] = "切换施法条锁定解锁",
		["Hide Spell Cast Icon"] = "隐藏施放法术图标",
		["Set the Spell Cast icon alpha"] = "设定施放法术图标透明度",
		["Set where the Spell Cast icon appears"] = "设定施放法术图标出现点",
		["Space between the cast bar and the icon."] = "调整施法条和图标间隔",
		["Set the Cast Bar Texture"] = "设定施法条材质",
		["Set the font used in the Name and Time texts"] = "设定名称和时间文本字体",
		["Set the alignment of the spell name text"] = "设定法术名称文本队列",
		["Set the size of the spell name text"] = "设定法术名称文本尺寸",
		["Disable the text that displays the time remaining on your cast"] = "关闭正在施放法术剩余时间文本",
		["Disable the text that displays the total cast time"] = "关闭施放法术总时间文本",
		["Set the precision (i.e. number of decimal places) for the cast time text"] = "设置施法时间精度(十进制小数)",
		["Disable the text that displays the spell name/rank"] = "关闭法术名称/等级文本",
		["Display the rank of spellcasts alongside their name"] = "在法术名称旁边显示等级",
		["Set the display style of the spell rank"] = "设定显示法术等级类型",
		["Set the size of the time text"] = "设定时间文本尺寸",
		["Set the alignment of the time text"] = "设定时间文本队列",
		["Set the border style"] = "设定边框类型",
		["Set the color of the %s"] = "设定%s的颜色",
		["Set the color of the cast bar when %s"] = "当%s时设定施法条颜色",
		["Set the color of the casting bar spark"] = "设定施法条闪烁颜色",
		["Set the color of the casting bar background"] = "设定施法条背景",
		["Set the alpha of the casting bar background"] = "设定施法条背景透明度",
		["Set the color of the casting bar border"] = "设定施法条边框颜色",
		["Set the alpha of the casting bar border"] = "设定施法条边框透明度",
		["Disable and hide the default UI's casting bar"] = "关闭并隐藏默认UI的施法条",
		["Move the CastBar to center of the screen along the specified axis"] = "通过设定的轴移动施法条到屏幕中间",
		["Select a bar from which to copy settings"] = "从复制设定里选择施法条",
		["Adjust the X position of the name text"] = "调整名称文本的X值位置",
		["Adjust the Y position of the name text"] = "调整名称文本的Y值位置",
		["Adjust the X position of the time text"] = "调整时间文本的X值位置",
		["Adjust the Y position of the time text"] = "调整时间文本的Y值位置",
		["Hide the icon for spells with no icon"] = "隐藏法术图标",
		["Show this castbar for friendly units"] = "为友好单位显示此施法条",
		["Show this castbar for hostile units"] = "为敌对单位显示此施法条",
		["Show this castbar if focus is also target"] = "如果锁定与目标相同，则显示此施法条",
		["Set an exact X value for this bar's position."] = "为施法条设置一个精确的X值",
		["Set an exact Y value for this bar's position."] = "为施法条设置一个精确的Y值",
		
			--Latency
			["Include Latency time in the displayed cast bar."] = "施法条里包括延迟时间",
			["Embed mode will decrease it's lag estimates by this amount.  Ideally, set it to the difference between your highest and lowest ping amounts.  (ie, if your ping varies from 200ms to 400ms, set it to 0.2)"] = "内置的模式会消除网络延迟的时间,将他设置成你延迟的最低点.(比如说你的延迟在200-400ms之间,那么设成0.2)",
			["Latency Bar"] = "延迟条",
			["Set the alpha of the latency bar"] = "设置延迟条颜色",
			["Display the latency time as a number on the latency bar"] = "在延迟条上以数字显示延迟时间",
			["Set the font used for the latency text"] = "设置延迟文本字体",
			["Set the size of the latency text"] = "设置延迟文本尺寸",
			["Set the color of the latency text"] = "设置延迟文本颜色",
			["Set the position of the latency text"] = "设置延迟文本位置",
			["Set the vertical position of the latency text"] = "设置延迟文本垂直位置",
			--GCD
			["%s spell to check for the Global Cooldown"] = "%s法术检测公共CD",
			["Set the color of the GCD bar spark"] = "设置公共CD条闪烁颜色",
			["Set the height of the GCD bar"] = "设置公共CD条高度",
			["Set the alpha of the GCD bar"] = "设置公共CD条透明度",
			["Set the position of the GCD bar"] = "设置公共CD条位置",
			["Tweak the distance of the GCD bar from the cast bar"] = "调整施法条和公共CD条之间距离",
			["Reverses the direction of the GCD spark, causing it to move right-to-left"] = "反转公共CD闪烁方向,使得它从右移动到左",
			--Buffs
			["Show buffs/debuffs for your %s"] = "为你的%s显示增益/减益效果",
			["Show buffs for your %s"] = "为你的%s显示增益效果",
			["Show debuffs for your %s"] = "为你的%s显示减益效果",
			["Position the bars for your %s"] = "调整你%s增益/减益条位置",
			["Tweak the vertical position of the bars for your %s"] = "调整你的%s增益/减益条垂直位置",
			["Tweak the space between bars for your %s"] = "调整你的%s增益/减益条之间的空间",
			["Tweak the horizontal position of the bars for your %s"] = "调整你的%s增益/减益条水平位置",
			["Show icons on buffs and debuffs for your %s"] = "显示你的%s增益/减益效果图标",
			["Set the side of the buff bar that the icon appears on"] = "设定在增益条上哪边显示图标",
			["Set the buff bar Texture"] = "设定增益条材质",
			["Set the width of the buff bars"] = "设定增益条宽度",
			["Set the height of the buff bars"] = "设定增益条高度",
			["Display the names of buffs/debuffs on their bars"] = "在增益/减益条上显示名称",
			["Display the time remaining on buffs/debuffs on their bars"] = "在增益/减益条上显示剩余时间",
			["Set the font used in the buff bars"] = "设定增益条字体",
			["Set the font size for the buff bars"] = "设定增益条字体尺寸",
			["Set the alpha of the buff bars"] = "设定增益条透明度",
			["Set the color of the bars for buffs"] = "设定增益条颜色",
			["Set the color of the bars for debuffs"] = "设定减益条颜色",
			["Set the color of the text for the buff bars"] = "设定增益条文本颜色",
			["Color debuff bars according to their dispel type"] = "以驱散类型的颜色显示减益条",
			["Set the color of the bars for undispellable debuffs"] = "设定不可驱散减益条颜色",
			["Set the color of the bars for curses"] = "设定诅咒效果条颜色",
			["Set the color of the bars for diseases"] = "设定疾病效果条颜色",
			["Set the color of the bars for magic"] = "设定魔法效果条颜色",
			["Set the color of the bars for poisons"] = "设定毒效果条颜色",
			["Select where to anchor the %s bars"] = "选择%s条的锚点",
			["Toggle %s bar lock"] = "切换%s锁定/解锁",
			["Set the grow direction of the %s bars"] = "设定%s条的延伸方向",
			["Sort the buffs and debuffs by time remaining.  If unchecked, they will be sorted alphabetically."] = "按照剩余时间来排列增益/减益效果时间,如果没有选取则按照字母顺序来排列",
			--Mirror
			["Position the mirror bars"] = "调整镜像条位置",
			["Tweak the vertical position of the mirror bars"] = "调整镜像条垂直位置",
			["Tweak the space between mirror bars"] = "调整镜像条之间的空间",
			["Tweak the horizontal position of the mirror bars"] = "调整镜像条水平位置",
			["Show icons on mirror bars"] = "显示镜像条图标",
			["Set the side of the mirror bar that the icon appears on"] = "设定镜像条图标在哪边显示",
			["Set the mirror bar Texture"] = "设定镜像条材质",
			["Set the width of the mirror bars"] = "设定镜像条宽度",
			["Set the height of the mirror bars"] = "设定镜像条高度",
			["Display the names of Mirror Bar Types on their bars"] = "在镜像条上显示名称",
			["Display the time remaining on mirror bars"] = "在镜像条上显示剩余时间",
			["Set the font used in the mirror bars"] = "设定镜像条字体",
			["Set the color of the text for the mirror bars"] = "设定镜像条文本颜色",
			["Set the font size for the mirror bars"] = "设定镜像条文本尺寸",
			["Set the alpha of the mirror bars"] = "设定镜像条透明度",
			["Hide Blizzard's mirror bars"] = "隐藏默认镜像条",
			["Set the color of the bars for %s"] = "为%s设定颜色",
			["Show mirror bars such as breath and feign death"] = "显示镜像条例如呼吸和假死",
			["Show bars for static popup items such as rez and summon timers"] = "显示静态条例如复活和召唤计时器",
			["Show bar for start of arena and battleground games"] = "显示竞技场和战场开始计时条",
			["Select where to anchor the mirror bars"] = "选择镜像条锚点",
			["Toggle mirror bar lock"] = "切换镜像条锁定/解锁",
			["Set the grow direction of the mirror bars"] = "设定镜像条延伸方向",
			--Timer
			["Make a new timer using the above settings.  NOTE: it may be easier for you to simply use the command line to make timers, /qt"] = "用上面的设置生成一个新的计时器,命令:/qt",
			["Select a timer to stop"] = "停止计时器",
			["Set a name for the new timer"] = "设定新计时器名称",
			["Length of the new timer, in seconds"] = "新时间条的长度 以秒为单位",
			--Swing
			["Set the color of the swing timer bar"] = "设定旋转计时条颜色",
			["Set the height of the swing timer bar"] = "设定旋转计时条高度",
			["Set the alpha of the swing timer bar"] = "设定旋转计时条透明度",
			["Set the position of the swing timer bar"] = "设定旋转计时条位置",
			["Tweak the distance of the swing timer bar from the cast bar"] = "调整施法条和旋转计时条之间的距离",
			["Toggle display of text showing your total swing time"] = "切换显示你所有旋转时间的文本",
			["Toggle display of text showing the time remaining until you can swing again"] = "切换显示你再次攻击前的剩余时间",
			--Interrupt
			["Set the color the cast bar is changed to when you have a spell interrupted"] = "设定当你的法术被打断时施法条颜色",
			--Range
			["Set the color to turn the cast bar when the target is out of range"] = "设定目标超出距离施法条颜色",
			--Flight
			["Set the color to turn the cast bar when taking a flight path"] = "设定飞行路线颜色",
			
		-- Other crap
		["Rank (%d+)"] = "等级 (%d+)",
		["Rank %s"] = "等级 %s",
			--Latency
			["%dms"] = "%dms",
			--GCD
			["<Spell Name>"] = "<法术名称>",
			["Invalid Spell"] = "无效法术",
			["Spell_Warning"] = "|cffff3333警告:你没有为Quartz的公共CD模块选择技能(/quartz,选择公共CD).注意,强烈建议选择无公共CD和不被打断的技能,比如发现草药",
			--Buffs
			["%dm"] = "%dm",
			--Mirror
			["Logout"] = "登出",
			["Release"] = "释放",
			["Logout"] = "登出",
			["Forfeit Duel"] = "认输",
			["Instance Boot"] = "副本重置",
			["Summon"] = "召唤",
			["AOE Rez"] = "群体复活",
			["Quit"] = "退出",
			["Resurrect"] = "复活",
			["Party Invite"] = "队伍邀请",
			["Resurrect Timer"] = "复活计时",
			["Duel Request"] = "决斗申请",
			["Game Start"] = "游戏开始",
			["1 minute"] = "1分钟",
			["One minute until"] = "一分钟",
			["30 seconds"] = "30秒",
			["Thirty seconds until"] = "三十秒",
			["15 seconds"] = "15秒",
			["Fifteen seconds until"] = "十五秒",
			--Timer
			['Usage: /quartztimer timername 60 or /quartztimer 60 timername'] = '使用:/quartztimer 计时器名称 60 或者 /quartztimer 60 计时器名称',
			["Timers module currently disabled, re-enable it in the menu"] = "计时器模块当前已关闭,可以在菜单里再次开启",
			["<Time in seconds>"] = "以秒计算",
			--Swing
			--Interrupt
			["INTERRUPTED (%s)"] = "打断 (%s)",
			--Range
			--Flight
			--FeatureFrame
			["Modular casting bar"] = "模块化施法条",
            --Target
            ["Set the border style for no interrupt casting bars"] = "Set the border style for no interrupt casting bars",
            ["Set the color of the no interrupt casting bar border"] = "Set the color of the no interrupt casting bar border",
            ["Set the alpha of the no interrupt casting bar border"] = "Set the alpha of the no interrupt casting bar border",
	}
end)
