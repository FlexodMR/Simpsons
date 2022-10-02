//Maya ASCII 4.0 scene
//Name: brt-m_get_out_of_car_close_door.ma
//Last modified: Mon, Jul 29, 2002 03:11:05 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dDeformer" "17.1.1.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_get_out_of_car_close_door";
	setAttr ".ihi" 0;
	setAttr ".du" 18;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTL -n "animCurveTL371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTL -n "animCurveTL372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.082060155321518849 1 0.098476466625509185 
		2 0.11821804253974411 3 0.13470431014255788 4 0.14135469651228477 5 0.12917979790474177 
		6 0.10341848698673398 7 0.078832605453077881 8 0.060630160933395738 9 0.043603145909074013 
		10 0.026889379352575547 11 0.0064728845469120269 12 -0.013630361995765432 
		13 -0.022234611459284882 14 -0.01583943562712168 15 -0.0018530964794964322 
		16 0.014547119504645019 17 0.028183925846356844 18 0.033880036066693167;
createNode animCurveTL -n "animCurveTL373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0;
createNode animCurveTL -n "animCurveTL374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0.39189340113154059 1 0.41314960754561042 
		2 0.44572644940787925 3 0.47496471465439266 4 0.48620519122119632 5 0.47089286694899984 
		6 0.43227141438273009 7 0.37337964851475947 8 0.27900404882623842 9 0.16435813635537411 
		10 0.078121288430122671 11 0.045228070666009562 12 0.040743913798276341 13 
		0.038544492834453041 14 0.028286162320347259 15 0.017945915189987578 16 0.0088803840332354767 
		17 0.0024462014399524545 18 0;
createNode animCurveTA -n "animCurveTA1066";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 89.125739445572833 1 84.596504502536249 
		2 79.453054720144735 3 73.80124225520025 4 67.74691926450474 5 61.395937904860133 
		6 54.854150333068404 7 48.227408705931474 8 41.621565180251316 9 35.142471912829848 
		10 28.895981060469058 11 22.987944779970867 12 17.524215228137223 13 12.610644561770069 
		14 8.3530849376713814 15 4.8573885126430687 16 2.2294074434871152 17 0.57499388700544296 
		18 0;
createNode animCurveTU -n "animCurveTU73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTU -n "animCurveTU74";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTU -n "animCurveTU75";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTU -n "animCurveTU76";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTU -n "animCurveTU77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTU -n "animCurveTU78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTU -n "animCurveTU79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 18 1;
createNode animCurveTU -n "animCurveTU80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 18 1;
createNode animCurveTA -n "animCurveTA1067";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1068";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1069";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTL -n "animCurveTL375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTL -n "animCurveTL376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTL -n "animCurveTL377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTL -n "animCurveTL378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.16956905984264883 4 0.16956905984264883 
		7 0.16956905984264883 10 -0.021785915323025682 13 -0.17220374723958892 18 
		-0.21594587158542247;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.23204099190485944 4 0.23204099190485944 
		7 0.23204099190485944 10 0.23261088124052329 13 0.21237779645709584 18 0.21854505205085809;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.097427438237216 4 1.097427438237216 
		7 1.097427438237216 10 0.53447966462689123 13 0.00078430246903575811 18 0.00078430246903575811;
	setAttr -s 6 ".kit[4:5]"  3 3;
	setAttr -s 6 ".kot[4:5]"  3 3;
createNode animCurveTA -n "animCurveTA1070";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -375.98082634113621 4 -358.98230662052481 
		7 -359.71051472936074 10 -343.78760382719003 13 -356.30510582348501 18 -356.30510582348501;
createNode animCurveTA -n "animCurveTA1071";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 91.029007103502906 4 73.836695331369143 
		7 11.877126668562742 10 13.190848725189511 13 5.066135686458634 18 5.066135686458634;
createNode animCurveTA -n "animCurveTA1072";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -374.00706426405969 4 -357.05120942584182 
		7 -357.96910308770822 10 -365.87510879708043 13 -359.77428349194275 18 -359.77428349194275;
createNode animCurveTL -n "animCurveTL381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.12723102470459602 4 0.12723102470459602 
		7 0.24360216318209543 10 0.26418930332320417 13 0.26454489187170815 18 0.26454016861507795;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.21426051557445225 4 0.33660930972180708 
		7 0.30589918304475761 10 0.21772150734304918 13 0.21256905138497798 18 0.21854541072049752;
	setAttr -s 6 ".kit[4:5]"  3 3;
	setAttr -s 6 ".kot[4:5]"  3 3;
createNode animCurveTL -n "animCurveTL383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.72810231057739006 4 0.72810231057739006 
		7 0.31612415574650882 10 -0.064904406754016042 13 -0.0649 18 -0.064904406754016042;
	setAttr -s 6 ".kit[3:5]"  3 9 3;
	setAttr -s 6 ".kot[3:5]"  3 9 3;
createNode animCurveTA -n "animCurveTA1073";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 174.08624265487845 4 27.919884125044984 
		7 35.946713855059755 10 0 13 -0.16069276704424185 18 0;
	setAttr -s 6 ".kit[4:5]"  3 3;
	setAttr -s 6 ".kot[4:5]"  3 3;
createNode animCurveTA -n "animCurveTA1074";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 77.361573251038095 4 58.491392042885806 
		7 25.948901905116429 10 25.948901905116401 13 25.948901905116401 18 25.948901905116401;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1075";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 172.73088895567136 4 -0.46945470598764205 
		7 0 10 0 13 0 18 0;
	setAttr -s 6 ".kit[1:5]"  3 9 9 9 3;
	setAttr -s 6 ".kot[1:5]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1076";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1077";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1078";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1079";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1080";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1081";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1082";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1083";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1084";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1085";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1086";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1087";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTL -n "animCurveTL384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 4 1 7 1 10 1 13 1 18 1;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 4 1 7 1 10 1 13 1 18 1;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.1852234316132543 4 0.31906108220330981 
		7 0.17793831425034851 10 0.060693805637101549 13 -0.050187219594454789 18 
		0.076472881617957691;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.9704149019867897 4 0.94398942485075565 
		7 0.92500695028803281 10 0.86345686750096806 13 0.89728606343677331 18 0.95473100313980441;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.88456864722919493 4 1.0974460581182048 
		7 0.84278002547624742 10 0.17633275331227244 13 0.087001337063247239 18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1088";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -29.507853993942465 4 14.115305953338238 
		7 6.4405715946507085 10 5.4190830080024321 13 5.0053970193082282 18 -0.62843630316474508;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1089";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 88.879633345488074 4 43.290879102686773 
		7 18.743373542065957 10 -5.0982101752959457 13 -29.750727835533947 18 5.8284402688137167;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1090";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -31.471029442793292 4 -0.95679763148460284 
		7 5.1634214270386511 10 0.54358275456367999 13 2.9563955936336086 18 1.295636019309746;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1091";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1092";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1093";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1094";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1095";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1096";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1097";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1098";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1099";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTL -n "animCurveTL393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.5198069948790518 18 -0.5198069948790518;
createNode animCurveTL -n "animCurveTL394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 18 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 18 0.36439499068905612;
createNode animCurveTA -n "animCurveTA1117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965317 18 7.7976222737965317;
createNode animCurveTA -n "animCurveTA1118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 30.409274105849079 18 30.409274105849079;
createNode animCurveTA -n "animCurveTA1119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.859940280210893 18 64.859940280210893;
createNode animCurveTL -n "animCurveTL396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.43524234076486068 18 0.43524234076486068;
createNode animCurveTL -n "animCurveTL397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 18 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 18 0.27773886459742925;
createNode animCurveTA -n "animCurveTA1120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -28.652637602052774 18 -28.652637602052774;
createNode animCurveTA -n "animCurveTA1122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.676908227303443 18 -64.676908227303443;
createNode animCurveTL -n "animCurveTL399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.30749701812507962 4 0.041499285372137956 
		7 -0.82415140002192244 13 -0.7246466247099308 18 -0.61083301393139333;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.0510182586227352 4 1.1669775377221685 
		7 1.2110162669307252 13 1.0846904346086543 18 1.0211562878106184;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.8460670423804326 4 2.1841601514734879 
		7 1.1962120303937906 13 -0.22551934719481975 18 0.14314299916678522;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -273.44301664312098 4 -331.05077504175671 
		7 -360.48048668641269 13 -370.25422163460297 18 -344.43537961215827;
createNode animCurveTA -n "animCurveTA1124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.753397523637741 4 21.279751825887256 
		7 -11.969566747283121 13 -22.154462477712006 18 5.3827317875977077;
createNode animCurveTA -n "animCurveTA1125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -266.95918275971843 4 -292.70861874789227 
		7 -294.1325728969278 13 -301.66325059509711 18 -299.8329211539791;
createNode animCurveTL -n "animCurveTL402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.24094058915794578 4 1.7221422667524373 
		7 1.3323014620167721 10 0.43660350743874704 13 -0.52518242666326953 15 0.37243238315162608 
		18 0.8448236677023373;
	setAttr -s 7 ".kit[1:6]"  1 9 9 9 9 3;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 3;
	setAttr -s 7 ".kix[1:6]"  0.02194344624876976 0.0015557659789919853 
		0.001076724729500711 0.025963466614484787 0.0012165387161076069 1;
	setAttr -s 7 ".kiy[1:6]"  0.99975919723510742 -0.99999880790710449 
		-0.99999940395355225 -0.99966287612915039 0.9999992847442627 0;
	setAttr -s 7 ".kox[1:6]"  0.021943425759673119 0.0015557659789919853 
		0.001076724729500711 0.025963466614484787 0.0012165387161076069 1;
	setAttr -s 7 ".koy[1:6]"  0.99975919723510742 -0.99999880790710449 
		-0.99999940395355225 -0.99966287612915039 0.9999992847442627 0;
createNode animCurveTL -n "animCurveTL403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.0349865835160112 4 1.8477354389376743 
		7 2.000722860929494 10 1.6863799048594967 13 1.7036999239077313 15 1.253450943065554 
		18 1.0304014029588007;
	setAttr -s 7 ".kit[1:6]"  1 9 9 9 9 3;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 3;
	setAttr -s 7 ".kix[1:6]"  0.0024925624020397663 0.01239403709769249 
		0.0067333336919546127 0.0038497175555676222 0.002475367859005928 1;
	setAttr -s 7 ".kiy[1:6]"  0.99999690055847168 -0.99992316961288452 
		-0.99997735023498535 -0.99999260902404785 -0.99999696016311646 0;
	setAttr -s 7 ".kox[1:6]"  0.0024924995377659798 0.01239403709769249 
		0.0067333336919546127 0.0038497175555676222 0.002475367859005928 1;
	setAttr -s 7 ".koy[1:6]"  0.99999690055847168 -0.99992316961288452 
		-0.99997735023498535 -0.99999260902404785 -0.99999696016311646 0;
createNode animCurveTL -n "animCurveTL404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.34076812298084341 4 1.6884859120338664 
		7 1.7626452836903677 10 1.0837845319729029 13 1.0130435086491647 15 0.62057618753547905 
		18 -0.097994651149805143;
	setAttr -s 7 ".kit[1:6]"  1 1 9 9 9 3;
	setAttr -s 7 ".kot[1:6]"  1 1 9 9 9 3;
	setAttr -s 7 ".kix[1:6]"  0.0009852823568508029 0.002672695554792881 
		0.002668073633685708 0.0035980695392936468 0.0015000967541709542 1;
	setAttr -s 7 ".kiy[1:6]"  0.9999995231628418 -0.99999642372131348 
		-0.99999642372131348 -0.99999350309371948 -0.99999886751174927 0;
	setAttr -s 7 ".kox[1:6]"  0.00098529178649187088 0.0026727032382041216 
		0.002668073633685708 0.0035980695392936468 0.0015000967541709542 1;
	setAttr -s 7 ".koy[1:6]"  0.9999995231628418 -0.99999642372131348 
		-0.99999642372131348 -0.99999350309371948 -0.99999886751174927 0;
createNode animCurveTA -n "animCurveTA1126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 261.7260243159331 4 300.7132934556962 
		7 300.7132934556962 10 331.0235222266287 13 443.72550828566489 15 332.7484343274316 
		18 349.65056094970328;
createNode animCurveTA -n "animCurveTA1127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 45.008042607101586 4 -12.133442627944801 
		7 -12.133442627944801 10 -71.917845588531208 13 -56.700050392933925 15 -37.954865401716468 
		18 5.2600531253850811;
createNode animCurveTA -n "animCurveTA1128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 265.6340570691703 4 351.40187982778605 
		7 351.40187982778605 10 324.66609436312882 13 216.84978862256523 15 324.44998118340629 
		18 293.49683780254895;
createNode animCurveTL -n "animCurveTL405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.31054502397108613 4 0.31054502397108613 
		7 0.679929438736388 10 0.50398116548755967 13 0.30493038065203715 18 0.10167917362943303;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.55640530640609931 4 -0.55640530640609931 
		7 -0.58260810733110913 10 -0.39863743916248945 13 -0.3874265124899427 18 
		-0.40762644910266188;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.57914122395678103 4 -0.57914122395678103 
		7 -0.66309486839399645 10 -0.7761129410128248 13 -0.85665445141535856 18 
		-0.93129112588482243;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.66768647579175422 4 -0.66768647579175422 
		7 -0.17523930523423681 10 -0.145692475481941 13 -0.076454516312516679 18 
		0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.67301253925255977 4 -0.67301253925255977 
		7 -0.00072435787012014696 10 0.039612935291223068 13 0.024818445825645647 
		18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.49850301940481012 4 -0.49850301940481012 
		7 -0.80201435285893019 10 -0.82022503115751455 13 -0.90413945525160533 18 
		-1;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.061808866237340665 4 -0.061808866237337522 
		7 -0.061808866237337522 10 -0.061808866237337522 13 -0.061808866237339083 
		18 -0.061808866237340665;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -59.058178941076754 4 -59.058178941076754 
		7 -59.058178941076754 10 -59.058178941076754 13 -59.058178941076754 18 -59.058178941076754;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 16.57914742975785 4 16.579147429757843 
		7 16.579147429757843 10 16.579147429757843 13 16.579147429757846 18 16.57914742975785;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 12.253734489678925 4 12.253734489678925 
		7 12.253734489678925 10 12.253734489678925 13 12.253734489678925 18 12.253734489678925;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -65.746751280844975 4 -65.746751280844961 
		7 -65.746751280844961 10 -65.746751280844961 13 -65.746751280844975 18 -65.746751280844975;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 15.711328223519061 4 15.711328223519057 
		7 15.711328223519057 10 15.711328223519057 13 15.711328223519057 18 15.711328223519061;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.5572674112203657 4 8.5572674112203622 
		7 8.5572674112203622 10 8.5572674112203622 13 8.5572674112203622 18 8.5572674112203657;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -121.24398976748977 18 -121.24398976748977;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA1144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 28.612774017129329 18 28.612774017129329;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA1145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 17.632837226638049 18 17.632837226638049;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA1146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 33.429092416277157 4 33.429092416277157 
		7 33.429092416277157 10 33.429092416277157 13 33.429092416277157 18 33.429092416277157;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 18 13.994403295754109;
createNode animCurveTA -n "animCurveTA1155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 18 0;
createNode animCurveTA -n "animCurveTA1158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 17.254116939558369 4 17.254116939558369 
		7 17.254116939558369 10 17.254116939558369 13 17.254116939558369 18 17.254116939558369;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.65073001024951671 4 -29.379259171673748 
		7 -36.515129098508311 10 -24.809666427741885 13 -12.942987686442743 18 0.65073001024951671;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 4.2368721935960938 4 0.29710718013218351 
		7 8.0193793976003676 10 15.976289169045954 13 11.835960743668345 18 4.2368721935960938;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.6995264082587447 4 0.96586030651003341 
		7 6.365537851650819 10 -3.7088419425485806 13 0.78667949609524512 18 2.6995264082587447;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 -3.9388735369945089 7 0 10 
		0.23633240840109546 13 0.14770774612807708 18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 1.8242021628094227 7 0 10 
		-0.10945212443573141 13 -0.068407573498613802 18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 -3.4768422591718746 7 0 10 
		0.20861051990451415 13 0.13038156631091305 18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0.16788504588939113 7 -1.2821508722957302 
		10 -9.3414390941578826 13 1.0260892085911693 18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 -28.177964601171336 7 -34.592236725841374 
		10 -16.101570746525564 13 -6.7940238405294489 18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 6.6786334979782902 4 -11.997228454314529 
		7 -9.0177477062694198 10 10.782989100949166 13 -6.5386371988712124 18 6.6786334979782902;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.8903601258661935 4 0.26401146988271113 
		7 10.620934651579155 10 -0.63894688216937967 13 3.5810552572110996 18 1.8903601258661935;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.5597289571479038 4 12.173202612054125 
		7 4.2675310995034259 10 -5.1850848311064954 13 -1.8377920809524408 18 -2.5597289571479038;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.0168110874036049 4 5.8044567186189209 
		7 -2.5690730322880704 10 -14.743474393487343 13 1.018742769217841 18 2.0168110874036049;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.080064458283051 4 27.080064458283051 
		7 27.080064458283051 10 27.080064458283051 13 27.080064458283051 18 27.080064458283051;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 143.71460997127252 18 143.71460997127252;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA1180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 27.804554996454378 18 27.804554996454378;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA1181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 29.452980944098744 18 29.452980944098744;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA1182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 18 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.911632519594587 4 27.911632519594587 
		7 27.911632519594587 10 27.911632519594587 13 27.911632519594587 18 27.911632519594587;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode clipLibrary -n "clipLibrary2";
	setAttr -s 168 ".cel[0].cev";
	setAttr ".cd[0].cm" -type "characterMapping" 168 "Extra_Attributes.translateX" 
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
		2 118 "Middle_L.rotateZ" 2 119  ;
	setAttr ".cd[0].cim" -type "Int32Array" 168 0 1 2 3
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
		 158 159 160 161 162 163 164 165 166 167 ;
createNode lightLinker -n "lightLinker1";
	setAttr ".ihi" 0;
	setAttr -s 21 ".lnk";
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
select -ne :particleCloud1;
	addAttr -ci true -sn "p3dLit" -ln "p3dLit" -dv 1 -at "short";
	addAttr -ci true -sn "p3dShadeMode" -ln "p3dShadeMode" -dv 1 -at "short";
	addAttr -ci true -sn "p3dBlendMode" -ln "p3dBlendMode" -at "short";
	addAttr -ci true -sn "p3dTextureGen" -ln "p3dTextureGen" -at "short";
	addAttr -ci true -sn "p3dUVMode" -ln "p3dUVMode" -dv 1 -at "short";
	addAttr -ci true -sn "p3dFilterMode" -ln "p3dFilterMode" -dv 1 -at "short";
	addAttr -ci true -sn "p3dAlphaTest" -ln "p3dAlphaTest" -at "short";
	addAttr -ci true -sn "p3dAlphaCompareMode" -ln "p3dAlphaCompareMode" -at "short";
	addAttr -ci true -sn "p3dProceduralTexXRes" -ln "p3dProceduralTexXRes" -at "short";
	addAttr -ci true -sn "p3dProceduralTexYRes" -ln "p3dProceduralTexYRes" -at "short";
	setAttr ".t" -type "float3" 0.47108001 0.47108001 0.47108001 ;
select -ne :initialShadingGroup;
	setAttr -k on ".nds";
	setAttr ".ro" yes;
	setAttr -s 654 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".top" 478;
	setAttr ".rght" 638;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
select -ne :defaultResolution;
	setAttr ".w" 640;
	setAttr ".h" 480;
	setAttr ".dar" 1.3329999446868896;
	setAttr ".ldar" yes;
select -ne :characterPartition;
select -ne :hyperGraphLayout;
	setAttr ".cch" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".img" -type "string" "";
	setAttr ".ims" 1;
select -ne :ikSystem;
connectAttr "brt_get_out_of_car_close_door.st" "clipLibrary2.st[0]";
connectAttr "brt_get_out_of_car_close_door.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL370.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL371.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL372.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL373.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL374.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA1066.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU73.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU74.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU75.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU76.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU77.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU78.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU79.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU80.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA1067.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA1068.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA1069.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL375.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL376.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL377.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL378.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL379.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL380.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA1070.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA1071.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA1072.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL381.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL382.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL383.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA1073.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA1074.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA1075.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA1076.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA1077.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA1078.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA1079.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA1080.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA1081.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTA1082.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTA1083.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTA1084.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTA1085.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTA1086.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTA1087.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL384.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL385.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL386.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTL387.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTL388.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTL389.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTL390.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL391.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL392.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA1088.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA1089.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA1090.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA1091.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA1092.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA1093.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA1094.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA1095.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA1096.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA1097.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA1098.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA1099.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA1100.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA1101.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA1102.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA1103.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA1104.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA1105.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA1106.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA1107.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA1108.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA1109.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA1110.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTA1111.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA1112.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA1113.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA1114.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA1115.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA1116.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL393.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL394.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL395.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA1117.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA1118.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA1119.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL396.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL397.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL398.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA1120.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA1121.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA1122.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL399.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL400.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL401.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA1123.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA1124.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA1125.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL402.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL403.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL404.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTA1126.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTA1127.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTA1128.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTL405.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTL406.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTL407.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTL408.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTL409.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTL410.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA1129.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA1130.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA1131.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA1132.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA1133.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA1134.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA1135.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA1136.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA1137.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA1138.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA1139.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA1140.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA1141.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA1142.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA1143.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA1144.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA1145.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA1146.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA1147.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA1148.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA1149.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA1150.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA1151.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA1152.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA1153.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA1154.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA1155.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA1156.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA1157.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA1158.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA1159.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA1160.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA1161.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA1162.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA1163.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA1164.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA1165.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA1166.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA1167.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA1168.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA1169.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA1170.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA1171.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA1172.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA1173.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA1174.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA1175.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA1176.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA1177.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA1178.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA1179.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA1180.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA1181.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA1182.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA1183.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA1184.a" "clipLibrary2.cel[0].cev[167].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
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
// End of brt-m_get_out_of_car_close_door.ma
