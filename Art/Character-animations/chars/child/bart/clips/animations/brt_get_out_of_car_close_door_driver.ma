//Maya ASCII 4.0 scene
//Name: brt_get_out_of_car_close_door_driver.ma
//Last modified: Tue, May 27, 2003 01:43:49 PM
requires maya "4.0";
requires "p3dDeformer" "2.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_get_out_of_car_close_door_driverSource";
	setAttr ".ihi" 0;
	setAttr ".du" 13;
	setAttr ".ci" no;
createNode animCurveTL -n "brt_Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "brt_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.082060155321518849 1 0.11818922546931372 
		2 0.14135469651228477 3 0.11704601207816401 4 0.078832605453077881 5 0.052023610177428195 
		6 0.026889379352575547 7 -0.004238983101137626 8 -0.022234611459284882 9 
		-0.01575954238316914 10 -0.0017632165800498287 11 0.014607039437609428 12 
		0.028203899157344968 13 0.033880036066693167;
createNode animCurveTL -n "brt_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.39189340113154059 1 0.4455611483187556 
		2 0.48620519122119632 3 0.45414055288501531 4 0.37337964851475947 5 0.22117242452770086 
		6 0.078121288430122671 7 0.040195738030375114 8 0.038544492834453041 9 0.027393347568631942 
		10 0.016941498594307842 11 0.008210772969448981 12 0.0022229977520236166 
		13 0;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 88.879633345488088 1 67.493112367621777 
		2 43.290879102686773 3 29.657928171958567 4 18.743373542065953 5 6.8291450765767046 
		6 -5.0982101752959474 7 -20.845587790180371 8 -29.750727835533954 9 -25.051486327229721 
		10 -16.102976634170002 11 -5.9461708848276125 12 2.3779587923245757 13 5.8284402688137176;
createNode animCurveTU -n "animCurveTU81";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTU -n "animCurveTU82";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTU -n "animCurveTU83";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTU -n "animCurveTU84";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTU -n "animCurveTU85";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTU -n "animCurveTU86";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTU -n "animCurveTU87";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 1;
createNode animCurveTU -n "animCurveTU88";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 1;
createNode animCurveTA -n "animCurveTA1186";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1187";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1188";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTL -n "animCurveTL416";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTL -n "animCurveTL417";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTL -n "animCurveTL418";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTL -n "animCurveTL419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.16956905984264883 2 0.16956905984264883 
		4 0.16956905984264883 6 -0.021785915323025682 8 -0.17220374723958892 13 -0.21594587158542247;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.23204099190485944 2 0.23204099190485944 
		4 0.23204099190485944 6 0.23261088124052329 8 0.21237779645709584 13 0.21854505205085809;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.097427438237216 2 1.097427438237216 
		4 1.097427438237216 6 0.53447966462689123 8 0.00078430246903575811 13 0.00078430246903575811;
	setAttr -s 6 ".kit[4:5]"  3 3;
	setAttr -s 6 ".kot[4:5]"  3 3;
createNode animCurveTA -n "animCurveTA1189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -375.98082634113621 2 -358.98230662052481 
		4 -359.71051472936074 6 -343.78760382719003 8 -356.30510582348501 13 -356.30510582348501;
createNode animCurveTA -n "animCurveTA1190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 91.029007103502906 2 73.836695331369143 
		4 11.877126668562742 6 13.190848725189511 8 5.066135686458634 13 5.066135686458634;
createNode animCurveTA -n "animCurveTA1191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -374.00706426405969 2 -357.05120942584182 
		4 -357.96910308770822 6 -365.87510879708043 8 -359.77428349194275 13 -359.77428349194275;
createNode animCurveTL -n "animCurveTL422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.12723102470459602 2 0.12723102470459602 
		4 0.24360216318209543 6 0.26418930332320417 8 0.26454489187170815 13 0.26454016861507795;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.21426051557445225 2 0.33660930972180708 
		4 0.30589918304475761 6 0.21772150734304918 8 0.21256905138497798 13 0.21854541072049752;
	setAttr -s 6 ".kit[4:5]"  3 3;
	setAttr -s 6 ".kot[4:5]"  3 3;
createNode animCurveTL -n "animCurveTL424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.72810231057739006 2 0.72810231057739006 
		4 0.31612415574650882 6 -0.064904406754016042 8 -0.0649 13 -0.064904406754016042;
	setAttr -s 6 ".kit[3:5]"  3 9 3;
	setAttr -s 6 ".kot[3:5]"  3 9 3;
createNode animCurveTA -n "animCurveTA1192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 174.08624265487845 2 27.919884125044984 
		4 35.946713855059755 6 0 8 -0.16069276704424185 13 0;
	setAttr -s 6 ".kit[4:5]"  3 3;
	setAttr -s 6 ".kot[4:5]"  3 3;
createNode animCurveTA -n "animCurveTA1193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 77.361573251038095 2 58.491392042885806 
		4 25.948901905116429 6 25.948901905116401 8 25.948901905116401 13 25.948901905116401;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 172.73088895567136 2 -0.46945470598764205 
		4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[1:5]"  3 9 9 9 3;
	setAttr -s 6 ".kot[1:5]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1195";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1196";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1197";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1198";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1199";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1200";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1201";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1202";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1203";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1204";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1205";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1206";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTL -n "animCurveTL425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 2 1 4 1 6 1 8 1 13 1;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 2 1 4 1 6 1 8 1 13 1;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.1852234316132543 2 0.31906108220330981 
		4 0.17793831425034851 6 0.060693805637101549 8 -0.050187219594454789 13 0.076472881617957691;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.9704149019867897 2 0.94398942485075565 
		4 0.92500695028803281 6 0.86345686750096806 8 0.89728606343677331 13 0.95473100313980441;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.88456864722919493 2 1.0974460581182048 
		4 0.84278002547624742 6 0.17633275331227244 8 0.087001337063247239 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -29.507853993942465 2 14.115305953338238 
		4 6.4405715946507085 6 5.4190830080024321 8 5.0053970193082282 13 -0.62843630316474508;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 88.879633345488074 2 43.290879102686773 
		4 18.743373542065957 6 -5.0982101752959457 8 -29.750727835533947 13 5.8284402688137167;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -31.471029442793292 2 -0.95679763148460284 
		4 5.1634214270386511 6 0.54358275456367999 8 2.9563955936336086 13 1.295636019309746;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1210";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1211";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1212";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1213";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1214";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1215";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1216";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1217";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1218";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1219";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1220";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1221";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1222";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1223";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1224";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1225";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1226";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1227";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1228";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1229";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1230";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1231";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1232";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1233";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1234";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1235";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTL -n "animCurveTL434";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -0.5198069948790518;
createNode animCurveTL -n "animCurveTL435";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL436";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0.36439499068905612;
createNode animCurveTA -n "animCurveTA1236";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 7.7976222737965317;
createNode animCurveTA -n "animCurveTA1237";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 30.409274105849079;
createNode animCurveTA -n "animCurveTA1238";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 64.859940280210893;
createNode animCurveTL -n "animCurveTL437";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0.43524234076486068;
createNode animCurveTL -n "animCurveTL438";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL439";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0.27773886459742925;
createNode animCurveTA -n "animCurveTA1239";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1240";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -28.652637602052774;
createNode animCurveTA -n "animCurveTA1241";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -64.676908227303443;
createNode animCurveTL -n "animCurveTL440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.30749701812507962 2 0.041499285372137956 
		4 -0.82415140002192244 8 -0.7246466247099308 13 -0.61083301393139333;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.0510182586227352 2 1.1669775377221685 
		4 1.2110162669307252 8 1.0846904346086543 13 1.0211562878106184;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.8460670423804326 2 2.1841601514734879 
		4 1.1962120303937906 8 -0.22551934719481975 13 0.14314299916678522;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -273.44301664312098 2 -331.05077504175671 
		4 -360.48048668641269 8 -370.25422163460297 13 -344.43537961215827;
createNode animCurveTA -n "animCurveTA1243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.753397523637741 2 21.279751825887256 
		4 -11.969566747283121 8 -22.154462477712006 13 5.3827317875977077;
createNode animCurveTA -n "animCurveTA1244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -266.95918275971843 2 -292.70861874789227 
		4 -294.1325728969278 8 -301.66325059509711 13 -299.8329211539791;
createNode animCurveTL -n "animCurveTL443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.24094058915794578 2 1.7221422667524373 
		4 1.3323014620167721 6 0.43660350743874704 8 -0.52518242666326953 10 0.37243238315162608 
		13 0.8448236677023373;
	setAttr -s 7 ".kit[1:6]"  1 9 9 9 9 3;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 3;
	setAttr -s 7 ".kix[1:6]"  0.02194344624876976 0.0010371780954301357 
		0.00071781669976189733 0.020773293450474739 0.0012165387161076069 1;
	setAttr -s 7 ".kiy[1:6]"  0.99975919723510742 -0.99999946355819702 
		-0.9999997615814209 -0.99978423118591309 0.9999992847442627 0;
	setAttr -s 7 ".kox[1:6]"  0.021943425759673119 0.0010371780954301357 
		0.00071781669976189733 0.020773293450474739 0.0012165387161076069 1;
	setAttr -s 7 ".koy[1:6]"  0.99975919723510742 -0.99999946355819702 
		-0.9999997615814209 -0.99978423118591309 0.9999992847442627 0;
createNode animCurveTL -n "animCurveTL444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.0349865835160112 2 1.8477354389376743 
		4 2.000722860929494 6 1.6863799048594967 8 1.7036999239077313 10 1.253450943065554 
		13 1.0304014029588007;
	setAttr -s 7 ".kit[1:6]"  1 9 9 9 9 3;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 3;
	setAttr -s 7 ".kix[1:6]"  0.0024925624020397663 0.0082630431279540062 
		0.0044889459386467934 0.003079782472923398 0.002475367859005928 1;
	setAttr -s 7 ".kiy[1:6]"  0.99999690055847168 -0.9999658465385437 
		-0.99998992681503296 -0.99999523162841797 -0.99999696016311646 0;
	setAttr -s 7 ".kox[1:6]"  0.0024924995377659798 0.0082630431279540062 
		0.0044889459386467934 0.003079782472923398 0.002475367859005928 1;
	setAttr -s 7 ".koy[1:6]"  0.99999690055847168 -0.9999658465385437 
		-0.99998992681503296 -0.99999523162841797 -0.99999696016311646 0;
createNode animCurveTL -n "animCurveTL445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.34076812298084341 2 1.6884859120338664 
		4 1.7626452836903677 6 1.0837845319729029 8 1.0130435086491647 10 0.62057618753547905 
		13 -0.097994651149805143;
	setAttr -s 7 ".kit[1:6]"  1 1 9 9 9 3;
	setAttr -s 7 ".kot[1:6]"  1 1 9 9 9 3;
	setAttr -s 7 ".kix[1:6]"  0.0009852823568508029 0.002672695554792881 
		0.0017787193646654487 0.0028784624300897121 0.0015000967541709542 1;
	setAttr -s 7 ".kiy[1:6]"  0.9999995231628418 -0.99999642372131348 
		-0.99999839067459106 -0.99999582767486572 -0.99999886751174927 0;
	setAttr -s 7 ".kox[1:6]"  0.00098529178649187088 0.0026727032382041216 
		0.0017787193646654487 0.0028784624300897121 0.0015000967541709542 1;
	setAttr -s 7 ".koy[1:6]"  0.9999995231628418 -0.99999642372131348 
		-0.99999839067459106 -0.99999582767486572 -0.99999886751174927 0;
createNode animCurveTA -n "animCurveTA1245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 261.7260243159331 2 300.7132934556962 
		4 300.7132934556962 6 331.0235222266287 8 443.72550828566489 10 332.7484343274316 
		13 349.65056094970328;
createNode animCurveTA -n "animCurveTA1246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 45.008042607101586 2 -12.133442627944801 
		4 -12.133442627944801 6 -71.917845588531208 8 -56.700050392933925 10 -37.954865401716468 
		13 5.2600531253850811;
createNode animCurveTA -n "animCurveTA1247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 265.6340570691703 2 351.40187982778605 
		4 351.40187982778605 6 324.66609436312882 8 216.84978862256523 10 324.44998118340629 
		13 293.49683780254895;
createNode animCurveTL -n "animCurveTL446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.31054502397108613 2 0.31054502397108613 
		4 0.679929438736388 6 0.50398116548755967 8 0.30493038065203715 13 0.10167917362943303;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.55640530640609931 2 -0.55640530640609931 
		4 -0.58260810733110913 6 -0.39863743916248945 8 -0.3874265124899427 13 -0.40762644910266188;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.57914122395678103 2 -0.57914122395678103 
		4 -0.66309486839399645 6 -0.7761129410128248 8 -0.85665445141535856 13 -0.93129112588482243;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.66768647579175422 2 -0.66768647579175422 
		4 -0.17523930523423681 6 -0.145692475481941 8 -0.076454516312516679 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.67301253925255977 2 -0.67301253925255977 
		4 -0.00072435787012014696 6 0.039612935291223068 8 0.024818445825645647 13 
		0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.49850301940481012 2 -0.49850301940481012 
		4 -0.80201435285893019 6 -0.82022503115751455 8 -0.90413945525160533 13 -1;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.061808866237340665 2 -0.061808866237337522 
		4 -0.061808866237337522 6 -0.061808866237337522 8 -0.061808866237339083 13 
		-0.061808866237340665;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -59.058178941076754 2 -59.058178941076754 
		4 -59.058178941076754 6 -59.058178941076754 8 -59.058178941076754 13 -59.058178941076754;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 16.57914742975785 2 16.579147429757843 
		4 16.579147429757843 6 16.579147429757843 8 16.579147429757846 13 16.57914742975785;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1251";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 12.253734489678925 2 12.253734489678925 
		4 12.253734489678925 6 12.253734489678925 8 12.253734489678925 13 12.253734489678925;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1252";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -65.746751280844975 2 -65.746751280844961 
		4 -65.746751280844961 6 -65.746751280844961 8 -65.746751280844975 13 -65.746751280844975;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1253";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1254";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 15.711328223519061 2 15.711328223519057 
		4 15.711328223519057 6 15.711328223519057 8 15.711328223519057 13 15.711328223519061;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.5572674112203657 2 8.5572674112203622 
		4 8.5572674112203622 6 8.5572674112203622 8 8.5572674112203622 13 8.5572674112203657;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -121.24398976748977 13 -121.24398976748977;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA1263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 28.612774017129329 13 28.612774017129329;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA1264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 17.632837226638049 13 17.632837226638049;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA1265";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 33.429092416277157 2 33.429092416277157 
		4 33.429092416277157 6 33.429092416277157 8 33.429092416277157 13 33.429092416277157;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1268";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1269";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1270";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1271";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1272";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1273";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 13.994403295754109;
createNode animCurveTA -n "animCurveTA1274";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1275";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1276";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA1277";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1279";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 17.254116939558369 2 17.254116939558369 
		4 17.254116939558369 6 17.254116939558369 8 17.254116939558369 13 17.254116939558369;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1280";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1281";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1282";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1283";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.65073001024951671 2 -29.379259171673748 
		4 -36.515129098508311 6 -24.809666427741885 8 -12.942987686442743 13 0.65073001024951671;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 4.2368721935960938 2 0.29710718013218351 
		4 8.0193793976003676 6 15.976289169045954 8 11.835960743668345 13 4.2368721935960938;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1285";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.6995264082587447 2 0.96586030651003341 
		4 6.365537851650819 6 -3.7088419425485806 8 0.78667949609524512 13 2.6995264082587447;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1286";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 -3.9388735369945089 4 0 6 
		0.23633240840109546 8 0.14770774612807708 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 1.8242021628094227 4 0 6 
		-0.10945212443573141 8 -0.068407573498613802 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1288";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 -3.4768422591718746 4 0 6 
		0.20861051990451415 8 0.13038156631091305 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1289";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0.16788504588939113 4 -1.2821508722957302 
		6 -9.3414390941578826 8 1.0260892085911693 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1290";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 -28.177964601171336 4 -34.592236725841374 
		6 -16.101570746525564 8 -6.7940238405294489 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1291";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 6.6786334979782902 2 -11.997228454314529 
		4 -9.0177477062694198 6 10.782989100949166 8 -6.5386371988712124 13 6.6786334979782902;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1292";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.8903601258661935 2 0.26401146988271113 
		4 10.620934651579155 6 -0.63894688216937967 8 3.5810552572110996 13 1.8903601258661935;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1293";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.5597289571479038 2 12.173202612054125 
		4 4.2675310995034259 6 -5.1850848311064954 8 -1.8377920809524408 13 -2.5597289571479038;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1294";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.0168110874036049 2 5.8044567186189209 
		4 -2.5690730322880704 6 -14.743474393487343 8 1.018742769217841 13 2.0168110874036049;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1295";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.080064458283051 2 27.080064458283051 
		4 27.080064458283051 6 27.080064458283051 8 27.080064458283051 13 27.080064458283051;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 143.71460997127252 13 143.71460997127252;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA1299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 27.804554996454378 13 27.804554996454378;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA1300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 29.452980944098744 13 29.452980944098744;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA1301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0 4 0 6 0 8 0 13 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1303";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.911632519594587 2 27.911632519594587 
		4 27.911632519594587 6 27.911632519594587 8 27.911632519594587 13 27.911632519594587;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode clipLibrary -n "clipLibrary1";
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
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -k on ".ra";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -k on ".esr";
	setAttr -k on ".ors";
	setAttr -k on ".outf";
	setAttr -k on ".gama";
	setAttr ".top" 478;
	setAttr -k on ".left";
	setAttr -k on ".bot";
	setAttr ".rght" 638;
	setAttr -k on ".urr";
	setAttr ".fs" 1;
	setAttr ".ef" 10;
	setAttr -k on ".bf";
	setAttr -k on ".bfs";
	setAttr -k on ".be";
	setAttr -k on ".fec";
	setAttr -k on ".sec";
	setAttr -k on ".ofc";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -k on ".sp";
	setAttr -k on ".shs";
	setAttr -k on ".lpr";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".shp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -k on ".mbf";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -k on ".bll";
	setAttr -k on ".bls";
	setAttr -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -k on ".rgpn";
	setAttr -k on ".rlsd";
	setAttr -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
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
connectAttr "brt_get_out_of_car_close_door_driverSource.st" "clipLibrary1.st[0]"
		;
connectAttr "brt_get_out_of_car_close_door_driverSource.du" "clipLibrary1.du[0]"
		;
connectAttr "brt_Extra_Attributes_translateX.a" "clipLibrary1.cel[0].cev[0].cevr"
		;
connectAttr "brt_Extra_Attributes_translateY.a" "clipLibrary1.cel[0].cev[1].cevr"
		;
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "brt_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU81.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU82.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU83.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU84.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU85.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU86.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU87.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU88.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1186.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1187.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1188.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL416.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL417.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL418.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL419.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL420.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL421.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1189.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1190.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1191.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL422.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL423.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL424.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1192.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1193.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1194.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1195.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1196.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1197.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1198.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1199.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1200.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA1201.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA1202.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA1203.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA1204.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA1205.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA1206.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL425.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL426.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL427.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL428.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL429.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL430.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL431.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL432.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL433.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1207.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1208.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1209.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1210.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1211.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1212.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1213.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1214.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1215.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1216.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1217.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1218.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1219.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1220.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1221.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1222.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1223.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1224.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1225.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1226.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1227.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1228.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1229.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA1230.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA1231.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA1232.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1233.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1234.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1235.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL434.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL435.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL436.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA1236.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1237.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1238.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL437.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL438.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL439.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1239.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1240.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1241.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL440.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL441.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL442.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1242.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1243.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1244.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL443.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL444.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL445.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1245.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1246.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1247.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL446.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL447.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL448.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL449.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL450.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL451.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1248.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1249.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1250.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1251.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1252.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1253.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1254.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1255.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1256.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1257.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1258.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1259.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1260.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1261.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1262.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1263.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1264.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1265.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1266.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1267.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1268.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1269.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1270.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1271.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1272.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1273.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1274.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1275.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1276.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1277.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1278.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1279.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1280.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1281.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1282.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1283.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1284.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1285.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1286.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1287.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1288.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1289.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1290.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1291.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1292.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1293.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1294.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1295.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1296.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1297.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1298.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1299.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1300.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1301.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1302.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1303.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of brt_get_out_of_car_close_door_driver.ma
