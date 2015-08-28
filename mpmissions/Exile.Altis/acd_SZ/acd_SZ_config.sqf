/*
	ACD_SZ - Exile Safe Zones
	acd_sz_config.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/
acd_debug = false;
diag_log format ["### ACD: Safe zones: initialize configuration ###"];
/*#######################################################################################################################################
 CENTRAL AIRFIELD DEFAULT SAFE ZONE
#######################################################################################################################################*/
acd_SZ_CENTRAL_Default = true;
acd_SZ_CENTRAL_Default_IS_SAFE = true;
/*#####################################################################################################################################*/
	acd_SZ_CENTRAL_Default_Guards = true;
	acd_SZ_CENTRAL_Default_Hardware_Trader = true;
	acd_SZ_CENTRAL_Default_Fast_Food_Trader = true;
	acd_SZ_CENTRAL_Default_Armory_Trader = true;
	acd_SZ_CENTRAL_Default_Equipment_Trader = true;
	acd_SZ_CENTRAL_Default_Specops_Trader = false;
	acd_SZ_CENTRAL_Default_Office_Trader = true;
	acd_SZ_CENTRAL_Default_Waste_Dump_Trader = true;
	acd_SZ_CENTRAL_Default_Aircraft_Trader = true;
	acd_SZ_CENTRAL_Default_Aircraft_Customs_Trader = true;
	acd_SZ_CENTRAL_Default_Vehicle_Trader = true;
	acd_SZ_CENTRAL_Default_Vehicle_Customs_Trader = true;
/*#######################################################################################################################################
 NORTH AIRFIELD SAFE ZONE
#######################################################################################################################################*/
acd_SZ_NORTH_Krya_Nera = true;
acd_SZ_NORTH_Krya_Nera_IS_SAFE = true;
/*####################################################################################################################################*/
	acd_SZ_NORTH_Krya_Nera_Hardware_Trader = true;
	acd_SZ_NORTH_Krya_Nera_Fast_Food_Trader = true;
	acd_SZ_NORTH_Krya_Nera_Armory_Trader = true;
	acd_SZ_NORTH_Krya_Nera_Equipment_Trader = true;
	acd_SZ_NORTH_Krya_Nera_Specops_Trader = false;
	acd_SZ_NORTH_Krya_Nera_Office_Trader = true;
	acd_SZ_NORTH_Krya_Nera_Waste_Dump_Trader = true;
	acd_SZ_NORTH_Krya_Nera_Aircraft_Trader = true;
	acd_SZ_NORTH_Krya_Nera_Aircraft_Customs_Trader = true;
	acd_SZ_NORTH_Krya_Nera_Vehicle_Trader = true;
	acd_SZ_NORTH_Krya_Nera_Vehicle_Customs_Trader = true;
/*#######################################################################################################################################
 NORTH EAST AIRFIELD SAFE ZONE
#######################################################################################################################################*/
acd_SZ_NORTH_EAST_Molos = false;
acd_SZ_NORTH_EAST_Molos_IS_SAFE = true;
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
	acd_SZ_NORTH_EAST_Molos_Boat_Trader = true;
	acd_SZ_NORTH_EAST_Molos_Boat_Customs_Trader = true;
/*#######################################################################################################################################
 SOUTH EAST AIRFIELD SAFE ZONE
#######################################################################################################################################*/
acd_SZ_SOUTH_EAST_Selekano = true;
acd_SZ_SOUTH_EAST_Selekano_IS_SAFE = true;
/*#####################################################################################################################################*/
	acd_SZ_SOUTH_EAST_Selekano_Hardware_Trader = true;
	acd_SZ_SOUTH_EAST_Selekano_Fast_Food_Trader = true;
	acd_SZ_SOUTH_EAST_Selekano_Armory_Trader = true;
	acd_SZ_SOUTH_EAST_Selekano_Equipment_Trader = true;
	acd_SZ_SOUTH_EAST_Selekano_Specops_Trader = false;
	acd_SZ_SOUTH_EAST_Selekano_Office_Trader = true;
	acd_SZ_SOUTH_EAST_Selekano_Waste_Dump_Trader = true;
	acd_SZ_SOUTH_EAST_Selekano_Aircraft_Trader = true;
	acd_SZ_SOUTH_EAST_Selekano_Aircraft_Customs_Trader = true;
	acd_SZ_SOUTH_EAST_Selekano_Vehicle_Trader = true;
	acd_SZ_SOUTH_EAST_Selekano_Vehicle_Customs_Trader = true;
/*#######################################################################################################################################
 SOUTH WEST Dump SAFE ZONE
#######################################################################################################################################*/
acd_SZ_SOUTH_WEST_Dump = false;
acd_SZ_SOUTH_WEST_Dump_IS_SAFE = true;
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
/*#####################################################################################################################################*/
	acd_SZ_SOUTH_Eginio_Hardware_Trader = true;
	acd_SZ_SOUTH_Eginio_Fast_Food_Trader = true;
	acd_SZ_SOUTH_Eginio_Armory_Trader = true;
	acd_SZ_SOUTH_Eginio_Equipment_Trader = true;
	acd_SZ_SOUTH_Eginio_Specops_Trader = true;
	acd_SZ_SOUTH_Eginio_Office_Trader = true;
	acd_SZ_SOUTH_Eginio_Waste_Dump_Trader = true;
/*#######################################################################################################################################
 NORTH Atsalis Boat Trader
#######################################################################################################################################*/
acd_SZ_NORTH_Atsalis = false;
acd_SZ_NORTH_Atsalis_IS_SAFE = true;
/*#####################################################################################################################################*/
	acd_SZ_NORTH_Atsalis_Boat_Trader = true;
/*#######################################################################################################################################
 NORTH Atsalis Boat Trader
#######################################################################################################################################*/
acd_SZ_EAST_Almyra = false;
acd_SZ_EAST_Almyra_IS_SAFE = false;
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
diag_log format ["### ACD: Safe zones: configuration is done ###"];
#include "acd_SPAWN_config.sqf"