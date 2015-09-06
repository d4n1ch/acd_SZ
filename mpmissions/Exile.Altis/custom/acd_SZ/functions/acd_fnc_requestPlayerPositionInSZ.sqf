/*
	acd_fnc_requestPlayerPositionInSZ.sqf
	
	_data = [_playerObject] call acd_fnc_requestPlayerPositionInSZ;

	acd_SZ_data = 	[
						[sz_pos,_sz_range,_sz_name,_sz_isSafe,_sz_isAir,_sz_pos_arr]
					];

	_return =  [
					_sz_isAir, // boolean if safe zone has array with positions
					_playerPosition, // position of player
					_sz_name, // name of safe zone
					_sz_avsp_arr // array with positions
				];
*/
private["_playerObject","_playerPosition","_data","_sz_found","_text","_counter","_passes","_sz_pos","_sz_name","_sz_isAir","_sz_avsp_arr","_return","_debug_local","_acd_debug_local"];
if(acd_debug)then{
	_debug_local = true;
	_acd_debug_local = true;
}else{
	_debug_local = false;
	_acd_debug_local = false;
};

/*#####################################################################################################################################*/
if (_acd_debug_local) then {
	diag_log format ["######################## ACD: acd_fnc_requestPlayerPositionInSZ: BEGIN ########################"];
};
/*#####################################################################################################################################*/

_playerObject = _this select 0;
_playerPosition = (getPosATL _playerObject);
_data = acd_SZ_data;
_sz_found = false;
_text = "";
_counter = 0;
_passes = 0;
if (_acd_debug_local) then {
	diag_log format ["### ACD: acd_fnc_requestPlayerPositionInSZ: init by player: %1 ###",_playerObject];
};
while{!_sz_found}do{
	{
		if(!_sz_found)then{
			_counter = _counter + 1;
			_sz_pos = _x select 0;
			_sz_name = _x select 2;
			_sz_isAir = _x select 4;
			_player_sz_distance = (_playerPosition distance _sz_pos);
				if (_player_sz_distance < 600) then {
					_sz_found = true;
					if (_acd_debug_local) then {diag_log format ["#### ACD: player is IN SZ = %1 ####",_sz_name];};
					if(_sz_isAir) then {
						if (_acd_debug_local) then {diag_log format ["##### ACD: positions defined for %1 #####",_sz_name];};
						_sz_avsp_arr = _x select 5;
						_return = [_sz_isAir,_playerPosition,_sz_name,_sz_avsp_arr];
					}else{
						if (_acd_debug_local) then {diag_log format ["#### ACD: NO positions for %1 ####",_sz_name];};
						_return = [_sz_isAir,_playerPosition,_sz_name,[]];
					};
				}else{
					if (_acd_debug_local) then {
						diag_log format ["#### ACD: acd_fnc_requestPlayerPositionInSZ: player is NOT in %2(%1) ####",_player_sz_distance,_sz_name];
					};
					_return =  [false,_playerPosition,"",[]];
				};
		};
	} forEach _data;
	if(_counter > (count _data))then{
		_sz_found = true;
		if (_acd_debug_local) then {diag_log format ["#### ACD: acd_fnc_requestPlayerPositionInSZ: TERMINATED: player is NOT in any SZ ####"];};
	};
	_passes = _passes + 1;
};
if (_acd_debug_local) then {
	if(_passes > 1)then{_text="passes"}else{_text="pass"};
	if(_counter > (count _data))then{
		diag_log format ["### ACD: acd_fnc_requestPlayerPositionInSZ: checked (%1) from (%3) in (%2) %4 ###",_counter,_passes,(count _data),_text];
	}else{
		diag_log format ["### ACD: acd_fnc_requestPlayerPositionInSZ: checked (%1) from (%3) in (%2) %4 ###",_counter,_passes,(count _data),_text];
	};
	diag_log format ["### ACD: acd_fnc_requestPlayerPositionInSZ: _return = %1 ###",_return];
	diag_log format ["######################## ACD: acd_fnc_requestPlayerPositionInSZ: END ########################"];
};
_return
/*#####################################################################################################################################*/