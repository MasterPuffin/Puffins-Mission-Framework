/*
Calls vehicle emergency siren

by ?
*/

_type = _this select 0;
if (_type isEqualTo "Siren") then {
  _vehicle = (vehicle player);
  if (isNil {_vehicle getVariable "PMF_var_VehicleType"}) then {
    _vehicle setVariable["PMF_var_VehicleType", "PMF_var_VehicleTypeCiv", true];
  };
  _ComVeh = _vehicle getVariable "PMF_var_VehicleType";
  if (vehicle player != player && (driver _vehicle == player && (_ComVeh isEqualTo "PMF_var_VehicleTypePMC" || _ComVeh isEqualTo "PMF_var_VehicleTypePolice"))) then {
    if (isNil {_vehicle getVariable "PMF_var_VehicleEmergencySiren"}) then {
      _vehicle setVariable["PMF_var_VehicleEmergencySiren", false, true];
      _vehicle setVariable["PMF_var_VehicleEmergencySirenRun", false, true];
    };
    _SirenState = _vehicle getVariable "PMF_var_VehicleEmergencySiren";
    _SirenRun = _vehicle getVariable "PMF_var_VehicleEmergencySirenRun";
    if (_SirenState isEqualTo true) then {
      [_vehicle] spawn {
        _vehicle = _this select 0;
        hint "Sirene ausgeschaltet";
        _vehicle setVariable["PMF_var_VehicleEmergencySiren", false, true];
        sleep 6;
        _vehicle setVariable["PMF_var_VehicleEmergencySirenRun", false, true];
      };
    } else {
      if (_SirenRun isEqualTo false) then {
        hint "Sirene eingeschaltet";
        [_vehicle] remoteExecCall ["PMF_fn_VehicleEmergencySiren"];
        _vehicle setVariable["PMF_var_VehicleEmergencySiren", true, true];
        _vehicle setVariable["PMF_var_VehicleEmergencySirenRun", true, true];
      };
    };
  };
};
if (_type isEqualTo "Yelp") then {
  _vehicle = (vehicle player);
  if (isNil {_vehicle getVariable "PMF_var_VehicleType"}) then {
    _vehicle setVariable["PMF_var_VehicleType", "PMF_var_VehicleTypeCiv", true];
  };
  if (isNil {_vehicle getVariable "PMF_var_VehicleEmergencySirenYelp"}) then {
    _vehicle setVariable["PMF_var_VehicleEmergencySirenYelp", false, true];
  };
  _ComVeh = _vehicle getVariable "PMF_var_VehicleType";
  _Yelp = _vehicle getVariable "PMF_var_VehicleEmergencySirenYelp";
  if (vehicle player != player && driver _vehicle == player && _Yelp isEqualTo false && (_ComVeh isEqualTo "PMF_var_VehicleTypePMC" || _ComVeh isEqualTo "PMF_var_VehicleTypePolice")) then {
    [_vehicle] spawn {
      _vehicle = _this select 0;
      _vehicle setVariable["PMF_var_VehicleEmergencySirenYelp", true, true];
      ["Yelp",_vehicle] remoteExecCall ["PMF_fn_ObjectPlaySound"];
      sleep 3;
      _vehicle setVariable["PMF_var_VehicleEmergencySirenYelp", false, true];
    };
  };
};
