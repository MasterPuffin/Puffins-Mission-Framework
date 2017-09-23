/*
Moves the hands of a player up to a surrender position

by Master Puffin
*/

[]Spawn{
  if (vehicle player != player) exitWith {};
  if ( player getVariable ["PMF_var_PlayerRestrain",false] ) exitWith {};
  if not (player getVariable["PMC_var_PlayerSurrender", false]) then {
    player setVariable["PMC_var_PlayerSurrender", true, true];

    while {player getVariable["PMC_var_PlayerSurrender", false]} do {
      player playMove "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon";
      sleep 0.001;
    };
    player playMoveNow "AmovPercMstpSsurWnonDnon_AmovPercMstpSnonWnonDnon";
  }
  else {
    player setVariable["PMC_var_PlayerSurrender", false, true];
  };
}
