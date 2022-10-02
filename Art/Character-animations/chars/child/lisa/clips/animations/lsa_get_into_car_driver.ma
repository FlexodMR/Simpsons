//Maya ASCII 4.0 scene
//Name: lsa_get_into_car_driver.ma
//Last modified: Mon, Jan 13, 2003 11:49:50 AM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_get_into_car_driverSource";
	setAttr ".ihi" 0;
	setAttr ".du" 18;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL493";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL494";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0.033135114381557439 1 0.026450653658010165 
		2 0.014313436465705733 3 -0.0056621056438143367 4 -0.02917816524503189 5 
		-0.053411403917948366 6 -0.078846158110177811 7 -0.10256304759539556 8 -0.12164269214727692 
		9 -0.12503372520137673 10 -0.11771743779042813 11 -0.12082343608387412 12 
		-0.15548132625115763 13 -0.24606854385280333 14 -0.38022676136320721 15 -0.52398194032261869 
		16 -0.69827200602961537 17 -0.88215902084503417 18 -0.97885515190251315 19 
		-0.97352378004140083 20 -0.92806997979474215 21 -0.86081845883672237 22 -0.7900939248415263 
		23 -0.73422108548333964 24 -0.71152464843634733 25 -0.71935659740770219 26 
		-0.74076392440479755 27 -0.77261384955217982 28 -0.811773592974395 29 -0.85511037479598972 
		30 -0.8994914151415101 31 -0.94178393413550243 32 -0.97885515190251315;
createNode animCurveTL -n "lsa_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -0.24866992479209982 1 -0.21641828526363355 
		2 -0.16685707340776298 3 -0.085132384766389957 4 -0.0027905105924182117 5 
		0.063615029006607149 6 0.12926660470330756 7 0.18192933012152285 8 0.20936831888509358 
		9 0.23073984294454819 10 0.26831384790252449 11 0.31452594221440311 12 0.36181173433556452 
		13 0.41885262692590824 14 0.48228491895898318 15 0.52647656336064486 16 0.53463170303005803 
		17 0.52354619339485464 18 0.51797555617359181 19 0.52600785328448862 20 0.5377040267422849 
		21 0.55077891841031812 22 0.56294737015192442 23 0.57192422383044106 24 0.57542432130920507 
		25 0.57374125190779468 26 0.56914086224423022 27 0.56229638012951111 28 0.55388103337463734 
		29 0.54456804979060869 30 0.53503065718842513 31 0.52594208337908621 32 0.51797555617359181;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 5.8284402688137176 1 2.4077119372936449 
		2 -6.1296329831764549 3 -16.176617714528081 4 -21.932677743389643 5 -17.174415772636777 
		6 -8.7478437692214612 7 -0.50057268411878619 8 3.7197865316961756 9 4.2674615423752957 
		10 4.2558871170071715 11 3.9762623989835468 12 3.7197865316961756 13 3.5235586807235535 
		14 3.1959218887970611 15 2.684941115037764 16 2.3655210785576113 17 1.8627570909370748 
		18 0 19 -3.7959358717952645 20 -8.7610300935250773 21 -14.066122654667661 
		22 -18.882053544701236 23 -22.379662753104018 24 -23.729790269354226 25 -23.034581504340757 
		26 -21.134344233331667 27 -18.307161992373928 28 -14.831118317514537 29 -10.984296744800462 
		30 -7.0447808102786977 31 -3.2906540499962196 32 0;
createNode animCurveTU -n "animCurveTU97";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU98";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU99";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU100";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU101";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU102";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU103";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 1;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU104";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 1;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1424";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1425";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1426";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL498";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL499";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL500";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL501";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.21594587158542247 2 -0.21594587158542247 
		4 -0.13963627310524832 8 -0.78871766039456459 12 -0.78871766039456459 15 
		-0.78871766039456459 18 -2.4790535543793637 24 -2.4790535543793637 32 -2.4790535543793637;
	setAttr -s 9 ".kit[3:8]"  3 9 9 9 9 9;
	setAttr -s 9 ".kot[3:8]"  3 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL502";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.1380615615975922 2 0.13777142593280561 
		4 0.28595442201117538 8 0.78001930404657405 12 0.78001930404657405 15 0.78001930404657405 
		18 0.9833319268331725 24 0.9833319268331725 32 0.9833319268331725;
	setAttr -s 9 ".kit[3:8]"  3 9 9 9 9 9;
	setAttr -s 9 ".kot[3:8]"  3 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL503";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.00078430246903575811 2 0.00078430246903575811 
		4 0.14969380950094124 8 1.2889513117444105 12 1.5793782648492296 15 1.5793782648492296 
		18 2.4327597250722541 24 2.4327597250722541 32 2.4327597250722541;
	setAttr -s 9 ".kit[3:8]"  3 9 9 9 9 9;
	setAttr -s 9 ".kot[3:8]"  3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 44.388556084713827 8 
		-17.613616873884094 12 -17.613616873884094 15 -17.613616873884094 18 -27.647037481197394 
		24 -27.647037481197394 32 -27.647037481197394;
	setAttr -s 9 ".kit[3:8]"  3 9 9 9 9 9;
	setAttr -s 9 ".kot[3:8]"  3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 -8.3467315155771242 8 
		-40.787271126349502 12 -40.787271126349502 15 -40.787271126349502 18 -1.6471102606573029 
		24 -1.6471102606573029 32 -1.6471102606573029;
	setAttr -s 9 ".kit[3:8]"  3 9 9 9 9 9;
	setAttr -s 9 ".kot[3:8]"  3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 7.7471581766269448 8 
		-7.3958374073208715 12 -7.3958374073208715 15 -7.3958374073208715 18 -7.792214191643251 
		24 -7.792214191643251 32 -7.792214191643251;
	setAttr -s 9 ".kit[3:8]"  3 9 9 9 9 9;
	setAttr -s 9 ".kot[3:8]"  3 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL504";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.26454016861507795 2 0.2173751638612961 
		4 -0.014387102308690393 8 -0.019043121068561687 12 -0.028822034365029829 
		15 -0.82409193837269812 18 -2.0407430139147178 24 -2.0407430139147178 32 
		-2.0407430139147178;
	setAttr -s 9 ".kit[2:8]"  3 3 3 9 9 9 9;
	setAttr -s 9 ".kot[2:8]"  3 3 3 9 9 9 9;
createNode animCurveTL -n "animCurveTL505";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.13806192026723146 2 0.14108570071487245 
		4 0.14826816906663071 8 0.17199391129371869 12 0.71918268285638098 15 0.89960345004200148 
		18 0.99995529262164395 24 0.99995529262164395 32 0.99995529262164395;
	setAttr -s 9 ".kit[0:8]"  3 3 3 3 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 3 3 3 9 9 9 
		9 9;
createNode animCurveTL -n "animCurveTL506";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.064904406754016042 2 -0.064904406754016042 
		4 0.82321866375520403 8 0.91265126660440776 12 1.3265112247752731 15 2.0187165276500982 
		18 2.4400670660903248 24 2.4400670660903248 32 2.4400670660903248;
	setAttr -s 9 ".kit[1:8]"  1 3 3 9 9 9 9 
		9;
	setAttr -s 9 ".kot[1:8]"  1 3 3 9 9 9 9 
		9;
	setAttr -s 9 ".kix[1:8]"  0.41586130857467651 1 1 0.002109575318172574 
		0.0017960452241823077 0.0071197818033397198 1 1;
	setAttr -s 9 ".kiy[1:8]"  0.90942800045013428 0 0 0.99999779462814331 
		0.99999839067459106 0.99997466802597046 0 0;
	setAttr -s 9 ".kox[1:8]"  0.41586148738861084 1 1 0.002109575318172574 
		0.0017960452241823077 0.0071197818033397198 1 1;
	setAttr -s 9 ".koy[1:8]"  0.90942800045013428 0 0 0.99999779462814331 
		0.99999839067459106 0.99997466802597046 0 0;
createNode animCurveTA -n "animCurveTA1430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 15.829425701546842 4 -10.811641225563552 
		8 22.593134942179454 12 63.16108123139599 15 3.3423255055965062 18 -28.33147073208438 
		24 -28.33147073208438 32 -28.33147073208438;
createNode animCurveTA -n "animCurveTA1431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 13.717778871715204 2 25.948901905116429 
		4 -9.0830972443010491 8 -5.4726526619269746 12 -35.595363845044297 15 42.70484598509212 
		18 10.113681911874204 24 10.113681911874204 32 10.113681911874204;
	setAttr -s 9 ".kit[1:8]"  1 3 3 9 9 9 9 
		9;
	setAttr -s 9 ".kot[1:8]"  1 3 3 9 9 9 9 
		9;
	setAttr -s 9 ".kix[1:8]"  0.99546581506729126 1 1 0.2673909068107605 
		0.24317258596420288 0.46650052070617676 1 1;
	setAttr -s 9 ".kiy[1:8]"  -0.095119811594486237 0 0 0.96358811855316162 
		0.96998304128646851 -0.88452094793319702 0 0;
	setAttr -s 9 ".kox[1:8]"  0.99546587467193604 1 1 0.2673909068107605 
		0.24317258596420288 0.46650052070617676 1 1;
	setAttr -s 9 ".koy[1:8]"  -0.095119617879390717 0 0 0.96358811855316162 
		0.96998304128646851 -0.88452094793319702 0 0;
createNode animCurveTA -n "animCurveTA1432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 -2.954679702671601 8 
		2.3144369118160042 12 1.8224410758254592 15 -9.2988248217141081 18 -3.6896128937020114 
		24 -3.6896128937020114 32 -3.6896128937020114;
	setAttr -s 9 ".kit[1:8]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 9 ".kot[1:8]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 9 ".kix[1:8]"  0.99998509883880615 0.98020702600479126 
		0.95443600416183472 0.75494009256362915 0.90116506814956665 0.95066154003143311 
		1 1;
	setAttr -s 9 ".kiy[1:8]"  -0.0054611046798527241 0.19797508418560028 
		0.29841569066047668 -0.65579378604888916 -0.43347612023353577 0.31023004651069641 
		0 0;
	setAttr -s 9 ".kox[1:8]"  0.99998509883880615 0.98020702600479126 
		0.95443600416183472 0.75494009256362915 0.90116506814956665 0.95066154003143311 
		1 1;
	setAttr -s 9 ".koy[1:8]"  -0.0054611093364655972 0.19797508418560028 
		0.29841569066047668 -0.65579378604888916 -0.43347612023353577 0.31023004651069641 
		0 0;
createNode animCurveTA -n "animCurveTA1433";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1434";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1435";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1436";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1437";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1438";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1439";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1440";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1441";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1442";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1443";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1444";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL507";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 0 8 0 12 0 15 0 18 0 
		24 0 32 0;
createNode animCurveTL -n "animCurveTL508";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 0 8 0 12 0 15 0 18 0 
		24 0 32 0;
createNode animCurveTL -n "animCurveTL509";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 2 1 4 1 8 1 12 1 15 1 18 1 
		24 1 32 1;
createNode animCurveTL -n "animCurveTL510";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 0 8 0 12 0 15 0 18 0 
		24 0 32 0;
createNode animCurveTL -n "animCurveTL511";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 4 0 8 0 12 0 15 0 18 0 
		24 0 32 0;
createNode animCurveTL -n "animCurveTL512";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 2 1 4 1 8 1 12 1 15 1 18 1 
		24 1 32 1;
createNode animCurveTL -n "animCurveTL513";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.076472881617957691 2 0.033034131700396582 
		4 -0.067340596773508177 8 -0.28074045826882532 12 -0.35883700050921535 15 
		-1.2093034727697225 18 -2.2591101781206659 24 -1.6421352762378554 32 -2.2591101781206659;
createNode animCurveTL -n "animCurveTL514";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.96147551361829786 2 0.9224657007074174 
		4 0.92948217727043758 8 0.96472071093595801 12 1.4919179837135488 15 1.5410418720851637 
		18 1.2803698945022608 24 1.4356475945789096 32 1.2803698945022608;
	setAttr -s 9 ".kit[3:8]"  1 9 9 9 9 9;
	setAttr -s 9 ".kot[3:8]"  1 9 9 9 9 9;
	setAttr -s 9 ".kix[3:8]"  0.019300941377878189 0.0040486352518200874 
		0.0094536924734711647 0.02845301665365696 1 0.017170997336506844;
	setAttr -s 9 ".kiy[3:8]"  0.9998137354850769 0.999991774559021 
		-0.99995529651641846 -0.99959510564804077 0 -0.99985253810882568;
	setAttr -s 9 ".kox[3:8]"  0.019300926476716995 0.0040486352518200874 
		0.0094536924734711647 0.02845301665365696 1 0.017170997336506844;
	setAttr -s 9 ".koy[3:8]"  0.9998137354850769 0.999991774559021 
		-0.99995529651641846 -0.99959510564804077 0 -0.99985253810882568;
createNode animCurveTL -n "animCurveTL515";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0.18881674669046031 4 0.56746770564493954 
		8 1.0571113164685229 12 1.4089370904477301 15 1.7889687943275561 18 1.7693492297543687 
		24 1.9019358436022702 32 1.7693492297543687;
	setAttr -s 9 ".kit[3:8]"  1 9 9 9 9 9;
	setAttr -s 9 ".kot[3:8]"  1 9 9 9 9 9;
	setAttr -s 9 ".kix[3:8]"  0.013435677625238895 0.0031882184557616711 
		0.0055491169914603233 0.026547057554125786 1 0.020108569413423538;
	setAttr -s 9 ".kiy[3:8]"  0.99990975856781006 0.99999493360519409 
		0.99998462200164795 0.99964755773544312 0 -0.99979782104492188;
	setAttr -s 9 ".kox[3:8]"  0.013435684144496918 0.0031882184557616711 
		0.0055491169914603233 0.026547057554125786 1 0.020108569413423538;
	setAttr -s 9 ".koy[3:8]"  0.99990975856781006 0.99999493360519409 
		0.99998462200164795 0.99964755773544312 0 -0.99979782104492188;
createNode animCurveTA -n "animCurveTA1445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.62843630316474508 2 -4.0647210446877668 
		4 -3.0762169050940038 8 -6.5591355069755881 12 -6.5591355069755881 15 -10.96697467846017 
		18 -19.504876398732126 24 19.904949984433497 32 -19.504876398732126;
	setAttr -s 9 ".kit[3:8]"  1 9 9 9 9 9;
	setAttr -s 9 ".kot[3:8]"  1 9 9 9 9 9;
	setAttr -s 9 ".kix[3:8]"  0.9971427321434021 0.94971179962158203 
		0.66280597448348999 0.48645725846290588 1 0.36147665977478027;
	setAttr -s 9 ".kiy[3:8]"  -0.075540885329246521 -0.31312531232833862 
		-0.7487911581993103 0.87370437383651733 0 -0.93238115310668945;
	setAttr -s 9 ".kox[3:8]"  0.9971427321434021 0.94971179962158203 
		0.66280597448348999 0.48645725846290588 1 0.36147665977478027;
	setAttr -s 9 ".koy[3:8]"  -0.075540848076343536 -0.31312531232833862 
		-0.7487911581993103 0.87370437383651733 0 -0.93238115310668945;
createNode animCurveTA -n "animCurveTA1446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 5.8284402688137167 2 -6.129632983176454 
		4 -21.932677743389643 8 3.7197865316961756 12 3.7197865316961756 15 2.6849411150377636 
		18 0 24 -23.729790269354229 32 0;
	setAttr -s 9 ".kit[3:8]"  1 9 9 9 9 9;
	setAttr -s 9 ".kot[3:8]"  1 9 9 9 9 9;
	setAttr -s 9 ".kix[3:8]"  0.90011471509933472 0.997017502784729 
		0.95114231109619141 0.54541563987731934 1 0.5413593053817749;
	setAttr -s 9 ".kiy[3:8]"  0.43565288186073303 -0.07717539370059967 
		-0.30875280499458313 -0.83816570043563843 0 0.84079134464263916;
	setAttr -s 9 ".kox[3:8]"  0.90011477470397949 0.997017502784729 
		0.95114231109619141 0.54541563987731934 1 0.5413593053817749;
	setAttr -s 9 ".koy[3:8]"  0.43565282225608826 -0.07717539370059967 
		-0.30875280499458313 -0.83816570043563843 0 0.84079134464263916;
createNode animCurveTA -n "animCurveTA1447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.295636019309746 2 1.7490863204697844 
		4 1.3015925165258879 8 5.0537228151421463 12 5.0537228151421463 15 3.5942040383448104 
		18 0 24 -30.653736597065432 32 0;
createNode animCurveTA -n "animCurveTA1448";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1449";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1450";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1451";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1452";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1453";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1454";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1455";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1456";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1457";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1458";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1459";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1460";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1461";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1462";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1463";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1464";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1465";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1466";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1467";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  4 0 8 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  4 0 8 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  4 -24.501661700242042 8 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[1:2]"  0.29765972495079041 1;
	setAttr -s 3 ".kiy[1:2]"  0.95467203855514526 0;
createNode animCurveTA -n "animCurveTA1471";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1472";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1473";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL516";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 -0.5198069948790518;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL517";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 -0.72394202659893114;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL518";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0.36439499068905612;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1474";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 7.7976222737965299;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1475";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 30.409274105849079;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1476";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 64.859940280210878;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL519";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0.43524234076486068;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL520";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 -0.82665738350180629;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL521";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0.27773886459742925;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1477";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1478";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 -28.652637602052774;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1479";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 -64.676908227303443;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.75854111686822778 2 -0.71855072776607709 
		4 -1.2216982766104969 8 -1.6615405618010601 12 -1.6615405618010601 15 -2.718818699284034 
		18 -4.206404471075289 24 -3.0251282500831582 32 -4.206404471075289;
createNode animCurveTL -n "animCurveTL523";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.1932952672205326 2 1.5241480002158414 
		4 2.1458374442121051 8 2.1873530019833729 12 2.1873530019833729 15 1.9413710135050546 
		18 1.7781418955835293 24 2.4322073245137408 32 1.7781418955835293;
createNode animCurveTL -n "animCurveTL524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.14314299916678522 2 0.66996185967789745 
		4 0.9774450882183453 8 1.4120938891850821 12 1.7877164599350404 15 2.6274946301868729 
		18 2.7041072647042435 24 2.4602491551945591 32 2.7041072647042435;
createNode animCurveTA -n "animCurveTA1480";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -5.7993291745893352 2 55.598837649680043 
		4 0.53074525458670618 8 -9.3708019553636923 12 -9.3708019553636923 15 -17.985238978769711 
		18 -26.203413720634725 24 -27.818924152705119 32 -26.203413720634725;
createNode animCurveTA -n "animCurveTA1481";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.228264010471275 2 30.973734338623142 
		4 30.368244126557347 8 29.306594429857483 12 29.306594429857483 15 23.104847167583884 
		18 14.791961579779638 24 -7.8589637569602626 32 14.791961579779638;
createNode animCurveTA -n "animCurveTA1482";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 60.456694896838378 2 82.208920420259716 
		4 -43.401113370080203 8 -65.912336754634623 12 -65.912336754634623 15 -5.077971438885676 
		18 45.895436695401962 24 -6.0238552216777173 32 45.895436695401962;
createNode animCurveTL -n "animCurveTL525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.97384023505055983 2 0.91837917750249576 
		4 0.79254435424317993 8 0.50802692925305393 12 0.09225560444291149 15 -1.0697637662078572 
		18 -2.4318854543692052 24 -0.85865689186961502 27 -1.0663777460455246 32 
		-2.4318854543692052;
createNode animCurveTL -n "animCurveTL526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.2525965505547216 2 1.2376327523903852 
		4 1.3355470437254813 8 1.5019588733907707 12 2.7988454248546248 15 2.2666828628028433 
		18 1.7241929732026566 24 2.5072247162763563 27 2.5434888612919893 32 1.7241929732026566;
	setAttr -s 10 ".kit[3:9]"  1 9 9 9 9 1 9;
	setAttr -s 10 ".kot[3:9]"  1 9 9 9 9 1 9;
	setAttr -s 10 ".kix[3:9]"  0.0042146164923906326 0.0030511955264955759 
		0.0018610635306686163 0.012470872141420841 0.0036616562865674496 0.023984095081686974 
		0.0020342622883617878;
	setAttr -s 10 ".kiy[3:9]"  0.99999111890792847 0.99999535083770752 
		-0.99999827146530151 0.99992221593856812 0.99999332427978516 -0.99971240758895874 
		-0.99999791383743286;
	setAttr -s 10 ".kox[3:9]"  0.0042146611958742142 0.0030511955264955759 
		0.0018610635306686163 0.012470872141420841 0.0036616562865674496 0.023984048515558243 
		0.0020342622883617878;
	setAttr -s 10 ".koy[3:9]"  0.99999111890792847 0.99999535083770752 
		-0.99999827146530151 0.99992221593856812 0.99999332427978516 -0.99971240758895874 
		-0.99999791383743286;
createNode animCurveTL -n "animCurveTL527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.097994651149805143 2 0.18811956002607613 
		4 0.97154473824728926 8 1.7084459967887549 12 2.9184961808501275 15 3.1165646536977438 
		18 2.6858977529588222 24 3.6257457706658354 27 3.4262633344380617 32 2.6858977529588222;
	setAttr -s 10 ".kit[8:9]"  1 9;
	setAttr -s 10 ".kot[8:9]"  1 9;
	setAttr -s 10 ".kix[8:9]"  0.0069580026902258396 0.0022511335555464029;
	setAttr -s 10 ".kiy[8:9]"  -0.99997574090957642 -0.99999743700027466;
	setAttr -s 10 ".kox[8:9]"  0.0069580008275806904 0.0022511335555464029;
	setAttr -s 10 ".koy[8:9]"  -0.99997574090957642 -0.99999743700027466;
createNode animCurveTA -n "animCurveTA1483";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -12.222987645962959 2 -10.826424546146567 
		4 -10.345092866137652 8 -29.971309712113101 12 -99.357306583188404 15 -71.444410515520019 
		18 -33.734888782993899 24 -19.345874397196617 27 -21.547393754778248 32 -33.734888782993899;
createNode animCurveTA -n "animCurveTA1484";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 19.681044208515029 2 -28.562123998386923 
		4 -16.457368745399648 8 36.465641622030631 12 -47.240579136546721 15 -34.915716994255128 
		18 -14.870586397896899 24 -47.068687946319812 27 -42.142378080219508 32 -14.870586397896899;
createNode animCurveTA -n "animCurveTA1485";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -65.119655550709027 2 -52.637498007569562 
		4 -48.871451458157736 8 -20.091500423830848 12 41.619546305829736 15 6.7023665856785861 
		18 -30.592169336881899 24 7.3649226411748101 27 1.55748705668628 32 -30.592169336881899;
createNode animCurveTL -n "animCurveTL528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.10167917362943303 2 0.31054502397108613 
		4 0.31054502397108613 8 0.31054502397108613 12 0.31054502397108613 15 0.31054502397108613 
		18 0.31054502397108613 24 0.31054502397108613 32 0.31054502397108613;
createNode animCurveTL -n "animCurveTL529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.40762644910266188 2 -0.55640530640609931 
		4 -0.55640530640609931 8 -0.55640530640609931 12 -0.55640530640609931 15 
		-0.55640530640609931 18 -0.55640530640609931 24 -0.55640530640609931 32 -0.55640530640609931;
createNode animCurveTL -n "animCurveTL530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.93129112588482243 2 -0.57914122395678103 
		4 -0.57914122395678103 8 -0.57914122395678103 12 -0.57914122395678103 15 
		-0.57914122395678103 18 -0.57914122395678103 24 -0.57914122395678103 32 -0.57914122395678103;
createNode animCurveTL -n "animCurveTL531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 -0.17523930523423681 4 -0.063331173333856433 
		8 -0.063331173333856433 12 -0.063331173333856433 15 -0.063331173333856433 
		18 -0.063331173333856433 24 -0.063331173333856433 32 -0.063331173333856433;
createNode animCurveTL -n "animCurveTL532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 -0.00072435787012014696 4 
		-0.69960805773293522 8 -0.69960805773293522 12 -0.69960805773293522 15 -0.69960805773293522 
		18 -0.69960805773293522 24 -0.69960805773293522 32 -0.69960805773293522;
createNode animCurveTL -n "animCurveTL533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1 2 -0.80201435285893019 4 -0.66762598980258558 
		8 -0.66762598980258558 12 -0.66762598980258558 15 -0.66762598980258558 18 
		-0.66762598980258558 24 -0.66762598980258558 32 -0.66762598980258558;
createNode animCurveTA -n "animCurveTA1486";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.061808866237340665 2 -0.061808866237337522 
		4 -0.061808866237337522 8 -0.061808866237337522 12 -0.061808866237337522 
		18 -0.061808866237337522 24 -0.061808866237337522 32 -0.061808866237337522;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1487";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -59.058178941076754 2 -59.058178941076754 
		4 -59.058178941076754 8 -59.058178941076754 12 -59.058178941076754 18 -59.058178941076754 
		24 -59.058178941076754 32 -59.058178941076754;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1488";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 16.57914742975785 2 16.579147429757843 
		4 16.579147429757843 8 16.579147429757843 12 16.579147429757843 18 16.579147429757843 
		24 16.579147429757843 32 16.579147429757843;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1489";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 12.253734489678925 2 12.253734489678925 
		4 12.253734489678925 8 12.253734489678925 12 12.253734489678925 18 12.253734489678925 
		24 12.253734489678925 32 12.253734489678925;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1490";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -65.746751280844975 2 -65.746751280844961 
		4 -65.746751280844961 8 -65.746751280844961 12 -65.746751280844961 18 -65.746751280844961 
		24 -65.746751280844961 32 -65.746751280844961;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1491";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 4 0 8 0 12 0 18 0 24 0 
		32 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1492";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 15.711328223519061 2 15.711328223519057 
		4 15.711328223519057 8 15.711328223519057 12 15.711328223519057 18 15.711328223519057 
		24 15.711328223519057 32 15.711328223519057;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1493";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.5572674112203657 2 8.5572674112203622 
		4 8.5572674112203622 8 8.5572674112203622 12 8.5572674112203622 18 8.5572674112203622 
		24 8.5572674112203622 32 8.5572674112203622;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1494";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 4 0 8 0 12 0 18 0 24 0 
		32 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1495";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 4 0 8 0 12 0 18 0 24 0 
		32 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1496";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 4 0 8 0 12 0 18 0 24 0 
		32 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1497";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 4 0 8 0 12 0 18 0 24 0 
		32 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1498";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 4 0 8 0 12 0 18 0 24 0 
		32 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1499";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 4 0 8 0 12 0 18 0 24 0 
		32 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1500";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 198.501726992805 2 19.002497950056888 
		4 19.002497950056888 8 19.002497950056888 12 19.002497950056888 18 19.002497950056888 
		24 19.002497950056888 32 19.002497950056888;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1501";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 23.263402056531085 2 23.263402056531085 
		4 23.263402056531085 8 23.263402056531085 12 23.263402056531085 18 23.263402056531085 
		24 23.263402056531085 32 23.263402056531085;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1502";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 20.166277752815617 2 20.166277752815617 
		4 20.166277752815617 8 20.166277752815617 12 20.166277752815617 18 20.166277752815617 
		24 20.166277752815617 32 20.166277752815617;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1503";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 4 0 8 0 12 0 18 0 24 0 
		32 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1504";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 4 0 8 0 12 0 18 0 24 0 
		32 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1505";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 33.429092416277157 2 33.429092416277157 
		4 33.429092416277157 8 33.429092416277157 12 33.429092416277157 18 33.429092416277157 
		24 33.429092416277157 32 33.429092416277157;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1506";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1507";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1508";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1509";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1510";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1511";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 13.994403295754109;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1512";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1513";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1514";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  32 13.994403295754109;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1515";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 4 0 8 0 12 0 18 0 24 0 
		32 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1516";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 4 0 8 0 12 0 18 0 24 0 
		32 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1517";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 17.254116939558369 2 17.254116939558369 
		4 17.254116939558369 8 17.254116939558369 12 17.254116939558369 18 17.254116939558369 
		24 17.254116939558369 32 17.254116939558369;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1518";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 4 0 8 0 12 0 18 0 24 0 
		32 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1519";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 4 0 8 0 12 0 18 0 24 0 
		32 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1520";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 4 0 8 0 12 0 18 0 24 0 
		32 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1521";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.65073001024951671 2 -7.8430056866173823 
		4 -7.8430056866173823 8 -18.820843871529618 12 -18.820843871529618 18 1.3731006602189262 
		24 5.9660149388432382 32 1.3731006602189262;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 4.2368721935960938 2 2.4212113907903019 
		4 2.4212113907903019 8 8.442588645585376 12 8.442588645585376 18 -0.38374158911587303 
		24 4.5116636179203082 32 -0.38374158911587303;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1523";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.6995264082587447 2 14.868855041301886 
		4 14.868855041301886 8 16.699953369662587 12 16.699953369662587 18 0.96901743689791309 
		24 2.3811787268879385 32 0.96901743689791309;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 -7.1097278539792699 4 -7.1097278539792699 
		8 -7.1097278539792699 12 -7.1097278539792699 18 2.2144674450583466 24 -7.1097278539792699 
		32 2.2144674450583466;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 4 0 8 0 12 0 18 5.36423803921525 
		24 0 32 5.36423803921525;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 6.9655753505297673 4 6.9655753505297673 
		8 6.9655753505297673 12 6.9655753505297673 18 -3.2584064202075531 24 6.9655753505297673 
		32 -3.2584064202075531;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 4.0198472869727979 2 8.2806877228551272 
		4 5.2494090226201955 8 5.2378895149391758 12 -3.7903101035041509 18 -4.9690701715193724 
		21 -46.227209466300053 24 -38.999395730978343 32 -4.9690701715193724;
	setAttr -s 9 ".kit[1:8]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 9 ".kot[1:8]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 9 ".kix[1:8]"  0.91116088628768921 0.96650689840316772 
		0.86064779758453369 0.88194912672042847 0.37541595101356506 0.31912657618522644 
		0.45375695824623108 0.40958940982818604;
	setAttr -s 9 ".kiy[1:8]"  0.4120507538318634 -0.25664067268371582 
		-0.50920075178146362 -0.47134461998939514 -0.92685645818710327 -0.94771212339401245 
		0.89112550020217896 0.9122699499130249;
	setAttr -s 9 ".kox[1:8]"  0.91116094589233398 0.96650689840316772 
		0.86064779758453369 0.88194912672042847 0.37541595101356506 0.31912657618522644 
		0.45375695824623108 0;
	setAttr -s 9 ".koy[1:8]"  0.41205063462257385 -0.25664067268371582 
		-0.50920075178146362 -0.47134461998939514 -0.92685645818710327 -0.94771212339401245 
		0.89112550020217896 0;
createNode animCurveTA -n "animCurveTA1528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 9.1335573833666519 2 8.5086629712104536 
		4 7.4288331807529291 8 25.174728286073833 12 7.1873577666484181 18 2.9904681746768538 
		21 -43.464870903715401 24 -68.701263884681893 32 2.9904681746768538;
	setAttr -s 9 ".kit[1:8]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 9 ".kot[1:8]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 9 ".kix[1:8]"  0.99601650238037109 0.56657028198242188 
		0.99987512826919556 0.65243446826934814 0.32134926319122314 0.15783576667308807 
		0.41205295920372009 0.20843805372714996;
	setAttr -s 9 ".kiy[1:8]"  0.089168936014175415 0.82401341199874878 
		-0.015802554786205292 -0.75784516334533691 -0.94696074724197388 -0.98746538162231445 
		0.91115987300872803 0.978035569190979;
	setAttr -s 9 ".kox[1:8]"  0.99601650238037109 0.56657028198242188 
		0.99987512826919556 0.65243446826934814 0.32134926319122314 0.15783576667308807 
		0.41205295920372009 0;
	setAttr -s 9 ".koy[1:8]"  0.089168928563594818 0.82401341199874878 
		-0.015802554786205292 -0.75784516334533691 -0.94696074724197388 -0.98746538162231445 
		0.91115987300872803 0;
createNode animCurveTA -n "animCurveTA1529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -2.2752136084709536 2 -2.3189154341807527 
		4 -11.077093509012803 8 -8.0550223726483026 12 12.477959126589024 18 14.780225156536881 
		21 14.102963811421818 24 -10.15874635942871 32 14.780225156536881;
	setAttr -s 9 ".kit[1:8]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 9 ".kot[1:8]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 9 ".kix[1:8]"  0.7913811206817627 0.89422327280044556 
		0.54418915510177612 0.64155560731887817 0.99556094408035278 0.41752150654792786 
		0.99948078393936157 1;
	setAttr -s 9 ".kiy[1:8]"  -0.61132305860519409 -0.44762113690376282 
		0.83896255493164063 0.76707649230957031 0.094119273126125336 -0.90866702795028687 
		0.032220825552940369 0;
	setAttr -s 9 ".kox[1:8]"  0.79138118028640747 0.89422327280044556 
		0.54418915510177612 0.64155560731887817 0.99556094408035278 0.41752150654792786 
		0.99948078393936157 0;
	setAttr -s 9 ".koy[1:8]"  -0.61132305860519409 -0.44762113690376282 
		0.83896255493164063 0.76707649230957031 0.094119273126125336 -0.90866702795028687 
		0.032220825552940369 0;
createNode animCurveTA -n "animCurveTA1530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.8903601258661935 2 1.8903601258661931 
		4 1.8903601258661931 8 1.8903601258661931 12 1.8903601258661931 18 -2.211833892135727 
		24 3.749937051835468 32 -2.211833892135727;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.5597289571479038 2 -2.5597289571479034 
		4 -2.5597289571479034 8 -2.5597289571479034 12 -2.5597289571479034 18 -1.708673036061555 
		24 -11.126545227672914 32 -1.708673036061555;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.0168110874036049 2 2.016811087403604 
		4 2.016811087403604 8 2.016811087403604 12 2.016811087403604 18 2.7082804953288209 
		24 -2.1144942238017537 32 2.7082804953288209;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 4 0 8 0 12 0 18 0 24 0 
		32 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1534";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 4 0 8 0 12 0 18 0 24 0 
		32 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1535";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 27.080064458283051 2 27.080064458283051 
		4 27.080064458283051 8 27.080064458283051 12 27.080064458283051 18 27.080064458283051 
		24 27.080064458283051 32 27.080064458283051;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1536";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 10.423754966968488 2 -177.04830761929054 
		4 -177.04830761929054 8 -177.04830761929054 12 -177.04830761929054 18 -177.04830761929054 
		24 -177.04830761929054 32 -177.04830761929054;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1537";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 27.7228482558439 2 27.722848255843903 
		4 27.722848255843903 8 27.722848255843903 12 27.722848255843903 18 27.722848255843903 
		24 27.722848255843903 32 27.722848255843903;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1538";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 21.576484776388224 2 21.576484776388227 
		4 21.576484776388227 8 21.576484776388227 12 21.576484776388227 18 21.576484776388227 
		24 21.576484776388227 32 21.576484776388227;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1539";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 4 0 8 0 12 0 18 0 24 0 
		32 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1540";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 4 0 8 0 12 0 18 0 24 0 
		32 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1541";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 27.911632519594587 2 27.911632519594587 
		4 27.911632519594587 8 27.911632519594587 12 27.911632519594587 18 27.911632519594587 
		24 27.911632519594587 32 27.911632519594587;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
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
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -k on ".ra";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -k on ".esr";
	setAttr -k on ".ors";
	setAttr -k on ".gama";
	setAttr ".top" 479;
	setAttr -k on ".left";
	setAttr -k on ".bot";
	setAttr ".rght" 639;
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
connectAttr "lsa_get_into_car_driverSource.st" "clipLibrary1.st[0]";
connectAttr "lsa_get_into_car_driverSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL493.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL494.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "lsa_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
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
// End of lsa_get_into_car_driver.ma
