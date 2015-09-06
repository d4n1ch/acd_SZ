/*
	ACD_SZ - Exile Safe Zones
	acd_sz_data.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/
/*#####################################################################################################################################*/
private ["_sz_name","_list","_sz","_pos","_sensor_arr","_sz_area","_air_vehicle_pos_arr","_debug_local"];
_debug_local = false;
if(acd_debug)then{
	_debug_local = true;
}else{
	_debug_local = false;
};
if (!isNil "acd_SZ_enabled_list") then {
	acd_SZ_positions = [];
	acd_SZ_data = [];
	diag_log format ["### ACD: Generating DATA ###"];
	_list = acd_SZ_enabled_list;
	{	
		_sz_name = _x;
		//diag_log format ["### ACD: Generated DATA: _sz_name = %1 ###", _sz_name];
		_isSafe = call compile format["%1_IS_SAFE",_x];
		//diag_log format ["### ACD: Generated DATA: _isSafe = %1 ###", _isSafe];
		_pos = call compile format["%1_position",_x];
		//diag_log format ["### ACD: Generated DATA: _pos = %1 ###", _pos];
		_sensor_arr = call compile format["%1_triggerArea",_x];
		//diag_log format ["### ACD: Generated DATA: _sensor_arr = %1 ###", _sensor_arr];
		_sz_area = call compile format["(%1 select 0)+(%1 select 1)",_sensor_arr];
		//diag_log format ["### ACD: Generated DATA: _sz_area = %1 ###", _sz_area];
		_air_vehicle_pos_var = format["%1_air_vehicle_pos_arr",_x];
		if(_debug_local)then{
			diag_log format ["### ACD: Generating DATA: sz_name = %1, _isSafe = %2, _pos = %3, _sensor_arr = %4, _sz_area = %5, _air_vehicle_pos_var = %6 ###",_sz_name,_isSafe,_pos,_sensor_arr,_sz_area,_air_vehicle_pos_var];
		};
		if(_isSafe)then{acd_SZ_positions = acd_SZ_positions + [[_pos,_sz_area]];};
		if (!isNil _air_vehicle_pos_var) then {
			_air_vehicle_pos_arr = call compile _air_vehicle_pos_var;
			acd_SZ_data = acd_SZ_data + [[_pos,_sz_area,_sz_name,_isSafe,true,_air_vehicle_pos_arr]];
		}else{
			acd_SZ_data = acd_SZ_data + [[_pos,_sz_area,_sz_name,_isSafe,false]];
		};
	}forEach _list;
	diag_log format ["### ACD: Generated DATA: %1 ###", acd_SZ_data];
}else{diag_log format ["### ACD: acd_sz_data.sqf: acd_SZ_enabled_list isNil ###"];};
/*#####################################################################################################################################*/