//////////////////////////////////////////////////////////////////////////
//                          Script Made By                              //
//                          PAfreakFlorian                              //
//         When you steal it there will be legal consequences!          //
//              Wer das hier klaut, sollte damit rechnen                //
//                Post von meinem Anwalt zu bekommen!                   //
//////////////////////////////////////////////////////////////////////////

#define SAFETY_ZONES    [["SecC", 1000]]

life_action_SecC = player addAction["Auf Sector C als Beifahrer einsteigen",{ player moveInCargo cursortarget; }
,"",999,false,false,"",'player distance (getMarkerPos "SecC") < 1100 && !isNull cursorTarget && ((cursorTarget isKindOf "Car") OR (cursorTarget isKindOf "Air") OR (cursorTarget isKindOf "Ship")) && (locked cursorTarget) == 0'];

life_action_SecC = player addAction["Auf Sector C als Fahrer einsteigen",{ player moveInDriver cursortarget; }
,"",999,false,false,"",'player distance (getMarkerPos "SecC") < 1100 && !isNull cursorTarget && ((cursorTarget isKindOf "Car") OR (cursorTarget isKindOf "Air") OR (cursorTarget isKindOf "Ship")) && (locked cursorTarget) == 0'];

while {true} do {

if ({(player) distance getMarkerPos (_x select 0) < _x select 1} count SAFETY_ZONES > 0) then
{ player addRating (-(rating player) -99999999);
};

if ({(player) distance getMarkerPos (_x select 0) > _x select 1} count SAFETY_ZONES > 0) then
{ player addRating (-(rating player) +99999999); 
};

sleep 5;
};