/*
	ACD_SZ - Exile Safe Zones
	acd_SZ_SOUTH_EAST_Selekano_props.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/

if (!acd_SZ_SOUTH_EAST_Selekano) exitWith {
	diag_log format ["### ACD: SAFE ZONE IS OFF: NO PROPS WILL BE BUILT: acd_SZ_SOUTH_EAST_Selekano = %1 ###", acd_SZ_SOUTH_EAST_Selekano];
};
diag_log format ["### ACD: SAFE ZONE: LOADING: acd_SZ_SOUTH_EAST_Selekano_props ###"];

private ["_objs"];
_objs = [
	["Land_Offices_01_V1_F",[20910,7287.44,0.497826],43.1818,[[0.684316,0.729186,0],[0,0,1]],false],
	["Land_Airport_Tower_F",[20970.3,7365.49,0],233.636,[[-0.80527,-0.592908,0],[-0,0,1]],false],
	["Land_Dome_Small_F",[20920.1,7317.5,-0.372105],310.909,[[-0.755751,0.65486,0],[0,0,1]],false],
	["Exile_Sign_TraderCity",[20709.6,7217.48,0.0827408],50.9094,[[0.776149,0.630549,0],[0,0,1]],false],
	["Exile_Sign_TraderCity",[20746,7135.38,0.0827408],338.637,[[-0.364282,0.931289,0],[0,0,1]],false],
	["Exile_Sign_TraderCity",[20839.4,7305.4,0.0655899],236.818,[[-0.836941,-0.547293,0],[-0,0,1]],false]
];

if (acd_SZ_SOUTH_EAST_Selekano_Hardware_Trader) then {
	_objs = _objs + [["Exile_Sign_Hardware",[20923.2,7286.14,2.28703],43.1818,[[0.684316,0.729186,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Hardware_Small",[20907.8,7278.21,0],42.2727,[[0.672661,0.739951,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Hardware_Small",[20917.1,7281.14,0.954828],43.1819,[[0.684316,0.729185,0],[0,0,1]],false]];
};
if (acd_SZ_SOUTH_EAST_Selekano_Fast_Food_Trader) then {
	_objs = _objs + [["Exile_Sign_Food",[20768.5,7258.14,0.302431],327.273,[[-0.540641,0.841253,0],[0,0,1]],false]];
};
if (acd_SZ_SOUTH_EAST_Selekano_Armory_Trader) then {
	_objs = _objs + [["Exile_Sign_Armory",[20919.2,7331.29,0.201059],355.455,[[-0.0792485,0.996855,0],[0,0,1]],false]];	
	_objs = _objs + [["Exile_Sign_Armory_Small",[20910.3,7327.91,-0.126259],130.909,[[0.75575,-0.654861,0],[0,-0,1]],false]];
	_objs = _objs + [["Exile_Sign_Armory_Small",[20929.9,7307.07,0.094017],311.818,[[-0.745264,0.666769,0],[0,0,1]],false]];
};
if (acd_SZ_SOUTH_EAST_Selekano_Equipment_Trader) then {
	_objs = _objs + [["Exile_Sign_Equipment",[20927.5,7329.22,0.322447],32.2726,[[0.533949,0.845517,0],[0,0,1]],false]];	
	_objs = _objs + [["Exile_Sign_Equipment_Small",[20908.3,7325.66,-0.130859],130.455,[[0.76092,-0.648845,0],[0,-0,1]],false]];
	_objs = _objs + [["Exile_Sign_Equipment_Small",[20931.8,7309.29,0.167681],310.455,[[-0.76092,0.648846,0],[0,0,1]],false]];
};
if (acd_SZ_SOUTH_EAST_Selekano_Specops_Trader) then {
	_objs = _objs + [["Exile_Sign_SpecialOperations",[20920.8,7303.73,0.281765],175.909,[[0.0713385,-0.997452,0],[0,-0,1]],false]];	
	_objs = _objs + [["Exile_Sign_SpecialOperations_Small",[20910.3,7327.92,-0.884258],130.909,[[0.75575,-0.65486,0],[0,-0,1]],false]];
	_objs = _objs + [["Exile_Sign_SpecialOperations_Small",[20929.9,7307.07,-0.653765],311.818,[[-0.745264,0.666769,0],[0,0,1]],false]];
};
if (acd_SZ_SOUTH_EAST_Selekano_Office_Trader) then {
	_objs = _objs + [["Exile_Sign_Office",[20917.6,7280.46,13.4365],43.1818,[[0.684315,0.729186,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Office_Small",[20908.7,7277.35,0],42.2727,[[0.67266,0.739952,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Office_Small",[20910.2,7290.52,1.02543],313.182,[[-0.729186,0.684316,0],[0,0,1]],false]];
};
if (acd_SZ_SOUTH_EAST_Selekano_Waste_Dump_Trader) then {
	_objs = _objs + [["Exile_Sign_WasteDump",[20766.5,7184.85,0.25507],216.818,[[-0.599278,-0.800541,0],[-0,0,1]],false]];
};
if (acd_SZ_SOUTH_EAST_Selekano_Aircraft_Trader) then {
	_objs = _objs + [["Exile_Sign_Aircraft",[20965.4,7364,0.264862],143.182,[[0.599278,-0.800541,0],[0,-0,1]],false]];
};
if (acd_SZ_SOUTH_EAST_Selekano_Aircraft_Customs_Trader) then {
	_objs = _objs + [["Exile_Sign_AircraftCustoms",[20772.9,7211.36,0.30772],235.909,[[-0.828149,-0.560508,0],[-0,0,1]],false]];
};
if (acd_SZ_SOUTH_EAST_Selekano_Vehicle_Trader) then {
	_objs = _objs + [["Exile_Sign_Vehicles",[20826.5,7213.8,0.302143],143.636,[[0.592908,-0.805271,0],[0,-0,1]],false]];
};
if (acd_SZ_SOUTH_EAST_Selekano_Vehicle_Customs_Trader) then {
	_objs = _objs + [["Exile_Sign_VehicleCustoms",[20819.7,7208.93,0.254492],142.727,[[0.60561,-0.795762,0],[0,-0,1]],false]];
};
{
	private ["_obj"];
	if (acd_debug) then {
	diag_log format ["### _x = %1 ###",_x];
	};
	_obj = (_x select 0) createVehicleLocal [0,0,0];
	if (_x select 4) then {
		_obj setDir (_x select 2);
		_obj setPos (_x select 1);
	} else {
		_obj setPosATL (_x select 1);
		_obj setVectorDirAndUp (_x select 3);
	};
	_obj enableSimulation false;
	if (acd_debug) then {
	diag_log format ["### _obj = %1 ###",_obj];
	};
} foreach _objs;
if (acd_SZ_SOUTH_EAST_Selekano_IS_SAFE) then {
/*
	SZ Marker
*/
acd_SZ_SOUTH_EAST_Selekano_marker = createMarker ["South_east_TraderCityMarker", [20886.4,7271.56,0.00141907]];
"South_east_TraderCityMarker" setMarkerShape "ELLIPSE";
"South_east_TraderCityMarker" setMarkerSize [200,200];
"South_east_TraderCityMarker" setMarkerColor "ColorBlue";
"South_east_TraderCityMarker" setMarkerBrush "SolidBorder";
"South_east_TraderCityMarker" setMarkerAlpha 1;
"South_east_TraderCityMarker" setMarkerText "BmGJ Trader City";
/*
	SZ Sensor
*/
ExileTrader = createTrigger ["EmptyDetector",[20937.424,7369.8242,24.977497]];
ExileTrader setTriggerArea [220,300,11,true];
ExileTrader setTriggerStatements ["(vehicle player) in thisList","call ExileClient_object_player_event_onEnterSafezone","call ExileClient_object_player_event_onLeaveSafezone"];
ExileTrader setTriggerActivation ["ANY","PRESENT",true];
} else {
/*
	Trading Outpost Marker
*/
acd_SZ_SOUTH_EAST_Selekano_marker = createMarker ["South_east_TraderCityMarker",[20886.4,7271.56,0.00141907]];
"South_east_TraderCityMarker" setMarkerShape "ICON";
"South_east_TraderCityMarker" setMarkerType "MinefieldAP";
"South_east_TraderCityMarker" setMarkerSize [0.60000002,0.60000002];
"South_east_TraderCityMarker" setMarkerColor "ColorBlack";
"South_east_TraderCityMarker" setMarkerText "Black market";	
};