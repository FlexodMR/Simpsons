//Maya ASCII 4.0 scene
//Name: mrg_hit_by_car_impact2.ma
//Last modified: Thu, Jun 13, 2002 03:39:44 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.3";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_hit_by_car_impact";
	setAttr ".ihi" 0;
	setAttr ".du" 8;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.02822006920967135 1 0.014610734027834211 
		2 0.0010013991112864191 3 -0.0071874631879556066 4 -0.0060455611252836676 
		5 0.0005168136259670155 6 0.006189258290897782 7 0.0079797637234580408 8 
		0.0084325970069749762;
createNode animCurveTL -n "animCurveTL382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0;
createNode animCurveTL -n "animCurveTL383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.10300313841677244 1 -0.10051395507015733 
		2 -0.098024771773086883 3 -0.11509925878775507 4 -0.12239455639046369 5 -0.14925352325160832 
		6 -0.30326840722452336 7 -0.84736071575412553 8 -1.3823839068893198;
createNode animCurveTA -n "animCurveTA1107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 1;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 1;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA1108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL387";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.090256021184643917 3 -0.056716516245055415 
		6 -0.056716516245055415 8 -0.058650962300570389;
	setAttr -s 4 ".kit[0:3]"  9 3 3 1;
	setAttr -s 4 ".kot[0:3]"  9 3 3 1;
	setAttr -s 4 ".kix[3]"  0.18456248939037323;
	setAttr -s 4 ".kiy[3]"  -0.98282080888748169;
	setAttr -s 4 ".kox[3]"  0.18456575274467468;
	setAttr -s 4 ".koy[3]"  -0.98282015323638916;
createNode animCurveTL -n "animCurveTL388";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.41649668871748402 3 0.10241439201530513 
		6 0.10241439201530513 8 1.9696915584336889;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  9 3 3 9;
createNode animCurveTL -n "animCurveTL389";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.57233528532084232 3 -0.17170965338128064 
		6 -0.17170965338128064 8 -0.87672328148420098;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  9 3 3 9;
createNode animCurveTA -n "animCurveTA1111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 68.750149689121017 3 0 6 0 8 
		-33.630440768693376;
	setAttr -s 4 ".kit[2:3]"  3 9;
	setAttr -s 4 ".kot[2:3]"  3 9;
createNode animCurveTA -n "animCurveTA1112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA1113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTL -n "animCurveTL390";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.12458561027363557 3 0.12458561027363557 
		6 0.12458561027363557 8 0.15726485462611536;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[3]"  9;
createNode animCurveTL -n "animCurveTL391";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.1083286823262673 3 0.1083286823262673 
		6 0.1083286823262673 8 1.2520628272190275;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[3]"  9;
createNode animCurveTL -n "animCurveTL392";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.28682072862451763 3 -0.28682072862451763 
		6 -0.28682072862451763 8 -1.0898212358433927;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[3]"  9;
createNode animCurveTA -n "animCurveTA1114";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 -3.9320360584068554;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[3]"  9;
createNode animCurveTA -n "animCurveTA1115";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[3]"  9;
createNode animCurveTA -n "animCurveTA1116";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[3]"  9;
createNode animCurveTA -n "animCurveTA1117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTL -n "animCurveTL394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTL -n "animCurveTL395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.1269999742507935 3 1.1269999742507935 
		6 1.1269999742507935 8 1.1269999742507935;
createNode animCurveTL -n "animCurveTL396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTL -n "animCurveTL397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTL -n "animCurveTL398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.1269999742507935 3 1.1269999742507935 
		6 1.1269999742507935 8 1.1269999742507935;
createNode animCurveTL -n "animCurveTL399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.034394188484190708 3 -0.0087599701394426976 
		6 0.0075433732870337456 8 0.010277520183037759;
createNode animCurveTL -n "animCurveTL400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.93793428325425909 3 0.77235509527932511 
		6 0.95399641438602578 8 1.7516197802981341;
createNode animCurveTL -n "animCurveTL401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.12553864878387783 3 -0.14028121517788419 
		6 -0.36961889362786693 8 -1.6848283502709709;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.0011622379533946514;
	setAttr -s 4 ".kiy[3]"  -0.99999934434890747;
	setAttr -s 4 ".kox[3]"  0.0011622398160398006;
	setAttr -s 4 ".koy[3]"  -0.99999934434890747;
createNode animCurveTA -n "animCurveTA1129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 20.950825280283908 3 23.686988860744673 
		6 -20.451217483196501 8 -65.585535993622102;
createNode animCurveTA -n "animCurveTA1130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 9.3491547302982809 6 11.948637237067912 
		8 11.948637237067985;
createNode animCurveTA -n "animCurveTA1131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 -1.4726187357019898 6 -1.4726187357019873 
		8 -1.47261873570199;
createNode animCurveTA -n "animCurveTA1132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 -0.69163884744780491;
createNode animCurveTL -n "animCurveTL403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0.24376503020897994;
createNode animCurveTL -n "animCurveTL404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0.44841910314659961;
createNode animCurveTA -n "animCurveTA1158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0.71012400136723108;
createNode animCurveTL -n "animCurveTL406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0.47076628974155943;
createNode animCurveTL -n "animCurveTL407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0.075519476331700294;
createNode animCurveTA -n "animCurveTA1161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.3705977767760478;
createNode animCurveTL -n "animCurveTL409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.1618658070195953;
createNode animCurveTL -n "animCurveTL410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.12044246479037771;
createNode animCurveTA -n "animCurveTA1164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.3705978542308779;
createNode animCurveTL -n "animCurveTL412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.1618621235956237;
createNode animCurveTL -n "animCurveTL413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.12044250833667494;
createNode animCurveTA -n "animCurveTA1167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
createNode animCurveTL -n "animCurveTL417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
createNode animCurveTA -n "animCurveTA1170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 4.7921462321675188 3 -35.280552173416005 
		6 -55.670009807431882 8 -8.3722158444725991;
createNode animCurveTA -n "animCurveTA1171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -53.856694228597611 3 2.5816969024663949 
		6 -13.611207391781139 8 -23.977773843939509;
createNode animCurveTA -n "animCurveTA1172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.098529366997784 3 53.251722291748415 
		6 27.497501682495685 8 33.682233492227084;
createNode animCurveTA -n "animCurveTA1173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 17.196782419487917 3 -29.573411147573808 
		6 -8.563012295375076 8 -25.419177015304651;
createNode animCurveTA -n "animCurveTA1174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -60.10188422410716 3 2.3677661369630982 
		6 20.507370224920166 8 -41.133378951685579;
createNode animCurveTA -n "animCurveTA1175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -21.001041665835174 3 84.877951062747869 
		6 107.09766021769482 8 27.165866266794364;
createNode animCurveTA -n "animCurveTA1176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 59.468287502559065 3 89.911651693682515 
		6 32.789921414575325 8 39.038962484432531;
createNode animCurveTA -n "animCurveTA1177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 59.305463658789549 3 60.185649943194235 
		6 3.2573665005240873 8 63.89762232629036;
createNode animCurveTA -n "animCurveTA1178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 18.476235154862632 3 -25.061733991251923 
		6 22.425089944480888 8 22.425089944480888;
createNode animCurveTA -n "animCurveTA1179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 10.082003051124275 3 10.082003051124259 
		6 28.721836935985287 8 28.721836935985287;
createNode animCurveTA -n "animCurveTA1180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -4.720189328892868 3 -4.7201893288928662 
		6 7.6266657808874898 8 7.6266657808874898;
createNode animCurveTA -n "animCurveTA1181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 20.127263792592359 3 -13.555270109330269 
		6 -18.847227132200882 8 2.0447427744579891;
createNode animCurveTA -n "animCurveTA1182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 11.615881410206432 3 11.615881410206432 
		6 44.709551992010134 8 5.5429207840541244;
createNode animCurveTA -n "animCurveTA1183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.3215928107553504 3 0.32159281075535068 
		6 -10.402617814119608 8 34.868956102818473;
createNode animCurveTA -n "animCurveTA1184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -33.352561559544277 3 11.093319219895511 
		6 -32.123718040735945 8 -32.123718040735945;
createNode animCurveTA -n "animCurveTA1185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 39.646570824829801 3 59.959644693642325 
		6 19.407819173437478 8 19.407819173437478;
createNode animCurveTA -n "animCurveTA1186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 11.057385060550727 3 48.106469618696913 
		6 4.4751336445171193 8 4.4751336445171193;
createNode animCurveTA -n "animCurveTA1187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA1188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA1189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 72.57093380156806 3 67.810939637714412 
		6 -11.433734901667266 8 -11.433734901667266;
createNode animCurveTA -n "animCurveTA1190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA1194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA1195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA1196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA1197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA1198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA1199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA1200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA1201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 72.677699265164733 3 -9.6043099083038648 
		6 -9.6043099083038648 8 -9.6043099083038648;
createNode animCurveTA -n "animCurveTA1202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.2945941069882385 3 1.2945941069882381 
		6 3.1198943483277444 8 3.1198943483277444;
createNode animCurveTA -n "animCurveTA1203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.3208811165553156 3 3.3208811165553147 
		6 1.7238169885910806 8 1.7238169885910806;
createNode animCurveTA -n "animCurveTA1204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -27.52582447785997 3 -27.525824477859967 
		6 12.268388134198538 8 12.268388134198538;
createNode animCurveTA -n "animCurveTA1205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 6.308963718970988 6 6.9103069920743438 
		8 6.2649641345144982;
createNode animCurveTA -n "animCurveTA1206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 5.7322064377030788 6 4.9896665793491746 
		8 5.780294047116163;
createNode animCurveTA -n "animCurveTA1207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.8319513947347925 3 21.713029036968567 
		6 28.142527379210097 8 21.274336518663382;
createNode animCurveTA -n "animCurveTA1208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA1209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA1210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 15.545129367555198;
createNode animCurveTA -n "animCurveTA1211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 14.794623739018833 6 14.794623739018833 
		8 22.334659718447345;
createNode animCurveTA -n "animCurveTA1212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 22.395186436807986 6 22.395186436807986 
		8 14.88860504567513;
createNode animCurveTA -n "animCurveTA1213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -8.5537919350489524 3 -0.5621560964572182 
		6 -0.5621560964572182 8 28.394145862336995;
createNode animCurveTA -n "animCurveTA1214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 22.078247600383854 6 18.977509968842877 
		8 20.941119161468873;
createNode animCurveTA -n "animCurveTA1215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 -9.6389434643346714 6 -14.961349670392833 
		8 -11.985276261935251;
createNode animCurveTA -n "animCurveTA1216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -8.6139304882271457 3 7.1941842949003796 
		6 21.659909015129006 8 13.249280848849958;
createNode animCurveTA -n "animCurveTA1217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA1218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA1219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 72.677699265164733 3 21.472939016776969 
		6 21.472939016776969 8 21.472939016776969;
createNode animCurveTA -n "animCurveTA1220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.043585476863095891 3 26.194612819039175 
		6 -15.564086868905925 8 -15.564086868905925;
createNode animCurveTA -n "animCurveTA1221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 28.449471067828945 3 42.116293762219605 
		6 5.9119201843313247 8 5.9119201843313247;
createNode animCurveTA -n "animCurveTA1222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 15.739680343212559 3 51.312599966148291 
		6 -0.89181587725581968 8 -0.89181587725581968;
createNode animCurveTA -n "animCurveTA1223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA1224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA1225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 72.57093380156806 3 55.749331591600708 
		6 21.151890972437133 8 21.151890972437133;
createNode clipLibrary -n "clipLibrary2";
	setAttr -s 168 ".cel[0].cev";
	setAttr ".cd[0].cm" -type "characterMapping" 177 "Extra_Attributes.translateX" 
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
		2 15 "Left_Ball_Hoop.rotateZ" 2 16 "Right_Toe_Hoop.rotateX" 
		2 17 "Right_Toe_Hoop.rotateY" 2 18 "Right_Toe_Hoop.rotateZ" 
		2 19 "Left_Toe_Hoop.rotateX" 2 20 "Left_Toe_Hoop.rotateY" 
		2 21 "Left_Toe_Hoop.rotateZ" 2 22 "Right_Knee_Hoop.translateX" 
		1 15 "Right_Knee_Hoop.translateY" 1 16 "Right_Knee_Hoop.translateZ" 
		1 17 "Left_Knee_Hoop.translateX" 1 18 "Left_Knee_Hoop.translateY" 
		1 19 "Left_Knee_Hoop.translateZ" 1 20 "Character_Hoop.translateX" 
		1 21 "Character_Hoop.translateY" 1 22 "Character_Hoop.translateZ" 
		1 23 "Character_Hoop.rotateX" 2 23 "Character_Hoop.rotateY" 
		2 24 "Character_Hoop.rotateZ" 2 25 "R_Hip_Fk.rotateX" 2 
		26 "R_Hip_Fk.rotateY" 2 27 "R_Hip_Fk.rotateZ" 2 28 "R_Knee_Fk.rotateZ" 
		2 29 "R_Ankle_Fk.rotateX" 2 30 "R_Ankle_Fk.rotateY" 2 
		31 "R_Ankle_Fk.rotateZ" 2 32 "R_Ball_Fk.rotateX" 2 33 "R_Ball_Fk.rotateY" 
		2 34 "R_Ball_Fk.rotateZ" 2 35 "L_Hip_Fk.rotateX" 2 
		36 "L_Hip_Fk.rotateY" 2 37 "L_Hip_Fk.rotateZ" 2 38 "L_Knee_Fk.rotateZ" 
		2 39 "L_Ankle_Fk.rotateX" 2 40 "L_Ankle_Fk.rotateY" 2 
		41 "L_Ankle_Fk.rotateZ" 2 42 "L_Ball_Fk.rotateX" 2 43 "L_Ball_Fk.rotateY" 
		2 44 "L_Ball_Fk.rotateZ" 2 45 "R_Ball_IK_Fk.rotateX" 2 
		46 "R_Ball_IK_Fk.rotateY" 2 47 "R_Ball_IK_Fk.rotateZ" 2 
		48 "L_Ball_IK_Fk.rotateX" 2 49 "L_Ball_IK_Fk.rotateY" 2 
		50 "L_Ball_IK_Fk.rotateZ" 2 51 "Right_Arm_Hoop.translateX" 1 
		24 "Right_Arm_Hoop.translateY" 1 25 "Right_Arm_Hoop.translateZ" 
		1 26 "Right_Arm_Hoop.rotateX" 2 52 "Right_Arm_Hoop.rotateY" 
		2 53 "Right_Arm_Hoop.rotateZ" 2 54 "Left_Arm_Hoop.translateX" 
		1 27 "Left_Arm_Hoop.translateY" 1 28 "Left_Arm_Hoop.translateZ" 
		1 29 "Left_Arm_Hoop.rotateX" 2 55 "Left_Arm_Hoop.rotateY" 
		2 56 "Left_Arm_Hoop.rotateZ" 2 57 "Right_Arm_World.translateX" 
		1 30 "Right_Arm_World.translateY" 1 31 "Right_Arm_World.translateZ" 
		1 32 "Right_Arm_World.rotateX" 2 58 "Right_Arm_World.rotateY" 
		2 59 "Right_Arm_World.rotateZ" 2 60 "Left_Arm_World.translateX" 
		1 33 "Left_Arm_World.translateY" 1 34 "Left_Arm_World.translateZ" 
		1 35 "Left_Arm_World.rotateX" 2 61 "Left_Arm_World.rotateY" 
		2 62 "Left_Arm_World.rotateZ" 2 63 "Left_Elbow_Hoop.translateX" 
		1 36 "Left_Elbow_Hoop.translateY" 1 37 "Left_Elbow_Hoop.translateZ" 
		1 38 "Right_Elbow_Hoop.translateX" 1 39 "Right_Elbow_Hoop.translateY" 
		1 40 "Right_Elbow_Hoop.translateZ" 1 41 "R_FK_Shoulder.rotateX" 
		2 64 "R_FK_Shoulder.rotateY" 2 65 "R_FK_Shoulder.rotateZ" 
		2 66 "L_FK_Shoulder.rotateX" 2 67 "L_FK_Shoulder.rotateY" 
		2 68 "L_FK_Shoulder.rotateZ" 2 69 "R_FK_Elbow.rotateZ" 
		2 70 "L_FK_Elbow.rotateZ" 2 71 "R_FK_Wrist.rotateX" 2 
		72 "R_FK_Wrist.rotateY" 2 73 "R_FK_Wrist.rotateZ" 2 74 "L_FK_Wrist.rotateX" 
		2 75 "L_FK_Wrist.rotateY" 2 76 "L_FK_Wrist.rotateZ" 2 
		77 "Thumb_Base_L.rotateX" 2 78 "Thumb_Base_L.rotateY" 2 
		79 "Thumb_Base_L.rotateZ" 2 80 "Middle_Base_L.rotateX" 2 
		81 "Middle_Base_L.rotateY" 2 82 "Middle_Base_L.rotateZ" 2 
		83 "Pelvis.rotateX" 2 84 "Pelvis.rotateY" 2 85 "Pelvis.rotateZ" 
		2 86 "Thumb_R.rotateX" 2 87 "Thumb_R.rotateY" 2 88 "Thumb_R.rotateZ" 
		2 89 "Thumb_L.rotateX" 2 90 "Thumb_L.rotateY" 2 91 "Thumb_L.rotateZ" 
		2 92 "Middle_R.rotateX" 2 93 "Middle_R.rotateY" 2 
		94 "Middle_R.rotateZ" 2 95 "Jaw.rotateX" 2 96 "Jaw.rotateY" 
		2 97 "Jaw.rotateZ" 2 98 "Spine_2.rotateX" 2 99 "Spine_2.rotateY" 
		2 100 "Spine_2.rotateZ" 2 101 "Neck.rotateX" 2 102 "Neck.rotateY" 
		2 103 "Neck.rotateZ" 2 104 "Head.rotateX" 2 105 "Head.rotateY" 
		2 106 "Head.rotateZ" 2 107 "Spine_1.rotateX" 2 108 "Spine_1.rotateY" 
		2 109 "Spine_1.rotateZ" 2 110 "Middle_Base_R.rotateX" 2 
		111 "Middle_Base_R.rotateY" 2 112 "Middle_Base_R.rotateZ" 2 
		113 "Thumb_Base_R.rotateX" 2 114 "Thumb_Base_R.rotateY" 2 
		115 "Thumb_Base_R.rotateZ" 2 116 "Middle_L.rotateX" 2 117 "Middle_L.rotateY" 
		2 118 "Middle_L.rotateZ" 2 119 "hair_1.rotateX" 2 120 "hair_1.rotateY" 
		2 121 "hair_1.rotateZ" 2 122 "hair_2.rotateX" 2 123 "hair_2.rotateY" 
		2 124 "hair_2.rotateZ" 2 125 "hair_3.rotateX" 2 126 "hair_3.rotateY" 
		2 127 "hair_3.rotateZ" 2 128  ;
	setAttr ".cd[0].cim" -type "Int32Array" 177 0 1 2 3
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
		 158 159 160 161 162 163 164 165 166 167 168
		 169 170 171 172 173 174 175 176 ;
createNode lightLinker -n "lightLinker1";
	setAttr ".ihi" 0;
	setAttr -s 22 ".lnk";
select -ne :time1;
	setAttr ".o" 8;
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
	setAttr ".outf" 23;
	setAttr ".an" yes;
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
connectAttr "mrg_hit_by_car_impact.st" "clipLibrary2.st[0]";
connectAttr "mrg_hit_by_car_impact.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL379.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL380.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL381.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL382.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL383.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA1107.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU9.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU15.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU16.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA1108.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA1109.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA1110.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL384.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL385.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL386.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL387.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL388.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL389.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA1111.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA1112.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA1113.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL390.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL391.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL392.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA1114.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA1115.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA1116.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA1117.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA1118.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA1119.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA1120.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA1121.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA1122.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTA1123.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTA1124.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTA1125.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTA1126.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTA1127.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTA1128.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL393.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL394.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL395.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTL396.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTL397.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTL398.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTL399.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL400.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL401.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA1129.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA1130.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA1131.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA1132.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA1133.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA1134.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA1135.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA1136.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA1137.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA1138.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA1139.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA1140.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA1141.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA1142.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA1143.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA1144.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA1145.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA1146.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA1147.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA1148.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA1149.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA1150.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA1151.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTA1152.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA1153.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA1154.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA1155.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA1156.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA1157.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL402.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL403.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL404.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA1158.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA1159.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA1160.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL405.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL406.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL407.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA1161.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA1162.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA1163.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL408.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL409.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL410.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA1164.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA1165.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA1166.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL411.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL412.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL413.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTA1167.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTA1168.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTA1169.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTL414.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTL415.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTL416.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTL417.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTL418.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTL419.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA1170.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA1171.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA1172.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA1173.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA1174.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA1175.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA1176.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA1177.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA1178.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA1179.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA1180.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA1181.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA1182.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA1183.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA1184.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA1185.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA1186.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA1187.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA1188.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA1189.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA1190.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA1191.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA1192.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA1193.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA1194.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA1195.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA1196.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA1197.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA1198.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA1199.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA1200.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA1201.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA1202.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA1203.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA1204.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA1205.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA1206.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA1207.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA1208.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA1209.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA1210.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA1211.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA1212.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA1213.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA1214.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA1215.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA1216.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA1217.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA1218.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA1219.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA1220.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA1221.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA1222.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA1223.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA1224.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA1225.a" "clipLibrary2.cel[0].cev[167].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[8].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[13].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[21].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[22].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[23].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[24].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[25].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[26].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[27].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[28].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[29].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[30].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[31].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[32].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[33].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[34].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[35].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[36].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[37].llnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of mrg_hit_by_car_impact2.ma
