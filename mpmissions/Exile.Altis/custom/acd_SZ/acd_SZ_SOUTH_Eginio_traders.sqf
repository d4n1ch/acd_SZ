/*
	ACD_SZ - Exile Safe Zones
	acd_SZ_SOUTH_Eginio_traders.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/
if (!acd_SZ_SOUTH_Eginio) exitWith {
	diag_log format ["### ACD: SAFE ZONE IS OFF: NO TRADERS WILL SPAWN: acd_SZ_SOUTH_Eginio = %1 ###", acd_SZ_SOUTH_Eginio];
};

if (acd_SZ_SOUTH_Eginio_Hardware_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Hardware Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_Hardware",
		"WhiteHead_17",
		["HubStandingUC_idle1", "HubStandingUC_idle2", "HubStandingUC_idle3", "HubStandingUC_move1", "HubStandingUC_move2"],
		[11538.1,7055.59,0.88031],
		32.8346
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_SOUTH_Eginio_Fast_Food_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Fast Food Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_Food",
		"GreekHead_A3_01",
		["HubStandingUC_idle1", "HubStandingUC_idle2", "HubStandingUC_idle3", "HubStandingUC_move1", "HubStandingUC_move2"],
		[11550.2,7035.82,1.34254],
		11.5382
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_SOUTH_Eginio_Armory_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Armory Trader
	///////////////////////////////////////////////////////////////////////////
	
	[
		"Exile_Trader_Armory",
		"WhiteHead_18",
		["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
		[11581.4,7028.35,1.96272],
		9.46904
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_SOUTH_Eginio_Equipment_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Equipment Trader ##
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_Equipment",
		"WhiteHead_19",
		//["InBaseMoves_Lean1"],
		["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
		[11589.1,7042.88,0.728127],
		197.277
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_SOUTH_Eginio_Specops_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Specops Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_SpecialOperations",
		"AfricanHead_02",
		["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
		[11565.3,7035.66,1.54881],
		102.747
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_SOUTH_Eginio_Office_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Office Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_Office",
		"GreekHead_A3_04",
		["HubBriefing_scratch", "HubBriefing_stretch", "HubBriefing_think", "HubBriefing_lookAround1", "HubBriefing_lookAround2"],
		[11530.2,7051.96,0.185585],
		210
	]
	call ExileClient_object_trader_create;
};

if (acd_SZ_SOUTH_Eginio_Waste_Dump_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Waste Dump Trader
	///////////////////////////////////////////////////////////////////////////
	[
		"Exile_Trader_WasteDump",
		"GreekHead_A3_0w",
		["HubStandingUC_idle1", "HubStandingUC_idle2", "HubStandingUC_idle3", "HubStandingUC_move1", "HubStandingUC_move2"],
		[11525.6,7071.98,0.00154877],
		90
	]
	call ExileClient_object_trader_create;
};













