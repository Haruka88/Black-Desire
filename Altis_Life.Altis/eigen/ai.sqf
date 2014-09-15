//////////////////////////////////////////////////////////////////////////
//                          Script Made By                              //
//                          PAfreakFlorian                              //
//         When you steal it there will be legal consequences!          //
//              Wer das hier klaut, sollte damit rechnen                //
//                Post von meinem Anwalt zu bekommen!                   //
//////////////////////////////////////////////////////////////////////////


sleep 3;

{
_x setSkill ["aimingspeed", 0.7];
_x setSkill ["spotdistance", 0.9];
_x setSkill ["aimingaccuracy", 0.8];
_x setSkill ["aimingshake", 0.8];
_x setSkill ["spottime", 0.6];
_x setSkill ["reloadSpeed", 0.2];
_x setSkill ["commanding", 1];
_x setSkill ["general", 0.8];
} forEach allUnits; 

sleep 1;
removeallweapons bot_0; bot_0 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_0 addweapon "arifle_MXC_F"; bot_0 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_1; bot_1 addmagazines["30Rnd_556x45_Stanag", 20]; bot_1 addweapon "arifle_TRG20_F"; bot_1 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_2; bot_2 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_2 addweapon "arifle_MXC_F"; bot_2 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_3; bot_3 addmagazines["30Rnd_556x45_Stanag", 20]; bot_3 addweapon "arifle_TRG20_F"; bot_3 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_4; bot_4 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_4 addweapon "arifle_MXC_F"; bot_4 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_5; bot_5 addmagazines["30Rnd_65x39_caseless_green", 20]; bot_5 addweapon "arifle_Katiba_F"; bot_5 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_6; bot_6 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_6 addweapon "arifle_MXC_F"; bot_6 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_7; bot_7 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_7 addweapon "arifle_MXC_F"; bot_7 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_8; bot_8 addmagazines["30Rnd_65x39_caseless_green", 20]; bot_8 addweapon "arifle_Katiba_F"; bot_8 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_9; bot_9 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_9 addweapon "arifle_MXC_F"; bot_9 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_10; bot_10 addmagazines["30Rnd_556x45_Stanag", 20]; bot_10 addweapon "arifle_TRG20_F"; bot_10 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_11; bot_11 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_11 addweapon "arifle_MXC_F"; bot_11 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_12; bot_12 addmagazines["30Rnd_65x39_caseless_green", 20]; bot_12 addweapon "arifle_Katiba_F"; bot_12 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_13; bot_13 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_13 addweapon "arifle_MXC_F"; bot_13 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_14; bot_14 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_14 addweapon "arifle_MXC_F"; bot_14 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_15; bot_15 addmagazines["30Rnd_65x39_caseless_green", 20]; bot_15 addweapon "arifle_Katiba_F"; bot_15 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_16; bot_16 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_16 addweapon "arifle_MXC_F"; bot_16 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_17; bot_17 addmagazines["10Rnd_762x51_Mag", 20]; bot_17 addweapon "srifle_DMR_01_F"; bot_17 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_18; bot_18 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_18 addweapon "arifle_MXC_F"; bot_18 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_19; bot_19 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_19 addweapon "arifle_MXC_F"; bot_19 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_20; bot_20 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_20 addweapon "arifle_MXC_F"; bot_20 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_21; bot_21 addmagazines["30Rnd_65x39_caseless_green", 20]; bot_21 addweapon "arifle_Katiba_F"; bot_21 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_22; bot_22 addmagazines["30Rnd_556x45_Stanag", 20]; bot_22 addweapon "arifle_TRG20_F"; bot_22 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_23; bot_23 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_23 addweapon "arifle_MXC_F"; bot_23 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_24; bot_24 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_24 addweapon "arifle_MXC_F"; bot_24 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_25; bot_25 addmagazines["30Rnd_65x39_caseless_green", 20]; bot_25 addweapon "arifle_Katiba_F"; bot_25 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_26; bot_26 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_26 addweapon "arifle_MXC_F"; bot_26 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_27; bot_27 addmagazines["30Rnd_556x45_Stanag", 20]; bot_27 addweapon "arifle_TRG20_F"; bot_27 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_28; bot_28 addmagazines["30Rnd_556x45_Stanag", 20]; bot_28 addweapon "arifle_TRG20_F"; bot_28 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_29; bot_29 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_29 addweapon "arifle_MXC_F"; bot_29 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_30; bot_30 addmagazines["30Rnd_65x39_caseless_green", 20]; bot_30 addweapon "arifle_Katiba_F"; bot_30 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_31; bot_31 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_31 addweapon "arifle_MXC_F"; bot_31 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_32; bot_32 addmagazines["10Rnd_762x51_Mag", 20]; bot_32 addweapon "srifle_DMR_01_F"; bot_32 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_33; bot_33 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_33 addweapon "arifle_MXC_F"; bot_33 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_34; bot_34 addmagazines["30Rnd_556x45_Stanag", 20]; bot_34 addweapon "arifle_TRG20_F"; bot_34 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_35; bot_35 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_35 addweapon "arifle_MXC_F"; bot_35 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_36; bot_36 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_36 addweapon "arifle_MXC_F"; bot_36 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_37; bot_37 addmagazines["30Rnd_65x39_caseless_green", 20]; bot_37 addweapon "arifle_Katiba_F"; bot_37 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_38; bot_38 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_38 addweapon "arifle_MXC_F"; bot_38 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_39; bot_39 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_39 addweapon "arifle_MXC_F"; bot_39 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_40; bot_40 addmagazines["10Rnd_762x51_Mag", 20]; bot_40 addweapon "srifle_DMR_01_F"; bot_40 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_41; bot_41 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_41 addweapon "arifle_MXC_F"; bot_41 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_42; bot_42 addmagazines["30Rnd_65x39_caseless_green", 20]; bot_42 addweapon "arifle_Katiba_F"; bot_42 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_43; bot_43 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_43 addweapon "arifle_MXC_F"; bot_43 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_44; bot_44 addmagazines["30Rnd_556x45_Stanag", 20]; bot_44 addweapon "arifle_TRG20_F"; bot_44 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_45; bot_45 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_45 addweapon "arifle_MXC_F"; bot_45 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_46; bot_46 addmagazines["10Rnd_762x51_Mag", 20]; bot_46 addweapon "srifle_DMR_01_F"; bot_46 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_47; bot_47 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_47 addweapon "arifle_MXC_F"; bot_47 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_48; bot_48 addmagazines["30Rnd_65x39_caseless_green", 20]; bot_48 addweapon "arifle_Katiba_F"; bot_48 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_49; bot_49 addmagazines["30Rnd_556x45_Stanag", 20]; bot_49 addweapon "arifle_TRG20_F"; bot_49 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_50; bot_50 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_50 addweapon "arifle_MXC_F"; bot_50 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_51; bot_51 addmagazines["30Rnd_65x39_caseless_mag", 20]; bot_51 addweapon "arifle_MXC_F"; bot_51 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_52; bot_52 addmagazines["30Rnd_556x45_Stanag", 20]; bot_52 addweapon "arifle_TRG20_F"; bot_52 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];
removeallweapons bot_53; bot_53 addmagazines["30Rnd_556x45_Stanag", 20]; bot_53 addweapon "arifle_TRG20_F"; bot_53 addeventhandler ["fired", {(_this select 0) setvehicleammo 1}];