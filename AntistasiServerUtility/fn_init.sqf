diag_log "[ASU] Info: AntistasiServerUtility addon: init";

ASU_serverMode = "NONE";
ASU_TSChannelName = ""; // Name of the TFAR channel for this server

switch (serverName) do { // Tell me your name!

	// Hardcore server
	// Where is my RPG!
	case "A3-Antistasi Official US 1 - hardcore": {
		diag_log "[ASU] Info: hardcore server detected";
		ASU_serverMode = "HARDCORE";
		ASU_TSChannelName = "Task Force Radio US1";
	};
	
	// Casual server
	// Don't shoot me or I will cry!
	case "A3-Antistasi Official EU 2 - casual": {
		ASU_serverMode = "CASUAL";
		ASU_TSChannelName = "Task Force Radio EU2";
		diag_log "[ASU] Info: casual server detected";
	};
	
	default {diag_log format ["[ASU] Error: detected neither hardcore nor casual server! Server name: %1", serverName]; };
};

if (ASU_TSChannelName != "") then {
	tf_radio_channel_name = ASU_TSChannelName;
};

addMissionEventHandler ["PlayerConnected", ASU_fnc_onPlayerConnected];