#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		if(__GETC__(life_coplevel) == 1) then
		{
			_ret set[count _ret,["U_Rangemaster","Rekrut",0]];
		};
		if(__GETC__(life_coplevel) == 2) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam_vest","Polizei",0]];
		};
		if(__GETC__(life_coplevel) == 3) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam_vest","Polizei",0]];
		};
		if(__GETC__(life_coplevel) == 4) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam_vest","Polizei",0]];
		};
		if(__GETC__(life_coplevel) == 5) then
		{
			_ret set[count _ret,["U_B_SpecopsUniform_sgg","SEK",0]];
		};
		if(__GETC__(life_coplevel) == 6) then
		{
			_ret set[count _ret,["U_B_SpecopsUniform_sgg","SEK",0]];
		};
		if(__GETC__(life_coplevel) == 7) then
		{
			_ret set[count _ret,["U_B_SpecopsUniform_sgg","SEK",0]];
		};
		if(__GETC__(life_coplevel) == 8) then
		{
			_ret set[count _ret,["U_B_SpecopsUniform_sgg","SEK",0]];
		};
			if(__GETC__(life_coplevel) == 9) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam","Einsatzleitung",0]];
		};
			if(__GETC__(life_coplevel) == 10) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam","Polizeichef",0]];
		};
	};
	
	//Hats
	case 1:
	{
		_ret set[count _ret,["H_Beret_blk_POLICE",nil,50]];
		_ret set[count _ret,["H_Cap_blk",nil,120]];
	};
	
	//Glasses
	case 2:
	{
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["G_Aviator",nil,100]];
		};
	};
	
	//Vest
	case 3:
	{
		_ret set[count _ret,["V_TacVest_blk_POLICE",nil,1500]];
		_ret set[count _ret,["V_PlateCarrierIA2_dgtl",nil,6000]];
	};
	
	//Backpacks
	case 4:
	{
		_ret set[count _ret,["B_Carryall_cbr",nil,500]];
	};
};

_ret;