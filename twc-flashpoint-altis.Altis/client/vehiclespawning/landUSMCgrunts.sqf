//US Marines
SpawnHMMVM2Action = ["SpawnHMMVM2","HMMV M2","",{_oldVeh = nearestObjects [jetSpawnPad, ["Car","Tank"],10]; {deleteVehicle _x}forEach _oldVeh; _veh = "rhsusf_m1025_w_m2" createVehicle (position jetSpawnPad);_dir = getDir jetSpawnPad; _dir = _dir + 180; _veh setDir _dir; [_veh, 180, 1200, 0, FALSE] execVM "server\vehicles\vehicleRespawn.sqf"},{TRUE}] call ace_interact_menu_fnc_createAction;
["Land_InfoStand_V1_F", 0, ["ACE_MainActions"], SpawnHMMVM2Action] call ace_interact_menu_fnc_addActionToClass;

SpawnHMMVMK19Action = ["SpawnHMMVMK19","HMMV MK19","",{_oldVeh = nearestObjects [jetSpawnPad, ["Car","Tank"],10]; {deleteVehicle _x}forEach _oldVeh; _veh = "rhsusf_m1025_w_mk19" createVehicle (position jetSpawnPad);_dir = getDir jetSpawnPad; _dir = _dir + 180; _veh setDir _dir; [_veh, 180, 1200, 0, FALSE] execVM "server\vehicles\vehicleRespawn.sqf"},{TRUE}] call ace_interact_menu_fnc_createAction;
["Land_InfoStand_V1_F", 0, ["ACE_MainActions"], SpawnHMMVMK19Action] call ace_interact_menu_fnc_addActionToClass;

SpawnHMMVUnarmedAction = ["SpawnHMMVUnarmed","HMMV Unarmed","",{_oldVeh = nearestObjects [jetSpawnPad, ["Car","Tank"],10]; {deleteVehicle _x}forEach _oldVeh; _veh = "rhsusf_m998_w_4dr_fulltop" createVehicle (position jetSpawnPad);_dir = getDir jetSpawnPad; _dir = _dir + 180; _veh setDir _dir; [_veh, 180, 1200, 0, FALSE] execVM "server\vehicles\vehicleRespawn.sqf"},{TRUE}] call ace_interact_menu_fnc_createAction;
["Land_InfoStand_V1_F", 0, ["ACE_MainActions"], SpawnHMMVUnarmedAction] call ace_interact_menu_fnc_addActionToClass;