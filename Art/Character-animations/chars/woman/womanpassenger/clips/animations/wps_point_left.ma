//Maya ASCII 4.0 scene
//Name: wps_point_left.ma
//Last modified: Wed, Aug 14, 2002 11:29:19 AM
requires maya "4.0";
requires "p3dmayaexp" "18.2";
requires "p3dSimpleShader" "18.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "wps_point_leftSource";
	setAttr ".ihi" 0;
	setAttr ".du" 23;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL247";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL248";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.98752775572053031 23 0.98752775572053031;
createNode animCurveTL -n "animCurveTL250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL251";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.7862033266438363 23 0.7862033266438363;
createNode animCurveTA -n "animCurveTA694";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTU -n "animCurveTU49";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU50";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU51";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU52";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU53";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU54";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "wps_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  10 0;
createNode animCurveTU -n "wps_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  10 0;
createNode animCurveTA -n "animCurveTA695";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA696";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA697";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL252";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL253";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL254";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.0182182727496343 3 1.0182182727496343 
		6 1.0182182727496343 9 1.0182182727496343 18 1.0182182727496343 23 1.0182182727496343;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.51781298511506035 3 0.51781298511506035 
		6 0.51781298511506035 9 0.51781298511506035 18 0.51781298511506035 23 0.51781298511506035;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.725016696635667 3 1.725016696635667 
		6 1.725016696635667 9 1.725016696635667 18 1.725016696635667 23 1.725016696635667;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA698";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -36.819011955683756 3 -36.819011955683756 
		6 -36.819011955683756 9 -36.819011955683756 18 -36.819011955683756 23 -36.819011955683756;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA699";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA700";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.3209532433521722 3 1.3209532433521722 
		6 1.3209532433521722 9 1.3209532433521722 18 1.3209532433521722 23 1.3209532433521722;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.49929236591446868 3 0.49929236591446868 
		6 0.49929236591446868 9 0.49929236591446868 18 0.49929236591446868 23 0.49929236591446868;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.7640779368499853 3 1.7640779368499853 
		6 1.7640779368499853 9 1.7640779368499853 18 1.7640779368499853 23 1.7640779368499853;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA701";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -24.2048482305423 3 -24.2048482305423 
		6 -24.2048482305423 9 -24.2048482305423 18 -24.2048482305423 23 -24.2048482305423;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA702";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA703";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA704";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA705";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA706";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA707";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA708";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA709";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA710";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA711";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA712";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA713";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA714";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  1;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA715";
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
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0.097466557943624466 6 0.097466557943624466 
		9 0.097466557943624466 18 0.097466557943624466 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.02051553875207901 1 1 0.047824885696172714 
		0.017097381874918938;
	setAttr -s 6 ".kiy[0:5]"  0 0.9997895359992981 0 0 -0.99885571002960205 
		-0.99985384941101074;
	setAttr -s 6 ".kox[0:5]"  1 0.02051553875207901 1 1 0.047824885696172714 
		0.017097381874918938;
	setAttr -s 6 ".koy[0:5]"  0 0.9997895359992981 0 0 -0.99885571002960205 
		-0.99985384941101074;
createNode animCurveTL -n "animCurveTL262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0.89926276112817349 6 0.89926276112817349 
		9 0.89926276112817349 18 0.89926276112817349 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.0022240385878831148 1 1 0.0051893661729991436 
		0.0018533667316660285;
	setAttr -s 6 ".kiy[0:5]"  0 0.99999755620956421 0 0 -0.99998652935028076 
		-0.99999827146530151;
	setAttr -s 6 ".kox[0:5]"  1 0.0022240385878831148 1 1 0.0051893661729991436 
		0.0018533667316660285;
	setAttr -s 6 ".koy[0:5]"  0 0.99999755620956421 0 0 -0.99998652935028076 
		-0.99999827146530151;
createNode animCurveTL -n "animCurveTL263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 3 0.80168990793572048 6 0.80168990793572048 
		9 0.80168990793572048 18 0.80168990793572048 23 1;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.010084702633321285 1 1 0.023525655269622803 
		0.0084040490910410881;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99994915723800659 0 0 0.99972325563430786 
		0.99996471405029297;
	setAttr -s 6 ".kox[0:5]"  1 0.010084702633321285 1 1 0.023525655269622803 
		0.0084040490910410881;
	setAttr -s 6 ".koy[0:5]"  0 -0.99994915723800659 0 0 0.99972325563430786 
		0.99996471405029297;
createNode animCurveTL -n "animCurveTL264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0.011621961304049206 6 0.011621961304049206 
		9 0.011621961304049206 18 0.011621961304049206 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.16959509253501892 1 1 0.37262123823165894 
		0.14195439219474792;
	setAttr -s 6 ".kiy[0:5]"  0 0.98551380634307861 0 0 -0.92798352241516113 
		-0.98987317085266113;
	setAttr -s 6 ".kox[0:5]"  1 0.16959509253501892 1 1 0.37262123823165894 
		0.14195439219474792;
	setAttr -s 6 ".koy[0:5]"  0 0.98551380634307861 0 0 -0.92798352241516113 
		-0.98987317085266113;
createNode animCurveTL -n "animCurveTL265";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0.53592894662340362 6 0.53592894662340362 
		9 0.53592894662340362 18 0.53592894662340362 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.003731811884790659 1 1 0.0087072914466261864 
		0.0031098497565835714;
	setAttr -s 6 ".kiy[0:5]"  0 0.99999302625656128 0 0 -0.99996209144592285 
		-0.99999517202377319;
	setAttr -s 6 ".kox[0:5]"  1 0.003731811884790659 1 1 0.0087072914466261864 
		0.0031098497565835714;
	setAttr -s 6 ".koy[0:5]"  0 0.99999302625656128 0 0 -0.99996209144592285 
		-0.99999517202377319;
createNode animCurveTL -n "animCurveTL266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 3 1.1714982742260704 6 1.1714982742260704 
		9 1.1714982742260704 18 1.1714982742260704 23 1;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.011661131866276264 1 1 0.027201090008020401 
		0.0097178108990192413;
	setAttr -s 6 ".kiy[0:5]"  0 0.99993199110031128 0 0 -0.99962997436523438 
		-0.99995279312133789;
	setAttr -s 6 ".kox[0:5]"  1 0.011661131866276264 1 1 0.027201090008020401 
		0.0097178108990192413;
	setAttr -s 6 ".koy[0:5]"  0 0.99993199110031128 0 0 -0.99962997436523438 
		-0.99995279312133789;
createNode animCurveTL -n "animCurveTL267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.2031997596013333 3 1.2031997596013333 
		6 1.2031997596013333 9 1.2031997596013333 18 1.2031997596013333 23 1.2031997596013333;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.74320840376740638 3 0.74320840376740638 
		6 0.74320840376740638 9 0.74320840376740638 18 0.74320840376740638 23 0.74320840376740638;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.95790690250061006 3 0.95790690250061006 
		6 0.95790690250061006 9 0.95790690250061006 18 0.95790690250061006 23 0.95790690250061006;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA716";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -47.088616656908435 3 -36.791727061442757 
		6 -36.791727061442757 9 -36.458656873928298 18 -36.458656873928298 23 -47.088616656908435;
	setAttr -s 6 ".kit[2:5]"  9 1 1 9;
	setAttr -s 6 ".kot[2:5]"  9 1 1 9;
	setAttr -s 6 ".kix[0:5]"  1 0.99579465389251709 0.99957787990570068 
		0.99822789430618286 0.99963086843490601 0.66828131675720215;
	setAttr -s 6 ".kiy[0:5]"  0 0.091613098978996277 0.029053587466478348 
		0.059506800025701523 -0.027167890220880508 -0.74390864372253418;
	setAttr -s 6 ".kox[0:5]"  1 0.99579465389251709 0.99957787990570068 
		0.99822789430618286 0.99963086843490601 0.66828131675720215;
	setAttr -s 6 ".koy[0:5]"  0 0.091613180935382843 0.029053587466478348 
		0.059506792575120926 -0.027167830616235733 -0.74390864372253418;
createNode animCurveTA -n "animCurveTA717";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.0975263990809503 3 0.081743337009798911 
		6 0.081743337009798911 9 -0.35457167540140028 18 -0.35457167540140028 23 
		-2.0975263990809503;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.98239254951477051 0.99927592277526855 
		0.99981880187988281 0.99788212776184082 0.98374783992767334;
	setAttr -s 6 ".kiy[0:5]"  0 0.18682861328125 -0.038048096001148224 
		-0.019034383818507195 -0.065048292279243469 -0.17955543100833893;
	setAttr -s 6 ".kox[0:5]"  1 0.98239254951477051 0.99927592277526855 
		0.99981880187988281 0.99788212776184082 0.98374783992767334;
	setAttr -s 6 ".koy[0:5]"  0 0.18682861328125 -0.038048096001148224 
		-0.019034383818507195 -0.065048292279243469 -0.17955543100833893;
createNode animCurveTA -n "animCurveTA718";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.53932213336905643 3 1.7001481273238352 
		6 1.7001481273238352 9 1.4880125708763117 18 1.4880125708763117 23 0.53932213336905643;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.99490821361541748 0.99982869625091553 
		0.99995714426040649 0.99937117099761963 0.99510133266448975;
	setAttr -s 6 ".kiy[0:5]"  0 0.10078537464141846 -0.018509147688746452 
		-0.0092557631433010101 -0.035458628088235855 -0.098859973251819611;
	setAttr -s 6 ".kox[0:5]"  1 0.99490821361541748 0.99982869625091553 
		0.99995714426040649 0.99937117099761963 0.99510133266448975;
	setAttr -s 6 ".koy[0:5]"  0 0.10078537464141846 -0.018509147688746452 
		-0.0092557631433010101 -0.035458628088235855 -0.098859973251819611;
createNode animCurveTA -n "animCurveTA719";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA720";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA721";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA722";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA723";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA724";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA725";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA726";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA727";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA728";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA729";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA730";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA731";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA732";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA733";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA734";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA735";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA736";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA737";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA738";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA739";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA740";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA741";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA742";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 0 6 0 9 0 18 0 23 0;
createNode animCurveTA -n "animCurveTA743";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 0 6 0 9 0 18 0 23 0;
createNode animCurveTA -n "animCurveTA744";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  3 -37.313732430097119 6 -37.313732430097119 
		9 -37.313732430097119 18 -37.313732430097119 23 -37.313732430097119;
createNode animCurveTL -n "Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 -0.16261187792304868 1 -0.25940629101453455 
		2 -0.45739738748929087 3 -0.61462303833661902 4 -0.66980881786461799 5 -0.6810898338218363 
		6 -0.68476259945805484 7 -0.69435121315816672 8 -0.69826048290221987 9 -0.69676248688091136 
		10 -0.69505552683619953 11 -0.69687892916025473 12 -0.70016608274962433 13 
		-0.70286144311496768 14 -0.70291939363911815 15 -0.698296732380698 16 -0.68693849556375652 
		17 -0.66675795707018293 18 -0.63561354056932917 19 -0.57857794665211915 20 
		-0.49001163368549699 21 -0.38215216015843256 22 -0.26829854967400651 23 -0.16261187792304868;
createNode animCurveTL -n "Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 -0.83267844404058533 1 -0.82401120194705491 
		2 -0.80140154186577905 3 -0.77685325129352722 4 -0.76212180574037558 5 -0.75256130733382076 
		6 -0.7463491043046625 7 -0.74327154821118457 8 -0.74352829953567068 9 -0.74468233981740595 
		10 -0.7448582205328671 11 -0.74409182559560227 12 -0.74288777554284846 13 
		-0.74176393185525913 14 -0.74126001044386469 15 -0.74192933062079203 16 -0.74431338227512711 
		17 -0.74889965980733997 18 -0.75606472884611098 19 -0.76873838641183623 20 
		-0.7864311742136314 21 -0.80476622927769459 22 -0.82067887729397915 23 -0.83267844404058533;
createNode animCurveTL -n "Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0.090386867528879297 1 0.079220767161840649 
		2 0.056898525506628078 3 0.034294059683984093 4 0.0025215918912769287 5 -0.040098827974871208 
		6 -0.072852978748803171 7 -0.087461591537131386 8 -0.091524895851795671 9 
		-0.092271878985885222 10 -0.094763400720126761 11 -0.098524850048144194 12 
		-0.10269734364767726 13 -0.10639200541602228 14 -0.10869452301689837 15 -0.10868780680438711 
		16 -0.10549266152323838 17 -0.098326202271206031 18 -0.086577556246589013 
		19 -0.06105846182006925 20 -0.020886145949845183 21 0.02274117052246 22 0.061424981847481047 
		23 0.090386867528879297;
createNode animCurveTA -n "Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 59.929423292753846 1 48.095783822029063 
		2 19.889143603005074 3 -3.2123535060204027 4 -11.090212996009306 5 -13.425491477485119 
		6 -14.845666771256804 7 -16.770811201700923 8 -17.862014854775076 9 -17.967232666029741 
		10 -17.767568308817566 11 -17.895310475321541 12 -18.116149538042663 13 -18.199786861638078 
		14 -17.923452143607438 15 -17.068044164407734 16 -15.406717009992134 17 -12.685453495635191 
		18 -8.5955408298592193 19 -0.45469012564787481 20 12.877812004894174 21 29.169756989532836 
		22 45.808853456521476 23 59.929423292753846;
createNode animCurveTA -n "Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 45.790364280405257 1 32.478260152109897 
		2 9.2257376264877102 3 -5.7044845400110589 4 -11.486014634216671 5 -14.19726694931191 
		6 -15.908763713376205 7 -17.117912645437872 8 -17.285117277714349 9 -16.948205920941508 
		10 -16.813511428631621 11 -17.077237710725754 12 -17.515702202693575 13 -17.904359077112765 
		14 -18.025104620489827 15 -17.661066989197405 16 -16.578411513907248 17 -14.496515823288675 
		18 -11.052055890880691 19 -4.6159758630423875 20 5.523441077701043 21 18.265638369724012 
		22 32.251550640406322 23 45.790364280405257;
createNode animCurveTA -n "Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 89.927469671622774 1 81.83055479277634 
		2 55.974483438496648 3 30.154391237976128 4 20.70868224739106 5 19.261983662732629 
		6 19.004752334033299 7 17.669875572050287 8 17.49072826389806 9 18.131145639969599 
		10 18.604506897317282 11 18.401667520998579 12 17.902119924191538 13 17.486495197304588 
		14 17.542439391288706 15 18.458240275740792 16 20.603789925862539 17 24.298979219538541 
		18 29.77155211362906 19 39.18458847271561 20 52.604068416013874 21 67.177462760720474 
		22 80.347578573140396 23 89.927469671622774;
createNode animCurveTL -n "Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0.20793334527655816 1 0.15894067834849465 
		2 0.077197129840257617 3 0.04949141016264548 4 0.12845985670372614 5 0.26957889121569112 
		6 0.39461737883285253 7 0.4694776078978305 8 0.51907047207931101 9 0.5370011313447719 
		10 0.53536964654082686 11 0.53240538971734797 12 0.52882801653739531 13 0.52538036512777186 
		14 0.52283241288758631 15 0.52197088193523489 16 0.52357440533268007 17 0.5283742828598309 
		18 0.53700113134477245 19 0.52480443770170548 20 0.4732098043107078 21 0.3928614412710249 
		22 0.29802739255571625 23 0.20793334527655816;
createNode animCurveTL -n "Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 -0.84194018189928654 1 -0.82899827158942663 
		2 -0.78408275227820601 3 -0.70845532452625037 4 -0.56455090438345634 5 -0.37310888521641289 
		6 -0.2275087198038741 7 -0.16174420841419065 8 -0.13466704518824987 9 -0.12552046641722037 
		10 -0.12218765526312787 11 -0.12204553161174581 12 -0.12409224780885794 13 
		-0.12732827638296976 14 -0.13073952288677237 15 -0.13329397904874543 16 -0.13395130642163788 
		17 -0.13168526312636886 18 -0.12552046641722037 19 -0.17203830286623606 20 
		-0.30410494716787451 21 -0.48396741055110898 22 -0.67477686611879772 23 -0.84194018189928654;
createNode animCurveTL -n "Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 -0.00048716197021754227 1 0.11699543287006697 
		2 0.35363649196821262 3 0.53040551507251754 4 0.5446781863982777 5 0.49413167597902125 
		6 0.49152076449176074 7 0.60483750234043177 8 0.7550564170445131 9 0.82956738560127519 
		10 0.83077081362565308 11 0.83468071994681825 12 0.8400069694802611 13 0.84545060227321356 
		14 0.8497224454737401 15 0.85154848852823961 16 0.84966141502495929 17 0.84277845164765586 
		18 0.82956738560127496 19 0.75666156346681335 20 0.5986958481688277 21 0.39468282573747077 
		22 0.18258064795165221 23 -0.00048716197021754227;
createNode animCurveTA -n "Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 31.546913396341143 1 4.6428962543019372 
		2 140.57647030005208 3 95.837894107394334 4 92.964533831850801 5 105.97755497337116 
		6 125.62798096411615 7 170.09593665300511 8 -31.926344454384175 9 -9.3044284216775939 
		10 -10.112947045156643 11 -9.9008021825600654 12 -9.0168813634938783 13 -7.8067919020105938 
		14 -6.6215243053233266 15 -5.8206233983946651 16 -5.7680797179234533 17 -6.8196208255473012 
		18 -9.3044284216775939 19 -3.7272837986539065 20 9.5184496096320093 21 20.903997349825417 
		22 28.071969006499515 23 31.546913396341143;
createNode animCurveTA -n "Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 -29.777804226147087 1 -44.371616308389562 
		2 -79.542227548719012 3 -51.07619339978006 4 -53.45340403429752 5 -58.266902448655252 
		6 -67.364676124200287 7 -81.100348038164583 8 -74.659139215034273 9 -63.061877156631873 
		10 -62.844322817144153 11 -62.995367762052503 12 -63.380386676373504 13 -63.865591506140653 
		14 -64.316475145194445 15 -64.597366606138834 16 -64.571916393215986 17 -64.104367453634424 
		18 -63.061877156631873 19 -58.614794991909058 20 -49.315556937852584 21 -38.848481552334974 
		22 -31.713061071017872 23 -29.777804226147087;
createNode animCurveTA -n "Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 -82.514492469619725 1 -41.853841908675157 
		2 -172.23128768293566 3 -118.2018862143011 4 -112.68960389179185 5 -129.84118896775234 
		6 -151.29290203363394 7 169.41225075960966 8 21.26821364279121 9 3.247436752824314 
		10 3.0133657121622943 11 2.8201249175960426 12 2.6727755265923028 13 2.5724559513776839 
		14 2.5271432485165377 15 2.5553090947391848 16 2.6807812771016861 17 2.9175531893751701 
		18 3.247436752824314 19 -6.034411676394515 20 -25.168404378016987 21 -45.91437280400428 
		22 -65.825066728268624 23 -82.514492469619725;
createNode animCurveTL -n "animCurveTL276";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.0647721020251719 3 1.6449615192911815 
		6 1.5901062706537668 9 1.5829715479984001 18 1.6449615192911815 23 2.0647721020251719;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.0042134532704949379 0.032246503978967667 
		0.072726093232631683 0.0096854353323578835 0.0039700125344097614;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99999111890792847 -0.99947994947433472 
		0.99735194444656372 0.99995309114456177 0.99999213218688965;
	setAttr -s 6 ".kox[0:5]"  1 0.0042134532704949379 0.032246503978967667 
		0.072726093232631683 0.0096854353323578835 0.0039700125344097614;
	setAttr -s 6 ".koy[0:5]"  0 -0.99999111890792847 -0.99947994947433472 
		0.99735194444656372 0.99995309114456177 0.99999213218688965;
createNode animCurveTL -n "animCurveTL277";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.7590071920447805 3 1.8075194244814157 
		6 1.8138583560032913 9 1.8146828260820291 18 1.8075194244814157 23 1.7590071920447805;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.036438092589378357 0.26891261339187622 
		0.53365576267242432 0.08352593332529068 0.034335333853960037;
	setAttr -s 6 ".kiy[0:5]"  0 0.9993358850479126 0.9631645679473877 
		-0.84570181369781494 -0.99650561809539795 -0.99941039085388184;
	setAttr -s 6 ".kox[0:5]"  1 0.036438092589378357 0.26891261339187622 
		0.53365576267242432 0.08352593332529068 0.034335333853960037;
	setAttr -s 6 ".koy[0:5]"  0 0.9993358850479126 0.9631645679473877 
		-0.84570181369781494 -0.99650561809539795 -0.99941039085388184;
createNode animCurveTL -n "animCurveTL278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.9261547314579206 3 1.9081008356784872 
		6 1.9057417933795322 9 1.9054349656318972 18 1.9081008356784872 23 1.9261547314579206;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.097510166466236115 0.60011470317840576 
		0.86135947704315186 0.21972368657588959 0.091925300657749176;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99523454904556274 -0.79991394281387329 
		0.50799590349197388 0.97556215524673462 0.99576592445373535;
	setAttr -s 6 ".kox[0:5]"  1 0.097510166466236115 0.60011470317840576 
		0.86135947704315186 0.21972368657588959 0.091925300657749176;
	setAttr -s 6 ".koy[0:5]"  0 -0.99523454904556274 -0.79991394281387329 
		0.50799590349197388 0.97556215524673462 0.99576592445373535;
createNode animCurveTA -n "animCurveTA751";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 59.00791013189712 3 -26.925420677312378 
		6 -38.15404336482208 9 -39.614488474705965 18 -26.925420677312378 23 59.00791013189712;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.11712693423032761 0.67022383213043213 
		0.89801120758056641 0.26166892051696777 0.11044465005397797;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99311697483062744 -0.74215900897979736 
		0.43997257947921753 0.96515768766403198 0.99388229846954346;
	setAttr -s 6 ".kox[0:5]"  1 0.11712693423032761 0.67022383213043213 
		0.89801120758056641 0.26166892051696777 0.11044465005397797;
	setAttr -s 6 ".koy[0:5]"  0 -0.99311697483062744 -0.74215900897979736 
		0.43997257947921753 0.96515768766403198 0.99388229846954346;
createNode animCurveTA -n "animCurveTA752";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 71.601588453715053 3 7.9339749209582973 
		6 -0.38525980853619229 9 -1.4672971781715589 18 7.9339749209582973 23 71.601588453715053;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.15720473229885101 0.77311015129089355 
		0.93998688459396362 0.34364399313926697 0.14832760393619537;
	setAttr -s 6 ".kiy[0:5]"  0 -0.98756605386734009 -0.63427180051803589 
		0.34121060371398926 0.93909996747970581 0.98893827199935913;
	setAttr -s 6 ".kox[0:5]"  1 0.15720473229885101 0.77311015129089355 
		0.93998688459396362 0.34364399313926697 0.14832760393619537;
	setAttr -s 6 ".koy[0:5]"  0 -0.98756605386734009 -0.63427180051803589 
		0.34121060371398926 0.93909996747970581 0.98893827199935913;
createNode animCurveTA -n "animCurveTA753";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 90.779043014820644 3 32.445780347206828 
		6 24.823567473074302 9 23.832188139843645 18 32.445780347206828 23 90.779043014820644;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.17117643356323242 0.79935580492019653 
		0.94889700412750244 0.37090376019477844 0.16155204176902771;
	setAttr -s 6 ".kiy[0:5]"  0 -0.9852403998374939 -0.60085797309875488 
		0.31558588147163391 0.92867130041122437 0.98686420917510986;
	setAttr -s 6 ".kox[0:5]"  1 0.17117643356323242 0.79935580492019653 
		0.94889700412750244 0.37090376019477844 0.16155204176902771;
	setAttr -s 6 ".koy[0:5]"  0 -0.9852403998374939 -0.60085797309875488 
		0.31558588147163391 0.92867130041122437 0.98686420917510986;
createNode animCurveTL -n "animCurveTL279";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 3.1112480635238988 3 2.9665633987786273 
		6 3.3491669411877854 9 3.5349300647654789 18 3.5349300647654789 23 3.1112480635238988;
	setAttr -s 6 ".kit[1:5]"  9 9 1 1 9;
	setAttr -s 6 ".kot[1:5]"  9 9 1 1 9;
	setAttr -s 6 ".kix[0:5]"  1 0.0084059294313192368 0.0035188333131372929 
		0.42253401875495911 0.42351061105728149 0.0039337375201284885;
	setAttr -s 6 ".kiy[0:5]"  0 0.99996465444564819 0.99999380111694336 
		0.90634703636169434 -0.90589112043380737 -0.9999922513961792;
	setAttr -s 6 ".kox[0:5]"  1 0.0084059294313192368 0.0035188333131372929 
		0.42253401875495911 0.42351061105728149 0.0039337375201284885;
	setAttr -s 6 ".koy[0:5]"  0 0.99996465444564819 0.99999380111694336 
		0.90634709596633911 -0.90589112043380737 -0.9999922513961792;
createNode animCurveTL -n "animCurveTL280";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.7424766145627919 3 2.1610641371598902 
		6 2.5642038512926728 9 2.7911140834755681 18 2.7911140834755681 23 1.7424766145627919;
	setAttr -s 6 ".kit[1:5]"  9 9 1 1 9;
	setAttr -s 6 ".kot[1:5]"  9 9 1 1 9;
	setAttr -s 6 ".kix[0:5]"  1 0.0024338904768228531 0.0031743356958031654 
		0.13394327461719513 0.089985273778438568 0.001589361927472055;
	setAttr -s 6 ".kiy[0:5]"  0 0.99999701976776123 0.99999493360519409 
		0.99098902940750122 -0.99594306945800781 -0.99999874830245972;
	setAttr -s 6 ".kox[0:5]"  1 0.0024338904768228531 0.0031743356958031654 
		0.13394330441951752 0.089985288679599762 0.001589361927472055;
	setAttr -s 6 ".koy[0:5]"  0 0.99999701976776123 0.99999493360519409 
		0.99098896980285645 -0.99594306945800781 -0.99999874830245972;
createNode animCurveTL -n "animCurveTL281";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.8531126401564211 3 2.3221017948667031 
		6 1.9889517107329044 9 2.2393887500073593 18 2.2393887500073588 23 1.8531126401564211;
	setAttr -s 6 ".kit[1:5]"  9 9 1 1 9;
	setAttr -s 6 ".kot[1:5]"  9 9 1 1 9;
	setAttr -s 6 ".kix[0:5]"  1 0.014721709303557873 0.024172917008399963 
		0.96935427188873291 0.29772278666496277 0.0043146628886461258;
	setAttr -s 6 ".kiy[0:5]"  0 0.99989163875579834 -0.99970781803131104 
		0.24566705524921417 -0.95465236902236938 -0.99999070167541504;
	setAttr -s 6 ".kox[0:5]"  1 0.014721709303557873 0.024172917008399963 
		0.96935427188873291 0.29772275686264038 0.0043146628886461258;
	setAttr -s 6 ".koy[0:5]"  0 0.99989163875579834 -0.99970781803131104 
		0.24566705524921417 -0.95465236902236938 -0.99999070167541504;
createNode animCurveTA -n "animCurveTA754";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 26.279373069154833 3 -222.27914923095193 
		6 -153.48644821514827 9 -47.476105832657929 18 -47.476105832657929 23 26.279373069154833;
	setAttr -s 6 ".kit[1:5]"  9 9 1 1 9;
	setAttr -s 6 ".kot[1:5]"  9 9 1 1 9;
	setAttr -s 6 ".kix[0:5]"  1 0.063615791499614716 0.065414264798164368 
		0.89917171001434326 0.7076689600944519 0.12840063869953156;
	setAttr -s 6 ".kiy[0:5]"  0 -0.9979744553565979 0.99785816669464111 
		-0.4375959038734436 -0.70654410123825073 0.99172240495681763;
	setAttr -s 6 ".kox[0:5]"  1 0.063615791499614716 0.065414264798164368 
		0.89917176961898804 0.7076689600944519 0.12840063869953156;
	setAttr -s 6 ".koy[0:5]"  0 -0.9979744553565979 0.99785816669464111 
		-0.43759584426879883 -0.70654416084289551 0.99172240495681763;
createNode animCurveTA -n "animCurveTA755";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -55.316964386970021 3 -70.78283385033113 
		6 -69.3207634291593 9 -47.229014990167073 18 -47.229014990167073 23 -55.316964386970021;
	setAttr -s 6 ".kit[2:5]"  9 1 1 9;
	setAttr -s 6 ".kot[2:5]"  9 1 1 9;
	setAttr -s 6 ".kix[0:5]"  1 0.21779277920722961 0.43748241662979126 
		0.99391132593154907 0.98416692018508911 0.76307976245880127;
	setAttr -s 6 ".kiy[0:5]"  0 -0.97599506378173828 0.89922696352005005 
		0.1101827397942543 0.17724402248859406 -0.64630430936813354;
	setAttr -s 6 ".kox[0:5]"  1 0.15155307948589325 0.43748241662979126 
		0.99391132593154907 0.98416692018508911 0.76307976245880127;
	setAttr -s 6 ".koy[0:5]"  0 -0.9884490966796875 0.89922696352005005 
		0.1101827472448349 0.17724402248859406 -0.64630430936813354;
createNode animCurveTA -n "animCurveTA756";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -77.201572122121519 3 207.05721723508225 
		6 134.36684073579161 9 37.403163180645734 18 37.403163180645734 23 -77.201572122121519;
	setAttr -s 6 ".kit[1:5]"  9 9 1 1 9;
	setAttr -s 6 ".kot[1:5]"  9 9 1 1 9;
	setAttr -s 6 ".kix[0:5]"  1 0.054083611816167831 0.067390702664852142 
		0.91708159446716309 0.84618008136749268 0.083035990595817566;
	setAttr -s 6 ".kiy[0:5]"  0 0.99853640794754028 -0.9977266788482666 
		-0.39869952201843262 -0.53289711475372314 -0.99654656648635864;
	setAttr -s 6 ".kox[0:5]"  1 0.054083611816167831 0.067390702664852142 
		0.91708159446716309 0.84618008136749268 0.083035990595817566;
	setAttr -s 6 ".koy[0:5]"  0 0.99853640794754028 -0.9977266788482666 
		-0.39869952201843262 -0.53289711475372314 -0.99654656648635864;
createNode animCurveTL -n "animCurveTL282";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.22996541113775407 3 0.77290696453185026 
		6 0.77290696453185026 9 0.77290696453185026 18 0.77290696453185026 23 0.22996541113775407;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kix[0:5]"  1 0.0036836124490946531 1 1 1 0.0030696834437549114;
	setAttr -s 6 ".kiy[0:5]"  0 0.99999320507049561 0 0 0 -0.99999529123306274;
	setAttr -s 6 ".kox[0:5]"  1 0.0036836124490946531 1 1 1 0.0030696834437549114;
	setAttr -s 6 ".koy[0:5]"  0 0.99999320507049561 0 0 0 -0.99999529123306274;
createNode animCurveTL -n "animCurveTL283";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.71572892866406468 3 -0.71234308293286885 
		6 -0.71234308293286885 9 -0.71234308293286885 18 -0.71234308293286885 23 
		-0.71572892866406468;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kix[0:5]"  1 0.50859230756759644 1 1 1 0.44163894653320313;
	setAttr -s 6 ".kiy[0:5]"  0 0.86100751161575317 0 0 0 -0.89719283580780029;
	setAttr -s 6 ".kox[0:5]"  1 0.50859230756759644 1 1 1 0.44163894653320313;
	setAttr -s 6 ".koy[0:5]"  0 0.86100751161575317 0 0 0 -0.89719283580780029;
createNode animCurveTL -n "animCurveTL284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.86045149817799893 3 -0.35872267288917942 
		6 -0.35872267288917942 9 -0.35872267288917942 18 -0.35872267288917942 23 
		-0.86045149817799893;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kix[0:5]"  1 0.0039861854165792465 1 1 1 0.0033218290191143751;
	setAttr -s 6 ".kiy[0:5]"  0 0.99999207258224487 0 0 0 -0.99999445676803589;
	setAttr -s 6 ".kox[0:5]"  1 0.0039861854165792465 1 1 1 0.0033218290191143751;
	setAttr -s 6 ".koy[0:5]"  0 0.99999207258224487 0 0 0 -0.99999445676803589;
createNode animCurveTL -n "animCurveTL285";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.017571725225418906 3 -0.35039089098226439 
		6 -0.35039089098226439 9 -0.35039089098226439 18 -0.35039089098226439 23 
		-0.017571725225418906;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kix[0:5]"  1 0.006009160540997982 1 1 1 0.0050076614134013653;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99998193979263306 0 0 0 0.99998748302459717;
	setAttr -s 6 ".kox[0:5]"  1 0.006009160540997982 1 1 1 0.0050076614134013653;
	setAttr -s 6 ".koy[0:5]"  0 -0.99998193979263306 0 0 0 0.99998748302459717;
createNode animCurveTL -n "animCurveTL286";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.54560785950824164 3 -0.40854033940183732 
		6 -0.40854033940183732 9 -0.40854033940183732 18 -0.40854033940183732 23 
		-0.54560785950824164;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kix[0:5]"  1 0.014589795842766762 1 1 1 0.012158557772636414;
	setAttr -s 6 ".kiy[0:5]"  0 0.99989354610443115 0 0 0 -0.99992609024047852;
	setAttr -s 6 ".kox[0:5]"  1 0.014589795842766762 1 1 1 0.012158557772636414;
	setAttr -s 6 ".koy[0:5]"  0 0.99989354610443115 0 0 0 -0.99992609024047852;
createNode animCurveTL -n "animCurveTL287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.64724218630287966 3 -0.82408995422063858 
		6 -0.82408995422063858 9 -0.82408995422063858 18 -0.82408995422063858 23 
		-0.64724218630287966;
	setAttr -s 6 ".kit[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 3 3 9;
	setAttr -s 6 ".kix[0:5]"  1 0.011308439075946808 1 1 1 0.0094238827005028725;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99993604421615601 0 0 0 0.99995559453964233;
	setAttr -s 6 ".kox[0:5]"  1 0.011308439075946808 1 1 1 0.0094238827005028725;
	setAttr -s 6 ".koy[0:5]"  0 -0.99993604421615601 0 0 0 0.99995559453964233;
createNode animCurveTA -n "animCurveTA757";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 12.253734489678925 3 -0.061808866237337522 
		6 -0.061808866237337522 9 -0.061808866237337522 18 -0.061808866237337522 
		23 12.253734489678925;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.68119430541992188 1 1 0.90828335285186768 
		0.61276209354400635;
	setAttr -s 6 ".kiy[0:5]"  0 -0.73210269212722778 0 0 0.4183555543422699 
		0.7902674674987793;
	setAttr -s 6 ".kox[0:5]"  1 0.68119430541992188 1 1 0.90828335285186768 
		0.61276209354400635;
	setAttr -s 6 ".koy[0:5]"  0 -0.73210269212722778 0 0 0.4183555543422699 
		0.7902674674987793;
createNode animCurveTA -n "animCurveTA758";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -65.746751280844961 3 -59.058178941076754 
		6 -59.058178941076754 9 -59.058178941076754 18 -59.058178941076754 23 -65.746751280844961;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.86364555358886719 1 1 0.9701077938079834 
		0.81906807422637939;
	setAttr -s 6 ".kiy[0:5]"  0 0.50409960746765137 0 0 -0.24267442524433136 
		-0.5736963152885437;
	setAttr -s 6 ".kox[0:5]"  1 0.86364555358886719 1 1 0.9701077938079834 
		0.81906807422637939;
	setAttr -s 6 ".koy[0:5]"  0 0.50409960746765137 0 0 -0.24267442524433136 
		-0.5736963152885437;
createNode animCurveTA -n "animCurveTA759";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 16.579147429757843 6 16.579147429757843 
		9 16.579147429757843 18 16.579147429757843 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.56858205795288086 1 1 0.84988033771514893 
		0.49911072850227356;
	setAttr -s 6 ".kiy[0:5]"  0 0.82262653112411499 0 0 -0.52697569131851196 
		-0.86653822660446167;
	setAttr -s 6 ".kox[0:5]"  1 0.56858205795288086 1 1 0.84988033771514893 
		0.49911072850227356;
	setAttr -s 6 ".koy[0:5]"  0 0.82262653112411499 0 0 -0.52697569131851196 
		-0.86653822660446167;
createNode animCurveTA -n "animCurveTA760";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.061808866237337522 3 12.253734489678925 
		6 12.253734489678925 9 12.253734489678925 18 12.253734489678925 23 -0.061808866237337522;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.68119430541992188 1 1 0.90828335285186768 
		0.61276209354400635;
	setAttr -s 6 ".kiy[0:5]"  0 0.73210269212722778 0 0 -0.4183555543422699 
		-0.7902674674987793;
	setAttr -s 6 ".kox[0:5]"  1 0.68119430541992188 1 1 0.90828335285186768 
		0.61276209354400635;
	setAttr -s 6 ".koy[0:5]"  0 0.73210269212722778 0 0 -0.4183555543422699 
		-0.7902674674987793;
createNode animCurveTA -n "animCurveTA761";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -59.058178941076754 3 -65.746751280844961 
		6 -65.746751280844961 9 -65.746751280844961 18 -65.746751280844961 23 -59.058178941076754;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.86364555358886719 1 1 0.9701077938079834 
		0.81906807422637939;
	setAttr -s 6 ".kiy[0:5]"  0 -0.50409960746765137 0 0 0.24267442524433136 
		0.5736963152885437;
	setAttr -s 6 ".kox[0:5]"  1 0.86364555358886719 1 1 0.9701077938079834 
		0.81906807422637939;
	setAttr -s 6 ".koy[0:5]"  0 -0.50409960746765137 0 0 0.24267442524433136 
		0.5736963152885437;
createNode animCurveTA -n "animCurveTA762";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 16.579147429757843 3 0 6 0 9 
		0 18 0 23 16.579147429757843;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.56858205795288086 1 1 0.84988033771514893 
		0.49911072850227356;
	setAttr -s 6 ".kiy[0:5]"  0 -0.82262653112411499 0 0 0.52697569131851196 
		0.86653822660446167;
	setAttr -s 6 ".kox[0:5]"  1 0.56858205795288086 1 1 0.84988033771514893 
		0.49911072850227356;
	setAttr -s 6 ".koy[0:5]"  0 -0.82262653112411499 0 0 0.52697569131851196 
		0.86653822660446167;
createNode animCurveTA -n "animCurveTA763";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.5572674112203622 3 15.711328223519057 
		6 15.711328223519057 9 15.711328223519057 18 15.711328223519057 23 8.5572674112203622;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.84826141595840454 1 1 0.96601945161819458 
		0.80031812191009521;
	setAttr -s 6 ".kiy[0:5]"  0 0.52957773208618164 0 0 -0.25846937298774719 
		-0.59957557916641235;
	setAttr -s 6 ".kox[0:5]"  1 0.84826141595840454 1 1 0.96601945161819458 
		0.80031812191009521;
	setAttr -s 6 ".koy[0:5]"  0 0.52957773208618164 0 0 -0.25846937298774719 
		-0.59957557916641235;
createNode animCurveTA -n "animCurveTA764";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 15.711328223519057 3 8.5572674112203622 
		6 8.5572674112203622 9 8.5572674112203622 18 8.5572674112203622 23 15.711328223519057;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.84826141595840454 1 1 0.96601945161819458 
		0.80031812191009521;
	setAttr -s 6 ".kiy[0:5]"  0 -0.52957773208618164 0 0 0.25846937298774719 
		0.59957557916641235;
	setAttr -s 6 ".kox[0:5]"  1 0.84826141595840454 1 1 0.96601945161819458 
		0.80031812191009521;
	setAttr -s 6 ".koy[0:5]"  0 -0.52957773208618164 0 0 0.25846937298774719 
		0.59957557916641235;
createNode animCurveTA -n "animCurveTA765";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA766";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA767";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA768";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA769";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA770";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA771";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 10.423754966968488 3 8.2533422302317216 
		6 8.2533422302317216 9 8.2533422302317216 18 8.2533422302317216 23 10.423754966968488;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.98253160715103149 1 1 0.99672162532806396 
		0.97513025999069214;
	setAttr -s 6 ".kiy[0:5]"  0 -0.18609566986560822 0 0 0.080907136201858521 
		0.22163258492946625;
	setAttr -s 6 ".kox[0:5]"  1 0.98253160715103149 1 1 0.99672162532806396 
		0.97513025999069214;
	setAttr -s 6 ".koy[0:5]"  0 -0.18609566986560822 0 0 0.080907136201858521 
		0.22163258492946625;
createNode animCurveTA -n "animCurveTA772";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.722848255843903 3 23.263402056531085 
		6 23.263402056531085 9 23.263402056531085 18 23.263402056531085 23 27.722848255843903;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.93191927671432495 1 1 0.98637533187866211 
		0.90607011318206787;
	setAttr -s 6 ".kiy[0:5]"  0 -0.3626658022403717 0 0 0.16451053321361542 
		0.42312762141227722;
	setAttr -s 6 ".kox[0:5]"  1 0.93191927671432495 1 1 0.98637533187866211 
		0.90607011318206787;
	setAttr -s 6 ".koy[0:5]"  0 -0.3626658022403717 0 0 0.16451053321361542 
		0.42312762141227722;
createNode animCurveTA -n "animCurveTA773";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 21.576484776388227 3 20.166277752815617 
		6 20.166277752815617 9 20.166277752815617 18 20.166277752815617 23 21.576484776388227;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.99251258373260498 1 1 0.99861204624176025 
		0.98927098512649536;
	setAttr -s 6 ".kiy[0:5]"  0 -0.12214235216379166 0 0 0.052668418735265732 
		0.14609213173389435;
	setAttr -s 6 ".kox[0:5]"  1 0.99251258373260498 1 1 0.99861204624176025 
		0.98927098512649536;
	setAttr -s 6 ".koy[0:5]"  0 -0.12214235216379166 0 0 0.052668418735265732 
		0.14609213173389435;
createNode animCurveTA -n "animCurveTA774";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA775";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA776";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.080064458283051 3 33.429092416277157 
		6 25.192121946801748 9 24.143780240291136 18 24.143780240291136 23 27.080064458283051;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.98669826984405518 0.77695125341415405 
		0.99895542860031128 0.99402415752410889 0.95583415031433105;
	setAttr -s 6 ".kiy[0:5]"  0 -0.16256254911422729 -0.62956076860427856 
		-0.045694757252931595 0.10916052758693695 0.293906569480896;
	setAttr -s 6 ".kox[0:5]"  1 0.98669826984405518 0.77695125341415405 
		0.99895542860031128 0.99402415752410889 0.95583415031433105;
	setAttr -s 6 ".koy[0:5]"  0 -0.16256254911422729 -0.62956076860427856 
		-0.045694757252931595 0.10916052758693695 0.293906569480896;
createNode animCurveTA -n "animCurveTA777";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA778";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA779";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA780";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA781";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA782";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 23 13.994403295754109;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA783";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA784";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA785";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 23 13.994403295754109;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA786";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA787";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA788";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.911632519594587 3 17.254116939558369 
		6 17.254116939558369 9 17.254116939558369 18 17.254116939558369 23 27.911632519594587;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.73225569725036621 1 1 0.92892760038375854 
		0.66732347011566162;
	setAttr -s 6 ".kiy[0:5]"  0 -0.6810297966003418 0 0 0.37026140093803406 
		0.74476802349090576;
	setAttr -s 6 ".kox[0:5]"  1 0.73225569725036621 1 1 0.92892760038375854 
		0.66732347011566162;
	setAttr -s 6 ".koy[0:5]"  0 -0.6810297966003418 0 0 0.37026140093803406 
		0.74476802349090576;
createNode animCurveTA -n "animCurveTA789";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA790";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA791";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA792";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.3937906322123035 3 0.87902215066922906 
		6 5.022332624408179 9 6.2496885927925421 18 6.2496885927925421 23 2.3937906322123035;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.97468626499176025 0.90548360347747803 
		0.9985690712928772 0.9897611141204834 0.92726033926010132;
	setAttr -s 6 ".kiy[0:5]"  0 0.22357700765132904 0.42438122630119324 
		0.053476877510547638 -0.14273369312286377 -0.37441724538803101;
	setAttr -s 6 ".kox[0:5]"  1 0.97468626499176025 0.90548360347747803 
		0.9985690712928772 0.9897611141204834 0.92726033926010132;
	setAttr -s 6 ".koy[0:5]"  0 0.22357700765132904 0.42438122630119324 
		0.053476877510547638 -0.14273369312286377 -0.37441724538803101;
createNode animCurveTA -n "animCurveTA793";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.7843868968348546 3 4.7952631452849266 
		6 4.7952631452849248 9 4.7112308362498689 18 4.7112308362498689 23 -1.7843868968348546;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.86721235513687134 0.9999731183052063 
		0.99999326467514038 0.97173625230789185 0.82684206962585449;
	setAttr -s 6 ".kiy[0:5]"  0 0.49793845415115356 -0.0073330053128302097 
		-0.0036665764637291431 -0.23606926202774048 -0.56243413686752319;
	setAttr -s 6 ".kox[0:5]"  1 0.86721235513687134 0.9999731183052063 
		0.99999326467514038 0.97173625230789185 0.82684206962585449;
	setAttr -s 6 ".koy[0:5]"  0 0.49793845415115356 -0.0073330053128302097 
		-0.0036665764637291431 -0.23606926202774048 -0.56243413686752319;
createNode animCurveTA -n "animCurveTA794";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 13.23227595374661 3 7.5470594542643701 
		6 7.5470594542643692 9 8.1761541624434333 18 8.1761541624434333 23 13.23227595374661;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.89581006765365601 0.99849647283554077 
		0.99962347745895386 0.98258650302886963 0.88376450538635254;
	setAttr -s 6 ".kiy[0:5]"  0 -0.44443711638450623 0.05481632798910141 
		0.027439098805189133 0.18580566346645355 0.46793195605278015;
	setAttr -s 6 ".kox[0:5]"  1 0.89581006765365601 0.99849647283554077 
		0.99962347745895386 0.98258650302886963 0.88376450538635254;
	setAttr -s 6 ".koy[0:5]"  0 -0.44443711638450623 0.05481632798910141 
		0.027439098805189133 0.18580566346645355 0.46793195605278015;
createNode animCurveTA -n "animCurveTA795";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 39.57800299697621 6 30.738610994618611 
		9 30.634884899056313 18 30.634884899056313 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.34931021928787231 0.78833621740341187 
		0.99998974800109863 0.65756398439407349 0.29759055376052856;
	setAttr -s 6 ".kiy[0:5]"  0 0.93700712919235229 -0.61524462699890137 
		-0.0045258579775691032 -0.75339871644973755 -0.95469361543655396;
	setAttr -s 6 ".kox[0:5]"  1 0.34931021928787231 0.78833621740341187 
		0.99998974800109863 0.65756398439407349 0.29759055376052856;
	setAttr -s 6 ".koy[0:5]"  0 0.93700712919235229 -0.61524462699890137 
		-0.0045258579775691032 -0.75339871644973755 -0.95469361543655396;
createNode animCurveTA -n "animCurveTA796";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 1.691684579094265 6 1.6970076543675521 
		9 1.6970701182278491 18 1.6970701182278491 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.9892115592956543 0.99999988079071045 
		1 0.99799180030822754 0.98457282781600952;
	setAttr -s 6 ".kiy[0:5]"  0 0.14649416506290436 0.0004699768905993551 
		0 -0.06334281712770462 -0.17497511208057404;
	setAttr -s 6 ".kox[0:5]"  1 0.9892115592956543 0.99999988079071045 
		1 0.99799180030822754 0.98457282781600952;
	setAttr -s 6 ".koy[0:5]"  0 0.14649416506290436 0.0004699768905993551 
		0 -0.06334281712770462 -0.17497511208057404;
createNode animCurveTA -n "animCurveTA797";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 1.2348355338931729 6 1.3202544398601981 
		9 1.3212567908727153 18 1.3212567908727153 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.99342823028564453 0.99997156858444214 
		1 0.99878132343292236 0.99056327342987061;
	setAttr -s 6 ".kiy[0:5]"  0 0.11445678025484085 0.007541462779045105 
		4.3735813960665837e-005 -0.049354668706655502 -0.13705600798130035;
	setAttr -s 6 ".kox[0:5]"  1 0.99342823028564453 0.99997156858444214 
		1 0.99878132343292236 0.99056327342987061;
	setAttr -s 6 ".koy[0:5]"  0 0.11445678025484085 0.007541462779045105 
		4.3735813960665837e-005 -0.049354668706655502 -0.13705600798130035;
createNode animCurveTA -n "animCurveTA798";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.71032600031388216 3 1.0401230992992929 
		6 -0.23901949557682525 9 -0.25402963625913255 18 -0.25402963625913255 23 
		0.71032600031388216;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.99658584594726563 0.9936830997467041 
		0.9999997615814209 0.99935024976730347 0.99493950605392456;
	setAttr -s 6 ".kiy[0:5]"  0 -0.082563169300556183 -0.11222272366285324 
		-0.00065494084265083075 0.036043379455804825 0.10047604888677597;
	setAttr -s 6 ".kox[0:5]"  1 0.99658584594726563 0.9936830997467041 
		0.9999997615814209 0.99935024976730347 0.99493950605392456;
	setAttr -s 6 ".koy[0:5]"  0 -0.082563169300556183 -0.11222272366285324 
		-0.00065494084265083075 0.036043379455804825 0.10047604888677597;
createNode animCurveTA -n "animCurveTA799";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 3.6938159239902011 3 -4.0517911859646656 
		6 -5.724790960975926 9 -5.7444228292693014 18 -5.7444228292693014 23 3.6938159239902011;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.77253681421279907 0.98926621675491333 
		0.99999964237213135 0.94297605752944946 0.71123045682907104;
	setAttr -s 6 ".kiy[0:5]"  0 -0.63497000932693481 -0.14612449705600739 
		-0.00085660157492384315 0.33286046981811523 0.70295894145965576;
	setAttr -s 6 ".kox[0:5]"  1 0.77253681421279907 0.98926621675491333 
		0.99999964237213135 0.94297605752944946 0.71123045682907104;
	setAttr -s 6 ".koy[0:5]"  0 -0.63497000932693481 -0.14612449705600739 
		-0.00085660157492384315 0.33286046981811523 0.70295894145965576;
createNode animCurveTA -n "animCurveTA800";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 14.57223198295749 3 6.8838136696578331 
		6 7.0263139187849601 9 7.0279860928066 18 7.0279860928066 23 14.57223198295749;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.835182785987854 0.99992084503173828 
		1 0.96242380142211914 0.78466975688934326;
	setAttr -s 6 ".kiy[0:5]"  0 -0.54997247457504272 0.012580421753227711 
		7.2962357080541551e-005 0.27155187726020813 0.61991399526596069;
	setAttr -s 6 ".kox[0:5]"  1 0.835182785987854 0.99992084503173828 
		1 0.96242380142211914 0.78466975688934326;
	setAttr -s 6 ".koy[0:5]"  0 -0.54997247457504272 0.012580421753227711 
		7.2962357080541551e-005 0.27155187726020813 0.61991399526596069;
createNode animCurveTA -n "animCurveTA801";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.2796212519697265 3 0.62622119873454107 
		6 3.0414001046714545 9 3.3007748352580579 18 3.3007748352580579 23 -2.2796212519697265;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.90698784589767456 0.973827064037323 
		0.99993598461151123 0.97890746593475342 0.86338615417480469;
	setAttr -s 6 ".kiy[0:5]"  0 0.42115682363510132 0.22729010879993439 
		0.011316632851958275 -0.20430418848991394 -0.50454366207122803;
	setAttr -s 6 ".kox[0:5]"  1 0.90698784589767456 0.973827064037323 
		0.99993598461151123 0.97890746593475342 0.86338615417480469;
	setAttr -s 6 ".koy[0:5]"  0 0.42115682363510132 0.22729010879993439 
		0.011316632851958275 -0.20430418848991394 -0.50454366207122803;
createNode animCurveTA -n "animCurveTA802";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.2209313171847893 3 -3.8840070108449005 
		6 -3.8840070108449005 9 -3.919791721648378 18 -3.919791721648378 23 2.2209313171847893;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.88256430625915527 0.99999511241912842 
		0.99999880790710449 0.97462701797485352 0.84110277891159058;
	setAttr -s 6 ".kiy[0:5]"  0 -0.47019174695014954 -0.0031227900180965662 
		-0.0015614007133990526 0.22383527457714081 0.54087537527084351;
	setAttr -s 6 ".kox[0:5]"  1 0.88256430625915527 0.99999511241912842 
		0.99999880790710449 0.97462701797485352 0.84110277891159058;
	setAttr -s 6 ".koy[0:5]"  0 -0.47019174695014954 -0.0031227900180965662 
		-0.0015614007133990526 0.22383527457714081 0.54087537527084351;
createNode animCurveTA -n "animCurveTA803";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.0401232256568225 3 1.9840981620606046 
		6 1.9840981620606035 9 2.680377682842916 18 2.680377682842916 23 8.0401232256568225;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.8841254711151123 0.99815911054611206 
		0.9995388388633728 0.98049497604370117 0.87203299999237061;
	setAttr -s 6 ".kiy[0:5]"  0 -0.46724957227706909 0.060649994760751724 
		0.030366914346814156 0.19654415547847748 0.48944705724716187;
	setAttr -s 6 ".kox[0:5]"  1 0.8841254711151123 0.99815911054611206 
		0.9995388388633728 0.98049497604370117 0.87203299999237061;
	setAttr -s 6 ".koy[0:5]"  0 -0.46724957227706909 0.060649994760751724 
		0.030366914346814156 0.19654415547847748 0.48944705724716187;
createNode animCurveTA -n "animCurveTA804";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA805";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA806";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 33.429092416277157 3 27.080064458283051 
		6 27.080064458283051 9 27.080064458283051 18 27.080064458283051 23 33.429092416277157;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.87471306324005127 1 1 0.97294682264328003 
		0.8327406644821167;
	setAttr -s 6 ".kiy[0:5]"  0 -0.48464110493659973 0 0 0.23102922737598419 
		0.55366319417953491;
	setAttr -s 6 ".kox[0:5]"  1 0.87471306324005127 1 1 0.97294682264328003 
		0.8327406644821167;
	setAttr -s 6 ".koy[0:5]"  0 -0.48464110493659973 0 0 0.23102922737598419 
		0.55366319417953491;
createNode animCurveTA -n "animCurveTA807";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.2533422302317216 3 10.423754966968488 
		6 10.423754966968488 9 10.423754966968488 18 10.423754966968488 23 8.2533422302317216;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.98253160715103149 1 1 0.99672162532806396 
		0.97513025999069214;
	setAttr -s 6 ".kiy[0:5]"  0 0.18609566986560822 0 0 -0.080907136201858521 
		-0.22163258492946625;
	setAttr -s 6 ".kox[0:5]"  1 0.98253160715103149 1 1 0.99672162532806396 
		0.97513025999069214;
	setAttr -s 6 ".koy[0:5]"  0 0.18609566986560822 0 0 -0.080907136201858521 
		-0.22163258492946625;
createNode animCurveTA -n "animCurveTA808";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 23.263402056531085 3 27.722848255843903 
		6 27.722848255843903 9 27.722848255843903 18 27.722848255843903 23 23.263402056531085;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.93191927671432495 1 1 0.98637533187866211 
		0.90607011318206787;
	setAttr -s 6 ".kiy[0:5]"  0 0.3626658022403717 0 0 -0.16451053321361542 
		-0.42312762141227722;
	setAttr -s 6 ".kox[0:5]"  1 0.93191927671432495 1 1 0.98637533187866211 
		0.90607011318206787;
	setAttr -s 6 ".koy[0:5]"  0 0.3626658022403717 0 0 -0.16451053321361542 
		-0.42312762141227722;
createNode animCurveTA -n "animCurveTA809";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 20.166277752815617 3 21.576484776388227 
		6 21.576484776388227 9 21.576484776388227 18 21.576484776388227 23 20.166277752815617;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.99251258373260498 1 1 0.99861204624176025 
		0.98927098512649536;
	setAttr -s 6 ".kiy[0:5]"  0 0.12214235216379166 0 0 -0.052668418735265732 
		-0.14609213173389435;
	setAttr -s 6 ".kox[0:5]"  1 0.99251258373260498 1 1 0.99861204624176025 
		0.98927098512649536;
	setAttr -s 6 ".koy[0:5]"  0 0.12214235216379166 0 0 -0.052668418735265732 
		-0.14609213173389435;
createNode animCurveTA -n "animCurveTA810";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA811";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA812";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 17.254116939558369 3 27.911632519594587 
		6 -11.637041055978866 9 -16.670508338447089 18 -16.670508338447089 23 17.254116939558369;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  1 0.3686901330947876 0.24894274771213531 
		0.97672098875045776 0.61900842189788818 0.27095580101013184;
	setAttr -s 6 ".kiy[0:5]"  0 -0.92955237627029419 -0.96851819753646851 
		-0.21451374888420105 0.78538435697555542 0.96259176731109619;
	setAttr -s 6 ".kox[0:5]"  1 0.3686901330947876 0.24894274771213531 
		0.97672098875045776 0.61900842189788818 0.27095580101013184;
	setAttr -s 6 ".koy[0:5]"  0 -0.92955237627029419 -0.96851819753646851 
		-0.21451374888420105 0.78538435697555542 0.96259176731109619;
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
	setAttr ".o" 10;
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
connectAttr "wps_point_leftSource.st" "clipLibrary1.st[0]";
connectAttr "wps_point_leftSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL247.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL248.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL249.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL250.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL251.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA694.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU49.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU50.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU51.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU52.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU53.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU54.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "wps_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "wps_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "animCurveTA695.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA696.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA697.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL252.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL253.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL254.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL255.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL256.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL257.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA698.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA699.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA700.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL258.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL259.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL260.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA701.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA702.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA703.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA704.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA705.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA706.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA707.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA708.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA709.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA710.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA711.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA712.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA713.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA714.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA715.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL261.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL262.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL263.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL264.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL265.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL266.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL267.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL268.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL269.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA716.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA717.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA718.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA719.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA720.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA721.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA722.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA723.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA724.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA725.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA726.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA727.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA728.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA729.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA730.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA731.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA732.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA733.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA734.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA735.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA736.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA737.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA738.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA739.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA740.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA741.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA742.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA743.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA744.a" "clipLibrary1.cel[0].cev[81].cevr";
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
connectAttr "animCurveTA751.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA752.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA753.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL279.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL280.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL281.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA754.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA755.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA756.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL282.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL283.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL284.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL285.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL286.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL287.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA757.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA758.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA759.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA760.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA761.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA762.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA763.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA764.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA765.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA766.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA767.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA768.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA769.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA770.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA771.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA772.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA773.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA774.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA775.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA776.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA777.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA778.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA779.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA780.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA781.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA782.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA783.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA784.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA785.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA786.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA787.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA788.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA789.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA790.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA791.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA792.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA793.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA794.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA795.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA796.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA797.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA798.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA799.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA800.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA801.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA802.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA803.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA804.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA805.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA806.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA807.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA808.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA809.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA810.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA811.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA812.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of wps_point_left.ma
