/*
	ACD_SZ - Exile Safe Zones
	acd_SZ_IsNotParkingLot.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/
if (isNil "acd_SZ_positions") then {
acd_SZ_positions = [];
};
/*#####################################################################################################################################*/
diag_log format ["### ACD: acd_SZ_IsNotParkingLot.sqf: Generating array acd_SZ_positions ###", acd_SZ_positions];
if (acd_SZ_CENTRAL_Default) then {
	if (acd_SZ_CENTRAL_Default_IS_SAFE) then {
		if (acd_SZ_Unlock_vehicles_in_SZ_upon_restart) then {
			_position = acd_SZ_CENTRAL_Default_position;
			_sz_area = (acd_SZ_CENTRAL_Default_triggerArea select 0)+(acd_SZ_CENTRAL_Default_triggerArea select 1);
			acd_SZ_positions = acd_SZ_positions + [[_position,_sz_area]];
			if (acd_debug) then {
				diag_log format ["### ACD: acd_SZ_IsNotParkingLot.sqf: acd_SZ_positions = %1 ###", acd_SZ_positions];
			};
		};
	};
};
/*#####################################################################################################################################*/
if (acd_SZ_Default_Silderas) then {
	if (acd_SZ_Default_Silderas_IS_SAFE) then {
		if (acd_SZ_Unlock_vehicles_in_SZ_upon_restart) then {
			_position = acd_SZ_Default_Silderas_position;
			_sz_area = (acd_SZ_Default_Silderas_triggerArea select 0)+(acd_SZ_Default_Silderas_triggerArea select 1);
			acd_SZ_positions = acd_SZ_positions + [[_position,_sz_area]];
			if (acd_debug) then {
				diag_log format ["### ACD: acd_SZ_IsNotParkingLot.sqf: acd_SZ_positions = %1 ###", acd_SZ_positions];
			};
		};
	};
};
/*#####################################################################################################################################*/
if (acd_SZ_Default_Fotia) then {
	if (acd_SZ_Default_Fotia_IS_SAFE) then {
		if (acd_SZ_Unlock_vehicles_in_SZ_upon_restart) then {
			_position = acd_SZ_Default_Fotia_position;
			_sz_area = (acd_SZ_Default_Fotia_triggerArea select 0)+(acd_SZ_Default_Fotia_triggerArea select 1);
			acd_SZ_positions = acd_SZ_positions + [[_position,_sz_area]];
			if (acd_debug) then {
				diag_log format ["### ACD: acd_SZ_IsNotParkingLot.sqf: acd_SZ_positions = %1 ###", acd_SZ_positions];
			};
		};
	};
};
/*#####################################################################################################################################*/
if (acd_SZ_NORTH_Krya_Nera) then {
	if (acd_SZ_NORTH_Krya_Nera_IS_SAFE) then {
		if (acd_SZ_Unlock_vehicles_in_SZ_upon_restart) then {
			_position = acd_SZ_NORTH_Krya_Nera_position;
			_sz_area = (acd_SZ_NORTH_Krya_Nera_triggerArea select 0)+(acd_SZ_NORTH_Krya_Nera_triggerArea select 1);
			acd_SZ_positions = acd_SZ_positions + [[_position,_sz_area]];
			if (acd_debug) then {
				diag_log format ["### ACD: acd_SZ_IsNotParkingLot.sqf: acd_SZ_positions = %1 ###", acd_SZ_positions];
			};
		};
	};
};
/*#####################################################################################################################################*/
if (acd_SZ_NORTH_EAST_Molos) then {
	if (acd_SZ_NORTH_EAST_Molos_IS_SAFE) then {
		if (acd_SZ_Unlock_vehicles_in_SZ_upon_restart) then {
			_position = acd_SZ_NORTH_EAST_Molos_position;
			_sz_area = (acd_SZ_NORTH_EAST_Molos_triggerArea select 0)+(acd_SZ_NORTH_EAST_Molos_triggerArea select 1);
			acd_SZ_positions = acd_SZ_positions + [[_position,_sz_area]];
			if (acd_debug) then {
				diag_log format ["### ACD: acd_SZ_IsNotParkingLot.sqf: acd_SZ_positions = %1 ###", acd_SZ_positions];
			};
		};
	};
};
/*#####################################################################################################################################*/
if (acd_SZ_SOUTH_EAST_Selekano) then {
	if (acd_SZ_SOUTH_EAST_Selekano_IS_SAFE) then {
			if (acd_SZ_Unlock_vehicles_in_SZ_upon_restart) then {
			_position = acd_SZ_SOUTH_EAST_Selekano_position;
			_sz_area = (acd_SZ_SOUTH_EAST_Selekano_triggerArea select 0)+(acd_SZ_SOUTH_EAST_Selekano_triggerArea select 1);
			acd_SZ_positions = acd_SZ_positions + [[_position,_sz_area]];
			if (acd_debug) then {
				diag_log format ["### ACD: acd_SZ_IsNotParkingLot.sqf: acd_SZ_positions = %1 ###", acd_SZ_positions];
			};
		};
	};
};
/*#####################################################################################################################################*/
if (acd_SZ_SOUTH_WEST_Dump) then {
	if (acd_SZ_SOUTH_WEST_Dump_IS_SAFE) then {
		if (acd_SZ_Unlock_vehicles_in_SZ_upon_restart) then {
			_position = acd_SZ_SOUTH_WEST_Dump_position;
			_sz_area = (acd_SZ_SOUTH_WEST_Dump_triggerArea select 0)+(acd_SZ_SOUTH_WEST_Dump_triggerArea select 1);
			acd_SZ_positions = acd_SZ_positions + [[_position,_sz_area]];
			if (acd_debug) then {
				diag_log format ["### ACD: acd_SZ_IsNotParkingLot.sqf: acd_SZ_positions = %1 ###", acd_SZ_positions];
			};
		};
	};
};
/*#####################################################################################################################################*/
if (acd_SZ_SOUTH_Eginio) then {
	if (acd_SZ_SOUTH_Eginio_IS_SAFE) then {
		if (acd_SZ_Unlock_vehicles_in_SZ_upon_restart) then {
			_position = acd_SZ_SOUTH_Eginio_position;
			_sz_area = (acd_SZ_SOUTH_Eginio_triggerArea select 0)+(acd_SZ_SOUTH_Eginio_triggerArea select 1);
			acd_SZ_positions = acd_SZ_positions + [[_position,_sz_area]];
			if (acd_debug) then {
				diag_log format ["### ACD: acd_SZ_IsNotParkingLot.sqf: acd_SZ_positions = %1 ###", acd_SZ_positions];
			};
		};
	};
};
/*#####################################################################################################################################*/
if (acd_SZ_NORTH_Atsalis) then {
	if (acd_SZ_NORTH_Atsalis_IS_SAFE) then {
		if (acd_SZ_Unlock_vehicles_in_SZ_upon_restart) then {
			_position = acd_SZ_NORTH_Atsalis_position;
			_sz_area = (acd_SZ_NORTH_Atsalis_triggerArea select 0)+(acd_SZ_NORTH_Atsalis_triggerArea select 1);
			acd_SZ_positions = acd_SZ_positions + [[_position,_sz_area]];
			if (acd_debug) then {
				diag_log format ["### ACD: acd_SZ_IsNotParkingLot.sqf: acd_SZ_positions = %1 ###", acd_SZ_positions];
			};
		};
	};
};
/*#####################################################################################################################################*/
if (acd_SZ_EAST_Almyra) then {
	if (acd_SZ_EAST_Almyra_IS_SAFE) then {
		if (acd_SZ_Unlock_vehicles_in_SZ_upon_restart) then {
			_position = acd_SZ_EAST_Almyra_position;
			_sz_area = (acd_SZ_EAST_Almyra_triggerArea select 0)+(acd_SZ_EAST_Almyra_triggerArea select 1);
			acd_SZ_positions = acd_SZ_positions + [[_position,_sz_area]];
			if (acd_debug) then {
				diag_log format ["### ACD: acd_SZ_IsNotParkingLot.sqf: acd_SZ_IsNotParkingLot.sqf: acd_SZ_positions = %1 ###", acd_SZ_positions];
			};
		};
	};
};
/*#####################################################################################################################################*/
diag_log format ["### ACD: acd_SZ_IsNotParkingLot.sqf: acd_SZ_positions = %1 ###", acd_SZ_positions];