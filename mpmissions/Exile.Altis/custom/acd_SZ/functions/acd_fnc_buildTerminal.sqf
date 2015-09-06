/*
	ACD_SZ - Exile Safe Zones
	acd_fnc_buildTerminal.sqf
	by d4n1ch
	mailto: d.e@acd.su
	
	original by Killzone_Kid
*/
private ["_fnc","_trigger","_center","_side"];
_fnc = {
    {
        _trigger = createTrigger [
            "EmptyDetector",
            _side modelToWorld _x
        ];
        _trigger setVariable ["parent", _side];
        _trigger setTriggerArea [5, 5, 0, false];
        _trigger setTriggerActivation ["ANY", "PRESENT", true];
        _trigger setTriggerStatements [
            "this",
            format [
                "
                    (thisTrigger getVariable 'parent')
                        animate ['Door_%1A_move', 1];
                    (thisTrigger getVariable 'parent') 
                        animate ['Door_%1B_move', 1];
                ", _forEachIndex + 7
            ],
            format [
                "
                    (thisTrigger getVariable 'parent') 
                        animate ['Door_%1A_move', 0];
                    (thisTrigger getVariable 'parent') 
                        animate ['Door_%1B_move', 0];
                ", _forEachIndex + 7
            ]
        ];
        _side setVariable [format [
            "bis_disabled_Door_%1", 
            _forEachIndex + 7
        ], 1, true];
    } forEach _this;
};
_center = "Land_Airport_center_F" createVehicleLocal [0,0,0];
_center  setDir (_this select 0);
_center  setPosATL (_this select 1);
_side = "Land_Airport_left_F" createVehicleLocal [0,0,0];
_side attachTo [_center, [19.6722,-4.61768,4.04246]];
detach _side;
[
    [-0.62,-15.16,-7],
    [-0.62,15.16,-7]
] call _fnc;
_side = "Land_Airport_right_F" createVehicleLocal [0,0,0];
_side attachTo [_center, [-19.5177,-4.61768,4.04246]];
detach _side;
[
    [0.62,-15.16,-7],
    [0.62,15.16,-7]
] call _fnc;