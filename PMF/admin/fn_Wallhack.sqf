/*
Wallhack

by Extasy Hosting
https://www.unknowncheats.me\forum\arma-3-a\125187-diamond-wallhack-box.html
Modified by Master Puffin
*/

if (isnil("PMF_var_AdminWallhack")) then {
  PMF_var_AdminWallhack = false;
};
if (PMF_var_AdminWallhack isEqualTo false) then {
  PMF_var_AdminWallhack = true;
  hint "Wallhack On";
} else {
  PMF_var_AdminWallhack = false;
  hint "Wallhack Off";
};

if (PMF_var_AdminWallhack isEqualTo true) then {
  []spawn{
    onEachFrame {
      _nametarget = nearestobjects[player, ["CAManBase"], 1400]; {
        if ((getPlayerUID _x != "") && (_x != player) && ((player distance _x) < 1400)) then {
          drawIcon3D["", [0,0,0,1], [visiblePosition _x select 0, visiblePosition _x select 1, 2], 0, 0, 45, (format["%2 : %1m", round(player distance _x), name _x]), 1, 0.025]
        };
      } foreach AllUnits;

      _color = [0.035,1,0,1];
      _color2 = [1,0,0,1];

      _x1 = -0.5;
      _y1 = -0.5;
      _z1 = 0;

      _x2 = 0.5;
      _y2 = 0.5;
      _z2 = 1.8;

      _cagetarget = nearestobjects [player,["CAManBase"],1000];
      {
        if(((alive _x)) && ((player distance _x) < 1000) && (_x != player) && (_x iskindof "CAManBase")) then {

          drawLine3d [_x modelToWorld [_x1, _y1, 1], _x modelToWorld [0,0,_z2], _color2];
          drawLine3d [_x modelToWorld [_x2, _y1, 1], _x modelToWorld [0,0,_z2], _color2];
          drawLine3d [_x modelToWorld [_x2, _y2, 1], _x modelToWorld [0,0,_z2], _color2];
          drawLine3d [_x modelToWorld [_x1, _y2, 1], _x modelToWorld [0,0,_z2], _color2];

          drawLine3d [_x modelToWorld [_x1, _y1, 1], _x modelToWorld [0, 0, _z1], _color2];
          drawLine3d [_x modelToWorld [_x2, _y1, 1], _x modelToWorld [0, 0, _z1], _color2];
          drawLine3d [_x modelToWorld [_x2, _y2, 1], _x modelToWorld [0, 0, _z1], _color2];
          drawLine3d [_x modelToWorld [_x1, _y2, 1], _x modelToWorld [0, 0, _z1], _color2];

          drawLine3d [_x modelToWorld [_x1, _y1, 1], _x modelToWorld [_x2, _y1, 1], _color2];
          drawLine3d [_x modelToWorld [_x2, _y1, 1], _x modelToWorld [_x2, _y2, 1], _color2];
          drawLine3d [_x modelToWorld [_x2, _y2, 1], _x modelToWorld [_x1, _y2, 1], _color2];
          drawLine3d [_x modelToWorld [_x1, _y2, 1], _x modelToWorld [_x1, _y1, 1], _color2];

          drawLine3d [[getposatl player select 0, getposatl player select 1, getposatl player select 2],ASLToATL eyePos _x,_color2];

        };
      } foreach AllUnits;
    };
  };
} else {
  []spawn{
    onEachFrame {
    nil
    };
  }
};
