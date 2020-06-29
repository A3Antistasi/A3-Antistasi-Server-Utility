/*
id: Number - unique DirectPlay ID (very large number). It is also the same id used for user placed markers (same as _id param)
uid: String - getPlayerUID of the joining client. The same as Steam ID (same as _uid param)
name: String - profileName of the joining client (same as _name param)
jip: Boolean - didJIP of the joining client (same as _jip param)
owner: Number - owner id of the joining client (same as _owner param)
*/

params ["_id", "_uid", "_name", "_jip", "_owner", "_hasInterface"];

// Set TS3 channel name for auto move
if (ASU_TSChannelName != "") then {
	[missionNamespace, ["tf_radio_channel_name", ASU_TSChannelName]] remoteExecCall ["setVariable", _owner]; //for TFAR 0.9.12
	[missionNamespace, ["TFAR_Teamspeak_Channel_Name", ASU_TSChannelName]] remoteExecCall ["setVariable", _owner]; //for TFAR BETA
};

//Set TS3 channel password for auto move - added by Bob Murphy 31.03.2020
if (ASU_TSChannelName !="") then {
	[missionNamespace, ["tf_radio_channel_password", ASU_TSChannelPassword]] remoteExecCall ["setVariable", _owner]; //for TFAR 0.9.12
	[missionNamespace, ["TFAR_Teamspeak_Channel_Password", ASU_TSChannelPassword]] remoteExecCall ["setVariable", _owner]; //for TFAR BETA
};

//diag_log "Player connected!";

if (ASU_serverMode == "HARDCORE") then {
	// Disable global chat and VOIP
	//diag_log "Disabled remote global channel!";
	// Check channel descriptions here: https://community.bistudio.com/wiki/enableChannel
	/*
	0 = Global
	1 = Side
	2 = Command
	3 = Group
	4 = Vehicle
	5 = Direct
	6-15 = Custom Radio (Is not supported by enableChannel)
	*/
	[0, false] remoteExecCall ["enableChannel", _owner];
};
