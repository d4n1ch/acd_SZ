#include "initServer.sqf"
if (!hasInterface || isServer) exitWith {};
#include "custom\acd_SZ\acd_SZ_config.sqf"
call acd_fnc_createSensors;
call acd_fnc_precompileTraders;