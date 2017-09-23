/*
	Author: mindstorm, modified by Adanteh, modified by Master Puffin
	Link: http://forums.bistudio.com\showthread.php?157474-Offroad-Police-sirens-lights-and-underglow

	Description:
	Adds the light effect to cop vehicles, specifically the offroad.
*/
_vehicle = _this select 0;
[_vehicle]spawn{
  Private["_vehicle", "_lightRed", "_lightBlue", "_lightleft", "_lightright", "_leftRed"];
  _vehicle = _this select 0;

  if (isNil "_vehicle"
      OR isNull _vehicle) exitWith {};

  _ComVeh = _vehicle getVariable "PMF_var_VehicleType";

  if (_ComVeh isEqualTo "PMF_var_VehicleTypePMC") then {
      _lightRed = [20, 0.1, 0.1];
      _lightBlue = [0.1, 0.1, 20];
  };

  if (_ComVeh isEqualTo "PMF_var_VehicleTypePolice") then {
      _lightRed = [0.1, 0.1, 20];
      _lightBlue = [0.1, 0.1, 20];
  };


  _lightleft = "#lightpoint"
  createVehicle getpos _vehicle;
  sleep 0.2;
  _lightleft setLightColor _lightRed;
  _lightleft setLightBrightness 0.2;
  _lightleft setLightAmbient[0.1, 0.1, 1];

  switch (typeOf _vehicle) do {
      case "C_Offroad_01_F":{
              _lightleft lightAttachObject[_vehicle, [-0.37, 0.0, 0.4]];
          };

      case "B_MRAP_01_F":{
              _lightleft lightAttachObject[_vehicle, [-0.8, -0.90, 0.6]];
          };

      case "C_Van_02_medevac_F":{
              _lightleft lightAttachObject[_vehicle, [-0.7, 1.55, 1.1]];
          };

      case "C_SUV_01_F":{
              _lightleft lightAttachObject[_vehicle, [1.1, 0.4, -0.05]];
          };

      case "I_Heli_light_03_unarmed_F":{
              _lightleft lightAttachObject[_vehicle, [1.23, 4.7, -1.42]];
          };

      case "B_Heli_Light_01_F":{
              _lightleft lightAttachObject[_vehicle, [-0.75, 1.7, -0.95]];
          };

      case "C_Hatchback_01_sport_F":{
              _lightleft lightAttachObject[_vehicle, [0.62, 1.87, -0.52]];
          };

      case "C_Offroad_02_unarmed_F":{
              _lightleft lightAttachObject[_vehicle, [0.62, 1.87, -0.52]];
          };

      case "O_MRAP_02_F":{
              _lightleft lightAttachObject[_vehicle, [-0.8, -1.1, 0.3]];
          };

      case "B_APC_Wheeled_01_cannon_F":{
              _lightleft lightAttachObject[_vehicle, [-0.8, -0.90, 0.6]];
          };

      case "B_Heli_Transport_01_F":{
              _lightleft lightAttachObject[_vehicle, [1.23, 4.7, -1.42]];
          };
  };

  _lightleft setLightAttenuation[0.181, 0, 1000, 130];
  _lightleft setLightIntensity 10;
  _lightleft setLightFlareSize 0.38;
  _lightleft setLightFlareMaxDistance 150;
  _lightleft setLightUseFlare true;

  _lightright = "#lightpoint"
  createVehicle getpos _vehicle;
  sleep 0.2;
  _lightright setLightColor _lightBlue;
  _lightright setLightBrightness 0.2;
  _lightright setLightAmbient[0.1, 0.1, 1];

  switch (typeOf _vehicle) do {
      case "C_Offroad_01_F":{
              _lightright lightAttachObject[_vehicle, [0.37, 0.0, 0.4]];
          };

      case "B_MRAP_01_F":{
              _lightright lightAttachObject[_vehicle, [0.8, -0.90, 0.6]];
          };

      case "C_Van_02_medevac_F":{
              _lightright lightAttachObject[_vehicle, [0.7, 1.55, 1.1]];
          };

      case "C_SUV_01_F":{
              _lightright lightAttachObject[_vehicle, [-1.1, 0.4, -0.05]];
          };

      case "I_Heli_light_03_unarmed_F":{
              _lightright lightAttachObject[_vehicle, [-1, 3.2, -2]];
          };

      case "B_Heli_Light_01_F":{
              _lightright lightAttachObject[_vehicle, [0.75, 1.7, -0.95]];
          };

      case "C_Hatchback_01_sport_F":{
              _lightright lightAttachObject[_vehicle, [-0.62, 1.87, -0.52]];
          };

      case "C_Offroad_02_unarmed_F":{
              _lightright lightAttachObject[_vehicle, [0.37, 0.0, -0.52]];
          };

      case "O_MRAP_02_F":{
              _lightright lightAttachObject[_vehicle, [0.8, -1.1, 0.3]];
          };

      case "B_APC_Wheeled_01_cannon_F":{
              _lightright lightAttachObject[_vehicle, [0.8, -0.90, 0.6]];
          };

      case "B_Heli_Transport_01_F":{
              _lightright lightAttachObject[_vehicle, [-1, 3.2, -2]];
          };
  };

  _lightright setLightAttenuation[0.181, 0, 1000, 130];
  _lightright setLightIntensity 10;
  _lightright setLightFlareSize 0.38;
  _lightright setLightFlareMaxDistance 150;
  _lightright setLightUseFlare true;

  _lightleft setLightDayLight true;
  _lightright setLightDayLight true;

  _transitionState = sunOrMoon;
  _brightness = 0;

  _repeat = true;

  if (_transitionState < 1) then {
      _brightness = 7;
  } else {
      _brightness = 250;
  };

  _leftRed = true;
  while {
      (alive _vehicle) && (_repeat isEqualTo true)
  }
  do {
      if (_leftRed) then {
          _leftRed = false;
          _lightright setLightBrightness 0.0;
          sleep 0.05;
          _lightleft setLightBrightness _brightness;
      }
      else {
          _leftRed = true;
          _lightleft setLightBrightness 0.0;
          sleep 0.05;
          _lightright setLightBrightness _brightness;
      };
      sleep 0.05;
      _repeat = _vehicle getVariable "PMF_var_VehicleEmergencyLights";
  };
  deleteVehicle _lightleft;
  deleteVehicle _lightright;
}
