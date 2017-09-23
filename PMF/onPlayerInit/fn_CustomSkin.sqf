/*
Sets a custom uniform skin
NEEDS TO BE CONFIGURED!
by Interstellar
*/

while {true} do
{
	waitUntil {(uniform player isEqualTo "U_O_OfficerUniform_ocamo") || (uniform player isEqualTo "U_B_CombatUniform_mcam") || (uniform player isEqualTo "U_B_T_Soldier_F")};
	sleep 1;
	switch (true) do
	{
		case (uniform player isEqualTo "U_O_OfficerUniform_ocamo"):
		{
			player setObjectTextureGlobal [0,"yourskin.jpg"];
		};
		case (uniform player isEqualTo "U_B_CombatUniform_mcam"):
		{
			player setObjectTextureGlobal [0,"yourskin.jpg"];
		};
		case (uniform player isEqualTo "U_B_T_Soldier_F"):
		{
			player setObjectTextureGlobal [0,"yourskin.jpg"];
			if (backpack player isEqualTo "B_TacticalPack_blk") then {
				(backpackContainer player) setObjectTextureGlobal [0,"yourbackpackskin.jpg"]
			};
		};
	};
	waitUntil {(uniform player isEqualTo "U_O_OfficerUniform_ocamo") || (uniform player isEqualTo "U_B_CombatUniform_mcam") || (uniform player isEqualTo "U_B_T_Soldier_F")};
};
