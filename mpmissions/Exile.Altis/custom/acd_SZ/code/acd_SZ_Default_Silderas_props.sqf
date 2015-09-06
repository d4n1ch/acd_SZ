/*
	ACD_SZ - Exile Safe Zones
	acd_SZ_Default_Silderas_props.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/

if (!acd_SZ_Default_Silderas) exitWith {
	diag_log format ["### ACD: SAFE ZONE IS OFF: NO PROPS WILL BE BUILT: acd_SZ_Default_Silderas = %1 ###", acd_SZ_Default_Silderas];
};
diag_log format ["### ACD: SAFE ZONE: LOADING: acd_SZ_Default_Silderas_props ###"];
/*
#########################################################################################################################################
*/
_objects = 
[
    ["Exile_Sign_TraderCity",[23329.3,24201.1,1.04392],182.727,0,0,false],
	["Land_Wreck_Car_F",[23338.3,24207.2,-0.525901],242.727,0,0,false],
    ["Land_GarbageContainer_closed_F",[23340.2,24212.2,-0.0236888],278.182,0,0,false],
    ["Land_Tyres_F",[23335.2,24203.3,-0.160748],91.3637,0,0,false],
    ["Land_JunkPile_F",[23338.1,24210.1,-0.132239],275.455,0,0,false],
    ["Land_PortableLight_single_F",[23374.3,24181.1,1.00984],111.818,0,0,false],
    ["Land_WeldingTrolley_01_F",[23380.5,24185.4,0.903339],278.636,0,0,false],
    ["Land_Workbench_01_F",[23375.1,24185.9,0.948292],100.455,0,0,false],
    ["Land_i_Shop_01_V1_F",[23377.8,24167.7,0],117.727,0,0,false],
    ["Land_City_4m_F",[23362.5,24196,0],208.636,0,0,false],
    ["Land_City_4m_F",[23369.7,24192.3,0],27.7273,0,0,false],
    ["Land_City_Gate_F",[23366.1,24194.1,0.0503249],26.9673,0,0,false],
    ["Land_City_8m_F",[23378.9,24175.8,0],110.454,0,0,false],
    ["Land_Kiosk_redburger_F",[23353.2,24168.5,0.0280967],41.818,0,0,false],
    ["Land_RattanTable_01_F",[23345.2,24166.1,0],352.273,0,0,false],
    ["Land_RattanTable_01_F",[23358.7,24163.5,0],40.9091,0,0,false],
    ["Land_RattanTable_01_F",[23345.9,24160.5,0],40.9091,0,0,false],
    ["Land_RattanTable_01_F",[23350.9,24161.3,0],26.3636,0,0,false],
    ["Land_RattanTable_01_F",[23353.3,24157.2,0],11.3636,0,0,false],
    ["Land_ChairPlastic_F",[23343.4,24158.5,0],0,0,0,false],
    ["Land_ChairPlastic_F",[23360.9,24162.5,-0.0620847],0,0,160.801,false],
    ["Land_ChairPlastic_F",[23357.6,24163.8,0],24.5455,0,0,false],
    ["Land_ChairPlastic_F",[23345.1,24161.3,0],21.8182,0,0,false],
    ["Land_ChairPlastic_F",[23346.4,24166.2,0],169.545,0,0,false],
    ["Land_ChairPlastic_F",[23346.7,24159.8,0],213.636,0,0,false],
    ["Land_ChairPlastic_F",[23354.3,24158.9,0],133.182,0,0,false],
    ["Land_ChairPlastic_F",[23349.9,24161.8,0],18.6364,0,0,false],
    ["Land_ChairPlastic_F",[23350.5,24158.9,-0.103544],292.727,86.1433,0,false],
    ["Land_ChairPlastic_F",[23353,24156.2,0],270.455,0,0,false],
    ["Land_ChairPlastic_F",[23344.2,24166.5,0],20.4545,0,0,false],
    ["Land_Sunshade_04_F",[23345.3,24165.6,0],0,0,358.93,false],
    ["Land_Sunshade_04_F",[23354.2,24157.4,0.000226974],-0,0,2.87139,false],
    ["Land_Sunshade_04_F",[23345.2,24160.1,0.000226974],0,7.17855,0,false],
    ["Land_CarService_F",[23376.2,24188.7,0.442111],189.545,0,0,false],
    ["Land_RattanTable_01_F",[23366.3,24170.3,0],40.9091,0,0,false],
    ["Land_RattanTable_01_F",[23362,24173.5,0],40.9091,0,0,false],
    ["Land_ChairPlastic_F",[23364.9,24168.6,-0.176735],24.5455,86.0147,0,false],
    ["Land_ChairPlastic_F",[23362.8,24173.7,-0.143145],24.5455,0,84.7075,false],
    ["Land_ChairPlastic_F",[23361,24173.6,0],24.5455,0,0,false],
    ["Land_ChairPlastic_F",[23367.3,24169.5,0],243.636,0,0,false],
    ["Land_LampStreet_small_F",[23368,24174.1,0.145531],287.757,0,0,false],
    ["Land_LampStreet_small_F",[23342.6,24215.3,-0.000396729],53.2113,0,0,false],
    ["Land_LampStreet_small_F",[23382.2,24190.8,-0.000397205],15.0294,0,0,false],
    ["Land_LampStreet_small_F",[23341.3,24184.7,-0.000397205],0.0295105,0,0,false],
    ["Land_LampStreet_small_F",[23361.5,24197.5,0.0306339],48.6659,0,0,false],
    ["Land_LampStreet_small_F",[23306.9,24188.8,4.35733],4.12046,0,0,false],
    ["Land_LampStreet_small_F",[23396.1,24199.9,-0.000397682],329.575,0,0,false],
    ["Land_LampStreet_small_F",[23320.3,24187,2.04665],1.39312,0,0,false],
    ["Land_Wreck_Offroad2_F",[23368.4,24185.1,-0.0597525],192.727,0,0,false],
    ["Land_WoodenCart_F",[23342.5,24200.2,-0.104191],2.72736,0,0,false],
    ["Land_FieldToilet_F",[23341.8,24174.2,0],319.545,0,0,false],
    ["Land_ToolTrolley_02_F",[23379.4,24180.5,1.04269],63.1818,0,0,false],
    ["Land_Pallet_MilBoxes_F",[23378.9,24166.1,4.12395],37.2727,0,0,false],
    ["Land_PaperBox_open_full_F",[23376.9,24167.2,4.15681],33.1818,0,0,false],
    ["Land_CncBarrier_F",[23369.5,24192,-0.0382988],27.2728,0,0,false],
    ["Land_CncBarrier_F",[23365.1,24192.5,-9.01222e-005],28.6363,0,0,false],
    ["Land_CncBarrier_F",[23362.8,24195.4,-0.0687151],29.0909,0,0,false],
    ["Land_CncBarrier_F",[23378.9,24177.3,-0.0414939],110,0,0,false],
    ["Land_CncBarrier_F",[23377.8,24174.1,-0.0352845],110.909,0,0,false],
    ["Land_WaterCooler_01_new_F",[23356,24169.5,0.097043],220,0,0,false],
    ["Land_LuggageHeap_03_F",[23378.9,24165.8,0.22844],330.909,0,0,false],
    ["Land_LuggageHeap_04_F",[23380.8,24165.3,0.181971],220.909,0,0,false],
    ["Land_LuggageHeap_02_F",[23378,24171.1,0.192255],331.818,0,0,false],
    ["Land_Cargo20_military_green_F",[23347.6,24199.7,-0.226149],0.909058,0,0,false],
    ["Land_LifeguardTower_01_F",[23338.1,24153.7,0.35112],350.455,0,0,false],
    ["Land_i_Addon_04_V1_F",[23376.6,24160.4,0.316394],25.9091,0,0,false],
    ["Land_Pier_small_F",[23389,24147.6,1.67536],345.455,0,0,false],
    ["Land_GH_House_2_F",[23333.5,24196.3,-0.379921],92.7273,0,0,false]
];
/*
#########################################################################################################################################
*/
if (acd_SZ_Default_Silderas_Hardware_Trader) then {
	_objects = _objects + [["Exile_Sign_Hardware",[23370.9,24187.1,0.612838],279.091,0,0,false]];
	_objects = _objects + [["Exile_Sign_Hardware_Small",[23370.2,24180.7,-0.476787],9.09093,0,0,false]];
};
if (acd_SZ_Default_Silderas_Fast_Food_Trader) then {
	_objects = _objects + [["Exile_Sign_Food_Small",[23353.6,24171.1,-1.11059],222.727,0,0,false]];
};
if (acd_SZ_Default_Silderas_Armory_Trader) then {
	_objects = _objects + [["Exile_Sign_Armory",[23378.2,24165.2,4.47165],207.273,0,0,false]];
	_objects = _objects + [["Exile_Sign_Armory_Small",[23373.2,24165,-0.741051],116.364,0,0,false]];	
};
if (acd_SZ_Default_Silderas_Equipment_Trader) then {
	_objects = _objects + [["Exile_Sign_Equipment",[23381.4,24170,0],28.6364,0,0,false]];
	_objects = _objects + [["Exile_Sign_Equipment_Small",[23376.4,24172.4,-0.82643],94.0909,0,0,false]];
};
if (acd_SZ_Default_Silderas_Waste_Dump_Trader) then {
	_objects = _objects + [["Exile_Sign_WasteDump",[23340.4,24209.8,0.125406],93.6364,0,0,false]];
	_objects = _objects + [["Exile_Sign_WasteDump_Small",[23341.3,24194.2,-0.0919843],330,0,0,false]];
};
if (acd_SZ_Default_Silderas_Vehicle_Trader) then {
	_objects = _objects + [["Exile_Sign_Vehicles",[23389.4,24185.3,0.245559],198.182,0,0,false]];	
};
if (acd_SZ_Default_Silderas_Boat_Trader) then {
	_objects = _objects + [["Exile_Sign_Boat_Small",[23333.4,24189.1,-0.633072],293.636,0,0,false]];	
};

[_objects] call acd_fnc_buildPropsDefault;
