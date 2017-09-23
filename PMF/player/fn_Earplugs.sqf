/*
Player earplugs

by Master Puffin
*/

_in = _this select 0;

if (_in isEqualto true) then {
  if ((PMF_var_SoundLvL isEqualto 1) || PMF_var_SoundLvL isEqualto 3) then {
      PMF_var_SoundLvL = 2;
      hintSilent "Volume at 20%";
      2 fadeSound .20;
  } else  {
      PMF_var_SoundLvL = 3;
      hintSilent "Volume at 5%";
      2 fadeSound .05;
  };
} else {
  PMF_var_SoundLvL = 1;
  hintSilent "Volume at 100%";
  2 fadeSound 1;
}
