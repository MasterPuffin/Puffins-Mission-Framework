/*
Lets the player parajump from a choosen location on the map

by Master Puffin
*/

if (vehicle player != player) exitWith {hint "Get out of your vehicle first!"};
[]spawn{
  cutText ["Click somewhere on the map to jump from there", "PLAIN"];
  _loadout = getUnitLoadout player;
  player addBackpack "B_Parachute";
  openMap [true, true];
  PMF_var_mapclick = false;
  onMapSingleClick "vehicle player setPos [_pos select 0, _pos select 1, 1000]; PMF_var_mapclick = true";
  waitUntil {PMF_var_mapclick isEqualTo true};
  openMap [false, false];
  onMapSingleClick "";
  waitUntil {isTouchingGround player};

  removeHeadgear player:
  removeGoggles player;
  removeVest player;
  removeBackpack player;
  removeUniform player;
  removeAllWeapons player:
  removeAllAssignedItems player;

  sleep 0.01;

  player setUnitLoadout _loadout;
};
