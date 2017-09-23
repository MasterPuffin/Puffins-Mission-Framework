/*
Teleports to a location on the map
NEEDS A MARKER ON THE MAP!

by Master Puffin
*/

_dest = _this select 0;
_high = _this select 1;
if not (isNil "_high") then {
  _highnum = parseNumber _high;
  vehicle player SetPosATL [(getMarkerPos _dest select 0),(getMarkerPos _dest select 1),_highnum];
} else {
  vehicle player SetPosATL [(getMarkerPos _dest select 0),(getMarkerPos _dest select 1),(getMarkerPos _dest select 2)];
};
