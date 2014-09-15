/*
	File: fn_punishSafezonekiller.sqf
	Author: MarioF
	
	Description:
	Punish the Safezonekiller
*/
private["_victim","_curWeapon"];

_victim = [_this,0,false] call bis_fnc_param;

if((time - life_safezone_penalty_time) > 2) then {
	life_safezone_penalty_time = time;
	life_safezone_penalty = life_safezone_penalty + 1;
	[] spawn { sleep 300; life_safezone_penalty = life_safezone_penalty - 1; };

	if(life_safezone_penalty > 2) then 
	{
		if(vehicle player != player) then 
		{
			moveOut player;
			license_civ_kart = false;
			license_civ_quad = false;
			license_civ_driver = false;
			license_civ_truck = false;
			titleText[format["For repeatedly trying to kill someone in a Safezone you lost your Driving-Licenses and are forced to eject!", life_safezone_penalty],"PLAIN"];
		} else {
			_curWeapon = currentWeapon player;
			player removeWeapon _curWeapon;
			titleText[format["For repeatedly trying to kill someone in a Safezone you lost your Weapon!", life_safezone_penalty],"PLAIN"];
		};
	} else {
		titleText[format["For try to kill someone in a Safezone you got %1 Penalty, 3 and you lose your Weapon or Truck/Driving License", life_safezone_penalty],"PLAIN"];
	};
};