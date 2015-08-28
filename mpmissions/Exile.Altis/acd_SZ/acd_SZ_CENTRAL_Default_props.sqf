/*
	ACD_SZ - Exile Safe Zones
	acd_SZ_CENTRAL_Default_props.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/

if (!acd_SZ_CENTRAL_Default) exitWith {
	diag_log format ["### ACD: SAFE ZONE IS OFF: NO PROPS WILL BE BUILT: acd_SZ_CENTRAL_Default = %1 ###", acd_SZ_CENTRAL_Default];
};
diag_log format ["### ACD: SAFE ZONE: LOADING: acd_SZ_CENTRAL_Default_props ###"];
/*
#########################################################################################################################################
*/
_objects = 
[
    ["Land_CarService_F",[14618.7,16877.4,0.900759],131.363,0,0,false],
    ["Land_cargo_addon02_V2_F",[14563.7,16776.6,1.55995],133.636,0,0,false],
    ["Land_cargo_addon02_V1_F",[14619.2,16831.5,1.28255],315,0,0,false],
    ["Land_ScrapHeap_1_F",[14630.3,16882.7,-0.109264],180,0,0,false],
    ["Land_ScrapHeap_2_F",[14616,16869,0.226768],101.818,0,0,false],
    ["Land_PaperBox_open_full_F",[14569.5,16763.1,0],17.2727,0,0,false],
    ["Land_PaperBox_open_empty_F",[14563.8,16770.5,0],0,0,0,false],
    ["Land_PaperBox_closed_F",[14563.1,16768.8,0],0,0,0,false],
    ["Land_Basket_F",[14583.6,16778.2,0.0218143],0,0,0,false],
    ["Land_Cages_F",[14573.2,16797.4,0.0246239],227.728,0,0,false],
    ["Land_CratesPlastic_F",[14588.4,16777.7,0.0814972],4.09093,0,0,false],
    ["Land_CratesShabby_F",[14587.2,16789,0.0682163],224.546,0,0,false],
    ["Land_CratesWooden_F",[14575.3,16773.2,0.0674362],42.7273,0,0,false],
    ["Land_Sack_F",[14583.1,16777.7,0],0,0,0,false],
    ["Land_Sacks_goods_F",[14592.5,16779.1,0],332.727,0,0,false],
    ["Land_Sacks_heap_F",[14590.7,16784.9,0.0458984],0,0,0,false],
    ["Land_StallWater_F",[14640.4,16843,0],0,0,0,false],
    ["CargoNet_01_barrels_F",[14589.9,16759.6,0],0,0,0,false],
    ["Land_Pallet_F",[14594.3,16763.7,0.0939865],285.455,0,0,false],
    ["Land_Pallet_vertical_F",[14581.9,16765.9,0],45.4545,0,0,false],
    ["Land_Pallets_F",[14580.6,16768.9,0.0738373],0,0,0,false],
    ["Land_Pallets_stack_F",[14581.7,16767.2,0],13.1818,0,0,false],
    ["Land_ToolTrolley_02_F",[14586.3,16760.1,0.0857067],324.091,0,0,false],
    ["Land_WeldingTrolley_01_F",[14587.8,16755.4,0.0746555],330,0,0,false],
    ["Land_HBarrier_Big_F",[14581.9,16798.9,-1.56202],225,0,0,false],
    ["Land_HBarrier_Big_F",[14608,16825.5,-1.5132],210.454,0,0,false],
    ["Land_HBarrier_Big_F",[14615.5,16772.5,0],134.545,0,0,false],
    ["Land_HBarrier_Big_F",[14584.1,16880.5,0],48.1818,0,0,false],
    ["Land_HBarrier_Big_F",[14583.7,16745.7,-0.100584],45.4545,0,0,false],
    ["Land_HBarrier_Big_F",[14625.5,16880.5,0],41.8181,0,0,false],
    ["Land_HBarrier_3_F",[14574.1,16796.2,-0.122681],321.363,0,0,false],
    ["Land_HBarrier_3_F",[14601.2,16825.7,-0.560675],316.818,0,0,false],
    ["Land_HBarrier_5_F",[14647.4,16807.7,-0.0022068],249.546,0,0,false],
    ["Land_HBarrier_Big_F",[14570.6,16788,-1.583],64.0909,0,0,false],
    ["Land_HBarrier_Big_F",[14601.1,16818.8,-1.50673],68.6363,0,0,false],
    ["Land_CampingTable_F",[14567.6,16766.2,0],3.18139,0,0,false],
    ["Land_Icebox_F",[14589.6,16776.7,0],41.3637,0,0,false],
    ["Land_Metal_rack_Tall_F",[14575.7,16759.5,0.0808544],135,0,0,false],
    ["Land_Metal_rack_F",[14564.1,16772.7,0.0616436],310,0,0,false],
    ["Fridge_01_closed_F",[14588.9,16775,0.0145626],134.091,0,0,false],
    ["Land_WaterCooler_01_new_F",[14584,16777.7,0],221.364,0,0,false],
    ["MapBoard_altis_F",[14569.3,16776.3,0],0,0,0,false],
    ["Land_WoodenTable_large_F",[14567.5,16775.3,0.0718784],228.637,0,0,false],
    ["Land_ShelvesMetal_F",[14593.7,16780.7,0],135.455,0,0,false],
    ["Land_ShelvesMetal_F",[14592.3,16782.2,0],135.455,0,0,false],
    ["Land_Pallet_MilBoxes_F",[14565.7,16767.3,0],142.727,0,0,false],
    ["Land_OfficeChair_01_F",[14598.3,16776.1,5.06913],15.4545,0,0,false],
    ["Land_OfficeCabinet_01_F",[14600.3,16776.2,5.06487],41.3636,0,0,false],
    ["OfficeTable_01_new_F",[14597.7,16775.2,5.03676],222.727,0,0,false],
    ["MapBoard_seismic_F",[14602.1,16773.7,5.09502],78.6364,0,0,false],
    ["Land_Document_01_F",[14597.9,16775,5.92855],229.091,0,0,false],
    ["Land_FlatTV_01_F",[14594,16774,6.06975],317.273,0,0,false],
    ["Land_GamingSet_01_controller_F",[14594.1,16773.7,6.05486],300.909,0,0,false],
    ["Land_GamingSet_01_console_F",[14594,16773.9,5.70917],311.818,0,0,false],
    ["Land_GamingSet_01_camera_F",[14594.2,16774,6.0655],315.455,0,0,false],
    ["Land_Laptop_device_F",[14597.4,16775.3,5.92166],55.9091,0,0,false],
    ["Land_ShelvesWooden_F",[14594.1,16773.9,5.02118],48.6364,0,0,false],
    ["Target_PopUp3_Moving_90deg_Acc2_NoPop_F",[14575,16771.4,-0.0290985],15.9091,0,0,false],
    ["Land_LuggageHeap_04_F",[14573.5,16758.3,0],220.909,0,0,false],
    ["Land_LuggageHeap_02_F",[14570.4,16760.9,0],328.182,0,0,false],
    ["Land_LuggageHeap_03_F",[14576,16760.6,0],0,0,0,false],
    ["Land_LuggageHeap_01_F",[14570.7,16762.6,0],0,0,0,false],
    ["Land_LuggageHeap_05_F",[14623.8,16912.5,0.13373],0,0,0,false],
    ["Land_DieselGroundPowerUnit_01_F",[14619.6,16885.6,-0.0260029],194.091,0,0,false],
    ["Land_JetEngineStarter_01_F",[14591.7,16755.2,-0.0759811],224.545,0,0,false],
    ["CargoNet_01_barrels_F",[14612,16875.3,0],0,0,0,false],
    ["Land_Shed_Small_F",[14601.9,16918.3,0.275198],134.545,0,0,false],
    ["Land_Factory_Conv1_Main_F",[14615.2,16905.2,0.5263],223.636,0,0,false],
    ["Land_FishingGear_01_F",[14621.9,16912.1,0],0,0,0,false],
    ["Land_FishingGear_02_F",[14622.3,16915.5,0],236.818,0,0,false],
    ["Land_Garbage_square3_F",[14627.8,16914.7,0],0,0,0,false],
    ["Land_GarbageBags_F",[14622.5,16909.9,0],0,0,0,false],
    ["Land_GarbagePallet_F",[14625.1,16910.1,0.043684],0,0,0,false],
    ["Land_GarbageWashingMachine_F",[14626.6,16912.8,0.0810776],0,0,0,false],
    ["Land_JunkPile_F",[14619.5,16914.1,0.0174961],194.091,0,0,false],
    ["Land_Tyres_F",[14625,16914.9,0],278.182,0,0,false],
    ["Land_GarbageContainer_open_F",[14611.5,16911.7,0.0286407],308.182,0,0,false],
    ["Land_GarbageContainer_closed_F",[14607.6,16908.4,0],0,0,0,false],
    ["Land_Wreck_Car3_F",[14626.6,16904.6,0],0,0,0,false],
    ["Land_Wreck_Offroad_F",[14632.2,16918.2,-0.165903],300,0,0,false],
    ["Land_Wreck_Hunter_F",[14625,16923.2,0],0,0,0,false],
    ["Land_Cargo_HQ_V2_F",[14531.5,16758.9,0.617796],135.909,0,0,false],
    ["Land_Cargo_Patrol_V2_F",[14602.6,16702.8,0.16],135,0,0,false],
    ["Exile_Cosmetic_MG",[14568,16774.8,0.125793],271.364,0,0,false],
    ["Exile_Cosmetic_UAV",[14567.2,16775,0.90451],0,0,0,false],
    ["Land_CampingChair_V2_F",[14567.2,16766.9,0.084837],310.909,0,0,false],
    ["CargoNet_01_barrels_F",[14572.6,16773.2,0],327.273,0,0,false],
    ["Land_PaperBox_closed_F",[14573.8,16772,0],315.909,0,0,false],
    ["Land_PaperBox_open_full_F",[14579.8,16765.3,0],309.091,0,0,false],
    ["Land_PaperBox_open_empty_F",[14578.4,16766.9,0],0,0,0,false],
    ["Land_CanisterPlastic_F",[14578.4,16765.7,0],0,0,0,false],
    ["Land_Suitcase_F",[14570.1,16763.9,0.0941372],13.1818,0,0,false],
    ["Land_Bricks_V1_F",[14583.1,16751.1,0],312.273,0,0,false],
    ["Land_Bricks_V2_F",[14582.1,16752.1,0],41.8182,0,0,false],
    ["Land_Bricks_V3_F",[14581.1,16753.2,0],301.818,0,0,false],
    ["Land_Bricks_V4_F",[14580.1,16754.1,0],309.091,0,0,false],
    ["Land_Pallets_stack_F",[14583.7,16753,0],25.9091,0,0,false],
    ["Land_ToolTrolley_01_F",[14577.9,16756.1,0.10862],134.091,0,0,false],
    ["Land_GasTank_02_F",[14579.1,16754.6,0],0,0,0,false],
    ["Land_WheelCart_F",[14583.9,16761.7,0.101553],129.091,0,0,false],
    ["Land_WoodenBox_F",[14581.8,16754.2,0],38.6364,0,0,false],
    ["Land_MobileLandingPlatform_01_F",[14597.3,16744.1,0],0,0,0,false],
    ["Land_Tyre_F",[14604.2,16879.2,0],0,0,0,false],
    ["Land_Tyre_F",[14604.3,16875.8,0],0,0,0,false],
    ["Land_Tyre_F",[14607.1,16879,0],24.0909,0,0,false],
    ["Land_Tyre_F",[14607.2,16876.2,0],0,0,0,false],
    ["Land_Tyres_F",[14610.8,16871.7,-0.154099],0,0,0,false],
    ["Land_CanisterOil_F",[14604.4,16878.3,0],283.182,0,0,false],
    ["Land_CarBattery_02_F",[14603.8,16878.7,0],330.455,0,0,false],
    ["Oil_Spill_F",[14616.5,16887.6,0],0,0,0,false],
    ["Land_KartTrolly_01_F",[14620.2,16889.6,0],36.8182,0,0,false],
    ["Land_BucketNavy_F",[14619.1,16888.6,0.803673],284.091,0,0,false],
    ["Land_Bucket_painted_F",[14619.1,16889.1,0.796772],0,0,0,false],
    ["Land_ButaneCanister_F",[14618.9,16889,0.816645],103.636,0,0,false],
    ["Land_CanisterFuel_F",[14616.8,16887.3,0.0114574],301.364,0,0,false],
    ["Land_CanisterPlastic_F",[14619,16889.5,0.00942993],5.45456,0,0,false],
    ["Land_CarBattery_02_F",[14618.8,16887.6,0.795959],329.091,0,0,false],
    ["Land_CarBattery_01_F",[14619.1,16887.7,0.812311],102.727,0,0,false],
    ["Land_CampingTable_F",[14618.9,16888.3,0],94.0909,0,0,false],
    ["Land_CampingChair_V1_folded_F",[14618.8,16886.3,0],49.5454,0,0,false],
    ["Land_CampingChair_V1_F",[14617.8,16886.5,0],163.636,0,0,false],
    ["Land_GasTank_01_yellow_F",[14620.2,16889.6,0.120775],0,0,0,false],
    ["Land_Garbage_square5_F",[14607.2,16899.9,0],0,0,0,false],
    ["Land_GarbageBarrel_01_F",[14610,16902.2,0],0,0,0,false],
    ["Land_WheelieBin_01_F",[14608.6,16899.1,0],50,0,0,false],
    ["Land_cargo_house_slum_ruins_F",[14629.2,16910.5,0],300,0,0,false],
    ["Exile_Sign_TraderCity",[14554.8,16906.4,0.0827427],132.273,0,0,false],
    ["Land_FuelStation_Build_F",[14624.3,16894.8,0],72.2727,0,0,false],
    ["Land_FuelStation_Sign_F",[14621.4,16898.1,0],0,0,0,false],
    ["Land_FuelStation_Feed_F",[14619.2,16895.9,0],255.909,0,0,false],
    ["Land_HBarrier_3_F",[14564.3,16928.2,-0.373081],355.455,0,0,false],
    ["Land_HBarrier_5_F",[14569.5,16924.4,-0.458673],241.818,0,0,false],
    ["Land_HBarrier_Big_F",[14561.6,16922.1,-1.22993],44.0909,0,0,false],
    ["Land_HBarrier_1_F",[14560.4,16927.6,-0.543379],43.1818,0,0,false],
    ["Land_BagFence_Round_F",[14567.3,16928,0],205,0,0,false],
    ["Land_BagFence_Short_F",[14561.8,16928.2,-0.119961],165,0,0,false],
    ["Land_BagFence_Long_F",[14568.6,16921.7,-0.176878],146.818,0,0,false],
    ["Land_CampingTable_small_F",[14567.9,16923.5,0],0,0,0,false],
    ["Land_CampingChair_V1_F",[14567.8,16925,0],0,0,0,false],
    ["Land_CampingChair_V1_folded_F",[14567.4,16922.3,0],0,0,0,false],
    ["Land_TentDome_F",[14562.4,16925.7,-0.0643864],0,0,0,false],
    ["Land_Sleeping_bag_F",[14566.6,16925.9,0.0138779],26.3636,0,0,false],
    ["Land_WoodPile_F",[14562.7,16923.1,-0.0632286],314.545,0,0,false],
    ["Land_Sleeping_bag_folded_F",[14567.1,16926.9,0],0,0,0,false],
    ["Land_FirePlace_F",[14564.8,16925.6,0],0,0,0,false],
    ["Land_DischargeStick_01_F",[14636,16792.6,0.876028],54.0909,0,0,false],
    ["Land_RotorCoversBag_01_F",[14635.5,16792.5,0.0543289],337.727,0,0,false],
    ["Land_Bucket_clean_F",[14635.3,16792.2,0.892477],2.72728,0,0,false],
    ["Land_Bucket_painted_F",[14635.5,16792.6,0.877222],0,0,0,false],
    ["Land_FireExtinguisher_F",[14634.8,16792,0.114384],0,0,0,false],
    ["Land_FoodContainer_01_F",[14636.3,16793.2,0.108646],0,0,0,false],
    ["Land_SatellitePhone_F",[14636.3,16793.1,0.882061],0,0,0,false],
    ["Land_CampingChair_V1_F",[14634.3,16791.2,0.0908852],331.818,0,0,false],
    ["Land_CampingTable_F",[14635.8,16792.6,0.0767517],139.091,0,0,false],
    ["Land_AirIntakePlug_01_F",[14633.9,16790.4,0.104982],323.636,0,0,false],
    ["Land_CncBarrier_stripes_F",[14576.7,16799.3,-0.0303631],135,0,0,false],
    ["Land_CncBarrier_stripes_F",[14570.7,16794.1,-0.0152855],131.364,0,0,false],
    ["Land_HBarrier_5_F",[14643.4,16803.9,-0.449659],359.546,0,0,false],
    ["Land_CncBarrier_stripes_F",[14629.2,16793,-0.0152855],134.545,0,0,false],
    ["Land_CncBarrier_stripes_F",[14602.7,16766.3,-0.0152855],135,0,0,false],
    ["Land_CncBarrier_stripes_F",[14588.2,16750.6,-0.0152855],135,0,0,false],
    ["Land_Pier_Box_F",[14673.6,16798.4,4.75256],135,0,0,false],
    ["Land_Pier_Box_F",[14577.1,16723.9,4.7526],225,0,0,false],
    ["Land_Bunker_F",[14665.2,16788.9,0.603167],45,0,0,false],
    ["Land_Cargo40_military_green_F",[14584.4,16715.4,-0.0884686],315.455,0,0,false],
    ["Land_Cargo20_grey_F",[14582.7,16707.1,-0.0472679],0,0,0,false],
    ["Land_Cargo10_grey_F",[14576,16704.8,-0.0422192],287.727,0,0,false]
];
/*
#########################################################################################################################################
*/
if (acd_SZ_CENTRAL_Default_Hardware_Trader) then {
	_objects = _objects + [["Exile_Sign_Hardware",[14588.9,16756.8,-0.0888233],99.9999,0,0,false]];
	_objects = _objects + [["Exile_Sign_Hardware_Small",[14584.4,16763.2,-0.593672],223.182,0,0,false]];
};
if (acd_SZ_CENTRAL_Default_Fast_Food_Trader) then {
	_objects = _objects + [["Exile_Sign_Food",[14591.4,16777.4,0],135,0,0,false]];
};
if (acd_SZ_CENTRAL_Default_Armory_Trader) then {
	_objects = _objects + [["Exile_Sign_Armory",[14567,16763.8,0],223.636,0,0,false]];
	_objects = _objects + [["Exile_Sign_Armory_Small",[14576.5,16771.2,-0.595539],225,0,0,false]];
};
if (acd_SZ_CENTRAL_Default_Equipment_Trader) then {
	_objects = _objects + [["Exile_Sign_Equipment",[14573.4,16758.3,-0.0768528],182.727,0,0,false]];
	_objects = _objects + [["Exile_Sign_Equipment_Small",[14579.5,16768.1,-0.598721],224.545,0,0,false]];
};
if (acd_SZ_CENTRAL_Default_Specops_Trader) then {
	_objects = _objects + [["Exile_Sign_SpecialOperations",[14565.6,16774,-0.216286],311.364,0,0,false]];
	_objects = _objects + [["Exile_Sign_SpecialOperations_Small",[14573,16774.7,-0.609268],226.818,0,0,false]];
};
if (acd_SZ_CENTRAL_Default_Office_Trader) then {
	_objects = _objects + [["Exile_Sign_Office",[14596.3,16776.3,5.08921],317.727,0,0,false]];
	_objects = _objects + [["Exile_Sign_Office_Small",[14588.1,16772.5,-0.586533],45,0,0,false]];
	_objects = _objects + [["Exile_Sign_Office_Small",[14592.6,16773.2,4.07346],135,0,0,false]];
};
if (acd_SZ_CENTRAL_Default_Waste_Dump_Trader) then {
	_objects = _objects + [["Exile_Sign_WasteDump",[14609.2,16898.9,0.269833],43.6364,0,0,false]];
};
if (acd_SZ_CENTRAL_Default_Aircraft_Trader) then {
	_objects = _objects + [["Exile_Sign_Aircraft",[14593.7,16753.7,-0.0337811],223.636,0,0,false]];
	_objects = _objects + [["Exile_Sign_Aircraft_Small",[14595.9,16765.1,-0.607029],131.818,0,0,false]];
};
if (acd_SZ_CENTRAL_Default_Aircraft_Customs_Trader) then {
	_objects = _objects + [["Exile_Sign_AircraftCustoms",[14634.8,16792.4,-0.179749],314.545,0,0,false]];
	_objects = _objects + [["Exile_Sign_AircraftCustoms_Small",[14633.2,16800.4,-0.675537],143.182,0,0,false]];
	_objects = _objects + [["Exile_Sign_AircraftCustoms_Small",[14614.6,16799.5,-0.608391],45.9092,0,0,false]];
};
if (acd_SZ_CENTRAL_Default_Vehicle_Trader) then {
	_objects = _objects + [["Exile_Sign_Vehicles",[14610.1,16872.5,0.308447],131.818,0,0,false]];
};
if (acd_SZ_CENTRAL_Default_Vehicle_Customs_Trader) then {
	_objects = _objects + [["Exile_Sign_VehicleCustoms",[14619.4,16888.2,-0.0942593],91.8182,0,0,false]];
};

{
    private ["_object"];
	if (acd_debug) then {
	diag_log format ["### _x = %1 ###",_x];
	};
    _object = (_x select 0) createVehicleLocal [0,0,0];
    _object setDir (_x select 2);
    _object setPosATL (_x select 1);
    _object enableSimulation false; // :)
	if (acd_debug) then {
	diag_log format ["### _object = %1 ###",_object];
	};
}
forEach _objects;
if (acd_SZ_CENTRAL_Default_IS_SAFE) then {
/*
	SZ Marker
*/
acd_SZ_CENTRAL_Default_marker = createMarker ["TraderCityMarker",[14600,16797.199,22.35]];
"TraderCityMarker" setMarkerShape "ELLIPSE";
"TraderCityMarker" setMarkerSize [175,175];
"TraderCityMarker" setMarkerBrush "SolidBorder";
"TraderCityMarker" setMarkerColor "ColorBlue";
"TraderCityMarker" setMarkerAlpha 1;
"TraderCityMarker" setMarkerText "Mafia Trader City";
/*
	SZ Sensor
*/
ExileTrader = createTrigger ["EmptyDetector",[14600,16797.199,22.35]];
ExileTrader setTriggerArea [175,175,0,true];
ExileTrader setTriggerStatements ["(vehicle player) in thisList","call ExileClient_object_player_event_onEnterSafezone","call ExileClient_object_player_event_onLeaveSafezone"];
ExileTrader setTriggerActivation ["ANY","PRESENT",true];
} else {
/*
	Trading Outpost Marker
*/
acd_SZ_CENTRAL_Default_marker = createMarker ["TraderCityMarker",[14600,16797.199,22.35]];
"TraderCityMarker" setMarkerShape "ICON";
"TraderCityMarker" setMarkerType "MinefieldAP";
"TraderCityMarker" setMarkerSize [0.60000002,0.60000002];
"TraderCityMarker" setMarkerColor "ColorBlack";
"TraderCityMarker" setMarkerText "Black market";	
};
