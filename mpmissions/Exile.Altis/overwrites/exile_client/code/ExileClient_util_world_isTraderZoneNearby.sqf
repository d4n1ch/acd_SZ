/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 *
 * modified by d4n1ch [mailto:d.e@acd.su]
 *
 */
 
private["_position","_radius","_isNearby","_triggers"];
_position = _this;
_radius = 1000;
if(acd_sz_construction_radius_control)then{_radius = acd_sz_isTraderZoneNearby_search_radius;};
_isNearby = false;
_triggers = _position nearObjects ["EmptyDetector", _radius];
if !(_triggers isEqualTo []) then
{
	_isNearby = true;
};
_isNearby