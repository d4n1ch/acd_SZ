/*
	ACD_SZ - Exile Spawn Points
	acd_SPAWN_config.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/
diag_log format ["### ACD: acd_SPAWN_config.sqf: initialize configuration ###"];
if (!isServer) exitWith {diag_log format ["### ACD: acd_SPAWN_config.sqf: NOT A SERVER ###"];};
/*#####################################################################################################################################*/
acd_SPAWN_Kavala = true;
acd_SPAWN_Kavala_pos = [3874.3601,13280.8,18.125601];
acd_SPAWN_Kavala_text = "Kavala";
/*#####################################################################################################################################*/
acd_SPAWN_Zaros = true;
acd_SPAWN_Zaros_pos = [9926.5303,12083.3,12.3647];
acd_SPAWN_Zaros_text = "Zaros";
/*#####################################################################################################################################*/
acd_SPAWN_Selekano = true;
acd_SPAWN_Selekano_pos = [20978.4,7045.6099,27.7806];
acd_SPAWN_Selekano_text = "Selekano";
/*#####################################################################################################################################*/
acd_SPAWN_Prygos = true;
acd_SPAWN_Prygos_pos = [17137.801,12719.4,15.0325];
acd_SPAWN_Prygos_text = "Prygos";
/*#####################################################################################################################################*/
acd_SPAWN_Sofia = true;
acd_SPAWN_Sofia_pos = [25713.301,21329.6,20.344299];
acd_SPAWN_Sofia_text = "Sofia";
/*#####################################################################################################################################*/
acd_SPAWN_Syrta = true;
acd_SPAWN_Syrta_pos = [8612.5303,18272.301,180.58];
acd_SPAWN_Syrta_text = "Syrta";
/*#####################################################################################################################################*/
acd_SPAWN_Panagia = true;
acd_SPAWN_Panagia_pos = [20748.6,9050.48,42.4553] ;
acd_SPAWN_Panagia_text = "Panagia";
/*#####################################################################################################################################*/
acd_SPAWN_Fotia = true;
acd_SPAWN_Fotia_pos = [3205.28,18436.9,0.00119019];
acd_SPAWN_Fotia_text = "Fotia";
/*#####################################################################################################################################*/
acd_SPAWN_Kalithea = true;
acd_SPAWN_Kalithea_pos = [17831.3,17980.6,0.00166035];
acd_SPAWN_Kalithea_text = "Kalithea";
/*#####################################################################################################################################*/
acd_SPAWN_Vikos = true;
acd_SPAWN_Vikos_pos = [11676.1,9485.97,0.00164795];
acd_SPAWN_Vikos_text = "Vikos";
/*#####################################################################################################################################*/
acd_SPAWN_Robinson_Crusoe = true;
acd_SPAWN_Robinson_Crusoe_pos = [8487.43,25123.9,0.00113678];
acd_SPAWN_Robinson_Crusoe_text = "Robinson Crusoe";
/*#####################################################################################################################################*/
acd_SPAWN_Almyra = true;
acd_SPAWN_Almyra_pos = [23535.5,18303.1,0.00143886];
acd_SPAWN_Almyra_text = "Almyra";
/*#####################################################################################################################################*/
/*
	This section allows you to configure up to five custom spawn zones
*/
/*#####################################################################################################################################*/
acd_SPAWN_user_defined_1 = true;
acd_SPAWN_user_defined_1_pos = [11037.8,8298.19,0.00157166]; // (getpos player) //in debug console to get position
acd_SPAWN_user_defined_1_text = "ACD Spawn: Crimea"; // desired spawn name
/*#####################################################################################################################################*/
acd_SPAWN_user_defined_2 = false;
acd_SPAWN_user_defined_2_pos = [8487.43,25123.9,0.00113678];
acd_SPAWN_user_defined_2_text = "ACD Spawn";
/*#####################################################################################################################################*/
acd_SPAWN_user_defined_3 = false;
acd_SPAWN_user_defined_3_pos = [8487.43,25123.9,0.00113678];
acd_SPAWN_user_defined_3_text = "ACD Spawn";
/*#####################################################################################################################################*/
acd_SPAWN_user_defined_4 = false;
acd_SPAWN_user_defined_4_pos = [8487.43,25123.9,0.00113678];
acd_SPAWN_user_defined_4_text = "ACD Spawn";
/*#####################################################################################################################################*/
acd_SPAWN_user_defined_5 = false;
acd_SPAWN_user_defined_5_pos = [8487.43,25123.9,0.00113678];
acd_SPAWN_user_defined_5_text = "ACD Spawn";
/*#####################################################################################################################################*/
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
	diag_log format ["### ACD: DEBUG: acd_SPAWN_config.sqf: acd_SPAWN_user_defined_1 = %1 ###", acd_SPAWN_user_defined_1];
	diag_log format ["### ACD: DEBUG: acd_SPAWN_config.sqf: acd_SPAWN_user_defined_2 = %1 ###", acd_SPAWN_user_defined_2];
	diag_log format ["### ACD: DEBUG: acd_SPAWN_config.sqf: acd_SPAWN_user_defined_3 = %1 ###", acd_SPAWN_user_defined_3];
	diag_log format ["### ACD: DEBUG: acd_SPAWN_config.sqf: acd_SPAWN_user_defined_4 = %1 ###", acd_SPAWN_user_defined_4];
	diag_log format ["### ACD: DEBUG: acd_SPAWN_config.sqf: acd_SPAWN_user_defined_5 = %1 ###", acd_SPAWN_user_defined_5];
};
diag_log format ["### ACD: acd_SPAWN_config.sqf: configuration successfully loaded ###"];
/*#####################################################################################################################################*/
if(isNil("acd_SPAWNS"))then{acd_SPAWNS = compile preprocessFile "custom\acd_sz\code\acd_SPAWNS.sqf";};
call acd_SPAWNS;
