/*
Enables godmode

by Master Puffin
*/

if (PMF_var_Godmode isEqualto true) then {
  hint format["Godmode deactivated!"];
  player enableFatigue true;
  player enableStamina true;
  player setDamage 0;
  player allowDamage true;
  player setCaptive false;
  PMF_var_Godmode = false;
} else {
  hint format["Godmode activated!"];
  PMF_var_Godmode = true;
  player enableFatigue false;
  player enableStamina false;
  player setDamage 0;
  player allowDamage false;
  player setCaptive true;
  []spawn{
    while {PMF_var_Godmode isEqualTo true} do {
      vehicle player setvehicleammo 1;
      sleep 0.1;
    };
  };
};
