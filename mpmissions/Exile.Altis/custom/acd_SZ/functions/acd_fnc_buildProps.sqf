/*
	ACD_SZ - Exile Spawn Points
	acd_fnc_buildProps.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/
private["_objs"];
_objs = _this select 0;
{
	private ["_obj"];
	if (acd_debug) then {diag_log format ["### _x = %1 ###",_x];};
	_obj = (_x select 0) createVehicleLocal [0,0,0];
	if (_x select 4) then {
		_obj setDir (_x select 2);
		_obj setPos (_x select 1);
	} else {
		_obj setPosATL (_x select 1);
		_obj setVectorDirAndUp (_x select 3);
	};
	_obj enableSimulation false;
	if (acd_debug) then {diag_log format ["### _obj = %1 ###",_obj];};
} foreach _objs;