#include <macro.h>
/*
	File: fn_adminRepairBuild.sqf
	Author: ColinM9991
	
	Description:
	Opens the Debug Console.
	No it doesn't, it repairs buildings.
*/
if(__GETC__(life_adminlevel) == 0) exitWith {closeDialog 0;};

private["_target"];
_target = lbData[2902,lbCurSel (2902)];
_target = call compile format["%1", _target];
if(isNil "_target") exitwith {};
if(isNull _target) exitWith {};
if(_target == player) exitWith {hint "You can not Kick yourself";};

_target ["Kicked by Admin",false,true] call BIS_fnc_endMission;
hint format["You have Kicked %1 from the Server",_target getVariable["realname",name _target]];