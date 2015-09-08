/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 /*
	modified by d4n1ch
	mailto:d.e@acd.su
 */
 
private["_sessionID","_parameters","_vehicleClass","_pinCode","_playerObject","_salesPrice","_playerMoney","_position","_position_alt","_vehicleObject","_position2d","_offset","_responseCode","_acd_sz_arr","_positionD"];
_sessionID = _this select 0;
_parameters = _this select 1;
_vehicleClass = _parameters select 0;
_pinCode = _parameters select 1;
_SZ_case = 0;
try 
{
	_playerObject = _sessionID call ExileServer_system_session_getPlayerObject;
	if(_playerObject getVariable ["ExileMutex",false])then
	{
		throw 12;
	};
	_playerObject setVariable ["ExileMutex",true];
	if (isNull _playerObject) then
	{
		throw 1;
	};
	if !(alive _playerObject) then
	{
		throw 2;
	};
	if !(isClass (missionConfigFile >> "CfgExileArsenal" >> _vehicleClass) ) then
	{
		throw 3;
	};
	_salesPrice = getNumber (missionConfigFile >> "CfgExileArsenal" >> _vehicleClass >> "price");
	if (_salesPrice <= 0) then
	{
		throw 4;
	};
	_playerMoney = _playerObject getVariable ["ExileMoney", 0];
	if (_playerMoney < _salesPrice) then
	{
		throw 5;
	};
	if!((count _pinCode) isEqualTo 4)then
	{
		throw 11;
	};
	if (_vehicleClass isKindOf "Ship") then 
	{
		_position = [(getPosATL _playerObject), 80, 10] call ExileClient_util_world_findWaterPosition;
		_vehicleObject = [_vehicleClass, _position, (random 360), true, _pinCode] call ExileServer_object_vehicle_createPersistentVehicle;
		_vehicleObject setPosASL _position;
	}
	else 
	{
		if (_vehicleClass isKindOf "Air") then 
		{
			_acd_sz_arr = [_playerObject,_sessionID,_vehicleClass] call acd_fnc_findSafePosAnyVehicle;
			_acd_isAirSZ = _acd_sz_arr select 0;
			if(_acd_isAirSZ)then{
				_SZ_case = 1;	
				_position2d = _acd_sz_arr select 1;
				_position_alt = _acd_sz_arr select 2;
				_positionD = [_position2d,_vehicleClass] call acd_fnc_createDummyVehicle;
				if (acd_debug) then {diag_log format ["### ACD: ExileServer_system_trading_network_purchaseVehicleRequest.sqf: RETURNED: (%1)  ###",_positionD];};
				if (acd_debug) then {diag_log format ["### ACD: ExileServer_system_trading_network_purchaseVehicleRequest.sqf: _position2d = (%1)  ###",_position2d];};
				
			}else{
				throw 13; // code below is default
				_position2d = 
				[
					(getPosATL _playerObject), 
					5,                  
					175,            	 	
					40,                 
					0,                  
					2,               
					0                   
				]
				call BIS_fnc_findSafePos;
			};
		}
		else 
		{
			// vehicle is not AIR or SHIP
			_position2d = 
			[
			    (getPosATL _playerObject), 
			    5,                  
			    80,            	 	
			    8,                 
			    0,                  
			    9999,               
			    0                   
			]
			call BIS_fnc_findSafePos;

			_acd_sz_arr = [_playerObject,_sessionID,_vehicleClass] call acd_fnc_findSafePosAnyVehicle;
			_SZ_case = 1;	
			_position_found = _acd_sz_arr select 0;
			if(_position_found)then{
			_position2d = _acd_sz_arr select 1;
			_position_alt = _acd_sz_arr select 2;
			_positionD = [_position2d,_vehicleClass] call acd_fnc_createDummyVehicle;
			}else{
				if (acd_debug) then {diag_log format ["### ACD: ExileServer_system_trading_network_purchaseVehicleRequest.sqf: throw 13 POSITION NOT FOUND ###",_positionD];};
				throw 13;
			};
			if (acd_debug) then {diag_log format ["### ACD: ExileServer_system_trading_network_purchaseVehicleRequest.sqf: RETURNED: (%1)  ###",_positionD];};
			if (acd_debug) then {diag_log format ["### ACD: ExileServer_system_trading_network_purchaseVehicleRequest.sqf: _position2d = (%1)  ###",_position2d];};
			//
		};
		if(count _position2d isEqualTo 3)then
		{
			if (acd_debug) then {diag_log format ["### ACD: ExileServer_system_trading_network_purchaseVehicleRequest.sqf: (count _position2d isEqualTo 3) throw 13 _position2d = %1  ###",_position2d];};
			throw 13;
		};
		
		_vehicleObject = [_vehicleClass, [0,0,1000], (random 360), true, _pinCode] call ExileServer_object_vehicle_createPersistentVehicle;
		if (acd_debug) then {diag_log format ["### ACD: ExileServer_system_trading_network_purchaseVehicleRequest.sqf: Vehicle created @(%1)  ###",(getPosATL _vehicleObject)];};
		
		switch (_SZ_case) do
		{
			case 0:
				{	
					_position2d set [2,0];
					_offset = _vehicleObject call ExileClient_util_model_getHeight;
					_position2d set [2,_offset / 3];
					_vehicleObject setPosATL _position2d;
				};
			case 1:
				{	
					if (acd_debug) then {diag_log format ["### ACD: ExileServer_system_trading_network_purchaseVehicleRequest.sqf: _position2d = %1 ###",_position2d];};
					_position_vehicleObject = (getPosATL _vehicleObject);
					if (acd_debug) then {diag_log format ["### ACD: ExileServer_system_trading_network_purchaseVehicleRequest.sqf: Vehicle is @(%1) ###",_position_vehicleObject];};
					_vehicleObject setDamage 0;					
					_vehicleObject setPosATL _positionD;
					if (acd_debug) then {diag_log format ["### ACD: ExileServer_system_trading_network_purchaseVehicleRequest.sqf: Vehicle TP to _positionD = %1  ###",_positionD];};
					_position2d = _positionD;
					if(count _position2d < 3)then
					{
						if (acd_debug) then {diag_log format ["### ACD: ExileServer_system_trading_network_purchaseVehicleRequest.sqf: (count _position2d < 3) throw 13 _position2d = %1  ###",_position2d];};
						throw 13;
					};
				};
		}; 
	};	
	_vehicleObject setVariable ["ExileOwnerUID", (getPlayerUID _playerObject)];
	_vehicleObject setVariable ["ExileIsLocked",0];
	_vehicleObject lock 0;
	_vehicleObject allowDamage false;
	//_vehicleObject enableSimulation true;
	_vehicleObject removeAllEventHandlers "HandleDamage";
	_vehicleObject call ExileServer_object_vehicle_database_insert;
	_vehicleObject call ExileServer_object_vehicle_database_update;
	_vehicleObject setDamage 0;
	ExileServerOwnershipSwapQueue pushBack [_vehicleObject, _playerObject];
	_playerMoney = _playerMoney - _salesPrice;
	_playerObject setVariable ["ExileMoney", _playerMoney];
	format["setAccountMoney:%1:%2", _playerMoney, (getPlayerUID _playerObject)] call ExileServer_system_database_query_fireAndForget;
	[_sessionID, "purchaseVehicleResponse", [0, netId _vehicleObject, str _playerMoney]] call ExileServer_system_network_send_to;
}
catch 
{
	_responseCode = _exception;
	[_sessionID, "purchaseVehicleResponse", [_responseCode, "", ""]] call ExileServer_system_network_send_to;
};
_playerObject setVariable ["ExileMutex",false];
true