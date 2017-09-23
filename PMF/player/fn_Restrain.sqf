/*
Moves the hands of a player up to a restrain position
NEEDS "PMF_fn_PlayerCallRestrain" AND "PMF_fn_ObjectPlaySound" AND FITTING SOUND IN DESCRIPTION.EXT!

by Master Puffin
*/

[]Spawn{
  if (PMF_var_PlayerRestrainCall isEqualto false) then {
    if not (player getVariable["PMF_var_PlayerRestrain", false]) then {
        player setVariable["PMF_var_PlayerRestrain", true, true];
        _sender = player;
        ["cuff",_sender] remoteExecCall ["PMF_fn_ObjectPlaySound"];
        while {player getVariable["PMF_var_PlayerRestrain", false]} do {
            player playMove "AmovPercMstpSnonWnonDnon_EaseIn";
            //sleep 0.1;
        };
        player playMoveNow "AmovPercMstpSnonWnonDnon_EaseOut";
    } else {
        player setVariable["PMF_var_PlayerRestrain", false, true];
    };
  };
  PMF_var_PlayerRestrainCall = false;
}
