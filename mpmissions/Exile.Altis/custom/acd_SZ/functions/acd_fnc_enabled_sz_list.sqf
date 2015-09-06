/*
	ACD_SZ - Exile Safe Zones
	acd_fnc_enabled_sz_list.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/
/*#####################################################################################################################################*/
_debug_local = false;
if(acd_debug)then{
	_debug_local = true;
}else{
	_debug_local = false;
};
if (isNil "acd_SZ_enabled_list") then {
	if(_debug_local)then{
		diag_log format ["### ACD: Generating acd_fnc_enabled_sz_list ###"];
	};
	acd_SZ_enabled_list = [];
	if (acd_SZ_CENTRAL_Default) then {acd_SZ_enabled_list = acd_SZ_enabled_list + ["acd_SZ_CENTRAL_Default"];};
	if (acd_SZ_Default_Silderas) then {acd_SZ_enabled_list = acd_SZ_enabled_list + ["acd_SZ_Default_Silderas"];};
	if (acd_SZ_Default_Fotia) then {acd_SZ_enabled_list = acd_SZ_enabled_list + ["acd_SZ_Default_Fotia"];};
	if (acd_SZ_NORTH_Krya_Nera) then {acd_SZ_enabled_list = acd_SZ_enabled_list + ["acd_SZ_NORTH_Krya_Nera"];};
	if (acd_SZ_NORTH_EAST_Molos) then {acd_SZ_enabled_list = acd_SZ_enabled_list + ["acd_SZ_NORTH_EAST_Molos"];};
	if (acd_SZ_SOUTH_EAST_Selekano) then {acd_SZ_enabled_list = acd_SZ_enabled_list + ["acd_SZ_SOUTH_EAST_Selekano"];};
	if (acd_SZ_SOUTH_WEST_Dump) then {acd_SZ_enabled_list = acd_SZ_enabled_list + ["acd_SZ_SOUTH_WEST_Dump"];};
	if (acd_SZ_SOUTH_Eginio) then {acd_SZ_enabled_list = acd_SZ_enabled_list + ["acd_SZ_SOUTH_Eginio"];};
	if (acd_SZ_NORTH_Atsalis) then {acd_SZ_enabled_list = acd_SZ_enabled_list + ["acd_SZ_NORTH_Atsalis"];};
	if (acd_SZ_EAST_Almyra) then {acd_SZ_enabled_list = acd_SZ_enabled_list + ["acd_SZ_EAST_Almyra"];};
	if(_debug_local)then{
		diag_log format ["### ACD: Generated acd_fnc_enabled_sz_list: %1 ###", acd_SZ_enabled_list];
	};
};
/*#####################################################################################################################################*/