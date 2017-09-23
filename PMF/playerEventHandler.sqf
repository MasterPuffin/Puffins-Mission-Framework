player addEventHandler ["fired", {call PMF_fn_WeaponHandler}];

player removeAllEventHandlers "handleDamage";
player addEventHandler["handleDamage",{call PMF_fn_WeaponTazer}];
