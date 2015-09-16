/*
	ACD_SZ - Exile Safe Zones
	acd_fnc_imp.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/
private["_dir","_trim","_isPacked"];
_dir = call {private "_arr";_arr = toArray __FILE__;_arr resize (count _arr - 8);toString _arr};
_trim = _dir select [11,1];
if(_trim == "E")then{_isPacked=false;}else{if(_trim == "_")then{_isPacked = true;}else{_isPacked = false;};};
_isPacked