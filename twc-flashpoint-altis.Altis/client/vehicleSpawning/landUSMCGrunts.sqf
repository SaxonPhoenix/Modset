//US Marines
SpawnHMMVM2Action = ["SpawnHMMVM2","HMMV M2","",{_veh = "CUP_B_HMMV_M2_USMC" createVehicle (position jetSpawnPad);_veh setDir 120; [_veh, 180, 1200, 0, FALSE] execVM "server\vehicles\vehicleRespawn.sqf"},{TRUE}] call ace_interact_menu_fnc_createAction;
["Land_InfoStand_V1_F", 0, ["ACE_MainActions"], SpawnHMMVM2Action] call ace_interact_menu_fnc_addActionToClass;

SpawnHMMVMK19Action = ["SpawnHMMVMK19","HMMV MK19","",{_veh = "CUP_B_HMMV_MK19_USMC" createVehicle (position jetSpawnPad);_veh setDir 120; [_veh, 180, 1200, 0, FALSE] execVM "server\vehicles\vehicleRespawn.sqf"},{TRUE}] call ace_interact_menu_fnc_createAction;
["Land_InfoStand_V1_F", 0, ["ACE_MainActions"], SpawnHMMVMK19Action] call ace_interact_menu_fnc_addActionToClass;

SpawnHMMVUnarmedAction = ["SpawnHMMVUnarmed","HMMV Unarmed","",{_veh = "CUP_B_HMMV_Unarmed_USMC" createVehicle (position jetSpawnPad);_veh setDir 120; [_veh, 180, 1200, 0, FALSE] execVM "server\vehicles\vehicleRespawn.sqf"},{TRUE}] call ace_interact_menu_fnc_createAction;
["Land_InfoStand_V1_F", 0, ["ACE_MainActions"], SpawnHMMVUnarmedAction] call ace_interact_menu_fnc_addActionToClass;