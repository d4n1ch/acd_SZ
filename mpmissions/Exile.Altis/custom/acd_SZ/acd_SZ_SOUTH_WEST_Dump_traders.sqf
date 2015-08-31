/*
	ACD_SZ - Exile Safe Zones
	acd_SZ_SOUTH_WEST_Dump_traders.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/
if (!acd_SZ_SOUTH_WEST_Dump) exitWith {
	diag_log format ["### ACD: SAFE ZONE IS OFF: NO TRADERS WILL SPAWN: acd_SZ_SOUTH_WEST_Dump = %1 ###", acd_SZ_SOUTH_WEST_Dump];
};

if (acd_SZ_SOUTH_WEST_Dump_Hardware_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Hardware Trader
	///////////////////////////////////////////////////////////////////////////
	//_workBench = "Land_Workbench_01_F" createVehicleLocal [0,0,0];
	//_workBench setDir 135.2;
	//_workBench setPosATL [20923.1,7283.33,1.84752];
	
	[
		"Exile_Trader_Hardware",
		"WhiteHead_17",
		//["InBaseMoves_sitHighUp1"],
		["HubStandingUC_idle1", "HubStandingUC_idle2", "HubStandingUC_idle3", "HubStandingUC_move1", "HubStandingUC_move2"],
		[5922.87,12557.6,0.00144958],
		//[0, 0, -0.5],
		130.254//,
		//_workBench
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_SOUTH_WEST_Dump_Fast_Food_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Fast Food Trader
	///////////////////////////////////////////////////////////////////////////
	//_cashDesk = "Land_CashDesk_F" createVehicleLocal [20769.8,7256.78,0.00140953];
	//_cashDesk enableSimulation false;
	//_cashDesk setPosATL [20768.5,7257.59,0.00147629];
	//_cashDesk setDir 321;
	
	//_microwave = "Land_Microwave_01_F" createVehicleLocal [0,0,0];
	//_cashDesk disableCollisionWith _microwave;         
	//_microwave disableCollisionWith _cashDesk; 
	//_microwave attachTo [_cashDesk, [-0.6, 0.2, 1.1]];
	//
	//_ketchup = "Land_Ketchup_01_F" createVehicleLocal [0,0,0];
	//_cashDesk disableCollisionWith _ketchup;         
	//_ketchup disableCollisionWith _cashDesk; 
	//_ketchup attachTo [_cashDesk, [-0.6, 0, 1.1]];
	//
	//_mustard = "Land_Mustard_01_F" createVehicleLocal [0,0,0];
	//_cashDesk disableCollisionWith _mustard;         
	//_mustard disableCollisionWith _cashDesk; 
	//_mustard attachTo [_cashDesk, [-0.5, -0.05, 1.1]];
	
	[
		"Exile_Trader_Food",
		"GreekHead_A3_01",
		//["InBaseMoves_table1"],
		["HubStandingUC_idle1", "HubStandingUC_idle2", "HubStandingUC_idle3", "HubStandingUC_move1", "HubStandingUC_move2"],
		//[0.1, 0.5, 0.2],
		[5959.54,12550.4,0.0417252],
		//170,
		265.772//,
		//_cashDesk
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_SOUTH_WEST_Dump_Armory_Trader) then {
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
		[5911.3,12540,0.137268],
		73.5979//,
		//_chair
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_SOUTH_WEST_Dump_Equipment_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Equipment Trader ##
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_Equipment",
		"WhiteHead_19",
		//["InBaseMoves_Lean1"],
		["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
		[5914.14,12537.4,0.371315],
		7.50587
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_SOUTH_WEST_Dump_Specops_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Specops Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_SpecialOperations",
		"AfricanHead_02",
		["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
		[5971.47,12544.6,1.07499],
		260.632
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_SOUTH_WEST_Dump_Office_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Office Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_Office",
		"GreekHead_A3_04",
		["HubBriefing_scratch", "HubBriefing_stretch", "HubBriefing_think", "HubBriefing_lookAround1", "HubBriefing_lookAround2"],
		[5934.08,12568.3,4.20188],
		222.846
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_SOUTH_WEST_Dump_Waste_Dump_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Waste Dump Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_WasteDump",
		"GreekHead_A3_0w",
		["HubStandingUC_idle1", "HubStandingUC_idle2", "HubStandingUC_idle3", "HubStandingUC_move1", "HubStandingUC_move2"],
		[5927.02,12491.4,0.00158691],
		48.6046
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_SOUTH_WEST_Dump_Vehicle_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Vehicle Trader
	///////////////////////////////////////////////////////////////////////////
	_trader = 
	[
		"Exile_Trader_Vehicle",
		"WhiteHead_11",
		//["InBaseMoves_repairVehicleKnl", "InBaseMoves_repairVehiclePne"],
		["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
		[6002.49,12528.3,0.00124359],
		246.582
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_SOUTH_WEST_Dump_Vehicle_Customs_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Vehicle Customs Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_VehicleCustoms",
		"WhiteHead_11",
		["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
		[5955.69,12534.1,0.00143433],
		285.94
	]
	call ExileClient_object_trader_create;
};
if (acd_SZ_SOUTH_WEST_Dump_Guards) then {	
	///////////////////////////////////////////////////////////////////////////
	// Guard 01 small tower
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Guard_01",
		"WhiteHead_17",
		["InBaseMoves_patrolling1"],
		[5900.94,12465.9,8.11911],
		107.106
	]
	call ExileClient_object_trader_create;
	
	///////////////////////////////////////////////////////////////////////////
	// Guard 02 big tower
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Guard_02",
		"WhiteHead_03",
		["InBaseMoves_patrolling2"],
		[5968.56,12540.5,18.5022],
		184.174
	]
	call ExileClient_object_trader_create;
	
	///////////////////////////////////////////////////////////////////////////
	// Guard 03 bunker 1
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Guard_03",
		"AfricanHead_03",
		["InBaseMoves_patrolling1"],
		[5940.41,12574.7,2.80973],
		40.3324
	]
	call ExileClient_object_trader_create;
	///////////////////////////////////////////////////////////////////////////
	// Guard 04 bunker 2
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Guard_03",
		"AfricanHead_03",
		["InBaseMoves_patrolling1"],
		[6023.05,12535.9,2.82238],
		11.5
	]
	call ExileClient_object_trader_create;
};













