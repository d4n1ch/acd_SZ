/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 *
 */
 /*
	modified by d4n1ch
	for ACD_SZ - Exile Safe Zones
	mailto: d.e@acd.su
*/
private["_vehicleID","_data","_position","_vectorDirection","_vectorUp","_pinCode","_vehicleObject","_lock","_cargoContainers"];
_vehicleID = _this;
_data = format ["loadVehicle:%1", _vehicleID] call ExileServer_system_database_query_selectSingle;
_position = [_data select 8, _data select 9, _data select 10];
_vectorDirection = [_data select 11, _data select 12, _data select 13];
_vectorUp = [_data select 14, _data select 15, _data select 16];
_pinCode = _data select 20;
_vehicleObject = [(_data select 1), _position, 0, true,_pinCode] call ExileServer_object_vehicle_createPersistentVehicle;
_vehicleObject setVectorDirAndUp [_vectorDirection, _vectorUp];
_vehicleObject setVariable ["ExileDatabaseID", _vehicleID];
_vehicleObject setVariable ["ExileOwnerUID", (_data select 3)];
_lock = (_data select 4);
if(_lock isEqualTo -1)then
{
	_vehicleObject setVariable ["ExileIsLocked",-1];
	_vehicleObject lock 2;
	if (acd_SZ_Disable_Lifting_if_vehicle_locked) then {	
	_vehicleObject enableRopeAttach false;
	};
	if (!isNil "acd_SZ_Unlock_vehicles_in_SZ_upon_restart") then {
		if (acd_SZ_Unlock_vehicles_in_SZ_upon_restart) then {
			if (acd_debug) then {
				diag_log format ["### ACD: DEBUG: ExileServer_object_vehicle_database_load.sqf: _vehicleObject = %1 IS LOCKED ###", _vehicleObject];
				diag_log format ["### ACD: DEBUG: ExileServer_object_vehicle_database_load.sqf: _position = %1 ###", _position];
			};
			if (!isNil "acd_SZ_positions") then {
				{	
					if ((_position distance (_x select 0)) < (_x select 1)) then {
						vehicleObj = str _vehicleObject select [19];
						vehicleObj = vehicleObj select [0,count vehicleObj - 4];
						diag_log format ["### ACD: ExileServer_object_vehicle_database_load.sqf: UNLOCKING %1 THAT IS %2 from SZ (SIZE = %3) ###", vehicleObj, (_position distance (_x select 0)),(_x select 1)];
						_vehicleObject setVariable ["ExileIsLocked",0];
						_vehicleObject lock 0;
						
					};
				} forEach acd_SZ_positions;
			}else{diag_log format ["### ACD: WARNING: acd_SZ_positions isNil ###"];};
		};
	}else{
		diag_log format ["### ACD: ExileServer_object_vehicle_database_load.sqf: acd_SZ_Unlock_vehicles_in_SZ_upon_restart variable not found ###"];
	};
}
else
{
	_vehicleObject setVariable ["ExileIsLocked",0];
	_vehicleObject lock 0;
	if (acd_SZ_Disable_Lifting_if_vehicle_locked) then {
	_vehicleObject enableRopeAttach true;
	};
};
if (acd_SZ_Refuel_vehicles_upon_restart) then {
	_vehicleObject setFuel 1;
}else{
	_vehicleObject setFuel (_data select 5);
};
if (acd_SZ_Repair_vehicles_upon_restart) then {
	_vehicleObject setDamage 0;
}else{
	_vehicleObject setDamage (_data select 6);
};
{	if (acd_SZ_Repair_vehicles_upon_restart) then {
	_vehicleObject setHitPointDamage [_x select 0, 0];
	}else{
	_vehicleObject setHitPointDamage [_x select 0, _x select 1];
	};
}
forEach (_data select 7);
[_vehicleObject, (_data select 17)] call ExileServer_util_fill_fillItems;
[_vehicleObject, (_data select 18)] call ExileServer_util_fill_fillMagazines;
[_vehicleObject, (_data select 19)] call ExileServer_util_fill_fillWeapons;
_cargoContainers = format ["loadVehicleContainer:%1", _vehicleID] call ExileServer_system_database_query_selectSingle;
if !(_cargoContainers isEqualTo []) then
{
	[_vehicleObject, (_cargoContainers select 0)] call ExileServer_util_fill_fillContainers;
};
_vehicleObject enableSimulationGlobal false;
_vehicleObject call ExileServer_system_simulationMonitor_addVehicle;
_vehicleObject