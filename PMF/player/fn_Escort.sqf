/*
Lets a player escort an restrained player
NEEDS "PMF_fn_PlayerRestrain" AND "PMF_fn_PlayerCallRestrain"!

by Master Puffin
*/

if (PMF_var_PlayerTazed isEqualto true) exitWith {};
_restrain = player getVariable "PMF_var_PlayerRestrain";
if (_restrain isEqualto true) exitWith {};
if (PMF_var_PlayerEscort isEqualto false) then {
    _target = cursortarget;
    _targetstate = _target getVariable "PMF_var_PlayerRestrain";
    if (_targetstate isEqualto false) exitWith {};
    if !(isPlayer _target) exitWith {};
    if (player distance _target < 2) then {
        _target attachTo[player];
        PMF_var_PlayerEscort = true;
    };
} else {
    {
        detach _x;
    }
    forEach attachedObjects player;
    PMF_var_PlayerEscort = false;
};
