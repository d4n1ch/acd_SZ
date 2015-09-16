/*
	ACD_SZ - Exile Safe Zones
	acd_SZ_EAST_Almyra_traders.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/
if (!acd_SZ_EAST_Almyra) exitWith {
	diag_log format ["### ACD: SAFE ZONE IS OFF: NO TRADERS WILL SPAWN: acd_SZ_EAST_Almyra = %1 ###", acd_SZ_EAST_Almyra];
};
[280,[23188.6,18726.4,0.012877]] call acd_fnc_buildTerminal;
if (acd_SZ_EAST_Almyra_Hardware_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Hardware Trader
	///////////////////////////////////////////////////////////////////////////
	_workBench = "Land_Workbench_01_F" createVehicleLocal [0,0,0];
	_workBench setDir 10;
	_workBench setPosATL [23200.5,18771,0.049315];
	
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

if (acd_SZ_EAST_Almyra_Fast_Food_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Fast Food Trader
	///////////////////////////////////////////////////////////////////////////
	_cashDesk = "Land_CashDesk_F" createVehicleLocal [23189.3,18706.7,0.0493145];
	_cashDesk setDir 100;
	//_cashDesk setPosATL [23186.3,18707.5,0.0493133];
	
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

if (acd_SZ_EAST_Almyra_Armory_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Armory Trader
	///////////////////////////////////////////////////////////////////////////
	
	[
		"Exile_Trader_Armory",
		"WhiteHead_18",
		["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
		[23186.3,18680.8,0.0493145],
		314.335
	]
	call ExileClient_object_trader_create;

};

if (acd_SZ_EAST_Almyra_Equipment_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Equipment Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_Equipment",
		"WhiteHead_19",
		["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
		[23172.2,18684.4,0.0493135],
		69.0636
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_EAST_Almyra_Specops_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Specops Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_SpecialOperations",
		"AfricanHead_02",
		["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
		[23187.7,18772,0.049314],
		111.012
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_EAST_Almyra_Office_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Office Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_Office",
		"GreekHead_A3_04",
		["HubBriefing_scratch", "HubBriefing_stretch", "HubBriefing_think", "HubBriefing_lookAround1", "HubBriefing_lookAround2"],
		[23206,18738.3,5.04932],
		342.951
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_EAST_Almyra_Waste_Dump_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Waste Dump Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_WasteDump",
		"GreekHead_A3_01",
		["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
		[23192.9,18783.6,0.00143385],
		230.657
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_EAST_Almyra_Aircraft_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Aircraft Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_Aircraft",
		"WhiteHead_17",
		["LHD_krajPaluby"],
		[23204.1,18714.2,0.00143886],
		87.8836
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_EAST_Almyra_Aircraft_Customs_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Aircraft Customs Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_AircraftCustoms",
		"GreekHead_A3_07",
		["HubStandingUC_idle1", "HubStandingUC_idle2", "HubStandingUC_idle3", "HubStandingUC_move1", "HubStandingUC_move2"],
		[23208.8,18734.1,0.00143886],
		121.847
	]
	call ExileClient_object_trader_create;
};
if (acd_SZ_EAST_Almyra_Vehicle_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Vehicle Trader
	///////////////////////////////////////////////////////////////////////////
	_trader = 
	[
		"Exile_Trader_Vehicle",
		"WhiteHead_11",
		//["InBaseMoves_repairVehicleKnl", "InBaseMoves_repairVehiclePne"],
		["HubStandingUC_idle1", "HubStandingUC_idle2", "HubStandingUC_idle3", "HubStandingUC_move1", "HubStandingUC_move2"],
		[23210,18760.4,0.0493159],
		8.75788
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_EAST_Almyra_Vehicle_Customs_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Vehicle Customs Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_VehicleCustoms",
		"WhiteHead_11",
		["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
		[23200.9,18687.9,0.0493164],
		223.355
	]
	call ExileClient_object_trader_create;
};















