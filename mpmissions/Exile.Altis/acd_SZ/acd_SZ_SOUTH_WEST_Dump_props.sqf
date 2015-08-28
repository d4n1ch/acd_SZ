/*
	ACD_SZ - Exile Safe Zones
	acd_SZ_SOUTH_WEST_Dump_props.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/

if (!acd_SZ_SOUTH_WEST_Dump) exitWith {
	diag_log format ["### ACD: SAFE ZONE IS OFF: NO PROPS WILL BE BUILT: acd_SZ_SOUTH_WEST_Dump = %1 ###", acd_SZ_SOUTH_WEST_Dump];
};
diag_log format ["### ACD: SAFE ZONE: LOADING: acd_SZ_SOUTH_WEST_Dump_props ###"];

private ["_objs"];
_objs = [
	["Exile_Sign_TraderCity",[5984.12,12497.9,2.64418],318.182,[[-0.666769,0.745265,0],[0,0,1]],false],
	["Exile_Sign_TraderCity",[5966.7,12483.1,2.41843],318.182,[[-0.666769,0.745265,0],[0,0,1]],false],
	["Exile_Sign_TraderCity",[5983.9,12498.1,2.64418],136.818,[[0.684316,-0.729186,0],[0,-0,1]],false],
	["Exile_Sign_TraderCity",[5966.52,12483.3,2.41843],138.182,[[0.666769,-0.745265,0],[0,-0,1]],false],
	["Exile_Sign_TraderCity",[5931.58,12583.3,0.953125],218.636,[[-0.624376,-0.781124,0],[-0,0,1]],false],
	["Land_HBarrier_Big_F",[5984.04,12498.1,-0.256798],320,[[-0.642787,0.766045,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[5990.65,12503.7,-0.256798],320,[[-0.642787,0.766045,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[5997.26,12509.2,-0.256798],320,[[-0.642787,0.766045,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[6003.87,12514.8,-0.256798],320,[[-0.642787,0.766045,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[6010.48,12520.3,-0.256798],320,[[-0.642787,0.766045,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[6017.09,12525.9,-0.256798],320,[[-0.642787,0.766045,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[6023.7,12531.4,-0.256798],320,[[-0.642787,0.766045,0],[0,0,1]],false],
	["Land_BagBunker_Tower_F",[6021.08,12536.5,0],140,[[0.642787,-0.766045,0],[0,-0,1]],false],
	["Land_HBarrier_Big_F",[5966.4,12483.3,-0.348434],320,[[-0.642787,0.766045,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[5959.79,12477.8,-1.06866],320,[[-0.642787,0.766045,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[5959.79,12477.8,1.16135],320,[[-0.642787,0.766045,0],[0,0,1]],false],
	["Land_Factory_Conv1_Main_F",[5930.6,12482,1.2037],352.727,[[-0.126594,0.991955,0],[0,0,1]],false],
	["Land_spp_Transformer_F",[5931.03,12477.5,-1.43414],353.636,[[-0.110838,0.993838,0],[0,0,1]],false],
	["Land_WheelCart_F",[5927.85,12489.1,0],15,[[0.258819,0.965926,0],[0,0,1]],false],	
	["Land_Wreck_Truck_F",[5911.52,12490.2,-0.223015],262.2,[[-0.990748,-0.135715,-0],[0.134154,-0.979351,-0.151243]],false],
	["Land_Wreck_Van_F",[6002.47,12518.4,-1.52588e-005],44.5455,[0,0,1],true],
	["Land_HBarrier_Big_F",[5933.24,12577.9,-0.256798],309.546,[[-0.771119,0.636691,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[5927.74,12571.3,0.100777],309.546,[[-0.771119,0.636691,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[5922.25,12564.6,-0.132004],309.546,[[-0.771119,0.636691,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[5916.75,12558,-0.115273],309.546,[[-0.771119,0.636691,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[5911.26,12551.3,-0.402275],309.546,[[-0.771119,0.636691,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[5905.77,12544.7,-0.733566],309.546,[[-0.771119,0.636691,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[5900.27,12538,-1.23213],309.546,[[-0.771119,0.636691,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[5894.78,12531.4,-1.49723],309.546,[[-0.771119,0.636691,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[5894.78,12531.4,0.732773],309.546,[[-0.771119,0.636691,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[5900.27,12538,0.997871],309.546,[[-0.771119,0.636691,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[5905.77,12544.7,1.49644],309.546,[[-0.771119,0.636691,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[5911.26,12551.3,1.82773],309.546,[[-0.771119,0.636691,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[5916.75,12558,2.11473],309.546,[[-0.771119,0.636691,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[5922.25,12564.6,2.098],309.546,[[-0.771119,0.636691,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[5927.74,12571.3,2.33078],309.546,[[-0.771119,0.636691,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[5933.24,12577.9,1.97321],309.546,[[-0.771119,0.636691,0],[0,0,1]],false],
	["Land_BagBunker_Tower_F",[5937.93,12575.6,0],130.455,[[0.760921,-0.648845,0],[0,-0,1]],false],
	["Land_HBarrier_Big_F",[5963.11,12602.6,-0.142509],311.818,[[-0.745264,0.666769,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[5968.86,12609,-0.142509],311.818,[[-0.745264,0.666769,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[5974.62,12615.5,-0.142509],311.818,[[-0.745264,0.666769,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[5980.37,12621.9,-0.142509],311.818,[[-0.745264,0.666769,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[5986.12,12628.3,-0.142509],311.818,[[-0.745264,0.666769,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[5991.88,12634.8,-0.142509],311.818,[[-0.745264,0.666769,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[5997.63,12641.2,-0.142509],311.818,[[-0.745264,0.666769,0],[0,0,1]],false],
	["Land_RampConcrete_F",[5998.26,12514.7,-0.174347],51.3636,[[0.781124,0.624376,0],[0,0,1]],false],
	["Land_RampConcreteHigh_F",[5968.9,12458.8,-1.03672],185.454,[[-0.094308,-0.987669,0.124962],[0.011878,0.124396,0.992162]],false],
	["Land_Castle_01_wall_04_F",[5969.73,12570.9,-4.16509],53.1818,[[0.800541,0.599277,0],[0,0,1]],false],
	["Land_Castle_01_tower_F",[5968.69,12543.1,0],100.455,[[0.983399,-0.181456,0],[0,-0,1]],false],
	["Land_i_Garage_V1_F",[5966.03,12536.6,1.0077],9.54543,[[0.165829,0.986154,0],[0,0,1]],false],
	["Land_i_Garage_V1_F",[6014.17,12540.8,0.495682],320,[[-0.642787,0.766045,0],[0,0,1]],false],
	["Land_i_House_Big_02_V3_F",[5933.78,12563.9,0.715782],310,[[-0.766044,0.642788,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[5959.81,12595.9,-0.290604],280,[[-0.984808,0.173649,0],[0,0,1]],false],
	["Land_HBarrier_Big_F",[5944.3,12571.4,-0.422386],239.545,[[-0.862032,-0.506854,0],[-0,0,1]],false],
	["Land_Shed_Big_F",[5996.91,12521,0.585609],230,[[-0.766045,-0.642788,0],[-0,0,1]],false],
	["Land_HBarrier_Big_F",[6012.75,12549,-0.256798],20.9091,[[0.356886,0.934148,0],[0,0,1]],false],
	["Land_GH_Gazebo_F",[5917.56,12543.3,0.0250778],310,[[-0.766044,0.642788,0],[0,0,1]],false],
	["Land_Kiosk_blueking_F",[5960.92,12550.6,-0.0339966],83.6364,[[0.993839,0.110837,0],[0,0,1]],false],
	["Land_cargo_addon02_V1_F",[5961.43,12557,0.0624619],354.091,[[-0.10295,0.994686,0],[0,0,1]],false],
	["Land_Mil_WiredFence_F",[5944.33,12565.7,0],315.455,[[-0.701474,0.712695,0],[0,0,1]],false],
	["Land_WoodenCart_F",[5963.07,12567.9,0],84.5454,[[0.995472,0.0950563,0],[0,0,1]],false],
	["Land_CratesWooden_F",[5955.6,12536.9,0],114.545,[[0.909632,-0.415415,0],[0,-0,1]],false],
	["Land_PalletTrolley_01_yellow_F",[5925.82,12488.7,0.00212097],52.2727,[0,0,1],true],
	["Land_Pallets_F",[5925.72,12487.2,0],0,[[0,1,0],[0,0,1]],false],
	["Land_GarbageBags_F",[5931.3,12470.7,0],0,[[0,1,0],[0,0,1]],false],
	["Land_GarbageBags_F",[5931.83,12469.2,0],0,[[0,1,0],[0,0,1]],false],
	["Land_GarbageBarrel_01_F",[5941.2,12484.5,0],28.6364,[[0.479249,0.877679,0],[0,0,1]],false],
	["Land_GarbagePallet_F",[5933.6,12471.8,0],260,[[-0.984808,-0.173647,0],[-0,0,1]],false],
	["Land_JunkPile_F",[5933.91,12469.2,0],0,[[0,1,0],[0,0,1]],false],
	["Land_Tyres_F",[6001.2,12533.3,0],0,[[0,1,0],[0,0,1]],false],
	["Land_GarbageContainer_closed_F",[5928.3,12484.6,-0.00128937],262.727,[0,0,1],true],
	["Land_GarbageContainer_closed_F",[5928.54,12482.6,0.00878143],263.636,[0,0,1],true],
	["Land_GarbageContainer_closed_F",[5928.76,12480.6,0.0206299],262.727,[0,0,1],true],
	["Land_GarbageContainer_open_F",[5933.55,12476,0],81.8182,[[0.989821,0.142315,0],[0,0,1]],false],
	["Land_Scrap_MRAP_01_F",[5991.86,12515.9,0.0819855],228.636,[0,0,1],true],
	["Land_ScrapHeap_1_F",[5990.76,12509.4,0.181618],323.182,[[-0.599277,0.800542,0],[0,0,1]],false],
	["Land_ScrapHeap_2_F",[5986.42,12507,0.00315094],132.273,[0,0,1],true],
	["WaterPump_01_forest_F",[5959.03,12530.5,-0.00318146],190.455,[0,0,1],true],
	["Land_Cargo10_military_green_F",[5927.99,12476.1,-0.00038147],354.091,[0,0,1],true],
	["MetalBarrel_burning_F",[5913.08,12548.2,0],0,[[0,1,0],[0,0,1]],false],
	["Land_WaterTank_F",[5962.8,12533.2,0],8.18179,[[0.142314,0.989821,0],[0,0,1]],false],
	["Land_Tank_rust_F",[6010.38,12544.6,0],320,[[-0.642788,0.766044,0],[0,0,1]],false],
	["Land_Pier_Box_F",[5891.77,12465.8,2.00189],224.091,[[-0.695799,-0.718237,0],[-0,0,1]],false],
	["Land_Cargo_Patrol_V1_F",[5899.13,12465.7,3.33389],314.091,[[-0.718237,0.695799,0],[0,0,1]],false],
	["Land_EngineCrane_01_F",[5996.17,12518.4,-0.000221252],107.273,[0,0,1],true],
	["Land_Bricks_V1_F",[5926.39,12561.5,0],127.273,[[0.795761,-0.60561,0],[0,-0,1]],false],
	["Land_Bricks_V1_F",[5925.56,12560.6,0],307.273,[[-0.795762,0.60561,0],[0,0,1]],false],
	["Land_Bricks_V1_F",[5924.85,12559.5,0],127.273,[[0.795761,-0.60561,0],[0,-0,1]],false],
	["Land_Bricks_V1_F",[5923.97,12560.2,0],127.273,[[0.795761,-0.60561,0],[0,-0,1]],false],
	["Land_Bricks_V1_F",[5924.74,12561.2,0],127.273,[[0.795761,-0.60561,0],[0,-0,1]],false],
	["Land_Bricks_V1_F",[5925.51,12562.2,0],127.273,[[0.795761,-0.60561,0],[0,-0,1]],false],
	["Land_Bricks_V1_F",[5927.28,12560.8,0],127.273,[[0.795761,-0.60561,0],[0,-0,1]],false],
	["Land_Bricks_V1_F",[5926.51,12559.8,0],127.273,[[0.795761,-0.60561,0],[0,-0,1]],false],
	["Land_Bricks_V1_F",[5927.39,12559.2,0],127.273,[[0.795761,-0.60561,0],[0,-0,1]],false],
	["Land_Bricks_V1_F",[5928.16,12560.2,0],127.273,[[0.795761,-0.60561,0],[0,-0,1]],false],
	["Land_Bricks_V2_F",[5926.53,12558.2,0],216.818,[[-0.599277,-0.800542,0],[-0,0,1]],false],
	["Land_Bricks_V3_F",[5925.63,12558.8,0],127.727,[[0.790932,-0.611904,0],[0,-0,1]],false],
	["Land_Pallets_stack_F",[5929.41,12559.3,0],36.8181,[[0.599277,0.800542,0],[0,0,1]],false],
	["Land_MobileScafolding_01_F",[5931.81,12557.5,0],37.2727,[[0.60561,0.795762,0],[0,0,1]],false],
	["Land_Pallets_F",[5928.36,12557.9,0],214.091,[[-0.560508,-0.828149,0],[-0,0,1]],false],
	["Land_Pipes_small_F",[5931.81,12558,-0.00087738],35.9091,[0,0,1],true],
	["Land_Portable_generator_F",[5934.52,12556.6,0],306.364,[[-0.80527,0.592908,0],[0,0,1]],false],
	["Land_PortableLight_single_F",[5933.92,12555.9,0],0,[[0,1,0],[0,0,1]],false],
	["Land_PortableLight_double_F",[5935.48,12555.9,0],313.636,[[-0.723733,0.69008,0],[0,0,1]],false],
	["Land_WeldingTrolley_01_F",[5930.41,12557.7,0],129.091,[[0.776147,-0.630553,0],[0,-0,1]],false],
	["Land_PaperBox_closed_F",[5921.95,12548.1,0.438042],39.5454,[[0.63669,0.77112,0],[0,0,1]],false],
	["Land_PaperBox_open_empty_F",[5919.9,12549.7,0.414818],311.364,[[-0.75053,0.660836,0],[0,0,1]],false],
	["Land_PaperBox_open_full_F",[5912.57,12541.4,0.213081],37.7273,[[0.611903,0.790932,0],[0,0,1]],false],
	["Land_Pallet_MilBoxes_F",[5917.85,12547.6,0.302116],311.364,[[-0.75053,0.660836,0],[0,0,1]],false],
	["Land_CratesWooden_F",[5961.46,12558.9,0.0344467],176.364,[[0.0634229,-0.997987,0],[0,-0,1]],false],
	["Land_CratesShabby_F",[5959.16,12559,0],265.455,[[-0.996855,-0.0792492,0],[-0,0,1]],false],
	["Land_Sacks_goods_F",[5963.79,12558.2,0],0,[[0,1,0],[0,0,1]],false]
];

if (acd_SZ_SOUTH_WEST_Dump_Hardware_Trader) then {
	_objs = _objs + [["Exile_Sign_Hardware",[5922.19,12558.3,0],314.545,[[-0.712694,0.701475,0],[0,0,1]],false]];
};
if (acd_SZ_SOUTH_WEST_Dump_Fast_Food_Trader) then {
	_objs = _objs + [["Exile_Sign_Food",[5961.74,12552.8,-0.244041],353.636,[[-0.110838,0.993838,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Food_Small",[5955.84,12554.3,0],147.273,[[0.540641,-0.841253,0],[0,-0,1]],false]];
};
if (acd_SZ_SOUTH_WEST_Dump_Armory_Trader) then {
	_objs = _objs + [["Exile_Sign_Armory",[5911.34,12541.4,0.473709],309.545,[[-0.771119,0.636691,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Armory_Small",[5924.68,12547.4,0.283623],302.273,[[-0.845516,0.53395,0],[0,0,1]],false]];
};
if (acd_SZ_SOUTH_WEST_Dump_Equipment_Trader) then {
	_objs = _objs + [["Exile_Sign_Equipment",[5915.57,12537.8,0.689003],130,[[0.766044,-0.642788,0],[0,-0,1]],false]];
	_objs = _objs + [["Exile_Sign_Equipment_Small",[5925.41,12548.5,0.334129],309.091,[[-0.776146,0.630553,0],[0,0,1]],false]];
};
if (acd_SZ_SOUTH_WEST_Dump_Specops_Trader) then {
	_objs = _objs + [["Exile_Sign_SpecialOperations",[5971.74,12542.8,1.42814],100.455,[[0.983399,-0.181456,0],[0,-0,1]],false]];
	_objs = _objs + [["Exile_Sign_SpecialOperations_Small",[5965.7,12546,0.304909],101.364,[[0.980396,-0.197035,0],[0,-0,1]],false]];
};
if (acd_SZ_SOUTH_WEST_Dump_Office_Trader) then {
	_objs = _objs + [["Exile_Sign_Office",[5934.58,12569.4,4.41616],40,[[0.642788,0.766044,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Office_Small",[5936.29,12560,0.3022],309.546,[[-0.771119,0.636691,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Office_Small",[5939.38,12565.5,1.03107],40,[[0.642788,0.766044,0],[0,0,1]],false]];
};
if (acd_SZ_SOUTH_WEST_Dump_Waste_Dump_Trader) then {
	_objs = _objs + [["Exile_Sign_WasteDump",[5927.48,12489.2,0.2155],172.727,[[0.126592,-0.991955,0],[0,-0,1]],false]];
};
if (acd_SZ_SOUTH_WEST_Dump_Vehicle_Trader) then {
	_objs = _objs + [["Exile_Sign_Vehicles",[6004.34,12529.1,0.271034],45.4545,[[0.712694,0.701475,0],[0,0,1]],false]];
};
if (acd_SZ_SOUTH_WEST_Dump_Vehicle_Customs_Trader) then {
	_objs = _objs + [["Exile_Sign_VehicleCustoms",[5957.11,12533.7,0.282425],114.545,[[0.909632,-0.415415,0],[0,-0,1]],false]];
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
if (acd_SZ_SOUTH_WEST_Dump_IS_SAFE) then {
/*
	SZ Marker
*/
acd_SZ_SOUTH_WEST_Dump_marker = createMarker ["South_west_TraderCityMarker", [5949.45,12518.7,0.00117493]];
"South_west_TraderCityMarker" setMarkerShape "ELLIPSE";
"South_west_TraderCityMarker" setMarkerSize [200,200];
"South_west_TraderCityMarker" setMarkerColor "ColorBlue";
"South_west_TraderCityMarker" setMarkerBrush "SolidBorder";
"South_west_TraderCityMarker" setMarkerAlpha 1;
"South_west_TraderCityMarker" setMarkerText "BmGJ Trader City";
/*
	SZ Sensor
*/
ExileTrader = createTrigger ["EmptyDetector",[5949.45,12518.7,0.00117493]];
ExileTrader setTriggerArea [300,300,0,true];
ExileTrader setTriggerStatements ["(vehicle player) in thisList","call ExileClient_object_player_event_onEnterSafezone","call ExileClient_object_player_event_onLeaveSafezone"];
ExileTrader setTriggerActivation ["ANY","PRESENT",true];
} else {
/*
	Trading Outpost Marker
*/
acd_SZ_SOUTH_WEST_Dump_marker = createMarker ["South_west_TraderCityMarker",[5949.45,12518.7,0.00117493]];
"South_west_TraderCityMarker" setMarkerShape "ICON";
"South_west_TraderCityMarker" setMarkerType "MinefieldAP";
"South_west_TraderCityMarker" setMarkerSize [0.60000002,0.60000002];
"South_west_TraderCityMarker" setMarkerColor "ColorBlack";
"South_west_TraderCityMarker" setMarkerText "Black market";	
};
