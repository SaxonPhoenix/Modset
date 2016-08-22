[arsenalAmmoBox,["hgun_ACPC2_F"],false] call BIS_fnc_addVirtualWeaponCargo;
[arsenalAmmoBox,["9Rnd_45ACP_Mag","B_IR_Grenade"],false] call BIS_fnc_addVirtualMagazineCargo;
[arsenalAmmoBox,["H_PilotHelmetFighter_B","U_B_PilotCoveralls","ItemGPS"],false] call Bis_fnc_addVirtualItemCargo;
[arsenalAmmoBox,["B_Parachute"],false] call Bis_fnc_addVirtualBackpackCargo;

comment "Exported from Arsenal by Paddock";

comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add containers";
player forceAddUniform "U_B_HeliPilotCoveralls";
for "_i" from 1 to 5 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_DAGR";
for "_i" from 1 to 3 do {player addItemToUniform "SmokeShell";};
for "_i" from 1 to 3 do {player addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
player addVest "CUP_V_B_PilotVest";
player addItemToVest "ACRE_PRC148";
for "_i" from 1 to 7 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 2 do {player addItemToVest "rhsusf_weap_m9";};
player addBackpack "B_Parachute";
player addHeadgear "rhsusf_hgu56p";

comment "Add weapons";
player addWeapon "rhs_weap_m4_carryhandle_mstock";
player addWeapon "rhsusf_weap_m9";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadioAcreFlagged";
player linkItem "rhsusf_ANPVS_14";
