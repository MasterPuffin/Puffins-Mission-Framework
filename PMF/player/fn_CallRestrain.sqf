/*
Calls restrain function
NEEDS "PMF_fn_PlayerRestrain"!

by Master Puffin
*/

PMF_var_PlayerRestrainCall = false;
if (PMF_var_PlayerTazed isEqualTo true) exitWith {};
if (vehicle player != player) exitWith {};
_restrain = player getVariable "PMF_var_PlayerRestrain";
if (_restrain isEqualTo false) then {
  if (player distance cursortarget < 2) then {
  PMF_var_PlayerRestrainCall = true;
  remoteExecCall ["PMF_fn_PlayerRestrain", cursortarget];
  };
};
