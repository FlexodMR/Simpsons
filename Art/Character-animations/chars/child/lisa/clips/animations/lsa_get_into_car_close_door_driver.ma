//Maya ASCII 4.0 scene
//Name: lsa_get_into_car_close_door_driver.ma
//Last modified: Mon, Jan 06, 2003 04:43:40 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_get_into_car_close_door_driverSource";
	setAttr ".ihi" 0;
	setAttr ".du" 14;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL493";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL494";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.96285515190251303 14 -0.96285515190251303;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.45955081921718022 14 0.45955081921718022;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.72080901693409116 14 0.72080901693409116;
createNode animCurveTA -n "lsa_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU97";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU98";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU99";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU100";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU101";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU102";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU103";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 1;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU104";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 1;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1424";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1425";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1426";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL498";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL499";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL500";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL501";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.4790535543793637 6 -2.4790535543793637 
		14 -2.4790535543793637;
createNode animCurveTL -n "animCurveTL502";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.9833319268331725 6 0.9833319268331725 
		14 0.9833319268331725;
createNode animCurveTL -n "animCurveTL503";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.4327597250722541 6 2.4327597250722541 
		14 2.4327597250722541;
createNode animCurveTA -n "animCurveTA1427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -27.647037481197394 6 -27.647037481197394 
		14 -27.647037481197394;
createNode animCurveTA -n "animCurveTA1428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.6471102606573029 6 -1.6471102606573029 
		14 -1.6471102606573029;
createNode animCurveTA -n "animCurveTA1429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -7.792214191643251 6 -7.792214191643251 
		14 -7.792214191643251;
createNode animCurveTL -n "animCurveTL504";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.0407430139147178 6 -2.0407430139147178 
		14 -2.0407430139147178;
createNode animCurveTL -n "animCurveTL505";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.99995529262164395 6 0.99995529262164395 
		14 0.99995529262164395;
createNode animCurveTL -n "animCurveTL506";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.4400670660903248 6 2.4400670660903248 
		14 2.4400670660903248;
createNode animCurveTA -n "animCurveTA1430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -28.33147073208438 6 -28.33147073208438 
		14 -28.33147073208438;
createNode animCurveTA -n "animCurveTA1431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 10.113681911874204 6 10.113681911874204 
		14 10.113681911874204;
createNode animCurveTA -n "animCurveTA1432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.6896128937020114 6 -3.6896128937020114 
		14 -3.6896128937020114;
createNode animCurveTA -n "animCurveTA1433";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1434";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1435";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1436";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1437";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1438";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1439";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1440";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1441";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1442";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1443";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1444";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL507";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
createNode animCurveTL -n "animCurveTL508";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
createNode animCurveTL -n "animCurveTL509";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 6 1 14 1;
createNode animCurveTL -n "animCurveTL510";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
createNode animCurveTL -n "animCurveTL511";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
createNode animCurveTL -n "animCurveTL512";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 6 1 14 1;
createNode animCurveTL -n "animCurveTL513";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.2591101781206659 6 -1.6421352762378554 
		14 -2.2591101781206659;
createNode animCurveTL -n "animCurveTL514";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.2803698945022608 6 1.4356475945789096 
		14 1.2803698945022608;
createNode animCurveTL -n "animCurveTL515";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.7693492297543687 6 1.9019358436022702 
		14 1.7693492297543687;
createNode animCurveTA -n "animCurveTA1445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -19.504876398732126 6 19.904949984433497 
		14 -19.504876398732126;
createNode animCurveTA -n "animCurveTA1446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 -23.729790269354229 14 0;
createNode animCurveTA -n "animCurveTA1447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 -30.653736597065432 14 0;
createNode animCurveTA -n "animCurveTA1448";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1449";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1450";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1451";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1452";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1453";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1454";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1455";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1456";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1457";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1458";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1459";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1460";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1461";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1462";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1463";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1464";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1465";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1466";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1467";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1468";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1469";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1470";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1471";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1472";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1473";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL516";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 -0.5198069948790518;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL517";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 -0.72394202659893114;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL518";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0.36439499068905612;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1474";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 7.7976222737965299;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1475";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 30.409274105849079;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1476";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 64.859940280210878;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL519";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0.43524234076486068;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL520";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 -0.82665738350180629;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL521";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0.27773886459742925;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1477";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1478";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 -28.652637602052774;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1479";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 -64.676908227303443;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -4.206404471075289 6 -3.0251282500831582 
		14 -4.206404471075289;
createNode animCurveTL -n "animCurveTL523";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.7781418955835293 6 2.4322073245137408 
		14 1.7781418955835293;
createNode animCurveTL -n "animCurveTL524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.7041072647042435 6 2.4602491551945591 
		14 2.7041072647042435;
createNode animCurveTA -n "animCurveTA1480";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -26.203413720634725 6 -27.818924152705119 
		14 -26.203413720634725;
createNode animCurveTA -n "animCurveTA1481";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 14.791961579779638 6 -7.8589637569602626 
		14 14.791961579779638;
createNode animCurveTA -n "animCurveTA1482";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 45.895436695401962 6 -6.0238552216777173 
		14 45.895436695401962;
createNode animCurveTL -n "animCurveTL525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.4318854543692052 6 -0.85865689186961502 
		9 -1.0663777460455246 14 -2.4318854543692052;
createNode animCurveTL -n "animCurveTL526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.7241929732026566 6 2.5072247162763563 
		9 2.5434888612919893 14 1.7241929732026566;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  0.023984095081686974 0.0020342629868537188;
	setAttr -s 4 ".kiy[2:3]"  -0.99971240758895874 -0.99999791383743286;
	setAttr -s 4 ".kox[2:3]"  0.023984048515558243 0.0020342629868537188;
	setAttr -s 4 ".koy[2:3]"  -0.99971240758895874 -0.99999791383743286;
createNode animCurveTL -n "animCurveTL527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.6858977529588222 6 3.6257457706658354 
		9 3.4262633344380617 14 2.6858977529588222;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  0.0069580026902258396 0.0022511344868689775;
	setAttr -s 4 ".kiy[2:3]"  -0.99997574090957642 -0.99999743700027466;
	setAttr -s 4 ".kox[2:3]"  0.0069580008275806904 0.0022511344868689775;
	setAttr -s 4 ".koy[2:3]"  -0.99997574090957642 -0.99999743700027466;
createNode animCurveTA -n "animCurveTA1483";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -33.734888782993899 6 -19.345874397196617 
		9 -21.547393754778248 14 -33.734888782993899;
createNode animCurveTA -n "animCurveTA1484";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -14.870586397896899 6 -47.068687946319812 
		9 -42.142378080219508 14 -14.870586397896899;
createNode animCurveTA -n "animCurveTA1485";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -30.592169336881899 6 7.3649226411748101 
		9 1.55748705668628 14 -30.592169336881899;
createNode animCurveTL -n "animCurveTL528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.31054502397108613 6 0.31054502397108613 
		14 0.31054502397108613;
createNode animCurveTL -n "animCurveTL529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.55640530640609931 6 -0.55640530640609931 
		14 -0.55640530640609931;
createNode animCurveTL -n "animCurveTL530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.57914122395678103 6 -0.57914122395678103 
		14 -0.57914122395678103;
createNode animCurveTL -n "animCurveTL531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.063331173333856433 6 -0.063331173333856433 
		14 -0.063331173333856433;
createNode animCurveTL -n "animCurveTL532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.69960805773293522 6 -0.69960805773293522 
		14 -0.69960805773293522;
createNode animCurveTL -n "animCurveTL533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.66762598980258558 6 -0.66762598980258558 
		14 -0.66762598980258558;
createNode animCurveTA -n "animCurveTA1486";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.061808866237337522 6 -0.061808866237337522 
		14 -0.061808866237337522;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1487";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -59.058178941076754 6 -59.058178941076754 
		14 -59.058178941076754;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1488";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.579147429757843 6 16.579147429757843 
		14 16.579147429757843;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1489";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 12.253734489678925 6 12.253734489678925 
		14 12.253734489678925;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1490";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -65.746751280844961 6 -65.746751280844961 
		14 -65.746751280844961;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1491";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1492";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 15.711328223519057 6 15.711328223519057 
		14 15.711328223519057;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1493";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.5572674112203622 6 8.5572674112203622 
		14 8.5572674112203622;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1494";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1495";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1496";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1497";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1498";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1499";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1500";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 19.002497950056888 6 19.002497950056888 
		14 19.002497950056888;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1501";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 23.263402056531085 6 23.263402056531085 
		14 23.263402056531085;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1502";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20.166277752815617 6 20.166277752815617 
		14 20.166277752815617;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1503";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1504";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1505";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 33.429092416277157 6 33.429092416277157 
		14 33.429092416277157;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1506";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1507";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1508";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1509";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1510";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1511";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 13.994403295754109;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1512";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1513";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1514";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 13.994403295754109;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1515";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1516";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1517";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 17.254116939558369 6 17.254116939558369 
		14 17.254116939558369;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1518";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1519";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1520";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1521";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.3731006602189262 6 5.9660149388432382 
		14 1.3731006602189262;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.38374158911587303 6 4.5116636179203082 
		14 -0.38374158911587303;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1523";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.96901743689791309 6 2.3811787268879385 
		14 0.96901743689791309;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.2144674450583466 6 -7.1097278539792699 
		14 2.2144674450583466;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5.36423803921525 6 0 14 5.36423803921525;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.2584064202075531 6 6.9655753505297673 
		14 -3.2584064202075531;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -4.9690701715193724 3 -46.227209466300053 
		6 -38.999395730978343 14 -4.9690701715193724;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.40958940982818604;
	setAttr -s 4 ".kiy[3]"  0.9122699499130249;
createNode animCurveTA -n "animCurveTA1528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.9904681746768538 3 -43.464870903715401 
		6 -68.701263884681893 14 2.9904681746768538;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.20843805372714996;
	setAttr -s 4 ".kiy[3]"  0.978035569190979;
createNode animCurveTA -n "animCurveTA1529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 14.780225156536881 3 14.102963811421818 
		6 -10.15874635942871 14 14.780225156536881;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.211833892135727 6 3.749937051835468 
		14 -2.211833892135727;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.708673036061555 6 -11.126545227672914 
		14 -1.708673036061555;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.7082804953288209 6 -2.1144942238017537 
		14 2.7082804953288209;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1534";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1535";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.080064458283051 6 27.080064458283051 
		14 27.080064458283051;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1536";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -177.04830761929054 6 -177.04830761929054 
		14 -177.04830761929054;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1537";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.722848255843903 6 27.722848255843903 
		14 27.722848255843903;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1538";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 21.576484776388227 6 21.576484776388227 
		14 21.576484776388227;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1539";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1540";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1541";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.911632519594587 6 27.911632519594587 
		14 27.911632519594587;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
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
connectAttr "lsa_get_into_car_close_door_driverSource.st" "clipLibrary1.st[0]"
		;
connectAttr "lsa_get_into_car_close_door_driverSource.du" "clipLibrary1.du[0]"
		;
connectAttr "animCurveTL493.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL494.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "lsa_Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr"
		;
connectAttr "animCurveTU97.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU98.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU99.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU100.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU101.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU102.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU103.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU104.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1424.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1425.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1426.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL498.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL499.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL500.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL501.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL502.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL503.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1427.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1428.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1429.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL504.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL505.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL506.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1430.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1431.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1432.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1433.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1434.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1435.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1436.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1437.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1438.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA1439.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA1440.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA1441.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA1442.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA1443.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA1444.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL507.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL508.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL509.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL510.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL511.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL512.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL513.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL514.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL515.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1445.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1446.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1447.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1448.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1449.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1450.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1451.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1452.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1453.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1454.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1455.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1456.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1457.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1458.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1459.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1460.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1461.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1462.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1463.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1464.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1465.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1466.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1467.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA1468.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA1469.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA1470.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1471.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1472.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1473.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL516.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL517.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL518.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA1474.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1475.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1476.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL519.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL520.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL521.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1477.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1478.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1479.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL522.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL523.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL524.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1480.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1481.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1482.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL525.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL526.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL527.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1483.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1484.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1485.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL528.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL529.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL530.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL531.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL532.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL533.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1486.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1487.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1488.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1489.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1490.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1491.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1492.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1493.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1494.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1495.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1496.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1497.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1498.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1499.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1500.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1501.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1502.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1503.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1504.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1505.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1506.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1507.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1508.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1509.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1510.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1511.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1512.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1513.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1514.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1515.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1516.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1517.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1518.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1519.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1520.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1521.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1522.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1523.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1524.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1525.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1526.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1527.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1528.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1529.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1530.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1531.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1532.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1533.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1534.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1535.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1536.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1537.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1538.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1539.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1540.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1541.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of lsa_get_into_car_close_door_driver.ma
