/*
	ACD_SZ - Exile Safe Zones
	acd_SZ_SOUTH_Eginio_props.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/

if (!acd_SZ_SOUTH_Eginio) exitWith {
	diag_log format ["### ACD: SAFE ZONE IS OFF: NO PROPS WILL BE BUILT: acd_SZ_SOUTH_Eginio = %1 ###", acd_SZ_SOUTH_Eginio];
};
diag_log format ["### ACD: SAFE ZONE: LOADING: acd_SZ_SOUTH_Eginio_props ###"];

private ["_objs"];
_objs = [
	["Exile_Sign_TraderCity",[11539.8,7077.19,0.584717],180.909,[[-0.0158659,-0.999874,0],[-0,0,1]],false],
	["Exile_Sign_TraderCity",[11524.2,7076.71,0.653221],180.909,[[-0.0158659,-0.999874,0],[-0,0,1]],false],
	["Land_MilOffices_V1_F",[11583.2,7038.95,0.67141],194.545,[[-0.251147,-0.967949,0],[-0,0,1]],false],
	["Land_Pier_F",[11583.5,7043.48,-1.48514],194.545,[[-0.251148,-0.967949,0],[-0,0,1]],false],
	["Land_Pier_F",[11581,7032.95,-0.739235],14.5455,[[0.251148,0.967949,0],[0,0,1]],false],
	["Land_Pier_F",[11543.1,7053.95,-3.09196],194.545,[[-0.251148,-0.967949,0],[-0,0,1]],false],
	["Land_Pier_F",[11540.6,7043.42,-2.62883],14.5455,[[0.251148,0.967949,0],[0,0,1]],false],
	["Land_Kiosk_redburger_F",[11550.1,7034.93,1.38628],194.545,[[-0.251148,-0.967949,0],[-0,0,1]],false],
	["Land_Factory_Conv1_Main_F",[11519,7070.51,0.60817],91.8181,[[0.999497,-0.0317274,0],[0,-0,1]],false],
	["Land_Tank_rust_F",[11540.1,7073.2,-0.102562],88.6363,[[0.999717,0.0237983,0],[0,0,1]],false]
];

if (acd_SZ_SOUTH_Eginio_Hardware_Trader) then {
	_objs = _objs + [["Exile_Sign_Hardware",[11539.2,7054.62,1.15759],187.273,[[-0.126593,-0.991955,0],[-0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Hardware_Small",[11530.1,7062.49,-0.301674],185.909,[[-0.102951,-0.994686,0],[-0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Hardware_Small",[11544.7,7060.53,-0.0253754],185.909,[[-0.102951,-0.994686,0],[-0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Hardware_Small",[11537.5,7059.83,0.0320358],97.2727,[[0.991955,-0.126592,0],[0,-0,1]],false]];
};
if (acd_SZ_SOUTH_Eginio_Fast_Food_Trader) then {
	_objs = _objs + [["Exile_Sign_Food",[11551.9,7033.75,1.60171],104.545,[[0.967949,-0.251148,0],[0,-0,1]],false]];
	_objs = _objs + [["Exile_Sign_Food_Small",[11549.3,7037.59,0.303795],194.091,[[-0.243461,-0.969911,0],[-0,0,1]],false]];
};
if (acd_SZ_SOUTH_Eginio_Armory_Trader) then {
	_objs = _objs + [["Exile_Sign_Armory",[11578.9,7028.32,2.35053],194.545,[[-0.251148,-0.967949,0],[-0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Armory_Small",[11579,7046.52,0.0729904],195,[[-0.258819,-0.965926,0],[-0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Armory_Small",[11567,7046.52,0.0918503],104.545,[[0.967949,-0.251148,0],[0,-0,1]],false]];
};
if (acd_SZ_SOUTH_Eginio_Equipment_Trader) then {
	_objs = _objs + [["Exile_Sign_Equipment",[11588.1,7043.59,1.01015],14.5454,[[0.251148,0.967949,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Equipment_Small",[11582.6,7045.63,0.0792084],194.545,[[-0.251148,-0.967949,0],[-0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Equipment_Small",[11567.5,7048.3,-0.00272369],105,[[0.965926,-0.258819,0],[0,-0,1]],false]];
};
if (acd_SZ_SOUTH_Eginio_Specops_Trader) then {
	_objs = _objs + [["Exile_Sign_SpecialOperations",[11564.7,7035.65,1.86977],284.545,[[-0.967949,0.251148,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_SpecialOperations_Small",[11569.4,7048.96,-0.0466385],194.091,[[-0.243462,-0.96991,0],[-0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_SpecialOperations_Small",[11566.6,7044.8,0.190834],104.546,[[0.967948,-0.251149,0],[0,-0,1]],false]];
	_objs = _objs + [["Exile_Sign_SpecialOperations_Small",[11572.9,7037.45,0.549561],194.546,[[-0.25115,-0.967948,0],[-0,0,1]],false]];
};
if (acd_SZ_SOUTH_Eginio_Office_Trader) then {
	_objs = _objs + [["Exile_Sign_Office",[11528.6,7052.95,-0.0486603],8.18182,[[0.142315,0.989821,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Office_Small",[11525,7048.93,-0.55574],99.0909,[[0.987439,-0.158001,0],[0,-0,1]],false]];
};
if (acd_SZ_SOUTH_Eginio_Waste_Dump_Trader) then {
	_objs = _objs + [["Exile_Sign_WasteDump",[11525.8,7073.63,0.251976],271.364,[[-0.999717,0.0237981,0],[0,0,1]],false]];
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

if (acd_SZ_SOUTH_Eginio_IS_SAFE) then {
/*
	SZ Marker
*/
acd_SZ_SOUTH_Eginio_marker = createMarker ["South_Eginio_TraderCityMarker", [11557,7047.75,0.101646]];
"South_Eginio_TraderCityMarker" setMarkerShape "ELLIPSE";
"South_Eginio_TraderCityMarker" setMarkerSize [200,200];
"South_Eginio_TraderCityMarker" setMarkerColor "ColorBlue";
"South_Eginio_TraderCityMarker" setMarkerBrush "SolidBorder";
"South_Eginio_TraderCityMarker" setMarkerAlpha 1;
"South_Eginio_TraderCityMarker" setMarkerText "BmGJ Trader City";
/*
	SZ Sensor
*/
ExileTrader = createTrigger ["EmptyDetector",[11557,7047.75,0.101646]];
ExileTrader setTriggerArea [300,300,0,true];
ExileTrader setTriggerStatements ["(vehicle player) in thisList","call ExileClient_object_player_event_onEnterSafezone","call ExileClient_object_player_event_onLeaveSafezone"];
ExileTrader setTriggerActivation ["ANY","PRESENT",true];
} else {
/*
	Trading Outpost Marker
*/
acd_SZ_SOUTH_Eginio_marker = createMarker ["South_Eginio_TraderCityMarker",[11557,7047.75,0.101646]];
"South_Eginio_TraderCityMarker" setMarkerShape "ICON";
"South_Eginio_TraderCityMarker" setMarkerType "MinefieldAP";
"South_Eginio_TraderCityMarker" setMarkerSize [0.60000002,0.60000002];
"South_Eginio_TraderCityMarker" setMarkerColor "ColorBlack";
"South_Eginio_TraderCityMarker" setMarkerText "Black market";	
};

