//Maya ASCII 4.0 scene
//Name: wps_sway_right.ma
//Last modified: Wed, Aug 14, 2002 11:29:56 AM
requires maya "4.0";
requires "p3dmayaexp" "18.2";
requires "p3dSimpleShader" "18.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "wps_sway_rightSource";
	setAttr ".ihi" 0;
	setAttr ".du" 36;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL370";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL371";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL372";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.98752775572053031 36 -1.0066066117144004;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL373";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL374";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.7862033266438363 36 0.8220940684186907;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1096";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU47";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU48";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU49";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU50";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU51";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU52";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 27 0 36 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 27 0 36 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1097";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1098";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1099";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL375";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL376";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL377";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1.3209532433521722 7 -1.3209532433521722 
		10 -1.3209532433521722 14 -1.3209532433521722 20 -1.3209532433521722 24 -1.3209532433521722 
		28 -1.3209532433521722 32 -1.3209532433521722 36 -1.3209532433521722;
createNode animCurveTL -n "animCurveTL379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.49929236591446868 7 0.49929236591446868 
		10 0.49929236591446868 14 0.49929236591446868 20 0.49929236591446868 24 0.49929236591446868 
		28 0.49929236591446868 32 0.49929236591446868 36 0.49929236591446868;
createNode animCurveTL -n "animCurveTL380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.7640779368499853 7 1.7640779368499853 
		10 1.7640779368499853 14 1.7640779368499853 20 1.7640779368499853 24 1.7640779368499853 
		28 1.7640779368499853 32 1.7640779368499853 36 1.7640779368499853;
createNode animCurveTA -n "animCurveTA1100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -24.204848230542304 7 -24.204848230542304 
		10 -24.204848230542304 14 -24.204848230542304 20 -24.204848230542304 24 -24.204848230542304 
		28 -24.204848230542304 32 -24.204848230542304 36 -24.204848230542304;
createNode animCurveTA -n "animCurveTA1101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 7 0 10 0 14 0 20 0 24 0 28 
		0 32 0 36 0;
createNode animCurveTA -n "animCurveTA1102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 7 0 10 0 14 0 20 0 24 0 28 
		0 32 0 36 0;
createNode animCurveTL -n "animCurveTL381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1.0182182727496343 7 -1.0182182727496343 
		10 -1.0182182727496343 14 -1.0182182727496343 20 -1.0182182727496343 24 -1.0182182727496343 
		28 -1.0182182727496343 32 -1.0182182727496343 36 -1.0182182727496343;
createNode animCurveTL -n "animCurveTL382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.51781298511506035 7 0.51781298511506035 
		10 0.51781298511506035 14 0.51781298511506035 20 0.51781298511506035 24 0.51781298511506035 
		28 0.51781298511506035 32 0.51781298511506035 36 0.51781298511506035;
createNode animCurveTL -n "animCurveTL383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.725016696635667 7 1.725016696635667 
		10 1.725016696635667 14 1.725016696635667 20 1.725016696635667 24 1.725016696635667 
		28 1.725016696635667 32 1.725016696635667 36 1.725016696635667;
createNode animCurveTA -n "animCurveTA1103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -36.819011955683756 7 -36.819011955683756 
		10 -36.819011955683756 14 -36.819011955683756 20 -36.819011955683756 24 -36.819011955683756 
		28 -36.819011955683756 32 -36.819011955683756 36 -36.819011955683756;
createNode animCurveTA -n "animCurveTA1104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 7 0 10 0 14 0 20 0 24 0 28 
		0 32 0 36 0;
createNode animCurveTA -n "animCurveTA1105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 7 0 10 0 14 0 20 0 24 0 28 
		0 32 0 36 0;
createNode animCurveTA -n "animCurveTA1106";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1107";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1108";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1109";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1110";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1111";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1112";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1113";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1114";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1115";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1116";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1117";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 36 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 36 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 36 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 10 1 20 1 36 1;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 36 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 36 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 10 1 20 1 36 1;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.2031997596013333 10 -1.2031997596013333 
		20 -1.2031997596013333 29 -1.2031997596013333 36 -1.2031997596013333;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "animCurveTL391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.74320840376740638 10 0.74320840376740638 
		20 0.74320840376740638 29 0.74320840376740638 36 0.74320840376740638;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "animCurveTL392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.95790690250061006 10 0.95790690250061006 
		20 0.95790690250061006 29 0.95790690250061006 36 0.95790690250061006;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -47.088616656908457 10 -46.041228792038041 
		20 -42.969854173035671 29 -41.589600385384536 36 -47.088616656908457;
	setAttr -s 5 ".kit[0:4]"  3 9 1 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 1 9 3;
	setAttr -s 5 ".kix[2:4]"  0.9759896993637085 0.99103826284408569 
		1;
	setAttr -s 5 ".kiy[2:4]"  0.2178167849779129 -0.13357827067375183 
		0;
	setAttr -s 5 ".kox[2:4]"  0.9759896993637085 0.99103826284408569 
		1;
	setAttr -s 5 ".koy[2:4]"  0.21781677007675171 -0.13357827067375183 
		0;
createNode animCurveTA -n "animCurveTA1119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.0975263990809512 10 4.6647186940599195 
		20 15.703794814765009 29 21.201751219633238 36 2.0975263990809512;
	setAttr -s 5 ".kit[0:4]"  3 9 1 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 1 9 3;
	setAttr -s 5 ".kix[2:4]"  0.80683547258377075 0.91353344917297363 
		1;
	setAttr -s 5 ".kiy[2:4]"  0.59077620506286621 -0.40676364302635193 
		0;
	setAttr -s 5 ".kox[2:4]"  0.80683547258377075 0.91353344917297363 
		1;
	setAttr -s 5 ".koy[2:4]"  0.59077614545822144 -0.40676364302635193 
		0;
createNode animCurveTA -n "animCurveTA1120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.53932213336905677 10 -3.6185721375627882 
		20 12.032785713930338 29 14.543273628029533 36 -0.53932213336905677;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1121";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1122";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1123";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1124";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1125";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1126";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1127";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1128";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1129";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1130";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1131";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1132";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1133";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1134";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1135";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1136";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1137";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1138";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1139";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1140";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 7 0 10 0 14 0 24 0 28 0 32 
		0 36 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 7 0 10 0 14 0 24 0 28 0 32 
		0 36 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 7 0 10 0 14 0 24 0 28 0 32 
		0 36 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 7 0 10 0 14 0 24 0 28 0 32 
		0 36 0;
createNode animCurveTA -n "animCurveTA1145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 7 0 10 0 14 0 24 0 28 0 32 
		0 36 0;
createNode animCurveTA -n "animCurveTA1146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 7 0 10 0 14 0 24 0 28 0 32 
		0 36 0;
createNode animCurveTL -n "animCurveTL393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.20793334527655816 14 -0.20696586014121568 
		26 -0.26452633676645598 36 -0.20793334527655816;
createNode animCurveTL -n "animCurveTL394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.84194018189928654 14 -0.89263117567568662 
		26 -0.82159848263434498 36 -0.84194018189928654;
createNode animCurveTL -n "animCurveTL395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.00048716197021754227 14 -0.027721626524949482 
		26 -0.0052903987283419527 36 -0.00048716197021754227;
createNode animCurveTA -n "animCurveTA1147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 31.546913396341154 14 39.763401253505585 
		26 36.207656010859132 36 31.546913396341154;
createNode animCurveTA -n "animCurveTA1148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 29.777804226147087 14 43.927278191915228 
		26 37.803989745087826 36 29.777804226147087;
createNode animCurveTA -n "animCurveTA1149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 82.514492469619711 14 53.558657789722837 
		26 66.089507264775023 36 82.514492469619711;
createNode animCurveTL -n "animCurveTL396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.16261187792304868 14 0.35544882650873094 
		26 0.16891954150407898 36 0.16261187792304868;
createNode animCurveTL -n "animCurveTL397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.83267844404058533 14 -0.82511271815835219 
		26 -0.90349470815469046 36 -0.83267844404058533;
createNode animCurveTL -n "animCurveTL398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.090386867528879297 14 0.1198607606965629 
		26 0.092454589046960758 36 0.090386867528879297;
createNode animCurveTA -n "animCurveTA1150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 59.929423292753832 14 49.863962270821546 
		26 54.219864198131752 36 59.929423292753832;
createNode animCurveTA -n "animCurveTA1151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -45.790364280405264 14 -49.314148213631569 
		26 -47.789204926383292 36 -45.790364280405264;
createNode animCurveTA -n "animCurveTA1152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -89.927469671622774 14 -43.072594892513564 
		26 -63.349384526311113 36 -89.927469671622774;
createNode animCurveTL -n "animCurveTL399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -3.1112480635238988 7 -3.1918043692694562 
		10 -2.8614370767228712 14 -2.982244883201091 20 -3.0029547934807752 24 -2.982244883201091 
		28 -2.8614370767228712 32 -2.8614370767228712 36 -3.1112480635238988;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.013342233374714851 0.011133776977658272 
		0.023547645658254623 1 0.018839996308088303 0.02206825278699398 0.010674129240214825 
		0.0053372900001704693;
	setAttr -s 9 ".kiy[0:8]"  0 0.99991101026535034 0.99993801116943359 
		-0.99972271919250488 0 0.99982249736785889 0.99975645542144775 -0.99994301795959473 
		-0.99998575448989868;
createNode animCurveTL -n "animCurveTL400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.7424766145627919 7 1.7861655623246184 
		10 1.7861655623246184 14 1.4240624167621636 20 1.3619875935287848 24 1.4240624167621636 
		28 1.7861655623246184 32 1.7861655623246184 36 1.7424766145627919;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.076075837016105652 0.0064437026157975197 
		0.0078580938279628754 1 0.0062865451909601688 0.007364184595644474 0.060924172401428223 
		0.030504561960697174;
	setAttr -s 9 ".kiy[0:8]"  0 0.99710202217102051 -0.99997925758361816 
		-0.99996912479400635 0 0.99998021125793457 0.9999728798866272 -0.99814242124557495 
		-0.99953460693359375;
createNode animCurveTL -n "animCurveTL401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.8531126401564211 7 1.8093178054785426 
		10 1.971761516402895 14 1.4560592696198611 20 1.3676531775987084 24 1.4560592696198611 
		28 1.971761516402895 32 1.971761516402895 36 1.8531126401564211;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.028083020821213722 0.0066050277091562748 
		0.0055176899768412113 1 0.0044141761027276516 0.0051708733662962914 0.022469606250524521 
		0.011236924678087234;
	setAttr -s 9 ".kiy[0:8]"  0 0.99960559606552124 -0.99997818470001221 
		-0.99998480081558228 0 0.99999028444290161 0.99998664855957031 -0.99974751472473145 
		-0.99993687868118286;
createNode animCurveTA -n "animCurveTA1153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 26.27937306915485 7 1.4819926057854147 
		10 -88.808544236675544 14 -14.740379440658328 20 -2.042979825738418 24 -14.740379440658328 
		28 -88.808544236675544 32 -88.808544236675544 36 26.27937306915485;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.16370899975299835 0.63597404956817627 
		0.21497094631195068 1 0.17342540621757507 0.20202769339084625 0.13160361349582672 
		0.066233344376087189;
	setAttr -s 9 ".kiy[0:8]"  0 -0.98650866746902466 -0.77171045541763306 
		0.97662043571472168 0 -0.98484700918197632 -0.97937983274459839 0.99130243062973022 
		0.99780416488647461;
createNode animCurveTA -n "animCurveTA1154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 55.316964386970021 7 62.570831388105354 
		10 83.878009663660919 14 42.939882371214097 20 35.921917543558067 24 42.939882371214097 
		28 83.878009663660919 32 83.878009663660919 36 55.316964386970021;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.55586624145507813 0.5628848671913147 
		0.3699900209903717 1 0.30356660485267639 0.34965988993644714 0.47170111536979675 
		0.25839376449584961;
	setAttr -s 9 ".kiy[0:8]"  0 0.83127176761627197 -0.82653534412384033 
		-0.9290357232093811 0 0.95281022787094116 0.93687671422958374 -0.88175851106643677 
		-0.96603965759277344;
createNode animCurveTA -n "animCurveTA1155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 77.201572122121519 7 30.465400025521944 
		10 -39.173779852465344 14 20.56028059081039 20 30.800404776336858 24 20.56028059081039 
		28 -39.173779852465344 32 -39.173779852465344 36 77.201572122121519;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.16194568574428558 0.80349552631378174 
		0.26330634951591492 1 0.21332406997680664 0.24780383706092834 0.13017250597476959 
		0.065503783524036407;
	setAttr -s 9 ".kiy[0:8]"  0 -0.98679965734481812 -0.59531080722808838 
		0.96471226215362549 0 -0.976981520652771 -0.96881020069122314 0.99149137735366821 
		0.99785232543945313;
createNode animCurveTL -n "animCurveTL402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -2.0647721020251719 7 -1.7747633468478372 
		10 -1.3738231503935063 14 -1.4673220196412047 20 -1.4574685551617841 24 -1.4673220196412047 
		28 -1.6254521627659528 32 -1.6254521627659528 36 -2.0647721020251719;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.004824227187782526 0.0075893052853643894 
		0.039819158613681793 1 0.015872564166784286 0.01686134934425354 0.0060698757879436016 
		0.0030349781736731529;
	setAttr -s 9 ".kiy[0:8]"  0 0.9999883770942688 0.99997121095657349 
		-0.99920690059661865 0 -0.99987399578094482 -0.99985784292221069 -0.9999815821647644 
		-0.99999541044235229;
createNode animCurveTL -n "animCurveTL403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.7590071920447805 7 1.7744259866497865 
		10 1.7744259866497851 14 2.2123422949443245 20 2.2874136615969696 24 2.2123422949443245 
		28 1.7744259866497851 32 1.7744259866497851 36 1.7590071920447805;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.2113049179315567 0.0053281872533261776 
		0.0064977449364960194 1 0.0051982351578772068 0.0060893306508660316 0.17041914165019989 
		0.086152993142604828;
	setAttr -s 9 ".kiy[0:8]"  0 0.97742021083831787 0.99998581409454346 
		0.99997889995574951 0 -0.99998646974563599 -0.99998146295547485 -0.98537164926528931 
		-0.99628192186355591;
createNode animCurveTL -n "animCurveTL404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.9261547314579206 7 1.9175692348345019 
		10 2.0370660253504567 14 1.9056722350003268 20 1.8794298297143659 24 1.9056722350003268 
		28 2.0732108715169613 32 2.0732108715169613 36 1.9261547314579206;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.030040483921766281 0.19246117770671844 
		0.021141009405255318 1 0.013759933412075043 0.015914710238575935 0.018130682408809662 
		0.009066455066204071;
	setAttr -s 9 ".kiy[0:8]"  0 0.99954867362976074 -0.9813045859336853 
		-0.99977648258209229 0 0.99990534782409668 0.99987334012985229 -0.99983561038970947 
		-0.99995887279510498;
createNode animCurveTA -n "animCurveTA1156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 59.007910131897077 7 18.602770442950842 
		10 -113.17999507157656 14 -39.296899878223357 20 -34.230630641274921 24 -39.296899878223357 
		28 -39.296899878223357 32 -39.296899878223357 36 59.007910131897077;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.1102411076426506 0.22498017549514771 
		0.23512735962867737 1 0.94917953014373779 1 0.15357956290245056 0.077478095889091492;
	setAttr -s 9 ".kiy[0:8]"  0 -0.99390488862991333 -0.97436332702636719 
		0.97196459770202637 0 -0.31473514437675476 0 0.98813629150390625 0.99699407815933228;
createNode animCurveTA -n "animCurveTA1157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -71.601588453715053 7 -48.81105593734712 
		10 -81.598462431231312 14 -77.756094215389751 20 -77.492617542822828 24 -77.756094215389751 
		28 -77.756094215389751 32 -77.756094215389751 36 -71.601588453715053;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.88596785068511963 0.41931068897247314 
		0.97766280174255371 1 0.99985134601593018 1 0.92757469415664673 0.77872812747955322;
	setAttr -s 9 ".kiy[0:8]"  0 -0.46374666690826416 -0.90784281492233276 
		0.21017946302890778 0 -0.017241945490241051 0 0.37363773584365845 0.62736153602600098;
createNode animCurveTA -n "animCurveTA1158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -90.779043014820601 7 -37.708811967409126 
		10 97.128868212882352 14 22.376629620485513 20 17.250761802052406 24 22.376629620485513 
		28 22.376629620485513 32 22.376629620485513 36 -90.779043014820601;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.1011170968413353 0.21718890964984894 
		0.23254220187664032 1 0.94806891679763794 1 0.13381096720695496 0.067359261214733124;
	setAttr -s 9 ".kiy[0:8]"  0 0.99487453699111938 0.97612959146499634 
		-0.97258633375167847 0 0.31806504726409912 0 -0.99100685119628906 -0.99772876501083374;
createNode animCurveTL -n "animCurveTL405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.017571725225418906 10 0.017571725225418906 
		20 0.017571725225418906 36 0.017571725225418906;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.54560785950824164 10 -0.54560785950824164 
		20 -0.54560785950824164 36 -0.54560785950824164;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.64724218630287966 10 -0.64724218630287966 
		20 -0.64724218630287966 36 -0.64724218630287966;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.22996541113775407 10 -0.22996541113775407 
		20 -0.22996541113775407 36 -0.22996541113775407;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.71572892866406468 10 -0.71572892866406468 
		20 -0.71572892866406468 36 -0.71572892866406468;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.86045149817799893 10 -0.86045149817799893 
		20 -0.86045149817799893 36 -0.86045149817799893;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.061808866237340665 10 -0.061808866237340665 
		20 -0.061808866237340665 29 -0.061808866237340665 36 -0.061808866237340665;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -59.058178941076754 10 -59.058178941076754 
		20 -59.058178941076754 29 -59.058178941076754 36 -59.058178941076754;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.57914742975785 10 16.57914742975785 
		20 16.57914742975785 29 16.57914742975785 36 16.57914742975785;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 12.253734489678925 10 12.253734489678925 
		20 12.253734489678925 29 12.253734489678925 36 12.253734489678925;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -65.746751280844975 10 -65.746751280844975 
		20 -65.746751280844975 29 -65.746751280844975 36 -65.746751280844975;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 20 0 29 0 36 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 15.711328223519061 10 15.711328223519061 
		20 15.711328223519061 29 15.711328223519061 36 15.711328223519061;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.5572674112203657 10 8.5572674112203657 
		20 8.5572674112203657 29 8.5572674112203657 36 8.5572674112203657;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 20 0 29 0 36 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 20 0 29 0 36 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 20 0 29 0 36 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 20 0 29 0 36 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 20 0 29 0 36 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 20 0 29 0 36 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.2533422302317216 10 8.2533422302317216 
		20 8.2533422302317216 29 8.2533422302317216 36 8.2533422302317216;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 23.263402056531085 10 23.263402056531085 
		20 23.263402056531085 29 23.263402056531085 36 23.263402056531085;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 20.166277752815617 10 20.166277752815617 
		20 20.166277752815617 29 20.166277752815617 36 20.166277752815617;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 20 0 29 0 36 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 20 0 29 0 36 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 33.429092416277157 10 33.429092416277157 
		20 33.429092416277157 29 33.429092416277157 36 33.429092416277157;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1179";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1180";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1181";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1182";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1183";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1184";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 20 13.994403295754109 
		36 13.994403295754109;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1185";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1186";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 36 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1187";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 20 13.994403295754109 
		36 13.994403295754109;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 20 0 29 0 36 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 20 0 29 0 36 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.254116939558369 10 17.254116939558369 
		20 17.254116939558369 29 17.254116939558369 36 17.254116939558369;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 20 0 29 0 36 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 20 0 29 0 36 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 20 0 29 0 36 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.3937906322123035 10 3.2976952657917855 
		20 6.1959781965977667 29 5.4370687779129367 36 -2.3937906322123035;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.7843868968348546 10 3.4411865045206969 
		20 -18.528757210927143 29 11.547789575237715 36 1.7843868968348546;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.23227595374661 10 10.228719666817467 
		20 8.5426783477094705 29 12.55638205761457 36 13.23227595374661;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 20 -4.9961311384640199 
		29 -2.0463513270514531 36 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 20 -11.842174246449323 
		29 8.2942025660856444 36 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 20 -1.8329617590723193 
		29 -1.211560608348619 36 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.71032600031388204 10 -0.46230911970690414 
		20 -0.87801322014516026 29 9.1118261005227552 36 -0.71032600031388204;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -3.6938159239902011 10 -0.95870297139110705 
		20 -4.1623363562681686 29 -9.9294746456820242 36 -3.6938159239902011;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 14.572231982957494 10 13.854410292064113 
		20 21.607447486775222 29 17.834857070335971 36 14.572231982957494;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.2796212519697261 10 2.2861862515616838 
		20 -13.805873874496017 29 -10.661749788705363 36 2.2796212519697261;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.92161405086517334 0.94183909893035889 
		0.88488870859146118 0.71850496530532837;
	setAttr -s 5 ".kiy[0:4]"  0 -0.38810759782791138 -0.33606421947479248 
		0.46580246090888977 0.69552183151245117;
createNode animCurveTA -n "animCurveTA1204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.2209313171847884 10 -4.8760560313283765 
		20 -3.9151147811595957 29 -13.717897552797529 36 -2.2209313171847884;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99901783466339111 0.97157412767410278 
		0.9984666109085083 0.75819593667984009;
	setAttr -s 5 ".kiy[0:4]"  0 -0.044310055673122406 -0.23673565685749054 
		0.055357009172439575 0.65202677249908447;
createNode animCurveTA -n "animCurveTA1205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.0401232256568242 10 7.9340821170317399 
		20 10.926235008017281 29 10.021232307245747 36 8.0401232256568242;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99715763330459595 0.99834996461868286 
		0.99556940793991089 0.98919790983200073;
	setAttr -s 5 ".kiy[0:4]"  0 0.07534346729516983 0.057422425597906113 
		-0.094029337167739868 -0.14658594131469727;
createNode animCurveTA -n "animCurveTA1206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 20 0 29 0 36 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 20 0 29 0 36 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.080064458283051 10 27.080064458283051 
		20 27.080064458283051 29 27.080064458283051 36 27.080064458283051;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.423754966968488 10 10.423754966968488 
		20 10.423754966968488 29 10.423754966968488 36 10.423754966968488;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.7228482558439 10 27.7228482558439 
		20 27.7228482558439 29 27.7228482558439 36 27.7228482558439;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 21.576484776388224 10 21.576484776388224 
		20 21.576484776388224 29 21.576484776388224 36 21.576484776388224;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 20 0 29 0 36 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 20 0 29 0 36 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.911632519594587 10 27.911632519594587 
		20 27.911632519594587 29 27.911632519594587 36 27.911632519594587;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
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
connectAttr "wps_sway_rightSource.st" "clipLibrary1.st[0]";
connectAttr "wps_sway_rightSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL370.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL371.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL372.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL373.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL374.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA1096.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU47.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU48.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU49.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU50.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU51.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU52.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU53.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU54.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1097.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1098.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1099.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL375.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL376.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL377.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL378.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL379.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL380.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1100.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1101.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1102.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL381.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL382.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL383.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1103.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1104.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1105.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1106.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1107.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1108.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1109.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1110.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1111.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA1112.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA1113.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA1114.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA1115.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA1116.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA1117.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL384.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL385.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL386.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL387.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL388.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL389.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL390.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL391.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL392.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1118.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1119.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1120.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1121.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1122.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1123.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1124.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1125.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1126.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1127.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1128.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1129.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1130.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1131.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1132.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1133.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1134.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1135.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1136.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1137.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1138.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1139.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1140.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA1141.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA1142.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA1143.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1144.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1145.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1146.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL393.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL394.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL395.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA1147.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1148.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1149.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL396.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL397.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL398.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1150.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1151.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1152.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL399.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL400.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL401.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1153.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1154.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1155.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL402.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL403.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL404.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1156.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1157.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1158.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL405.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL406.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL407.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL408.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL409.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL410.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1159.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1160.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1161.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1162.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1163.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1164.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1165.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1166.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1167.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1168.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1169.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1170.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1171.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1172.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1173.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1174.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1175.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1176.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1177.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1178.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1179.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1180.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1181.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1182.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1183.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1184.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1185.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1186.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1187.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1188.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1189.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1190.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1191.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1192.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1193.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1194.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1195.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1196.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1197.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1198.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1199.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1200.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1201.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1202.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1203.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1204.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1205.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1206.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1207.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1208.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1209.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1210.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1211.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1212.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1213.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1214.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of wps_sway_right.ma
