//Maya ASCII 4.0 scene
//Name: ndr_sway_right.ma
//Last modified: Tue, Jun 17, 2003 03:50:03 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "ndr_sway_rightSource";
	setAttr ".ihi" 0;
	setAttr ".du" 32;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL371";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.995 30 -0.995 32 -0.995;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.46000000000000002 30 0.46000000000000002 
		32 0.46000000000000002;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.72 30 0.72 32 0.72;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1009";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "ndr_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTU -n "ndr_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "animCurveTA1010";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1011";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1012";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.635760016530293 30 -1.635760016530293 
		32 -1.635760016530293;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.79733745153385938 30 0.79733745153385938 
		32 0.79733745153385938;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6031411449878863 30 1.6031411449878863 
		32 1.6031411449878863;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1013";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1014";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -14.260733409455982 30 -14.260733409455982 
		32 -14.260733409455982;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1015";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.1582036071592778 30 -1.1582036071592778 
		32 -1.1582036071592778;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.8024274637299138 30 0.8024274637299138 
		32 0.8024274637299138;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6023458233856847 30 1.6023458233856847 
		32 1.6023458233856847;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1016";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.7149195703006082 30 -2.7149195703006082 
		32 -2.7149195703006082;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1017";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 9.448854147766081 30 9.448854147766081 
		32 9.448854147766081;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1018";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.9042146334359309 30 -2.9042146334359309 
		32 -2.9042146334359309;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1019";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1020";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1021";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1022";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1023";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1024";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.028577078352958335 30 0.028577078352958335 
		32 0.028577078352958335;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.6265256146554018 30 0.6265256146554018 
		32 0.6265256146554018;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.1827937027824305 30 1.1827937027824305 
		32 1.1827937027824305;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.011621961304049206 30 0.011621961304049206 
		32 0.011621961304049206;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.53592894662340362 30 0.53592894662340362 
		32 0.53592894662340362;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.1714982742260704 30 1.1714982742260704 
		32 1.1714982742260704;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.406 30 -1.406 32 -1.406;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.96452787963755071 30 0.96452787963755071 
		32 0.96452787963755071;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL392";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.0057239815788857 3 1.006 28 
		1.006 32 1.0057239815788857;
	setAttr -s 4 ".kit[0:3]"  3 1 1 3;
	setAttr -s 4 ".kot[0:3]"  3 1 1 3;
	setAttr -s 4 ".kix[1:3]"  0.99999701976776123 0.99999970197677612 
		1;
	setAttr -s 4 ".kiy[1:3]"  0.0024418716784566641 0 0;
	setAttr -s 4 ".kox[1:3]"  0.99999701976776123 0.99999970197677612 
		1;
	setAttr -s 4 ".koy[1:3]"  0.0024418726097792387 0 0;
createNode animCurveTA -n "animCurveTA1025";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -19.688418588621207 6 -19.688418588621186 
		10 -16.681098374804272 20 -16.681098374804272 24 -19.688418588621186 28 -19.751370263652689 
		32 -19.688418588621207;
	setAttr -s 7 ".kit[0:6]"  3 1 1 1 1 9 3;
	setAttr -s 7 ".kot[0:6]"  3 1 1 1 1 9 3;
	setAttr -s 7 ".kix[1:6]"  0.99996250867843628 0.99975961446762085 
		0.99955809116363525 0.99988770484924316 1 1;
	setAttr -s 7 ".kiy[1:6]"  0.0086584025993943214 0.021924974396824837 
		-0.029726272448897362 -0.014985235407948494 0 0;
	setAttr -s 7 ".kox[1:6]"  0.99996250867843628 0.99975961446762085 
		0.99955809116363525 0.99988770484924316 1 1;
	setAttr -s 7 ".koy[1:6]"  0.0086583998054265976 0.021925011649727821 
		-0.029726259410381317 -0.014985213056206703 0 0;
createNode animCurveTA -n "animCurveTA1026";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.6085540494966317 6 1.6085540494966299 
		10 3.7948068215313993 20 3.7948068215313993 24 1.6085540494966297 28 -0.045498044900976108 
		32 1.6085540494966317;
	setAttr -s 7 ".kit[0:6]"  3 1 1 1 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 1 1 1 9 9 3;
	setAttr -s 7 ".kix[1:6]"  0.99993801116943359 0.99994856119155884 
		0.99992567300796509 0.96983426809310913 1 1;
	setAttr -s 7 ".kiy[1:6]"  0.011137021705508232 0.010144998319447041 
		-0.012190749868750572 -0.24376527965068817 0 0;
	setAttr -s 7 ".kox[1:6]"  0.99993801116943359 0.99994856119155884 
		0.99992567300796509 0.96983426809310913 1 1;
	setAttr -s 7 ".koy[1:6]"  0.011137016117572784 0.010145001113414764 
		-0.012190760113298893 -0.24376527965068817 0 0;
createNode animCurveTA -n "animCurveTA1027";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.23076428718713959 6 -0.22886021256755165 
		10 6.0873376106532353 20 6.0873376106532353 24 2.583061391743402 28 -0.32902733342417539 
		32 -0.23076428718713959;
	setAttr -s 7 ".kit[0:6]"  3 1 1 1 1 3 3;
	setAttr -s 7 ".kot[0:6]"  3 1 1 1 1 3 3;
	setAttr -s 7 ".kix[1:6]"  0.99760442972183228 0.99844193458557129 
		0.99916386604309082 0.80160540342330933 1 1;
	setAttr -s 7 ".kiy[1:6]"  0.069176971912384033 0.055800478905439377 
		-0.040884647518396378 -0.59785342216491699 0 0;
	setAttr -s 7 ".kox[1:6]"  0.99760442972183228 0.99844193458557129 
		0.99916386604309082 0.80160552263259888 1 1;
	setAttr -s 7 ".koy[1:6]"  0.069176957011222839 0.055800512433052063 
		-0.040884643793106079 -0.59785336256027222 0 0;
createNode animCurveTA -n "animCurveTA1028";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1029";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1030";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1031";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1032";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1033";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1034";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1035";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1036";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1037";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1038";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1039";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1040";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1041";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1042";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1043";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1044";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1045";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1046";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1047";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1048";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1049";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1050";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1051";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -5.6803276403432976 30 -5.6803276403432976 
		32 -5.6803276403432976;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1052";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -6.1570151121354497 30 -6.1570151121354497 
		32 -6.1570151121354497;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1053";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5.3480278027016874 30 5.3480278027016874 
		32 5.3480278027016874;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -0.090585933674474289 1 -0.097937340086479308 
		2 -0.11227751253636768 3 -0.12225289050253338 4 -0.12581514975627728 5 -0.12788930760828804 
		6 -0.127851804916842 7 -0.114771806661864 8 -0.085706869056988641 9 -0.054182485883504231 
		10 -0.037832008405531782 11 -0.035766793137613891 12 -0.034271124348484817 
		13 -0.033303771280209275 14 -0.032821683060669217 15 -0.032780285793782865 
		16 -0.033133742111909045 17 -0.033835178500151816 18 -0.034836884589163335 
		19 -0.036090487607401654 20 -0.037547104295929896 21 -0.041210759216973827 
		22 -0.048369169080766029 23 -0.058090428399384567 24 -0.069944487909861547 
		25 -0.081674332195293575 26 -0.09030828234575608 27 -0.09514176866702713 
		28 -0.096032989746472883 29 -0.094576609554440264 30 -0.092774316630897427 
		31 -0.091237349373531909 32 -0.090585933674474289;
createNode animCurveTL -n "Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -0.36630170663765121 1 -0.36732813280471832 
		2 -0.36942202412814878 3 -0.370994290177525 4 -0.37148777721562259 5 -0.37128257549212784 
		6 -0.3700664195872258 7 -0.3497358451535007 8 -0.30911126795589255 9 -0.27114436140158171 
		10 -0.25357660502513851 11 -0.25152244002950774 12 -0.24997792824149173 13 
		-0.24891620808726239 14 -0.24831294575421411 15 -0.24814585290935079 16 -0.24839424127516352 
		17 -0.24903861703927277 18 -0.25006031750277907 19 -0.25144119189682429 20 
		-0.25316332789875823 21 -0.26226587474840068 22 -0.28115217996358094 23 -0.30264854145344933 
		24 -0.31895950226535191 25 -0.33289639555021766 26 -0.34954735187540181 27 
		-0.36375571746895957 28 -0.37019981213667508 29 -0.37005749911290664 30 -0.36867439231022914 
		31 -0.36707208204015068 32 -0.36630170663765121;
createNode animCurveTL -n "Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0.80889425711494034 1 0.80481948343957532 
		2 0.79667002929871578 3 0.79091614211851846 4 0.78886931350958844 5 0.78740025886991805 
		6 0.78675110509536572 7 0.78317856526210339 8 0.77497373051130514 9 0.76604522494847305 
		10 0.76158065641634953 11 0.7612470346707394 12 0.76092193129111618 13 0.76063150597926477 
		14 0.76040150218010216 15 0.76025735773933123 16 0.76022430036714683 17 0.7603274269016026 
		18 0.76059176560034569 19 0.76104232087633061 20 0.76170410003798572 21 0.76901323799489174 
		22 0.78408068113313933 23 0.79914435949775564 24 0.80694134061059175 25 0.808553176790336 
		26 0.80973301466206404 27 0.81057027624922795 28 0.81118331042013991 29 0.8111431509404381 
		30 0.81033143031122468 31 0.80936459805179672 32 0.80889425711494034;
createNode animCurveTA -n "Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -35.087478750046387 1 -36.256562770565814 
		2 -38.536491821243416 3 -40.106973585539592 4 -40.665106562975588 5 -41.055552707152735 
		6 -41.213745890137794 7 -41.277619850842179 8 -41.518232555373217 9 -41.939679001231312 
		10 -42.201109593579389 11 -42.216090482227706 12 -42.241943550083839 13 -42.272907568088286 
		14 -42.303259722530377 15 -42.327323784014283 16 -42.339479172506941 17 -42.334171114940744 
		18 -42.30592216030341 19 -42.249345376600161 20 -42.159159600558098 21 -41.085467128941772 
		22 -38.928427457365402 23 -36.827729365607716 24 -35.604373383263955 25 -35.111226415376962 
		26 -34.764170979576264 27 -34.52350328974299 28 -34.348733297066374 29 -34.376662258515978 
		30 -34.640099266145675 31 -34.94272874694343 32 -35.087478750046387;
createNode animCurveTA -n "Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 66.472370131839597 1 66.433624906976718 
		2 66.336049393460073 3 66.251043993608562 4 66.216819139418703 5 66.193599899578075 
		6 66.187575770759736 7 66.561554957663503 8 67.372434914444824 9 68.175331087966896 
		10 68.554603099021563 11 68.586959481621918 12 68.613082481563936 13 68.632619113920242 
		14 68.645249702056105 15 68.650674163168446 16 68.648598216076024 17 68.638719523823156 
		18 68.620713792989534 19 68.594220863810719 20 68.55883084076396 21 68.215290531390906 
		22 67.487206387678114 23 66.736873261754582 24 66.401693495678131 25 66.42673588671245 
		26 66.441476007221922 27 66.454187771676132 28 66.463084126453893 29 66.46698780625249 
		30 66.46959416546494 31 66.471551500731991 32 66.472370131839597;
createNode animCurveTA -n "Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 83.863669147879861 1 82.943347398110589 
		2 81.15363273024856 3 79.930397773336338 4 79.486043034261058 5 79.114726781930216 
		6 78.840097333806312 7 76.914230611270156 8 72.827191403543765 9 68.567037295701439 
		10 66.412338755737053 11 66.14964090206081 12 65.943066641895669 13 65.793369669621967 
		14 65.701272605909864 15 65.66745808322321 16 65.692558709588965 17 65.777145736313784 
		18 65.921716182180475 19 66.126678102822126 20 66.392333643349801 21 67.996646518384452 
		22 71.228867611273145 23 74.731534979909355 24 77.448951979955808 25 79.728328631193037 
		26 82.119276867751068 27 84.060067790434587 28 84.989683881513102 29 84.947068596105041 
		30 84.545253490297938 31 84.084094741995472 32 83.863669147879861;
createNode animCurveTL -n "Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0.070339321768767032 1 0.062515207470587766 
		2 0.047042854637485337 3 0.036117600125952831 4 0.032193072168629724 5 0.029907197865197476 
		6 0.02995961563492415 7 0.044118716006380794 8 0.072274857758382327 9 0.098623621771181155 
		10 0.11085124058044357 11 0.11230506471724085 12 0.11333565957558563 13 0.11398482875833452 
		14 0.11429213922565197 15 0.1142954343710548 16 0.1140313087058928 17 0.11353553998896672 
		18 0.11284347565380244 19 0.1119903712384388 20 0.11101167922857542 21 0.10911285292058011 
		22 0.10522288749938298 23 0.098842084895665899 24 0.089433135468196673 25 
		0.07937258094639163 26 0.071386237155499827 27 0.066125633177525178 28 0.064781758561444469 
		29 0.066244054161427077 30 0.068094275416031289 31 0.069672952868942567 32 
		0.070339321768767032;
createNode animCurveTL -n "Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -0.33018927950469279 1 -0.32868500934436007 
		2 -0.32577463959422676 3 -0.32375767286907692 4 -0.32314004030989746 5 -0.32315896401621402 
		6 -0.32408782831981697 7 -0.33421003925931958 8 -0.35661353991427974 9 -0.38155615217687611 
		10 -0.39492111811880704 11 -0.39690704527428738 12 -0.39831892284169967 13 
		-0.39920856390735704 14 -0.39962973373757399 15 -0.39963773554879711 16 -0.39928904359236711 
		17 -0.39864097889904876 18 -0.39775142406963893 19 -0.39667857445706106 20 
		-0.39548072394823619 21 -0.39524777622104262 22 -0.39495000994863788 23 -0.39149293762977511 
		24 -0.38172245741261007 25 -0.36528759769887742 26 -0.34743800793439283 27 
		-0.33300822709876138 28 -0.32664871562821746 29 -0.32678620869311942 30 -0.32806144090709977 
		31 -0.32950540809027368 32 -0.33018927950469279;
createNode animCurveTL -n "Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0.85074405190184721 1 0.85445034408262199 
		2 0.86153585264548982 3 0.86633735631142827 4 0.86805791480896943 5 0.86922204349184229 
		6 0.86962627778509483 7 0.86496661282415499 8 0.85498228222733375 9 0.84526892495821715 
		10 0.84073086321304025 11 0.84034545794680837 12 0.84005879274535122 13 0.83986479467537156 
		14 0.83975726665717687 15 0.83973000760625771 16 0.83977690599751431 17 0.8398920080455673 
		18 0.84006956134321742 19 0.84030403447802859 20 0.84059011285951502 21 0.84296653557296874 
		22 0.84757038105686378 23 0.85165293753845572 24 0.85236765140958581 25 0.85066916422811978 
		26 0.84952736281495078 27 0.84874944391624529 28 0.84819071179970662 29 0.84832597507539032 
		30 0.84924370539174565 31 0.85026421170578759 32 0.85074405190184721;
createNode animCurveTA -n "Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -29.385780402081789 1 -28.45523418977956 
		2 -26.597123492007096 3 -25.281053326391266 4 -24.805303497710771 5 -24.472281060465633 
		6 -24.341145787025102 7 -24.743596442590068 8 -25.577530032007573 9 -26.325069593879693 
		10 -26.655538463282426 11 -26.689955471369508 12 -26.707594142207839 13 -26.712197676745994 
		14 -26.70752312931436 15 -26.697326652679006 16 -26.685347162065693 17 -26.675288360999229 
		18 -26.67079913085751 19 -26.67545235697191 20 -26.692722347309061 21 -27.019498984888994 
		22 -27.688576004636165 23 -28.369478197864844 24 -28.914999363170349 25 -29.316894462359546 
		26 -29.595831147960308 27 -29.791696737858285 28 -29.933389010284735 29 -29.916641775828399 
		30 -29.720757658961535 31 -29.494319792221944 32 -29.385780402081789;
createNode animCurveTA -n "Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -62.95817468934758 1 -63.162879665582579 
		2 -63.549327372605127 3 -63.804937652248007 4 -63.893247648033004 5 -63.955916726512314 
		6 -63.9842526037638 7 -64.315500424534861 8 -65.049828897668135 9 -65.807089765210065 
		10 -66.174592329077313 11 -66.204321643095781 12 -66.231169381985126 13 -66.253655525424065 
		14 -66.270335357498212 15 -66.279788442937971 16 -66.280608103531733 17 -66.271391425195489 
		18 -66.250729832008247 19 -66.217200271136377 20 -66.169357061574857 21 -65.662771142051355 
		22 -64.608208714238614 23 -63.539701046849729 24 -63.002328062505043 25 -62.923670778006972 
		26 -62.866069106120669 27 -62.828389059633572 28 -62.800798255627022 29 -62.809800038073945 
		30 -62.865232220482817 31 -62.928140120742881 32 -62.95817468934758;
createNode animCurveTA -n "Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -65.616366301272279 1 -66.294518194831397 
		2 -67.656025858006259 3 -68.620904925058426 4 -68.981507460956593 5 -69.294693052276813 
		6 -69.542426177766856 7 -71.047589923465708 8 -74.159337714072933 9 -77.349488793109401 
		10 -78.959294281924201 11 -79.176559261609484 12 -79.342921991782958 13 -79.459571808361019 
		14 -79.527680863754227 15 -79.54841780732491 16 -79.522963504411379 17 -79.452528823457101 
		18 -79.338374466818664 19 -79.181832754869347 20 -78.984331194636354 21 -78.079898162678134 
		22 -76.238535099422933 23 -74.058842554135452 24 -71.976682039859341 25 -69.791282673799785 
		26 -67.470144148843488 27 -65.575692691968953 28 -64.680260913713354 29 -64.712166436870774 
		30 -65.046733271884648 31 -65.431996524503276 32 -65.616366301272279;
createNode animCurveTL -n "animCurveTL399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.5330905047330146 30 -2.5330905047330146 
		32 -2.5330905047330146;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.0768417541934041 30 2.0768417541934041 
		32 2.0768417541934041;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.0481292103665369 30 2.0481292103665369 
		32 2.0481292103665369;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1060";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -36.33267118790765 30 -36.33267118790765 
		32 -36.33267118790765;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1061";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 76.683613894212968 30 76.683613894212968 
		32 76.683613894212968;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1062";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 83.339653964504663 30 83.339653964504663 
		32 83.339653964504663;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.5799571818574061 30 -1.5799571818574061 
		32 -1.5799571818574061;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.1296110275135671 30 2.1296110275135671 
		32 2.1296110275135671;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.0696046407532309 30 2.0696046407532309 
		32 2.0696046407532309;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1063";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -44.889076788073439 30 -44.889076788073439 
		32 -44.889076788073439;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1064";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -71.289995585927571 30 -71.289995585927571 
		32 -71.289995585927571;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1065";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -50.619719123253631 30 -50.619719123253631 
		32 -50.619719123253631;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL405";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.48508072212835623 32 0.48508072212835623;
createNode animCurveTL -n "animCurveTL406";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.3461376073222053 32 -1.3461376073222053;
createNode animCurveTL -n "animCurveTL407";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.22135527095932556 32 -0.22135527095932556;
createNode animCurveTL -n "animCurveTL408";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.578730476483856 32 -0.578730476483856;
createNode animCurveTL -n "animCurveTL409";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.3751169572549602 32 -1.3751169572549602;
createNode animCurveTL -n "animCurveTL410";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.21739896228115529 32 -0.21739896228115529;
createNode animCurveTA -n "animCurveTA1066";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.061808866237340665 30 -0.061808866237340665 
		32 -0.061808866237340665;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1067";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -59.058178941076754 30 -59.058178941076754 
		32 -59.058178941076754;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1068";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.57914742975785 30 16.57914742975785 
		32 16.57914742975785;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1069";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 12.253734489678925 30 12.253734489678925 
		32 12.253734489678925;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1070";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -65.746751280844975 30 -65.746751280844975 
		32 -65.746751280844975;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1071";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1072";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 15.711328223519061 30 15.711328223519061 
		32 15.711328223519061;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1073";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.5572674112203657 30 8.5572674112203657 
		32 8.5572674112203657;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1074";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1075";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1076";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1077";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1078";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1079";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1080";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -12.533800869393716 30 -12.533800869393716 
		32 -12.533800869393716;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1081";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 38.757782523984616 30 38.757782523984616 
		32 38.757782523984616;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1082";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -17.577333162534281 30 -17.577333162534281 
		32 -17.577333162534281;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1083";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1084";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1085";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 77.428435288625664 30 77.428435288625664 
		32 77.428435288625664;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1086";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1087";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1088";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1089";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1090";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1091";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 30 13.994403295754109 
		32 13.994403295754109;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1092";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1093";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1094";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 30 13.994403295754109 
		32 13.994403295754109;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1095";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1096";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1097";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 37.656527956664149 30 37.656527956664149 
		32 37.656527956664149;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1098";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1099";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1101";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.55766507474896454 6 0.57681454945791288 
		10 1.236975047779568 24 1.2145118372202401 28 0.87616976080293729 32 0.55766507474896454;
	setAttr -s 6 ".kit[0:5]"  3 1 1 1 9 3;
	setAttr -s 6 ".kot[0:5]"  3 1 1 1 9 3;
	setAttr -s 6 ".kix[1:5]"  0.99996471405029297 0.99999731779098511 
		0.9999774694442749 0.9990772008895874 1;
	setAttr -s 6 ".kiy[1:5]"  0.0083987731486558914 0.0023195310495793819 
		-0.0067168646492063999 -0.042950849980115891 0;
	setAttr -s 6 ".kox[1:5]"  0.99996471405029297 0.99999731779098511 
		0.9999774694442749 0.9990772008895874 1;
	setAttr -s 6 ".koy[1:5]"  0.0083987731486558914 0.0023195301182568073 
		-0.0067168651148676872 -0.042950849980115891 0;
createNode animCurveTA -n "animCurveTA1102";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.0198239624003347 6 2.0903572641597776 
		10 5.4504057683347451 24 5.4217609806336728 28 2.1749789963697106 32 2.0198239624003347;
	setAttr -s 6 ".kit[0:5]"  3 1 1 3 1 3;
	setAttr -s 6 ".kot[0:5]"  3 1 1 3 1 3;
	setAttr -s 6 ".kix[1:5]"  0.99976879358291626 0.99875479936599731 
		1 0.99923253059387207 1;
	setAttr -s 6 ".kiy[1:5]"  0.021502315998077393 0.049888432025909424 
		0 -0.03917115181684494 0;
	setAttr -s 6 ".kox[1:5]"  0.99976879358291626 0.99875479936599731 
		1 0.99923253059387207 1;
	setAttr -s 6 ".koy[1:5]"  0.021502315998077393 0.049888428300619125 
		0 -0.03917115181684494 0;
createNode animCurveTA -n "animCurveTA1103";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 7.5513277031901893 6 7.5466374935089897 
		10 7.3353787742734253 20 7.3353787742734253 24 7.5499791124447633 32 7.5513277031901893;
	setAttr -s 6 ".kit[0:5]"  3 1 1 1 1 3;
	setAttr -s 6 ".kot[0:5]"  3 1 1 1 1 3;
	setAttr -s 6 ".kix[1:5]"  0.99999880790710449 0.9999995231628418 
		0.99999868869781494 0.99999994039535522 1;
	setAttr -s 6 ".kiy[1:5]"  -0.0015333611518144608 -0.00099428894463926554 
		0.0016065838281065226 0.00033112938399426639 0;
	setAttr -s 6 ".kox[1:5]"  0.99999880790710449 0.9999995231628418 
		0.99999868869781494 0.99999994039535522 1;
	setAttr -s 6 ".koy[1:5]"  -0.0015333661576732993 -0.00099428801331669092 
		0.0016065837116912007 0.00033112935489043593 0;
createNode animCurveTA -n "animCurveTA1104";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.95273800592490188 6 -1.1949158726017999 
		10 -18.829269962708576 15 -19.047819429433172 20 -16.628895002917908 24 -7.0084518016860731 
		28 -0.87957077920152749 32 -0.95273800592490188;
	setAttr -s 8 ".kit[0:7]"  3 1 1 9 1 9 3 
		3;
	setAttr -s 8 ".kot[0:7]"  3 1 1 9 1 9 3 
		3;
	setAttr -s 8 ".kix[1:7]"  0.99655246734619141 0.97392737865447998 
		0.99342852830886841 0.92444676160812378 0.69630557298660278 1 1;
	setAttr -s 8 ".kiy[1:7]"  -0.08296521008014679 -0.22686003148555756 
		0.11445426195859909 0.38131117820739746 0.71774548292160034 0 0;
	setAttr -s 8 ".kox[1:7]"  0.99655246734619141 0.97392731904983521 
		0.99342852830886841 0.924446702003479 0.69630557298660278 1 1;
	setAttr -s 8 ".koy[1:7]"  -0.082965187728404999 -0.2268601655960083 
		0.11445426195859909 0.38131123781204224 0.71774548292160034 0 0;
createNode animCurveTA -n "animCurveTA1105";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.41955881507249099 10 -0.31216944232808796 
		15 6.0037363824290102 20 6.0037363824290102 24 2.770439936679427 28 -0.43279927470668644 
		32 -0.41955881507249099;
	setAttr -s 7 ".kit[0:6]"  3 1 1 1 1 3 3;
	setAttr -s 7 ".kot[0:6]"  3 1 1 1 1 3 3;
	setAttr -s 7 ".kix[1:6]"  0.99946939945220947 0.99267256259918213 
		0.9945148229598999 0.89220166206359863 1 1;
	setAttr -s 7 ".kiy[1:6]"  0.032571513205766678 0.12083551287651062 
		-0.10459599643945694 -0.45163720846176147 0 0;
	setAttr -s 7 ".kox[1:6]"  0.99946939945220947 0.99267256259918213 
		0.9945148229598999 0.89220166206359863 1 1;
	setAttr -s 7 ".koy[1:6]"  0.032571513205766678 0.12083539366722107 
		-0.10459597408771515 -0.45163720846176147 0 0;
createNode animCurveTA -n "animCurveTA1106";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.6634293801101625 10 1.6214360266354397 
		15 -0.30458770080736486 20 -0.30458770080736486 24 0.86545910645245694 28 
		1.6662227833676611 32 1.6634293801101625;
	setAttr -s 7 ".kit[1:6]"  1 9 9 1 3 3;
	setAttr -s 7 ".kot[1:6]"  1 9 9 1 3 3;
	setAttr -s 7 ".kix[1:6]"  0.9999651312828064 0.994953453540802 
		0.99769121408462524 0.98853659629821777 1 1;
	setAttr -s 7 ".kiy[1:6]"  -0.008351130411028862 -0.1003374382853508 
		0.06791340559720993 0.15098156034946442 0 0;
	setAttr -s 7 ".kox[1:6]"  0.9999651312828064 0.994953453540802 
		0.99769121408462524 0.98853659629821777 1 1;
	setAttr -s 7 ".koy[1:6]"  -0.008351130411028862 -0.1003374382853508 
		0.06791340559720993 0.15098157525062561 0 0;
createNode animCurveTA -n "animCurveTA1107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.0598705588951514 3 6.3459498001189099 
		6 -4.8714700432790456 10 -11.585389647444966 20 -4.8714700432790456 24 -1.107962030853916 
		28 -4.7871034605416334 32 -1.0598705588951514;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.26280824457411484 3 1.9963037400559176 
		6 -11.783606204137085 10 -10.333092121253337 20 -11.783606204137085 24 -2.8983658144265312 
		28 5.037822461176523 32 -0.26280824457411484;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 6.5086084195154994 3 6.3786479652115133 
		6 7.5423825101935913 10 7.4167347966497221 20 7.5423825101935913 24 6.6727974003941704 
		28 6.1239022477803227 32 6.5086084195154994;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1110";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.47197901174667056 3 1.6329203501433724 
		6 2.0923016578577855 10 0.62491185199516064 28 0.62731213752257731 32 -0.47197901174667056;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 3;
	setAttr -s 6 ".kot[0:5]"  3 1 3 1 1 3;
	setAttr -s 6 ".kix[1:5]"  0.99066120386123657 1 0.99997639656066895 
		0.99999624490737915 1;
	setAttr -s 6 ".kiy[1:5]"  0.1363464742898941 0 -0.0068697370588779449 
		-0.0027316983323544264 0;
	setAttr -s 6 ".kox[1:5]"  0.99066120386123657 1 0.99997639656066895 
		0.99999624490737915 1;
	setAttr -s 6 ".koy[1:5]"  0.13634645938873291 0 -0.0068697305396199226 
		-0.0027316967025399208 0;
createNode animCurveTA -n "animCurveTA1111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.6163460272109138 6 -1.5868457645631084 
		10 -0.43729114985046524 20 -0.43729114985046524 24 -1.5924579241051695 32 
		-1.6163460272109138;
	setAttr -s 6 ".kit[0:5]"  3 1 9 9 1 3;
	setAttr -s 6 ".kot[0:5]"  3 1 9 9 1 3;
	setAttr -s 6 ".kix[1:5]"  0.99993312358856201 0.99907708168029785 
		0.99906802177429199 0.99996834993362427 1;
	setAttr -s 6 ".kiy[1:5]"  0.011563016101717949 0.042953565716743469 
		-0.04316287487745285 -0.0079589663073420525 0;
	setAttr -s 6 ".kox[1:5]"  0.99993312358856201 0.99907708168029785 
		0.99906802177429199 0.99996834993362427 1;
	setAttr -s 6 ".koy[1:5]"  0.01156301237642765 0.042953565716743469 
		-0.04316287487745285 -0.0079589635133743286 0;
createNode animCurveTA -n "animCurveTA1112";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.9660530560192304 6 1.9688842878935504 
		10 2.0392151659083639 20 2.0392151659083639 24 1.9840981620606046 28 1.970241689140211 
		32 1.9660530560192304;
	setAttr -s 7 ".kit[0:6]"  3 1 1 1 1 1 3;
	setAttr -s 7 ".kot[0:6]"  3 1 1 1 1 1 3;
	setAttr -s 7 ".kix[1:6]"  0.99999988079071045 0.9999995231628418 
		0.99999910593032837 0.99999284744262695 0.9999997615814209 1;
	setAttr -s 7 ".kiy[1:6]"  0.00045281130587682128 0.00099385133944451809 
		-0.001324824639596045 -0.0037882155738770962 -0.00068935711169615388 0;
	setAttr -s 7 ".kox[1:6]"  0.99999988079071045 0.9999995231628418 
		0.99999910593032837 0.99999284744262695 0.9999997615814209 1;
	setAttr -s 7 ".koy[1:6]"  0.00045281130587682128 0.00099385122302919626 
		-0.001324824639596045 -0.0037882141768932343 -0.00068935711169615388 0;
createNode animCurveTA -n "animCurveTA1113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 56.683882055276058 30 56.683882055276058 
		32 56.683882055276058;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -10.597736793341939 30 -10.597736793341939 
		32 -10.597736793341939;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 64.03458729655091 30 64.03458729655091 
		32 64.03458729655091;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.5980180414270868 30 -3.5980180414270868 
		32 -3.5980180414270868;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 44.839776244285055 30 44.839776244285055 
		32 44.839776244285055;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode clipLibrary -n "clipLibrary3";
	setAttr -s 162 ".cel[0].cev";
	setAttr ".cd[0].cm" -type "characterMapping" 162 "Extra_Attributes.translateX" 
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
		2 15 "Left_Ball_Hoop.rotateZ" 2 16 "Right_Knee_Hoop.translateX" 
		1 15 "Right_Knee_Hoop.translateY" 1 16 "Right_Knee_Hoop.translateZ" 
		1 17 "Left_Knee_Hoop.translateX" 1 18 "Left_Knee_Hoop.translateY" 
		1 19 "Left_Knee_Hoop.translateZ" 1 20 "Character_Hoop.translateX" 
		1 21 "Character_Hoop.translateY" 1 22 "Character_Hoop.translateZ" 
		1 23 "Character_Hoop.rotateX" 2 17 "Character_Hoop.rotateY" 
		2 18 "Character_Hoop.rotateZ" 2 19 "R_Hip_Fk.rotateX" 2 
		20 "R_Hip_Fk.rotateY" 2 21 "R_Hip_Fk.rotateZ" 2 22 "R_Knee_Fk.rotateZ" 
		2 23 "R_Ankle_Fk.rotateX" 2 24 "R_Ankle_Fk.rotateY" 2 
		25 "R_Ankle_Fk.rotateZ" 2 26 "R_Ball_Fk.rotateX" 2 27 "R_Ball_Fk.rotateY" 
		2 28 "R_Ball_Fk.rotateZ" 2 29 "L_Hip_Fk.rotateX" 2 
		30 "L_Hip_Fk.rotateY" 2 31 "L_Hip_Fk.rotateZ" 2 32 "L_Knee_Fk.rotateZ" 
		2 33 "L_Ankle_Fk.rotateX" 2 34 "L_Ankle_Fk.rotateY" 2 
		35 "L_Ankle_Fk.rotateZ" 2 36 "L_Ball_Fk.rotateX" 2 37 "L_Ball_Fk.rotateY" 
		2 38 "L_Ball_Fk.rotateZ" 2 39 "R_Ball_IK_Fk.rotateX" 2 
		40 "R_Ball_IK_Fk.rotateY" 2 41 "R_Ball_IK_Fk.rotateZ" 2 
		42 "L_Ball_IK_Fk.rotateX" 2 43 "L_Ball_IK_Fk.rotateY" 2 
		44 "L_Ball_IK_Fk.rotateZ" 2 45 "Right_Arm_Hoop.translateX" 1 
		24 "Right_Arm_Hoop.translateY" 1 25 "Right_Arm_Hoop.translateZ" 
		1 26 "Right_Arm_Hoop.rotateX" 2 46 "Right_Arm_Hoop.rotateY" 
		2 47 "Right_Arm_Hoop.rotateZ" 2 48 "Left_Arm_Hoop.translateX" 
		1 27 "Left_Arm_Hoop.translateY" 1 28 "Left_Arm_Hoop.translateZ" 
		1 29 "Left_Arm_Hoop.rotateX" 2 49 "Left_Arm_Hoop.rotateY" 
		2 50 "Left_Arm_Hoop.rotateZ" 2 51 "Right_Arm_World.translateX" 
		1 30 "Right_Arm_World.translateY" 1 31 "Right_Arm_World.translateZ" 
		1 32 "Right_Arm_World.rotateX" 2 52 "Right_Arm_World.rotateY" 
		2 53 "Right_Arm_World.rotateZ" 2 54 "Left_Arm_World.translateX" 
		1 33 "Left_Arm_World.translateY" 1 34 "Left_Arm_World.translateZ" 
		1 35 "Left_Arm_World.rotateX" 2 55 "Left_Arm_World.rotateY" 
		2 56 "Left_Arm_World.rotateZ" 2 57 "Left_Elbow_Hoop.translateX" 
		1 36 "Left_Elbow_Hoop.translateY" 1 37 "Left_Elbow_Hoop.translateZ" 
		1 38 "Right_Elbow_Hoop.translateX" 1 39 "Right_Elbow_Hoop.translateY" 
		1 40 "Right_Elbow_Hoop.translateZ" 1 41 "R_FK_Shoulder.rotateX" 
		2 58 "R_FK_Shoulder.rotateY" 2 59 "R_FK_Shoulder.rotateZ" 
		2 60 "L_FK_Shoulder.rotateX" 2 61 "L_FK_Shoulder.rotateY" 
		2 62 "L_FK_Shoulder.rotateZ" 2 63 "R_FK_Elbow.rotateZ" 
		2 64 "L_FK_Elbow.rotateZ" 2 65 "R_FK_Wrist.rotateX" 2 
		66 "R_FK_Wrist.rotateY" 2 67 "R_FK_Wrist.rotateZ" 2 68 "L_FK_Wrist.rotateX" 
		2 69 "L_FK_Wrist.rotateY" 2 70 "L_FK_Wrist.rotateZ" 2 
		71 "Thumb_Base_L.rotateX" 2 72 "Thumb_Base_L.rotateY" 2 
		73 "Thumb_Base_L.rotateZ" 2 74 "Middle_Base_L.rotateX" 2 
		75 "Middle_Base_L.rotateY" 2 76 "Middle_Base_L.rotateZ" 2 
		77 "Pelvis.rotateX" 2 78 "Pelvis.rotateY" 2 79 "Pelvis.rotateZ" 
		2 80 "Thumb_R.rotateX" 2 81 "Thumb_R.rotateY" 2 82 "Thumb_R.rotateZ" 
		2 83 "Thumb_L.rotateX" 2 84 "Thumb_L.rotateY" 2 85 "Thumb_L.rotateZ" 
		2 86 "Middle_R.rotateX" 2 87 "Middle_R.rotateY" 2 
		88 "Middle_R.rotateZ" 2 89 "Jaw.rotateX" 2 90 "Jaw.rotateY" 
		2 91 "Jaw.rotateZ" 2 92 "Spine_2.rotateX" 2 93 "Spine_2.rotateY" 
		2 94 "Spine_2.rotateZ" 2 95 "Neck.rotateX" 2 96 "Neck.rotateY" 
		2 97 "Neck.rotateZ" 2 98 "Head.rotateX" 2 99 "Head.rotateY" 
		2 100 "Head.rotateZ" 2 101 "Spine_1.rotateX" 2 102 "Spine_1.rotateY" 
		2 103 "Spine_1.rotateZ" 2 104 "Middle_Base_R.rotateX" 2 
		105 "Middle_Base_R.rotateY" 2 106 "Middle_Base_R.rotateZ" 2 
		107 "Thumb_Base_R.rotateX" 2 108 "Thumb_Base_R.rotateY" 2 
		109 "Thumb_Base_R.rotateZ" 2 110 "Middle_L.rotateX" 2 111 "Middle_L.rotateY" 
		2 112 "Middle_L.rotateZ" 2 113  ;
	setAttr ".cd[0].cim" -type "Int32Array" 162 0 1 2 3
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
		 158 159 160 161 ;
createNode lightLinker -n "lightLinker1";
	setAttr ".ihi" 0;
	setAttr -s 40 ".lnk";
select -ne :time1;
	setAttr ".o" 23;
select -ne :renderPartition;
	setAttr -s 40 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 40 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 4 ".tx";
select -ne :initialShadingGroup;
	setAttr -k on ".nds";
	setAttr ".ro" yes;
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
	setAttr ".outf" 23;
	setAttr -k on ".gama";
	setAttr -k on ".left";
	setAttr -k on ".bot";
	setAttr -k on ".urr";
	setAttr ".an" yes;
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
	setAttr -k on ".soll";
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
	setAttr -k on ".rlen";
	setAttr -k on ".rlpn";
	setAttr -k on ".rgpn";
	setAttr -k on ".rlsd";
	setAttr -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
select -ne :characterPartition;
select -ne :hyperGraphLayout;
	setAttr ".cch" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".img" -type "string" "";
	setAttr ".ims" 1;
select -ne :ikSystem;
connectAttr "ndr_sway_rightSource.st" "clipLibrary3.st[0]";
connectAttr "ndr_sway_rightSource.du" "clipLibrary3.du[0]";
connectAttr "animCurveTL370.a" "clipLibrary3.cel[0].cev[0].cevr";
connectAttr "animCurveTL371.a" "clipLibrary3.cel[0].cev[1].cevr";
connectAttr "animCurveTL372.a" "clipLibrary3.cel[0].cev[2].cevr";
connectAttr "animCurveTL373.a" "clipLibrary3.cel[0].cev[3].cevr";
connectAttr "animCurveTL374.a" "clipLibrary3.cel[0].cev[4].cevr";
connectAttr "animCurveTA1009.a" "clipLibrary3.cel[0].cev[5].cevr";
connectAttr "animCurveTU9.a" "clipLibrary3.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary3.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary3.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary3.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary3.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary3.cel[0].cev[11].cevr";
connectAttr "ndr_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary3.cel[0].cev[12].cevr"
		;
connectAttr "ndr_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary3.cel[0].cev[13].cevr"
		;
connectAttr "animCurveTA1010.a" "clipLibrary3.cel[0].cev[14].cevr";
connectAttr "animCurveTA1011.a" "clipLibrary3.cel[0].cev[15].cevr";
connectAttr "animCurveTA1012.a" "clipLibrary3.cel[0].cev[16].cevr";
connectAttr "animCurveTL375.a" "clipLibrary3.cel[0].cev[17].cevr";
connectAttr "animCurveTL376.a" "clipLibrary3.cel[0].cev[18].cevr";
connectAttr "animCurveTL377.a" "clipLibrary3.cel[0].cev[19].cevr";
connectAttr "animCurveTL378.a" "clipLibrary3.cel[0].cev[20].cevr";
connectAttr "animCurveTL379.a" "clipLibrary3.cel[0].cev[21].cevr";
connectAttr "animCurveTL380.a" "clipLibrary3.cel[0].cev[22].cevr";
connectAttr "animCurveTA1013.a" "clipLibrary3.cel[0].cev[23].cevr";
connectAttr "animCurveTA1014.a" "clipLibrary3.cel[0].cev[24].cevr";
connectAttr "animCurveTA1015.a" "clipLibrary3.cel[0].cev[25].cevr";
connectAttr "animCurveTL381.a" "clipLibrary3.cel[0].cev[26].cevr";
connectAttr "animCurveTL382.a" "clipLibrary3.cel[0].cev[27].cevr";
connectAttr "animCurveTL383.a" "clipLibrary3.cel[0].cev[28].cevr";
connectAttr "animCurveTA1016.a" "clipLibrary3.cel[0].cev[29].cevr";
connectAttr "animCurveTA1017.a" "clipLibrary3.cel[0].cev[30].cevr";
connectAttr "animCurveTA1018.a" "clipLibrary3.cel[0].cev[31].cevr";
connectAttr "animCurveTA1019.a" "clipLibrary3.cel[0].cev[32].cevr";
connectAttr "animCurveTA1020.a" "clipLibrary3.cel[0].cev[33].cevr";
connectAttr "animCurveTA1021.a" "clipLibrary3.cel[0].cev[34].cevr";
connectAttr "animCurveTA1022.a" "clipLibrary3.cel[0].cev[35].cevr";
connectAttr "animCurveTA1023.a" "clipLibrary3.cel[0].cev[36].cevr";
connectAttr "animCurveTA1024.a" "clipLibrary3.cel[0].cev[37].cevr";
connectAttr "animCurveTL384.a" "clipLibrary3.cel[0].cev[38].cevr";
connectAttr "animCurveTL385.a" "clipLibrary3.cel[0].cev[39].cevr";
connectAttr "animCurveTL386.a" "clipLibrary3.cel[0].cev[40].cevr";
connectAttr "animCurveTL387.a" "clipLibrary3.cel[0].cev[41].cevr";
connectAttr "animCurveTL388.a" "clipLibrary3.cel[0].cev[42].cevr";
connectAttr "animCurveTL389.a" "clipLibrary3.cel[0].cev[43].cevr";
connectAttr "animCurveTL390.a" "clipLibrary3.cel[0].cev[44].cevr";
connectAttr "animCurveTL391.a" "clipLibrary3.cel[0].cev[45].cevr";
connectAttr "animCurveTL392.a" "clipLibrary3.cel[0].cev[46].cevr";
connectAttr "animCurveTA1025.a" "clipLibrary3.cel[0].cev[47].cevr";
connectAttr "animCurveTA1026.a" "clipLibrary3.cel[0].cev[48].cevr";
connectAttr "animCurveTA1027.a" "clipLibrary3.cel[0].cev[49].cevr";
connectAttr "animCurveTA1028.a" "clipLibrary3.cel[0].cev[50].cevr";
connectAttr "animCurveTA1029.a" "clipLibrary3.cel[0].cev[51].cevr";
connectAttr "animCurveTA1030.a" "clipLibrary3.cel[0].cev[52].cevr";
connectAttr "animCurveTA1031.a" "clipLibrary3.cel[0].cev[53].cevr";
connectAttr "animCurveTA1032.a" "clipLibrary3.cel[0].cev[54].cevr";
connectAttr "animCurveTA1033.a" "clipLibrary3.cel[0].cev[55].cevr";
connectAttr "animCurveTA1034.a" "clipLibrary3.cel[0].cev[56].cevr";
connectAttr "animCurveTA1035.a" "clipLibrary3.cel[0].cev[57].cevr";
connectAttr "animCurveTA1036.a" "clipLibrary3.cel[0].cev[58].cevr";
connectAttr "animCurveTA1037.a" "clipLibrary3.cel[0].cev[59].cevr";
connectAttr "animCurveTA1038.a" "clipLibrary3.cel[0].cev[60].cevr";
connectAttr "animCurveTA1039.a" "clipLibrary3.cel[0].cev[61].cevr";
connectAttr "animCurveTA1040.a" "clipLibrary3.cel[0].cev[62].cevr";
connectAttr "animCurveTA1041.a" "clipLibrary3.cel[0].cev[63].cevr";
connectAttr "animCurveTA1042.a" "clipLibrary3.cel[0].cev[64].cevr";
connectAttr "animCurveTA1043.a" "clipLibrary3.cel[0].cev[65].cevr";
connectAttr "animCurveTA1044.a" "clipLibrary3.cel[0].cev[66].cevr";
connectAttr "animCurveTA1045.a" "clipLibrary3.cel[0].cev[67].cevr";
connectAttr "animCurveTA1046.a" "clipLibrary3.cel[0].cev[68].cevr";
connectAttr "animCurveTA1047.a" "clipLibrary3.cel[0].cev[69].cevr";
connectAttr "animCurveTA1048.a" "clipLibrary3.cel[0].cev[70].cevr";
connectAttr "animCurveTA1049.a" "clipLibrary3.cel[0].cev[71].cevr";
connectAttr "animCurveTA1050.a" "clipLibrary3.cel[0].cev[72].cevr";
connectAttr "animCurveTA1051.a" "clipLibrary3.cel[0].cev[73].cevr";
connectAttr "animCurveTA1052.a" "clipLibrary3.cel[0].cev[74].cevr";
connectAttr "animCurveTA1053.a" "clipLibrary3.cel[0].cev[75].cevr";
connectAttr "Right_Arm_Hoop_translateX.a" "clipLibrary3.cel[0].cev[76].cevr"
		;
connectAttr "Right_Arm_Hoop_translateY.a" "clipLibrary3.cel[0].cev[77].cevr"
		;
connectAttr "Right_Arm_Hoop_translateZ.a" "clipLibrary3.cel[0].cev[78].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateX.a" "clipLibrary3.cel[0].cev[79].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateY.a" "clipLibrary3.cel[0].cev[80].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateZ.a" "clipLibrary3.cel[0].cev[81].cevr"
		;
connectAttr "Left_Arm_Hoop_translateX.a" "clipLibrary3.cel[0].cev[82].cevr"
		;
connectAttr "Left_Arm_Hoop_translateY.a" "clipLibrary3.cel[0].cev[83].cevr"
		;
connectAttr "Left_Arm_Hoop_translateZ.a" "clipLibrary3.cel[0].cev[84].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateX.a" "clipLibrary3.cel[0].cev[85].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateY.a" "clipLibrary3.cel[0].cev[86].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateZ.a" "clipLibrary3.cel[0].cev[87].cevr"
		;
connectAttr "animCurveTL399.a" "clipLibrary3.cel[0].cev[88].cevr";
connectAttr "animCurveTL400.a" "clipLibrary3.cel[0].cev[89].cevr";
connectAttr "animCurveTL401.a" "clipLibrary3.cel[0].cev[90].cevr";
connectAttr "animCurveTA1060.a" "clipLibrary3.cel[0].cev[91].cevr";
connectAttr "animCurveTA1061.a" "clipLibrary3.cel[0].cev[92].cevr";
connectAttr "animCurveTA1062.a" "clipLibrary3.cel[0].cev[93].cevr";
connectAttr "animCurveTL402.a" "clipLibrary3.cel[0].cev[94].cevr";
connectAttr "animCurveTL403.a" "clipLibrary3.cel[0].cev[95].cevr";
connectAttr "animCurveTL404.a" "clipLibrary3.cel[0].cev[96].cevr";
connectAttr "animCurveTA1063.a" "clipLibrary3.cel[0].cev[97].cevr";
connectAttr "animCurveTA1064.a" "clipLibrary3.cel[0].cev[98].cevr";
connectAttr "animCurveTA1065.a" "clipLibrary3.cel[0].cev[99].cevr";
connectAttr "animCurveTL405.a" "clipLibrary3.cel[0].cev[100].cevr";
connectAttr "animCurveTL406.a" "clipLibrary3.cel[0].cev[101].cevr";
connectAttr "animCurveTL407.a" "clipLibrary3.cel[0].cev[102].cevr";
connectAttr "animCurveTL408.a" "clipLibrary3.cel[0].cev[103].cevr";
connectAttr "animCurveTL409.a" "clipLibrary3.cel[0].cev[104].cevr";
connectAttr "animCurveTL410.a" "clipLibrary3.cel[0].cev[105].cevr";
connectAttr "animCurveTA1066.a" "clipLibrary3.cel[0].cev[106].cevr";
connectAttr "animCurveTA1067.a" "clipLibrary3.cel[0].cev[107].cevr";
connectAttr "animCurveTA1068.a" "clipLibrary3.cel[0].cev[108].cevr";
connectAttr "animCurveTA1069.a" "clipLibrary3.cel[0].cev[109].cevr";
connectAttr "animCurveTA1070.a" "clipLibrary3.cel[0].cev[110].cevr";
connectAttr "animCurveTA1071.a" "clipLibrary3.cel[0].cev[111].cevr";
connectAttr "animCurveTA1072.a" "clipLibrary3.cel[0].cev[112].cevr";
connectAttr "animCurveTA1073.a" "clipLibrary3.cel[0].cev[113].cevr";
connectAttr "animCurveTA1074.a" "clipLibrary3.cel[0].cev[114].cevr";
connectAttr "animCurveTA1075.a" "clipLibrary3.cel[0].cev[115].cevr";
connectAttr "animCurveTA1076.a" "clipLibrary3.cel[0].cev[116].cevr";
connectAttr "animCurveTA1077.a" "clipLibrary3.cel[0].cev[117].cevr";
connectAttr "animCurveTA1078.a" "clipLibrary3.cel[0].cev[118].cevr";
connectAttr "animCurveTA1079.a" "clipLibrary3.cel[0].cev[119].cevr";
connectAttr "animCurveTA1080.a" "clipLibrary3.cel[0].cev[120].cevr";
connectAttr "animCurveTA1081.a" "clipLibrary3.cel[0].cev[121].cevr";
connectAttr "animCurveTA1082.a" "clipLibrary3.cel[0].cev[122].cevr";
connectAttr "animCurveTA1083.a" "clipLibrary3.cel[0].cev[123].cevr";
connectAttr "animCurveTA1084.a" "clipLibrary3.cel[0].cev[124].cevr";
connectAttr "animCurveTA1085.a" "clipLibrary3.cel[0].cev[125].cevr";
connectAttr "animCurveTA1086.a" "clipLibrary3.cel[0].cev[126].cevr";
connectAttr "animCurveTA1087.a" "clipLibrary3.cel[0].cev[127].cevr";
connectAttr "animCurveTA1088.a" "clipLibrary3.cel[0].cev[128].cevr";
connectAttr "animCurveTA1089.a" "clipLibrary3.cel[0].cev[129].cevr";
connectAttr "animCurveTA1090.a" "clipLibrary3.cel[0].cev[130].cevr";
connectAttr "animCurveTA1091.a" "clipLibrary3.cel[0].cev[131].cevr";
connectAttr "animCurveTA1092.a" "clipLibrary3.cel[0].cev[132].cevr";
connectAttr "animCurveTA1093.a" "clipLibrary3.cel[0].cev[133].cevr";
connectAttr "animCurveTA1094.a" "clipLibrary3.cel[0].cev[134].cevr";
connectAttr "animCurveTA1095.a" "clipLibrary3.cel[0].cev[135].cevr";
connectAttr "animCurveTA1096.a" "clipLibrary3.cel[0].cev[136].cevr";
connectAttr "animCurveTA1097.a" "clipLibrary3.cel[0].cev[137].cevr";
connectAttr "animCurveTA1098.a" "clipLibrary3.cel[0].cev[138].cevr";
connectAttr "animCurveTA1099.a" "clipLibrary3.cel[0].cev[139].cevr";
connectAttr "animCurveTA1100.a" "clipLibrary3.cel[0].cev[140].cevr";
connectAttr "animCurveTA1101.a" "clipLibrary3.cel[0].cev[141].cevr";
connectAttr "animCurveTA1102.a" "clipLibrary3.cel[0].cev[142].cevr";
connectAttr "animCurveTA1103.a" "clipLibrary3.cel[0].cev[143].cevr";
connectAttr "animCurveTA1104.a" "clipLibrary3.cel[0].cev[144].cevr";
connectAttr "animCurveTA1105.a" "clipLibrary3.cel[0].cev[145].cevr";
connectAttr "animCurveTA1106.a" "clipLibrary3.cel[0].cev[146].cevr";
connectAttr "animCurveTA1107.a" "clipLibrary3.cel[0].cev[147].cevr";
connectAttr "animCurveTA1108.a" "clipLibrary3.cel[0].cev[148].cevr";
connectAttr "animCurveTA1109.a" "clipLibrary3.cel[0].cev[149].cevr";
connectAttr "animCurveTA1110.a" "clipLibrary3.cel[0].cev[150].cevr";
connectAttr "animCurveTA1111.a" "clipLibrary3.cel[0].cev[151].cevr";
connectAttr "animCurveTA1112.a" "clipLibrary3.cel[0].cev[152].cevr";
connectAttr "animCurveTA1113.a" "clipLibrary3.cel[0].cev[153].cevr";
connectAttr "animCurveTA1114.a" "clipLibrary3.cel[0].cev[154].cevr";
connectAttr "animCurveTA1115.a" "clipLibrary3.cel[0].cev[155].cevr";
connectAttr "animCurveTA1116.a" "clipLibrary3.cel[0].cev[156].cevr";
connectAttr "animCurveTA1117.a" "clipLibrary3.cel[0].cev[157].cevr";
connectAttr "animCurveTA1118.a" "clipLibrary3.cel[0].cev[158].cevr";
connectAttr "animCurveTA1119.a" "clipLibrary3.cel[0].cev[159].cevr";
connectAttr "animCurveTA1120.a" "clipLibrary3.cel[0].cev[160].cevr";
connectAttr "animCurveTA1121.a" "clipLibrary3.cel[0].cev[161].cevr";
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
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[38].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[39].llnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of ndr_sway_right.ma
