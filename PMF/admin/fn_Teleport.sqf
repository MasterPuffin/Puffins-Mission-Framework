/*
Teleports the player to a choosen location on the map

by Master Puffin
*/

cutText ["Click somewhere on the map to move there", "PLAIN"];
openMap true;
onMapSingleClick "vehicle player setPosATL _pos; onMapSingleClick '';true;";
