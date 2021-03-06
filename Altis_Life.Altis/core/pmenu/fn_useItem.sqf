/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main function for item effects and functionality through the player menu.
*/
private["_item"];
disableSerialization;
if((lbCurSel 2005) == -1) exitWith {hint "Du musst einen Gegenstand auswaehlen!!";};
_item = lbData[2005,(lbCurSel 2005)];

switch (true) do
{
	case (_item == "water" or _item == "coffee"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
		};
	};
	
	case (_item == "boltcutter"): 
	{
		[cursorTarget] spawn life_fnc_boltcutter;
		closeDialog 0;
	};
	
	case (_item == "blastingcharge"): 
	{
		player reveal fed_bank;
		(group player) reveal fed_bank;
		[cursorTarget] spawn life_fnc_blastingCharge;
	};
	
	case (_item == "defusekit"): 
	{
		[cursorTarget] spawn life_fnc_defuseKit;
	};
	
	case (_item == "redgull"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			[] spawn
			{
				life_redgull_effect = time;
				titleText["Du kannst nun 3min lang rennen!","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
				player enableFatigue true;
			};
		};
	};
	
	case (_item == "spikeStrip"):
	{
		if(!isNull life_spikestrip) exitWith {hint "Du hast schon ein Nagelstreifen gelegt!"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	};
	
	case (_item == "heroinp"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn fnc_drug_use;
		};
	};
	
	case (_item == "fuelF"):
	{
		if(vehicle player != player) exitWith {hint "Sie können das Fahrzeug nicht tanken, waehrend es in!"};
		[] spawn life_fnc_jerryRefuel;
	};
	
	case (_item == "marijuana"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn fnc_drugweed_use;
		};
	};
	
	case (_item == "lockpick"):
	{
		[] spawn life_fnc_lockpick;
	};
	
	case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach"]):
	{
		[_item] call life_fnc_eatFood;
	};
	
	case "fishing":
	{
		[] spawn fnc_fishing;
	};
	
	case (_item == "pickaxe"):
	{
		[] spawn life_fnc_pickAxeUse;
	};
	
	case (_item in ["storage1","storage2"]):
    {
		[_item] call life_fnc_placeStorage;
    };	
	
	case (_item == "battery"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_battery = 100;
			hint "Dein Akku ist nun vollgeladen.";
		};
	};
	
	case (_item == "speedtrap"):
	{
        [] spawn king_fnc_speedtrapAdd;
        closeDialog 0;
	};    
       
	case (_item == "speedtrapdetector"):
	{
		hint "...es blinkt...";
	};
	
	case (_item == "laptop"):
	{
        [] spawn
        {   
            private["_status"];
            _status = 0;
            while {_status < 100} do
            {
                hintsilent format ["Bitte warten - Ladet das System %1%", _status];
                _status = _status + 1;
                sleep 0.1;
            };
            hintsilent format ["[Error 42] Kernel-panik..."];
        };
	};
	
	case (_item == "fuelManipulator"):
	{
        closeDialog 0;
		[] spawn king_fnc_fuelchangerManipulate;
	};    
       
 	case (_item == "fuelPipe"):
	{
        closeDialog 0;
		[] spawn king_fnc_fuelPipe;
	};
	
	default
	{
		hint "This item isn't usable.";
	};
};
	
[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;