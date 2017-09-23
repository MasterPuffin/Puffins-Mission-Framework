/*
Holsters the weapon of a player

by Master Puffin
*/

if (vehicle player != player) exitWith{};
if (currentWeapon player == "" or {primaryWeapon player == "" && handgunWeapon player == ""}) then {
  player action ["SWITCHWEAPON",player,player,1];
}
else {
  player action ["SWITCHWEAPON",player,player,-1];
};
