["InitializePlayer", [player]] call BIS_fnc_dynamicGroups; // Initializes the player\client side Dynamic Groups framework
execVM "PMF\playerInit.sqf";
execVM "scripts\PlayerRoles.sqf";
execVM "keyhandler.sqf";
execVM "scripts\animations\jump.sqf";
execVM "scripts\ReservedSlots.sqf";
