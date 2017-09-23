/*
Plays a sound globaly

Usage:
["SirenSCOTS",player] remoteExecCall ["PMF_fn_ObjectPlaySound"];

by Master Puffin
*/

_sound = _this select 0;
_object = _this select 1;
_object say3D _sound;
