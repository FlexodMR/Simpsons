//Maya ASCII 4.0 scene
//Name: lsa-m_turn_45_CCW.ma
//Last modified: Mon, Jun 10, 2002 01:22:48 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.3";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_turn_45_CCW";
	setAttr ".ihi" 0;
	setAttr ".du" 25;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL153";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL154";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0.033135114381557439 2 0.081277841867825898 
		3 0.06402471135779661 3.005 0.097192075595566405 4 0.10775072095141228 5 
		0.10893708634575765 6 0.093696058498882878 7 0.064546704148660872 8 0.031833601731874536 
		9 0.0059013296853067743 10 -0.012300472716268624 11 -0.028543969711342161 
		12 -0.042567288133027389 13 -0.054108554814437854 14 -0.062905896588687074 
		15 -0.06911854283495944 16 -0.073393636708816379 17 -0.076201175707937108 
		18 -0.078011157330000774 19 -0.07929357907268661 20 -0.080518438433673775 
		21 -0.082155732910641502 22 -0.083581846265012277 23 -0.084187867462377469 
		24 -0.084465851806669531 25 -0.084907854601820903;
	setAttr -s 26 ".kit[0:25]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 26 ".kot[0:25]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 26 ".kix[25]"  0.60211479663848877;
	setAttr -s 26 ".kiy[25]"  -0.79840952157974243;
createNode animCurveTL -n "animCurveTL156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 2 0 3 0 3.005 0 4 0 5 0 6 0 
		7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 
		0 23 0 24 0 25 0;
	setAttr -s 26 ".kit[0:25]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 26 ".kot[0:25]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 26 ".kix[25]"  1;
	setAttr -s 26 ".kiy[25]"  0;
createNode animCurveTL -n "animCurveTL157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 2 -0.00030587876444723873 3 
		-0.00023932418134911036 3.005 -0.00045881814413190731 4 -0.00095729671524063793 
		5 -0.0020604688726109537 6 -0.003732914831802396 7 -0.0059756430997515578 
		8 -0.0091024505083615297 9 -0.01342713388953541 10 -0.02012377313485092 11 
		-0.02883868000330693 12 -0.037593999127938274 13 -0.044411875141779772 14 
		-0.047314452677866249 15 -0.046504940255870784 16 -0.043793599923681877 17 
		-0.039613156606657499 18 -0.034396335230155624 19 -0.028575860719534232 20 
		-0.022584458000151297 21 -0.016854851997364813 22 -0.011134826737037598 23 
		-0.0050354288320273886 24 0.0012157182804003186 25 0.0073909911629800353;
	setAttr -s 26 ".kit[0:25]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 26 ".kot[0:25]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 26 ".kix[25]"  0.053900238126516342;
	setAttr -s 26 ".kiy[25]"  0.998546302318573;
createNode animCurveTA -n "animCurveTA444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 2 0.93333334401726309 3 0.31111111467242103 
		3.005 1.4000000160258945 4 1.2444444586896841 5 0 6 -2.086481590844298 7 
		-4.4288677020684268 8 -6.9849037418171322 9 -9.7123351182351598 10 -12.568907239467256 
		11 -15.512365513658168 12 -18.500455348952638 13 -21.490922153495415 14 -24.441511335431244 
		15 -27.309968302904871 16 -30.054038464061044 17 -32.631467227044503 18 -35 
		19 -37.032069903623437 20 -38.695335175766239 21 -40.090378900306355 22 -41.317784161121807 
		23 -42.478134042090574 24 -43.67201162709064 25 -45;
	setAttr -s 26 ".kit[0:25]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 26 ".kot[0:25]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 26 ".kix[25]"  0.82102793455123901;
	setAttr -s 26 ".kiy[25]"  -0.57088804244995117;
createNode animCurveTU -n "animCurveTU25";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU26";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU27";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU28";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU29";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU30";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 1 25 1;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU31";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU32";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA445";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA446";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA447";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL158";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL159";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL160";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL161";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.21594587158542247 5 -0.12347906309676848 
		9 -0.31724009019942295 14 -0.31724009019942295 21 -0.31724009019942295 25 
		-0.31724009019942295;
	setAttr -s 6 ".kit[1:5]"  9 3 3 9 1;
	setAttr -s 6 ".kot[1:5]"  9 3 3 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTL -n "animCurveTL162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.1380615615975922 5 0.22137465187099709 
		9 0.15137810172549138 14 0.15137810172549138 21 0.15137810172549138 25 0.15137810172549138;
	setAttr -s 6 ".kit[0:5]"  1 9 3 3 9 1;
	setAttr -s 6 ".kot[2:5]"  3 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 0.21977566182613373 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0.97555041313171387 0 0 0 0;
createNode animCurveTL -n "animCurveTL163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.00078430246903575811 5 0.0080936781074702306 
		9 -0.21483653910076048 14 -0.21483653910076048 21 -0.21483653910076048 25 
		-0.21483653910076048;
	setAttr -s 6 ".kit[0:5]"  1 9 3 3 9 1;
	setAttr -s 6 ".kot[2:5]"  3 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 0.013911966234445572 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99990320205688477 0 0 0 0;
createNode animCurveTA -n "animCurveTA448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 17.442704038995487 9 0 14 
		0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 3 9 9 9;
	setAttr -s 6 ".kot[2:5]"  3 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 -30.072700064410643 9 -45 
		14 -45 21 -45 25 -45;
	setAttr -s 6 ".kit[0:5]"  1 9 3 3 9 9;
	setAttr -s 6 ".kot[2:5]"  3 3 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.35682687163352966 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 -0.93417054414749146 0 0 0 0;
createNode animCurveTA -n "animCurveTA450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.26454016861507795 5 0.26454016861507795 
		9 0.26454016861507795 14 0.30592768688681143 18 0.12565485269071178 22 0.1320016588910683 
		25 0.1320016588910683;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 3 1;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 3 5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
createNode animCurveTL -n "animCurveTL165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.13806192026723146 5 0.13800000000000001 
		9 0.14328017535307225 14 0.18996126308414973 18 0.27212821101865475 22 0.15051744064848435 
		25 0.15051744064848435;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 3 1;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 3 5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
createNode animCurveTL -n "animCurveTL166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.064904406754016042 5 -0.064904406754016042 
		9 -0.064904406754016042 14 -0.043897671948574628 18 0.042577340289598996 
		22 0.10268430101983253 25 0.10268430101983253;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 3 1;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 3 5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
createNode animCurveTA -n "animCurveTA451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 9 0 14 13.220970707297967 
		18 21.677402498853461 22 -0.071820310703878468 25 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 3 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 3 9;
createNode animCurveTA -n "animCurveTA452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 13.717778871715204 5 13.641036229857825 
		9 13.641036229857825 14 -6.6580430187458601 18 -6.6580430187458663 22 -30.028866796926323 
		25 -32.384203784471936;
	setAttr -s 7 ".kit[0:6]"  3 9 1 9 9 1 3;
	setAttr -s 7 ".kot[0:6]"  3 9 1 9 9 1 3;
	setAttr -s 7 ".kix[2:6]"  0.99450641870498657 0.64621806144714355 
		0.54719793796539307 0.58609437942504883 1;
	setAttr -s 7 ".kiy[2:6]"  -0.10467544943094254 -0.7631528377532959 
		-0.83700323104858398 -0.81024277210235596 0;
	setAttr -s 7 ".kox[2:6]"  0.99450641870498657 0.64621806144714355 
		0.54719793796539307 0.58609437942504883 1;
	setAttr -s 7 ".koy[2:6]"  -0.10467549413442612 -0.7631528377532959 
		-0.83700323104858398 -0.81024277210235596 0;
createNode animCurveTA -n "animCurveTA453";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 9 0 14 9.6619230723324065 
		18 9.6619230723324101 22 0.01319836009350573 25 0;
	setAttr -s 7 ".kit[0:6]"  3 9 1 9 9 3 9;
	setAttr -s 7 ".kot[0:6]"  3 9 1 9 9 3 9;
	setAttr -s 7 ".kix[2:6]"  0.99905478954315186 0.87172156572341919 
		0.8455161452293396 1 0.99999731779098511;
	setAttr -s 7 ".kiy[2:6]"  0.04346848651766777 0.49000158905982971 
		-0.53394985198974609 0 -0.0023035425692796707;
	setAttr -s 7 ".kox[2:6]"  0.99905478954315186 0.87172156572341919 
		0.8455161452293396 1 0.99999731779098511;
	setAttr -s 7 ".koy[2:6]"  0.043468523770570755 0.49000158905982971 
		-0.53394985198974609 0 -0.0023035425692796707;
createNode animCurveTA -n "animCurveTA454";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA455";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA456";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA457";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA458";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA459";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA460";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA461";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA462";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA463";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA464";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA465";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTL -n "animCurveTL168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTL -n "animCurveTL169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 5 1 9 1 14 1 21 1 25 1;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTL -n "animCurveTL170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTL -n "animCurveTL171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTL -n "animCurveTL172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 5 1 9 1 14 1 21 1 25 1;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTL -n "animCurveTL173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.076472881617957691 5 0.1684699310671233 
		9 0.0091263373992994442 14 -0.097283233997789126 21 -0.12705288092886258 
		25 -0.13130900496480147;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  0.29894787073135376;
	setAttr -s 6 ".kiy[5]"  -0.95426946878433228;
createNode animCurveTL -n "animCurveTL174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.96147551361829786 5 0.94595582420809421 
		9 0.95566756079584314 14 0.93697006934892157 21 0.94485132385562287 25 0.96119437556515308;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 1 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 1 5;
	setAttr -s 6 ".kix[4:5]"  0.081038311123847961 0.081313945353031158;
	setAttr -s 6 ".kiy[4:5]"  0.99671101570129395 0.99668854475021362;
	setAttr -s 6 ".kox[4:5]"  0.081038571894168854 0;
	setAttr -s 6 ".koy[4:5]"  0.99671089649200439 0;
createNode animCurveTL -n "animCurveTL175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 -0.00318649103421921 9 -0.020764905659578968 
		14 -0.073171248180984721 21 -0.026065831659295116 25 0.011430081467324413;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 1 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 1 5;
	setAttr -s 6 ".kix[4:5]"  0.039485808461904526 0.035536967217922211;
	setAttr -s 6 ".kiy[4:5]"  0.99922007322311401 0.99936836957931519;
	setAttr -s 6 ".kox[4:5]"  0.039485819637775421 0;
	setAttr -s 6 ".koy[4:5]"  0.99922007322311401 0;
createNode animCurveTA -n "animCurveTA466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.62843630316474508 5 -4.2889659557988216 
		9 -4.3221309891224644 14 -3.7827056294066135 21 -0.73590357638831183 25 -0.62843630316474508;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  0.99990105628967285;
	setAttr -s 6 ".kiy[5]"  0.014066041447222233;
createNode animCurveTA -n "animCurveTA467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 5.8284402688137167 5 4.9836194606569988 
		9 -8.6636635777831277 14 -25.30894180155865 21 -31.179822849972499 25 -40.200000000000003;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  0.6462862491607666;
	setAttr -s 6 ".kiy[5]"  -0.76309508085250854;
createNode animCurveTA -n "animCurveTA468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.295636019309746 5 -2.5214912245651688 
		9 -1.4959435164340582 14 -0.38168469082212425 21 2.7058363487641701 25 1.2956360193097458;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  0.98338580131530762;
	setAttr -s 6 ".kiy[5]"  -0.18152791261672974;
createNode animCurveTA -n "animCurveTA469";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA470";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA471";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA472";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA473";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA474";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA475";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA476";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA477";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA478";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA479";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA480";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA481";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA482";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA483";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA484";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA485";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA486";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA487";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA488";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA489";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA490";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA491";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA492";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA493";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA494";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL176";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.5198069948790518 11 -0.5198069948790518 
		25 -0.5198069948790518;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL177";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.72394202659893114 11 -0.72394202659893114 
		25 -0.72394202659893114;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL178";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.36439499068905612 11 0.36439499068905612 
		25 0.36439499068905612;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA495";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.7976222737965317 11 7.7976222737965299 
		25 7.7976222737965299;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA496";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 30.409274105849079 11 30.409274105849079 
		25 30.409274105849079;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA497";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 64.859940280210893 11 64.859940280210878 
		25 64.859940280210878;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL179";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.43524234076486068 11 0.43524234076486068 
		25 0.43524234076486068;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL180";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.82665738350180629 11 -0.82665738350180629 
		25 -0.82665738350180629;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL181";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.27773886459742925 11 0.27773886459742925 
		25 0.27773886459742925;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA498";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA499";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -28.652637602052774 11 -28.652637602052774 
		25 -28.652637602052774;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA500";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -64.676908227303443 11 -64.676908227303443 
		25 -64.676908227303443;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL182";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.75854111686822778 6 -0.70701029034846896 
		24 -0.61083301393139333 25 -0.61083301393139333;
	setAttr -s 4 ".kit[0:3]"  3 9 1 1;
	setAttr -s 4 ".kot[0:3]"  3 9 1 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 0;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "animCurveTL183";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.1932952672205326 6 1.3230213537869435 
		24 0.89950600418209226 25 0.89950600418209226;
	setAttr -s 4 ".kit[0:3]"  3 9 1 1;
	setAttr -s 4 ".kot[0:3]"  3 9 1 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 0;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "animCurveTL184";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.14314299916678522 6 0.13647418015794302 
		24 0.14314299916678522 25 0.14314299916678522;
	setAttr -s 4 ".kit[0:3]"  3 9 1 1;
	setAttr -s 4 ".kot[0:3]"  3 9 1 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 0;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA501";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -5.7993291745893352 6 -5.7993291745893352 
		24 16.226511010665405 25 16.226511010665405;
	setAttr -s 4 ".kit[0:3]"  3 9 1 1;
	setAttr -s 4 ".kot[0:3]"  3 9 1 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 0;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA502";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.228264010471275 6 1.228264010471275 
		24 8.513966085499284 25 8.513966085499284;
	setAttr -s 4 ".kit[0:3]"  3 9 1 1;
	setAttr -s 4 ".kot[0:3]"  3 9 1 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 0;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA503";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 60.456694896838378 6 60.456694896838378 
		24 68.213989601412422 25 68.213989601412422;
	setAttr -s 4 ".kit[0:3]"  3 9 1 1;
	setAttr -s 4 ".kot[0:3]"  3 9 1 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 0;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "animCurveTL185";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.97384023505055983 24 0.8448236677023373 
		25 0.8448236677023373;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL186";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.2525965505547216 24 0.90875111933027442 
		25 0.90875111933027442;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL187";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.097994651149805143 24 -0.097994651149805143 
		25 -0.097994651149805143;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA504";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -12.222987645962959 24 5.4739599453216474 
		25 5.4739599453216474;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA505";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 19.681044208515029 24 -8.5874521608419823 
		25 -8.5874521608419823;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA506";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -65.119655550709027 24 -74.754744621954103 
		25 -74.754744621954103;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL188";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.10167917362943303 24 0.10167917362943303 
		25 0.10167917362943303;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL189";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.40762644910266188 24 -0.40762644910266188 
		25 -0.40762644910266188;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL190";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.93129112588482243 24 -0.93129112588482243 
		25 -0.93129112588482243;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL191";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL192";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL193";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 24 -1 25 -1;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA507";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.061808866237340665 5 17.285260780666771 
		9 14.996420430194194 14 26.210773519878771 21 10.696474705959282 25 21.390837990052347;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA508";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -59.058178941076754 5 -63.191931301103928 
		9 -61.819905792772431 14 -53.238163307408648 21 -63.549686954457052 25 -59.304289309450901;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA509";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 16.57914742975785 5 -28.961493306830913 
		9 -38.552183345411791 14 -47.801796445128701 21 -20.121464262325318 25 -19.490983861901118;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA510";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 12.253734489678925 5 12.515727944153777 
		9 26.860836807744462 14 33.088808467679087 21 15.366066702508039 25 33.71952784055145;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA511";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -65.746751280844975 5 -68.422285803308995 
		9 -64.478098611231005 14 -61.538202533687802 21 -65.502777426417794 25 -62.239941161343829;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA512";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 -13.792456946073651 9 -19.187155291830525 
		14 -16.076588739171239 21 -12.253605392857898 25 -36.328889290840401;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA513";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 15.711328223519061 5 31.526437289979079 
		9 23.641665314913901 14 23.641665314913901 21 23.641665314913901 25 20.405954401180022;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA514";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.5572674112203657 5 17.848459683077682 
		9 17.848459683077682 14 35.392659604351294 21 19.981870659783006 25 26.379869012451593;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA515";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 9.8804672986877904 9 9.8804672986877904 
		14 9.8804672986877904 21 9.8804672986877904 25 -13.345526625793939;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA516";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 1.8171816965037182 9 1.8171816965037182 
		14 1.8171816965037182 21 1.8171816965037182 25 -4.0808358334006334;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA517";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 -4.5099750834803078 9 -4.5099750834803078 
		14 -4.5099750834803078 21 -4.5099750834803078 25 -5.8473224875071317;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA518";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 10.989672158724799 9 10.989672158724799 
		14 7.6965172616157096 21 7.6965172616157096 25 -4.537169720933532;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA519";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 -7.8213229000335263 9 -7.8213229000335263 
		14 -1.1822325767589767 21 -1.1822325767589767 25 -7.117956913487304;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA520";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 7.1689180217311135 9 7.1689180217311135 
		14 -2.7225805701322785 21 -2.7225805701322785 25 -22.114906977828383;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA521";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.2533422302317216 5 8.2533422302317216 
		9 8.2533422302317216 14 8.2533422302317216 21 8.2533422302317216 25 8.2533422302317216;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 23.263402056531085 5 23.263402056531085 
		9 23.263402056531085 14 23.263402056531085 21 23.263402056531085 25 23.263402056531085;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA523";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 20.166277752815617 5 20.166277752815617 
		9 20.166277752815617 14 20.166277752815617 21 20.166277752815617 25 20.166277752815617;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 33.429092416277157 5 33.429092416277157 
		9 33.429092416277157 14 33.429092416277157 21 33.429092416277157 25 33.429092416277157;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA527";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA528";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA529";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA530";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA531";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA532";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 11 13.994403295754109 
		25 13.994403295754109;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA533";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA534";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0 25 0;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA535";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 11 13.994403295754109 
		25 13.994403295754109;
	setAttr -s 3 ".kit[0:2]"  3 1 1;
	setAttr -s 3 ".kot[0:2]"  3 1 5;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA536";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA537";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA538";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 17.254116939558369 5 17.254116939558369 
		9 17.254116939558369 14 17.254116939558369 21 17.254116939558369 25 17.254116939558369;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA539";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA540";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA541";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA542";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.65073001024951671 5 0.65073001024951671 
		9 -9.2506557526471305 14 -16.380826459661783 21 -4.9813407430659282 25 0.65073001024951671;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  0.8049042820930481;
	setAttr -s 6 ".kiy[5]"  0.59340471029281616;
createNode animCurveTA -n "animCurveTA543";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 4.2368721935960938 5 4.2368721935960929 
		9 9.0139437864697509 14 10.262586163063158 21 4.6792815935163325 25 4.2368721935960929;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  0.99832737445831299;
	setAttr -s 6 ".kiy[5]"  -0.057814393192529678;
createNode animCurveTA -n "animCurveTA544";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.6995264082587447 5 2.6995264082587447 
		9 1.9203574071774732 14 -2.0731685891325662 21 -1.5793738771823533 25 2.6995264082587447;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  0.87246626615524292;
	setAttr -s 6 ".kiy[5]"  0.48867431282997131;
createNode animCurveTA -n "animCurveTA545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 -11.849880863988108 9 -11.849880863988108 
		14 -11.849880863988108 21 -3.1304567898930151 25 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  0.92532467842102051;
	setAttr -s 6 ".kiy[5]"  0.37917572259902954;
createNode animCurveTA -n "animCurveTA546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 -1.7848977639002914 
		25 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  0.97377455234527588;
	setAttr -s 6 ".kiy[5]"  0.22751520574092865;
createNode animCurveTA -n "animCurveTA547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0.097602335376249821 
		25 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  0.99991840124130249;
	setAttr -s 6 ".kiy[5]"  -0.012775073759257793;
createNode animCurveTA -n "animCurveTA548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 4.0198472869727979 5 14.082441737146729 
		9 -1.7695154388990864 14 -12.494184135127384 21 -5.8800793953660868 25 -4.7599965713560239;
	setAttr -s 6 ".kit[0:5]"  3 9 1 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 1 9 9 5;
	setAttr -s 6 ".kix[2:5]"  0.3762209415435791 0.98429346084594727 
		0.938426673412323 1;
	setAttr -s 6 ".kiy[2:5]"  -0.92653000354766846 -0.17654010653495789 
		0.34547847509384155 0;
	setAttr -s 6 ".kox[2:5]"  0.37622091174125671 0.98429346084594727 
		0.938426673412323 0;
	setAttr -s 6 ".koy[2:5]"  -0.92653000354766846 -0.17654010653495789 
		0.34547847509384155 0;
createNode animCurveTA -n "animCurveTA549";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 9.1335573833666519 5 21.342939511992213 
		9 9.2907094368090135 14 -2.157481423536789 21 -1.6155781161393779 25 -0.81809016928262102;
	setAttr -s 6 ".kit[0:5]"  3 9 1 9 1 1;
	setAttr -s 6 ".kot[0:5]"  3 9 1 9 1 5;
	setAttr -s 6 ".kix[2:5]"  0.43965664505958557 0.90297049283981323 
		0.94736713171005249 1;
	setAttr -s 6 ".kiy[2:5]"  -0.89816594123840332 -0.4297025203704834 
		0.32014927268028259 0;
	setAttr -s 6 ".kox[2:5]"  0.43965661525726318 0.90297049283981323 
		0.94736713171005249 0;
	setAttr -s 6 ".koy[2:5]"  -0.89816594123840332 -0.4297025203704834 
		0.32014918327331543 0;
createNode animCurveTA -n "animCurveTA550";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.2752136084709536 5 8.7362231131813637 
		9 11.780307693907757 14 11.719276215516221 21 0.63447325065302107 25 -2.8062800556149559;
	setAttr -s 6 ".kit[0:5]"  3 9 9 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 1 1 5;
	setAttr -s 6 ".kix[3:5]"  0.99555855989456177 0.76284652948379517 
		1;
	setAttr -s 6 ".kiy[3:5]"  -0.094144061207771301 -0.64657962322235107 
		0;
	setAttr -s 6 ".kox[3:5]"  0.99555855989456177 0.76284658908843994 
		0;
	setAttr -s 6 ".koy[3:5]"  -0.094144061207771301 -0.6465795636177063 
		0;
createNode animCurveTA -n "animCurveTA551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.8903601258661935 5 1.8903601258661931 
		9 1.8903601258661931 14 1.8903601258661931 21 1.8903601258661931 25 1.8903601258661931;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA552";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.5597289571479038 5 -2.5597289571479034 
		9 -2.5597289571479034 14 -2.5597289571479034 21 -2.5597289571479034 25 -2.5597289571479034;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.0168110874036049 5 2.016811087403604 
		9 2.016811087403604 14 2.016811087403604 21 2.016811087403604 25 2.016811087403604;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.080064458283051 5 27.080064458283051 
		9 27.080064458283051 14 27.080064458283051 21 27.080064458283051 25 27.080064458283051;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA557";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 10.423754966968488 5 10.423754966968488 
		9 10.423754966968488 14 10.423754966968488 21 10.423754966968488 25 10.423754966968488;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA558";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.7228482558439 5 27.722848255843903 
		9 27.722848255843903 14 27.722848255843903 21 27.722848255843903 25 27.722848255843903;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA559";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 21.576484776388224 5 21.576484776388227 
		9 21.576484776388227 14 21.576484776388227 21 21.576484776388227 25 21.576484776388227;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA560";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA561";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA562";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.911632519594587 5 27.911632519594587 
		9 27.911632519594587 14 27.911632519594587 21 27.911632519594587 25 27.911632519594587;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode clipLibrary -n "clipLibrary3";
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
createNode clipLibrary -n "clipLibrary4";
	setAttr -s 168 ".cel[0].cev";
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
	setAttr -s 3 ".sol";
connectAttr "lsa_turn_45_CCW.st" "clipLibrary3.st[0]";
connectAttr "lsa_turn_45_CCW.du" "clipLibrary3.du[0]";
connectAttr "animCurveTL153.a" "clipLibrary3.cel[0].cev[0].cevr";
connectAttr "animCurveTL154.a" "clipLibrary3.cel[0].cev[1].cevr";
connectAttr "animCurveTL155.a" "clipLibrary3.cel[0].cev[2].cevr";
connectAttr "animCurveTL156.a" "clipLibrary3.cel[0].cev[3].cevr";
connectAttr "animCurveTL157.a" "clipLibrary3.cel[0].cev[4].cevr";
connectAttr "animCurveTA444.a" "clipLibrary3.cel[0].cev[5].cevr";
connectAttr "animCurveTU25.a" "clipLibrary3.cel[0].cev[6].cevr";
connectAttr "animCurveTU26.a" "clipLibrary3.cel[0].cev[7].cevr";
connectAttr "animCurveTU27.a" "clipLibrary3.cel[0].cev[8].cevr";
connectAttr "animCurveTU28.a" "clipLibrary3.cel[0].cev[9].cevr";
connectAttr "animCurveTU29.a" "clipLibrary3.cel[0].cev[10].cevr";
connectAttr "animCurveTU30.a" "clipLibrary3.cel[0].cev[11].cevr";
connectAttr "animCurveTU31.a" "clipLibrary3.cel[0].cev[12].cevr";
connectAttr "animCurveTU32.a" "clipLibrary3.cel[0].cev[13].cevr";
connectAttr "animCurveTA445.a" "clipLibrary3.cel[0].cev[14].cevr";
connectAttr "animCurveTA446.a" "clipLibrary3.cel[0].cev[15].cevr";
connectAttr "animCurveTA447.a" "clipLibrary3.cel[0].cev[16].cevr";
connectAttr "animCurveTL158.a" "clipLibrary3.cel[0].cev[17].cevr";
connectAttr "animCurveTL159.a" "clipLibrary3.cel[0].cev[18].cevr";
connectAttr "animCurveTL160.a" "clipLibrary3.cel[0].cev[19].cevr";
connectAttr "animCurveTL161.a" "clipLibrary3.cel[0].cev[20].cevr";
connectAttr "animCurveTL162.a" "clipLibrary3.cel[0].cev[21].cevr";
connectAttr "animCurveTL163.a" "clipLibrary3.cel[0].cev[22].cevr";
connectAttr "animCurveTA448.a" "clipLibrary3.cel[0].cev[23].cevr";
connectAttr "animCurveTA449.a" "clipLibrary3.cel[0].cev[24].cevr";
connectAttr "animCurveTA450.a" "clipLibrary3.cel[0].cev[25].cevr";
connectAttr "animCurveTL164.a" "clipLibrary3.cel[0].cev[26].cevr";
connectAttr "animCurveTL165.a" "clipLibrary3.cel[0].cev[27].cevr";
connectAttr "animCurveTL166.a" "clipLibrary3.cel[0].cev[28].cevr";
connectAttr "animCurveTA451.a" "clipLibrary3.cel[0].cev[29].cevr";
connectAttr "animCurveTA452.a" "clipLibrary3.cel[0].cev[30].cevr";
connectAttr "animCurveTA453.a" "clipLibrary3.cel[0].cev[31].cevr";
connectAttr "animCurveTA454.a" "clipLibrary3.cel[0].cev[32].cevr";
connectAttr "animCurveTA455.a" "clipLibrary3.cel[0].cev[33].cevr";
connectAttr "animCurveTA456.a" "clipLibrary3.cel[0].cev[34].cevr";
connectAttr "animCurveTA457.a" "clipLibrary3.cel[0].cev[35].cevr";
connectAttr "animCurveTA458.a" "clipLibrary3.cel[0].cev[36].cevr";
connectAttr "animCurveTA459.a" "clipLibrary3.cel[0].cev[37].cevr";
connectAttr "animCurveTA460.a" "clipLibrary3.cel[0].cev[38].cevr";
connectAttr "animCurveTA461.a" "clipLibrary3.cel[0].cev[39].cevr";
connectAttr "animCurveTA462.a" "clipLibrary3.cel[0].cev[40].cevr";
connectAttr "animCurveTA463.a" "clipLibrary3.cel[0].cev[41].cevr";
connectAttr "animCurveTA464.a" "clipLibrary3.cel[0].cev[42].cevr";
connectAttr "animCurveTA465.a" "clipLibrary3.cel[0].cev[43].cevr";
connectAttr "animCurveTL167.a" "clipLibrary3.cel[0].cev[44].cevr";
connectAttr "animCurveTL168.a" "clipLibrary3.cel[0].cev[45].cevr";
connectAttr "animCurveTL169.a" "clipLibrary3.cel[0].cev[46].cevr";
connectAttr "animCurveTL170.a" "clipLibrary3.cel[0].cev[47].cevr";
connectAttr "animCurveTL171.a" "clipLibrary3.cel[0].cev[48].cevr";
connectAttr "animCurveTL172.a" "clipLibrary3.cel[0].cev[49].cevr";
connectAttr "animCurveTL173.a" "clipLibrary3.cel[0].cev[50].cevr";
connectAttr "animCurveTL174.a" "clipLibrary3.cel[0].cev[51].cevr";
connectAttr "animCurveTL175.a" "clipLibrary3.cel[0].cev[52].cevr";
connectAttr "animCurveTA466.a" "clipLibrary3.cel[0].cev[53].cevr";
connectAttr "animCurveTA467.a" "clipLibrary3.cel[0].cev[54].cevr";
connectAttr "animCurveTA468.a" "clipLibrary3.cel[0].cev[55].cevr";
connectAttr "animCurveTA469.a" "clipLibrary3.cel[0].cev[56].cevr";
connectAttr "animCurveTA470.a" "clipLibrary3.cel[0].cev[57].cevr";
connectAttr "animCurveTA471.a" "clipLibrary3.cel[0].cev[58].cevr";
connectAttr "animCurveTA472.a" "clipLibrary3.cel[0].cev[59].cevr";
connectAttr "animCurveTA473.a" "clipLibrary3.cel[0].cev[60].cevr";
connectAttr "animCurveTA474.a" "clipLibrary3.cel[0].cev[61].cevr";
connectAttr "animCurveTA475.a" "clipLibrary3.cel[0].cev[62].cevr";
connectAttr "animCurveTA476.a" "clipLibrary3.cel[0].cev[63].cevr";
connectAttr "animCurveTA477.a" "clipLibrary3.cel[0].cev[64].cevr";
connectAttr "animCurveTA478.a" "clipLibrary3.cel[0].cev[65].cevr";
connectAttr "animCurveTA479.a" "clipLibrary3.cel[0].cev[66].cevr";
connectAttr "animCurveTA480.a" "clipLibrary3.cel[0].cev[67].cevr";
connectAttr "animCurveTA481.a" "clipLibrary3.cel[0].cev[68].cevr";
connectAttr "animCurveTA482.a" "clipLibrary3.cel[0].cev[69].cevr";
connectAttr "animCurveTA483.a" "clipLibrary3.cel[0].cev[70].cevr";
connectAttr "animCurveTA484.a" "clipLibrary3.cel[0].cev[71].cevr";
connectAttr "animCurveTA485.a" "clipLibrary3.cel[0].cev[72].cevr";
connectAttr "animCurveTA486.a" "clipLibrary3.cel[0].cev[73].cevr";
connectAttr "animCurveTA487.a" "clipLibrary3.cel[0].cev[74].cevr";
connectAttr "animCurveTA488.a" "clipLibrary3.cel[0].cev[75].cevr";
connectAttr "animCurveTA489.a" "clipLibrary3.cel[0].cev[76].cevr";
connectAttr "animCurveTA490.a" "clipLibrary3.cel[0].cev[77].cevr";
connectAttr "animCurveTA491.a" "clipLibrary3.cel[0].cev[78].cevr";
connectAttr "animCurveTA492.a" "clipLibrary3.cel[0].cev[79].cevr";
connectAttr "animCurveTA493.a" "clipLibrary3.cel[0].cev[80].cevr";
connectAttr "animCurveTA494.a" "clipLibrary3.cel[0].cev[81].cevr";
connectAttr "animCurveTL176.a" "clipLibrary3.cel[0].cev[82].cevr";
connectAttr "animCurveTL177.a" "clipLibrary3.cel[0].cev[83].cevr";
connectAttr "animCurveTL178.a" "clipLibrary3.cel[0].cev[84].cevr";
connectAttr "animCurveTA495.a" "clipLibrary3.cel[0].cev[85].cevr";
connectAttr "animCurveTA496.a" "clipLibrary3.cel[0].cev[86].cevr";
connectAttr "animCurveTA497.a" "clipLibrary3.cel[0].cev[87].cevr";
connectAttr "animCurveTL179.a" "clipLibrary3.cel[0].cev[88].cevr";
connectAttr "animCurveTL180.a" "clipLibrary3.cel[0].cev[89].cevr";
connectAttr "animCurveTL181.a" "clipLibrary3.cel[0].cev[90].cevr";
connectAttr "animCurveTA498.a" "clipLibrary3.cel[0].cev[91].cevr";
connectAttr "animCurveTA499.a" "clipLibrary3.cel[0].cev[92].cevr";
connectAttr "animCurveTA500.a" "clipLibrary3.cel[0].cev[93].cevr";
connectAttr "animCurveTL182.a" "clipLibrary3.cel[0].cev[94].cevr";
connectAttr "animCurveTL183.a" "clipLibrary3.cel[0].cev[95].cevr";
connectAttr "animCurveTL184.a" "clipLibrary3.cel[0].cev[96].cevr";
connectAttr "animCurveTA501.a" "clipLibrary3.cel[0].cev[97].cevr";
connectAttr "animCurveTA502.a" "clipLibrary3.cel[0].cev[98].cevr";
connectAttr "animCurveTA503.a" "clipLibrary3.cel[0].cev[99].cevr";
connectAttr "animCurveTL185.a" "clipLibrary3.cel[0].cev[100].cevr";
connectAttr "animCurveTL186.a" "clipLibrary3.cel[0].cev[101].cevr";
connectAttr "animCurveTL187.a" "clipLibrary3.cel[0].cev[102].cevr";
connectAttr "animCurveTA504.a" "clipLibrary3.cel[0].cev[103].cevr";
connectAttr "animCurveTA505.a" "clipLibrary3.cel[0].cev[104].cevr";
connectAttr "animCurveTA506.a" "clipLibrary3.cel[0].cev[105].cevr";
connectAttr "animCurveTL188.a" "clipLibrary3.cel[0].cev[106].cevr";
connectAttr "animCurveTL189.a" "clipLibrary3.cel[0].cev[107].cevr";
connectAttr "animCurveTL190.a" "clipLibrary3.cel[0].cev[108].cevr";
connectAttr "animCurveTL191.a" "clipLibrary3.cel[0].cev[109].cevr";
connectAttr "animCurveTL192.a" "clipLibrary3.cel[0].cev[110].cevr";
connectAttr "animCurveTL193.a" "clipLibrary3.cel[0].cev[111].cevr";
connectAttr "animCurveTA507.a" "clipLibrary3.cel[0].cev[112].cevr";
connectAttr "animCurveTA508.a" "clipLibrary3.cel[0].cev[113].cevr";
connectAttr "animCurveTA509.a" "clipLibrary3.cel[0].cev[114].cevr";
connectAttr "animCurveTA510.a" "clipLibrary3.cel[0].cev[115].cevr";
connectAttr "animCurveTA511.a" "clipLibrary3.cel[0].cev[116].cevr";
connectAttr "animCurveTA512.a" "clipLibrary3.cel[0].cev[117].cevr";
connectAttr "animCurveTA513.a" "clipLibrary3.cel[0].cev[118].cevr";
connectAttr "animCurveTA514.a" "clipLibrary3.cel[0].cev[119].cevr";
connectAttr "animCurveTA515.a" "clipLibrary3.cel[0].cev[120].cevr";
connectAttr "animCurveTA516.a" "clipLibrary3.cel[0].cev[121].cevr";
connectAttr "animCurveTA517.a" "clipLibrary3.cel[0].cev[122].cevr";
connectAttr "animCurveTA518.a" "clipLibrary3.cel[0].cev[123].cevr";
connectAttr "animCurveTA519.a" "clipLibrary3.cel[0].cev[124].cevr";
connectAttr "animCurveTA520.a" "clipLibrary3.cel[0].cev[125].cevr";
connectAttr "animCurveTA521.a" "clipLibrary3.cel[0].cev[126].cevr";
connectAttr "animCurveTA522.a" "clipLibrary3.cel[0].cev[127].cevr";
connectAttr "animCurveTA523.a" "clipLibrary3.cel[0].cev[128].cevr";
connectAttr "animCurveTA524.a" "clipLibrary3.cel[0].cev[129].cevr";
connectAttr "animCurveTA525.a" "clipLibrary3.cel[0].cev[130].cevr";
connectAttr "animCurveTA526.a" "clipLibrary3.cel[0].cev[131].cevr";
connectAttr "animCurveTA527.a" "clipLibrary3.cel[0].cev[132].cevr";
connectAttr "animCurveTA528.a" "clipLibrary3.cel[0].cev[133].cevr";
connectAttr "animCurveTA529.a" "clipLibrary3.cel[0].cev[134].cevr";
connectAttr "animCurveTA530.a" "clipLibrary3.cel[0].cev[135].cevr";
connectAttr "animCurveTA531.a" "clipLibrary3.cel[0].cev[136].cevr";
connectAttr "animCurveTA532.a" "clipLibrary3.cel[0].cev[137].cevr";
connectAttr "animCurveTA533.a" "clipLibrary3.cel[0].cev[138].cevr";
connectAttr "animCurveTA534.a" "clipLibrary3.cel[0].cev[139].cevr";
connectAttr "animCurveTA535.a" "clipLibrary3.cel[0].cev[140].cevr";
connectAttr "animCurveTA536.a" "clipLibrary3.cel[0].cev[141].cevr";
connectAttr "animCurveTA537.a" "clipLibrary3.cel[0].cev[142].cevr";
connectAttr "animCurveTA538.a" "clipLibrary3.cel[0].cev[143].cevr";
connectAttr "animCurveTA539.a" "clipLibrary3.cel[0].cev[144].cevr";
connectAttr "animCurveTA540.a" "clipLibrary3.cel[0].cev[145].cevr";
connectAttr "animCurveTA541.a" "clipLibrary3.cel[0].cev[146].cevr";
connectAttr "animCurveTA542.a" "clipLibrary3.cel[0].cev[147].cevr";
connectAttr "animCurveTA543.a" "clipLibrary3.cel[0].cev[148].cevr";
connectAttr "animCurveTA544.a" "clipLibrary3.cel[0].cev[149].cevr";
connectAttr "animCurveTA545.a" "clipLibrary3.cel[0].cev[150].cevr";
connectAttr "animCurveTA546.a" "clipLibrary3.cel[0].cev[151].cevr";
connectAttr "animCurveTA547.a" "clipLibrary3.cel[0].cev[152].cevr";
connectAttr "animCurveTA548.a" "clipLibrary3.cel[0].cev[153].cevr";
connectAttr "animCurveTA549.a" "clipLibrary3.cel[0].cev[154].cevr";
connectAttr "animCurveTA550.a" "clipLibrary3.cel[0].cev[155].cevr";
connectAttr "animCurveTA551.a" "clipLibrary3.cel[0].cev[156].cevr";
connectAttr "animCurveTA552.a" "clipLibrary3.cel[0].cev[157].cevr";
connectAttr "animCurveTA553.a" "clipLibrary3.cel[0].cev[158].cevr";
connectAttr "animCurveTA554.a" "clipLibrary3.cel[0].cev[159].cevr";
connectAttr "animCurveTA555.a" "clipLibrary3.cel[0].cev[160].cevr";
connectAttr "animCurveTA556.a" "clipLibrary3.cel[0].cev[161].cevr";
connectAttr "animCurveTA557.a" "clipLibrary3.cel[0].cev[162].cevr";
connectAttr "animCurveTA558.a" "clipLibrary3.cel[0].cev[163].cevr";
connectAttr "animCurveTA559.a" "clipLibrary3.cel[0].cev[164].cevr";
connectAttr "animCurveTA560.a" "clipLibrary3.cel[0].cev[165].cevr";
connectAttr "animCurveTA561.a" "clipLibrary3.cel[0].cev[166].cevr";
connectAttr "animCurveTA562.a" "clipLibrary3.cel[0].cev[167].cevr";
connectAttr "lsa_turn_45_CCW.st" "clipLibrary4.st[0]";
connectAttr "lsa_turn_45_CCW.du" "clipLibrary4.du[0]";
connectAttr "animCurveTL153.a" "clipLibrary4.cel[0].cev[0].cevr";
connectAttr "animCurveTL154.a" "clipLibrary4.cel[0].cev[1].cevr";
connectAttr "animCurveTL155.a" "clipLibrary4.cel[0].cev[2].cevr";
connectAttr "animCurveTL156.a" "clipLibrary4.cel[0].cev[3].cevr";
connectAttr "animCurveTL157.a" "clipLibrary4.cel[0].cev[4].cevr";
connectAttr "animCurveTA444.a" "clipLibrary4.cel[0].cev[5].cevr";
connectAttr "animCurveTU25.a" "clipLibrary4.cel[0].cev[6].cevr";
connectAttr "animCurveTU26.a" "clipLibrary4.cel[0].cev[7].cevr";
connectAttr "animCurveTU27.a" "clipLibrary4.cel[0].cev[8].cevr";
connectAttr "animCurveTU28.a" "clipLibrary4.cel[0].cev[9].cevr";
connectAttr "animCurveTU29.a" "clipLibrary4.cel[0].cev[10].cevr";
connectAttr "animCurveTU30.a" "clipLibrary4.cel[0].cev[11].cevr";
connectAttr "animCurveTU31.a" "clipLibrary4.cel[0].cev[12].cevr";
connectAttr "animCurveTU32.a" "clipLibrary4.cel[0].cev[13].cevr";
connectAttr "animCurveTA445.a" "clipLibrary4.cel[0].cev[14].cevr";
connectAttr "animCurveTA446.a" "clipLibrary4.cel[0].cev[15].cevr";
connectAttr "animCurveTA447.a" "clipLibrary4.cel[0].cev[16].cevr";
connectAttr "animCurveTL158.a" "clipLibrary4.cel[0].cev[17].cevr";
connectAttr "animCurveTL159.a" "clipLibrary4.cel[0].cev[18].cevr";
connectAttr "animCurveTL160.a" "clipLibrary4.cel[0].cev[19].cevr";
connectAttr "animCurveTL161.a" "clipLibrary4.cel[0].cev[20].cevr";
connectAttr "animCurveTL162.a" "clipLibrary4.cel[0].cev[21].cevr";
connectAttr "animCurveTL163.a" "clipLibrary4.cel[0].cev[22].cevr";
connectAttr "animCurveTA448.a" "clipLibrary4.cel[0].cev[23].cevr";
connectAttr "animCurveTA449.a" "clipLibrary4.cel[0].cev[24].cevr";
connectAttr "animCurveTA450.a" "clipLibrary4.cel[0].cev[25].cevr";
connectAttr "animCurveTL164.a" "clipLibrary4.cel[0].cev[26].cevr";
connectAttr "animCurveTL165.a" "clipLibrary4.cel[0].cev[27].cevr";
connectAttr "animCurveTL166.a" "clipLibrary4.cel[0].cev[28].cevr";
connectAttr "animCurveTA451.a" "clipLibrary4.cel[0].cev[29].cevr";
connectAttr "animCurveTA452.a" "clipLibrary4.cel[0].cev[30].cevr";
connectAttr "animCurveTA453.a" "clipLibrary4.cel[0].cev[31].cevr";
connectAttr "animCurveTA454.a" "clipLibrary4.cel[0].cev[32].cevr";
connectAttr "animCurveTA455.a" "clipLibrary4.cel[0].cev[33].cevr";
connectAttr "animCurveTA456.a" "clipLibrary4.cel[0].cev[34].cevr";
connectAttr "animCurveTA457.a" "clipLibrary4.cel[0].cev[35].cevr";
connectAttr "animCurveTA458.a" "clipLibrary4.cel[0].cev[36].cevr";
connectAttr "animCurveTA459.a" "clipLibrary4.cel[0].cev[37].cevr";
connectAttr "animCurveTA460.a" "clipLibrary4.cel[0].cev[38].cevr";
connectAttr "animCurveTA461.a" "clipLibrary4.cel[0].cev[39].cevr";
connectAttr "animCurveTA462.a" "clipLibrary4.cel[0].cev[40].cevr";
connectAttr "animCurveTA463.a" "clipLibrary4.cel[0].cev[41].cevr";
connectAttr "animCurveTA464.a" "clipLibrary4.cel[0].cev[42].cevr";
connectAttr "animCurveTA465.a" "clipLibrary4.cel[0].cev[43].cevr";
connectAttr "animCurveTL167.a" "clipLibrary4.cel[0].cev[44].cevr";
connectAttr "animCurveTL168.a" "clipLibrary4.cel[0].cev[45].cevr";
connectAttr "animCurveTL169.a" "clipLibrary4.cel[0].cev[46].cevr";
connectAttr "animCurveTL170.a" "clipLibrary4.cel[0].cev[47].cevr";
connectAttr "animCurveTL171.a" "clipLibrary4.cel[0].cev[48].cevr";
connectAttr "animCurveTL172.a" "clipLibrary4.cel[0].cev[49].cevr";
connectAttr "animCurveTL173.a" "clipLibrary4.cel[0].cev[50].cevr";
connectAttr "animCurveTL174.a" "clipLibrary4.cel[0].cev[51].cevr";
connectAttr "animCurveTL175.a" "clipLibrary4.cel[0].cev[52].cevr";
connectAttr "animCurveTA466.a" "clipLibrary4.cel[0].cev[53].cevr";
connectAttr "animCurveTA467.a" "clipLibrary4.cel[0].cev[54].cevr";
connectAttr "animCurveTA468.a" "clipLibrary4.cel[0].cev[55].cevr";
connectAttr "animCurveTA469.a" "clipLibrary4.cel[0].cev[56].cevr";
connectAttr "animCurveTA470.a" "clipLibrary4.cel[0].cev[57].cevr";
connectAttr "animCurveTA471.a" "clipLibrary4.cel[0].cev[58].cevr";
connectAttr "animCurveTA472.a" "clipLibrary4.cel[0].cev[59].cevr";
connectAttr "animCurveTA473.a" "clipLibrary4.cel[0].cev[60].cevr";
connectAttr "animCurveTA474.a" "clipLibrary4.cel[0].cev[61].cevr";
connectAttr "animCurveTA475.a" "clipLibrary4.cel[0].cev[62].cevr";
connectAttr "animCurveTA476.a" "clipLibrary4.cel[0].cev[63].cevr";
connectAttr "animCurveTA477.a" "clipLibrary4.cel[0].cev[64].cevr";
connectAttr "animCurveTA478.a" "clipLibrary4.cel[0].cev[65].cevr";
connectAttr "animCurveTA479.a" "clipLibrary4.cel[0].cev[66].cevr";
connectAttr "animCurveTA480.a" "clipLibrary4.cel[0].cev[67].cevr";
connectAttr "animCurveTA481.a" "clipLibrary4.cel[0].cev[68].cevr";
connectAttr "animCurveTA482.a" "clipLibrary4.cel[0].cev[69].cevr";
connectAttr "animCurveTA483.a" "clipLibrary4.cel[0].cev[70].cevr";
connectAttr "animCurveTA484.a" "clipLibrary4.cel[0].cev[71].cevr";
connectAttr "animCurveTA485.a" "clipLibrary4.cel[0].cev[72].cevr";
connectAttr "animCurveTA486.a" "clipLibrary4.cel[0].cev[73].cevr";
connectAttr "animCurveTA487.a" "clipLibrary4.cel[0].cev[74].cevr";
connectAttr "animCurveTA488.a" "clipLibrary4.cel[0].cev[75].cevr";
connectAttr "animCurveTA489.a" "clipLibrary4.cel[0].cev[76].cevr";
connectAttr "animCurveTA490.a" "clipLibrary4.cel[0].cev[77].cevr";
connectAttr "animCurveTA491.a" "clipLibrary4.cel[0].cev[78].cevr";
connectAttr "animCurveTA492.a" "clipLibrary4.cel[0].cev[79].cevr";
connectAttr "animCurveTA493.a" "clipLibrary4.cel[0].cev[80].cevr";
connectAttr "animCurveTA494.a" "clipLibrary4.cel[0].cev[81].cevr";
connectAttr "animCurveTL176.a" "clipLibrary4.cel[0].cev[82].cevr";
connectAttr "animCurveTL177.a" "clipLibrary4.cel[0].cev[83].cevr";
connectAttr "animCurveTL178.a" "clipLibrary4.cel[0].cev[84].cevr";
connectAttr "animCurveTA495.a" "clipLibrary4.cel[0].cev[85].cevr";
connectAttr "animCurveTA496.a" "clipLibrary4.cel[0].cev[86].cevr";
connectAttr "animCurveTA497.a" "clipLibrary4.cel[0].cev[87].cevr";
connectAttr "animCurveTL179.a" "clipLibrary4.cel[0].cev[88].cevr";
connectAttr "animCurveTL180.a" "clipLibrary4.cel[0].cev[89].cevr";
connectAttr "animCurveTL181.a" "clipLibrary4.cel[0].cev[90].cevr";
connectAttr "animCurveTA498.a" "clipLibrary4.cel[0].cev[91].cevr";
connectAttr "animCurveTA499.a" "clipLibrary4.cel[0].cev[92].cevr";
connectAttr "animCurveTA500.a" "clipLibrary4.cel[0].cev[93].cevr";
connectAttr "animCurveTL182.a" "clipLibrary4.cel[0].cev[94].cevr";
connectAttr "animCurveTL183.a" "clipLibrary4.cel[0].cev[95].cevr";
connectAttr "animCurveTL184.a" "clipLibrary4.cel[0].cev[96].cevr";
connectAttr "animCurveTA501.a" "clipLibrary4.cel[0].cev[97].cevr";
connectAttr "animCurveTA502.a" "clipLibrary4.cel[0].cev[98].cevr";
connectAttr "animCurveTA503.a" "clipLibrary4.cel[0].cev[99].cevr";
connectAttr "animCurveTL185.a" "clipLibrary4.cel[0].cev[100].cevr";
connectAttr "animCurveTL186.a" "clipLibrary4.cel[0].cev[101].cevr";
connectAttr "animCurveTL187.a" "clipLibrary4.cel[0].cev[102].cevr";
connectAttr "animCurveTA504.a" "clipLibrary4.cel[0].cev[103].cevr";
connectAttr "animCurveTA505.a" "clipLibrary4.cel[0].cev[104].cevr";
connectAttr "animCurveTA506.a" "clipLibrary4.cel[0].cev[105].cevr";
connectAttr "animCurveTL188.a" "clipLibrary4.cel[0].cev[106].cevr";
connectAttr "animCurveTL189.a" "clipLibrary4.cel[0].cev[107].cevr";
connectAttr "animCurveTL190.a" "clipLibrary4.cel[0].cev[108].cevr";
connectAttr "animCurveTL191.a" "clipLibrary4.cel[0].cev[109].cevr";
connectAttr "animCurveTL192.a" "clipLibrary4.cel[0].cev[110].cevr";
connectAttr "animCurveTL193.a" "clipLibrary4.cel[0].cev[111].cevr";
connectAttr "animCurveTA507.a" "clipLibrary4.cel[0].cev[112].cevr";
connectAttr "animCurveTA508.a" "clipLibrary4.cel[0].cev[113].cevr";
connectAttr "animCurveTA509.a" "clipLibrary4.cel[0].cev[114].cevr";
connectAttr "animCurveTA510.a" "clipLibrary4.cel[0].cev[115].cevr";
connectAttr "animCurveTA511.a" "clipLibrary4.cel[0].cev[116].cevr";
connectAttr "animCurveTA512.a" "clipLibrary4.cel[0].cev[117].cevr";
connectAttr "animCurveTA513.a" "clipLibrary4.cel[0].cev[118].cevr";
connectAttr "animCurveTA514.a" "clipLibrary4.cel[0].cev[119].cevr";
connectAttr "animCurveTA515.a" "clipLibrary4.cel[0].cev[120].cevr";
connectAttr "animCurveTA516.a" "clipLibrary4.cel[0].cev[121].cevr";
connectAttr "animCurveTA517.a" "clipLibrary4.cel[0].cev[122].cevr";
connectAttr "animCurveTA518.a" "clipLibrary4.cel[0].cev[123].cevr";
connectAttr "animCurveTA519.a" "clipLibrary4.cel[0].cev[124].cevr";
connectAttr "animCurveTA520.a" "clipLibrary4.cel[0].cev[125].cevr";
connectAttr "animCurveTA521.a" "clipLibrary4.cel[0].cev[126].cevr";
connectAttr "animCurveTA522.a" "clipLibrary4.cel[0].cev[127].cevr";
connectAttr "animCurveTA523.a" "clipLibrary4.cel[0].cev[128].cevr";
connectAttr "animCurveTA524.a" "clipLibrary4.cel[0].cev[129].cevr";
connectAttr "animCurveTA525.a" "clipLibrary4.cel[0].cev[130].cevr";
connectAttr "animCurveTA526.a" "clipLibrary4.cel[0].cev[131].cevr";
connectAttr "animCurveTA527.a" "clipLibrary4.cel[0].cev[132].cevr";
connectAttr "animCurveTA528.a" "clipLibrary4.cel[0].cev[133].cevr";
connectAttr "animCurveTA529.a" "clipLibrary4.cel[0].cev[134].cevr";
connectAttr "animCurveTA530.a" "clipLibrary4.cel[0].cev[135].cevr";
connectAttr "animCurveTA531.a" "clipLibrary4.cel[0].cev[136].cevr";
connectAttr "animCurveTA532.a" "clipLibrary4.cel[0].cev[137].cevr";
connectAttr "animCurveTA533.a" "clipLibrary4.cel[0].cev[138].cevr";
connectAttr "animCurveTA534.a" "clipLibrary4.cel[0].cev[139].cevr";
connectAttr "animCurveTA535.a" "clipLibrary4.cel[0].cev[140].cevr";
connectAttr "animCurveTA536.a" "clipLibrary4.cel[0].cev[141].cevr";
connectAttr "animCurveTA537.a" "clipLibrary4.cel[0].cev[142].cevr";
connectAttr "animCurveTA538.a" "clipLibrary4.cel[0].cev[143].cevr";
connectAttr "animCurveTA539.a" "clipLibrary4.cel[0].cev[144].cevr";
connectAttr "animCurveTA540.a" "clipLibrary4.cel[0].cev[145].cevr";
connectAttr "animCurveTA541.a" "clipLibrary4.cel[0].cev[146].cevr";
connectAttr "animCurveTA542.a" "clipLibrary4.cel[0].cev[147].cevr";
connectAttr "animCurveTA543.a" "clipLibrary4.cel[0].cev[148].cevr";
connectAttr "animCurveTA544.a" "clipLibrary4.cel[0].cev[149].cevr";
connectAttr "animCurveTA545.a" "clipLibrary4.cel[0].cev[150].cevr";
connectAttr "animCurveTA546.a" "clipLibrary4.cel[0].cev[151].cevr";
connectAttr "animCurveTA547.a" "clipLibrary4.cel[0].cev[152].cevr";
connectAttr "animCurveTA548.a" "clipLibrary4.cel[0].cev[153].cevr";
connectAttr "animCurveTA549.a" "clipLibrary4.cel[0].cev[154].cevr";
connectAttr "animCurveTA550.a" "clipLibrary4.cel[0].cev[155].cevr";
connectAttr "animCurveTA551.a" "clipLibrary4.cel[0].cev[156].cevr";
connectAttr "animCurveTA552.a" "clipLibrary4.cel[0].cev[157].cevr";
connectAttr "animCurveTA553.a" "clipLibrary4.cel[0].cev[158].cevr";
connectAttr "animCurveTA554.a" "clipLibrary4.cel[0].cev[159].cevr";
connectAttr "animCurveTA555.a" "clipLibrary4.cel[0].cev[160].cevr";
connectAttr "animCurveTA556.a" "clipLibrary4.cel[0].cev[161].cevr";
connectAttr "animCurveTA557.a" "clipLibrary4.cel[0].cev[162].cevr";
connectAttr "animCurveTA558.a" "clipLibrary4.cel[0].cev[163].cevr";
connectAttr "animCurveTA559.a" "clipLibrary4.cel[0].cev[164].cevr";
connectAttr "animCurveTA560.a" "clipLibrary4.cel[0].cev[165].cevr";
connectAttr "animCurveTA561.a" "clipLibrary4.cel[0].cev[166].cevr";
connectAttr "animCurveTA562.a" "clipLibrary4.cel[0].cev[167].cevr";
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
// End of lsa-m_turn_45_CCW.ma
