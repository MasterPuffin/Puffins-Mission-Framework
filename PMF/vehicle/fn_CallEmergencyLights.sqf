/*
Calls vehicle emergency lights

by ?
*/

_vehicle = (vehicle player);
if (isNil {_vehicle getVariable "PMF_var_VehicleType"}) then {
  _vehicle setVariable["PMF_var_VehicleType", "PMF_var_VehicleTypeCiv", true];
};
_ComVeh = _vehicle getVariable "PMF_var_VehicleType";
if (vehicle player != player && (driver _vehicle == player && (_ComVeh isEqualTo "PMF_var_VehicleTypePMC" || _ComVeh isEqualTo "PMF_var_VehicleTypePolice"))) then {
  if (isNil {_vehicle getVariable "PMF_var_VehicleEmergencyLights"}) then {
    _vehicle setVariable["PMF_var_VehicleEmergencyLights", false, true];
  };
  _LightState = _vehicle getVariable "PMF_var_VehicleEmergencyLights";
  if (_LightState isEqualTo true) then {
    _vehicle setVariable["PMF_var_VehicleEmergencyLights", false, true];
  } else {
    [_vehicle] remoteExecCall ["PMF_fn_VehicleEmergencyLights"];
    _vehicle setVariable["PMF_var_VehicleEmergencyLights", true, true];
  };
};
