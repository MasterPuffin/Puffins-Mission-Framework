/*
Repairs a vehicle

by Master Puffin
*/

_truck = cursortarget;
if (vehicle player != player) exitWith {hint "Du darfst nicht im Fahrzeug sitzen!"};
if (player distance _truck > 3) exitWith {};
if not ("ToolKit" in items player) exitWith {hint "Du brauchst einen Werkzeugkasten um das Fahrzeug zu reparieren!"};
PMF_var_VehicleRepair = true;
[]spawn {
  while {PMF_var_VehicleRepair isEqualTo true} do {
    player playMove "AinvPknlMstpsnonWnonDnon_medic_1";
    sleep 3;
    player playActionNow "stop";
  };
};
sleep 9;
PMF_var_VehicleRepair = false;
if (vehicle player != player) exitWith {};
player removeItem "ToolKit";
_truck setdammage 0;
hintSilent "Auto repariert";
