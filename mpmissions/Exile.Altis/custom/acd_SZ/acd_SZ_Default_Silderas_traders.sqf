/*
	ACD_SZ - Exile Safe Zones
	acd_SZ_Default_Silderas_traders.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/
if (!acd_SZ_Default_Silderas) exitWith {
	diag_log format ["### ACD: SAFE ZONE IS OFF: NO TRADERS WILL SPAWN: acd_SZ_Default_Silderas = %1 ###", acd_SZ_Default_Silderas];
};

if (acd_SZ_Default_Silderas_Hardware_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Eastern Hardware Trader
	///////////////////////////////////////////////////////////////////////////
	_workBench = "Land_Workbench_01_F" createVehicleLocal [0,0,0];
	_workBench setDir 279.545;
	_workBench setPosATL [23371.6, 24188, 0.89873];
	
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
if (acd_SZ_Default_Silderas_Fast_Food_Trader) then {	
	///////////////////////////////////////////////////////////////////////////
	// Eastern Fast Food Trader
	///////////////////////////////////////////////////////////////////////////
	_cashDesk = "Land_CashDesk_F" createVehicleLocal [0,0,0];
	_cashDesk setDir 222.727;
	_cashDesk setPosATL [23353.1, 24168, 0.16585];
	
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
if (acd_SZ_Default_Silderas_Armory_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Eastern Armory Trader
	///////////////////////////////////////////////////////////////////////////
	_chair = "Land_CampingChair_V2_F" createVehicleLocal [0,0,0];
	_chair setDir 12.7272;
	_chair setPosATL [23379.6, 24169.3, 4.56662];
	
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

if (acd_SZ_Default_Silderas_Equipment_Trader) then {	
	///////////////////////////////////////////////////////////////////////////
	// Eastern Equipment Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_Equipment",
		"WhiteHead_19",
		["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
		[23379.9, 24169.3, 0.199955],
		206
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_Default_Silderas_Waste_Dump_Trader) then {	
	///////////////////////////////////////////////////////////////////////////
	// Eastern Waste Dump Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_WasteDump",
		"GreekHead_A3_01",
		["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
		[23336.6,24214.4,0.00115061],
		346
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_Default_Silderas_Vehicle_Trader) then {	
	///////////////////////////////////////////////////////////////////////////
	// Eastern Vehicle Trader
	///////////////////////////////////////////////////////////////////////////
	
	_trader = 
	[
		"Exile_Trader_Vehicle",
		"WhiteHead_11",
		["InBaseMoves_repairVehicleKnl", "InBaseMoves_repairVehiclePne"],
		[23385.6,24191.6,0.00136566],
		123
	]
	call ExileClient_object_trader_create;
	
	_carWreck = "Land_Wreck_CarDismantled_F" createVehicleLocal [0,0,0];
	_carWreck setDir 47.2728;    
	_carWreck setPosATL [23387.3, 24190.3, 0.05];
};


if (acd_SZ_Default_Silderas_Boat_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Eastern Boat Trader
	///////////////////////////////////////////////////////////////////////////
	
	[
		"Exile_Trader_Boat",
		"WhiteHead_17",
		["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
		[23296.6,24189.8,5.61213],
		96
	]
	call ExileClient_object_trader_create;
};














