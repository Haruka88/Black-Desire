/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mohammed's Jihadi Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_IG_Guerilla1_1",nil,5000],
			["U_I_G_Story_Protagonist_F",nil,7500],
			["U_I_G_resistanceLeader_F",nil,11500],
			["U_O_SpecopsUniform_ocamo",nil,17500],
			["U_O_PilotCoveralls",nil,15610],
			["U_O_GhillieSuit",nil,15610],
			["U_I_GhillieSuit",nil,15610],
			["U_I_OfficerUniform",nil,15610],
			["U_I_CombatUniform_tshirt",nil,15610],
			["U_I_CombatUniform_shortsleeve",nil,15610],
			["U_I_CombatUniform",nil,15610],
			["U_IG_Guerilla3_2",nil,10610],
			["U_IG_Guerilla3_1",nil,11310],
			["U_IG_Guerilla2_3",nil,10610],
			["U_IG_leader","Guerilla Leader",15340]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_ShemagOpen_tan",nil,850],
			["H_Shemag_olive",nil,850],
			["H_ShemagOpen_khk",nil,800],
			["H_HelmetO_ocamo",nil,2500],
			["H_MilCap_oucamo",nil,1200],
			["H_PilotHelmetHeli_I",nil,1500],
			["H_PilotHelmetHeli_B",nil,1800],
			["H_CrewHelmetHeli_I",nil,1200],
			["H_Booniehat_tan",nil,1700],
			["H_Booniehat_grn",nil,1400],
			["H_MilCap_dgtl",nil,1900],
			["H_MilCap_mcamo",nil,1100],
			["G_Balaclava_blk",nil,1100],
			["G_Balaclava_lowprofile",nil,1100],
			["G_Balaclava_combat",nil,1100],
			["G_Balaclava_oli",nil,1100],
			["G_Bandanna_sport",nil,1100]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Bandanna_aviator",nil,1100],
			["G_Bandanna_beast",nil,1100],
			["G_Bandanna_tan",nil,1100],
			["G_Bandanna_blk",nil,1100],
			["G_Bandanna_oli",nil,1100],
			["G_Bandanna_shades",nil,1100],
			["H_Bandanna_camo",nil,650]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVest_khk",nil,12500],
			["V_BandollierB_cbr",nil,4500],
			["V_HarnessOGL_gry",nil,7500],
			["V_HarnessOGL_brn",nil,5500],
			["V_Chestrig_oli",nil,4500],
			["V_PlateCarrierSpec_rgr",nil,4500],
			["V_Rangemaster_belt",nil,4500],
			["V_TacVest_blk",nil,4500],
			["V_PlateCarrierIAGL_dgtl",nil,4500],
			["V_TacVestIR_blk",nil,4500],
			["V_TacVestCamo_khk",nil,4500],
			["V_TacVest_oli",nil,4500],
			["V_TacVest_camo",nil,4500],
			["V_PlateCarrierSpec_rgr",nil,4500],
			["V_PlateCarrierIA1_dgtl",nil,4500],
			["V_PlateCarrier2_rgr",nil,4500],
			["V_PlateCarrierIA2_dgtl",nil,4500],
			["V_HarnessO_brn",nil,7500]
		
		
		
		
		
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_FieldPack_oucamo",nil,4500],
			["B_Carryall_oli",nil,5000]
		];
	};
};