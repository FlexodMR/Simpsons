//Maya ASCII 4.0 scene
//Name: hom_get_out_of_car_close_door_high_driver.ma
//Last modified: Tue, Jul 23, 2002 01:53:58 PM
requires maya "4.0";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dSimpleShader" "17.1";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_get_out_of_car_close_door_high_driverSource";
	setAttr ".ihi" 0;
	setAttr ".du" 15;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTL -n "animCurveTL412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTL -n "animCurveTL413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.16164953913568911 1 0.15958148881285994 
		2 0.15503075789481741 3 0.14845119539108131 4 0.14029665031117161 5 0.13102097166460808 
		6 0.1210780084609107 7 0.11092160970959931 8 0.10100562442019374 9 0.091783901602213933 
		10 0.083710290265179774 11 0.076682887726465726 12 0.070154616405601389 13 
		0.063911562965339078 14 0.057739814068431185 15 0.051425456377630019;
createNode animCurveTL -n "animCurveTL414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0;
createNode animCurveTL -n "animCurveTL415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.32811455477872159 1 0.31318867392142219 
		2 0.2958109822602118 3 0.27667622034179984 4 0.25647912871289569 5 0.23591444792020891 
		6 0.21567691851044885 7 0.1964612810303249 8 0.17896227602654655 9 0.16387464404582328 
		10 0.15189312563486446 11 0.14704243312103699 12 0.1505080344492504 13 0.15872580359252803 
		14 0.16813161452389325 15 0.17516134121636945;
createNode animCurveTA -n "animCurveTA1131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 101.96648494644189 1 98.0149835178632 
		2 91.577432845660326 3 83.452001940345141 4 74.436859812429532 5 65.330175472425381 
		6 55.256483641029064 7 43.68367152371146 8 31.92493685814626 9 21.293477382007097 
		10 13.102490832967636 11 7.5587005823293696 12 3.7866414552521914 13 1.4762283701973855 
		14 0.42256073733704419 15 0;
createNode animCurveTU -n "animCurveTU57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTU -n "animCurveTU58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTU -n "animCurveTU59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTU -n "animCurveTU60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTU -n "animCurveTU61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTU -n "animCurveTU62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTU -n "animCurveTU63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 15 1;
createNode animCurveTU -n "animCurveTU64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 15 1;
createNode animCurveTA -n "animCurveTA1132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTL -n "animCurveTL416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTL -n "animCurveTL417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTL -n "animCurveTL418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTL -n "animCurveTL419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.26840906169891499 10 -0.21600000000000003 
		15 -0.21594587158542247;
createNode animCurveTL -n "animCurveTL420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.13871566434692401 10 0.25615969621863705 
		15 0.1380615615975922;
createNode animCurveTL -n "animCurveTL421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.72105209683757909 10 0.27969514345213414 
		15 0.26126021176420267;
createNode animCurveTA -n "animCurveTA1135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -182.24116870371074 10 -160.34190722137234 
		15 -182.41559831435438;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA1136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 73.374813696266287 10 159.00219505561634 
		15 178.29334039159491;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA1137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -182.27625436181188 10 -179.86728989268164 
		15 -181.91192112079685;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTL -n "animCurveTL422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.265 10 0.265 15 0.26454016861507795;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTL -n "animCurveTL423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.14100239607637821 10 0.14100239607637821 
		15 0.13806192026723146;
createNode animCurveTL -n "animCurveTL424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.19886445701912597 10 0.19203041592858502 
		15 0.19557150254115083;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA1138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -185.39775737145624 10 -180.51026935245974 
		15 -179.97680212511617;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA1139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 74.213697861490914 10 152.65665023941881 
		15 156.62217632701874;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA1140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -185.11838403443573 10 -180.79514696734765 
		15 -179.35075661118441;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA1141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTL -n "animCurveTL425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.045130342964677654 10 -0.022480392482739375 
		15 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTL -n "animCurveTL426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.0036805403073630867 10 -0.0018333561330922256 
		15 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTL -n "animCurveTL427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.0016096054423793 10 1.0008017790378723 
		15 1;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTL -n "animCurveTL428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.034660776702225261 10 -0.017265276644586436 
		15 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTL -n "animCurveTL429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 15 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTL -n "animCurveTL430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 15 1;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTL -n "animCurveTL431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.24038301146313867 10 0.12448245613311931 
		15 0.076472881617957705;
createNode animCurveTL -n "animCurveTL432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.94561207104472544 10 0.94767035583507364 
		15 0.93105416142265018;
createNode animCurveTL -n "animCurveTL433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.48792693876095555 10 0.22587461217571961 
		15 0.2604759092951669;
createNode animCurveTA -n "animCurveTA1147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -180.49773634556979 10 -179.93627571016793 
		15 -179.681268640105;
createNode animCurveTA -n "animCurveTA1148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 82.946272836705077 10 158.43719143535154 
		15 176.99081580294143;
createNode animCurveTA -n "animCurveTA1149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -178.22608273600741 10 -182.78061248227706 
		15 -180.15664641065044;
createNode animCurveTA -n "animCurveTA1150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTL -n "animCurveTL434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.5198069948790518 15 -0.5198069948790518;
createNode animCurveTL -n "animCurveTL435";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 15 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL436";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 15 0.36439499068905612;
createNode animCurveTA -n "animCurveTA1176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965317 15 7.7976222737965317;
createNode animCurveTA -n "animCurveTA1177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 30.409274105849079 15 30.409274105849079;
createNode animCurveTA -n "animCurveTA1178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.859940280210893 15 64.859940280210893;
createNode animCurveTL -n "animCurveTL437";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.43524234076486068 15 0.43524234076486068;
createNode animCurveTL -n "animCurveTL438";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 15 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL439";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 15 0.27773886459742925;
createNode animCurveTA -n "animCurveTA1179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -28.652637602052774 15 -28.652637602052774;
createNode animCurveTA -n "animCurveTA1181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.676908227303443 15 -64.676908227303443;
createNode animCurveTL -n "animCurveTL440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.50779909749143681 5 0.34455319648354099 
		10 -1.3184211183076773 15 -0.76309120872911718;
createNode animCurveTL -n "animCurveTL441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.6689598813423481 5 2.7393439618218083 
		10 2.0327329191811243 15 1.6150490657878991;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0.0090691875666379929 0.0091628376394510269 
		0.002964808139950037 0.0039902268908917904;
	setAttr -s 4 ".kiy[0:3]"  0.99995893239974976 0.99995803833007813 
		-0.99999558925628662 -0.9999920129776001;
	setAttr -s 4 ".kox[0:3]"  0.0090692136436700821 0.0091628376394510269 
		0.002964808139950037 0.0039902268908917904;
	setAttr -s 4 ".koy[0:3]"  0.99995893239974976 0.99995803833007813 
		-0.99999558925628662 -0.9999920129776001;
createNode animCurveTL -n "animCurveTL442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.7208562191968135 5 1.5815764568009403 
		10 0.45847188309242831 15 0.56989487458362831;
createNode animCurveTA -n "animCurveTA1182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 113.31338906800265 5 235.34646289028191 
		10 321.78230496762296 15 376.6241892471603;
createNode animCurveTA -n "animCurveTA1183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.774052061252021 5 12.670971578188027 
		10 24.90779842501701 15 25.279148058652208;
createNode animCurveTA -n "animCurveTA1184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 108.51395313632175 5 188.42080541305148 
		10 282.41110735413298 15 434.07379056352715;
createNode animCurveTL -n "animCurveTL443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.3180497490313704 10 1.0027784560772055 
		15 0.98071836797454492;
createNode animCurveTL -n "animCurveTL444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6845379350398575 10 1.658490426198959 
		15 1.6432964864655397;
createNode animCurveTL -n "animCurveTL445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.15334644841494655 10 -0.096320565665275124 
		15 0.3287572242670378;
createNode animCurveTA -n "animCurveTA1185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -77.578844113844227 10 -26.057710700866021 
		15 5.4739599453216465;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA1186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 25.892023478809861 10 1.1203034174629376 
		15 -8.5874521608419823;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA1187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -86.301269630351825 10 -80.555949026795602 
		15 -74.754744621954103;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTL -n "animCurveTL446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.16192513703445957 10 0.45724597501936798 
		15 0.10167917362943303;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTL -n "animCurveTL447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.60990417397691832 10 -0.58250214745511397 
		15 -0.40762644910266188;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTL -n "animCurveTL448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.76627877032566316 10 -0.97969614624707635 
		15 -0.93129112588482243;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTL -n "animCurveTL449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.11078123300644353 10 -0.39267761550125357 
		15 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTL -n "animCurveTL450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.67382444426010057 10 -0.51988532086503814 
		15 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTL -n "animCurveTL451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.98101339904097429 10 -0.85722763038013183 
		15 -1;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA1188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.061808866237340665 4 -0.061808866237340665 
		10 -0.061808866237340665 15 -0.061808866237340665;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -59.058178941076754 4 -59.058178941076754 
		10 -59.058178941076754 15 -59.058178941076754;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 16.57914742975785 4 16.57914742975785 
		10 16.57914742975785 15 16.57914742975785;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 12.253734489678925 4 12.253734489678925 
		10 12.253734489678925 15 12.253734489678925;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -65.746751280844975 4 -65.746751280844975 
		10 -65.746751280844975 15 -65.746751280844975;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 15.711328223519061 4 15.711328223519061 
		10 15.711328223519061 15 15.711328223519061;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.5572674112203657 4 8.5572674112203657 
		10 8.5572674112203657 15 8.5572674112203657;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.2533422302317216 4 8.2533422302317216 
		10 8.2533422302317216 15 8.2533422302317216;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 23.263402056531085 4 23.263402056531085 
		10 23.263402056531085 15 23.263402056531085;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 20.166277752815617 4 20.166277752815617 
		10 20.166277752815617 15 20.166277752815617;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 33.429092416277157 4 33.429092416277157 
		10 33.429092416277157 15 33.429092416277157;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 15 13.994403295754109;
createNode animCurveTA -n "animCurveTA1214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 15 13.994403295754109;
createNode animCurveTA -n "animCurveTA1217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 17.254116939558369 4 17.254116939558369 
		10 17.254116939558369 15 17.254116939558369;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.65073001024951671 4 -10.437831280750652 
		10 -5.5290163129732326 15 0.65073001024951671;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 4.2368721935960938 4 1.7893618645795435 
		10 4.8483080103199026 15 4.2368721935960938;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.7398866450636881 4 7.9659620976852334 
		10 11.661123861857202 15 8.7398866450636881;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 -5.4149906634296068 10 -2.3393085135026479 
		15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 -2.3088470844462194 10 -0.99743581784866708 
		15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 3.2946284083926578 10 1.4232992748503215 
		15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -4.8714700432790465 4 -1.321826728683557 
		10 9.3841545605856247 15 -4.8714700432790465;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -11.783606204137087 4 5.7413980494531156 
		10 11.224984245480734 15 -11.783606204137087;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 7.5423825101935931 4 13.222908692514057 
		10 10.777333726917551 15 7.5423825101935931;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.8903601258661935 4 -19.959396804706337 
		10 -6.6736366278226456 15 1.8903601258661935;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.5597289571479038 4 0.36549077816597603 
		10 -0.35454125482771687 15 -2.5597289571479038;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.0168110874036049 4 0.026749181814482936 
		10 -10.033686069775719 15 2.0168110874036049;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.080064458283051 4 27.080064458283051 
		10 27.080064458283051 15 27.080064458283051;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 10.423754966968488 4 10.423754966968488 
		10 10.423754966968488 15 10.423754966968488;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.7228482558439 4 27.7228482558439 
		10 27.7228482558439 15 27.7228482558439;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 21.576484776388224 4 21.576484776388224 
		10 21.576484776388224 15 21.576484776388224;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 10 0 15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.911632519594587 4 27.911632519594587 
		10 27.911632519594587 15 27.911632519594587;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode clipLibrary -n "clipLibrary1";
	setAttr -s 162 ".cel[0].cev";
	setAttr ".cd[0].cm" -type "characterMapping" 162 "Extra_Attributes.translateX" 
		1 1 "Extra_Attributes.translateY" 1 2 "Motion_Root.translateX" 
		1 3 "Motion_Root.translateY" 1 4 "Motion_Root.translateZ" 
		1 5 "Motion_Root.rotateY" 2 1 "Hoop_Root.IK_FK_RFoot" 
		0 1 "Hoop_Root.IK_FK_LFoot" 0 2 "Hoop_Root.IK_Rev_IK_Sim_RFoot" 
		0 3 "Hoop_Root.IK_Rev_IK_Sim_LFoot" 0 4 "Hoop_Root.IK_FK_RArm" 
		0 5 "Hoop_Root.IK_FK_LArm" 0 6 "Hoop_Root.IK_Body_IK_World_RArm" 
		0 7 "Hoop_Root.IK_Body_IK_World_LArm" 0 8 "Hoop_Root.rotateX" 
		2 2 "Hoop_Root.rotateY" 2 3 "Hoop_Root.rotateZ" 2 
		4 "Hoop_Root.translateX" 1 6 "Hoop_Root.translateY" 1 
		7 "Hoop_Root.translateZ" 1 8 "Right_Foot_Hoop.translateX" 
		1 9 "Right_Foot_Hoop.translateY" 1 10 "Right_Foot_Hoop.translateZ" 
		1 11 "Right_Foot_Hoop.rotateX" 2 5 "Right_Foot_Hoop.rotateY" 
		2 6 "Right_Foot_Hoop.rotateZ" 2 7 "Left_Foot_Hoop.translateX" 
		1 12 "Left_Foot_Hoop.translateY" 1 13 "Left_Foot_Hoop.translateZ" 
		1 14 "Left_Foot_Hoop.rotateX" 2 8 "Left_Foot_Hoop.rotateY" 
		2 9 "Left_Foot_Hoop.rotateZ" 2 10 "Right_Ball_Hoop.rotateX" 
		2 11 "Right_Ball_Hoop.rotateY" 2 12 "Right_Ball_Hoop.rotateZ" 
		2 13 "Left_Ball_Hoop.rotateX" 2 14 "Left_Ball_Hoop.rotateY" 
		2 15 "Left_Ball_Hoop.rotateZ" 2 16 "Right_Knee_Hoop.translateX" 
		1 15 "Right_Knee_Hoop.translateY" 1 16 "Right_Knee_Hoop.translateZ" 
		1 17 "Left_Knee_Hoop.translateX" 1 18 "Left_Knee_Hoop.translateY" 
		1 19 "Left_Knee_Hoop.translateZ" 1 20 "Character_Hoop.translateX" 
		1 21 "Character_Hoop.translateY" 1 22 "Character_Hoop.translateZ" 
		1 23 "Character_Hoop.rotateX" 2 17 "Character_Hoop.rotateY" 
		2 18 "Character_Hoop.rotateZ" 2 19 "R_Hip_Fk.rotateX" 2 
		20 "R_Hip_Fk.rotateY" 2 21 "R_Hip_Fk.rotateZ" 2 22 "R_Knee_Fk.rotateZ" 
		2 23 "R_Ankle_Fk.rotateX" 2 24 "R_Ankle_Fk.rotateY" 2 
		25 "R_Ankle_Fk.rotateZ" 2 26 "R_Ball_Fk.rotateX" 2 27 "R_Ball_Fk.rotateY" 
		2 28 "R_Ball_Fk.rotateZ" 2 29 "L_Hip_Fk.rotateX" 2 
		30 "L_Hip_Fk.rotateY" 2 31 "L_Hip_Fk.rotateZ" 2 32 "L_Knee_Fk.rotateZ" 
		2 33 "L_Ankle_Fk.rotateX" 2 34 "L_Ankle_Fk.rotateY" 2 
		35 "L_Ankle_Fk.rotateZ" 2 36 "L_Ball_Fk.rotateX" 2 37 "L_Ball_Fk.rotateY" 
		2 38 "L_Ball_Fk.rotateZ" 2 39 "R_Ball_IK_Fk.rotateX" 2 
		40 "R_Ball_IK_Fk.rotateY" 2 41 "R_Ball_IK_Fk.rotateZ" 2 
		42 "L_Ball_IK_Fk.rotateX" 2 43 "L_Ball_IK_Fk.rotateY" 2 
		44 "L_Ball_IK_Fk.rotateZ" 2 45 "Right_Arm_Hoop.translateX" 1 
		24 "Right_Arm_Hoop.translateY" 1 25 "Right_Arm_Hoop.translateZ" 
		1 26 "Right_Arm_Hoop.rotateX" 2 46 "Right_Arm_Hoop.rotateY" 
		2 47 "Right_Arm_Hoop.rotateZ" 2 48 "Left_Arm_Hoop.translateX" 
		1 27 "Left_Arm_Hoop.translateY" 1 28 "Left_Arm_Hoop.translateZ" 
		1 29 "Left_Arm_Hoop.rotateX" 2 49 "Left_Arm_Hoop.rotateY" 
		2 50 "Left_Arm_Hoop.rotateZ" 2 51 "Right_Arm_World.translateX" 
		1 30 "Right_Arm_World.translateY" 1 31 "Right_Arm_World.translateZ" 
		1 32 "Right_Arm_World.rotateX" 2 52 "Right_Arm_World.rotateY" 
		2 53 "Right_Arm_World.rotateZ" 2 54 "Left_Arm_World.translateX" 
		1 33 "Left_Arm_World.translateY" 1 34 "Left_Arm_World.translateZ" 
		1 35 "Left_Arm_World.rotateX" 2 55 "Left_Arm_World.rotateY" 
		2 56 "Left_Arm_World.rotateZ" 2 57 "Left_Elbow_Hoop.translateX" 
		1 36 "Left_Elbow_Hoop.translateY" 1 37 "Left_Elbow_Hoop.translateZ" 
		1 38 "Right_Elbow_Hoop.translateX" 1 39 "Right_Elbow_Hoop.translateY" 
		1 40 "Right_Elbow_Hoop.translateZ" 1 41 "R_FK_Shoulder.rotateX" 
		2 58 "R_FK_Shoulder.rotateY" 2 59 "R_FK_Shoulder.rotateZ" 
		2 60 "L_FK_Shoulder.rotateX" 2 61 "L_FK_Shoulder.rotateY" 
		2 62 "L_FK_Shoulder.rotateZ" 2 63 "R_FK_Elbow.rotateZ" 
		2 64 "L_FK_Elbow.rotateZ" 2 65 "R_FK_Wrist.rotateX" 2 
		66 "R_FK_Wrist.rotateY" 2 67 "R_FK_Wrist.rotateZ" 2 68 "L_FK_Wrist.rotateX" 
		2 69 "L_FK_Wrist.rotateY" 2 70 "L_FK_Wrist.rotateZ" 2 
		71 "Thumb_Base_L.rotateX" 2 72 "Thumb_Base_L.rotateY" 2 
		73 "Thumb_Base_L.rotateZ" 2 74 "Middle_Base_L.rotateX" 2 
		75 "Middle_Base_L.rotateY" 2 76 "Middle_Base_L.rotateZ" 2 
		77 "Pelvis.rotateX" 2 78 "Pelvis.rotateY" 2 79 "Pelvis.rotateZ" 
		2 80 "Thumb_R.rotateX" 2 81 "Thumb_R.rotateY" 2 82 "Thumb_R.rotateZ" 
		2 83 "Thumb_L.rotateX" 2 84 "Thumb_L.rotateY" 2 85 "Thumb_L.rotateZ" 
		2 86 "Middle_R.rotateX" 2 87 "Middle_R.rotateY" 2 
		88 "Middle_R.rotateZ" 2 89 "Jaw.rotateX" 2 90 "Jaw.rotateY" 
		2 91 "Jaw.rotateZ" 2 92 "Spine_2.rotateX" 2 93 "Spine_2.rotateY" 
		2 94 "Spine_2.rotateZ" 2 95 "Neck.rotateX" 2 96 "Neck.rotateY" 
		2 97 "Neck.rotateZ" 2 98 "Head.rotateX" 2 99 "Head.rotateY" 
		2 100 "Head.rotateZ" 2 101 "Spine_1.rotateX" 2 102 "Spine_1.rotateY" 
		2 103 "Spine_1.rotateZ" 2 104 "Middle_Base_R.rotateX" 2 
		105 "Middle_Base_R.rotateY" 2 106 "Middle_Base_R.rotateZ" 2 
		107 "Thumb_Base_R.rotateX" 2 108 "Thumb_Base_R.rotateY" 2 
		109 "Thumb_Base_R.rotateZ" 2 110 "Middle_L.rotateX" 2 111 "Middle_L.rotateY" 
		2 112 "Middle_L.rotateZ" 2 113  ;
	setAttr ".cd[0].cim" -type "Int32Array" 162 0 1 2 3
		 4 5 6 7 8 9 10 11 12 13 14
		 15 16 17 18 19 20 21 22 23 24 25
		 26 27 28 29 30 31 32 33 34 35 36
		 37 38 39 40 41 42 43 44 45 46 47
		 48 49 50 51 52 53 54 55 56 57 58
		 59 60 61 62 63 64 65 66 67 68 69
		 70 71 72 73 74 75 76 77 78 79 80
		 81 82 83 84 85 86 87 88 89 90 91
		 92 93 94 95 96 97 98 99 100 101 102
		 103 104 105 106 107 108 109 110 111 112 113
		 114 115 116 117 118 119 120 121 122 123 124
		 125 126 127 128 129 130 131 132 133 134 135
		 136 137 138 139 140 141 142 143 144 145 146
		 147 148 149 150 151 152 153 154 155 156 157
		 158 159 160 161 ;
createNode lightLinker -n "lightLinker1";
select -ne :time1;
	setAttr ".o" 0;
select -ne :renderPartition;
	setAttr -s 21 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 21 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr -k on ".nds";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
select -ne :characterPartition;
select -ne :hyperGraphLayout;
	setAttr ".cch" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".img" -type "string" "";
	setAttr ".ims" 1;
select -ne :ikSystem;
connectAttr "hom_get_out_of_car_close_door_high_driverSource.st" "clipLibrary1.st[0]"
		;
connectAttr "hom_get_out_of_car_close_door_high_driverSource.du" "clipLibrary1.du[0]"
		;
connectAttr "animCurveTL411.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL412.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL413.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL414.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL415.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA1131.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU57.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU58.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU59.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU60.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU61.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU62.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU63.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU64.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1132.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1133.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1134.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL416.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL417.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL418.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL419.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL420.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL421.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1135.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1136.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1137.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL422.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL423.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL424.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1138.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1139.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1140.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1141.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1142.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1143.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1144.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1145.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1146.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL425.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL426.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL427.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL428.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL429.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL430.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL431.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL432.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL433.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA1147.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA1148.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA1149.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA1150.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA1151.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA1152.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1153.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1154.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1155.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1156.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1157.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1158.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1159.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1160.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1161.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1162.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1163.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1164.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1165.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1166.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1167.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1168.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1169.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1170.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1171.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1172.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1173.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1174.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1175.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTL434.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTL435.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTL436.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1176.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1177.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1178.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL437.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL438.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL439.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA1179.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1180.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1181.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL440.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL441.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL442.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1182.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1183.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1184.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL443.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL444.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL445.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1185.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1186.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1187.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL446.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL447.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL448.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL449.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL450.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL451.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA1188.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA1189.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA1190.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA1191.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA1192.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA1193.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1194.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1195.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1196.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1197.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1198.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1199.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1200.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1201.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1202.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1203.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1204.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1205.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1206.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1207.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1208.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1209.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1210.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1211.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1212.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1213.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1214.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1215.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1216.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1217.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1218.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1219.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1220.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1221.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1222.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1223.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1224.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1225.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1226.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1227.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1228.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1229.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1230.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1231.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1232.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1233.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1234.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1235.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1236.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1237.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1238.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1239.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1240.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1241.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1242.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1243.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[2].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[4].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[5].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[6].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[7].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[8].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[9].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[10].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[11].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[12].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[13].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[14].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[15].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[16].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[17].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[18].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[19].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[20].llnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of hom_get_out_of_car_close_door_high_driver.ma
