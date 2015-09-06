/*
	ACD_SZ - Exile Spawn Points
	acd_SPAWNS.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/
if (!isServer) exitWith {diag_log format ["### ACD: acd_SPAWNS: NOT A SERVER ###"];};
private["_debug_local"];
/*#######################################################################################################################################
 SPAWNS
#######################################################################################################################################*/
if(acd_debug)then{
	_debug_local = true;
}else{
	_debug_local = false;
};
//_debug_local = true;
if (isNil "acd_sz_spawns_list") then {
	if(_debug_local)then{
		diag_log format ["### ACD: Generating acd_sz_spawns_list ###"];
	};
	acd_sz_spawns_list = [];
	if (acd_SPAWN_Kavala) then {acd_sz_spawns_list = acd_sz_spawns_list + ["acd_SPAWN_Kavala"];};
	if (acd_SPAWN_Zaros) then {acd_sz_spawns_list = acd_sz_spawns_list + ["acd_SPAWN_Zaros"];};
	if (acd_SPAWN_Selekano) then {acd_sz_spawns_list = acd_sz_spawns_list + ["acd_SPAWN_Selekano"];};
	if (acd_SPAWN_Prygos) then {acd_sz_spawns_list = acd_sz_spawns_list + ["acd_SPAWN_Prygos"];};
	if (acd_SPAWN_Sofia) then {acd_sz_spawns_list = acd_sz_spawns_list + ["acd_SPAWN_Sofia"];};
	if (acd_SPAWN_Syrta) then {acd_sz_spawns_list = acd_sz_spawns_list + ["acd_SPAWN_Syrta"];};
	if (acd_SPAWN_Panagia) then {acd_sz_spawns_list = acd_sz_spawns_list + ["acd_SPAWN_Panagia"];};
	if (acd_SPAWN_Fotia) then {acd_sz_spawns_list = acd_sz_spawns_list + ["acd_SPAWN_Fotia"];};
	if (acd_SPAWN_Kalithea) then {acd_sz_spawns_list = acd_sz_spawns_list + ["acd_SPAWN_Kalithea"];};
	if (acd_SPAWN_Vikos) then {acd_sz_spawns_list = acd_sz_spawns_list + ["acd_SPAWN_Vikos"];};
	if (acd_SPAWN_Robinson_Crusoe) then {acd_sz_spawns_list = acd_sz_spawns_list + ["acd_SPAWN_Robinson_Crusoe"];};
	if (acd_SPAWN_Almyra) then {acd_sz_spawns_list = acd_sz_spawns_list + ["acd_SPAWN_Almyra"];};
	//
	if (acd_SPAWN_user_defined_1) then {acd_sz_spawns_list = acd_sz_spawns_list + ["acd_SPAWN_user_defined_1"];};
	if (acd_SPAWN_user_defined_2) then {acd_sz_spawns_list = acd_sz_spawns_list + ["acd_SPAWN_user_defined_2"];};
	if (acd_SPAWN_user_defined_3) then {acd_sz_spawns_list = acd_sz_spawns_list + ["acd_SPAWN_user_defined_3"];};
	if (acd_SPAWN_user_defined_4) then {acd_sz_spawns_list = acd_sz_spawns_list + ["acd_SPAWN_user_defined_4"];};
	if (acd_SPAWN_user_defined_5) then {acd_sz_spawns_list = acd_sz_spawns_list + ["acd_SPAWN_user_defined_5"];};

		{
			_spawn_name = _x;
			_spawn_pos = call compile format["%1_pos",_spawn_name];
			_spawn_text = call compile format["%1_text",_spawn_name];
			_spawn_marker_name = format["%1_marker",_spawn_name];
			if(_debug_local)then{diag_log format ["### ACD: _spawn_name = %1 ###", _spawn_name];};
			_marker = createMarker [_spawn_marker_name,_spawn_pos];
			_spawn_marker_name setMarkerShape "ICON";
			_spawn_marker_name setMarkerType "ExileSpawnZone";
			_spawn_marker_name setMarkerText _spawn_text;
			_spawn_marker_name setMarkerAlpha 1;
			
		} forEach acd_sz_spawns_list;

	if(_debug_local)then{
		diag_log format ["### ACD: Generated acd_sz_spawns_list: %1 ###", acd_sz_spawns_list];
	};
};

/*#####################################################################################################################################*/