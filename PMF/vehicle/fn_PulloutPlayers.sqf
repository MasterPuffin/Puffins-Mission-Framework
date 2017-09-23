/*
Pulls players out of a vehicle

by BrotherhoodOfHam
http://www.armaholic.com\forums.php?m=posts&q=27033
*/

_curTarget = cursorTarget;
if (player distance _curTarget > 7) exitWith {}; {
    _x action["Eject", vehicle _x];
}
forEach crew _curTarget;