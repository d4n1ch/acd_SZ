/*
	ACD_SZ - Exile Safe Zones
	acd_sz_config.sqf
	by d4n1ch
	mailto: d.e@acd.su

	acd_fnc_findSafeVehiclePos.sqf
	
	[_playerObject,_sessionID] call acd_fnc_findSafeVehiclePos;

	_return = boolean,position,altitude
	
	_playerData =  [
					_sz_isAir, // boolean if safe zone has array with positions
					_playerPosition, // position of player
					_sz_name, // name of safe zone
					_sz_avsp_arr // array with positions
				];

	 _playerData = [true,[26859.3,24565.7,0.00141907],"acd_SZ_NORTH_EAST_Molos",[[26851.6,24560.3,0.00139999],[26901.2,24618.7,0.00161171],[26973.1,24699.2,0.00145149],[27053.6,24785.6,0.00141907]]] 
*/
/*#####################################################################################################################################*/
diag_log format ["######################## ACD: acd_fnc_findSafeVehiclePos: BEGIN ########################"];
private [
			"_playerObject",
			"_sessionID",
			"_return",
			"_terminated",
			"_position_found",
			"_playerData",
			"_sz_isAir",
			"_playerPosition",
			"_sz_name",
			"_sz_avsp_arr",
			"_counter",
			"_counter_sub",
			"_passes",
			"_passesL2",
			"_passesL2_total",
			"_position",
			"_countObjects",
			"_debug_local",
			"_vehicles_in_sz",
			"_vehicle_limit_per_sz",
			"_positions_arr",
			"_selected_initial_pos",
			"_selected_initial_pos_alt"
		];
_return = [];
_position_found = false;
_terminated = false;
_passesL1 = 0;
_passesL2 = 0;
_passesL2_total = 0;
_counter_general = 0;
_counter_sub = 0;
_vehicles_in_sz = 0;
_vehicle_limit_per_sz = 40;
_playerObject = _this select 0;
_sessionID = _this select 1;
_playerData = [_playerObject] call acd_fnc_requestPlayerPositionInSZ;
_sz_isAir = _playerData select 0;
_playerPosition = _playerData select 1;
_sz_name = _playerData select 2;
_sz_avsp_arr = _playerData select 3;
if(acd_debug)then{
	_debug_local = true;
}else{
	_debug_local = false;
};
if(count _sz_avsp_arr <= 0)exitWith{_terminated=true;diag_log format ["### ACD: acd_fnc_findSafeVehiclePos: array is empty _sz_avsp_arr = %1 ###",_sz_avsp_arr];};
while{!_position_found}do{
	_counter_general = _counter_general + 1;
	if(_counter_general >= 3)exitWith{
		if(_debug_local)then{
			diag_log format ["### ACD: acd_fnc_findSafeVehiclePos: L1: TERMINATED after %1 passes ###",_counter_general];
		};
		_terminated=true;
	};
	if(_sz_isAir)then{
		if(count _sz_avsp_arr > 0)then{
			_positions_arr = _sz_avsp_arr;
			_selected_initial_pos = _positions_arr call BIS_fnc_selectRandom;
			_selected_initial_pos_alt = _selected_initial_pos select 2;
			_position = 
			[
				_selected_initial_pos, /* Center position */
				1, /* Minimum distance */                 
				70, /* Maximum distance */
				20, /* Distance from the nearest object */
				0, /* water mode (Number) NOT, BOTH, WATER */                 
				9999, /* maximum terrain gradient (average altitude difference in meters - Number) */
				0, /* shore mode (Number): disabled, enabled */
				[] /*(optional) blacklist (Array of Arrays): (_this select 7) select X: Top-left and bottom-right coordinates of blacklisted area (Array) */
			] call BIS_fnc_findSafePos;
			_passesL1 = _passesL1 + 1;
			_countObjects = (count nearestObjects [_position,["Air", "Car"], 30] > 0);
			if(_countObjects)then{
				_position_found = false;
				{
					_count = count nearestObjects [_x,["Air", "Car"], 100];
					_vehicles_in_sz = _vehicles_in_sz + _count;
				}forEach _sz_avsp_arr;
				if(_vehicles_in_sz > _vehicle_limit_per_sz)exitWith{_terminated=true;_position_found = true;diag_log format ["###### ACD: TERMINATING: found %1 of %2 vehicles in SZ ######",_vehicles_in_sz,_vehicle_limit_per_sz];};
				while{!_position_found}do{
					_passesL2 = _passesL2 + 1;
					_counter_sub = _counter_sub + 1;
					_countObjects = (count nearestObjects [_position,["Air", "Car"], 30] > 0);
					if(_debug_local)then{
						diag_log format ["###### ACD: found %1 vehicles in radius ######",count nearestObjects [_position,["Air", "Car"], 30]];
					};
					if(count _positions_arr <= 1)then{
							if(_debug_local)then{
								diag_log format ["###### ACD: L2: _positions_arr = %1 renew with _sz_avsp_arr = %2 ######",_positions_arr,_sz_avsp_arr];
							};
						_positions_arr = _sz_avsp_arr;
						};
					if(_counter_sub >= 7)then{
						_counter_sub = 0;
						_selected_initial_pos = _positions_arr call BIS_fnc_selectRandom;
						_selected_initial_pos_alt = _selected_initial_pos select 2;
						_positions_arr = _positions_arr - [_selected_initial_pos];
						if(_debug_local)then{
						diag_log format ["###### ACD: switch _selected_initial_pos = %1 ######",_selected_initial_pos];
						};
					};
					_position = 
					[
						_selected_initial_pos, /* Center position */
						35, /* Minimum distance */                 
						100, /* Maximum distance */
						30, /* Distance from the nearest object */
						0, /* water mode (Number) NOT, BOTH, WATER */                 
						9999, /* maximum terrain gradient (average altitude difference in meters - Number) */
						0, /* shore mode (Number): disabled, enabled */
						[] /*(optional) blacklist (Array of Arrays): (_this select 7) select X: Top-left and bottom-right coordinates of blacklisted area (Array) */
					] call BIS_fnc_findSafePos;
					_selected_initial_pos_alt = _selected_initial_pos select 2;
					if((count nearestObjects [_position,["Air", "Car"], 30]) > 0)then{
						if(_debug_local)then{
							diag_log format ["###### ACD: L2: found %1 vehicles in radius and counting ######",count nearestObjects [_position,["Air", "Car"], 30]];
						};
					}else{
						if(_debug_local)then{
							diag_log format ["###### ACD: L2: NO VEHICLES IN AREA %1 ######",count nearestObjects [_position,["Air", "Car"], 30]];
						};
						_position_found = true;
					};
					if(_passesL2 >= 50)then{
						if(_debug_local)then{
							diag_log format ["###### ACD: L2: %1 passes and %2 tries ######",_counter_general,_passesL2];
						};
						_counter_general = _counter_general + 1;
						_passesL2_total = _passesL2_total + _passesL2;
						_passesL2 = 0;
					};
					if(_counter_general>3)then{_terminated = true;_position_found = true;};
					if(_debug_local)then{
						diag_log format ["###### ACD: L2: ended with %1 vehicles found in radius ######",count nearestObjects [_position,["Air", "Car"], 30]];
					};
				};			
			};
			_position_found = true;
		};	
	}else{
		if(_debug_local)then{
			diag_log format ["#### ACD: NO POSITIONS DEFINED ####"];
		};
		_terminated = true;
		_position_found = true;
	};
};
if(_terminated)then{
	_position_found = false;
	_text = format ["%1 vehicles in SZ",_vehicles_in_sz];
	_exception = format ["ACD:(%1:%2): %3",_counter_general,_passesL2_total,_text];
	[_sessionID,"notificationRequest",["Whoops",[_exception]]] call ExileServer_system_network_send_to;
	_return = [false];
}else{
	_exception = format ["ACD:(%1:%2): Position has been found!",_counter_general,_passesL2_total];
	[_sessionID,"notificationRequest",["Success",[_exception]]] call ExileServer_system_network_send_to;
	_return = [true,_position,_selected_initial_pos_alt];
	};
	//##### DEBUG #####
	if(_debug_local)then{
	diag_log format ["######################################################################################"];
	diag_log format ["###################################### RESULT ########################################"];
	diag_log format ["######################################################################################"];
	diag_log format ["### ACD: acd_fnc_findSafeVehiclePos: _position_found = %1 ###",_position_found];
	diag_log format ["### ACD: acd_fnc_findSafeVehiclePos: _terminated = %1 ###",_terminated];
	diag_log format ["### ACD: acd_fnc_findSafeVehiclePos: _counter_general = %1 ###",_counter_general];
	diag_log format ["### ACD: acd_fnc_findSafeVehiclePos: _passesL2_total = %1 ###",_passesL2_total];
	//diag_log format ["### ACD: acd_fnc_findSafeVehiclePos: _passesL1 = %1 ###",_passesL1];
	//diag_log format ["### ACD: acd_fnc_findSafeVehiclePos: _passesL2 = %1 ###",_passesL2];
	diag_log format ["######################################################################################"];
	diag_log format ["### ACD: acd_fnc_findSafeVehiclePos: _sz_name = %1 ###",_sz_name];
	diag_log format ["### ACD: acd_fnc_findSafeVehiclePos: _sz_isAir = %1 ###",_sz_isAir];
	diag_log format ["### ACD: acd_fnc_findSafeVehiclePos: _sz_avsp_arr = %1 ###",_sz_avsp_arr];
	diag_log format ["### ACD: acd_fnc_findSafeVehiclePos: _vehicles_in_sz = %1 / _vehicle_limit_per_sz = %2 ###",_vehicles_in_sz,_vehicle_limit_per_sz];
	diag_log format ["######################################################################################"];
	diag_log format ["### ACD: acd_fnc_findSafeVehiclePos: _playerObject = %1 / _sessionID = %2 ###",_playerObject, _sessionID];
	diag_log format ["### ACD: acd_fnc_findSafeVehiclePos: _playerPosition = %1 ###",_playerPosition];
	diag_log format ["### ACD: acd_fnc_findSafeVehiclePos: _position = %1 ###",_position];
	diag_log format ["### ACD: acd_fnc_findSafeVehiclePos: _selected_initial_pos_alt = %1 ###",_selected_initial_pos_alt];
	diag_log format ["### ACD: acd_fnc_findSafeVehiclePos: _return = %1 ###",_return];
	diag_log format ["######################################################################################"];
	diag_log format ["######################## ACD: acd_fnc_findSafeVehiclePos: END ########################"];
	diag_log format ["######################################################################################"];
};
_return
/*#####################################################################################################################################*/