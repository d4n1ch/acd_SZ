/*
	ACD_SZ - Exile Safe Zones
	acd_fnc_precompileTraders.sqf
	by d4n1ch
	mailto: d.e@acd.su
	
*/
if (isNil "acd_sz_config_loaded") exitWith {diag_log format ["### ACD: acd_fnc_precompileTraders: ALARMA: acd_sz_config_loaded isNil ###"];};
private["_sz_list","_debug_local"];
if(acd_debug)then{_debug_local = true;}else{_debug_local = false;};
//_debug_local = false;
_sz_list = acd_SZ_enabled_list;
{
	_sz_name = _x;
	_sz_file = compile preprocessFile format["custom\acd_sz\code\%1_traders.sqf",_sz_name];
	if(_debug_local)then{diag_log format ["### ACD: call compile preprocessFile %1_traders.sqf ###",_sz_name];};
	call _sz_file;
}forEach _sz_list;