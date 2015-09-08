/*
	ACD_SZ - Exile Safe Zones
	acd_fnc_createSensors.sqf
	by d4n1ch
	mailto: d.e@acd.su

*/
/*#####################################################################################################################################*/
private["_debug_local","_sz_names_arr","_sz_name"];
if(acd_debug)then{
	_debug_local = true;
}else{
	_debug_local = false;
};
_debug_local = true;
//if (!isServer) exitWith {diag_log format ["### ACD: acd_fnc_createSensors: NOT A SERVER ###"];};
if (!isNil "acd_SZ_enabled_list") then {
diag_log format ["### ACD: Creating Sensors ###"];
_sz_names_arr = acd_SZ_enabled_list;
{
	_sz_name = _x;
	_sz_marker_var = format["%1_Marker",_sz_name];
	_isSafe = call compile format["%1_IS_SAFE",_sz_name];
	_pos = call compile format["%1_position",_sz_name];
	if(_debug_local)then{diag_log format ["### ACD: acd_fnc_createSensors: _sz_name = %1, _isSafe = %2, _pos = %3 ###", _sz_name,_isSafe,_pos];};
	if(_isSafe)then{

		/*
			SZ Sensor
		*/
		_sz_sensor_var = format["_%1_Sensor",_sz_name];
		_sensor_arr = call compile format["%1_triggerArea",_sz_name];
		
		_sz_sensor_var = createTrigger ["EmptyDetector",_pos];
		_sz_sensor_var setTriggerArea _sensor_arr;
		_sz_sensor_var setTriggerStatements ["(vehicle player) in thisList","call ExileClient_object_player_event_onEnterSafezone","call ExileClient_object_player_event_onLeaveSafezone"];
		_sz_sensor_var setTriggerActivation ["ANY","PRESENT",true];

		
	};
	
	
}forEach _sz_names_arr;

diag_log format ["### ACD: Sensors created ###"];
}else{
	diag_log format ["### ACD: acd_fnc_createSensors: acd_SZ_enabled_list isNil ###"];
};
/*#####################################################################################################################################*/
