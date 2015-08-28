/*
	ACD_SZ - Exile Spawn Points
	acd_SPAWN_config.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/
diag_log format ["### ACD: Spawn points: initialize configuration ###"];
/*
#########################################################################################################################################
*/
acd_SPAWN_Kavala = true;
acd_SPAWN_Zaros = true;
acd_SPAWN_Selekano = true;
acd_SPAWN_Prygos = true;
acd_SPAWN_Sofia = true;
acd_SPAWN_Syrta = true;
acd_SPAWN_Panagia = true;
acd_SPAWN_Fotia = true;
acd_SPAWN_Kalithea = true;
acd_SPAWN_Vikos = true;
acd_SPAWN_Robinson_Crusoe = true;
acd_SPAWN_Almyra = true;
/*
#########################################################################################################################################
*/
if (acd_debug) then {
	diag_log format ["### ACD: DEBUG: acd_SPAWN_config.sqf: acd_SPAWN_Kavala = %1 ###", acd_SPAWN_Kavala];
	diag_log format ["### ACD: DEBUG: acd_SPAWN_config.sqf: acd_SPAWN_Zaros = %1 ###", acd_SPAWN_Zaros];
	diag_log format ["### ACD: DEBUG: acd_SPAWN_config.sqf: acd_SPAWN_Selekano = %1 ###", acd_SPAWN_Selekano];
	diag_log format ["### ACD: DEBUG: acd_SPAWN_config.sqf: acd_SPAWN_Prygos = %1 ###", acd_SPAWN_Prygos];
	diag_log format ["### ACD: DEBUG: acd_SPAWN_config.sqf: acd_SPAWN_Sofia = %1 ###", acd_SPAWN_Sofia];
	diag_log format ["### ACD: DEBUG: acd_SPAWN_config.sqf: acd_SPAWN_Syrta = %1 ###", acd_SPAWN_Syrta];
	diag_log format ["### ACD: DEBUG: acd_SPAWN_config.sqf: acd_SPAWN_Kavala = %1 ###", acd_SPAWN_Kavala];
	diag_log format ["### ACD: DEBUG: acd_SPAWN_config.sqf: acd_SPAWN_Panagia = %1 ###", acd_SPAWN_Panagia];
	diag_log format ["### ACD: DEBUG: acd_SPAWN_config.sqf: acd_SPAWN_Fotia = %1 ###", acd_SPAWN_Fotia];
	diag_log format ["### ACD: DEBUG: acd_SPAWN_config.sqf: acd_SPAWN_Kalithea = %1 ###", acd_SPAWN_Kalithea];
	diag_log format ["### ACD: DEBUG: acd_SPAWN_config.sqf: acd_SPAWN_Vikos = %1 ###", acd_SPAWN_Vikos];
	diag_log format ["### ACD: DEBUG: acd_SPAWN_config.sqf: acd_SPAWN_Robinson_Crusoe = %1 ###", acd_SPAWN_Robinson_Crusoe];
	diag_log format ["### ACD: DEBUG: acd_SPAWN_config.sqf: acd_SPAWN_Almyra = %1 ###", acd_SPAWN_Almyra];
};
diag_log format ["### ACD: Spawn points: configuration is done ###"];
/*
#########################################################################################################################################
*/
#include "acd_SPAWNS.sqf"
/*
#########################################################################################################################################
*/