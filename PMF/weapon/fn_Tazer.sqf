/*
    Author: Maverick Apps & Master Puffin

    Description:
    Handles various different ammo types being fired.
*/

private["_unit","_damage","_source","_projectile","_old"];
_unit = param[0,objNull,[objNull]];
_damage = param[2,0,[0]];
_source = param[3,objNull,[objNull]];
_projectile = param[4,"",[""]];
_old = (getDammage player);
if(
   !isNull _source && {!isNull _unit} && {_source != _unit} &&
   {(toLower(currentWeapon _source) find "hgun_p07" != -1)}
  ) then {
    if(alive player && (player distance _source) < 50 && PMF_var_Godmode isEqualTo false) then {
        [] spawn {
            PMF_var_PlayerTazed = true;
            player setUnconscious true;
            uiSleep 10;
            player setUnconscious false;
            player playMoveNow "AmovPercMstpSnonWnonDnon";
            PMF_var_PlayerTazed = false;
        };
        _damage = _old;
    };
};
_damage;
