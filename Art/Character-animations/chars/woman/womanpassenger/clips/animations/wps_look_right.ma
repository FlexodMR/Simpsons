//Maya ASCII 4.0 scene
//Name: wps_look_right.ma
//Last modified: Wed, Aug 14, 2002 11:29:11 AM
requires maya "4.0";
requires "p3dmayaexp" "18.2";
requires "p3dSimpleShader" "18.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "wps_look_rightSource";
	setAttr ".ihi" 0;
	setAttr ".du" 32;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL124";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL125";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.98752775572053031 32 -0.98752775572053031;
createNode animCurveTL -n "animCurveTL127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTL -n "animCurveTL128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.7862033266438363 32 0.7862033266438363;
createNode animCurveTA -n "animCurveTA352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTU -n "animCurveTU23";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU24";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU25";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU26";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU27";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU28";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU29";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU30";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA353";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA354";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA355";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL129";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL130";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL131";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.3209532433521722 4 -1.3209532433521722 
		10 -1.3209532433521722 14 -1.3209532433521722 24 -1.3209532433521722 32 -1.3209532433521722;
createNode animCurveTL -n "animCurveTL133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.49929236591446868 4 0.49929236591446868 
		10 0.49929236591446868 14 0.49929236591446868 24 0.49929236591446868 32 0.49929236591446868;
createNode animCurveTL -n "animCurveTL134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.7640779368499853 4 1.7640779368499853 
		10 1.7640779368499853 14 1.7640779368499853 24 1.7640779368499853 32 1.7640779368499853;
createNode animCurveTA -n "animCurveTA356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -24.204848230542304 4 -24.204848230542304 
		10 -24.204848230542304 14 -24.204848230542304 24 -24.204848230542304 32 -24.204848230542304;
createNode animCurveTA -n "animCurveTA357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 10 0 14 0 24 0 32 0;
createNode animCurveTA -n "animCurveTA358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 10 0 14 0 24 0 32 0;
createNode animCurveTL -n "animCurveTL135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.0182182727496343 4 -1.0182182727496343 
		10 -1.0182182727496343 14 -1.0182182727496343 24 -1.0182182727496343 32 -1.0182182727496343;
createNode animCurveTL -n "animCurveTL136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.51781298511506035 4 0.51781298511506035 
		10 0.51781298511506035 14 0.51781298511506035 24 0.51781298511506035 32 0.51781298511506035;
createNode animCurveTL -n "animCurveTL137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.725016696635667 4 1.725016696635667 
		10 1.725016696635667 14 1.725016696635667 24 1.725016696635667 32 1.725016696635667;
createNode animCurveTA -n "animCurveTA359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -36.819011955683756 4 -36.819011955683756 
		10 -36.819011955683756 14 -36.819011955683756 24 -36.819011955683756 32 -36.819011955683756;
createNode animCurveTA -n "animCurveTA360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 10 0 14 0 24 0 32 0;
createNode animCurveTA -n "animCurveTA361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 10 0 14 0 24 0 32 0;
createNode animCurveTA -n "animCurveTA362";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA363";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA364";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA365";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA366";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA367";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA368";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA369";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA370";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA371";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA372";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA373";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 32 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 32 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.2031997596013333 4 -1.2031997596013333 
		10 -1.2031997596013333 14 -1.2031997596013333 24 -1.2031997596013333 32 -1.2031997596013333;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.74320840376740638 4 0.74320840376740638 
		10 0.74320840376740638 14 0.74320840376740638 24 0.74320840376740638 32 0.74320840376740638;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.95790690250061006 4 0.95790690250061006 
		10 0.95790690250061006 14 0.95790690250061006 24 0.95790690250061006 32 0.95790690250061006;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -47.088616656908457 4 -41.371641862476395 
		10 -41.371641862476395 14 -41.857867184193871 24 -41.857867184193871 32 -47.088616656908457;
	setAttr -s 6 ".kit[0:5]"  1 9 1 9 1 9;
	setAttr -s 6 ".kot[2:5]"  1 9 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.95800012350082397 0.99631929397583008 
		0.99983471632003784 0.9997599720954895 0.94609254598617554;
	setAttr -s 6 ".kiy[0:5]"  0 0.28676784038543701 -0.085719771683216095 
		-0.018181778490543365 -0.021909797564148903 -0.32389649748802185;
	setAttr -s 6 ".kox[2:5]"  0.99631929397583008 0.99983471632003784 
		0.9997599720954895 0.94609254598617554;
	setAttr -s 6 ".koy[2:5]"  -0.085719764232635498 -0.018181778490543365 
		-0.021909778937697411 -0.32389649748802185;
createNode animCurveTA -n "animCurveTA375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.0975263990809512 4 3.6748014841271632 
		10 3.6748014841271632 14 -1.3581734607334863 24 -1.3581734607334863 32 2.0975263990809512;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99660712480545044 0.96698689460754395 
		0.9991152286529541 0.99933576583862305 0.97536367177963257;
	setAttr -s 6 ".kiy[0:5]"  0 0.082305729389190674 -0.25482615828514099 
		-0.042056247591972351 0.036442801356315613 0.22060294449329376;
	setAttr -s 6 ".kox[3:5]"  0.9991152286529541 0.99933576583862305 
		0.97536367177963257;
	setAttr -s 6 ".koy[3:5]"  -0.042056284844875336 0.036442816257476807 
		0.22060294449329376;
createNode animCurveTA -n "animCurveTA376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.53932213336905677 4 0.18435278757725004 
		10 0.18435278757725004 14 -1.0480878541626368 24 -1.0480878541626368 32 -0.53932213336905677;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99928289651870728 0.99792438745498657 
		0.9999687671661377 0.99993574619293213 0.99944603443145752;
	setAttr -s 6 ".kiy[0:5]"  0 0.037864357233047485 -0.064396500587463379 
		-0.0079054199159145355 0.011336926370859146 0.033280201256275177;
	setAttr -s 6 ".kox[3:5]"  0.9999687671661377 0.99993574619293213 
		0.99944603443145752;
	setAttr -s 6 ".koy[3:5]"  -0.0079054171219468117 0.011336922645568848 
		0.033280201256275177;
createNode animCurveTA -n "animCurveTA377";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA378";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA379";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA380";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA381";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA382";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA383";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA384";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA385";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA386";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA387";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA388";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA389";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA390";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA391";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA392";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA393";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA394";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA395";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA396";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 10 0 14 0 24 0 32 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 10 0 14 0 24 0 32 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 10 0 14 0 24 0 32 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 10 0 14 0 24 0 32 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 10 0 14 0 24 0 32 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 10 0 14 0 24 0 32 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -0.20793334527655816 1 -0.23687816933339834 
		2 -0.26914795673600111 3 -0.29842822396894692 4 -0.31762066750407542 5 -0.32660683855536204 
		6 -0.3307070111978993 7 -0.33078459538363975 8 -0.32788942449551089 9 -0.32318412230004467 
		10 -0.31762066750407542 11 -0.3040111161322494 12 -0.27551808944673212 13 
		-0.23995963551020283 14 -0.22050110704120698 15 -0.21964935449164158 16 -0.21923847583723557 
		17 -0.21916330410958096 18 -0.21932914676367204 19 -0.21964758290502345 20 
		-0.22003306334633066 21 -0.22040021395402051 22 -0.22066176706456986 23 -0.22072706633348729 
		24 -0.22050110704120698 25 -0.2217988317477301 26 -0.22523219122394098 27 
		-0.22874469484489679 28 -0.23050775007436244 29 -0.22930560911480086 30 -0.22473362127302324 
		31 -0.21722455297046167 32 -0.20793334527655816;
createNode animCurveTL -n "animCurveTL148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -0.84194018189928654 1 -0.83977800047105622 
		2 -0.83677782045648064 3 -0.83349517044169918 4 -0.8310437111986404 5 -0.83361381383012378 
		6 -0.84138597409372917 7 -0.84980263759328778 8 -0.85414262432398846 9 -0.84949417913092984 
		10 -0.8310437111986404 11 -0.77971105573570509 12 -0.70149254610254819 13 
		-0.62667855424808361 14 -0.57988447663363563 15 -0.55769416541963579 16 -0.54176727942830405 
		17 -0.53159533436723683 18 -0.52667435944859331 19 -0.52650576447026654 20 
		-0.53059671447471546 21 -0.53846005029362121 22 -0.54961378285744322 23 -0.56358018203731008 
		24 -0.57988447663363563 25 -0.59930691801076064 26 -0.62300649850671963 27 
		-0.65119259279796271 28 -0.68389611388138538 29 -0.72067778612230715 30 -0.76048456671880138 
		31 -0.80164003965346353 32 -0.84194018189928654;
createNode animCurveTL -n "animCurveTL149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -0.00048716197021754227 1 0.0057830457722687712 
		2 0.010383275393540146 3 0.012553911361420802 4 0.013005396708176561 5 0.0079544719887343265 
		6 -0.0031286392136041742 7 -0.014032955355511164 8 -0.018816129118673572 
		9 -0.011769075455913125 10 0.013005396708176561 11 0.087368370555238162 12 
		0.20840877470627092 13 0.32679596983227854 14 0.38769229265526434 15 0.39993933814812238 
		16 0.41017546723635989 17 0.41810866824038001 18 0.42346634337020833 19 0.42599099032360516 
		20 0.42543621796041481 21 0.42156312634100673 22 0.41413707473645406 23 0.40292485613491691 
		24 0.38769229265526434 25 0.36173209970161013 26 0.32127851444873318 27 0.27055137649802691 
		28 0.21374337837031349 29 0.15487002264375016 30 0.097580273732096573 31 
		0.044977408830795637 32 -0.00048716197021754227;
createNode animCurveTA -n "animCurveTA403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 31.546913396341154 1 31.196437113440592 
		2 30.798995577447204 3 30.414063719825656 4 30.140858128714566 5 29.014189957375649 
		6 26.677094861472664 7 24.417820575057227 8 23.558976841509107 9 25.202596596097081 
		10 30.140858128714566 11 43.161230478783139 12 62.573035449938978 13 89.541851192043069 
		14 122.79742588063955 15 137.92184619505946 16 150.52300902047705 17 158.65038925457276 
		18 162.49102780989693 19 162.81766785310106 20 160.19405859440047 21 154.86318020311253 
		22 146.83777934763796 23 136.07634921399372 24 122.79742588063955 25 104.13510565635252 
		26 82.867408804963929 27 66.352814949899198 28 55.14897578352857 29 47.206589366257504 
		30 40.980654460788827 31 35.782648890969817 32 31.546913396341154;
createNode animCurveTA -n "animCurveTA404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 29.777804226147087 1 34.897356962006086 
		2 40.255887143974377 3 44.846226097212856 4 47.732442726345198 5 49.055250986254656 
		6 49.691610136888549 7 49.801121583337661 8 49.461899037801167 9 48.70270885713358 
		10 47.732442726345198 11 47.632259165698933 12 54.367246608718091 13 67.647782425650206 
		14 74.439544998392876 15 75.74554408413124 16 75.801988412656627 17 75.284932443663024 
		18 74.716287273443541 19 74.353830213392584 20 74.264771060600268 21 74.399711033728281 
		22 74.627532766032346 23 74.739091623752941 24 74.439544998392876 25 73.120288200554199 
		26 69.204859809476858 27 62.398579343457698 28 53.925034456439548 29 45.302963343975591 
		30 37.869947716645022 31 32.578438992788236 32 29.777804226147087;
createNode animCurveTA -n "animCurveTA405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 82.514492469619711 1 80.043062848388686 
		2 77.229485072986805 3 74.619237376429197 4 72.874867028492147 5 72.06917148544035 
		6 71.612476395501631 7 71.541929662368247 8 71.936667759775659 9 72.588725939628134 
		10 72.874867028492147 11 71.825231052603129 12 69.889483601242304 13 79.822636532350771 
		14 105.13363855517606 15 117.38626879528432 16 127.86279639704233 17 134.53324778646783 
		18 137.5448764520919 19 137.65175739748491 20 135.40668438831841 21 131.0403704782004 
		22 124.54611859923692 23 115.85209320497022 24 105.13363855517606 25 90.018513313906638 
		26 73.7227845091668 27 63.602718289241764 28 60.35975733611405 29 62.097536733845622 
		30 67.189134427466911 31 74.379742527490919 32 82.514492469619711;
createNode animCurveTL -n "animCurveTL150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0.16261187792304868 1 0.22404042581814396 
		2 0.29102961340504691 3 0.35051463125915944 4 0.38885753769467812 5 0.4018584323428962 
		6 0.39956286307034616 7 0.38958192012462917 8 0.37939211565237346 9 0.37650201571686098 
		10 0.38885753769467812 11 0.43687894772991059 12 0.51884341674229773 13 0.60248554325396897 
		14 0.65171516673263452 15 0.67095938133726007 16 0.68715984858054413 17 0.69981533799481788 
		18 0.70846066836474142 19 0.71265396134990933 20 0.71196539111671575 21 0.70596745120061055 
		22 0.69422674088590752 23 0.67629725746952096 24 0.65171516673263452 25 0.6164557963061571 
		26 0.56836788718512221 27 0.50970863392036136 28 0.44301041010841713 29 0.37132239704015746 
		30 0.29818230619250785 31 0.22737766899176307 32 0.16261187792304868;
createNode animCurveTL -n "animCurveTL151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -0.83267844404058533 1 -0.83657433876743437 
		2 -0.84307585514793659 3 -0.85085206683128167 4 -0.85688871824799806 5 -0.86206135792895544 
		6 -0.86813546589401147 7 -0.87273824487409013 8 -0.87372672796737183 9 -0.8691349046678295 
		10 -0.85688871824799806 11 -0.82098115661878668 12 -0.75937057014968945 13 
		-0.69479706605959768 14 -0.66068582378207741 15 -0.65509477539594818 16 -0.65001537602550574 
		17 -0.64572543574687102 18 -0.64250888844075715 19 -0.64064812946547478 20 
		-0.64041731968025484 21 -0.64207657600459866 22 -0.6458669836126455 23 -0.65200637474729761 
		24 -0.66068582378207741 25 -0.6750300030378662 26 -0.69617890747999212 27 
		-0.7212082549315102 28 -0.74744182414101257 29 -0.77278534546684952 30 -0.79585155309124977 
		31 -0.81590399477394782 32 -0.83267844404058533;
createNode animCurveTL -n "animCurveTL152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0.090386867528879297 1 0.072368537935891986 
		2 0.058100529273034968 3 0.049947634935742793 4 0.046889844255511515 5 0.046182763862607494 
		6 0.046161864474456672 7 0.046191702093646397 8 0.046200060600361643 9 0.046488665395098931 
		10 0.046889844255511515 11 0.039394233515970649 12 0.01354019568151763 13 
		-0.023437980464318144 14 -0.037758779101998458 15 -0.02726161529621585 16 
		-0.020991911790399342 17 -0.018199392396163035 18 -0.01815633649539727 19 
		-0.02015834603910065 20 -0.023524251887783763 21 -0.027595345714944701 22 
		-0.031734067003476842 23 -0.035322223592907702 24 -0.037758779101998458 25 
		-0.031924609364472542 26 -0.014390749205564718 27 0.0097677478456137841 28 
		0.03567814415569686 29 0.059132722945629691 30 0.077006164242311215 31 0.087537076600161148 
		32 0.090386867528879297;
createNode animCurveTA -n "animCurveTA406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 59.929423292753832 1 58.015695800650981 
		2 54.037642341573637 3 49.012219381866018 4 44.859194329364989 5 43.673498068828437 
		6 44.895190907493308 7 47.173147019952424 8 48.964873688272192 9 48.684488695777198 
		10 44.859194329364989 11 32.855756104892876 12 15.279973807859113 13 -0.010910469379386568 
		14 -7.8645519212302455 15 -10.34288993862218 16 -12.337988940685383 17 -13.832309384925612 
		18 -14.803847939912202 19 -15.223811295827529 20 -15.056988163434866 21 -14.265159230548422 
		22 -12.813582637525938 23 -10.679974796401261 24 -7.8645519212302455 25 -3.7917823935600925 
		26 1.9991379469929251 27 9.3679618785589636 28 18.165289419920203 29 28.138308511778369 
		30 38.863911958760681 31 49.723231976809963 32 59.929423292753832;
createNode animCurveTA -n "animCurveTA407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -45.790364280405264 1 -39.71686839128806 
		2 -35.749047523274442 3 -34.853303139906608 4 -35.586352575633668 5 -36.313062717809963 
		6 -36.79163216644011 7 -36.909469388826459 8 -36.712852997636695 9 -36.277700375718446 
		10 -35.586352575633668 11 -33.53264806487806 12 -29.474572264693627 13 -25.122438352742261 
		14 -23.268563347140685 15 -23.586895879178776 16 -23.838909698051999 17 -24.033195607327979 
		18 -24.169565273551608 19 -24.238545799284385 20 -24.224450557368289 21 -24.111947493617667 
		22 -23.896009522933625 23 -23.595227449404891 24 -23.268563347140685 25 -23.474381443425038 
		26 -24.763884544377998 27 -27.149651662411038 28 -30.476301848801533 29 -34.415173653510351 
		30 -38.538466596058747 31 -42.431581175443938 32 -45.790364280405264;
createNode animCurveTA -n "animCurveTA408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -89.927469671622774 1 -83.166163083789471 
		2 -72.9464457869706 3 -62.169342947699405 4 -54.548350497706366 5 -51.607946168884773 
		6 -51.573571402646408 7 -53.201875682131238 8 -55.142198202332381 9 -56.024537579587538 
		10 -54.548350497706366 11 -48.386830768168785 12 -39.58173484440281 13 -32.348027839987338 
		14 -29.110853419754839 15 -28.340617885741761 16 -27.347303072217546 17 -26.272359704489855 
		18 -25.260130868680033 19 -24.460211106073647 20 -24.027689597195906 21 -24.12142753098215 
		22 -24.900351996299761 23 -26.517476437216885 24 -29.110853419754839 25 -33.246645735434818 
		26 -39.145382215716566 27 -46.414019695314771 28 -54.674846511701347 29 -63.568380556898354 
		30 -72.722421381339046 31 -81.693275928861325 32 -89.927469671622774;
createNode animCurveTL -n "animCurveTL153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -3.1112480635238988 4 -3.1712021450259047 
		10 -3.1712021450259047 14 -3.1615239429403106 24 -3.1615239429403106 32 -3.1112480635238988;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.055512372404336929 0.32564336061477661 
		0.43432867527008057 0.11850063502788544 0.052966214716434479;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99845802783966064 0.94549268484115601 
		0.90075445175170898 0.99295395612716675 0.99859631061553955;
createNode animCurveTL -n "animCurveTL154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.7424766145627919 4 1.7861655623246184 
		10 1.7861655623246184 14 2.1862997497185468 24 2.1862997497185468 32 1.7424766145627919;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.076075837016105652 0.0083302492275834084 
		0.011661960743367672 0.013517663814127445 0.0060082902200520039;
	setAttr -s 6 ".kiy[0:5]"  0 0.99710202217102051 0.99996531009674072 
		0.99993199110031128 -0.99990862607955933 -0.99998193979263306;
createNode animCurveTL -n "animCurveTL155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.8531126401564211 4 1.9814903109444941 
		10 1.9814903109444941 14 1.8780662835102189 24 1.8780662835102189 32 1.8531126401564211;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.025956306606531143 0.032213050872087479 
		0.045075822621583939 0.23378279805183411 0.1062597781419754;
	setAttr -s 6 ".kiy[0:5]"  0 0.99966305494308472 -0.99948102235794067 
		-0.99898356199264526 -0.97228884696960449 -0.99433839321136475;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 26.27937306915485 4 28.048279455708332 
		10 28.048279455708332 14 -31.662656159974137 24 -31.662656159974137 32 26.27937306915485;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99573820829391479 0.30464684963226318 
		0.4086875319480896 0.51025766134262085 0.25497660040855408;
	setAttr -s 6 ".kiy[0:5]"  0 0.092225000262260437 -0.95246535539627075 
		-0.91267436742782593 0.86002159118652344 0.96694719791412354;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 55.316964386970021 4 77.292408064634571 
		10 77.292408064634571 14 65.965275998834557 24 65.965275998834557 32 55.316964386970021;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.65597355365753174 0.86010485887527466 
		0.92078316211700439 0.95522570610046387 0.82041323184967041;
	setAttr -s 6 ".kiy[0:5]"  0 0.75478386878967285 -0.51011723279953003 
		-0.39007481932640076 -0.29587814211845398 -0.57177102565765381;
createNode animCurveTA -n "animCurveTA411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 77.201572122121519 4 72.11073403812216 
		10 72.11073403812216 14 -51.668213841176673 24 -51.668213841176673 32 77.201572122121519;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.96626162528991699 0.15249145030975342 
		0.21114428341388702 0.25774797797203064 0.11773595213890076;
	setAttr -s 6 ".kiy[0:5]"  0 -0.25756251811981201 -0.98830479383468628 
		-0.97745490074157715 0.96621215343475342 0.99304491281509399;
createNode animCurveTL -n "animCurveTL156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.0647721020251719 4 -1.7976992491632036 
		10 -1.7976992491632036 14 -1.5892237480094589 24 -1.5892237480094589 32 -2.0647721020251719;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.012480016797780991 0.01598704420030117 
		0.022379118949174881 0.012616009451448917 0.0056074722670018673;
	setAttr -s 6 ".kiy[0:5]"  0 0.99992209672927856 0.99987220764160156 
		0.99974954128265381 -0.99992042779922485 -0.9999842643737793;
createNode animCurveTL -n "animCurveTL157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.7590071920447805 4 1.7590071920447805 
		10 1.7590071920447805 14 1.9372918338510234 24 1.9372918338510234 32 1.7590071920447805;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 0.018693426623940468 0.026166407391428947 
		0.033635005354881287 0.014955678954720497;
	setAttr -s 6 ".kiy[0:5]"  0 0 0.99982523918151855 0.99965757131576538 
		-0.99943417310714722 -0.99988818168640137;
createNode animCurveTL -n "animCurveTL158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.9261547314579206 4 1.8331376716323644 
		10 1.8331376716323644 14 2.0928118415832575 24 2.0928118415832575 32 1.9261547314579206;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.035812731832265854 0.012835541740059853 
		0.01796833798289299 0.035978753119707108 0.015998866409063339;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99935853481292725 0.99991762638092041 
		0.99983853101730347 -0.99935257434844971 -0.99987202882766724;
createNode animCurveTA -n "animCurveTA412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 59.007910131897077 4 8.6764238792375945 
		10 8.6764238792375945 14 -39.233775972226226 24 -39.233775972226226 32 59.007910131897077;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.35477343201637268 0.37029582262039185 
		0.48733076453208923 0.33028945326805115 0.15367589890956879;
	setAttr -s 6 ".kiy[0:5]"  0 -0.93495231866836548 -0.92891389131546021 
		-0.87321746349334717 0.94387972354888916 0.98812133073806763;
createNode animCurveTA -n "animCurveTA413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -71.601588453715053 4 -49.040813563136936 
		10 -49.040813563136936 14 -53.91457479296237 24 -53.91457479296237 32 -71.601588453715053;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.64611387252807617 0.96894782781600952 
		0.98379015922546387 0.88921231031417847 0.65371114015579224;
	setAttr -s 6 ".kiy[0:5]"  0 0.76324105262756348 -0.24726533889770508 
		-0.17932353913784027 -0.45749473571777344 -0.75674420595169067;
createNode animCurveTA -n "animCurveTA414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -90.779043014820601 4 -28.419923433928705 
		10 -28.419923433928705 14 -12.341903041378329 24 -12.341903041378329 32 -90.779043014820601;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.29284137487411499 0.76500999927520752 
		0.85699474811553955 0.40141874551773071 0.19119769334793091;
	setAttr -s 6 ".kiy[0:5]"  0 0.9561610221862793 0.64401841163635254 
		0.51532512903213501 -0.91589462757110596 -0.98155152797698975;
createNode animCurveTL -n "animCurveTL159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.017571725225418906 4 0.26092998218534857 
		10 0.26092998218534857 14 0.1599581978586076 24 0.1599581978586076 32 0.017571725225418906;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.013695942237973213 0.032994545996189117 
		0.046168249100446701 0.042101472616195679 0.018725084140896797;
	setAttr -s 6 ".kiy[0:5]"  0 0.99990618228912354 -0.99945551156997681 
		-0.99893367290496826 -0.99911332130432129 -0.9998246431350708;
createNode animCurveTL -n "animCurveTL160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.54560785950824164 4 -0.57812951029221449 
		10 -0.57812951029221449 14 0.065940174261110679 24 0.065940174261110679 32 
		-0.54560785950824164;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.1019616425037384 0.0051753544248640537 
		0.007245402317494154 0.0098106944933533669 0.0043604765087366104;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99478834867477417 0.99998658895492554 
		0.99997377395629883 -0.99995189905166626 -0.99999052286148071;
createNode animCurveTL -n "animCurveTL161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.64724218630287966 4 -0.57073569694006265 
		10 -0.57073569694006265 14 -1.492230597491111 24 -1.492230597491111 32 -0.64724218630287966;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.043527994304895401 0.0036172866821289063 
		0.0050641698762774467 0.0071005099453032017 0.003155845683068037;
	setAttr -s 6 ".kiy[0:5]"  0 0.99905222654342651 -0.99999344348907471 
		-0.99998718500137329 0.99997478723526001 0.99999499320983887;
createNode animCurveTL -n "animCurveTL162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.22996541113775407 4 -0.35039089098226439 
		10 -0.35039089098226439 14 -1.0573987569190908 24 -1.0573987569190908 32 
		-0.22996541113775407;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.027669038623571396 0.0047146524302661419 
		0.0066004423424601555 0.0072511485777795315 0.003222800325602293;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99961715936660767 -0.99998891353607178 
		-0.99997824430465698 0.99997371435165405 0.99999481439590454;
createNode animCurveTL -n "animCurveTL163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.71572892866406468 4 -0.40854033940183732 
		10 -0.40854033940183732 14 -1.0563209538507436 24 -1.0563209538507436 32 
		-0.71572892866406468;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.010850458405911922 0.0051457071676850319 
		0.0072038979269564152 0.017613651230931282 0.007829262875020504;
	setAttr -s 6 ".kiy[0:5]"  0 0.99994111061096191 -0.99998676776885986 
		-0.99997407197952271 0.99984484910964966 0.99996936321258545;
createNode animCurveTL -n "animCurveTL164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.86045149817799893 4 -0.82408995422063858 
		10 -0.82408995422063858 14 -1.1196318119152573 24 -1.1196318119152573 32 
		-0.86045149817799893;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.091289155185222626 0.01127800066024065 
		0.015788236632943153 0.023143704980611801 0.010288300924003124;
	setAttr -s 6 ".kiy[0:5]"  0 0.99582445621490479 -0.99993640184402466 
		-0.99987536668777466 0.99973213672637939 0.99994707107543945;
createNode animCurveTA -n "animCurveTA415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.061808866237340665 4 -0.061808866237337522 
		10 -0.061808866237337522 14 -0.061808866237337522 24 -0.061808866237337522 
		32 -0.061808866237340665;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -59.058178941076754 4 -59.058178941076754 
		10 -59.058178941076754 14 -59.058178941076754 24 -59.058178941076754 32 -59.058178941076754;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 16.57914742975785 4 16.579147429757843 
		10 16.579147429757843 14 16.579147429757843 24 16.579147429757843 32 16.57914742975785;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 12.253734489678925 4 12.253734489678925 
		10 12.253734489678925 14 12.253734489678925 24 12.253734489678925 32 12.253734489678925;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -65.746751280844975 4 -65.746751280844961 
		10 -65.746751280844961 14 -65.746751280844961 24 -65.746751280844961 32 -65.746751280844975;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 10 0 14 0 24 0 32 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 15.711328223519061 4 15.711328223519057 
		10 15.711328223519057 14 15.711328223519057 24 15.711328223519057 32 15.711328223519061;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.5572674112203657 4 8.5572674112203622 
		10 8.5572674112203622 14 8.5572674112203622 24 8.5572674112203622 32 8.5572674112203657;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 10 0 14 0 24 0 32 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 10 0 14 0 24 0 32 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 10 0 14 0 24 0 32 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 10 0 14 0 24 0 32 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 10 0 14 0 24 0 32 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 10 0 14 0 24 0 32 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.2533422302317216 4 8.2533422302317216 
		10 8.2533422302317216 14 8.2533422302317216 24 8.2533422302317216 32 8.2533422302317216;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 23.263402056531085 4 23.263402056531085 
		10 23.263402056531085 14 23.263402056531085 24 23.263402056531085 32 23.263402056531085;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 20.166277752815617 4 20.166277752815617 
		10 20.166277752815617 14 20.166277752815617 24 20.166277752815617 32 20.166277752815617;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 10 0 14 0 24 0 32 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 10 0 14 0 24 0 32 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 33.429092416277157 4 33.429092416277157 
		10 33.429092416277157 14 33.429092416277157 24 33.429092416277157 32 33.429092416277157;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA435";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA436";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA437";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA438";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA439";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA440";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 32 13.994403295754109;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA441";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA442";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA443";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 32 13.994403295754109;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 10 0 14 0 24 0 32 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 10 0 14 0 24 0 32 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 17.254116939558369 4 17.254116939558369 
		10 17.254116939558369 14 17.254116939558369 24 17.254116939558369 32 17.254116939558369;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 10 0 14 0 24 0 32 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 10 0 14 0 24 0 32 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 10 0 14 0 24 0 32 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.3937906322123035 4 3.0419216554022768 
		10 3.0419216554022768 14 -7.0267796342597171 24 -7.0267796342597171 32 -2.3937906322123035;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.96180319786071777 0.88459712266921997 
		0.99699735641479492 0.99573767185211182 0.95697176456451416;
	setAttr -s 6 ".kiy[0:5]"  0 0.27374190092086792 -0.46635603904724121 
		-0.077435813844203949 0.092230796813964844 0.29018110036849976;
	setAttr -s 6 ".kox[3:5]"  0.99699735641479492 0.99573767185211182 
		0.95697176456451416;
	setAttr -s 6 ".koy[3:5]"  -0.077435895800590515 0.092230789363384247 
		0.29018110036849976;
createNode animCurveTA -n "animCurveTA451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.7843868968348546 4 4.8098440708667356 
		10 4.8098440708667356 14 3.1225354573038291 24 3.1225354573038291 32 1.7843868968348546;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.98768407106399536 0.99612009525299072 
		0.99976116418838501 0.99999988079071045 0.99618667364120483;
	setAttr -s 6 ".kiy[0:5]"  0 0.15646156668663025 -0.088004492223262787 
		-0.021855574101209641 -0.00053184106945991516 -0.087247654795646667;
	setAttr -s 6 ".kox[3:5]"  0.99976116418838501 0.99999988079071045 
		0.99618667364120483;
	setAttr -s 6 ".koy[3:5]"  -0.02185557596385479 -0.00053183571435511112 
		-0.087247654795646667;
createNode animCurveTA -n "animCurveTA452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 13.23227595374661 4 8.8949460452343878 
		10 8.8949460452343878 14 6.401622397513365 24 6.401622397513365 32 13.23227595374661;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.97516882419586182 0.99158573150634766 
		0.99997419118881226 0.99983799457550049 0.91292136907577515;
	setAttr -s 6 ".kiy[0:5]"  0 -0.22146286070346832 -0.12945163249969482 
		-0.0071831396780908108 0.017999036237597466 0.40813547372817993;
	setAttr -s 6 ".kox[3:5]"  0.99997419118881226 0.99983799457550049 
		0.91292136907577515;
	setAttr -s 6 ".koy[3:5]"  -0.0071831396780908108 0.017999064177274704 
		0.40813547372817993;
createNode animCurveTA -n "animCurveTA453";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 20.743904438582533 10 20.743904438582533 
		14 -78.336714892979543 24 -78.336714892979543 32 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.67732924222946167 0.18927387893199921 
		0.71594583988189697 0.86567103862762451 0.19143381714820862;
	setAttr -s 6 ".kiy[0:5]"  0 0.7356799840927124 -0.98192435503005981 
		-0.69815587997436523 0.50061327219009399 0.98150551319122314;
	setAttr -s 6 ".kox[3:5]"  0.7159457802772522 0.86567103862762451 
		0.19143381714820862;
	setAttr -s 6 ".koy[3:5]"  -0.69815587997436523 0.50061327219009399 
		0.98150551319122314;
createNode animCurveTA -n "animCurveTA454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 -4.0282919405516671 10 -4.0282919405516671 
		14 -4.9104160381166331 24 -4.9104160381166331 32 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 9;
	setAttr -s 6 ".kot[4:5]"  1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.97847187519073486 0.9989350438117981 
		0.99945622682571411 0.99941360950469971 0.95204037427902222;
	setAttr -s 6 ".kiy[0:5]"  0 -0.20638014376163483 -0.046138722449541092 
		-0.032973423600196838 0.034241203218698502 0.30597245693206787;
	setAttr -s 6 ".kox[4:5]"  0.99941360950469971 0.95204037427902222;
	setAttr -s 6 ".koy[4:5]"  0.034241173416376114 0.30597245693206787;
createNode animCurveTA -n "animCurveTA455";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 34.952237467503323 10 34.952237467503323 
		14 32.421494324130641 24 32.421494324130641 32 0;
	setAttr -s 6 ".kit[1:5]"  9 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  9 9 1 1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.47950479388237 0.93845444917678833 
		0.98790758848190308 0.99258291721343994 0.42629259824752808;
	setAttr -s 6 ".kiy[0:5]"  0 0.87753927707672119 -0.3454030454158783 
		0.15504378080368042 -0.12156939506530762 -0.90458530187606812;
	setAttr -s 6 ".kox[2:5]"  0.93845444917678833 0.98790758848190308 
		0.99258291721343994 0.42629259824752808;
	setAttr -s 6 ".koy[2:5]"  -0.3454030454158783 0.15504379570484161 
		-0.12156936526298523 -0.90458530187606812;
createNode animCurveTA -n "animCurveTA456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.71032600031388204 4 -4.8714700432790456 
		10 -4.8714700432790456 14 -4.8714700432790456 24 -4.8714700432790456 32 -0.71032600031388204;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 9;
	setAttr -s 6 ".kot[4:5]"  1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.97707772254943848 1 1 0.99976968765258789 
		0.96485704183578491;
	setAttr -s 6 ".kiy[0:5]"  0 -0.21288277208805084 0 0 0.021462034434080124 
		0.2627752423286438;
	setAttr -s 6 ".kox[4:5]"  0.99976968765258789 0.96485704183578491;
	setAttr -s 6 ".koy[4:5]"  0.021462030708789825 0.2627752423286438;
createNode animCurveTA -n "animCurveTA457";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -3.6938159239902011 4 -11.783606204137085 
		10 -11.783606204137085 14 -11.783606204137085 24 -11.783606204137085 32 -3.6938159239902011;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 9;
	setAttr -s 6 ".kot[4:5]"  1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.92080080509185791 1 1 0.9991302490234375 
		0.88376456499099731;
	setAttr -s 6 ".kiy[0:5]"  0 -0.39003321528434753 0 0 0.041698314249515533 
		0.46793180704116821;
	setAttr -s 6 ".kox[4:5]"  0.9991302490234375 0.88376456499099731;
	setAttr -s 6 ".koy[4:5]"  0.041698314249515533 0.46793180704116821;
createNode animCurveTA -n "animCurveTA458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 14.572231982957494 4 7.5423825101935913 
		10 7.5423825101935913 14 7.5423825101935913 24 7.5423825101935913 32 14.572231982957494;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 9;
	setAttr -s 6 ".kot[4:5]"  1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.9384462833404541 1 1 0.99947184324264526 
		0.90845507383346558;
	setAttr -s 6 ".kiy[0:5]"  0 -0.34542524814605713 0 0 0.032497506588697433 
		0.41798257827758789;
	setAttr -s 6 ".kox[4:5]"  0.99947184324264526 0.90845507383346558;
	setAttr -s 6 ".koy[4:5]"  0.032497502863407135 0.41798257827758789;
createNode animCurveTA -n "animCurveTA459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.2796212519697261 4 3.7302972776210925 
		10 3.7302972776210925 14 -7.9474512844499952 24 -7.9474512844499952 32 2.2796212519697261;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99712765216827393 0.85315489768981934 
		0.99904364347457886 0.99990206956863403 0.83101564645767212;
	setAttr -s 6 ".kiy[0:5]"  0 0.075739040970802307 -0.52165770530700684 
		-0.04372449591755867 -0.013996276073157787 0.55624902248382568;
	setAttr -s 6 ".kox[3:5]"  0.99904364347457886 0.99990206956863403 
		0.83101564645767212;
	setAttr -s 6 ".koy[3:5]"  -0.043724529445171356 -0.013996396213769913 
		0.55624902248382568;
createNode animCurveTA -n "animCurveTA460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.2209313171847884 4 -3.9663856799628912 
		10 -3.9663856799628912 14 -8.4814480554253073 24 -8.4814480554253073 32 -2.2209313171847884;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99584972858428955 0.97317492961883545 
		0.99973464012145996 0.9997333288192749 0.92533308267593384;
	setAttr -s 6 ".kiy[0:5]"  0 -0.091012477874755859 -0.2300664484500885 
		-0.023037010803818703 0.023092923685908318 0.37915518879890442;
	setAttr -s 6 ".kox[3:5]"  0.99973464012145996 0.9997333288192749 
		0.92533308267593384;
	setAttr -s 6 ".koy[3:5]"  -0.023037029430270195 0.023092921823263168 
		0.37915518879890442;
createNode animCurveTA -n "animCurveTA461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.0401232256568242 4 3.7997895352617443 
		10 3.7997895352617443 14 2.6910162734486121 24 2.6910162734486121 32 8.0401232256568242;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.97622817754745483 0.99831902980804443 
		0.99985760450363159 0.9998052716255188 0.94382941722869873;
	setAttr -s 6 ".kiy[0:5]"  0 -0.21674545109272003 -0.057957645505666733 
		-0.01687348447740078 0.01973244920372963 0.33043307065963745;
	setAttr -s 6 ".kox[3:5]"  0.99985760450363159 0.9998052716255188 
		0.94382941722869873;
	setAttr -s 6 ".koy[3:5]"  -0.016873477026820183 0.019732434302568436 
		0.33043307065963745;
createNode animCurveTA -n "animCurveTA462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 10 0 14 0 24 0 32 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 10 0 14 0 24 0 32 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.080064458283051 4 27.080064458283051 
		10 27.080064458283051 14 27.080064458283051 24 27.080064458283051 32 27.080064458283051;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 10.423754966968488 4 10.423754966968488 
		10 10.423754966968488 14 10.423754966968488 24 10.423754966968488 32 10.423754966968488;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.7228482558439 4 27.722848255843903 
		10 27.722848255843903 14 27.722848255843903 24 27.722848255843903 32 27.7228482558439;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 21.576484776388224 4 21.576484776388227 
		10 21.576484776388227 14 21.576484776388227 24 21.576484776388227 32 21.576484776388224;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 10 0 14 0 24 0 32 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 10 0 14 0 24 0 32 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.911632519594587 4 27.911632519594587 
		10 27.911632519594587 14 27.911632519594587 24 27.911632519594587 32 27.911632519594587;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
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
connectAttr "wps_look_rightSource.st" "clipLibrary1.st[0]";
connectAttr "wps_look_rightSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL124.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL125.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL126.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL127.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL128.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA352.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU23.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU24.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU25.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU26.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU27.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU28.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU29.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU30.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA353.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA354.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA355.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL129.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL130.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL131.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL132.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL133.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL134.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA356.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA357.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA358.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL135.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL136.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL137.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA359.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA360.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA361.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA362.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA363.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA364.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA365.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA366.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA367.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA368.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA369.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA370.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA371.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA372.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA373.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL138.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL139.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL140.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL141.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL142.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL143.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL144.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL145.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL146.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA374.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA375.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA376.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA377.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA378.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA379.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA380.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA381.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA382.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA383.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA384.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA385.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA386.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA387.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA388.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA389.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA390.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA391.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA392.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA393.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA394.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA395.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA396.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA397.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA398.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA399.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA400.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA401.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA402.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL147.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL148.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL149.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA403.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA404.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA405.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL150.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL151.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL152.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA406.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA407.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA408.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL153.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL154.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL155.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA409.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA410.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA411.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL156.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL157.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL158.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA412.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA413.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA414.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL159.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL160.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL161.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL162.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL163.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL164.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA415.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA416.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA417.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA418.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA419.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA420.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA421.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA422.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA423.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA424.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA425.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA426.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA427.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA428.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA429.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA430.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA431.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA432.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA433.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA434.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA435.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA436.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA437.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA438.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA439.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA440.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA441.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA442.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA443.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA444.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA445.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA446.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA447.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA448.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA449.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA450.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA451.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA452.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA453.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA454.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA455.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA456.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA457.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA458.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA459.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA460.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA461.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA462.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA463.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA464.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA465.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA466.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA467.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA468.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA469.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA470.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of wps_look_right.ma
