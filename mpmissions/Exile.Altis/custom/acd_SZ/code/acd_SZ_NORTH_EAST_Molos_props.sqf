/*
	ACD_SZ - Exile Safe Zones
	acd_SZ_NORTH_EAST_Molos_props.sqf
	by d4n1ch
	mailto: d.e@acd.su
*/

if (!acd_SZ_NORTH_EAST_Molos) exitWith {
	diag_log format ["### ACD: SAFE ZONE IS OFF: NO PROPS WILL BE BUILT: acd_SZ_NORTH_EAST_Molos = %1 ###", acd_SZ_NORTH_EAST_Molos];
};
diag_log format ["### ACD: SAFE ZONE: LOADING: acd_SZ_NORTH_EAST_Molos_props ###"];

private ["_objs"];
_objs = [
	["Exile_Sign_TraderCity",[26850.9,24472.6,0.0827427],41.3639,[[0.660839,0.750528,0],[0,0,1]],false],
	["Exile_Sign_TraderCity",[27212.5,24893.3,0.0827427],222.728,[[-0.678519,-0.734583,0],[-0,0,1]],false],
	["Exile_Sign_TraderCity",[27068,24697.4,0.0827427],311.364,[[-0.750526,0.660841,0],[0,0,1]],false],
	["Land_Hangar_F",[26824.6,24597.5,0.315083],130.085,[0,0,1],true],
	["Land_TentHangar_V1_F",[26873.8,24657.2,0.401695],40,[[0.642788,0.766044,0],[0,0,1]],false],
	["Land_Factory_Conv1_Main_F",[26752.6,24702.5,0.545687],130,[[0.766044,-0.642788,0],[0,-0,1]],false],
	["Land_Shed_Big_F",[26962.8,24744.7,0],310.455,[[-0.760916,0.648851,0],[0,0,1]],false],
	["Land_Shed_Small_F",[26955,24735.6,0],130.455,[[0.760916,-0.648851,0],[0,-0,1]],false],
	["Land_Shed_Small_F",[26970.6,24753.9,0],310.455,[[-0.760916,0.648851,0],[0,0,1]],false],
	["Land_CarService_F",[26968.9,24736.6,-0.339617],310.454,[[-0.760927,0.648838,0],[0,0,1]],false],
	["Land_Wreck_Plane_Transport_01_F",[26875.4,24659.1,-6.10352e-005],41.3636,[0,0,1],true],
	["Land_i_Addon_03_V1_F",[26799.2,24580,0.464518],311.818,[[-0.745266,0.666767,0],[0,0,1]],false],
	["Land_i_Addon_03mid_V1_F",[26793.8,24584.9,0.68779],312.273,[[-0.739948,0.672664,0],[0,0,1]],false],
	["Land_i_Addon_04_V1_F",[26788.4,24589.7,0.949749],131.818,[[0.745267,-0.666767,0],[0,-0,1]],false],
	["Land_MilOffices_V1_F",[26785.2,24541.8,0.198931],219.546,[[-0.636698,-0.771114,0],[-0,0,1]],false],
	["Land_HelipadCivil_F",[26901.6,24665.3,0],0,[[0,1,0],[0,0,1]],false],
	["Land_Offices_01_V1_F",[26826.1,24500.8,0.082571],220.909,[[-0.65486,-0.75575,0],[-0,0,1]],false],
	["Land_LampHalogen_F",[26770.2,24549.7,-7.35565],170.455,[[0.16583,-0.986154,0],[0,-0,1]],false],
	["Land_Shoot_House_Wall_Crouch_F",[26789.2,24529.4,0.142315],309.545,[[-0.77112,0.63669,0],[0,0,1]],false],
	["Land_Shoot_House_Wall_Crouch_F",[26784.1,24545.2,0.497503],309.545,[[-0.77112,0.63669,0],[0,0,1]],false],
	//boat props
	["Land_nav_pier_m_F",[26617.3,24658.1,-4.655],218.182,[[-0.618159,-0.786053,0],[-0,0,1]],false],
	["Land_nav_pier_m_F",[26588.4,24680.9,-3.33789],218.182,[[-0.618162,-0.786051,0],[-0.0982281,0.077248,0.992161]],false],
	["Land_nav_pier_m_F",[26557.3,24705.3,-0.7464],218.182,[[-0.618162,-0.786051,0],[-0.0982281,0.077248,0.992161]],false],
	["Land_nav_pier_m_F",[26523.8,24731.6,-0.624497],218.182,[[-0.61816,-0.786052,0],[-0,0,1]],false],
	["Land_Pier_addon",[26516.7,24730,1.21112],218.182,[[-0.618159,-0.786053,0],[-0,0,1]],false],
	["Land_Pier_addon",[26504.2,24734.7,2.92439],218.182,[[-0.618159,-0.786053,0],[-0,0,1]],false],
	["Land_Pier_addon",[26516.8,24744.3,3.72007],38.1818,[[0.618159,0.786053,0],[0,0,1]],false],
	["Land_Pier_addon",[26514.4,24756.2,3.53927],308.636,[[-0.781124,0.624376,0],[0,0,1]],false],
	["Land_nav_pier_m_F",[26492.5,24756.3,9.12752],218.182,[[-0.61816,-0.786052,0],[-0,0,1]],false]
];

if (acd_SZ_NORTH_EAST_Molos_Hardware_Trader) then {
	_objs = _objs + [["Exile_Sign_Hardware",[26770.8,24551.2,1.82178],309.545,[[-0.771119,0.636691,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Hardware_Small",[26776.9,24556.7,0.6551],219.545,[[-0.63669,-0.77112,0],[-0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Hardware_Small",[26780.4,24544.6,0.472084],309.545,[[-0.77112,0.63669,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Hardware_Small",[26788,24524.2,-0.0355721],39.5454,[[0.63669,0.77112,0],[0,0,1]],false]];
};
if (acd_SZ_NORTH_EAST_Molos_Fast_Food_Trader) then {
	_objs = _objs + [["Exile_Sign_Food",[26796.5,24588.4,1.64861],42.2728,[[0.672661,0.739951,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Food_Small",[26802.5,24579.6,-0.269333],311.364,[[-0.750526,0.660841,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Food_Small",[26785.1,24590.3,0.2568],131.364,[[0.750526,-0.66084,0],[0,-0,1]],false]];
	_objs = _objs + [["Exile_Sign_Food_Small",[26796.1,24575.9,-0.315382],41.8185,[[0.666774,0.74526,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Food_Small",[26786.8,24584.3,0.105122],41.8185,[[0.666774,0.74526,0],[0,0,1]],false]];
};
if (acd_SZ_NORTH_EAST_Molos_Armory_Trader) then {
	_objs = _objs + [["Exile_Sign_Armory",[26781.3,24530.2,1.08204],219.545,[[-0.636689,-0.771121,0],[-0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Armory_Small",[26784.5,24550.3,0.32078],219.545,[[-0.63669,-0.77112,0],[-0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Armory_Small",[26780.2,24544.6,0.462255],129.545,[[0.77112,-0.63669,0],[0,-0,1]],false]];
	_objs = _objs + [["Exile_Sign_Armory_Small",[26786,24525.9,0.0453339],39.5454,[[0.63669,0.77112,0],[0,0,1]],false]];
};
if (acd_SZ_NORTH_EAST_Molos_Equipment_Trader) then {
	_objs = _objs + [["Exile_Sign_Equipment",[26791.6,24544.1,0.801697],39.5455,[[0.636691,0.771119,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Equipment_Small",[26787.5,24547.9,0.137569],219.546,[[-0.636692,-0.771118,0],[-0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Equipment_Small",[26780.2,24544.6,-0.284632],129.546,[[0.771119,-0.636691,0],[0,-0,1]],false]];
	_objs = _objs + [["Exile_Sign_Equipment_Small",[26788,24524.2,-0.774593],39.5454,[[0.63669,0.77112,0],[0,0,1]],false]];
};
if (acd_SZ_NORTH_EAST_Molos_Specops_Trader) then {
	_objs = _objs + [["Exile_Sign_SpecialOperations",[26765.6,24545,1.8253],309.545,[[-0.77112,0.63669,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_SpecialOperations_Small",[26775.4,24544.6,0.519527],219.545,[[-0.636691,-0.771119,0],[-0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_SpecialOperations_Small",[26778,24541.6,0.544962],309.545,[[-0.77112,0.63669,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_SpecialOperations_Small",[26780.2,24553.9,0.517311],219.545,[[-0.636691,-0.771119,0],[-0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_SpecialOperations_Small",[26786,24525.9,-0.689758],39.5454,[[0.63669,0.77112,0],[0,0,1]],false]];
};
if (acd_SZ_NORTH_EAST_Molos_Office_Trader) then {
	_objs = _objs + [["Exile_Sign_Office",[26818.2,24507.7,13.2724],220.909,[[-0.654861,-0.755749,0],[-0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Office_Small",[26820.7,24515.1,1.52512],130.909,[[0.755749,-0.654861,0],[0,-0,1]],false]];
	_objs = _objs + [["Exile_Sign_Office_Small",[26830.3,24485.6,-0.114635],40.9091,[[0.654861,0.755749,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Office_Small",[26826.1,24497.8,0.262526],130.909,[[0.755749,-0.654861,0],[0,-0,1]],false]];
};
if (acd_SZ_NORTH_EAST_Molos_Waste_Dump_Trader) then {
	_objs = _objs + [["Exile_Sign_WasteDump",[26757.2,24695.6,0.22547],309.091,[[-0.776145,0.630554,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_WasteDump_Small",[26784.2,24652.5,0],310,[[-0.766044,0.642788,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_WasteDump_Small",[26804.3,24676.4,0],310,[[-0.766044,0.642788,0],[0,0,1]],false]];
};
if (acd_SZ_NORTH_EAST_Molos_Aircraft_Trader) then {
	_objs = _objs + [["Exile_Sign_Aircraft",[26836.5,24577.6,0.754333],130,[[0.766044,-0.642788,0],[0,-0,1]],false]];
	_objs = _objs + [["Exile_Sign_Aircraft_Small",[26814,24621.7,0.359537],130,[[0.766044,-0.642788,0],[0,-0,1]],false]];
	_objs = _objs + [["Exile_Sign_Aircraft_Small",[26798.9,24603.8,0.215366],130,[[0.766044,-0.642788,0],[0,-0,1]],false]];
};
if (acd_SZ_NORTH_EAST_Molos_Aircraft_Customs_Trader) then {
	_objs = _objs + [["Exile_Sign_AircraftCustoms",[26889.1,24658.3,0.233994],216.364,[[-0.592913,-0.805266,0],[-0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_AircraftCustoms_Small",[26859,24655.6,-0.14196],39.5454,[[0.63669,0.77112,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_AircraftCustoms_Small",[26874.4,24642.5,-0.14196],39.5454,[[0.63669,0.77112,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_AircraftCustoms_Small",[26872.8,24671.7,-0.14196],226.364,[[-0.723739,-0.690074,0],[-0,0,1]],false]];
};
if (acd_SZ_NORTH_EAST_Molos_Vehicle_Trader) then {
	_objs = _objs + [["Exile_Sign_Vehicles",[26959.4,24757.3,0],40.4545,[[0.648844,0.760921,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Vehicles_Small",[26943.2,24740.2,0],38.6364,[[0.624376,0.781124,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Vehicles_Small",[26964.2,24764.9,0],220,[[-0.642788,-0.766044,0],[-0,0,1]],false]];
};
if (acd_SZ_NORTH_EAST_Molos_Vehicle_Customs_Trader) then {
	_objs = _objs + [["Exile_Sign_VehicleCustoms",[26966.8,24729.4,0],305.909,[[-0.809949,0.5865,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_VehicleCustoms_Small",[26961.5,24724.7,0],38.1818,[[0.618159,0.786053,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_VehicleCustoms_Small",[26982.4,24749.2,0],220.909,[[-0.65486,-0.75575,0],[-0,0,1]],false]];
};
if (acd_SZ_NORTH_EAST_Molos_Boat_Trader) then {
	_objs = _objs + [["Exile_Sign_Boat",[26516.5,24762.7,5.45384],308.636,[[-0.781124,0.624376,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Boat_Small",[26717.8,24568.5,0],310,[[-0.766044,0.642788,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Boat_Small",[26619.4,24649.2,0],306.818,[[-0.800541,0.599278,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Boat_Small",[26672.2,24606,0],306.818,[[-0.800541,0.599278,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_Boat_Small",[26509.7,24747,11.625],306.818,[[-0.800541,0.599278,0],[0,0,1]],false]];
};
if (acd_SZ_NORTH_EAST_Molos_Boat_Customs_Trader) then {
	_objs = _objs + [["Exile_Sign_BoatCustoms",[26508.6,24751.2,7.46909],218.636,[[-0.624375,-0.781125,0],[-0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_BoatCustoms_Small",[26678.5,24614.5,0],308.182,[[-0.786053,0.618159,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_BoatCustoms_Small",[26724.2,24577,0],306.818,[[-0.800541,0.599278,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_BoatCustoms_Small",[26627.8,24656.8,0],308.182,[[-0.786053,0.618159,0],[0,0,1]],false]];
	_objs = _objs + [["Exile_Sign_BoatCustoms_Small",[26508.9,24746,11.5481],308.182,[[-0.786053,0.618159,0],[0,0,1]],false]];
};
[_objs] call acd_fnc_buildProps;
