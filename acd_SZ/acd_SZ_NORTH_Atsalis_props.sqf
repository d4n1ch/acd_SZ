/*
	ACD_SZ - Exile Safe Zones
	acd_SZ_NORTH_Atsalis_props.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/

if (!acd_SZ_NORTH_Atsalis) exitWith {
	diag_log format ["### ACD: SAFE ZONE IS OFF: NO PROPS WILL BE BUILT: acd_SZ_NORTH_Atsalis = %1 ###", acd_SZ_NORTH_Atsalis];
};
diag_log format ["### ACD: SAFE ZONE: LOADING: acd_SZ_NORTH_Atsalis_props ###"];

private ["_objs"];
_objs = [
	["Land_Pier_wall_F",[8797.32,25026.9,-3.88027],230.455,[[-0.77112,-0.63669,0],[-0,0,1]],false],
	["Land_RowBoat_V2_F",[8786.5,25041.2,0],0,[0,0,1],true],
	["Land_RowBoat_V3_F",[8780.18,25042,0],44.0909,[0,0,1],true],
	["Land_RowBoat_V1_F",[8817.91,25046.8,0.0788932],8.18185,[0,0,1],true],
	["Land_cargo_addon02_V2_F",[8796.74,25036.4,2.34305],52.2727,[[0.790932,0.611903,0],[0,0,1]],false],
	["Land_FishingGear_01_F",[8808.69,25031.3,2.55665],0,[[0,1,0],[0,0,1]],false],
	["Land_CncBarrierMedium4_F",[8812.9,25014.1,4.04993],320.455,[[-0.63669,0.77112,0],[0,0,1]],false],
	["Exile_Construction_CampFire_Static",[8800.8,25032.2,1.52106],0,[[0,1,0],[0,0,1]],false],
	["Land_CampingTable_F",[8797.7,25038.1,0.389485],53.1818,[[0.800541,0.599277,0],[0,0,1]],false],
	["Land_WoodPile_F",[8794.83,25036.8,0.451682],0,[[0,1,0],[0,0,1]],false],
	["Land_WoodPile_large_F",[8775.88,25044.5,0],0,[0,0,1],true],
	["Land_CampingChair_V1_F",[8796.52,25036.2,0.802144],240.909,[[-0.87385,-0.486197,0],[-0,0,1]],false],
	["Land_CampingChair_V1_F",[8798.36,25039.1,0.139],354.091,[[-0.102951,0.994686,0],[0,0,1]],false],
	["Land_Camping_Light_off_F",[8797.4,25038.2,1.13232],0,[[0,1,0],[0,0,1]],false],
	["Land_Sleeping_bag_F",[8799.1,25033.3,1.41706],245.455,[[-0.909632,-0.415415,0],[-0,0,1]],false],
	["Land_Sink_F",[8803.22,25029.5,1.55318],50,[[0.766044,0.642788,0],[0,0,1]],false],
	["Land_Pillow_camouflage_F",[8798.54,25036.2,1.42821],48.6363,[[0.75053,0.660836,0],[0,0,1]],false],
	["Land_Antibiotic_F",[8798.15,25037.4,1.45906],0,[[0,1,0],[0,0,1]],false],
	["Land_Bucket_clean_F",[8795.38,25037.3,0.198789],0,[[0,1,0],[0,0,1]],false],
	["Land_Camera_01_F",[8797.6,25038.6,1.02198],257.273,[[-0.97543,-0.22031,0],[-0,0,1]],false],
	["Land_CerealsBox_F",[8797.82,25038,1.23389],251.364,[[-0.947566,-0.31956,0],[-0,0,1]],false],
	["Land_Laptop_unfolded_scripted_F",[8797.83,25037.6,1.35568],232.727,[[-0.795762,-0.60561,0],[-0,0,1]],false],
	["Land_BottlePlastic_V1_F",[8797.55,25038.5,1.0756],0,[[0,1,0],[0,0,1]],false],
	["Land_Tableware_01_cup_F",[8797.28,25038.6,0.98778],0,[[0,1,0],[0,0,1]],false],
	["Land_MobilePhone_old_F",[8798.3,25037.6,1.39222],0,[[0,1,0],[0,0,1]],false]
];

if (acd_SZ_NORTH_Atsalis_Boat_Trader) then {
	_objs = _objs + [["Exile_Sign_Boat",[8796.87,25034.6,1.39311],228.636,[[-0.750531,-0.660836,0],[-0,0,1]],false]];
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
if (acd_SZ_NORTH_Atsalis_IS_SAFE) then {
/*
	SZ Marker
*/
acd_SZ_NORTH_Atsalis_marker = createMarker ["North_BoatTraderMarker", [8834.81,25016.2,1.93652]];
"North_BoatTraderMarker" setMarkerShape "ELLIPSE";
"North_BoatTraderMarker" setMarkerSize [100,100];
"North_BoatTraderMarker" setMarkerColor "ColorBlue";
"North_BoatTraderMarker" setMarkerBrush "SolidBorder";
"North_BoatTraderMarker" setMarkerAlpha 1;
"North_BoatTraderMarker" setMarkerText "BmGJ Trader City";
/*
	SZ Sensor
*/
ExileTrader = createTrigger ["EmptyDetector",[8809.4,25032.1,2.82314]];
ExileTrader setTriggerArea [100,100,0,true];
ExileTrader setTriggerStatements ["(vehicle player) in thisList","call ExileClient_object_player_event_onEnterSafezone","call ExileClient_object_player_event_onLeaveSafezone"];
ExileTrader setTriggerActivation ["ANY","PRESENT",true];
} else {
/*
	Trading Outpost Marker
*/
acd_SZ_NORTH_Atsalis_marker = createMarker ["North_BoatTraderMarker",[8834.81,25016.2,1.93652]];
"North_BoatTraderMarker" setMarkerShape "ICON";
"North_BoatTraderMarker" setMarkerType "loc_Quay";
"North_BoatTraderMarker" setMarkerColor "Default";
"North_BoatTraderMarker" setMarkerSize [0.60000002,0.60000002];
//"North_BoatTraderMarker" setMarkerText " Boat trader";	
};
