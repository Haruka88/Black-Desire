/*
	File: fn_jailMe.sqf
	Author Bryan "Tonic" Boardwine
	
	Description:
	Once word is received by the server the rest of the jail execution is completed.
*/
if(isNil "king_get_out_of_jail_for_free") then {king_get_out_of_jail_for_free = false;};

private["_ret","_bad","_time","_bail","_esc","_countDown","_king_jail_time","_key_text"];
_ret = [_this,0,[],[[]]] call BIS_fnc_param;
_bad = [_this,1,false,[false]] call BIS_fnc_param;
_time = [_this,2,15,[0]] call BIS_fnc_param; //##80

_time = time + (_time * 60); //x Minutes

//if(_bad) then { _time = time + 1100; } else { _time = time + (15 * 60); }; //##80 (time loaded from DB)

if(count _ret > 0) then { life_bail_amount = (_ret select 3); } else { life_bail_amount = 75000; /*_time = time + (10 * 60); */};
_esc = false;
_bail = false;
_free = false;

if(_time <= 0) then { _time = time + (15 * 60); hintC "Bitte Admin melden: JAIL_FALLBACK_15, time is zero!"; };


[_bad,_time] spawn
{
	life_canpay_bail = false;
	if(_this select 0) then
	{
		//sleep (10 * 60);
		//50% of time
		sleep ( (_this select 1) * 0.5 );
	}
		else
	{
		//sleep (5 * 60);
		//20% of time
		sleep ( (_this select 1) * 0.2 );
	};
	life_canpay_bail = nil;
};

while {true} do
{
    //reduce the jail time in case of some work
    if(!isNil "king_jail_reduce_time") then
    {
        if(king_jail_reduce_time > 0) then
        {
            _time = _time - king_jail_reduce_time;
            titleText[format["Deine Haftzeit wurde um %1 Sekunden reduziert.", king_jail_reduce_time],"PLAIN"];
            king_jail_reduce_time = 0;
        };
    };

	if((round(_time - time)) > 0) then
	{
        _key_text = "";
        if(!isNil "king_jail_work_keys_found") then
        {
            _key_text = format["%1 von %2 Schlüssel gefunden\nbaue mehr Steine ab!",king_jail_work_keys_found,king_jail_work_needed_keys];
        };
		_countDown = if(round (_time - time) > 60) then {format["%1 minute(s)",round(round(_time - time) / 60)]} else {format["%1 second(s)",round(_time - time)]};
		hintSilent format["Verbleibende Zeit:\n %1\n %2", _countDown, _key_text];
	};
	
	if(player distance (getMarkerPos "jail_marker") > 60) exitWith
	{
		_esc = true;
	};
	
	if(life_bail_paid) exitWith
	{
		_bail = true;
	};
	
    if(king_get_out_of_jail_for_free) exitWith
    {
        _free = true;
    };

	if((round(_time - time)) < 1) exitWith {hint ""};
	if(!alive player && ((round(_time - time)) > 0)) exitWith
	{
	
	};
	sleep 1;
};


switch (true) do
{
	case (_free) :
	{
		life_is_arrested = false;
        life_time_arrested = 0;
		life_bail_paid = false;
        king_get_out_of_jail_for_free = false;
        player setVariable["king_jail_work_all_keys_found",false,false];
        king_jail_work_keys_found = 0;
        king_jail_work_gathering_amount = 0;
		hint "Du bist wieder frei!";
		serv_wanted_remove = [player];
		player setPos (getMarkerPos "jail_release");
		[[getPlayerUID player],"life_fnc_wantedRemove",false,false] spawn life_fnc_MP;
		[1,false] call SOCK_fnc_updateRequest;
	};
	
	case (_bail) :
	{
		life_is_arrested = false;
        life_time_arrested = 0;
		life_bail_paid = false;
        king_get_out_of_jail_for_free = false;
        player setVariable["king_jail_work_all_keys_found",false,false];
        king_jail_work_keys_found = 0;
        king_jail_work_gathering_amount = 0;
		hint "You have paid your bail and are now free.";
		serv_wanted_remove = [player];
		player setPos (getMarkerPos "jail_release");
		[[getPlayerUID player],"life_fnc_wantedRemove",false,false] spawn life_fnc_MP;
		[1,false] call SOCK_fnc_updateRequest;
	};
	
	case (_esc) :
	{
		life_is_arrested = false;
        life_time_arrested = 0;
        life_bail_paid = false;
        king_get_out_of_jail_for_free = false;
        player setVariable["king_jail_work_all_keys_found",false,false];
        king_jail_work_keys_found = 0;
        king_jail_work_gathering_amount = 0;
		hint "Sie sind aus dem Knast entkommen. Sie bleiben auf der Fahndungsliste.";
		[[0,format["%1 has escaped from jail!",name player]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		[[getPlayerUID player,name player,"901"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
		[1,false] call SOCK_fnc_updateRequest;
	};
	
	case (alive player && !_esc && !_bail) :
	{
		life_is_arrested = false;
        life_time_arrested = 0;
        life_bail_paid = false;
        king_get_out_of_jail_for_free = false;
        player setVariable["king_jail_work_all_keys_found",false,false];
        king_jail_work_keys_found = 0;
        king_jail_work_gathering_amount = 0;
		hint "Sie haben Ihre Zeit abgesessen und sind frei.";
		[[getPlayerUID player],"life_fnc_wantedRemove",false,false] spawn life_fnc_MP;
		player setPos (getMarkerPos "jail_release");
		[1,false] call SOCK_fnc_updateRequest;
	};
};