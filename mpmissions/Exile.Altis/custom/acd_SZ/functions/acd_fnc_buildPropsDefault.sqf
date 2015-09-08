/*
	ACD_SZ - Exile Spawn Points
	acd_fnc_buildPropsDefault.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/
private["_objects"];
_objects = _this select 0;
{
    private ["_object"];
	//if (acd_debug) then {diag_log format ["### _x = %1 ###",_x];};
    _object = (_x select 0) createVehicleLocal [0,0,0];
    _object setDir (_x select 2);
    _object setPosATL (_x select 1);
    _object enableSimulation false;
	//if (acd_debug) then {diag_log format ["### _object = %1 ###",_object];};
}
forEach _objects;