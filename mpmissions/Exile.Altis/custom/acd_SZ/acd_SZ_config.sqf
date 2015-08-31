/*
	ACD_SZ - Exile Safe Zones
	acd_sz_config.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/
if (!isNil "acd_sz_config_loaded") then {
	diag_log format ["### ACD: acd_sz_config.sqf: acd_sz_config_loaded = %1 ###",acd_sz_config_loaded];
	diag_log format ["### ACD: acd_sz_config.sqf: is already loaded ###"];
}else{
	diag_log format ["### ACD: acd_sz_config.sqf: acd_sz_config_loaded isNil ###"];
	diag_log format ["### ACD: acd_sz_config.sqf: not loaded yet ###"];
};
if (!isNil "acd_sz_config_loaded") exitWith {};
diag_log format ["### ACD: acd_sz_config.sqf: initialize configuration ###"];
acd_debug = false;
/*#####################################################################################################################################*/
acd_SZ_Unlock_vehicles_in_SZ_upon_restart = true; /* OPTIONAL - (will work only with modified ExileServer_object_vehicle_database_load.sqf) */
acd_SZ_Disable_Lifting_if_vehicle_locked = true; /* OPTIONAL - (will work only with modified ExileServer_object_vehicle_database_load.sqf) */
acd_SZ_Repair_vehicles_upon_restart = false; /* OPTIONAL - (will work only with modified ExileServer_object_vehicle_database_load.sqf) */
acd_SZ_Refuel_vehicles_upon_restart = false; /* OPTIONAL - (will work only with modified ExileServer_object_vehicle_database_load.sqf) */
/*#######################################################################################################################################
 CENTRAL AIRFIELD DEFAULT SAFE ZONE
#######################################################################################################################################*/
acd_SZ_CENTRAL_Default = true;
acd_SZ_CENTRAL_Default_IS_SAFE = true;
acd_SZ_CENTRAL_Default_position = [14600,16797.199,22.35]; /* DO NOT EDIT (you will break things)*/
acd_SZ_CENTRAL_Default_triggerArea = [175,175,0,true]; /* DO NOT EDIT (you will break things)*/ /* DO NOT EDIT (you will break things)*/
/*#####################################################################################################################################*/
	acd_SZ_CENTRAL_Default_Guards = true;
	acd_SZ_CENTRAL_Default_Hardware_Trader = true;
	acd_SZ_CENTRAL_Default_Fast_Food_Trader = true;
	acd_SZ_CENTRAL_Default_Armory_Trader = true;
	acd_SZ_CENTRAL_Default_Equipment_Trader = true;
	acd_SZ_CENTRAL_Default_Specops_Trader = true;
	acd_SZ_CENTRAL_Default_Office_Trader = true;
	acd_SZ_CENTRAL_Default_Waste_Dump_Trader = true;
	acd_SZ_CENTRAL_Default_Aircraft_Trader = true;
	acd_SZ_CENTRAL_Default_Aircraft_Customs_Trader = true;
	acd_SZ_CENTRAL_Default_Vehicle_Trader = true;
	acd_SZ_CENTRAL_Default_Vehicle_Customs_Trader = true;
/*#######################################################################################################################################
 DEFAULT SAFE ZONE Silderas EAST
#######################################################################################################################################*/
acd_SZ_Default_Silderas = true;
acd_SZ_Default_Silderas_IS_SAFE = true;
acd_SZ_Default_Silderas_position = [23334.6,24188.9,4.00956]; /* DO NOT EDIT (you will break things) */
acd_SZ_Default_Silderas_triggerArea = [175,175,0,true]; /* DO NOT EDIT (you will break things)*/ /* DO NOT EDIT (you will break things)*/
/*#####################################################################################################################################*/
	acd_SZ_Default_Silderas_Hardware_Trader = true;
	acd_SZ_Default_Silderas_Fast_Food_Trader = true;
	acd_SZ_Default_Silderas_Armory_Trader = true;
	acd_SZ_Default_Silderas_Equipment_Trader = true;
	acd_SZ_Default_Silderas_Waste_Dump_Trader = true;
	acd_SZ_Default_Silderas_Vehicle_Trader = true;
	acd_SZ_Default_Silderas_Boat_Trader = true;
/*#######################################################################################################################################
 DEFAULT SAFE ZONE Fotia WEST
#######################################################################################################################################*/
acd_SZ_Default_Fotia = true;
acd_SZ_Default_Fotia_IS_SAFE = true;
acd_SZ_Default_Fotia_position = [2998.06,18175.5,3.7756]; /* DO NOT EDIT (you will break things) */
acd_SZ_Default_Fotia_triggerArea = [175,175,0,true]; /* DO NOT EDIT (you will break things)*/ /* DO NOT EDIT (you will break things)*/
/*#####################################################################################################################################*/
	acd_SZ_Default_Fotia_Guards = true;
	acd_SZ_Default_Fotia_Hardware_Trader = true;
	acd_SZ_Default_Fotia_Fast_Food_Trader = true;
	acd_SZ_Default_Fotia_Armory_Trader = true;
	acd_SZ_Default_Fotia_Equipment_Trader = true;
	acd_SZ_Default_Fotia_Waste_Dump_Trader = true;
	acd_SZ_Default_Fotia_Vehicle_Trader = true;
	acd_SZ_Default_Fotia_Boat_Trader = true;
/*#######################################################################################################################################
 NORTH AIRFIELD SAFE ZONE
#######################################################################################################################################*/
acd_SZ_NORTH_Krya_Nera = true;
acd_SZ_NORTH_Krya_Nera_IS_SAFE = true;
acd_SZ_NORTH_Krya_Nera_position = [9192.48,21519.3,16.9193]; /* DO NOT EDIT (you will break things)*/
acd_SZ_NORTH_Krya_Nera_triggerArea = [220,300,55,true]; /* DO NOT EDIT (you will break things)*/
/*####################################################################################################################################*/
	acd_SZ_NORTH_Krya_Nera_Hardware_Trader = true;
	acd_SZ_NORTH_Krya_Nera_Fast_Food_Trader = true;
	acd_SZ_NORTH_Krya_Nera_Armory_Trader = true;
	acd_SZ_NORTH_Krya_Nera_Equipment_Trader = true;
	acd_SZ_NORTH_Krya_Nera_Specops_Trader = true;
	acd_SZ_NORTH_Krya_Nera_Office_Trader = true;
	acd_SZ_NORTH_Krya_Nera_Waste_Dump_Trader = true;
	acd_SZ_NORTH_Krya_Nera_Aircraft_Trader = true;
	acd_SZ_NORTH_Krya_Nera_Aircraft_Customs_Trader = true;
	acd_SZ_NORTH_Krya_Nera_Vehicle_Trader = true;
	acd_SZ_NORTH_Krya_Nera_Vehicle_Customs_Trader = true;
/*#######################################################################################################################################
 NORTH EAST AIRFIELD SAFE ZONE
#######################################################################################################################################*/
acd_SZ_NORTH_EAST_Molos = true;
acd_SZ_NORTH_EAST_Molos_IS_SAFE = true;
acd_SZ_NORTH_EAST_Molos_position = [26833.49,24850.111,21.780668]; /* DO NOT EDIT (you will break things)*/
acd_SZ_NORTH_EAST_Molos_triggerArea = [220,300,11,true]; /* DO NOT EDIT (you will break things)*/
/*#####################################################################################################################################*/
	acd_SZ_NORTH_EAST_Molos_Hardware_Trader = true;
	acd_SZ_NORTH_EAST_Molos_Fast_Food_Trader = true;
	acd_SZ_NORTH_EAST_Molos_Armory_Trader = true;
	acd_SZ_NORTH_EAST_Molos_Equipment_Trader = true;
	acd_SZ_NORTH_EAST_Molos_Specops_Trader = true;
	acd_SZ_NORTH_EAST_Molos_Office_Trader = true;
	acd_SZ_NORTH_EAST_Molos_Waste_Dump_Trader = true;
	acd_SZ_NORTH_EAST_Molos_Aircraft_Trader = true;
	acd_SZ_NORTH_EAST_Molos_Aircraft_Customs_Trader = true;
	acd_SZ_NORTH_EAST_Molos_Vehicle_Trader = true;
	acd_SZ_NORTH_EAST_Molos_Vehicle_Customs_Trader = true;
	acd_SZ_NORTH_EAST_Molos_Boat_Trader = true; /* (Boat traders are fucked at this moment) */
	acd_SZ_NORTH_EAST_Molos_Boat_Customs_Trader = false; /* (Boat traders are fucked at this moment) */
/*#######################################################################################################################################
 SOUTH EAST AIRFIELD SAFE ZONE
#######################################################################################################################################*/
acd_SZ_SOUTH_EAST_Selekano = true;
acd_SZ_SOUTH_EAST_Selekano_IS_SAFE = true;
acd_SZ_SOUTH_EAST_Selekano_position = [20937.424,7369.8242,24.977497]; /* DO NOT EDIT (you will break things)*/
acd_SZ_SOUTH_EAST_Selekano_triggerArea = [220,300,11,true]; /* DO NOT EDIT (you will break things)*/
/*#####################################################################################################################################*/
	acd_SZ_SOUTH_EAST_Selekano_Hardware_Trader = true;
	acd_SZ_SOUTH_EAST_Selekano_Fast_Food_Trader = true;
	acd_SZ_SOUTH_EAST_Selekano_Armory_Trader = true;
	acd_SZ_SOUTH_EAST_Selekano_Equipment_Trader = true;
	acd_SZ_SOUTH_EAST_Selekano_Specops_Trader = true;
	acd_SZ_SOUTH_EAST_Selekano_Office_Trader = true;
	acd_SZ_SOUTH_EAST_Selekano_Waste_Dump_Trader = true;
	acd_SZ_SOUTH_EAST_Selekano_Aircraft_Trader = true;
	acd_SZ_SOUTH_EAST_Selekano_Aircraft_Customs_Trader = true;
	acd_SZ_SOUTH_EAST_Selekano_Vehicle_Trader = true;
	acd_SZ_SOUTH_EAST_Selekano_Vehicle_Customs_Trader = true;
/*#######################################################################################################################################
 SOUTH WEST Dump SAFE ZONE
#######################################################################################################################################*/
acd_SZ_SOUTH_WEST_Dump = true;
acd_SZ_SOUTH_WEST_Dump_IS_SAFE = true;
acd_SZ_SOUTH_WEST_Dump_position = [5949.45,12518.7,0.00117493]; /* DO NOT EDIT (you will break things)*/
acd_SZ_SOUTH_WEST_Dump_triggerArea = [300,300,0,true]; /* DO NOT EDIT (you will break things)*/
/*#####################################################################################################################################*/
	acd_SZ_SOUTH_WEST_Dump_Guards = true;
	acd_SZ_SOUTH_WEST_Dump_Hardware_Trader = true;
	acd_SZ_SOUTH_WEST_Dump_Fast_Food_Trader = true;
	acd_SZ_SOUTH_WEST_Dump_Armory_Trader = true;
	acd_SZ_SOUTH_WEST_Dump_Equipment_Trader = true;
	acd_SZ_SOUTH_WEST_Dump_Specops_Trader = true;
	acd_SZ_SOUTH_WEST_Dump_Office_Trader = true;
	acd_SZ_SOUTH_WEST_Dump_Waste_Dump_Trader = true;
	acd_SZ_SOUTH_WEST_Dump_Vehicle_Trader = true;
	acd_SZ_SOUTH_WEST_Dump_Vehicle_Customs_Trader = true;
/*#######################################################################################################################################
 SOUTH Eginio SAFE ZONE
#######################################################################################################################################*/
acd_SZ_SOUTH_Eginio = true;
acd_SZ_SOUTH_Eginio_IS_SAFE = false;
acd_SZ_SOUTH_Eginio_position = [11557,7047.75,0.101646]; /* DO NOT EDIT (you will break things)*/
acd_SZ_SOUTH_Eginio_triggerArea = [300,300,0,true]; /* DO NOT EDIT (you will break things)*/
/*#####################################################################################################################################*/
	acd_SZ_SOUTH_Eginio_Hardware_Trader = true;
	acd_SZ_SOUTH_Eginio_Fast_Food_Trader = true;
	acd_SZ_SOUTH_Eginio_Armory_Trader = true;
	acd_SZ_SOUTH_Eginio_Equipment_Trader = true;
	acd_SZ_SOUTH_Eginio_Specops_Trader = true;
	acd_SZ_SOUTH_Eginio_Office_Trader = true;
	acd_SZ_SOUTH_Eginio_Waste_Dump_Trader = true;
/*#######################################################################################################################################
 NORTH Atsalis Boat Trader (Boat traders are fucked at this moment)
#######################################################################################################################################*/
acd_SZ_NORTH_Atsalis = true;
acd_SZ_NORTH_Atsalis_IS_SAFE = false;
acd_SZ_NORTH_Atsalis_position = [8809.4,25032.1,2.82314]; /* DO NOT EDIT (you will break things)*/
acd_SZ_NORTH_Atsalis_triggerArea = [100,100,0,true]; /* DO NOT EDIT (you will break things)*/
/*#####################################################################################################################################*/
	acd_SZ_NORTH_Atsalis_Boat_Trader = true;
/*#######################################################################################################################################
 EAST Almyra
#######################################################################################################################################*/
acd_SZ_EAST_Almyra = true;
acd_SZ_EAST_Almyra_IS_SAFE = false;
acd_SZ_EAST_Almyra_position = [23157.5,18726.7,0.00143886]; /* DO NOT EDIT (you will break things)*/
acd_SZ_EAST_Almyra_triggerArea = [300,300,55,true]; /* DO NOT EDIT (you will break things)*/
/*#####################################################################################################################################*/
	acd_SZ_EAST_Almyra_Hardware_Trader = true;
	acd_SZ_EAST_Almyra_Fast_Food_Trader = true;
	acd_SZ_EAST_Almyra_Armory_Trader = true;
	acd_SZ_EAST_Almyra_Equipment_Trader = true;
	acd_SZ_EAST_Almyra_Specops_Trader = true;
	acd_SZ_EAST_Almyra_Office_Trader = true;
	acd_SZ_EAST_Almyra_Waste_Dump_Trader = true;
	acd_SZ_EAST_Almyra_Aircraft_Trader = true;
	acd_SZ_EAST_Almyra_Aircraft_Customs_Trader = true;
	acd_SZ_EAST_Almyra_Vehicle_Trader = true;
	acd_SZ_EAST_Almyra_Vehicle_Customs_Trader = true;
/*#####################################################################################################################################*/
if (acd_debug) then {
	diag_log format ["### ACD: DEBUG: acd_sz_config.sqf: acd_SZ_CENTRAL_Default = %1 ###", acd_SZ_CENTRAL_Default];
	diag_log format ["### ACD: DEBUG: acd_sz_config.sqf: acd_SZ_NORTH_Krya_Nera = %1 ###", acd_SZ_NORTH_Krya_Nera];
	diag_log format ["### ACD: DEBUG: acd_sz_config.sqf: acd_SZ_NORTH_EAST_Molos = %1 ###", acd_SZ_NORTH_EAST_Molos];
	diag_log format ["### ACD: DEBUG: acd_sz_config.sqf: acd_SZ_SOUTH_EAST_Selekano = %1 ###", acd_SZ_SOUTH_EAST_Selekano];
	diag_log format ["### ACD: DEBUG: acd_sz_config.sqf: acd_SZ_SOUTH_WEST_Dump = %1 ###", acd_SZ_SOUTH_WEST_Dump];
	diag_log format ["### ACD: DEBUG: acd_sz_config.sqf: acd_SZ_SOUTH_Eginio = %1 ###", acd_SZ_SOUTH_Eginio];
	diag_log format ["### ACD: DEBUG: acd_sz_config.sqf: acd_SZ_NORTH_Atsalis = %1 ###", acd_SZ_NORTH_Atsalis];
	diag_log format ["### ACD: DEBUG: acd_sz_config.sqf: acd_SZ_EAST_Almyra = %1 ###", acd_SZ_EAST_Almyra];
};
/*#####################################################################################################################################*/
diag_log format ["### ACD: acd_sz_config.sqf: configuration successfully loaded ###"];
acd_preInit_1 = [] execVM "custom\acd_SZ\acd_SZ_IsNotParkingLot.sqf";
waitUntil {
    scriptDone acd_preInit_1
};
acd_sz_config_loaded = true;
#include "acd_SPAWN_config.sqf"