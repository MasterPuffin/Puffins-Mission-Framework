/*
Sets a custom uniform skin

by Interstellar
*/

while {true} do
{
	waitUntil {(uniform player isEqualTo "U_O_OfficerUniform_ocamo") || (uniform player isEqualTo "U_B_CombatUniform_mcam") || (uniform player isEqualTo "U_B_CombatUniform_mcam_vest") || (uniform player isEqualTo "U_B_CTRG_1") || (uniform player isEqualTo "U_B_T_Soldier_F") || (uniform player isEqualTo "U_O_PilotCoveralls")};
	sleep 1;
	switch (true) do
	{
		case (uniform player isEqualTo "U_O_OfficerUniform_ocamo"):
		{
			player setObjectTextureGlobal [0,"resources\uniforms\sclead.jpg"];
		};
		case (uniform player isEqualTo "U_B_CombatUniform_mcam"):
		{
			player setObjectTextureGlobal [0,"resources\uniforms\police.jpg"];
		};
		case (uniform player isEqualTo "U_B_CombatUniform_mcam_vest"):
		{
			player setObjectTextureGlobal [0,"resources\uniforms\scnew.jpg"];
		};
		case (uniform player isEqualTo "U_B_CTRG_1"):
		{
			player setObjectTextureGlobal [0,"resources\uniforms\scnormal.jpg"];
		};
		case (uniform player isEqualTo "U_O_PilotCoveralls"):
		{
			player setObjectTextureGlobal [0,"resources\uniforms\Jet.jpg"];
		};
		case (uniform player isEqualTo "U_B_T_Soldier_F"):
		{
			player setObjectTextureGlobal [0,"resources\uniforms\medic_uniform.jpg"];
			if (backpack player isEqualTo "B_TacticalPack_blk") then {
				(backpackContainer player) setObjectTextureGlobal [0,"resources\uniforms\medic_backpack.jpg"]
			};
		};
	};
	waitUntil {(uniform player != "U_O_OfficerUniform_ocamo") || (uniform player != "U_B_CombatUniform_mcam") || (uniform player != "U_B_CombatUniform_mcam_vest") || (uniform player != "U_B_CTRG_1") || (uniform player != "U_B_T_Soldier_F") || (uniform player != "U_O_PilotCoveralls")};
};
