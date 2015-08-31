/*
	ACD_SZ - Exile Safe Zones
	run.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/
acd_config_file = "mpmissions\__cur_mp.Altis\custom\acd_SZ\acd_SZ_config.sqf";
diag_log format ["### ACD: ADDON: Preloading config from: %1 ###", acd_config_file];
preInit_acd_config = [] execVM acd_config_file;
waitUntil {scriptDone preInit_acd_config};
diag_log format ["### ACD: ADDON: Preloading config is done ###"];