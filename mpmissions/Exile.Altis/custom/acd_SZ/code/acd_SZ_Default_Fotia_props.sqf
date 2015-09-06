/*
	ACD_SZ - Exile Safe Zones
	acd_SZ_Default_Fotia_props.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/

if (!acd_SZ_Default_Fotia) exitWith {
	diag_log format ["### ACD: SAFE ZONE IS OFF: NO PROPS WILL BE BUILT: acd_SZ_Default_Fotia = %1 ###", acd_SZ_Default_Fotia];
};
diag_log format ["### ACD: SAFE ZONE: LOADING: acd_SZ_Default_Fotia_props ###"];
/*
#########################################################################################################################################
*/
_objects = 
[
    ["Land_CampingTable_F",[2987.45,18180.5,1.39993],65.4545,0,0,false],
    ["Land_ToolTrolley_01_F",[2980.77,18144.4,0.91548],308.636,0,0,false],
    ["CargoNet_01_barrels_F",[2987.87,18182.6,1.44609],0,0,0,false],
    ["Land_ShelvesMetal_F",[2979.66,18187.6,2.50817],266.364,0,0,false],
    ["Land_FishingGear_02_F",[2980.34,18124.5,-0.126579],0,0,0,false],
    ["Land_Basket_F",[2979.97,18184,2.44773],0,0,0,false],
    ["Land_CratesWooden_F",[2992.38,18156.2,0.0375202],338.182,0,0,false],
    ["Land_Sacks_goods_F",[2979.18,18186,2.45044],92.2727,0,0,false],
    ["Land_Sacks_heap_F",[2985.09,18169.8,1.46042],356.818,0,0,false],
    ["Land_Cages_F",[2989.92,18190.5,1.10471],356.364,0,0,false],
    ["Land_GarbageContainer_closed_F",[2997.02,18195.1,0.319215],271.853,0,0,false],
    ["Land_CratesPlastic_F",[2979.2,18176.3,2.51647],43.6364,0,0,false],
    ["Land_LuggageHeap_04_F",[2980.07,18194.2,2.43183],220.909,0,0,false],
    ["Land_LuggageHeap_02_F",[2979.48,18192.2,2.63429],328.182,0,0,false],
    ["Land_GarbagePallet_F",[2978.46,18135.3,0.652531],20.9091,0,0,false],
    ["Land_Cargo10_orange_F",[2997.76,18202,0.0622801],20.9091,0,0,false],
    ["Land_LampHarbour_F",[2972.09,18193.3,2.95784],93.6364,0,0,false],
    ["MapBoard_altis_F",[2988.21,18186.6,1.48323],119.545,0,0,false],
    ["Land_GarbageContainer_closed_F",[2980.93,18135.9,0.377027],85,0,0,false],
    ["Land_Tyres_F",[2982.2,18127.5,0.0779387],53.6364,0,0,false],
    ["Land_JunkPile_F",[2994.1,18132.6,-0.028621],181.818,0,0,false],
    ["Land_GarbageWashingMachine_F",[2988.89,18127,-0.0889401],0,0,0,false],
    ["Land_Wreck_Car_F",[2987.36,18132.2,-0.20233],93.1818,0,0,false],
    ["Land_Pier_F",[2993.46,18185.8,-1.66846],91.5356,0,0,false],
    ["Land_Pier_F",[2994.03,18144.2,-2.87177],91.5356,0,0,false],
    ["Land_Pier_wall_F",[2952.43,18207.7,2.52813],0.454369,0,0,false],
    ["Land_i_Shed_Ind_F",[2987.11,18179.7,1.45037],269.545,0,0,false],
    ["Land_Pier_F",[2980.88,18182.9,-0.0613049],91.5356,0,0,false],
    ["Land_Pier_F",[2979.73,18141.3,-1.43078],91.5356,0,0,false],
    ["Land_CncBarrier_F",[2981.36,18148.3,1.09377],2.72791,0,0,false],
    ["Land_ToolTrolley_02_F",[2983.3,18147.4,0.823023],290.455,0,0,false],
    ["Land_Box_AmmoOld_F",[2988.01,18178.4,1.29282],28.6363,0,0,false],
    ["Land_Cargo20_red_F",[2985.06,18150.5,0.760328],293.637,0,0,false],
    ["Land_ShelvesMetal_F",[2979.71,18182.9,2.46497],270.455,0,0,false],
    ["Land_WaterCooler_01_new_F",[2979.31,18177.4,2.5201],271.818,0,0,false],
    ["Land_CrabCages_F",[2981.58,18197.4,2.12513],178.636,0,0,false],
    ["Land_FishingGear_01_F",[2973.53,18184.7,3.09811],0,0,0,false],
    ["Land_FishingGear_02_F",[2981.87,18133,0.0787574],285,0,0,false],
    ["Land_CratesShabby_F",[2986.12,18166.7,1.21652],151.364,0,0,false],
    ["Land_PaperBox_open_full_F",[2988.17,18176.8,1.28771],0,0,0,false],
    ["Land_Pallet_MilBoxes_F",[2986.39,18176.6,1.52482],0,0,0,false],
    ["Land_CratesWooden_F",[2990,18166.8,0.715592],247.273,0,0,false],
    ["Land_FishingGear_01_F",[2959.63,18196.6,4.05088],111.818,0,0,false],
    ["Land_Sack_F",[2980.24,18186.9,2.355],0,0,0,false],
    ["Land_CratesShabby_F",[2979.79,18181.2,2.2876],38.6363,0,0,false],
    ["Land_Sacks_heap_F",[2979.31,18178.9,2.53538],315.909,0,0,false],
    ["Land_GarbageBarrel_01_F",[2983.95,18128.1,-0.0156045],46.8182,0,0,false],
    ["Land_LuggageHeap_03_F",[2982.09,18194.6,2.17684],112.727,0,0,false],
    ["Land_LampHarbour_F",[2989.9,18173.4,0.931715],87.7273,0,0,false],
    ["Land_LampHarbour_F",[2971.13,18156.8,2.81139],90.4545,0,0,false],
    ["Land_LampHarbour_F",[2994.19,18129,0.109452],357.727,0,0,false],
    ["Land_LampHalogen_F",[2984.64,18196.4,1.69431],92.2728,0,0,false],
    ["Land_Metal_wooden_rack_F",[2987.86,18188.8,1.49702],270.909,0,0,false],
    ["Land_ChairPlastic_F",[2986.77,18185.7,1.66962],295.909,0,0,false],
	["Exile_Sign_TraderCity",[2989.89,18177.6,2.38465],269.091,0,0,false],
    ["Land_Factory_Conv1_Main_F",[2986.77,18130.1,0.453305],89.0909,0,0,false],
    ["Land_cmp_Shed_F",[2974.8,18129.5,0.635305],92.7273,0,0,false],
    ["Land_cmp_Hopper_F",[2963.39,18129.7,1.01499],1.36366,0,0,false],
    ["Land_Tank_rust_F",[2976.74,18173.8,2.68444],271.364,0,0,false],
    ["Land_Wreck_Traw_F",[2888.95,18107.6,-0.438697],226.364,0,0,false],
    ["Land_Wreck_Traw2_F",[2912.17,18124,-0.419091],259.091,0,0,false],
    ["Land_Cargo40_grey_F",[2999.03,18191.5,0.0918059],89.5455,0,0,false],
    ["Land_Cargo40_military_green_F",[2999.4,18179.2,-0.0120748],93.6364,0,0,false],
    ["Land_Cargo40_white_F",[2989.6,18163,0.555966],65.4545,0,0,false],
    ["Land_Cargo20_grey_F",[2994.85,18186.4,0.48924],287.727,0,0,false],
    ["Land_Cargo20_military_green_F",[2990.53,18177.6,0.752363],269.545,0,0,false],
    ["Land_Cargo20_red_F",[2986.75,18155.3,0.730496],180.455,0,0,false],
    ["Land_Cargo10_grey_F",[2997.12,18187.6,2.83392],10,0,0,false],
    ["Land_Pier_Box_F",[2921.94,18197.2,7.9959],0.909088,0,0,false],
    ["Land_Sea_Wall_F",[2989.66,18207.7,-1.14545],179.091,0,0,false],
    ["Land_PierLadder_F",[2969.61,18152.9,-0.217187],87.2728,0,0,false],
	["Land_Lighthouse_small_F",[2916.05,18200.4,8.35624],270.909,0,0,false],
    ["Land_CncBarrier_F",[2977.99,18148.5,1.44238],2.72791,0,0,false],
    ["Land_CncBarrier_F",[2974.63,18148.7,1.86925],2.72791,0,0,false],
    ["Land_CncBarrier_F",[2971.26,18148.8,2.30397],2.72791,0,0,false],
    ["Land_BagFence_Round_F",[2994.5,18166,0.255866],298.636,0,0,false],
    ["Land_HBarrier_1_F",[2992.75,18164.9,0.296927],78.6364,0,0,false],
    ["Land_HBarrier_1_F",[2995.03,18167.9,0.138628],0,0,0,false],
    ["Land_HBarrier_3_F",[2998.5,18169.9,-0.0740088],291.364,0,0,false]
];
/*
#########################################################################################################################################
*/
if (acd_SZ_Default_Fotia_Fast_Food_Trader) then {
	_objects = _objects + [["Exile_Sign_Food",[2978.52,18178.6,2.53195],270,0,0,false]];
};
if (acd_SZ_Default_Fotia_Armory_Trader) then {
	_objects = _objects + [["Exile_Sign_Armory",[2988.82,18179.1,0.973994],91.3636,0,0,false]];
};
if (acd_SZ_Default_Fotia_Equipment_Trader) then {
	_objects = _objects + [["Exile_Sign_Equipment",[2980.48,18195.6,2.1069],0,0,0,false]];
};
if (acd_SZ_Default_Fotia_Waste_Dump_Trader) then {
	_objects = _objects + [["Exile_Sign_WasteDump",[2983.77,18132.1,-0.0161078],191.364,0,0,false]];
};
if (acd_SZ_Default_Fotia_Vehicle_Trader) then {
	_objects = _objects + [["Exile_Sign_Vehicles",[2981.34,18148.4,1.73463],2.72727,0,0,false]];
};
if (acd_SZ_Default_Fotia_Boat_Trader) then {
	_objects = _objects + [["Exile_Sign_Boat",[2912.81,18194.8,8.45451],271.364,0,0,false]];
	_objects = _objects + [["Exile_Sign_Boat_Small",[2971.94,18194.1,2.02326],249.546,0,0,false]];
};

[_objects] call acd_fnc_buildPropsDefault;