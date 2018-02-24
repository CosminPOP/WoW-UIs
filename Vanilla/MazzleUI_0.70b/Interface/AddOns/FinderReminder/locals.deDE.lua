function FinderReminder_Locals_deDE()
FinderReminderLocals = {
	desc = "An Addon to remind finders to track the things they wish to find.",
	reminder = "Don't forget to turn on a tracking skill!",
	
	bghidemsg = "Hiding the reminder while in a battleground is now [%s].",
	
	trackingspells = {
		["Mineraliensuche"] = true,
		["Kr�utersuche"] = true,
		["Schatzsucher"] = true,
		["Aufsp�ren der Wildtiere"] = true,
		["Humanoide aufsp�ren"] = true,
		["Untote aufsp�ren"] = true,
		["Verborgenes aufsp�ren"] = true,
		["Elementare aufsp�ren"] = true,
		["D�monen aufsp�ren"] = true,
		["Riesen aufsp�ren"] = true,
		["Drachkin aufsp�ren"] = true,
        ["Untote sp�ren"] = true,
        ["D�monen sp�ren"] = true,
	},
	
	cmdOptions = {
		{
			option = "hideinbg",
			desc = "Toggle hiding reminders while in a battle ground",
			method = "ToggleBG",
		},	
	}
	
}
end

ace:RegisterGlobals{
	version 	= 1.0,
	ACEG_ON 	= "On",
	ACEG_OFF	= "Off",
}