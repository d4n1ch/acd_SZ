/*
	ACD_SZ - Exile Safe Zones
	acd_SZ_NORTH_Atsalis_traders.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/
if (!acd_SZ_NORTH_Atsalis) exitWith {
	diag_log format ["### ACD: SAFE ZONE IS OFF: NO TRADERS WILL SPAWN: acd_SZ_NORTH_Atsalis = %1 ###", acd_SZ_NORTH_Atsalis];
};


if (acd_SZ_NORTH_Atsalis_Boat_Trader) then {
	///////////////////////////////////////////////////////////////////////////
	// Boat Trader
	///////////////////////////////////////////////////////////////////////////
	_Sunchair = "Land_Sun_chair_green_F" createVehicleLocal [0,0,0];
	_Sunchair setDir 230;
	_Sunchair setPosATL [8798.07,25035.7,1.24497];

[
	"Exile_Trader_Boat",
	"GreekHead_A3_04",
	["AidlPpneMstpSnonWnonDnon_AI"],
	[0, 0, 0.14],
	180,
	_Sunchair
]
call ExileClient_object_trader_create;
};






