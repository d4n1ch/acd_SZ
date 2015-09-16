#include "initServer.sqf"
if (!hasInterface || isServer) exitWith {};
call acd_fnc_createSensors;
call acd_fnc_precompileTraders;