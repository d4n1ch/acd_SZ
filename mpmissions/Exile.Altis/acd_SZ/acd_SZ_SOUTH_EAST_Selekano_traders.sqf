/*
	ACD_SZ - Exile Safe Zones
	acd_SZ_SOUTH_EAST_Selekano_traders.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/
if (!acd_SZ_SOUTH_EAST_Selekano) exitWith {
	diag_log format ["### ACD: SAFE ZONE IS OFF: NO TRADERS WILL SPAWN: acd_SZ_SOUTH_EAST_Selekano = %1 ###", acd_SZ_SOUTH_EAST_Selekano];
};

if (acd_SZ_SOUTH_EAST_Selekano_Hardware_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Hardware Trader
	///////////////////////////////////////////////////////////////////////////
	_workBench = "Land_Workbench_01_F" createVehicleLocal [0,0,0];
	_workBench setDir 135.2;
	_workBench setPosATL [20923.1,7283.33,1.84752];
	
	[
		"Exile_Trader_Hardware",
		"WhiteHead_17",
		["InBaseMoves_sitHighUp1"],
		[0, 0, -0.5],
		170,
		_workBench
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_SOUTH_EAST_Selekano_Fast_Food_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Fast Food Trader
	///////////////////////////////////////////////////////////////////////////
	_cashDesk = "Land_CashDesk_F" createVehicleLocal [20769.8,7256.78,0.00140953];
	//_cashDesk enableSimulation false;
	_cashDesk setPosATL [20768.5,7257.59,0.00147629];
	_cashDesk setDir 321;
	
	_microwave = "Land_Microwave_01_F" createVehicleLocal [0,0,0];
	_cashDesk disableCollisionWith _microwave;         
	_microwave disableCollisionWith _cashDesk; 
	_microwave attachTo [_cashDesk, [-0.6, 0.2, 1.1]];
	
	_ketchup = "Land_Ketchup_01_F" createVehicleLocal [0,0,0];
	_cashDesk disableCollisionWith _ketchup;         
	_ketchup disableCollisionWith _cashDesk; 
	_ketchup attachTo [_cashDesk, [-0.6, 0, 1.1]];
	
	_mustard = "Land_Mustard_01_F" createVehicleLocal [0,0,0];
	_cashDesk disableCollisionWith _mustard;         
	_mustard disableCollisionWith _cashDesk; 
	_mustard attachTo [_cashDesk, [-0.5, -0.05, 1.1]];
	
	[
		"Exile_Trader_Food",
		"GreekHead_A3_01",
		["InBaseMoves_table1"],
		[0.1, 0.5, 0.2],
		170,
		_cashDesk
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_SOUTH_EAST_Selekano_Armory_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Armory Trader
	///////////////////////////////////////////////////////////////////////////
	//_chair = "Land_CampingChair_V2_F" createVehicleLocal [0,0,0];
	//_chair setDir 180.901;    
	//_chair setPosATL [20918.9,7330.07,0.00139999];
	
	[
		"Exile_Trader_Armory",
		"WhiteHead_18",
		//["InBaseMoves_SittingRifle1"],
		["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
		//["AmovPercMstpSrasWrflDnon_Salute","ActsPercMstpSnonWpstDnon_sceneBardak01"],
		//[0, -0.15, -0.45],
		[20918.9,7330.07,0.00139999],
		180//,
		//_chair
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_SOUTH_EAST_Selekano_Equipment_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Equipment Trader ##
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_Equipment",
		"WhiteHead_19",
		//["InBaseMoves_Lean1"],
		["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
		[20926.4,7328.71,0.00126266],
		208.455
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_SOUTH_EAST_Selekano_Specops_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Specops Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_SpecialOperations",
		"AfricanHead_02",
		["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
		[20918.8,7304.74,0.00146866],
		356.284
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_SOUTH_EAST_Selekano_Office_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Office Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_Office",
		"GreekHead_A3_04",
		["HubBriefing_scratch", "HubBriefing_stretch", "HubBriefing_think", "HubBriefing_lookAround1", "HubBriefing_lookAround2"],
		[20916.7,7279.37,12.9759],
		225.248
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_SOUTH_EAST_Selekano_Waste_Dump_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Waste Dump Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_WasteDump",
		"GreekHead_A3_01",
		["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
		[20766.9,7186.2,0.00149727],
		48.6046
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_SOUTH_EAST_Selekano_Aircraft_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Aircraft Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_Aircraft",
		"WhiteHead_17",
		["LHD_krajPaluby"],
		[20964.8,7365.56,0.00168991],
		341.031
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_SOUTH_EAST_Selekano_Aircraft_Customs_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Aircraft Customs Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_AircraftCustoms",
		"GreekHead_A3_07",
		["HubStandingUC_idle1", "HubStandingUC_idle2", "HubStandingUC_idle3", "HubStandingUC_move1", "HubStandingUC_move2"],
		[20774.8,7209.18,0.0014801],
		52
	]
	call ExileClient_object_trader_create;
};
if (acd_SZ_SOUTH_EAST_Selekano_Vehicle_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Vehicle Trader
	///////////////////////////////////////////////////////////////////////////
	_trader = 
	[
		"Exile_Trader_Vehicle",
		"WhiteHead_11",
		//["InBaseMoves_repairVehicleKnl", "InBaseMoves_repairVehiclePne"],
		["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
		[20823.9,7212.08,0.00144768],
		325.519
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_SOUTH_EAST_Selekano_Vehicle_Customs_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Vehicle Customs Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_VehicleCustoms",
		"WhiteHead_11",
		["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
		[20821.6,7210.89,0.00143051],
		332
	]
	call ExileClient_object_trader_create;
};













