function FinderReminder_Locals_frFR()
FinderReminderLocals = {
	desc = "An Addon to remind finders to track the things they wish to find.",
	reminder = "Don't forget to turn on a tracking skill!",
	
	bghidemsg = "Hiding the reminder while in a battleground is now [%s].",
	
	trackingspells = {
		["D�couverte de gisements"] = true,
		["D�couverte d'herbes"] = true,
		["D�couverte de tr�sors"] = true,
		["Pistage des B�tes"] = true,
		["Pistage des Humano�des"] = true,
		["Pistage des Morts-Vivants"] = true,
		["Pistage des Camoufl�s"] = true,
		["Pistage des El�mentaires"] = true,
		["Pistage des D�mons"] = true,
		["Pistage des G�ants"] = true,
		["Pistage des Draconiens"] = true,
        ["D�tection des morts-vivants"] = true,
        ["D�tection des d�mons"] = true
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