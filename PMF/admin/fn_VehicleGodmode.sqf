/*
Enables car godmode

by Master Puffin
*/

if (vehicle player == player) exitWith {};
_vehicle = vehicle player;
if (isNil {_vehicle getVariable "PMF_var_CarGodmode"}) then {
  _vehicle setVariable["PMF_var_CarGodmode", false, true];
};
if ((_vehicle getVariable "PMF_var_CarGodmode") isEqualTo false) then {
  _vehicle setVariable["PMF_var_CarGodmode", true, true];
  hint "Car Godmode enabled";
  [_vehicle]spawn{
    _vehicle = _this select 0;
    _repeat = true;
    while {(alive _vehicle) && (_repeat isEqualTo true)} do {
      _vehicle setfuel 1;
      _vehicle setvehicleammo 1;
      _vehicle setdammage 0;
      sleep 0.1;
      _repeat = _vehicle getVariable "PMF_var_CarGodmode";
    };
  };
} else {
  hint "Car Godmode disabled";
  _vehicle setVariable["PMF_var_CarGodmode", false, true];
};
