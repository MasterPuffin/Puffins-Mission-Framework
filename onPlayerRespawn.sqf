/*
SCOTS Training Ground

by Master Puffin
*/

call PMF_fn_OnPlayerRespawn;

execVM "scripts\loadout.sqf";
execVM "scripts\ReservedSlots.sqf";
player setVariable ['QS_seated',FALSE];
player setVariable["PMF_var_PlayerRestrain", false, true];

handsup = false;
PMF_var_PlayerEscort = false;
restcaller = false;
taserball = false;
jump = false;
marked = false;
