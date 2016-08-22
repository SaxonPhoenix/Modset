[arsenalAmmoBox,["rhs_weap_m14ebrri","rhsusf_weap_m9","UK3CB_BAF_AT4_CS_AT_Launcher","UK3CB_BAF_AT4_CS_AP_Launcher","UK3CB_BAF_Javelin_Slung_Tube","UK3CB_BAF_Javelin_CLU"],false] call BIS_fnc_addVirtualWeaponCargo;
[arsenalAmmoBox,["rhsusf_20Rnd_762x51_m118_special_Mag","rhsusf_mag_15Rnd_9x19_JHP"],false] call BIS_fnc_addVirtualMagazineCargo;
[arsenalAmmoBox,["rhsusf_ach_helmet_ucp","rhs_uniform_cu_ucp","rhsusf_iotv_ucp_SAW","acc_pointer_IR","rhsusf_acc_LEUPOLDMK4","bipod_01_F_blk","ACRE_PRC148"],false] call Bis_fnc_addVirtualItemCargo;
[arsenalAmmoBox,["rhsusf_assault_eagleaiii_ucp","ACRE_PRC148"],false] call Bis_fnc_addVirtualBackpackCargo;

comment "Exported from Arsenal by jayman";

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
player forceAddUniform "rhs_uniform_cu_ucp";
player addItemToUniform "ACRE_PRC148";
player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 5 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_morphine";};
player addVest "rhsusf_iotv_ucp_SAW";
for "_i" from 1 to 7 do {player addItemToVest "rhsusf_20Rnd_762x51_m118_special_Mag";};
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
player addBackpack "rhsusf_assault_eagleaiii_ucp";
for "_i" from 1 to 3 do {player addItemToBackpack "rhsusf_20Rnd_762x51_m118_special_Mag";};
for "_i" from 1 to 3 do {player addItemToBackpack "SmokeShell";};
player addHeadgear "rhsusf_ach_helmet_ucp";

comment "Add weapons";
player addWeapon "rhs_weap_m14ebrri";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
player addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4";
player addPrimaryWeaponItem "bipod_01_F_blk";
player addWeapon "UK3CB_BAF_AT4_AT_Launcher";
player addWeapon "ACE_Vector";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "rhsusf_ANPVS_14";