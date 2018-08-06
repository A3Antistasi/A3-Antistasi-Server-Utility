class CfgPatches
{
	class AntistasiServerUtility
	{
		// Meta information for editor
		name = "Antistasi Server Utility";
		author = "Sparker";
		url = "";

		// Minimum compatible version. When the game's version is lower, pop-up warning will appear when launching the game.
		requiredVersion = 1.60; 
		// Required addons, used for setting load order.
		// When any of the addons is missing, pop-up warning will appear when launching the game.
		requiredAddons[] = {};
		// List of objects (CfgVehicles classes) contained in the addon. Important also for Zeus content unlocking.
		units[] = {};
		// List of weapons (CfgWeapons classes) contained in the addon.
		weapons[] = {};
	};
};

class CfgFunctions
{
   	class ASU
	{
		class Functions
		{
			class init
			{
				file = "AntistasiServerUtility\fn_init.sqf";
				preInit = 1;
			};
			
			class onPlayerConnected
			{
				file = "AntistasiServerUtility\fn_onPlayerConnected.sqf";
			};
		};
	};
};