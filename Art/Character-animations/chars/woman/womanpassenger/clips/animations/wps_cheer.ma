//Maya ASCII 4.0 scene
//Name: wps_cheer.ma
//Last modified: Wed, Aug 14, 2002 11:28:35 AM
requires maya "4.0";
requires "p3dmayaexp" "18.2";
requires "p3dSimpleShader" "18.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "wps_cheerSource";
	setAttr ".ihi" 0;
	setAttr ".du" 25;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL247";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL248";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.98752775572053031 25 0.98752775572053031;
createNode animCurveTL -n "animCurveTL250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTL -n "animCurveTL251";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.7862033266438363 25 0.7862033266438363;
createNode animCurveTA -n "animCurveTA730";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTU -n "animCurveTU25";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU26";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU27";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU28";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU29";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU30";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "wps_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTU -n "wps_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "animCurveTA731";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA732";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA733";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL252";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL253";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL254";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.0182182727496343 5 1.0182182727496343 
		10 1.0182182727496343 18 1.0182182727496343 21 1.0182182727496343 25 1.0182182727496343;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.51781298511506035 5 0.51781298511506035 
		10 0.51781298511506035 18 0.51781298511506035 21 0.51781298511506035 25 0.51781298511506035;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.725016696635667 5 1.725016696635667 
		10 1.725016696635667 18 1.725016696635667 21 1.725016696635667 25 1.725016696635667;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA734";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -36.819011955683756 5 -36.819011955683756 
		10 -36.819011955683756 18 -36.819011955683756 21 -36.819011955683756 25 -36.819011955683756;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA735";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 10 0 18 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA736";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 10 0 18 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.3209532433521722 5 1.3209532433521722 
		10 1.3209532433521722 18 1.3209532433521722 21 1.3209532433521722 25 1.3209532433521722;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.49929236591446868 5 0.49929236591446868 
		10 0.49929236591446868 18 0.49929236591446868 21 0.49929236591446868 25 0.49929236591446868;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.7640779368499853 5 1.7640779368499853 
		10 1.7640779368499853 18 1.7640779368499853 21 1.7640779368499853 25 1.7640779368499853;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA737";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -24.2048482305423 5 -24.2048482305423 
		10 -24.2048482305423 18 -24.2048482305423 21 -24.2048482305423 25 -24.2048482305423;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA738";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 10 0 18 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA739";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 10 0 18 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA740";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA741";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA742";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA743";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA744";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA745";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA746";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA747";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA748";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA749";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA750";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA751";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "animCurveTL261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 10 0 18 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 10 0 18 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 5 1 10 1 18 1 21 1 25 1;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 10 0 18 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL265";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 10 0 18 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 5 1 10 1 18 1 21 1 25 1;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.2031997596013333 5 1.2031997596013333 
		10 1.2031997596013333 18 1.2031997596013333 21 1.2031997596013333 25 1.2031997596013333;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.74320840376740638 5 0.74320840376740638 
		10 0.74320840376740638 18 0.74320840376740638 21 0.74320840376740638 25 0.74320840376740638;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.95790690250061006 5 0.95790690250061006 
		10 0.95790690250061006 18 0.95790690250061006 21 0.95790690250061006 25 0.95790690250061006;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA752";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -47.088616656908435 5 -42.642022687680466 
		10 -39.48071283258647 18 -39.48071283258647 21 -42.145873864627767 25 -47.088616656908435;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.92900466918945313 0.99199110269546509 
		0.99204891920089722 0.86912482976913452 0.83959132432937622;
	setAttr -s 6 ".kiy[0:5]"  0 0.3700680136680603 0.12630778551101685 
		-0.12585267424583435 -0.49459275603294373 -0.54321855306625366;
	setAttr -s 6 ".kox[0:5]"  1 0.92900466918945313 0.99199110269546509 
		0.99204891920089722 0.86912482976913452 0.83959132432937622;
	setAttr -s 6 ".koy[0:5]"  0 0.3700680136680603 0.12630778551101685 
		-0.12585267424583435 -0.49459275603294373 -0.54321855306625366;
createNode animCurveTA -n "animCurveTA753";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.0975263990809503 5 -0.075719025365738532 
		10 -0.7704340318264844 18 -0.7704340318264844 21 2.0965477913704698 25 -2.0975263990809503;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.99759453535079956 0.99960875511169434 
		0.99081629514694214 0.9951092004776001 0.87658464908599854;
	setAttr -s 6 ".kiy[0:5]"  0 0.069319248199462891 -0.027969971299171448 
		0.13521474599838257 -0.098780788481235504 -0.4812476634979248;
	setAttr -s 6 ".kox[0:5]"  1 0.99759453535079956 0.99960875511169434 
		0.99081629514694214 0.9951092004776001 0.87658464908599854;
	setAttr -s 6 ".koy[0:5]"  0 0.069319248199462891 -0.027969971299171448 
		0.13521474599838257 -0.098780788481235504 -0.4812476634979248;
createNode animCurveTA -n "animCurveTA754";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.53932213336905643 5 1.4385680553909641 
		10 -1.4422891339787827 18 -1.4422891339787827 21 2.942452855186664 25 0.53932213336905643;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.99466031789779663 0.9933355450630188 
		0.97890609502792358 0.98919254541397095 0.95391637086868286;
	setAttr -s 6 ".kiy[0:5]"  0 -0.10320290178060532 -0.11525850743055344 
		0.20431065559387207 0.14662225544452667 -0.30007261037826538;
	setAttr -s 6 ".kox[0:5]"  1 0.99466031789779663 0.9933355450630188 
		0.97890609502792358 0.98919254541397095 0.95391637086868286;
	setAttr -s 6 ".koy[0:5]"  0 -0.10320290178060532 -0.11525850743055344 
		0.20431065559387207 0.14662225544452667 -0.30007261037826538;
createNode animCurveTA -n "animCurveTA755";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA756";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA757";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA758";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA759";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA760";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA761";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA762";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA763";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA764";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA765";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA766";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA767";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA768";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA769";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA770";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA771";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA772";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA773";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA774";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA775";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 10 0 18 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA776";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 10 0 18 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA777";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 -37.313732430097119 10 -37.313732430097119 
		18 -37.313732430097119 21 -24.107064727335942 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.45562413334846497 1 0.84661191701889038 
		0.33729124069213867 0.30209055542945862;
	setAttr -s 6 ".kiy[0:5]"  0 -0.89017224311828613 0 0.53221070766448975 
		0.94140034914016724 0.95327925682067871;
	setAttr -s 6 ".kox[0:5]"  1 0.45562413334846497 1 0.84661191701889038 
		0.33729124069213867 0.30209055542945862;
	setAttr -s 6 ".koy[0:5]"  0 -0.89017224311828613 0 0.53221070766448975 
		0.94140034914016724 0.95327925682067871;
createNode animCurveTA -n "animCurveTA778";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  5 0 10 0 18 0 21 0 25 0;
createNode animCurveTA -n "animCurveTA779";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  5 0 10 0 18 0 21 0 25 0;
createNode animCurveTA -n "animCurveTA780";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  5 0 10 0 18 0 21 0 25 0;
createNode animCurveTL -n "Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -0.16261187792304868 1 -0.20733556443921713 
		2 -0.31737641160571345 3 -0.45391579855442532 4 -0.57347399675611432 5 -0.63286178914083058 
		6 -0.49593128356574284 7 -0.32050399510736127 8 -0.28577121070205208 9 -0.31216316352889351 
		10 -0.34653263551072316 11 -0.35754084534803893 12 -0.36632965794099875 13 
		-0.37248453784554131 14 -0.37555278313307694 15 -0.37504436090250837 16 -0.37042917538061942 
		17 -0.36113270270423331 18 -0.34653263551072316 19 -0.28069882475253904 20 
		-0.18188502357703926 21 -0.13468670703278549 22 -0.14566643652374836 23 -0.16569887443323636 
		24 -0.17321282299077467 25 -0.16261187792304868;
createNode animCurveTL -n "Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -0.83267844404058533 1 -0.84085278782419959 
		2 -0.84905604206899687 3 -0.83610432288888481 4 -0.79647981499486409 5 -0.74092576386142317 
		6 -0.58089479335273153 7 -0.35041939881477008 8 -0.11103176460281365 9 0.13331036628622259 
		10 0.23750717606198865 11 0.22640969496013405 12 0.21808206158203511 13 0.21274926054192125 
		14 0.21064397381701841 15 0.21197609416676721 16 0.21689475103580716 17 0.22544319896503764 
		18 0.23750717606198865 19 0.23671074382176813 20 0.18041049465428977 21 0.055032702295764263 
		22 -0.1292735964634068 23 -0.35418813312410363 24 -0.59663197205423868 25 
		-0.83267844404058533;
createNode animCurveTL -n "Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0.090386867528879297 1 0.081433285469170086 
		2 0.063937840338737284 3 0.052984107517003276 4 0.061758658431912701 5 0.097758137137095871 
		6 0.2384332108803601 7 0.43286217501780938 8 0.62321163327331075 9 0.80856703425810939 
		10 0.8888555420695301 11 0.88665602360843732 12 0.88715445757903322 13 0.88932078059070396 
		14 0.89211928041933986 15 0.8945079517691934 16 0.89544379673267294 17 0.89389427592054727 
		18 0.8888555420695301 19 0.84287071572174965 20 0.74391660776429402 21 0.62611164360425653 
		22 0.49892647319295352 23 0.36014172858530186 24 0.22066317569156862 25 0.090386867528879297;
createNode animCurveTA -n "Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 59.929423292753846 1 56.756854883072378 
		2 48.310465198818811 3 36.136352830311992 4 21.628071377631493 5 5.4261000245344961 
		6 -33.591562586941684 7 -107.27988060724594 8 -128.16505324081388 9 -126.6351587914063 
		10 -123.20167246839914 11 -124.72183887055694 12 -126.08897327425883 13 -127.16591616835935 
		14 -127.81252867254399 15 -127.88464103805296 16 -127.23555064354555 17 -125.7201189412507 
		18 -123.20167246839914 19 -134.43546167837977 20 20.021277987512921 21 5.2812772874668843 
		22 3.7372581680689172 23 -123.76286894494153 24 -8.2994962906902217 25 59.929423292753846;
createNode animCurveTA -n "Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 45.790364280405257 1 43.748824931408912 
		2 38.735561202289233 3 32.830134603840129 4 28.596848145309387 5 28.561979374692729 
		6 43.574004382934696 7 54.253683764089253 8 52.319480990707284 9 51.477783821170711 
		10 50.628544474661616 11 50.487896183154753 12 50.445745248353653 13 50.472153844600427 
		14 50.538068690337035 15 50.61553401243787 16 50.676845777404893 17 50.692569919986482 
		18 50.628544474661616 19 52.724276588019812 20 125.19814183189121 21 124.0325240015916 
		22 120.58011965584144 23 66.300335257093082 24 48.098325518572658 25 45.790364280405257;
createNode animCurveTA -n "Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 89.927469671622774 1 88.146271459630896 
		2 82.75553481564917 3 73.441941991399716 4 60.126340485605503 5 43.354738290326331 
		6 -1.7820223582460242 7 -67.545788557792235 8 -74.608008289262798 9 -60.078946164023137 
		10 -49.581987964046618 11 -49.216865107919297 12 -49.222441653096965 13 -49.467654355420628 
		14 -49.819974985097041 15 -50.144256119875678 16 -50.303270510696983 17 -50.160010848394542 
		18 -49.581987964046618 19 -64.30455257654215 20 85.235357002712519 21 66.110213579104467 
		22 65.032491832661819 23 -68.63634017061996 24 29.082948824660267 25 89.927469671622774;
createNode animCurveTL -n "Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0.20793334527655816 1 0.21621268887793973 
		2 0.24302998396472617 3 0.28864634892969887 4 0.34194054941240665 5 0.38068949813085112 
		6 0.39560617382366275 7 0.40163849777945076 8 0.40983217504319897 9 0.42376821588166819 
		10 0.43696764591488263 11 0.44464703641436759 12 0.44941336436718871 13 0.45139439702448386 
		14 0.45103176588386362 15 0.4489062038768617 16 0.44559063701429352 17 0.44153307090835936 
		18 0.43696764591488263 19 0.42598744747611422 20 0.39859160552823031 21 0.36150468686331805 
		22 0.32493258526620594 23 0.28665751634700032 24 0.24729259033437528 25 0.20793334527655816;
createNode animCurveTL -n "Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -0.84194018189928654 1 -0.81408583762740916 
		2 -0.75172654834134112 3 -0.68512104154886377 4 -0.63490071363425904 5 -0.61029030475049606 
		6 -0.60959895256251306 7 -0.62376635603537856 8 -0.64711737103922262 9 -0.67115894328251102 
		10 -0.6852685953718628 11 -0.68758146916079543 12 -0.68486175167921004 13 
		-0.67935002174578674 14 -0.67326358775081641 15 -0.66875269264708148 16 -0.6678954297701839 
		17 -0.67272302730801581 18 -0.6852685953718628 19 -0.73536651737500369 20 
		-0.81332793098450429 21 -0.86353122601256305 22 -0.87114165882124073 23 -0.86299595201068136 
		24 -0.85022691685228491 25 -0.84194018189928654;
createNode animCurveTL -n "Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -0.00048716197021754227 1 0.031635712878029534 
		2 0.10997349834145814 3 0.20548739563335452 4 0.28427802056983742 5 0.31012643083400443 
		6 0.26088581078858236 7 0.15989394479846256 8 0.039872619893449514 9 -0.067419140968302899 
		10 -0.13192963322024925 11 -0.15795924959371685 12 -0.1710503467308665 13 
		-0.17397113291828611 14 -0.16944928942598161 15 -0.1602191905220198 16 -0.14904106260246267 
		17 -0.13869184055171491 18 -0.13192963322024925 19 -0.12299048534074908 20 
		-0.10592521191949666 21 -0.085274089084528756 22 -0.063943171497105697 23 
		-0.041867023290243104 24 -0.020386575253137414 25 -0.00048716197021754227;
createNode animCurveTA -n "Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 31.54691339634115 1 24.793750914871897 
		2 8.7575361760512411 3 -11.053359624541223 4 -29.503161531723652 5 -40.983962326599489 
		6 -43.584422917569498 7 -39.721311185024881 8 -31.337098737456486 9 -22.194135677972714 
		10 -16.514967691510858 11 -14.596042639026718 12 -13.798757339755596 13 -13.781453761146302 
		14 -14.190796655013292 15 -14.668837400130824 16 -14.859775936769676 17 -14.417197846513288 
		18 -13.010458910344333 19 -9.0921593910683374 20 -2.6454989037938206 21 4.3919304588649579 
		22 11.269635418522006 23 18.243567135793484 24 25.051211397617148 25 31.54691339634115;
createNode animCurveTA -n "Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -29.777804226147087 1 -30.138167104430664 
		2 -33.338463591468987 3 -41.574406147212621 4 -52.426488185409966 5 -59.840200404295274 
		6 -60.265709355399338 7 -55.917910522102623 8 -49.187867814524736 9 -42.703154146290302 
		10 -38.882935456259993 11 -37.580231517227908 12 -37.039948936939169 13 -37.04002550490835 
		14 -37.360445029498266 15 -37.777838242826576 16 -38.066399480301968 17 -38.00527430365937 
		18 -37.392188889309615 19 -35.546945595468124 20 -32.941610191610565 21 -30.721047084954762 
		22 -29.174071862540568 23 -28.396632647239414 24 -28.600124616119579 25 -29.777804226147087;
createNode animCurveTA -n "Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -82.514492469619725 1 -76.188514983033642 
		2 -61.530058703072378 3 -45.047516803541363 4 -31.473115464873548 5 -22.656485983502684 
		6 -17.130393714228408 7 -13.925447051577747 8 -13.653214180512151 9 -15.127086682035364 
		10 -16.291114705615406 11 -16.284695997127752 12 -15.883785583686155 13 -15.330266240013682 
		14 -14.886535036178334 15 -14.818613162167638 16 -15.386758535590207 17 -16.84301810245643 
		18 -19.436468499531518 19 -27.295476694059598 20 -40.294782480415698 21 -52.177903788980117 
		22 -60.743507711467906 23 -68.352149914176067 24 -75.451860930820772 25 -82.514492469619725;
createNode animCurveTL -n "animCurveTL276";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.0647721020251719 5 1.5475318307304218 
		7 1.7661331122263928 10 1.8189581222151301 18 1.8189581222151301 21 1.8916319852844579 
		25 2.0647721020251719;
	setAttr -s 7 ".kit[0:6]"  1 9 9 1 1 9 9;
	setAttr -s 7 ".kot[0:6]"  1 9 9 1 1 9 9;
	setAttr -s 7 ".kix[0:6]"  1 0.0078129861503839493 0.0061402865685522556 
		0.052998285740613937 0.18602719902992249 0.0094918450340628624 0.0077006625942885876;
	setAttr -s 7 ".kiy[0:6]"  0 -0.999969482421875 0.99998116493225098 
		0.99859458208084106 0.98254460096359253 0.9999549388885498 0.99997037649154663;
	setAttr -s 7 ".kox[0:6]"  1 0.0078129861503839493 0.0061402865685522556 
		0.052997991442680359 0.1860276460647583 0.0094918450340628624 0.0077006625942885876;
	setAttr -s 7 ".koy[0:6]"  0 -0.999969482421875 0.99998116493225098 
		0.99859464168548584 0.98254448175430298 0.9999549388885498 0.99997037649154663;
createNode animCurveTL -n "animCurveTL277";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.7590071920447805 5 1.7107312115099667 
		7 2.3325988827098465 10 3.1870503707736471 18 3.1870503707736471 21 2.7688325632439326 
		25 1.7590071920447805;
	setAttr -s 7 ".kit[0:6]"  1 9 9 1 1 9 9;
	setAttr -s 7 ".kot[0:6]"  1 9 9 1 1 9 9;
	setAttr -s 7 ".kix[0:6]"  1 0.0040679005905985832 0.0011289331596344709 
		0.25148236751556396 0.053963877260684967 0.0016339353751391172 0.0013203590642660856;
	setAttr -s 7 ".kiy[0:6]"  0 0.99999171495437622 0.99999934434890747 
		0.96786189079284668 -0.9985429048538208 -0.99999868869781494 -0.99999910593032837;
	setAttr -s 7 ".kox[0:6]"  1 0.0040679005905985832 0.0011289331596344709 
		0.25148236751556396 0.053963921964168549 0.0016339353751391172 0.0013203590642660856;
	setAttr -s 7 ".koy[0:6]"  0 0.99999171495437622 0.99999934434890747 
		0.96786189079284668 -0.9985429048538208 -0.99999868869781494 -0.99999910593032837;
createNode animCurveTL -n "animCurveTL278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.9261547314579206 5 1.9366381199850122 
		7 1.9928146645237019 10 2.069624321251109 18 2.069624321251109 21 2.0265148503768504 
		25 1.9261547314579206;
	setAttr -s 7 ".kit[0:6]"  1 9 9 1 1 9 9;
	setAttr -s 7 ".kot[0:6]"  1 9 9 1 1 9 9;
	setAttr -s 7 ".kix[0:6]"  1 0.034982111304998398 0.012531643733382225 
		0.16366757452487946 0.18864166736602783 0.016261458396911621 0.013284317217767239;
	setAttr -s 7 ".kiy[0:6]"  0 0.99938791990280151 0.99992150068283081 
		0.98651552200317383 -0.98204600811004639 -0.99986779689788818 -0.99991178512573242;
	setAttr -s 7 ".kox[0:6]"  1 0.034982111304998398 0.012531643733382225 
		0.16366912424564362 0.18864145874977112 0.016261458396911621 0.013284317217767239;
	setAttr -s 7 ".koy[0:6]"  0 0.99938791990280151 0.99992150068283081 
		0.98651528358459473 -0.98204600811004639 -0.99986779689788818 -0.99991178512573242;
createNode animCurveTA -n "animCurveTA787";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 59.00791013189712 5 -28.317694892058913 
		7 -118.8637890453911 10 -140.05606579000144 18 -140.05606579000144 21 -163.98649081248163 
		23 -138.12466070275752 25 59.00791013189712;
	setAttr -s 8 ".kit[0:7]"  1 9 9 1 1 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 1 1 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  1 0.074949599802494049 0.085150822997093201 
		0.81168544292449951 0.66373002529144287 0.98015308380126953 0.034238338470458984 
		0.019372755661606789;
	setAttr -s 8 ".kiy[0:7]"  0 -0.99718731641769409 -0.99636805057525635 
		-0.58409476280212402 0.74797224998474121 0.19824211299419403 0.99941366910934448 
		0.99981230497360229;
	setAttr -s 8 ".kox[0:7]"  1 0.074949599802494049 0.085150822997093201 
		0.81168544292449951 0.66373002529144287 0.98015308380126953 0.034238338470458984 
		0.019372755661606789;
	setAttr -s 8 ".koy[0:7]"  0 -0.99718731641769409 -0.99636805057525635 
		-0.58409476280212402 0.74797219038009644 0.19824211299419403 0.99941366910934448 
		0.99981230497360229;
createNode animCurveTA -n "animCurveTA788";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 71.601588453715053 5 47.506852479830172 
		7 23.34666418262541 10 22.777692420202911 18 22.777692420202911 21 28.403930665032977 
		23 40.21741397624691 25 71.601588453715053;
	setAttr -s 8 ".kit[0:7]"  1 9 9 1 1 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 1 1 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  1 0.2669924795627594 0.36023017764091492 
		0.99758023023605347 0.97124910354614258 0.48027488589286804 0.1741461455821991 
		0.12081687897443771;
	setAttr -s 8 ".kiy[0:7]"  0 -0.9636986255645752 -0.93286347389221191 
		-0.069524489343166351 0.23806537687778473 0.87711805105209351 0.98471981287002563 
		0.99267482757568359;
	setAttr -s 8 ".kox[0:7]"  1 0.2669924795627594 0.36023017764091492 
		0.99758023023605347 0.97124916315078735 0.48027488589286804 0.1741461455821991 
		0.12081687897443771;
	setAttr -s 8 ".koy[0:7]"  0 -0.9636986255645752 -0.93286347389221191 
		-0.069524355232715607 0.23806530237197876 0.87711805105209351 0.98471981287002563 
		0.99267482757568359;
createNode animCurveTA -n "animCurveTA789";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 90.779043014820644 5 33.066829702783707 
		7 -69.081534401108087 10 -64.070161195553439 18 -64.070161195553439 21 -98.593770548587898 
		23 -74.628589248145843 25 90.779043014820644;
	setAttr -s 8 ".kit[0:7]"  1 9 9 1 1 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 1 1 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  1 0.08333829790353775 0.09783589094877243 
		0.97643125057220459 0.82157671451568604 0.67077553272247314 0.040307942777872086 
		0.023086600005626678;
	setAttr -s 8 ".kiy[0:7]"  0 -0.99652129411697388 -0.99520254135131836 
		-0.21582874655723572 0.57009798288345337 -0.74166041612625122 0.99918729066848755 
		0.99973344802856445;
	setAttr -s 8 ".kox[0:7]"  1 0.08333829790353775 0.09783589094877243 
		0.97643148899078369 0.82157653570175171 0.67077553272247314 0.040307942777872086 
		0.023086600005626678;
	setAttr -s 8 ".koy[0:7]"  0 -0.99652129411697388 -0.99520254135131836 
		-0.21582770347595215 0.57009828090667725 -0.74166041612625122 0.99918729066848755 
		0.99973344802856445;
createNode animCurveTL -n "animCurveTL279";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 3.1112480635238988 5 3.1649124614268587 
		10 3.2387941383602539 18 3.2387941383602539 21 3.1936510089733492 25 3.1112480635238988;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.026125425472855568 0.058551717549562454 
		0.080956533551216125 0.018290981650352478 0.016178533434867859;
	setAttr -s 6 ".kiy[0:5]"  0 0.99965864419937134 0.99828439950942993 
		-0.99671763181686401 -0.99983268976211548 -0.99986910820007324;
	setAttr -s 6 ".kox[0:5]"  1 0.026125425472855568 0.058551717549562454 
		0.080956533551216125 0.018290981650352478 0.016178533434867859;
	setAttr -s 6 ".koy[0:5]"  0 0.99965864419937134 0.99828439950942993 
		-0.99671763181686401 -0.99983268976211548 -0.99986910820007324;
createNode animCurveTL -n "animCurveTL280";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.7424766145627919 5 2.249105035518379 
		10 1.8024600096594749 18 1.8024600096594749 21 1.7812297356957241 25 1.7424766145627919;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.055485330522060394 0.0097015062347054482 
		0.17018973827362061 0.038870256394147873 0.034385483711957932;
	setAttr -s 6 ".kiy[0:5]"  0 0.99845951795578003 -0.99995291233062744 
		-0.98541128635406494 -0.99924427270889282 -0.99940866231918335;
	setAttr -s 6 ".kox[0:5]"  1 0.055485330522060394 0.0097015062347054482 
		0.17018973827362061 0.038870256394147873 0.034385483711957932;
	setAttr -s 6 ".koy[0:5]"  0 0.99845951795578003 -0.99995291233062744 
		-0.98541128635406494 -0.99924427270889282 -0.99940866231918335;
createNode animCurveTL -n "animCurveTL281";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.8531126401564211 5 2.0162051579929865 
		10 1.7753108912457387 18 1.7753108912457387 21 1.8028477201697442 25 1.8531126401564211;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.042804669588804245 0.017985617741942406 
		0.13199004530906677 0.029977276921272278 0.026516791433095932;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99908345937728882 -0.99983823299407959 
		0.99125105142593384 0.99955058097839355 0.99964839220046997;
	setAttr -s 6 ".kox[0:5]"  1 0.042804669588804245 0.017985617741942406 
		0.13199004530906677 0.029977276921272278 0.026516791433095932;
	setAttr -s 6 ".koy[0:5]"  0 -0.99908345937728882 -0.99983823299407959 
		0.99125105142593384 0.99955058097839355 0.99964839220046997;
createNode animCurveTA -n "animCurveTA790";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 26.27937306915484 5 -103.2925194495306 
		10 -57.566404604208522 18 -53.115509315851902 21 -24.724143246617057 25 26.27937306915484;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.2220936119556427 0.44348958134651184 
		0.53886091709136963 0.16604873538017273 0.1481301337480545;
	setAttr -s 6 ".kiy[0:5]"  0 -0.97502535581588745 0.89627951383590698 
		0.84239476919174194 0.98611754179000854 0.9889678955078125;
	setAttr -s 6 ".kox[0:5]"  1 0.2220936119556427 0.44348958134651184 
		0.53886091709136963 0.16604873538017273 0.1481301337480545;
	setAttr -s 6 ".koy[0:5]"  0 -0.97502535581588745 0.89627951383590698 
		0.84239476919174194 0.98611754179000854 0.9889678955078125;
createNode animCurveTA -n "animCurveTA791";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -55.316964386970021 5 -55.70811330696926 
		10 -45.160577555761243 18 -45.638132652706794 21 -49.095005488761082 25 -55.316964386970021;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.88291913270950317 0.92668068408966064 
		0.98291164636611938 0.8100048303604126 0.77537250518798828;
	setAttr -s 6 ".kiy[0:5]"  0 0.46952506899833679 0.37584954500198364 
		-0.18407805263996124 -0.58642321825027466 -0.6315041184425354;
	setAttr -s 6 ".kox[0:5]"  1 0.88291913270950317 0.92668068408966064 
		0.98291164636611938 0.8100048303604126 0.77537250518798828;
	setAttr -s 6 ".koy[0:5]"  0 0.46952506899833679 0.37584954500198364 
		-0.18407805263996124 -0.58642321825027466 -0.6315041184425354;
createNode animCurveTA -n "animCurveTA792";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -77.201572122121519 5 42.711679106454767 
		10 7.8262720740199212 18 3.7692814817691911 21 -25.154152827753542 25 -77.201572122121519;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.21915534138679504 0.53759413957595825 
		0.53725600242614746 0.16290345788002014 0.14522241055965424;
	setAttr -s 6 ".kiy[0:5]"  0 0.97569000720977783 -0.84320372343063354 
		-0.84341919422149658 -0.98664200305938721 -0.9893990159034729;
	setAttr -s 6 ".kox[0:5]"  1 0.21915534138679504 0.53759413957595825 
		0.53725600242614746 0.16290345788002014 0.14522241055965424;
	setAttr -s 6 ".koy[0:5]"  0 0.97569000720977783 -0.84320372343063354 
		-0.84341919422149658 -0.98664200305938721 -0.9893990159034729;
createNode animCurveTL -n "animCurveTL282";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.22996541113775407 5 0.65952286308309716 
		10 0.35758686109505894 18 0.35758686109505894 21 0.31241705445115686 25 0.22996541113775407;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.026110006496310234 0.014350350014865398 
		0.080909036099910736 0.018280182033777237 0.016168979927897453;
	setAttr -s 6 ".kiy[0:5]"  0 0.99965906143188477 -0.99989700317382813 
		-0.99672150611877441 -0.99983292818069458 -0.99986928701400757;
	setAttr -s 6 ".kox[0:5]"  1 0.026110006496310234 0.014350350014865398 
		0.080909036099910736 0.018280182033777237 0.016168979927897453;
	setAttr -s 6 ".koy[0:5]"  0 0.99965906143188477 -0.99989700317382813 
		-0.99672150611877441 -0.99983292818069458 -0.99986928701400757;
createNode animCurveTL -n "animCurveTL283";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.71572892866406468 5 -1.1428521038568509 
		10 -0.30038942218951969 18 -0.30038942218951969 21 -0.44739296406362783 25 
		-0.71572892866406468;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.008025304414331913 0.0051435818895697594 
		0.024934953078627586 0.005617805290967226 0.0049688336439430714;
	setAttr -s 6 ".kiy[0:5]"  0 0.99996781349182129 0.99998676776885986 
		-0.99968910217285156 -0.99998420476913452 -0.99998766183853149;
	setAttr -s 6 ".kox[0:5]"  1 0.008025304414331913 0.0051435818895697594 
		0.024934953078627586 0.005617805290967226 0.0049688336439430714;
	setAttr -s 6 ".koy[0:5]"  0 0.99996781349182129 0.99998676776885986 
		-0.99968910217285156 -0.99998420476913452 -0.99998766183853149;
createNode animCurveTL -n "animCurveTL284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.86045149817799893 5 -0.71803377590485828 
		10 -1.48476626935041 18 -1.48476626935041 21 -1.2637988868277616 25 -0.86045149817799893;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.0053391107358038425 0.0056515983305871487 
		0.016591416671872139 0.0037374047096818686 0.0033056517131626606;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99998575448989868 -0.9999840259552002 
		0.99986237287521362 0.99999302625656128 0.99999451637268066;
	setAttr -s 6 ".kox[0:5]"  1 0.0053391107358038425 0.0056515983305871487 
		0.016591416671872139 0.0037374047096818686 0.0033056517131626606;
	setAttr -s 6 ".koy[0:5]"  0 -0.99998575448989868 -0.9999840259552002 
		0.99986237287521362 0.99999302625656128 0.99999451637268066;
createNode animCurveTL -n "animCurveTL285";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.017571725225418906 5 -0.12983655051454329 
		7 -0.4355781508179698 10 -0.66217585131202228 18 -0.66217585131202228 21 
		-0.43402733923453091 25 -0.017571725225418906;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  1 0.005581964273005724 0.0031308198813349009 
		0.016179276630282402 0.016069328412413597 0.0036197691224515438 0.0032016050536185503;
	setAttr -s 7 ".kiy[0:6]"  0 -0.99998444318771362 -0.99999511241912842 
		-0.99986910820007324 0.9998708963394165 0.99999344348907471 0.99999487400054932;
	setAttr -s 7 ".kox[0:6]"  1 0.005581964273005724 0.0031308198813349009 
		0.016179276630282402 0.016069328412413597 0.0036197691224515438 0.0032016050536185503;
	setAttr -s 7 ".koy[0:6]"  0 -0.99998444318771362 -0.99999511241912842 
		-0.99986910820007324 0.9998708963394165 0.99999344348907471 0.99999487400054932;
createNode animCurveTL -n "animCurveTL286";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.54560785950824164 5 -0.59333019657649078 
		7 -1.4498893984107151 10 -1.0686443397057266 18 -1.0686443397057266 21 -0.88352297725954754 
		25 -0.54560785950824164;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  1 0.0025803088210523129 0.0035064315889030695 
		0.0096171656623482704 0.019802942872047424 0.004461084958165884 0.0039457329548895359;
	setAttr -s 7 ".kiy[0:6]"  0 -0.99999666213989258 -0.99999386072158813 
		0.9999537467956543 0.99980390071868896 0.99999004602432251 0.99999219179153442;
	setAttr -s 7 ".kox[0:6]"  1 0.0025803088210523129 0.0035064315889030695 
		0.0096171656623482704 0.019802942872047424 0.004461084958165884 0.0039457329548895359;
	setAttr -s 7 ".koy[0:6]"  0 -0.99999666213989258 -0.99999386072158813 
		0.9999537467956543 0.99980390071868896 0.99999004602432251 0.99999219179153442;
createNode animCurveTL -n "animCurveTL287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.64724218630287966 5 -0.91394612755180671 
		7 -1.0148014461265304 10 -0.18219363787143059 18 -0.18219363787143059 21 
		-0.34679099146264586 25 -0.64724218630287966;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  1 0.0063480543904006481 0.0022776310797780752 
		0.0044037913903594017 0.022271059453487396 0.0050173341296613216 0.0044377259910106659;
	setAttr -s 7 ".kiy[0:6]"  0 -0.99997985363006592 0.99999737739562988 
		0.99999028444290161 -0.9997519850730896 -0.99998742341995239 -0.99999016523361206;
	setAttr -s 7 ".kox[0:6]"  1 0.0063480543904006481 0.0022776310797780752 
		0.0044037913903594017 0.022271059453487396 0.0050173341296613216 0.0044377259910106659;
	setAttr -s 7 ".koy[0:6]"  0 -0.99997985363006592 0.99999737739562988 
		0.99999028444290161 -0.9997519850730896 -0.99998742341995239 -0.99999016523361206;
createNode animCurveTA -n "animCurveTA793";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 12.253734489678925 5 12.253734489678925 
		10 12.253734489678925 18 12.253734489678925 21 12.253734489678925 25 12.253734489678925;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA794";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -65.746751280844961 5 -65.746751280844961 
		10 -65.746751280844961 18 -65.746751280844961 21 -65.746751280844961 25 -65.746751280844961;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA795";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 10 0 18 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA796";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.061808866237337522 5 -0.061808866237337522 
		10 -0.061808866237337522 18 -0.061808866237337522 21 -0.061808866237337522 
		25 -0.061808866237337522;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA797";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -59.058178941076754 5 -59.058178941076754 
		10 -59.058178941076754 18 -59.058178941076754 21 -59.058178941076754 25 -59.058178941076754;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA798";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 16.579147429757843 5 16.579147429757843 
		10 16.579147429757843 18 16.579147429757843 21 16.579147429757843 25 16.579147429757843;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA799";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.5572674112203622 5 8.5572674112203622 
		10 8.5572674112203622 18 8.5572674112203622 21 8.5572674112203622 25 8.5572674112203622;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA800";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 15.711328223519057 5 15.711328223519057 
		10 15.711328223519057 18 15.711328223519057 21 15.711328223519057 25 15.711328223519057;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA801";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 10 0 18 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA802";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 10 0 18 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA803";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 10 0 18 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA804";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 10 0 18 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA805";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 10 0 18 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA806";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 10 0 18 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA807";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 10.423754966968488 5 10.423754966968488 
		10 10.423754966968488 18 10.423754966968488 21 10.423754966968488 25 10.423754966968488;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA808";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.722848255843903 5 27.722848255843903 
		10 27.722848255843903 18 27.722848255843903 21 27.722848255843903 25 27.722848255843903;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA809";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 21.576484776388227 5 21.576484776388227 
		10 21.576484776388227 18 21.576484776388227 21 21.576484776388227 25 21.576484776388227;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA810";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 10 0 18 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA811";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 10 0 18 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA812";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.080064458283051 5 64.753272325493185 
		10 64.753272325493185 18 64.753272325493185 21 51.41937365677974 25 27.080064458283051;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.45216888189315796 1 0.84430015087127686 
		0.33443436026573181 0.29946765303611755;
	setAttr -s 6 ".kiy[0:5]"  0 0.89193230867385864 0 -0.53587061166763306 
		-0.94241905212402344 -0.95410645008087158;
	setAttr -s 6 ".kox[0:5]"  1 0.45216888189315796 1 0.84430015087127686 
		0.33443436026573181 0.29946765303611755;
	setAttr -s 6 ".koy[0:5]"  0 0.89193230867385864 0 -0.53587061166763306 
		-0.94241905212402344 -0.95410645008087158;
createNode animCurveTA -n "animCurveTA813";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA814";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA815";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA816";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA817";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA818";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 25 13.994403295754109;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA819";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA820";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA821";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 25 13.994403295754109;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA822";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 10 0 18 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA823";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 10 0 18 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA824";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.911632519594587 5 60.369517842741267 
		10 60.369517842741267 18 60.369517842741267 21 48.881508494220611 25 27.911632519594587;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.50713294744491577 1 0.87738853693008423 
		0.38084730505943298 0.34229812026023865;
	setAttr -s 6 ".kiy[0:5]"  0 0.86186784505844116 0 -0.47978058457374573 
		-0.92463797330856323 -0.93959140777587891;
	setAttr -s 6 ".kox[0:5]"  1 0.50713294744491577 1 0.87738853693008423 
		0.38084730505943298 0.34229812026023865;
	setAttr -s 6 ".koy[0:5]"  0 0.86186784505844116 0 -0.47978058457374573 
		-0.92463797330856323 -0.93959140777587891;
createNode animCurveTA -n "animCurveTA825";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 10 0 18 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA826";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 10 0 18 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA827";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 10 0 18 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA828";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.3937906322123035 5 -5.1909917820245015 
		10 -7.8152067063591355 18 -7.8152067063591355 21 -4.1703828516729544 25 2.3937906322123035;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.88191002607345581 0.99446064233779907 
		0.98528152704238892 0.7947697639465332 0.75846695899963379;
	setAttr -s 6 ".kiy[0:5]"  0 -0.47141781449317932 -0.1051095724105835 
		0.17093965411186218 0.60691100358963013 0.65171146392822266;
	setAttr -s 6 ".kox[0:5]"  1 0.88191002607345581 0.99446064233779907 
		0.98528152704238892 0.7947697639465332 0.75846695899963379;
	setAttr -s 6 ".koy[0:5]"  0 -0.47141781449317932 -0.1051095724105835 
		0.17093965411186218 0.60691100358963013 0.65171146392822266;
createNode animCurveTA -n "animCurveTA829";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.7843868968348546 5 0.058793944207273394 
		10 -11.452215981997979 18 -11.452215981997979 21 -3.9217719176068413 25 -1.7843868968348546;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.89220130443572998 0.90723711252212524 
		0.94135206937789917 0.81032150983810425 0.96301823854446411;
	setAttr -s 6 ".kiy[0:5]"  0 -0.45163795351982117 -0.42061960697174072 
		0.33742603659629822 0.58598554134368896 0.26943618059158325;
	setAttr -s 6 ".kox[0:5]"  1 0.89220130443572998 0.90723711252212524 
		0.94135206937789917 0.81032150983810425 0.96301823854446411;
	setAttr -s 6 ".koy[0:5]"  0 -0.45163795351982117 -0.42061960697174072 
		0.33742603659629822 0.58598554134368896 0.26943618059158325;
createNode animCurveTA -n "animCurveTA830";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 13.23227595374661 5 7.9421006072944111 
		10 7.5289869936733211 18 7.5289869936733211 21 9.2452870888998167 25 13.23227595374661;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.95818853378295898 0.99986159801483154 
		0.99667954444885254 0.91979861259460449 0.88652795553207397;
	setAttr -s 6 ".kiy[0:5]"  0 -0.28613761067390442 -0.016636604443192482 
		0.081424422562122345 0.39239069819450378 0.4626750648021698;
	setAttr -s 6 ".kox[0:5]"  1 0.95818853378295898 0.99986159801483154 
		0.99667954444885254 0.91979861259460449 0.88652795553207397;
	setAttr -s 6 ".koy[0:5]"  0 -0.28613761067390442 -0.016636604443192482 
		0.081424422562122345 0.39239069819450378 0.4626750648021698;
createNode animCurveTA -n "animCurveTA831";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 21.31281975419946 10 30.272924325999188 
		18 30.272924325999188 21 -9.5254133240785244 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.53357058763504028 0.94062191247940063 
		0.46682420372962952 0.4039769172668457 0.62564867734909058;
	setAttr -s 6 ".kiy[0:5]"  0 0.84575557708740234 0.3394559919834137 
		-0.88435012102127075 -0.91476917266845703 0.78010493516921997;
	setAttr -s 6 ".kox[0:5]"  1 0.53357058763504028 0.94062191247940063 
		0.46682420372962952 0.4039769172668457 0.62564867734909058;
	setAttr -s 6 ".koy[0:5]"  0 0.84575557708740234 0.3394559919834137 
		-0.88435012102127075 -0.91476917266845703 0.78010493516921997;
createNode animCurveTA -n "animCurveTA832";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 3.4345974066501794 10 -9.5717964874838355 
		18 -9.5717964874838355 21 11.96207642467572 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.89400553703308105 0.88581448793411255 
		0.69832038879394531 0.81308573484420776 0.53823912143707275;
	setAttr -s 6 ".kiy[0:5]"  0 -0.44805598258972168 -0.46403950452804565 
		0.71578532457351685 0.58214396238327026 -0.84279215335845947;
	setAttr -s 6 ".kox[0:5]"  1 0.89400553703308105 0.88581448793411255 
		0.69832038879394531 0.81308573484420776 0.53823912143707275;
	setAttr -s 6 ".koy[0:5]"  0 -0.44805598258972168 -0.46403950452804565 
		0.71578532457351685 0.58214396238327026 -0.84279215335845947;
createNode animCurveTA -n "animCurveTA833";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 22.741549598620526 10 -0.48016274534425485 
		18 -0.48016274534425485 21 8.7562040359471744 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.99968409538269043 0.73033952713012695 
		0.91543310880661011 0.99935561418533325 0.65741986036300659;
	setAttr -s 6 ".kiy[0:5]"  0 -0.025133321061730385 -0.68308430910110474 
		0.4024701714515686 0.035892948508262634 -0.75352448225021362;
	setAttr -s 6 ".kox[0:5]"  1 0.99968409538269043 0.73033952713012695 
		0.91543310880661011 0.99935561418533325 0.65741986036300659;
	setAttr -s 6 ".koy[0:5]"  0 -0.025133321061730385 -0.68308430910110474 
		0.4024701714515686 0.035892948508262634 -0.75352448225021362;
createNode animCurveTA -n "animCurveTA834";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.71032600031388216 5 4.8714700432790456 
		10 4.8714700432790456 18 4.8714700432790456 21 3.3674523108549335 25 0.71032600031388216;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.97707772254943848 1 0.99744719266891479 
		0.95481836795806885 0.9444994330406189;
	setAttr -s 6 ".kiy[0:5]"  0 0.21288277208805084 0 -0.071408316493034363 
		-0.29718995094299316 -0.32851299643516541;
	setAttr -s 6 ".kox[0:5]"  1 0.97707772254943848 1 0.99744719266891479 
		0.95481836795806885 0.9444994330406189;
	setAttr -s 6 ".koy[0:5]"  0 0.21288277208805084 0 -0.071408316493034363 
		-0.29718995094299316 -0.32851299643516541;
createNode animCurveTA -n "animCurveTA835";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 3.6938159239902011 5 11.783606204137085 
		10 11.783606204137085 18 11.783606204137085 21 4.395393178267093 25 3.6938159239902011;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.92080080509185791 1 0.94336366653442383 
		0.85555624961853027 0.99580955505371094;
	setAttr -s 6 ".kiy[0:5]"  0 0.39003321528434753 0 -0.33176037669181824 
		-0.51770985126495361 -0.091451413929462433;
	setAttr -s 6 ".kox[0:5]"  1 0.92080080509185791 1 0.94336366653442383 
		0.85555624961853027 0.99580955505371094;
	setAttr -s 6 ".koy[0:5]"  0 0.39003321528434753 0 -0.33176037669181824 
		-0.51770985126495361 -0.091451413929462433;
createNode animCurveTA -n "animCurveTA836";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 14.57223198295749 5 7.5423825101935913 
		10 7.5423825101935913 18 7.5423825101935913 21 9.7612628881542562 25 14.57223198295749;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.9384462833404541 1 0.99446862936019897 
		0.88509482145309448 0.84618520736694336;
	setAttr -s 6 ".kiy[0:5]"  0 -0.34542524814605713 0 0.1050342470407486 
		0.4654107391834259 0.53288888931274414;
	setAttr -s 6 ".kox[0:5]"  1 0.9384462833404541 1 0.99446862936019897 
		0.88509482145309448 0.84618520736694336;
	setAttr -s 6 ".koy[0:5]"  0 -0.34542524814605713 0 0.1050342470407486 
		0.4654107391834259 0.53288888931274414;
createNode animCurveTA -n "animCurveTA837";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.2796212519697265 5 -0.63515425139467685 
		10 -0.63515425139467685 18 -0.63515425139467685 21 -1.2213976972615601 25 
		-2.2796212519697265;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.99631351232528687 1 0.99961090087890625 
		0.9925195574760437 0.99054181575775146;
	setAttr -s 6 ".kiy[0:5]"  0 0.085786677896976471 0 -0.027894264087080956 
		-0.12208570539951324 -0.13721099495887756;
	setAttr -s 6 ".kox[0:5]"  1 0.99631351232528687 1 0.99961090087890625 
		0.9925195574760437 0.99054181575775146;
	setAttr -s 6 ".koy[0:5]"  0 0.085786677896976471 0 -0.027894264087080956 
		-0.12208570539951324 -0.13721099495887756;
createNode animCurveTA -n "animCurveTA838";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.2209313171847893 5 10.368137141004437 
		10 10.368137141004437 18 10.368137141004437 21 8.8609892819555238 25 2.2209313171847893;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.91980469226837158 1 0.99743658304214478 
		0.85392767190933228 0.7547488808631897;
	setAttr -s 6 ".kiy[0:5]"  0 0.39237648248672485 0 -0.071556165814399719 
		-0.52039170265197754 -0.6560138463973999;
	setAttr -s 6 ".kox[0:5]"  1 0.91980469226837158 1 0.99743658304214478 
		0.85392767190933228 0.7547488808631897;
	setAttr -s 6 ".koy[0:5]"  0 0.39237648248672485 0 -0.071556165814399719 
		-0.52039170265197754 -0.6560138463973999;
createNode animCurveTA -n "animCurveTA839";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.0401232256568225 5 1.9122034641490611 
		10 1.9122034641490611 18 1.9122034641490611 21 4.0514980310087436 25 8.0401232256568225;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.9521869421005249 1 0.99485528469085693 
		0.90905314683914185 0.88645005226135254;
	setAttr -s 6 ".kiy[0:5]"  0 -0.30551597476005554 0 0.10130629688501358 
		0.41668024659156799 0.46282428503036499;
	setAttr -s 6 ".kox[0:5]"  1 0.9521869421005249 1 0.99485528469085693 
		0.90905314683914185 0.88645005226135254;
	setAttr -s 6 ".koy[0:5]"  0 -0.30551597476005554 0 0.10130629688501358 
		0.41668024659156799 0.46282428503036499;
createNode animCurveTA -n "animCurveTA840";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 10 0 18 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA841";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 10 0 18 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA842";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 33.429092416277157 5 72.476495146112825 
		10 72.476495146112825 18 72.476495146112825 21 58.656219255572189 25 33.429092416277157;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.43937262892723083 1 0.83543670177459717 
		0.32391959428787231 0.28982853889465332;
	setAttr -s 6 ".kiy[0:5]"  0 0.89830487966537476 0 -0.54958665370941162 
		-0.94608461856842041 -0.95707857608795166;
	setAttr -s 6 ".kox[0:5]"  1 0.43937262892723083 1 0.83543670177459717 
		0.32391959428787231 0.28982853889465332;
	setAttr -s 6 ".koy[0:5]"  0 0.89830487966537476 0 -0.54958665370941162 
		-0.94608461856842041 -0.95707857608795166;
createNode animCurveTA -n "animCurveTA843";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.2533422302317216 5 8.2533422302317216 
		10 8.2533422302317216 18 8.2533422302317216 21 8.2533422302317216 25 8.2533422302317216;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA844";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 23.263402056531085 5 23.263402056531085 
		10 23.263402056531085 18 23.263402056531085 21 23.263402056531085 25 23.263402056531085;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA845";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 20.166277752815617 5 20.166277752815617 
		10 20.166277752815617 18 20.166277752815617 21 20.166277752815617 25 20.166277752815617;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA846";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 10 0 18 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA847";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 10 0 18 0 21 0 25 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA848";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 17.254116939558369 5 45.742421472237368 
		10 45.742421472237368 18 45.742421472237368 21 35.659388897877669 25 17.254116939558369;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.55684584379196167 1 0.90154021978378296 
		0.42482781410217285 0.38335680961608887;
	setAttr -s 6 ".kiy[0:5]"  0 0.83061587810516357 0 -0.43269532918930054 
		-0.9052741527557373 -0.92360031604766846;
	setAttr -s 6 ".kox[0:5]"  1 0.55684584379196167 1 0.90154021978378296 
		0.42482781410217285 0.38335680961608887;
	setAttr -s 6 ".koy[0:5]"  0 0.83061587810516357 0 -0.43269532918930054 
		-0.9052741527557373 -0.92360031604766846;
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
	setAttr ".o" 4;
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
connectAttr "wps_cheerSource.st" "clipLibrary1.st[0]";
connectAttr "wps_cheerSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL247.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL248.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL249.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL250.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL251.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA730.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU25.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU26.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU27.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU28.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU29.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU30.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "wps_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "wps_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "animCurveTA731.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA732.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA733.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL252.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL253.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL254.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL255.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL256.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL257.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA734.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA735.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA736.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL258.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL259.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL260.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA737.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA738.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA739.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA740.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA741.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA742.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA743.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA744.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA745.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA746.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA747.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA748.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA749.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA750.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA751.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL261.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL262.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL263.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL264.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL265.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL266.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL267.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL268.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL269.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA752.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA753.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA754.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA755.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA756.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA757.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA758.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA759.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA760.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA761.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA762.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA763.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA764.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA765.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA766.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA767.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA768.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA769.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA770.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA771.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA772.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA773.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA774.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA775.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA776.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA777.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA778.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA779.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA780.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "Right_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "Right_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "Right_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "Left_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "Left_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "Left_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "animCurveTL276.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL277.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL278.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA787.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA788.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA789.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL279.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL280.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL281.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA790.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA791.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA792.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL282.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL283.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL284.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL285.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL286.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL287.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA793.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA794.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA795.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA796.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA797.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA798.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA799.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA800.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA801.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA802.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA803.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA804.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA805.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA806.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA807.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA808.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA809.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA810.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA811.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA812.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA813.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA814.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA815.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA816.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA817.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA818.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA819.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA820.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA821.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA822.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA823.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA824.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA825.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA826.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA827.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA828.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA829.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA830.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA831.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA832.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA833.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA834.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA835.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA836.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA837.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA838.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA839.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA840.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA841.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA842.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA843.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA844.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA845.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA846.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA847.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA848.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of wps_cheer.ma
