#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine and BazzInc (Black Desire)
	
	Description:
	Master configuration file for the weapon shops.

*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_1":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			default
			{
				["Rekrut",
					[
						["hgun_P07_snds_F","Taser Pistole",1000],
						["16Rnd_9x21_Mag",nil,50]
					]
				];
			};
		};
	};
	
	case "cop_2":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) != 2): {"Du bist kein Polizeikommissar!"};
			default
			{
				["Polizeikommissar",
					[
						["hgun_P07_snds_F","Taser Pistole",1000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F","Tasergewehr",2500],
						["30Rnd_9x21_Mag",nil,75]


					]
				];
			};
		};
	};
	
	case "cop_3":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) != 3): {"Du bist kein Polizeioberkomissar!"};
			default
			{
				["Polizeioberkomissar",
					[					
						["hgun_P07_snds_F","Taser Pistole",1000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F","Tasergewehr",2500],
						["30Rnd_9x21_Mag",nil,75],
						["arifle_MXC_F",nil,5000],
						["arifle_MX_F",nil,7500],
						["arifle_MXM_F",nil,10000],
						["30Rnd_65x39_caseless_mag",nil,75],
						["30Rnd_65x39_caseless_mag_Tracer",nil,75]
						
					]
				];
			};
		};
	};
	
	case "cop_4":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) != 4): {"Du bist kein Polizeihauptkomissar!"};
			default
			{
				["Polizeihauptkomissar",
					[					
						["hgun_P07_snds_F","Taser Pistole",1000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F","Tasergewehr",2500],
						["30Rnd_9x21_Mag",nil,75],
						["arifle_MXC_F",nil,5000],
						["arifle_MX_F",nil,7500],
						["arifle_MXM_F",nil,10000],
						["30Rnd_65x39_caseless_mag",nil,75],
						["30Rnd_65x39_caseless_mag_Tracer",nil,75]

					]
				];
			};
		};
	};
	
	case "cop_5":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) != 5): {"Du bist kein SEK Anwärter!"};
			default
			{
				["SEK Anwärter",
					[					
						["hgun_P07_snds_F","Taser Pistole",1000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F","Tasergewehr",2500],
						["30Rnd_9x21_Mag",nil,75],
						["arifle_MXC_F",nil,5000],
						["arifle_MX_F",nil,7500],
						["arifle_MXM_F",nil,10000],
						["30Rnd_65x39_caseless_mag",nil,75],
						["30Rnd_65x39_caseless_mag_Tracer",nil,75],
						["srifle_EBR_F",nil,15000],
						["20Rnd_762x51_Mag",nil,75],
						["hgun_PDW2000_F",nil,5000],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "cop_6":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) != 6): {"Du bist kein SEK Sturmtrupp!"};
			default
			{
				["SEK Sturmtrupp",
					[					
						["hgun_P07_snds_F","Taser Pistole",1000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F","Tasergewehr",2500],
						["30Rnd_9x21_Mag",nil,75],
						["arifle_MXC_F",nil,5000],
						["arifle_MX_F",nil,7500],
						["arifle_MXM_F",nil,10000],
						["30Rnd_65x39_caseless_mag",nil,75],
						["30Rnd_65x39_caseless_mag_Tracer",nil,75],
						["srifle_EBR_F",nil,15000],
						["20Rnd_762x51_Mag",nil,75],
						["hgun_PDW2000_F",nil,5000],
						["30Rnd_9x21_Mag",nil,75],
						["B_UAV_01_F",nil,40000],
						["B_UavTerminal",nil,20000],
						["DemoCharge_Remote_Mag",nil,5000],
						["HandGrenade_Stone","Blendgranate",500]
					]
				];
			};
		};
	};
	
	case "cop_7":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) != 7): {"Du bist kein SEK Scharfschütze!"};
			default
			{
				["SEK Scharfschütze",
					[					
						["hgun_P07_snds_F","Taser Pistole",1000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F","Tasergewehr",2500],
						["30Rnd_9x21_Mag",nil,75],
						["arifle_MXC_F",nil,5000],
						["arifle_MX_F",nil,7500],
						["arifle_MXM_F",nil,10000],
						["30Rnd_65x39_caseless_mag",nil,75],
						["30Rnd_65x39_caseless_mag_Tracer",nil,75],
						["srifle_EBR_F",nil,15000],
						["20Rnd_762x51_Mag",nil,75],
						["hgun_PDW2000_F",nil,5000],
						["30Rnd_9x21_Mag",nil,75],
						["B_UAV_01_F",nil,40000],
						["B_UavTerminal",nil,20000],
						["DemoCharge_Remote_Mag",nil,5000],
						["launch_NLAW_F",nil,50000],
						["NLAW_F",nil,25000],
						["srifle_LRR_F",nil,30000],
						["7Rnd_408_Mag",nil,1000],
						["HandGrenade_Stone","Blendgranate",500]
					]
				];
			};
		};
	};
	
	case "cop_8":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) != 8): {"Du bist kein SEK Einsatzteam!"};
			default
			{
				["SEK Einsatzteam",
					[					
						["hgun_P07_snds_F","Taser Pistole",1000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F","Tasergewehr",2500],
						["30Rnd_9x21_Mag",nil,75],
						["arifle_MXC_F",nil,5000],
						["arifle_MX_F",nil,7500],
						["arifle_MXM_F",nil,10000],
						["30Rnd_65x39_caseless_mag",nil,75],
						["30Rnd_65x39_caseless_mag_Tracer",nil,75],
						["srifle_EBR_F",nil,15000],
						["20Rnd_762x51_Mag",nil,75],
						["hgun_PDW2000_F",nil,5000],
						["30Rnd_9x21_Mag",nil,75],
						["B_UAV_01_F",nil,40000],
						["B_UavTerminal",nil,20000],
						["DemoCharge_Remote_Mag",nil,5000],
						["launch_NLAW_F",nil,50000],
						["NLAW_F",nil,25000],
						["HandGrenade_Stone","Blendgranate",500]

					]
				];
			};
		};
	};
	
	case "cop_9":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) != 9): {"Du bist keine Einsatzleitung!"};
			default
			{
				["Einsatzleitung",
					[					
						["hgun_P07_snds_F","Taser Pistole",1000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F","Tasergewehr",2500],
						["30Rnd_9x21_Mag",nil,75],
						["arifle_MXC_F",nil,5000],
						["arifle_MX_F",nil,7500],
						["arifle_MXM_F",nil,10000],
						["30Rnd_65x39_caseless_mag",nil,75],
						["30Rnd_65x39_caseless_mag_Tracer",nil,75],
						["srifle_EBR_F",nil,15000],
						["20Rnd_762x51_Mag",nil,75],
						["hgun_PDW2000_F",nil,5000],
						["30Rnd_9x21_Mag",nil,75],
						["B_UAV_01_F",nil,40000],
						["B_UavTerminal",nil,20000],
						["DemoCharge_Remote_Mag",nil,5000],
						["launch_NLAW_F",nil,50000],
						["NLAW_F",nil,25000],
						["srifle_LRR_F",nil,30000],
						["7Rnd_408_Mag",nil,1000],
						["HandGrenade_Stone","Blendgranate",500]
					]
				];
			};
		};
	};



	
	case "cop_10":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) != 10): {"Du bist kein Polizeichef!"};
			default
			{
				["Polizeichef",
					[
						["hgun_P07_snds_F","Taser Pistole",1000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F","Tasergewehr",2500],
						["30Rnd_9x21_Mag",nil,75],
						["arifle_MXC_F",nil,5000],
						["arifle_MX_F",nil,7500],
						["arifle_MXM_F",nil,10000],
						["30Rnd_65x39_caseless_mag",nil,75],
						["30Rnd_65x39_caseless_mag_Tracer",nil,75],
						["srifle_EBR_F",nil,15000],
						["20Rnd_762x51_Mag",nil,75],
						["hgun_PDW2000_F",nil,5000],
						["30Rnd_9x21_Mag",nil,75],
						["B_UAV_01_F",nil,40000],
						["B_UavTerminal",nil,20000],
						["DemoCharge_Remote_Mag",nil,5000],
						["launch_NLAW_F",nil,50000],
						["NLAW_F",nil,25000],
						["srifle_LRR_F",nil,30000],
						["7Rnd_408_Mag",nil,1000],
						["optic_tws",nil,10000],
						["HandGrenade_Stone","Blendgranate",500]
					]
				];
			};
		};
	};
	
	case "cop_11":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			default
			{
				["Visiere und Schalldämpfer",
					[
						["optic_Arco",nil,5000],
						["optic_Hamr",nil,5000],
						["optic_Aco",nil,5000],
						["optic_ACO_grn",nil,5000],
						["optic_Aco_smg",nil,5000],
						["optic_ACO_grn_smg",nil,5000],
						["optic_Holosight",nil,5000],
						["optic_Holosight_smg",nil,5000],
						["optic_SOS",nil,5000],
						["optic_MRCO",nil,5000],
						["optic_DMS",nil,5000],
						["optic_LRPS",nil,5000],
						["optic_NVS",nil,5000],
						["optic_Nightstalker",nil,5000],
						["acc_pointer_IR",nil,5000],
						["acc_flashlight",nil,5000],
						["muzzle_snds_H",nil,2500],
						["muzzle_snds_L",nil,2500],
						["muzzle_snds_M",nil,2500],
						["muzzle_snds_B",nil,2500],
						["muzzle_snds_acp",nil,2500]
					]
				];
			};
		};
	};
	
	case "cop_12":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			default
			{
				["Zubehör",
					[
						["NVGoggles",nil,1000],
						["acc_flashlight",nil,500],
						["Binocular",nil,100],
						["ItemGPS",nil,100],
						["ToolKit",nil,100],
						["FirstAidKit",nil,100]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_rebel): {"Du hast keine Rebellen Liezens!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_SDAR_F",nil,20000],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["arifle_TRG20_F",nil,25000],
						["arifle_Mk20_F",nil,25000],
						["30Rnd_556x45_Stanag",nil,250],
						["30Rnd_556x45_Stanag",nil,300],
						["arifle_Katiba_F",nil,30000],
						["30Rnd_65x39_caseless_green",nil,275],
						["LMG_Mk200_F",nil,50000],
						["200Rnd_65x39_cased_Box",nil,5000],
						["srifle_DMR_01_F",nil,40000],
						["10Rnd_762x51_Mag",nil,1000],
						["SMG_02_F",nil,2500],
						["30Rnd_9x21_Mag",nil,75],
						["arifle_MX_Black_F",nil,35000],
						["arifle_MXM_Black_F",nil,25000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["srifle_EBR_F",nil,55000],
						["20Rnd_762x51_Mag",nil,400],
						["arifle_MX_SW_Black_F",nil,37500],
						["100Rnd_65x39_caseless_mag",nil,150],
						["optic_NVS",nil,27500],
						["optic_Aco",nil,3500],
						["optic_ACO_grn",nil,3500],
						["optic_ACO_grn_smg",nil,3500],
						["optic_Holosight_smg",nil,5000],
						["optic_Holosight",nil,5000],
						["optic_Arco",nil,7500],
						["optic_MRCO",nil,7500],
						["optic_Hamr",nil,7500],
						["acc_flashlight",nil,1000],
						["ToolKit",nil,2000],
						["FirstAidKit",nil,500],
						["muzzle_snds_L",nil,500],
						["muzzle_snds_H",nil,500],
						["muzzle_snds_B",nil,500],
						["optic_DMS",nil,5000],
						["optic_LRPS",nil,5000],
						["NVGoggles",nil,12500]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Polizist!"};
			case (!license_civ_gun): {"Du hast keinen Waffenschein!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["SMG_01_F",nil,25000],
						["30Rnd_45ACP_Mag_SMG_01",nil,125],
						["hgun_PDW2000_F",nil,20000],
						["hgun_Rook40_F",nil,7500],
						["16Rnd_9x21_Mag",nil,75],
						["30Rnd_9x21_Mag",nil,125],
						["hgun_ACPC2_F",nil,10000],
						["9Rnd_45ACP_Mag",nil,75],
						["hgun_Pistol_heavy_02_Yorris_F",nil,12500],
						["6Rnd_45ACP_Cylinder",nil,100],
						["optic_Aco_smg",nil,2500],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,2500]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Du bist kein Notarzt"};
			default {
				["Sani Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200]
					]
				];
			};
		};
	};
	
	case "adac_basic":
	{
		switch (true) do 
		{
			case (playerSide != east): {"Du bist kein ADAC"};
			default {
				["ADAC Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,1200]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Werkzeugladen",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,250],
				["ToolKit",nil,1500],
				["FirstAidKit",nil,250],
				["NVGoggles",nil,10000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
	
	case "gasstore":
	{
		["Tankstellenladen",
			[
				["ToolKit",nil,2500],
				["FirstAidKit",nil,750]
			]
		];
	};
};
