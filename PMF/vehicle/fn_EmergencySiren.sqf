/*
Plays a siren sound

by Master Puffin
*/

_vehicle = _this select 0;
[_vehicle]Spawn{
	_vehicle = _this select 0;
	_ComVeh = _vehicle getVariable "PMF_var_VehicleType";

	_repeat = true;

	if (_ComVeh isEqualTo "PMF_var_VehicleTypePMC") then {

		while {(alive _vehicle) && (_repeat isEqualTo true)} do {
			_vehicle say3D "SirenPMC";
			sleep 5.488;
			_repeat = _vehicle getVariable "PMF_var_VehicleEmergencySiren";
		};
	};
	if (_ComVeh isEqualTo "PMF_var_VehicleTypePolice") then {

		while {(alive _vehicle) && (_repeat isEqualTo true)} do {
			_vehicle say3D "SirenPolice";
			sleep 3.0;
			_repeat = _vehicle getVariable "PMF_var_VehicleEmergencySiren";
		};
	};
}
