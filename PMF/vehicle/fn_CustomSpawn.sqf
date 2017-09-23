/*
VEHICLE + CUSTOM TEXTURE SPAWNER

by Master Puffin
*/

_dest = _this select 0;
_type = _this select 1;
_spawn = 0;
_target = 0;

if (_type == "Sport") then {
    _spawn = "C_Hatchback_01_sport_F";
};

if (_type == "SUV") then {
    _spawn = "C_SUV_01_F";
};

if (_type == "Jeep") then {
    _spawn = "C_Offroad_02_unarmed_F";
};

if (_type == "Offroad") then {
    _spawn = "C_Offroad_01_F";
};

if (_type == "Hellcat") then {
    _spawn = "I_Heli_light_03_unarmed_F";
};

if (_type == "Hummingbird") then {
    _spawn = "B_Heli_Light_01_F";
};

if (_type == "Ghosthawk") then {
    _spawn = "B_Heli_Transport_01_F";
};

if (_type == "Neophron") then {
    _spawn = "O_Plane_CAS_02_F";
};

if (_type == "Hunter") then {
    _spawn = "B_MRAP_01_F";
};

if (_type == "Ifrit") then {
    _spawn = "O_MRAP_02_F";
};

if (_type == "Marshall") then {
    _spawn = "B_APC_Wheeled_01_cannon_F";
};

if (_type == "Kuma") then {
    _spawn = "I_MBT_03_cannon_F";
};

if (_type == "BlackWasp") then {
    _spawn = "B_Plane_Fighter_01_F";
};

if (_type == "RTW") then {
    _spawn = "C_Van_02_medevac_F";
};

if (_dest isEqualTo "me") then {
  _target = [((getPos player) select 0) + 2, ((getPos player) select 1) + 2, 1];
}  else {
  _target = getMarkerPos _dest;
};
_spwnveh = _spawn createVehicle(_target);

if (_type == "Sport") then {
    _spwnveh setObjectTextureGlobal[0, "resources\vehicles\polizeilimo.jpg"];
    _spwnveh setVariable["PMF_var_VehicleType", "PMF_var_VehicleTypePolice", true];
};

if (_type == "RTW") then {
    _spwnveh setVariable["PMF_var_VehicleType", "PMF_var_VehicleTypePolice", true];
};

if (_type == "SUV") then {
    _spwnveh setObjectTextureGlobal[0, "resources\vehicles\SUV.jpg"];
    _spwnveh setVariable["PMF_var_VehicleType", "PMF_var_VehicleTypePMC", true];
};

if (_type == "Jeep") then {
    _spwnveh setObjectTextureGlobal[0, "resources\vehicles\MB4WD.jpg"];
    _spwnveh setVariable["PMF_var_VehicleType", "PMF_var_VehicleTypePMC", true];
};

if (_type == "Offroad") then {
    _spwnveh setObjectTextureGlobal[0, "resources\vehicles\Offroad.jpg"];
    _spwnveh setVariable["PMF_var_VehicleType", "PMF_var_VehicleTypePMC", true];
};

if (_type == "Hellcat") then {
    _spwnveh setObjectTextureGlobal[0, "resources\vehicles\Hellcat.jpg"];
    _spwnveh setVariable["PMF_var_VehicleType", "PMF_var_VehicleTypePMC", true];
};

if (_type == "Hummingbird") then {
    _spwnveh setObjectTextureGlobal[0, "resources\vehicles\Hummingbird.jpg"];
    _spwnveh setVariable["PMF_var_VehicleType", "PMF_var_VehicleTypePMC", true];
};

if (_type == "Ghosthawk") then {
    _spwnveh setObjectTextureGlobal[0, "resources\vehicles\Ghosthawk_0.jpg"];
    _spwnveh setObjectTextureGlobal[1, "resources\vehicles\Ghosthawk_1.jpg"];
    _spwnveh setVariable["PMF_var_VehicleType", "PMF_var_VehicleTypePMC", true];
};

if (_type == "Neophron") then {
    _spwnveh setObjectTextureGlobal[0, "resources\vehicles\Neo1.jpg"];
    _spwnveh setObjectTextureGlobal[1, "resources\vehicles\Neo2.jpg"];
    _spwnveh setVariable["PMF_var_VehicleType", "PMF_var_VehicleTypeCiv", true];
};

if (_type == "BlackWasp") then {
    _spwnveh setObjectTextureGlobal[0, "resources\vehicles\BlackWasp0.jpg"];
    _spwnveh setObjectTextureGlobal[1, "resources\vehicles\BlackWasp1.jpg"];
    _spwnveh setVariable["PMF_var_VehicleType", "PMF_var_VehicleTypeCiv", true];
};

if (_type == "Hunter") then {
    _spwnveh setObjectTextureGlobal[0, "resources\vehicles\Hunter1.jpg"];
    _spwnveh setObjectTextureGlobal[1, "resources\vehicles\Hunter2.jpg"];
    _spwnveh setVariable["PMF_var_VehicleType", "PMF_var_VehicleTypePMC", true];
};

if (_type == "Ifrit") then {
    _spwnveh setObjectTextureGlobal[0, "resources\vehicles\Ifrit1.jpg"];
    _spwnveh setObjectTextureGlobal[1, "resources\vehicles\Ifrit2.jpg"];
    _spwnveh setVariable["PMF_var_VehicleType", "PMF_var_VehicleTypePMC", true];
};

if (_type == "Marshall") then {
    _spwnveh setObjectTextureGlobal[0, "resources\vehicles\Marshall0.jpg"];
    _spwnveh setObjectTextureGlobal[1, "resources\vehicles\Marshall1.jpg"];
    _spwnveh setObjectTextureGlobal[2, "resources\vehicles\Marshall2.jpg"];
    _spwnveh setVariable["PMF_var_VehicleType", "PMF_var_VehicleTypePMC", true];
};

if (_type == "Kuma") then {
    _spwnveh setObjectTextureGlobal[0, "resources\vehicles\kuma_0.jpg"];
    _spwnveh setObjectTextureGlobal[1, "resources\vehicles\kuma_1.jpg"];
    _spwnveh setObjectTextureGlobal[2, "resources\vehicles\kuma_2.jpg"];
    _spwnveh setVariable["PMF_var_VehicleType", "PMF_var_VehicleTypeCiv", true];
};
