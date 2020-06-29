diag_log "[ASU] Info: AntistasiServerUtility addon: init";

ASU_serverMode = "NONE"; // this sets the initial value for the servermode to NONE
ASU_TSChannelName = ""; // Name of the TFAR channel for this server - sets initial value to nill
ASU_TSChannelPassword = ""; // Password of the TFAR channel for this server - sets initial value to nill - added by Bob Murphy 31.03.2020

switch (serverName) do { // Tell me your name!

	// Hardcore server
	// Where is my RPG!
	case "A3-Antistasi Official US 1 - hardcore": { //here has to be the exact name of the game-server
		diag_log "[ASU] Info: hardcore server detected"; // this is a custom log line which you can adapt for your needs
		ASU_serverMode = "HARDCORE"; // if set to "HARDCORE" this enables the settings in ASU_fnc_onPlayerConnected which can disable ingame channels
		ASU_TSChannelName = "Task Force Radio US1"; //here has to be the exact name of the TS channel you intent to use as your radiochannel
		ASU_TSChannelPassword = "123"; // added by Bob Murphy 31.03.2020
	};

	// Casual server
	// Don't shoot me or I will cry!
	case "A3-Antistasi Official EU 2 - casual": { //here has to be the exact name of the game-server
		diag_log "[ASU] Info: casual server detected"; // this is a custom log line which you can adapt for your needs
		ASU_serverMode = "CASUAL"; // if set to "HARDCORE" this enables the settings in ASU_fnc_onPlayerConnected which can disable ingame channels
		ASU_TSChannelName = "Task Force Radio EU2"; //here has to be the exact name of the TS channel you intent to use as your radiochannel
		ASU_TSChannelPassword = "123"; // added by Bob Murphy 31.03.2020
	};

	default {diag_log format ["[ASU] Error: detected neither hardcore nor casual server! Server name: %1", serverName];
	};
};

if (ASU_TSChannelName != "") then {
	TFAR_Teamspeak_Channel_Name = ASU_TSChannelName;
	TFAR_Teamspeak_Channel_Password = ASU_TSChannelPassword; // added by Bob Murphy 31.03.2020
};

addMissionEventHandler ["PlayerConnected", ASU_fnc_onPlayerConnected];
