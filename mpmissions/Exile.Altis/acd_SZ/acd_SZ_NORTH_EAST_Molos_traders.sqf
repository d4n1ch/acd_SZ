/*
	ACD_SZ - Exile Safe Zones
	acd_SZ_NORTH_EAST_Molos_traders.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/
if (!acd_SZ_NORTH_EAST_Molos) exitWith {
	diag_log format ["### ACD: SAFE ZONE IS OFF: NO TRADERS WILL SPAWN: acd_SZ_NORTH_EAST_Molos = %1 ###", acd_SZ_NORTH_EAST_Molos];
};

if (acd_SZ_NORTH_EAST_Molos_Hardware_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Hardware Trader
	///////////////////////////////////////////////////////////////////////////
	_workBench = "Land_Workbench_01_F" createVehicleLocal [0,0,0];
	_workBench setDir 310;
	_workBench setPosATL [26774.4,24554.2,1.41473];
	
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

if (acd_SZ_NORTH_EAST_Molos_Fast_Food_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Fast Food Trader
	///////////////////////////////////////////////////////////////////////////
	_cashDesk = "Land_CashDesk_F" createVehicleLocal [26795.8,24587.5,1.63101];
	//_cashDesk enableSimulation false;
	_cashDesk setPosATL [26795.8,24587.5,1.63101];
	_cashDesk setDir 42;
	
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

if (acd_SZ_NORTH_EAST_Molos_Armory_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Armory Trader
	///////////////////////////////////////////////////////////////////////////
	_chair = "Land_CampingChair_V2_F" createVehicleLocal [0,0,0];
	_chair setDir 220;    
	_chair setPosATL [26781.9,24530.9,0.42];
	
	[
		"Exile_Trader_Armory",
		"PersianHead_A3_02",
		["InBaseMoves_SittingRifle1"],
		[0, -0.15, -0.45],
		180,
		_chair
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_NORTH_EAST_Molos_Equipment_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Equipment Trader ##
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_Equipment",
		"WhiteHead_19",
		["InBaseMoves_Lean1"],
		[26792.7,24542.8,0.42],
		165
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_NORTH_EAST_Molos_Specops_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Specops Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_SpecialOperations",
		"AfricanHead_02",
		["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
		[26768.6,24547.1,1.52683],
		131.898
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_NORTH_EAST_Molos_Office_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Office Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_Office",
		"GreekHead_A3_04",
		["HubBriefing_scratch", "HubBriefing_stretch", "HubBriefing_think", "HubBriefing_lookAround1", "HubBriefing_lookAround2"],
		[26818.7,24508.6,13.0324],
		41.9634
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_NORTH_EAST_Molos_Waste_Dump_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Waste Dump Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_WasteDump",
		"GreekHead_A3_01",
		["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
		[26760.2,24698.8,0.000976563],
		140.45
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_NORTH_EAST_Molos_Aircraft_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Aircraft Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_Aircraft",
		"WhiteHead_17",
		["LHD_krajPaluby"],
		[26834.2,24576.2,0.442137],
		314
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_NORTH_EAST_Molos_Aircraft_Customs_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Aircraft Customs Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_AircraftCustoms",
		"GreekHead_A3_07",
		["HubStandingUC_idle1", "HubStandingUC_idle2", "HubStandingUC_idle3", "HubStandingUC_move1", "HubStandingUC_move2"],
		[26891.1,24657.4,0.00126076],
		56.1206
	]
	call ExileClient_object_trader_create;
};
if (acd_SZ_NORTH_EAST_Molos_Vehicle_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Vehicle Trader
	///////////////////////////////////////////////////////////////////////////
	_trader = 
	[
		"Exile_Trader_Vehicle",
		"WhiteHead_11",
		//["InBaseMoves_repairVehicleKnl", "InBaseMoves_repairVehiclePne"],
		["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
		[26961,24755.4,0.00149345],
		229.872
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_NORTH_EAST_Molos_Vehicle_Customs_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Vehicle Customs Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_VehicleCustoms",
		"WhiteHead_11",
		["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
		[26965.3,24727.6,0.00141907],
		125.018
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_NORTH_EAST_Molos_Boat_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Boat Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_Boat",
		"GreekHead_A3_04",
		["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
		[26516.8,24761.6,5.26876],
		142
	]
	call ExileClient_object_trader_create;
};
if (acd_SZ_NORTH_EAST_Molos_Boat_Customs_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Boat Customs Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_BoatCustoms",
		"WhiteHead_11",
		["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
		[26509.7,24752.7,7.15376],
		38
	]
	call ExileClient_object_trader_create;
};













