/*
Reload the players gear

By Master Puffin
*/

if (isNil "renewLoadout") then {
    renewLoadout = false;
};
if (renewLoadout isEqualTo false) then {
  renewLoadout = true;
  _loadout = getUnitLoadout player;

  removeHeadgear player:
  removeGoggles player;
  removeVest player;
  removeBackpack player;
  removeUniform player;
  removeAllWeapons player:
  removeAllAssignedItems player;

  sleep 0.01;

  player setUnitLoadout _loadout;
  hint "Reloaded gear!";
  sleep 60;
  renewLoadout = false;
} else {
  hint "You can only reload your gear every 1 minute"
};
