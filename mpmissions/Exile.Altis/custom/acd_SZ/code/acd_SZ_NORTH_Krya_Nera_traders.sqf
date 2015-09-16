/*
	ACD_SZ - Exile Safe Zones
	acd_SZ_NORTH_Krya_Nera_traders.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/
if (!acd_SZ_NORTH_Krya_Nera) exitWith {
	diag_log format ["### ACD: SAFE ZONE IS OFF: NO TRADERS WILL SPAWN: acd_SZ_NORTH_Krya_Nera = %1 ###", acd_SZ_NORTH_Krya_Nera];
};
[325,[9215.37,21528.2,0.28]] call acd_fnc_buildTerminal;
if (acd_SZ_NORTH_Krya_Nera_Hardware_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Hardware Trader
	///////////////////////////////////////////////////////////////////////////
	_workBench = "Land_Workbench_01_F" createVehicleLocal [0,0,0];
	_workBench setDir 235;
	_workBench setPosATL [9254.26,21534.4,0.00143814];
	
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

if (acd_SZ_NORTH_Krya_Nera_Fast_Food_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Fast Food Trader
	///////////////////////////////////////////////////////////////////////////
	_cashDesk = "Land_CashDesk_F" createVehicleLocal [9232.33,21537.6,-0.07];
	_cashDesk setDir 145;
	//_cashDesk setPosATL [9232.33,21537.6,-0.07];
	
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

if (acd_SZ_NORTH_Krya_Nera_Armory_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Armory Trader
	///////////////////////////////////////////////////////////////////////////
	_chair = "Land_CampingChair_V2_F" createVehicleLocal [0,0,0];
	_chair setDir 62;    
	_chair setPosATL [9252.16,21555.4,0.00144386];
	
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

if (acd_SZ_NORTH_Krya_Nera_Equipment_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Equipment Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_Equipment",
		"WhiteHead_19",
		["InBaseMoves_Lean1"],
		[9248.92,21561.1,0.00145149],
		175
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_NORTH_Krya_Nera_Specops_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Specops Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_SpecialOperations",
		"AfricanHead_02",
		["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
		[9254.51,21547.1,0.00141144],
		326.432
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_NORTH_Krya_Nera_Office_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Office Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_Office",
		"GreekHead_A3_04",
		["HubBriefing_scratch", "HubBriefing_stretch", "HubBriefing_think", "HubBriefing_lookAround1", "HubBriefing_lookAround2"],
		[9235.2,21524.6,5.20143814],
		54
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_NORTH_Krya_Nera_Waste_Dump_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Waste Dump Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_WasteDump",
		"GreekHead_A3_01",
		["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
		[9149.94,21633.5,0.0013895],
		137.375
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_NORTH_Krya_Nera_Aircraft_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Aircraft Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_Aircraft",
		"WhiteHead_17",
		["LHD_krajPaluby"],
		[9179.06,21496.8,0.00143814],
		230.046
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_NORTH_Krya_Nera_Aircraft_Customs_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Aircraft Customs Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_AircraftCustoms",
		"GreekHead_A3_07",
		["HubStandingUC_idle1", "HubStandingUC_idle2", "HubStandingUC_idle3", "HubStandingUC_move1", "HubStandingUC_move2"],
		[9171.13,21512.6,0.00144196],
		273.97
	]
	call ExileClient_object_trader_create;
};
if (acd_SZ_NORTH_Krya_Nera_Vehicle_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Vehicle Trader
	///////////////////////////////////////////////////////////////////////////
	_trader = 
	[
		"Exile_Trader_Vehicle",
		"WhiteHead_11",
		["InBaseMoves_repairVehicleKnl", "InBaseMoves_repairVehiclePne"],
		[9177.94,21672.3,0.00144482],
		90
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_NORTH_Krya_Nera_Vehicle_Customs_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Vehicle Customs Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_VehicleCustoms",
		"WhiteHead_11",
		["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
		[9186.19,21647.2,0.0014534],
		338.087
	]
	call ExileClient_object_trader_create;
};















