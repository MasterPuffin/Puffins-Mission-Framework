/*
Spawns vehicle with a custom texture
NEEDS TO BE CONFIGURED!

by Master Puffin
*/

_dest = _this select 0;
_type = _this select 1;
_spawn = 0;
_target = 0;


if (_type == "SUV") then {
    _spawn = "C_SUV_01_F";
};

if (_type == "Jeep") then {
    _spawn = "C_Offroad_02_unarmed_F";
};


if (_dest isEqualTo "me") then {
  _target = [((getPos player) select 0) + 2, ((getPos player) select 1) + 2, 1];
}  else {
  _target = getMarkerPos _dest;
};
_spwnveh = _spawn createVehicle(_target);

if (_type == "SUV") then {
    _spwnveh setObjectTextureGlobal[0, "yourskin.jpg"];
    _spwnveh setVariable["PMF_var_VehicleType", "PMF_var_VehicleTypePMC", true];
};

if (_type == "Jeep") then {
    _spwnveh setObjectTextureGlobal[0, "yourskin.jpg"];
    _spwnveh setVariable["PMF_var_VehicleType", "PMF_var_VehicleTypePMC", true];
};
