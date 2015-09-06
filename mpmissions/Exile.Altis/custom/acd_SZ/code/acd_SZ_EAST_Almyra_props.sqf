/*
	ACD_SZ - Exile Safe Zones
	acd_SZ_EAST_Almyra_props.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/
private ["_objs"];
if (!acd_SZ_EAST_Almyra) exitWith {
	diag_log format ["### ACD: SAFE ZONE IS OFF: NO PROPS WILL BE BUILT: acd_SZ_EAST_Almyra = %1 ###", acd_SZ_EAST_Almyra];
};
diag_log format ["### ACD: SAFE ZONE: LOADING: acd_SZ_EAST_Almyra_props ###"];

_objs = [
	["Exile_Sign_TraderCity",[23206.3,18723.4,0.062675],280,[[-0.984808,0.173649,0],[0,0,1]],false],
	["Exile_Sign_TraderCity",[23172.7,18729.3,4.34578],100.909,[[0.981929,-0.189251,0],[0,-0,1]],false],
	["Land_Wall_IndCnc_2deco_F",[23203.6,18773.3,0],10,[[0.173649,0.984808,0],[0,0,1]],false],
	["Land_Wall_IndCnc_2deco_F",[23200.6,18773.8,2.38419e-007],10,[[0.173649,0.984808,0],[0,0,1]],false],
	["Land_Wall_IndCnc_2deco_F",[23197.7,18774.3,2.38419e-007],10,[[0.173649,0.984808,0],[0,0,1]],false],
	["Land_Wall_IndCnc_2deco_F",[23194.7,18774.9,2.38419e-007],10,[[0.173649,0.984808,0],[0,0,1]],false],
	["Land_Wall_IndCnc_2deco_F",[23191.8,18775.4,2.38419e-007],10,[[0.173649,0.984808,0],[0,0,1]],false],
	["Land_Wall_IndCnc_2deco_F",[23188.8,18775.9,4.76837e-007],10,[[0.173649,0.984808,0],[0,0,1]],false],
	["Land_Wall_IndCnc_2deco_F",[23205.3,18774.5,2.38419e-007],100.455,[[0.983399,-0.181455,0],[0,-0,1]],false],
	["Land_Wall_IndCnc_2deco_F",[23205.8,18777.5,2.38419e-007],100.455,[[0.983399,-0.181455,0],[0,-0,1]],false],
	["Land_Wall_IndCnc_2deco_F",[23206.4,18780.4,2.38419e-007],100.455,[[0.983399,-0.181455,0],[0,-0,1]],false],
	["Land_Wall_IndCnc_2deco_F",[23206.9,18783.4,2.38419e-007],100.455,[[0.983399,-0.181455,0],[0,-0,1]],false],
	["Land_Wall_IndCnc_2deco_F",[23205.7,18785,2.38419e-007],10,[[0.173649,0.984808,0],[0,0,1]],false],
	["Land_Wall_IndCnc_2deco_F",[23202.7,18785.5,2.38419e-007],10,[[0.173649,0.984808,0],[0,0,1]],false],
	["Land_Wall_IndCnc_2deco_F",[23199.8,18786.1,2.38419e-007],10,[[0.173649,0.984808,0],[0,0,1]],false],
	["Land_Wall_IndCnc_2deco_F",[23196.8,18786.6,4.76837e-007],10,[[0.173649,0.984808,0],[0,0,1]],false],
	["Land_Wall_IndCnc_2deco_F",[23193.8,18787.1,4.76837e-007],10,[[0.173649,0.984808,0],[0,0,1]],false],
	["Land_Wall_IndCnc_2deco_F",[23190.9,18787.6,2.38419e-007],10,[[0.173649,0.984808,0],[0,0,1]],false],
	["Land_Wall_IndCnc_2deco_F",[23189.3,18786.6,2.38419e-007],100.455,[[0.983399,-0.181455,0],[0,-0,1]],false],
	["Land_Wall_IndCnc_2deco_F",[23187.7,18777.8,2.38419e-007],100.455,[[0.983399,-0.181455,0],[0,-0,1]],false],
	["Land_BarGate_F",[23189.1,18782.1,0.34424],280.909,[[-0.981929,0.189251,0],[0,0,1]],false],
	["Land_Factory_Conv1_Main_F",[23199.3,18784.1,0.89749],280.455,[[-0.983399,0.181456,0],[0,0,1]],false],
	["Land_Wreck_Truck_dropside_F",[23207.6,18776.1,0],193.182,[[-0.228043,-0.973651,0],[-0,0,1]],false],
	["Land_GarbageContainer_closed_F",[23207.3,18774.7,0.856965],105,[[0.965926,-0.258819,0],[0.0113167,0.0422344,0.999044]],false],
	["Land_GarbageBags_F",[23208.3,18780,0],0,[[0,1,0],[0,0,1]],false],
	["Land_FishingGear_02_F",[23208.3,18783.9,0],82.7273,[[0.991955,0.126592,0],[0,0,1]],false],
	["Land_GarbageContainer_open_F",[23208.1,18782.1,0],11.8182,[[0.204807,0.978802,0],[0,0,1]],false],
	["Land_JunkPile_F",[23209.6,18781.8,0],0,[[0,1,0],[0,0,1]],false],
	["Land_GarbagePallet_F",[23210.7,18779.9,0],0,[[0,1,0],[0,0,1]],false],
	["Land_GarbageWashingMachine_F",[23210.1,18782.7,0],311.364,[[-0.750531,0.660836,0],[0,0,1]],false],
	["Land_JunkPile_F",[23212.2,18782.1,0],154.545,[[0.429795,-0.902926,0],[0,-0,1]],false],
	["Land_GarbageBags_F",[23209.6,18779.9,0],0,[[0,1,0],[0,0,1]],false],
	["Land_GarbageContainer_closed_F",[23204.1,18774.1,0],9.54545,[[0.16583,0.986154,0],[0,0,1]],false],
	["Land_GarbageContainer_closed_F",[23202.3,18774.4,0],9.54544,[[0.16583,0.986154,0],[0,0,1]],false],
	["Land_GarbageContainer_closed_F",[23200.5,18774.7,0],9.54544,[[0.16583,0.986154,0],[0,0,1]],false],
	["Land_GarbageContainer_closed_F",[23198.8,18775,0],9.54544,[[0.16583,0.986154,0],[0,0,1]],false],
	["Land_GarbageContainer_closed_F",[23197,18775.3,0],9.54544,[[0.16583,0.986154,0],[0,0,1]],false],
	["Land_GarbageContainer_closed_F",[23199,18776.5,0],9.54544,[[0.16583,0.986154,0],[0,0,1]],false],
	["Land_GarbageContainer_closed_F",[23200.8,18776.2,0],9.54544,[[0.16583,0.986154,0],[0,0,1]],false],
	["Land_GarbageContainer_closed_F",[23202.6,18775.9,0],9.54544,[[0.16583,0.986154,0],[0,0,1]],false],
	["Land_GarbageContainer_closed_F",[23204.3,18775.6,0],9.54544,[[0.16583,0.986154,0],[0,0,1]],false],
	["Land_GarbageContainer_open_F",[23197.2,18776.8,0],9.54546,[[0.16583,0.986154,0],[0,0,1]],false],
	["Land_WheelieBin_01_F",[23188.3,18776.6,0],190.455,[[-0.181456,-0.983399,0],[-0,0,1]],false],
	["Land_WheelieBin_01_F",[23189.1,18776.5,0],190.455,[[-0.181456,-0.983399,0],[-0,0,1]],false],
	["Land_WheelieBin_01_F",[23189.9,18776.4,0],219.545,[[-0.636691,-0.771119,0],[-0,0,1]],false],
	["Land_Tyres_F",[23205.1,18783.4,0],95.4545,[[0.995472,-0.0950558,0],[0,-0,1]],false],
	["Land_Garbage_square5_F",[23196.9,18778.8,0],0,[[0,1,0],[0,0,1]],false],
	["Land_Garbage_square3_F",[23203.4,18778.5,0],0,[[0,1,0],[0,0,1]],false],
	["Land_Garbage_square5_F",[23192.5,18782.6,0],0,[[0,1,0],[0,0,1]],false],
	["Land_Garbage_square3_F",[23192.3,18778.3,0],0,[[0,1,0],[0,0,1]],false],
	["Land_JunkPile_F",[23194.2,18776.4,0],0,[[0,1,0],[0,0,1]],false],
	["Land_ScrapHeap_1_F",[23204.2,18779,0],7.72729,[[0.134458,0.990919,0],[0,0,1]],false],
	["Land_FieldToilet_F",[23192.2,18776.7,0],189.545,[[-0.16583,-0.986154,0],[-0,0,1]],false],
	["Land_Pallets_F",[23202.1,18780.9,0],275.455,[[-0.995472,0.0950563,0],[0,0,1]],false],
	["Land_WheelCart_F",[23201.2,18779.3,0],62.2727,[[0.885172,0.465263,0],[0,0,1]],false],
	["Land_PalletTrolley_01_yellow_F",[23201.2,18781.2,0],5.45456,[[0.0950563,0.995472,0],[0,0,1]],false]
];

if (acd_SZ_EAST_Almyra_Hardware_Trader) then {
	_objs = _objs + [["Exile_Sign_Hardware",[23203.4,18768.3,-0.120523],100,[[0.984808,-0.173648,0],[0,-0,1]],false]];
};
if (acd_SZ_EAST_Almyra_Fast_Food_Trader) then {
	_objs = _objs + [["Exile_Sign_Food",[23191,18706.5,0],99.9999,[[0.984808,-0.173647,0],[0,-0,1]],false]];
};
if (acd_SZ_EAST_Almyra_Armory_Trader) then {
	_objs = _objs + [["Exile_Sign_Armory",[23188.4,18682.2,-0.141575],99.9999,[[0.984808,-0.173647,0],[0,-0,1]],false]];
};
if (acd_SZ_EAST_Almyra_Equipment_Trader) then {
	_objs = _objs + [["Exile_Sign_Equipment",[23171.4,18688.4,0],280,[[-0.984808,0.173648,0],[0,0,1]],false]];
};
if (acd_SZ_EAST_Almyra_Specops_Trader) then {
	_objs = _objs + [["Exile_Sign_SpecialOperations",[23185.5,18768.1,-0.180778],280,[[-0.984808,0.173649,0],[0,0,1]],false]];
};
if (acd_SZ_EAST_Almyra_Office_Trader) then {
	_objs = _objs + [["Exile_Sign_Office",[23203.1,18737.7,4.88422],190,[[-0.173648,-0.984808,0],[-0,0,1]],false]];
};
if (acd_SZ_EAST_Almyra_Waste_Dump_Trader) then {
	_objs = _objs + [["Exile_Sign_WasteDump",[23189.1,18786.6,-0.0214128],100.455,[[0.983399,-0.181455,0],[0,-0,1]],false]];
};
if (acd_SZ_EAST_Almyra_Aircraft_Trader) then {
	_objs = _objs + [["Exile_Sign_Aircraft",[23204.3,18716.5,-0.128845],280,[[-0.984808,0.173649,0],[0,0,1]],false]];
};
if (acd_SZ_EAST_Almyra_Aircraft_Customs_Trader) then {
	_objs = _objs + [["Exile_Sign_AircraftCustoms",[23206.8,18730.4,-0.100289],280,[[-0.984808,0.173649,0],[0,0,1]],false]];
};
if (acd_SZ_EAST_Almyra_Vehicle_Trader) then {
	_objs = _objs + [["Exile_Sign_Vehicles",[23215.8,18765.3,0.129496],280.454,[[-0.983399,0.181455,0],[0,0,1]],false]];
};
if (acd_SZ_EAST_Almyra_Vehicle_Customs_Trader) then {
	_objs = _objs + [["Exile_Sign_VehicleCustoms",[23200.9,18680.6,0.197726],280,[[-0.984808,0.173649,0],[0,0,1]],false]];
};

[280,[23188.6,18726.4,0.012877]] call acd_fnc_buildTerminal;
[_objs] call acd_fnc_buildProps;
