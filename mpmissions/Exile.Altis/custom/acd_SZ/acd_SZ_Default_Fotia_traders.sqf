/*
	ACD_SZ - Exile Safe Zones
	acd_SZ_Default_Fotia_traders.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/
if (!acd_SZ_Default_Fotia) exitWith {
	diag_log format ["### ACD: SAFE ZONE IS OFF: NO TRADERS WILL SPAWN: acd_SZ_Default_Fotia = %1 ###", acd_SZ_Default_Fotia];
};

if (acd_SZ_Default_Fotia_Fast_Food_Trader) then {	
	///////////////////////////////////////////////////////////////////////////
	// Western Fast Food Trader
	///////////////////////////////////////////////////////////////////////////
	
	[
		"Exile_Trader_Food",
		"GreekHead_A3_01",
		["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
		[2979.87,18184.9,2.55185],
		89.2952
	]
	call ExileClient_object_trader_create;
};
if (acd_SZ_Default_Fotia_Armory_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Western Armory Trader
	///////////////////////////////////////////////////////////////////////////
	
	[
		"Exile_Trader_Armory",
		"PersianHead_A3_02",
		["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
		[2986.43,18178.5,1.66267],
		296.855
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_Default_Fotia_Equipment_Trader) then {	
	///////////////////////////////////////////////////////////////////////////
	// Western Equipment Trader
	///////////////////////////////////////////////////////////////////////////
	
	[
		"Exile_Trader_Equipment",
		"WhiteHead_19",
		["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
		[2980.7,18192.9,2.49853],
		130.535
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_Default_Fotia_Waste_Dump_Trader) then {	
	///////////////////////////////////////////////////////////////////////////
	// Western Waste Dump Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_WasteDump",
		"GreekHead_A3_01",
		["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
		[2984.05,18133.4,0.00107765],
		29.3856
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_Default_Fotia_Boat_Trader) then {	
	///////////////////////////////////////////////////////////////////////////
	// Western Boat Trader
	///////////////////////////////////////////////////////////////////////////
	
	[
		"Exile_Trader_Boat",
		"WhiteHead_17",
		["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
		[2914.35,18192.9,8.51858],
		88.3346
	]
	call ExileClient_object_trader_create;
};
if (acd_SZ_Default_Fotia_Vehicle_Trader) then {	
	///////////////////////////////////////////////////////////////////////////
	// Western Vehicle Trader
	///////////////////////////////////////////////////////////////////////////
	
	_trader = 
	[
		"Exile_Trader_Vehicle",
		"WhiteHead_11",
		["InBaseMoves_repairVehicleKnl", "InBaseMoves_repairVehiclePne"],
		[2980.19,18146.2,1.06391],
		222.352
	]
	call ExileClient_object_trader_create;
	
	_carWreck = "Land_Wreck_CarDismantled_F" createVehicleLocal [0,0,0];
	_carWreck setDir 130.966;    
	_carWreck setPosATL [2978.76,18144.5,1.13293];
};

if (acd_SZ_Default_Fotia_Guards) then {	
	///////////////////////////////////////////////////////////////////////////
	// Western Guard 01
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Guard_02",
		"WhiteHead_03",
		["InBaseMoves_patrolling2"],
		[2950.52,18195.3,4.93399],
		179.092
	]
	call ExileClient_object_trader_create;
	///////////////////////////////////////////////////////////////////////////
	// Western Guard 02
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Guard_03",
		"AfricanHead_03",
		["InBaseMoves_patrolling1"],
		[2993.2,18167,0.353821],
		109.888
	]
	call ExileClient_object_trader_create;
};














