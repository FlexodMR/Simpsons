//Maya ASCII 4.0 scene
//Name: lsa-m_get_into_car_close_door.ma
//Last modified: Wed, Jul 31, 2002 04:46:28 PM
requires maya "4.0";
requires "p3dSimpleShader" "18.0";
requires "p3dmayaexp" "18.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_get_into_car_close_door";
	setAttr ".ihi" 0;
	setAttr ".du" 15;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTL -n "animCurveTL453";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTL -n "animCurveTL454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -0.97885515190251315 1 -0.97782540533110063 
		2 -0.94499369677682155 3 -0.89200913835893081 4 -0.83052084219668287 5 -0.7721779204093332 
		6 -0.72862948511613623 7 -0.71152464843634733 8 -0.71935659740770219 9 -0.74076392440479755 
		10 -0.77261384955217982 11 -0.811773592974395 12 -0.85511037479598972 13 
		-0.8994914151415101 14 -0.94178393413550243 15 -0.97885515190251315;
createNode animCurveTL -n "animCurveTL455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0;
createNode animCurveTL -n "animCurveTL456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0.76664548096569152 1 0.77342393573782797 
		2 0.78302940949786592 3 0.79405139318822593 4 0.80507937775132898 5 0.81470285412959598 
		6 0.82151131326544757 7 0.82409424610130455 8 0.82241117669989428 9 0.8178107870363297 
		10 0.8109663049216107 11 0.80255095816673694 12 0.79323797458270828 13 0.78370058198052472 
		14 0.77461200817118592 15 0.76664548096569152;
createNode animCurveTA -n "animCurveTA1304";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0;
createNode animCurveTU -n "animCurveTU89";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTU -n "animCurveTU90";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTU -n "animCurveTU91";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTU -n "animCurveTU92";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTU -n "animCurveTU93";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTU -n "animCurveTU94";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTU -n "animCurveTU95";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 15 1;
createNode animCurveTU -n "animCurveTU96";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 15 1;
createNode animCurveTA -n "animCurveTA1305";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1306";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1307";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTL -n "animCurveTL457";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTL -n "animCurveTL458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTL -n "animCurveTL459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTL -n "animCurveTL460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.4790535543793637 7 -1.8526412823159342 
		15 -2.4790535543793637;
createNode animCurveTL -n "animCurveTL461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.9833319268331725 7 1.101605641278836 
		15 0.9833319268331725;
createNode animCurveTL -n "animCurveTL462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.4327597250722541 7 2.2179098919452227 
		15 2.4327597250722541;
createNode animCurveTA -n "animCurveTA1308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -27.647037481197394 7 -27.647037481197394 
		15 -27.647037481197394;
createNode animCurveTA -n "animCurveTA1309";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.6471102606573029 7 -1.6471102606573029 
		15 -1.6471102606573029;
createNode animCurveTA -n "animCurveTA1310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -7.792214191643251 7 -7.792214191643251 
		15 -7.792214191643251;
createNode animCurveTL -n "animCurveTL463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.0407430139147178 7 -1.3797541401272344 
		15 -2.0407430139147178;
createNode animCurveTL -n "animCurveTL464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.99995529262164395 7 0.98945728173332703 
		15 0.99995529262164395;
createNode animCurveTL -n "animCurveTL465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.4400670660903248 7 2.3337850073683857 
		15 2.4400670660903248;
createNode animCurveTA -n "animCurveTA1311";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -28.33147073208438 7 -0.72225263268043516 
		15 -28.33147073208438;
createNode animCurveTA -n "animCurveTA1312";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 10.113681911874204 7 10.113681911874179 
		15 10.113681911874204;
createNode animCurveTA -n "animCurveTA1313";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.6896128937020114 7 -3.6896128937020123 
		15 -3.6896128937020114;
createNode animCurveTA -n "animCurveTA1314";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1315";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1316";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1317";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTL -n "animCurveTL466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 7 0 15 0;
createNode animCurveTL -n "animCurveTL467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 7 0 15 0;
createNode animCurveTL -n "animCurveTL468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 7 1 15 1;
createNode animCurveTL -n "animCurveTL469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 7 0 15 0;
createNode animCurveTL -n "animCurveTL470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 7 0 15 0;
createNode animCurveTL -n "animCurveTL471";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 7 1 15 1;
createNode animCurveTL -n "animCurveTL472";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.2591101781206659 7 -1.6421352762378554 
		15 -2.2591101781206659;
createNode animCurveTL -n "animCurveTL473";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.2803698945022608 7 1.4356475945789096 
		15 1.2803698945022608;
createNode animCurveTL -n "animCurveTL474";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.7693492297543687 7 1.9019358436022702 
		15 1.7693492297543687;
createNode animCurveTA -n "animCurveTA1326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -19.504876398732126 7 19.904949984433497 
		15 -19.504876398732126;
createNode animCurveTA -n "animCurveTA1327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 7 -23.729790269354229 15 0;
createNode animCurveTA -n "animCurveTA1328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 7 -30.653736597065432 15 0;
createNode animCurveTA -n "animCurveTA1329";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1330";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1333";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1334";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1335";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1336";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1340";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1341";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1342";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTL -n "animCurveTL475";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.5198069948790518 15 -0.5198069948790518;
createNode animCurveTL -n "animCurveTL476";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 15 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL477";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 15 0.36439499068905612;
createNode animCurveTA -n "animCurveTA1355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965299 15 7.7976222737965299;
createNode animCurveTA -n "animCurveTA1356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 30.409274105849079 15 30.409274105849079;
createNode animCurveTA -n "animCurveTA1357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.859940280210878 15 64.859940280210878;
createNode animCurveTL -n "animCurveTL478";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.43524234076486068 15 0.43524234076486068;
createNode animCurveTL -n "animCurveTL479";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 15 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL480";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 15 0.27773886459742925;
createNode animCurveTA -n "animCurveTA1358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -28.652637602052774 15 -28.652637602052774;
createNode animCurveTA -n "animCurveTA1360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.676908227303443 15 -64.676908227303443;
createNode animCurveTL -n "animCurveTL481";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -4.206404471075289 7 -3.0251282500831582 
		15 -4.206404471075289;
createNode animCurveTL -n "animCurveTL482";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.7781418955835293 7 2.4322073245137408 
		15 1.7781418955835293;
createNode animCurveTL -n "animCurveTL483";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.7041072647042435 7 2.4602491551945591 
		15 2.7041072647042435;
createNode animCurveTA -n "animCurveTA1361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -26.203413720634725 7 -27.818924152705119 
		15 -26.203413720634725;
createNode animCurveTA -n "animCurveTA1362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 14.791961579779638 7 -7.8589637569602626 
		15 14.791961579779638;
createNode animCurveTA -n "animCurveTA1363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 45.895436695401962 7 -6.0238552216777173 
		15 45.895436695401962;
createNode animCurveTL -n "animCurveTL484";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.4318854543692052 7 -0.85865689186961502 
		10 -1.0663777460455246 15 -2.4318854543692052;
createNode animCurveTL -n "animCurveTL485";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.7241929732026566 7 2.5072247162763563 
		10 2.5434888612919893 15 1.7241929732026566;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  0.023984095081686974 0.0020342629868537188;
	setAttr -s 4 ".kiy[2:3]"  -0.99971240758895874 -0.99999791383743286;
	setAttr -s 4 ".kox[2:3]"  0.023984048515558243 0.0020342629868537188;
	setAttr -s 4 ".koy[2:3]"  -0.99971240758895874 -0.99999791383743286;
createNode animCurveTL -n "animCurveTL486";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.6858977529588222 7 3.6257457706658354 
		10 3.4262633344380617 15 2.6858977529588222;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  0.0069580026902258396 0.0022511344868689775;
	setAttr -s 4 ".kiy[2:3]"  -0.99997574090957642 -0.99999743700027466;
	setAttr -s 4 ".kox[2:3]"  0.0069580008275806904 0.0022511344868689775;
	setAttr -s 4 ".koy[2:3]"  -0.99997574090957642 -0.99999743700027466;
createNode animCurveTA -n "animCurveTA1364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -33.734888782993899 7 -19.345874397196617 
		10 -21.547393754778248 15 -33.734888782993899;
createNode animCurveTA -n "animCurveTA1365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -14.870586397896899 7 -47.068687946319812 
		10 -42.142378080219508 15 -14.870586397896899;
createNode animCurveTA -n "animCurveTA1366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -30.592169336881899 7 7.3649226411748101 
		10 1.55748705668628 15 -30.592169336881899;
createNode animCurveTL -n "animCurveTL487";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.31054502397108613 7 0.31054502397108613 
		15 0.31054502397108613;
createNode animCurveTL -n "animCurveTL488";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.55640530640609931 7 -0.55640530640609931 
		15 -0.55640530640609931;
createNode animCurveTL -n "animCurveTL489";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.57914122395678103 7 -0.57914122395678103 
		15 -0.57914122395678103;
createNode animCurveTL -n "animCurveTL490";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.063331173333856433 7 -0.063331173333856433 
		15 -0.063331173333856433;
createNode animCurveTL -n "animCurveTL491";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.69960805773293522 7 -0.69960805773293522 
		15 -0.69960805773293522;
createNode animCurveTL -n "animCurveTL492";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.66762598980258558 7 -0.66762598980258558 
		15 -0.66762598980258558;
createNode animCurveTA -n "animCurveTA1367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.061808866237337522 7 -0.061808866237337522 
		15 -0.061808866237337522;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -59.058178941076754 7 -59.058178941076754 
		15 -59.058178941076754;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.579147429757843 7 16.579147429757843 
		15 16.579147429757843;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 12.253734489678925 7 12.253734489678925 
		15 12.253734489678925;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -65.746751280844961 7 -65.746751280844961 
		15 -65.746751280844961;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 7 0 15 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 15.711328223519057 7 15.711328223519057 
		15 15.711328223519057;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.5572674112203622 7 8.5572674112203622 
		15 8.5572674112203622;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 7 0 15 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 7 0 15 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 7 0 15 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 7 0 15 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 7 0 15 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 7 0 15 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 19.002497950056888 7 19.002497950056888 
		15 19.002497950056888;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 23.263402056531085 7 23.263402056531085 
		15 23.263402056531085;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20.166277752815617 7 20.166277752815617 
		15 20.166277752815617;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 7 0 15 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 7 0 15 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 33.429092416277157 7 33.429092416277157 
		15 33.429092416277157;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 15 13.994403295754109;
createNode animCurveTA -n "animCurveTA1393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 15 0;
createNode animCurveTA -n "animCurveTA1395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 15 13.994403295754109;
createNode animCurveTA -n "animCurveTA1396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 7 0 15 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 7 0 15 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 17.254116939558369 7 17.254116939558369 
		15 17.254116939558369;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 7 0 15 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 7 0 15 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 7 0 15 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.3731006602189262 7 5.9660149388432382 
		15 1.3731006602189262;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.38374158911587303 7 4.5116636179203082 
		15 -0.38374158911587303;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.96901743689791309 7 2.3811787268879385 
		15 0.96901743689791309;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.2144674450583466 7 -7.1097278539792699 
		15 2.2144674450583466;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5.36423803921525 7 0 15 5.36423803921525;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.2584064202075531 7 6.9655753505297673 
		15 -3.2584064202075531;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -4.9690701715193724 3 -46.227209466300053 
		7 -38.999395730978343 15 -4.9690701715193724;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.40958940982818604;
	setAttr -s 4 ".kiy[3]"  0.9122699499130249;
createNode animCurveTA -n "animCurveTA1409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.9904681746768538 3 -43.464870903715401 
		7 -68.701263884681893 15 2.9904681746768538;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.20843805372714996;
	setAttr -s 4 ".kiy[3]"  0.978035569190979;
createNode animCurveTA -n "animCurveTA1410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 14.780225156536881 3 14.102963811421818 
		7 -10.15874635942871 15 14.780225156536881;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.211833892135727 7 3.749937051835468 
		15 -2.211833892135727;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.708673036061555 7 -11.126545227672914 
		15 -1.708673036061555;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.7082804953288209 7 -2.1144942238017537 
		15 2.7082804953288209;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 7 0 15 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 7 0 15 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.080064458283051 7 27.080064458283051 
		15 27.080064458283051;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -177.04830761929054 7 -177.04830761929054 
		15 -177.04830761929054;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.722848255843903 7 27.722848255843903 
		15 27.722848255843903;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 21.576484776388227 7 21.576484776388227 
		15 21.576484776388227;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 7 0 15 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 7 0 15 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.911632519594587 7 27.911632519594587 
		15 27.911632519594587;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
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
	setAttr ".o" 1;
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
	setAttr -s 102 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".top" 479;
	setAttr ".rght" 639;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
select -ne :defaultRenderQuality;
	setAttr ".eaa" 1;
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
connectAttr "lsa_get_into_car_close_door.st" "clipLibrary2.st[0]";
connectAttr "lsa_get_into_car_close_door.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL452.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL453.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL454.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL455.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL456.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA1304.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU89.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU90.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU91.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU92.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU93.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU94.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU95.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU96.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA1305.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA1306.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA1307.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL457.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL458.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL459.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL460.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL461.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL462.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA1308.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA1309.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA1310.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL463.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL464.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL465.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA1311.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA1312.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA1313.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA1314.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA1315.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA1316.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA1317.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA1318.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA1319.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTA1320.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTA1321.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTA1322.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTA1323.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTA1324.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTA1325.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL466.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL467.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL468.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTL469.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTL470.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTL471.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTL472.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL473.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL474.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA1326.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA1327.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA1328.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA1329.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA1330.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA1331.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA1332.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA1333.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA1334.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA1335.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA1336.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA1337.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA1338.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA1339.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA1340.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA1341.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA1342.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA1343.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA1344.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA1345.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA1346.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA1347.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA1348.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTA1349.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA1350.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA1351.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA1352.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA1353.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA1354.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL475.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL476.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL477.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA1355.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA1356.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA1357.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL478.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL479.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL480.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA1358.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA1359.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA1360.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL481.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL482.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL483.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA1361.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA1362.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA1363.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL484.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL485.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL486.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTA1364.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTA1365.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTA1366.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTL487.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTL488.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTL489.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTL490.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTL491.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTL492.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA1367.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA1368.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA1369.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA1370.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA1371.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA1372.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA1373.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA1374.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA1375.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA1376.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA1377.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA1378.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA1379.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA1380.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA1381.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA1382.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA1383.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA1384.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA1385.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA1386.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA1387.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA1388.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA1389.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA1390.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA1391.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA1392.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA1393.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA1394.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA1395.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA1396.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA1397.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA1398.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA1399.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA1400.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA1401.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA1402.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA1403.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA1404.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA1405.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA1406.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA1407.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA1408.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA1409.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA1410.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA1411.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA1412.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA1413.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA1414.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA1415.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA1416.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA1417.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA1418.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA1419.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA1420.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA1421.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA1422.a" "clipLibrary2.cel[0].cev[167].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[4].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[5].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[5].olnk";
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
// End of lsa-m_get_into_car_close_door.ma
