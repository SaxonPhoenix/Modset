/*
 * Author: [TWC] Hobbs
 * Descri: Mortar defence system & 
 */
class CfgPatches {
	class TWC_Public_Siren {
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.100000;
		requiredAddons[] = {"ace_interaction"};
		author[] = {""};
		authorUrl = "";
	};
};

class CfgFunctions {
	class TWC {
		class idf_Functions {
			file = "\twc_basedefence\functions";

			class init {
				postInit = 1;
			};
		};
	};
};

class CfgVehicles {
	class staticweapon;
	class staticmortar: staticweapon {

		class EventHandlers {
			fired = "[(_this select 0), (_this select 6)] execVM ""insurgency_core\server\sys_basedefence\IDF_Alarmfire.sqf""";
		};
	};
};

class CfgSounds {
	sounds[] = {TWC_sound_idfsiren, TWC_sound_idfclear, TWC_sound_infsiren};

	class TWC_sound_idfsiren {
		name = "TWC_sound_idfsiren";
		// filename, volume, pitch, distance
		sound[] = {"\twc_basedefence\sounds\idfalarm.wav", db+30, 1, 500};
		titles[] = {0, ""};
	};
	
	class TWC_sound_idfclear {
		name = "TWC_sound_idfclear";
		sound[] = {"\twc_basedefence\sounds\idfclear.wav", db+30, 1, 500};
		titles[] = {0, ""};
	};
	
		class TWC_sound_infsiren {
		name = "TWC_sound_idfsiren";
		// filename, volume, pitch, distance
		sound[] = {"\twc_basedefence\sounds\infalarm.ogg", db+30, 1, 500};
		titles[] = {0, ""};
	};
};