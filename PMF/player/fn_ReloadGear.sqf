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
  hint "Loadout neu geladen!";
  sleep 60;
  renewLoadout = false;
} else {
  hint "Du kannst nur alle 1 Minute dein Loadout neu laden"
};
