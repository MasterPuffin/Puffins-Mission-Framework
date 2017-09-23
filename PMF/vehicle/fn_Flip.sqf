/*
Flips a vehicle

by Master Puffin
*/

_veh = cursortarget;
if (player distance _veh > 7) exitWith {};
_newPos = getPos _veh;                         
_newPos set [2, (_newPos select 2)+0.5]; 
_veh setPos _newPos;                            
