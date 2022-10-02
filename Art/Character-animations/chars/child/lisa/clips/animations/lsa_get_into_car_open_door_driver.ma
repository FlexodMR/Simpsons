//Maya ASCII 4.0 scene
//Name: lsa_get_into_car_open_door_driver.ma
//Last modified: Fri, Oct 11, 2002 02:56:24 PM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_get_into_car_open_door_driverSource";
	setAttr ".ihi" 0;
	setAttr ".du" 12;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL493";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL494";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 0.033135114381557439 1 0.037136861498893461 
		2 0.041138608616229498 3 0.033135114381557439 4 -0.0028764688000697957 5 
		-0.050893293800276074 6 -0.074912059886084639 7 -0.061437029548968382 8 -0.029966949304941991 
		9 0.0060097555421584513 10 0.033004659688496946 11 0.038740054104590853 12 
		0.033135114381557439 13 0.026450653658010165 14 0.014313436465705733 15 -0.0056621056438143367 
		16 -0.02917816524503189 17 -0.053411403917948366 18 -0.078846158110177811 
		19 -0.10256304759539556 20 -0.12164269214727692 21 -0.12503372520137673 22 
		-0.11771743779042813 23 -0.12082343608387412 24 -0.15548132625115763 25 -0.24606854385280333 
		26 -0.38022676136320721 27 -0.52398194032261869 28 -0.69827200602961537 29 
		-0.88215902084503417 30 -0.97885515190251315 31 -0.97352378004140083 32 -0.92806997979474215 
		33 -0.86081845883672237 34 -0.7900939248415263 35 -0.73422108548333964 36 
		-0.71152464843634733 37 -0.71935659740770219 38 -0.74076392440479755 39 -0.77261384955217982 
		40 -0.811773592974395 41 -0.85511037479598972 42 -0.8994914151415101 43 -0.94178393413550243 
		44 -0.97885515190251315;
createNode animCurveTL -n "lsa_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 0 1 -0.00054826863644227928 2 
		-0.0010965372728845586 3 0 4 0.005746798400932113 5 0.013138402717712839 
		6 0.014803253213289538 7 0.006898071991199942 8 -0.0059876206915404784 9 
		-0.01857618734176775 10 -0.025589990466317887 11 -0.020124475042022017 12 
		0 13 0.03225163952846629 14 0.081812851384336874 15 0.16353754002570989 16 
		0.24587941419968165 17 0.31228495379870702 18 0.37793652949540729 19 0.43059925491362266 
		20 0.45803824367719337 21 0.47940976773664801 22 0.51698377269462437 23 0.56319586700650293 
		24 0.61048165912766428 25 0.66752255171800801 26 0.73095484375108299 27 0.77514648815274456 
		28 0.78330162782215762 29 0.77221611818695435 30 0.76664548096569152 31 0.77467777807658833 
		32 0.78637395153438461 33 0.79944884320241771 34 0.8116172949440239 35 0.82059414862254065 
		36 0.82409424610130455 37 0.82241117669989428 38 0.8178107870363297 39 0.8109663049216107 
		40 0.80255095816673694 41 0.79323797458270828 42 0.78370058198052472 43 0.77461200817118592 
		44 0.76664548096569152;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 5.8284402688137176 1 1.8523997388840645 
		2 -6.9105796367819146 3 -15.712784536999759 4 -24.492590611654776 5 -33.311622871464685 
		6 -37.60704203649366 7 -36.392526415228041 8 -32.330201344609208 9 -26.329898087383981 
		10 -19.301447906299206 11 -5.749930615805483 12 5.8284402688137176 13 2.4077119372936449 
		14 -6.1296329831764549 15 -16.176617714528081 16 -21.932677743389643 17 -17.174415772636777 
		18 -8.7478437692214612 19 -0.50057268411878619 20 3.7197865316961756 21 4.2674615423752957 
		22 4.2558871170071715 23 3.9762623989835468 24 3.7197865316961756 25 3.5235586807235535 
		26 3.1959218887970611 27 2.684941115037764 28 2.3655210785576113 29 1.8627570909370748 
		30 0 31 -3.7959358717952645 32 -8.7610300935250773 33 -14.066122654667661 
		34 -18.882053544701236 35 -22.379662753104018 36 -23.729790269354226 37 -23.034581504340757 
		38 -21.134344233331667 39 -18.307161992373928 40 -14.831118317514537 41 -10.984296744800462 
		42 -7.0447808102786977 43 -3.2906540499962196 44 0;
createNode animCurveTU -n "animCurveTU97";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU98";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU99";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU100";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU101";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU102";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU103";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 44 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU104";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 44 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1424";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1425";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1426";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL498";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL499";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL500";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL501";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.21594587158542247 3 -0.21594587158542247 
		6 -0.21594587158542247 10 -0.21594587158542247 12 -0.21594587158542247 14 
		-0.21594587158542247 16 -0.13963627310524832 20 -0.78871766039456459 24 -0.78871766039456459 
		27 -0.78871766039456459 30 -2.4790535543793637 36 -2.4790535543793637 44 
		-2.4790535543793637;
	setAttr -s 13 ".kit[0:12]"  3 3 9 9 9 9 9 
		3 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 3 9 9 9 9 9 
		3 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL502";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.1380615615975922 3 0.13777142593280561 
		6 0.13777142593280561 10 0.13777142593280561 12 0.1380615615975922 14 0.13777142593280561 
		16 0.28595442201117538 20 0.78001930404657405 24 0.78001930404657405 27 0.78001930404657405 
		30 0.9833319268331725 36 0.9833319268331725 44 0.9833319268331725;
	setAttr -s 13 ".kit[0:12]"  3 3 9 9 9 9 9 
		3 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 3 9 9 9 9 9 
		3 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL503";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.00078430246903575811 3 0.00078430246903575811 
		6 0.00078430246903575811 10 0.00078430246903575811 12 0.00078430246903575811 
		14 0.00078430246903575811 16 0.14969380950094124 20 1.2889513117444105 24 
		1.5793782648492296 27 1.5793782648492296 30 2.4327597250722541 36 2.4327597250722541 
		44 2.4327597250722541;
	setAttr -s 13 ".kit[0:12]"  3 3 9 9 9 9 9 
		3 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 3 9 9 9 9 9 
		3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 14 0 16 44.388556084713827 
		20 -17.613616873884094 24 -17.613616873884094 27 -17.613616873884094 30 -27.647037481197394 
		36 -27.647037481197394 44 -27.647037481197394;
	setAttr -s 13 ".kit[0:12]"  3 3 9 9 9 9 9 
		3 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 3 9 9 9 9 9 
		3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 14 0 16 -8.3467315155771242 
		20 -40.787271126349502 24 -40.787271126349502 27 -40.787271126349502 30 -1.6471102606573029 
		36 -1.6471102606573029 44 -1.6471102606573029;
	setAttr -s 13 ".kit[0:12]"  3 3 9 9 9 9 9 
		3 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 3 9 9 9 9 9 
		3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 14 0 16 7.7471581766269448 
		20 -7.3958374073208715 24 -7.3958374073208715 27 -7.3958374073208715 30 -7.792214191643251 
		36 -7.792214191643251 44 -7.792214191643251;
	setAttr -s 13 ".kit[0:12]"  3 3 9 9 9 9 9 
		3 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 3 9 9 9 9 9 
		3 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL504";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.26454016861507795 3 0.26454016861507795 
		6 0.17390215284266961 12 0.26454016861507795 14 0.2173751638612961 16 -0.014387102308690393 
		20 -0.019043121068561687 24 -0.028822034365029829 27 -0.82409193837269812 
		30 -2.0407430139147178 36 -2.0407430139147178 44 -2.0407430139147178;
	setAttr -s 12 ".kit[0:11]"  3 3 9 9 9 3 3 
		3 9 9 9 9;
	setAttr -s 12 ".kot[0:11]"  3 3 9 9 9 3 3 
		3 9 9 9 9;
createNode animCurveTL -n "animCurveTL505";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.13806192026723146 3 0.13855539481534615 
		6 0.17679277769660132 12 0.13806192026723146 14 0.14108570071487245 16 0.14826816906663071 
		20 0.17199391129371869 24 0.71918268285638098 27 0.89960345004200148 30 0.99995529262164395 
		36 0.99995529262164395 44 0.99995529262164395;
	setAttr -s 12 ".kit[2:11]"  9 3 3 3 3 9 9 
		9 9 9;
	setAttr -s 12 ".kot[2:11]"  9 3 3 3 3 9 9 
		9 9 9;
createNode animCurveTL -n "animCurveTL506";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.064904406754016042 3 -0.064904406754016042 
		6 -0.052792361204449745 12 -0.064904406754016042 14 -0.064904406754016042 
		16 0.82321866375520403 20 0.91265126660440776 24 1.3265112247752731 27 2.0187165276500982 
		30 2.4400670660903248 36 2.4400670660903248 44 2.4400670660903248;
	setAttr -s 12 ".kit[0:11]"  3 3 9 9 1 3 3 
		9 9 9 9 9;
	setAttr -s 12 ".kot[0:11]"  3 3 9 9 1 3 3 
		9 9 9 9 9;
	setAttr -s 12 ".kix[4:11]"  0.41586130857467651 1 1 0.002109575318172574 
		0.0017960452241823077 0.0071197818033397198 1 1;
	setAttr -s 12 ".kiy[4:11]"  0.90942800045013428 0 0 0.99999779462814331 
		0.99999839067459106 0.99997466802597046 0 0;
	setAttr -s 12 ".kox[4:11]"  0.41586148738861084 1 1 0.002109575318172574 
		0.0017960452241823077 0.0071197818033397198 1 1;
	setAttr -s 12 ".koy[4:11]"  0.90942800045013428 0 0 0.99999779462814331 
		0.99999839067459106 0.99997466802597046 0 0;
createNode animCurveTA -n "animCurveTA1430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 40.947029585382076 12 
		0 14 15.829425701546842 16 -10.811641225563552 20 22.593134942179454 24 63.16108123139599 
		27 3.3423255055965062 30 -28.33147073208438 36 -28.33147073208438 44 -28.33147073208438;
	setAttr -s 12 ".kit[0:11]"  3 3 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 12 ".kot[0:11]"  3 3 9 9 9 9 9 
		9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 13.717778871715204 3 25.948901905116401 
		6 22.743554926231724 12 13.717778871715204 14 25.948901905116429 16 -9.0830972443010491 
		20 -5.4726526619269746 24 -35.595363845044297 27 42.70484598509212 30 10.113681911874204 
		36 10.113681911874204 44 10.113681911874204;
	setAttr -s 12 ".kit[0:11]"  3 3 9 9 1 3 3 
		9 9 9 9 9;
	setAttr -s 12 ".kot[0:11]"  3 3 9 9 1 3 3 
		9 9 9 9 9;
	setAttr -s 12 ".kix[4:11]"  0.99546581506729126 1 1 0.2673909068107605 
		0.24317258596420288 0.46650052070617676 1 1;
	setAttr -s 12 ".kiy[4:11]"  -0.095119811594486237 0 0 0.96358811855316162 
		0.96998304128646851 -0.88452094793319702 0 0;
	setAttr -s 12 ".kox[4:11]"  0.99546587467193604 1 1 0.2673909068107605 
		0.24317258596420288 0.46650052070617676 1 1;
	setAttr -s 12 ".koy[4:11]"  -0.095119617879390717 0 0 0.96358811855316162 
		0.96998304128646851 -0.88452094793319702 0 0;
createNode animCurveTA -n "animCurveTA1432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 20.771216329880893 12 
		0 14 0 16 -2.954679702671601 20 2.3144369118160042 24 1.8224410758254592 
		27 -9.2988248217141081 30 -3.6896128937020114 36 -3.6896128937020114 44 -3.6896128937020114;
	setAttr -s 12 ".kit[0:11]"  3 3 9 9 1 9 9 
		9 9 9 9 9;
	setAttr -s 12 ".kot[0:11]"  3 3 9 9 1 9 9 
		9 9 9 9 9;
	setAttr -s 12 ".kix[4:11]"  0.99998509883880615 0.98020702600479126 
		0.95443600416183472 0.75494009256362915 0.90116506814956665 0.95066154003143311 
		1 1;
	setAttr -s 12 ".kiy[4:11]"  -0.0054611046798527241 0.19797508418560028 
		0.29841569066047668 -0.65579378604888916 -0.43347612023353577 0.31023004651069641 
		0 0;
	setAttr -s 12 ".kox[4:11]"  0.99998509883880615 0.98020702600479126 
		0.95443600416183472 0.75494009256362915 0.90116506814956665 0.95066154003143311 
		1 1;
	setAttr -s 12 ".koy[4:11]"  -0.0054611093364655972 0.19797508418560028 
		0.29841569066047668 -0.65579378604888916 -0.43347612023353577 0.31023004651069641 
		0 0;
createNode animCurveTA -n "animCurveTA1433";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1434";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1435";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1436";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1437";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1438";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1439";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1440";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1441";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1442";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1443";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1444";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL507";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 14 0 16 0 
		20 0 24 0 27 0 30 0 36 0 44 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL508";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 14 0 16 0 
		20 0 24 0 27 0 30 0 36 0 44 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL509";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 3 1 6 1 10 1 12 1 14 1 16 1 
		20 1 24 1 27 1 30 1 36 1 44 1;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL510";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 14 0 16 0 
		20 0 24 0 27 0 30 0 36 0 44 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL511";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0 10 0 12 0 14 0 16 0 
		20 0 24 0 27 0 30 0 36 0 44 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL512";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 3 1 6 1 10 1 12 1 14 1 16 1 
		20 1 24 1 27 1 30 1 36 1 44 1;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL513";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.076472881617957691 3 0.076472881617957691 
		6 -0.17289033686313299 10 0.076171803849399422 12 0.076472881617957691 14 
		0.033034131700396582 16 -0.067340596773508177 20 -0.28074045826882532 24 
		-0.35883700050921535 27 -1.2093034727697225 30 -2.2591101781206659 36 -1.6421352762378554 
		44 -2.2591101781206659;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL514";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.96147551361829786 3 0.93105416142265018 
		6 0.96166607922299341 10 0.95329017309074449 12 0.96147551361829786 14 0.9224657007074174 
		16 0.92948217727043758 20 0.96472071093595801 24 1.4919179837135488 27 1.5410418720851637 
		30 1.2803698945022608 36 1.4356475945789096 44 1.2803698945022608;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		1 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		1 9 9 9 9 9;
	setAttr -s 13 ".kix[7:12]"  0.019300941377878189 0.0040486352518200874 
		0.0094536924734711647 0.02845301665365696 1 0.017171002924442291;
	setAttr -s 13 ".kiy[7:12]"  0.9998137354850769 0.999991774559021 
		-0.99995529651641846 -0.99959510564804077 0 -0.99985253810882568;
	setAttr -s 13 ".kox[7:12]"  0.019300926476716995 0.0040486352518200874 
		0.0094536924734711647 0.02845301665365696 1 0.017171002924442291;
	setAttr -s 13 ".koy[7:12]"  0.9998137354850769 0.999991774559021 
		-0.99995529651641846 -0.99959510564804077 0 -0.99985253810882568;
createNode animCurveTL -n "animCurveTL515";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 0 6 0.034164584962791775 
		10 -0.059059410177397804 12 0 14 0.18881674669046031 16 0.56746770564493954 
		20 1.0571113164685229 24 1.4089370904477301 27 1.7889687943275561 30 1.7693492297543687 
		36 1.9019358436022702 44 1.7693492297543687;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		1 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		1 9 9 9 9 9;
	setAttr -s 13 ".kix[7:12]"  0.013435677625238895 0.0031882184557616711 
		0.0055491169914603233 0.026547057554125786 1 0.020108575001358986;
	setAttr -s 13 ".kiy[7:12]"  0.99990975856781006 0.99999493360519409 
		0.99998462200164795 0.99964755773544312 0 -0.99979782104492188;
	setAttr -s 13 ".kox[7:12]"  0.013435684144496918 0.0031882184557616711 
		0.0055491169914603233 0.026547057554125786 1 0.020108575001358986;
	setAttr -s 13 ".koy[7:12]"  0.99990975856781006 0.99999493360519409 
		0.99998462200164795 0.99964755773544312 0 -0.99979782104492188;
createNode animCurveTA -n "animCurveTA1445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.62843630316474508 3 -0.64945777164326313 
		6 3.5362358469263615 10 2.2213518221595017 12 -0.62843630316474508 14 -4.0647210446877668 
		16 -3.0762169050940038 20 -6.5591355069755881 24 -6.5591355069755881 27 -10.96697467846017 
		30 -19.504876398732126 36 19.904949984433497 44 -19.504876398732126;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		1 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		1 9 9 9 9 9;
	setAttr -s 13 ".kix[7:12]"  0.9971427321434021 0.94971179962158203 
		0.66280597448348999 0.48645725846290588 1 0.36147677898406982;
	setAttr -s 13 ".kiy[7:12]"  -0.075540885329246521 -0.31312531232833862 
		-0.7487911581993103 0.87370437383651733 0 -0.93238109350204468;
	setAttr -s 13 ".kox[7:12]"  0.9971427321434021 0.94971179962158203 
		0.66280597448348999 0.48645725846290588 1 0.36147677898406982;
	setAttr -s 13 ".koy[7:12]"  -0.075540848076343536 -0.31312531232833862 
		-0.7487911581993103 0.87370437383651733 0 -0.93238109350204468;
createNode animCurveTA -n "animCurveTA1446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 5.8284402688137167 3 -15.712784536999756 
		6 -37.60704203649366 10 -19.301447906299206 12 5.8284402688137167 14 -6.129632983176454 
		16 -21.932677743389643 20 3.7197865316961756 24 3.7197865316961756 27 2.6849411150377636 
		30 0 36 -23.729790269354229 44 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		1 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		1 9 9 9 9 9;
	setAttr -s 13 ".kix[7:12]"  0.90011471509933472 0.997017502784729 
		0.95114231109619141 0.54541563987731934 1 0.54135948419570923;
	setAttr -s 13 ".kiy[7:12]"  0.43565288186073303 -0.07717539370059967 
		-0.30875280499458313 -0.83816570043563843 0 0.84079128503799438;
	setAttr -s 13 ".kox[7:12]"  0.90011477470397949 0.997017502784729 
		0.95114231109619141 0.54541563987731934 1 0.54135948419570923;
	setAttr -s 13 ".koy[7:12]"  0.43565282225608826 -0.07717539370059967 
		-0.30875280499458313 -0.83816570043563843 0 0.84079128503799438;
createNode animCurveTA -n "animCurveTA1447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1.295636019309746 3 1.5353463816017385 
		6 1.9350868568911364 10 1.7971044910279799 12 1.295636019309746 14 1.7490863204697844 
		16 1.3015925165258879 20 5.0537228151421463 24 5.0537228151421463 27 3.5942040383448104 
		30 0 36 -30.653736597065432 44 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1448";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1449";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1450";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1451";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1452";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1453";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1454";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1455";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1456";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1457";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1458";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1459";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1460";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1461";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1462";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1463";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1464";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1465";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1466";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1467";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 20 0 44 0;
	setAttr -s 4 ".kit[0:3]"  3 9 1 1;
	setAttr -s 4 ".kot[0:3]"  3 9 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 20 0 44 0;
	setAttr -s 4 ".kit[0:3]"  3 9 1 1;
	setAttr -s 4 ".kot[0:3]"  3 9 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 -24.501661700242042 20 0 
		44 0;
	setAttr -s 4 ".kit[0:3]"  3 9 1 1;
	setAttr -s 4 ".kot[0:3]"  3 9 9 5;
	setAttr -s 4 ".kix[2:3]"  0.29765972495079041 1;
	setAttr -s 4 ".kiy[2:3]"  0.95467203855514526 0;
createNode animCurveTA -n "animCurveTA1471";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1472";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1473";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL516";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.5198069948790518 44 -0.5198069948790518;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL517";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 44 -0.72394202659893114;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL518";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 44 0.36439499068905612;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1474";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965317 44 7.7976222737965299;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1475";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 30.409274105849079 44 30.409274105849079;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1476";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.859940280210893 44 64.859940280210878;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL519";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.43524234076486068 44 0.43524234076486068;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL520";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 44 -0.82665738350180629;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL521";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 44 0.27773886459742925;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1477";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1478";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -28.652637602052774 44 -28.652637602052774;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1479";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.676908227303443 44 -64.676908227303443;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.75854111686822778 3 -0.57262925149573951 
		6 -0.65078171898999204 10 -0.65379941659865082 12 -0.75854111686822778 14 
		-0.71855072776607709 16 -1.2216982766104969 20 -1.6615405618010601 24 -1.6615405618010601 
		27 -2.718818699284034 30 -4.206404471075289 36 -3.0251282500831582 44 -4.206404471075289;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL523";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1.1932952672205326 3 1.4163535334556963 
		6 1.1595450764031354 10 1.187554025869259 12 1.1932952672205326 14 1.5241480002158414 
		16 2.1458374442121051 20 2.1873530019833729 24 2.1873530019833729 27 1.9413710135050546 
		30 1.7781418955835293 36 2.4322073245137408 44 1.7781418955835293;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.14314299916678522 3 -0.37264849786442289 
		6 -0.61670812692470955 10 -0.37392246864567208 12 0.14314299916678522 14 
		0.66996185967789745 16 0.9774450882183453 20 1.4120938891850821 24 1.7877164599350404 
		27 2.6274946301868729 30 2.7041072647042435 36 2.4602491551945591 44 2.7041072647042435;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1480";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -5.7993291745893352 3 16.226511010665405 
		6 -36.342371142933764 10 -19.485233780889633 12 -5.7993291745893352 14 55.598837649680043 
		16 0.53074525458670618 20 -9.3708019553636923 24 -9.3708019553636923 27 -17.985238978769711 
		30 -26.203413720634725 36 -27.818924152705119 44 -26.203413720634725;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1481";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1.228264010471275 3 8.513966085499284 
		6 -11.969566747283142 10 0.96208380069696442 12 1.228264010471275 14 30.973734338623142 
		16 30.368244126557347 20 29.306594429857483 24 29.306594429857483 27 23.104847167583884 
		30 14.791961579779638 36 -7.8589637569602626 44 14.791961579779638;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1482";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 60.456694896838378 3 68.213989601412422 
		6 58.343731855318346 10 56.825927835201007 12 60.456694896838378 14 82.208920420259716 
		16 -43.401113370080203 20 -65.912336754634623 24 -65.912336754634623 27 -5.077971438885676 
		30 45.895436695401962 36 -6.0238552216777173 44 45.895436695401962;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0.97384023505055983 3 0.097868043675122127 
		6 -0.67297017784466751 8 0.53889157443010816 10 0.91687176238261336 12 0.97384023505055983 
		14 0.91837917750249576 16 0.79254435424317993 20 0.50802692925305393 24 0.09225560444291149 
		27 -1.0697637662078572 30 -2.4318854543692052 36 -0.85865689186961502 39 
		-1.0663777460455246 44 -2.4318854543692052;
	setAttr -s 15 ".kit[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9;
	setAttr -s 15 ".kot[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1.2525965505547216 3 1.6409997766055862 
		6 2.0516744866464558 8 1.9297493576614511 10 1.6867389784155029 12 1.2525965505547216 
		14 1.2376327523903852 16 1.3355470437254813 20 1.5019588733907707 24 2.7988454248546248 
		27 2.2666828628028433 30 1.7241929732026566 36 2.5072247162763563 39 2.5434888612919893 
		44 1.7241929732026566;
	setAttr -s 15 ".kit[0:14]"  3 9 9 9 9 9 9 
		9 1 9 9 9 9 1 9;
	setAttr -s 15 ".kot[0:14]"  3 9 9 9 9 9 9 
		9 1 9 9 9 9 1 9;
	setAttr -s 15 ".kix[8:14]"  0.0042146164923906326 0.0030511955264955759 
		0.0018610635306686163 0.012470872141420841 0.0036616562865674496 0.023984095081686974 
		0.0020342634525150061;
	setAttr -s 15 ".kiy[8:14]"  0.99999111890792847 0.99999535083770752 
		-0.99999827146530151 0.99992221593856812 0.99999332427978516 -0.99971240758895874 
		-0.99999791383743286;
	setAttr -s 15 ".kox[8:14]"  0.0042146611958742142 0.0030511955264955759 
		0.0018610635306686163 0.012470872141420841 0.0036616562865674496 0.023984048515558243 
		0.0020342634525150061;
	setAttr -s 15 ".koy[8:14]"  0.99999111890792847 0.99999535083770752 
		-0.99999827146530151 0.99992221593856812 0.99999332427978516 -0.99971240758895874 
		-0.99999791383743286;
createNode animCurveTL -n "animCurveTL527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -0.097994651149805143 3 0.84567637706889831 
		6 1.012740774631735 7.9950000000000001 0.99955266503950313 10 0.82410919595210663 
		12 -0.097994651149805143 14 0.18811956002607613 16 0.97154473824728926 20 
		1.7084459967887549 24 2.9184961808501275 27 3.1165646536977438 30 2.6858977529588222 
		36 3.6257457706658354 39 3.4262633344380617 44 2.6858977529588222;
	setAttr -s 15 ".kit[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1 9;
	setAttr -s 15 ".kot[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 1 9;
	setAttr -s 15 ".kix[13:14]"  0.0069580026902258396 0.0022511349525302649;
	setAttr -s 15 ".kiy[13:14]"  -0.99997574090957642 -0.99999743700027466;
	setAttr -s 15 ".kox[13:14]"  0.0069580008275806904 0.0022511349525302649;
	setAttr -s 15 ".koy[13:14]"  -0.99997574090957642 -0.99999743700027466;
createNode animCurveTA -n "animCurveTA1483";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -12.222987645962959 3 71.119159344460144 
		6 115.97949163849844 7.9950000000000001 78.443105148750945 10 4.4503298151152562 
		12 -12.222987645962959 14 -10.826424546146567 16 -10.345092866137652 20 -29.971309712113101 
		24 -99.357306583188404 27 -71.444410515520019 30 -33.734888782993899 36 -19.345874397196617 
		39 -21.547393754778248 44 -33.734888782993899;
	setAttr -s 15 ".kit[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9;
	setAttr -s 15 ".kot[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1484";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 19.681044208515029 3 -28.587710488537017 
		6 -70.59428487001783 8 -73.544495109388265 10 -33.344727940425187 12 19.681044208515029 
		14 -28.562123998386923 16 -16.457368745399648 20 36.465641622030631 24 -47.240579136546721 
		27 -34.915716994255128 30 -14.870586397896899 36 -47.068687946319812 39 -42.142378080219508 
		44 -14.870586397896899;
	setAttr -s 15 ".kit[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9;
	setAttr -s 15 ".kot[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1485";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -65.119655550709027 3 -145.5137268770755 
		6 -193.1888567175117 7.9950000000000001 -152.83471523677741 10 -74.65908388092609 
		12 -65.119655550709027 14 -52.637498007569562 16 -48.871451458157736 20 -20.091500423830848 
		24 41.619546305829736 27 6.7023665856785861 30 -30.592169336881899 36 7.3649226411748101 
		39 1.55748705668628 44 -30.592169336881899;
	setAttr -s 15 ".kit[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9;
	setAttr -s 15 ".kot[0:14]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.10167917362943303 3 0.4001111643408698 
		6 0.4001111643408698 10 0.4001111643408698 12 0.10167917362943303 14 0.31054502397108613 
		16 0.31054502397108613 20 0.31054502397108613 24 0.31054502397108613 27 0.31054502397108613 
		30 0.31054502397108613 36 0.31054502397108613 44 0.31054502397108613;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 1 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kox[1:12]"  1 1 0.0067015434615314007 0.014884928241372108 
		0.0063835526816546917 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 -0.99997752904891968 -0.99988919496536255 
		0.99997961521148682 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.40762644910266188 3 -0.32054195494897236 
		6 -0.32054195494897236 10 -0.32054195494897236 12 -0.40762644910266188 14 
		-0.55640530640609931 16 -0.55640530640609931 20 -0.55640530640609931 24 -0.55640530640609931 
		27 -0.55640530640609931 30 -0.55640530640609931 36 -0.55640530640609931 44 
		-0.55640530640609931;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 1 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kox[1:12]"  1 1 0.022960146889090538 0.0056529003195464611 
		0.0089614866301417351 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 -0.99973636865615845 -0.9999840259552002 
		-0.99995982646942139 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.93129112588482243 3 -0.81561019929437761 
		6 -0.81561019929437761 10 -0.81561019929437761 12 -0.93129112588482243 14 
		-0.57914122395678103 16 -0.57914122395678103 20 -0.57914122395678103 24 -0.57914122395678103 
		27 -0.57914122395678103 30 -0.57914122395678103 36 -0.57914122395678103 44 
		-0.57914122395678103;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 1 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kox[1:12]"  1 1 0.017286350950598717 0.0056384233757853508 
		0.0037862393073737621 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 -0.9998505711555481 0.99998408555984497 
		0.99999284744262695 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 -0.17523930523423681 6 -0.17523930523423681 
		10 -0.17523930523423681 12 0 14 -0.17523930523423681 16 -0.063331173333856433 
		20 -0.063331173333856433 24 -0.063331173333856433 27 -0.063331173333856433 
		30 -0.063331173333856433 36 -0.063331173333856433 44 -0.063331173333856433;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 1 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kox[1:12]"  1 1 0.011412221938371658 1 0.021048685535788536 
		0.017868949100375175 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0.9999348521232605 0 -0.99977844953536987 
		0.99984031915664673 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 -0.00072435787012014696 6 
		-0.00072435787012014696 10 -0.00072435787012014696 12 0 14 -0.00072435787012014696 
		16 -0.69960805773293522 20 -0.69960805773293522 24 -0.69960805773293522 27 
		-0.69960805773293522 30 -0.69960805773293522 36 -0.69960805773293522 44 -0.69960805773293522;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 1 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kox[1:12]"  1 1 0.94023275375366211 1 0.0019058254547417164 
		0.0028616946656256914 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 0.34053251147270203 0 -0.99999821186065674 
		-0.9999958872795105 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -1 3 -0.80201435285893019 6 -0.80201435285893019 
		10 -0.80201435285893019 12 -1 14 -0.80201435285893019 16 -0.66762598980258558 
		20 -0.66762598980258558 24 -0.66762598980258558 27 -0.66762598980258558 30 
		-0.66762598980258558 36 -0.66762598980258558 44 -0.66762598980258558;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 1 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kox[1:12]"  1 1 0.010101226158440113 1 0.0040115127339959145 
		0.014880592934787273 1 1 1 1 1 1;
	setAttr -s 13 ".koy[1:12]"  0 0 -0.99994897842407227 0 0.99999195337295532 
		0.99988925457000732 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1486";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.061808866237340665 3 -0.061808866237337522 
		6 -0.061808866237337522 10 -0.061808866237337522 12 -0.061808866237340665 
		14 -0.061808866237337522 16 -0.061808866237337522 20 -0.061808866237337522 
		24 -0.061808866237337522 30 -0.061808866237337522 36 -0.061808866237337522 
		44 -0.061808866237337522;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1487";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -59.058178941076754 3 -59.058178941076754 
		6 -59.058178941076754 10 -59.058178941076754 12 -59.058178941076754 14 -59.058178941076754 
		16 -59.058178941076754 20 -59.058178941076754 24 -59.058178941076754 30 -59.058178941076754 
		36 -59.058178941076754 44 -59.058178941076754;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1488";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 16.57914742975785 3 16.579147429757843 
		6 16.579147429757843 10 16.579147429757843 12 16.57914742975785 14 16.579147429757843 
		16 16.579147429757843 20 16.579147429757843 24 16.579147429757843 30 16.579147429757843 
		36 16.579147429757843 44 16.579147429757843;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1489";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 12.253734489678925 3 12.253734489678925 
		6 12.253734489678925 10 12.253734489678925 12 12.253734489678925 14 12.253734489678925 
		16 12.253734489678925 20 12.253734489678925 24 12.253734489678925 30 12.253734489678925 
		36 12.253734489678925 44 12.253734489678925;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1490";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -65.746751280844975 3 -65.746751280844961 
		6 -65.746751280844961 10 -65.746751280844961 12 -65.746751280844975 14 -65.746751280844961 
		16 -65.746751280844961 20 -65.746751280844961 24 -65.746751280844961 30 -65.746751280844961 
		36 -65.746751280844961 44 -65.746751280844961;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1491";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 10 0 12 0 14 0 16 0 
		20 0 24 0 30 0 36 0 44 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1492";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 15.711328223519061 3 15.711328223519057 
		6 15.711328223519057 10 15.711328223519057 12 15.711328223519061 14 15.711328223519057 
		16 15.711328223519057 20 15.711328223519057 24 15.711328223519057 30 15.711328223519057 
		36 15.711328223519057 44 15.711328223519057;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1493";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 8.5572674112203657 3 8.5572674112203622 
		6 8.5572674112203622 10 8.5572674112203622 12 8.5572674112203657 14 8.5572674112203622 
		16 8.5572674112203622 20 8.5572674112203622 24 8.5572674112203622 30 8.5572674112203622 
		36 8.5572674112203622 44 8.5572674112203622;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1494";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 10 0 12 0 14 0 16 0 
		20 0 24 0 30 0 36 0 44 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1495";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 10 0 12 0 14 0 16 0 
		20 0 24 0 30 0 36 0 44 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1496";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 10 0 12 0 14 0 16 0 
		20 0 24 0 30 0 36 0 44 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1497";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 10 0 12 0 14 0 16 0 
		20 0 24 0 30 0 36 0 44 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1498";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 10 0 12 0 14 0 16 0 
		20 0 24 0 30 0 36 0 44 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1499";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 10 0 12 0 14 0 16 0 
		20 0 24 0 30 0 36 0 44 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1500";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 198.501726992805 3 19.002497950056888 
		6 19.002497950056888 10 19.002497950056888 12 198.501726992805 14 19.002497950056888 
		16 19.002497950056888 20 19.002497950056888 24 19.002497950056888 30 19.002497950056888 
		36 19.002497950056888 44 19.002497950056888;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1501";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 23.263402056531085 3 23.263402056531085 
		6 23.263402056531085 10 23.263402056531085 12 23.263402056531085 14 23.263402056531085 
		16 23.263402056531085 20 23.263402056531085 24 23.263402056531085 30 23.263402056531085 
		36 23.263402056531085 44 23.263402056531085;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1502";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 20.166277752815617 3 20.166277752815617 
		6 20.166277752815617 10 20.166277752815617 12 20.166277752815617 14 20.166277752815617 
		16 20.166277752815617 20 20.166277752815617 24 20.166277752815617 30 20.166277752815617 
		36 20.166277752815617 44 20.166277752815617;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1503";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 10 0 12 0 14 0 16 0 
		20 0 24 0 30 0 36 0 44 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1504";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 10 0 12 0 14 0 16 0 
		20 0 24 0 30 0 36 0 44 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1505";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 33.429092416277157 3 33.429092416277157 
		6 33.429092416277157 10 33.429092416277157 12 33.429092416277157 14 33.429092416277157 
		16 33.429092416277157 20 33.429092416277157 24 33.429092416277157 30 33.429092416277157 
		36 33.429092416277157 44 33.429092416277157;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1506";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1507";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1508";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1509";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1510";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1511";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 44 13.994403295754109;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1512";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1513";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 44 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1514";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 44 13.994403295754109;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA1515";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 10 0 12 0 14 0 16 0 
		20 0 24 0 30 0 36 0 44 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1516";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 10 0 12 0 14 0 16 0 
		20 0 24 0 30 0 36 0 44 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1517";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 17.254116939558369 3 17.254116939558369 
		6 17.254116939558369 10 17.254116939558369 12 17.254116939558369 14 17.254116939558369 
		16 17.254116939558369 20 17.254116939558369 24 17.254116939558369 30 17.254116939558369 
		36 17.254116939558369 44 17.254116939558369;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1518";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 10 0 12 0 14 0 16 0 
		20 0 24 0 30 0 36 0 44 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1519";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 10 0 12 0 14 0 16 0 
		20 0 24 0 30 0 36 0 44 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1520";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 10 0 12 0 14 0 16 0 
		20 0 24 0 30 0 36 0 44 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1521";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.65073001024951671 3 -17.865547004487734 
		6 -26.344302103719443 10 -15.995208714699748 12 0.65073001024951671 14 -7.8430056866173823 
		16 -7.8430056866173823 20 -18.820843871529618 24 -18.820843871529618 30 1.3731006602189262 
		36 5.9660149388432382 44 1.3731006602189262;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 4.2368721935960938 3 8.1938064043711503 
		6 14.600939198760139 10 10.255568461043122 12 4.2368721935960938 14 2.4212113907903019 
		16 2.4212113907903019 20 8.442588645585376 24 8.442588645585376 30 -0.38374158911587303 
		36 4.5116636179203082 44 -0.38374158911587303;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1523";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 2.6995264082587447 3 15.088783978648813 
		6 18.187946831246631 10 13.315807209516004 12 2.6995264082587447 14 14.868855041301886 
		16 14.868855041301886 20 16.699953369662587 24 16.699953369662587 30 0.96901743689791309 
		36 2.3811787268879385 44 0.96901743689791309;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 10 0 12 0 14 -7.1097278539792699 
		16 -7.1097278539792699 20 -7.1097278539792699 24 -7.1097278539792699 30 2.2144674450583466 
		36 -7.1097278539792699 44 2.2144674450583466;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 10 0 12 0 14 0 16 0 
		20 0 24 0 30 5.36423803921525 36 0 44 5.36423803921525;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 6.9655753505297673 6 6.9655753505297673 
		10 6.9655753505297673 12 0 14 6.9655753505297673 16 6.9655753505297673 20 
		6.9655753505297673 24 6.9655753505297673 30 -3.2584064202075531 36 6.9655753505297673 
		44 -3.2584064202075531;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 4.0198472869727979 3 5.9242295281046466 
		6 -1.8652854771413565 10 -21.728187361662286 12 4.0198472869727979 14 8.2806877228551272 
		16 5.2494090226201955 20 5.2378895149391758 24 -3.7903101035041509 30 -4.9690701715193724 
		33 -46.227209466300053 36 -38.999395730978343 44 -4.9690701715193724;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 1 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 1 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[5:12]"  0.91116088628768921 0.96650689840316772 
		0.86064779758453369 0.88194912672042847 0.37541595101356506 0.31912657618522644 
		0.45375695824623108 0.40958940982818604;
	setAttr -s 13 ".kiy[5:12]"  0.4120507538318634 -0.25664067268371582 
		-0.50920075178146362 -0.47134461998939514 -0.92685645818710327 -0.94771212339401245 
		0.89112550020217896 0.9122699499130249;
	setAttr -s 13 ".kox[5:12]"  0.91116094589233398 0.96650689840316772 
		0.86064779758453369 0.88194912672042847 0.37541595101356506 0.31912657618522644 
		0.45375695824623108 0;
	setAttr -s 13 ".koy[5:12]"  0.41205063462257385 -0.25664067268371582 
		-0.50920075178146362 -0.47134461998939514 -0.92685645818710327 -0.94771212339401245 
		0.89112550020217896 0;
createNode animCurveTA -n "animCurveTA1528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 9.1335573833666519 3 9.077909751430024 
		6 -16.975603900501056 10 -21.522809173019919 12 9.1335573833666519 14 8.5086629712104536 
		16 7.4288331807529291 20 25.174728286073833 24 7.1873577666484181 30 2.9904681746768538 
		33 -43.464870903715401 36 -68.701263884681893 44 2.9904681746768538;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 1 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 1 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[5:12]"  0.99601650238037109 0.56657028198242188 
		0.99987512826919556 0.65243446826934814 0.32134926319122314 0.15783576667308807 
		0.41205295920372009 0.20843805372714996;
	setAttr -s 13 ".kiy[5:12]"  0.089168936014175415 0.82401341199874878 
		-0.015802554786205292 -0.75784516334533691 -0.94696074724197388 -0.98746538162231445 
		0.91115987300872803 0.978035569190979;
	setAttr -s 13 ".kox[5:12]"  0.99601650238037109 0.56657028198242188 
		0.99987512826919556 0.65243446826934814 0.32134926319122314 0.15783576667308807 
		0.41205295920372009 0;
	setAttr -s 13 ".koy[5:12]"  0.089168928563594818 0.82401341199874878 
		-0.015802554786205292 -0.75784516334533691 -0.94696074724197388 -0.98746538162231445 
		0.91115987300872803 0;
createNode animCurveTA -n "animCurveTA1529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -2.2752136084709536 3 -7.2687178407216164 
		6 -14.2973988729951 10 -1.4936145831966527 12 -2.2752136084709536 14 -2.3189154341807527 
		16 -11.077093509012803 20 -8.0550223726483026 24 12.477959126589024 30 14.780225156536881 
		33 14.102963811421818 36 -10.15874635942871 44 14.780225156536881;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 1 9 
		9 9 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 1 9 
		9 9 9 9 9 5;
	setAttr -s 13 ".kix[5:12]"  0.7913811206817627 0.89422327280044556 
		0.54418915510177612 0.64155560731887817 0.99556094408035278 0.41752150654792786 
		0.99948078393936157 1;
	setAttr -s 13 ".kiy[5:12]"  -0.61132305860519409 -0.44762113690376282 
		0.83896255493164063 0.76707649230957031 0.094119273126125336 -0.90866702795028687 
		0.032220825552940369 0;
	setAttr -s 13 ".kox[5:12]"  0.79138118028640747 0.89422327280044556 
		0.54418915510177612 0.64155560731887817 0.99556094408035278 0.41752150654792786 
		0.99948078393936157 0;
	setAttr -s 13 ".koy[5:12]"  -0.61132305860519409 -0.44762113690376282 
		0.83896255493164063 0.76707649230957031 0.094119273126125336 -0.90866702795028687 
		0.032220825552940369 0;
createNode animCurveTA -n "animCurveTA1530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1.8903601258661935 3 1.8903601258661931 
		6 10.620934651579155 10 1.8903601258661931 12 1.8903601258661935 14 1.8903601258661931 
		16 1.8903601258661931 20 1.8903601258661931 24 1.8903601258661931 30 -2.211833892135727 
		36 3.749937051835468 44 -2.211833892135727;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -2.5597289571479038 3 -2.5597289571479034 
		6 4.2675310995034259 10 -2.5597289571479034 12 -2.5597289571479038 14 -2.5597289571479034 
		16 -2.5597289571479034 20 -2.5597289571479034 24 -2.5597289571479034 30 -1.708673036061555 
		36 -11.126545227672914 44 -1.708673036061555;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 2.0168110874036049 3 2.016811087403604 
		6 -2.5690730322880704 10 2.016811087403604 12 2.0168110874036049 14 2.016811087403604 
		16 2.016811087403604 20 2.016811087403604 24 2.016811087403604 30 2.7082804953288209 
		36 -2.1144942238017537 44 2.7082804953288209;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 10 0 12 0 14 0 16 0 
		20 0 24 0 30 0 36 0 44 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1534";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 10 0 12 0 14 0 16 0 
		20 0 24 0 30 0 36 0 44 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1535";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 27.080064458283051 3 27.080064458283051 
		6 27.080064458283051 10 27.080064458283051 12 27.080064458283051 14 27.080064458283051 
		16 27.080064458283051 20 27.080064458283051 24 27.080064458283051 30 27.080064458283051 
		36 27.080064458283051 44 27.080064458283051;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1536";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 10.423754966968488 3 -177.04830761929054 
		6 -177.04830761929054 10 -177.04830761929054 12 10.423754966968488 14 -177.04830761929054 
		16 -177.04830761929054 20 -177.04830761929054 24 -177.04830761929054 30 -177.04830761929054 
		36 -177.04830761929054 44 -177.04830761929054;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1537";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 27.7228482558439 3 27.722848255843903 
		6 27.722848255843903 10 27.722848255843903 12 27.7228482558439 14 27.722848255843903 
		16 27.722848255843903 20 27.722848255843903 24 27.722848255843903 30 27.722848255843903 
		36 27.722848255843903 44 27.722848255843903;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1538";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 21.576484776388224 3 21.576484776388227 
		6 21.576484776388227 10 21.576484776388227 12 21.576484776388224 14 21.576484776388227 
		16 21.576484776388227 20 21.576484776388227 24 21.576484776388227 30 21.576484776388227 
		36 21.576484776388227 44 21.576484776388227;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1539";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 10 0 12 0 14 0 16 0 
		20 0 24 0 30 0 36 0 44 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1540";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 10 0 12 0 14 0 16 0 
		20 0 24 0 30 0 36 0 44 0;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTA -n "animCurveTA1541";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 27.911632519594587 3 27.911632519594587 
		6 27.911632519594587 10 27.911632519594587 12 27.911632519594587 14 27.911632519594587 
		16 27.911632519594587 20 27.911632519594587 24 27.911632519594587 30 27.911632519594587 
		36 27.911632519594587 44 27.911632519594587;
	setAttr -s 12 ".kit[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 12 ".kot[0:11]"  3 9 9 9 9 9 9 
		9 9 9 9 5;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
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
connectAttr "lsa_get_into_car_open_door_driverSource.st" "clipLibrary1.st[0]"
		;
connectAttr "lsa_get_into_car_open_door_driverSource.du" "clipLibrary1.du[0]"
		;
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
// End of lsa_get_into_car_open_door_driver.ma
