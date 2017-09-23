/*
Moves the player in a vehicle

by Master Puffin
*/

_vehicle = cursortarget;
if (player distance _vehicle < 4) then {
player moveInAny _vehicle;
};
