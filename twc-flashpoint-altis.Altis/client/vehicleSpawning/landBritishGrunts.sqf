//British:
SpawnLRAction = ["SpawnLR","Land Rover","",{_veh = "CUP_B_LR_Transport_GB_W" createVehicle (position jetSpawnPad);_veh setDir 120; [_veh, 180, 1200, 0, FALSE] execVM "server\vehicles\vehicleRespawn.sqf"},{TRUE}] call ace_interact_menu_fnc_createAction;
["Land_InfoStand_V1_F", 0, ["ACE_MainActions"], SpawnLRAction] call ace_interact_menu_fnc_addActionToClass;