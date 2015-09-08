/*
	ACD_SZ - Exile Safe Zones
	acd_fnc_createDummyVehicle.sqf
	by d4n1ch
	mailto: d.e@acd.su

*/
acd_debug = true;
private["_position","_vehicleClass","_veh","_dummy_position"];
_position = _this select 0;
_vehicleClass = _this select 1;
_veh = _vehicleClass createVehicle _position;
if (acd_debug) then {diag_log format ["### ACD: acd_fnc_createDummyVehicle: Created dummy vehicle @(%1) ###",(getPosATL _veh)];};
diag_log format ["### ACD: acd_fnc_createDummyVehicle: 3 seconds passed vehicle %1 ###",_vehicleClass,_position];
for "_i" from 0 to 100 step 1 do {};
_dummy_position = (getPosATL _veh);
if (acd_debug) then {diag_log format ["### ACD: acd_fnc_createDummyVehicle: Delete dummy vehicle %1 ###",_veh];};
deleteVehicle _veh;
if (acd_debug) then {diag_log format ["### ACD: acd_fnc_createDummyVehicle: RETURN: %1 ###",_dummy_position];};
_dummy_position