class CfgPatches
{
	class twc_objects
	{
		units[]=
		{
			"twc_radioTable",
			"twc_portableGenerator"
		};
		weapons[]={};
		requiredVersion=0.1;
		requiredAddons[]=
		{
			
		};
	};
};
class EventHandlers;
class cfgFunctions
{
	class TWC
	{
		class insurgencyObjects
		{
			file="twc_objects\functions";
			class setUpForwardBase{};
			class tearDownForwardBase{};
			
		};
	};
};
class CfgVehicles
{
	class Land_CampingTable_F;
	class Land_Portable_generator_F;
	class twc_radioTable:Land_CampingTable_F
	{
		displayname = "TWC RadioTable";
		ace_dragging_canDrag = 1;
		ace_dragging_carryDirection = 0;
		ace_dragging_dragPosition[] = {0,1.2,0};
		ace_cargo_size = 1;
		ace_cargo_canLoad = 1;
		class EventHandlers: EventHandlers
		{
			init = "(_this select 0) setVariable [""twc_forwardBaseDeployed"",false]";
		};
		class ACE_Actions{
			class ACE_MainActions{
				selection = "";
				distance = 2;
				condition = "true";
				position = "[0,0,0.4]";
				class twc_placeRadio{
					displayName = "Activate Forward Base";
					condition = "!(_target getVariable 'twc_forwardBaseDeployed')";
					statement = "_return = [_target] call twc_fnc_setUpForwardBase; hint _return;";
                    icon = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\call_ca.paa";
				};
				class twc_RemoveRadio{
					displayName = "Tear Down Forward Base";
					condition = "(_target getVariable 'twc_forwardBaseDeployed')";
					statement = "_return = [_target] call twc_fnc_tearDownForwardBase; hint _return;";
                    icon = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\call_ca.paa";
				};
			};
		};
	};
	class twc_portableGenerator: Land_Portable_generator_F
	{
		ace_cargo_size = 1;
		ace_cargo_canLoad = 1;
		class EventHandlers: EventHandlers
		{
			init = "[(_this select 0),true,[0,1,0],270] call ace_dragging_fnc_setDraggable;";  
		};
	};
};