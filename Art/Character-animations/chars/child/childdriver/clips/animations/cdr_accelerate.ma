//Maya ASCII 4.0 scene
//Name: cdr_accelerate.ma
//Last modified: Tue, Aug 06, 2002 02:29:57 PM
requires maya "4.0";
requires "p3dDeformer" "17.1.1.0";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dSimpleShader" "17.1";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "cdr_accelerateSource";
	setAttr ".ihi" 0;
	setAttr ".du" 20;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL616";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 5 1 20 1;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL617";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.62276245245106443 20 0.62276245245106443;
createNode animCurveTL -n "animCurveTL619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTL -n "animCurveTL620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.44556925341531151 20 0.44556925341531151;
createNode animCurveTA -n "animCurveTA1696";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTU -n "animCurveTU117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTU -n "animCurveTU118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTU -n "animCurveTU119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTU -n "animCurveTU120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTU -n "animCurveTU121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTU -n "animCurveTU122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTU -n "cdr_Hoop_Root_IK_Body_IK_World_RArm2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTU -n "cdr_Hoop_Root_IK_Body_IK_World_LArm2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTA -n "animCurveTA1697";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1698";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1699";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL621";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL622";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL623";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.1582036071592778 3 1.1582036071592778 
		5 1.1582036071592778 8 1.1582036071592778 16 1.1582036071592778 20 1.1582036071592778;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.8024274637299138 3 0.8024274637299138 
		5 0.8024274637299138 8 0.8024274637299138 16 0.8024274637299138 20 0.8024274637299138;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.6023458233856847 3 1.6023458233856847 
		5 1.6023458233856847 8 1.6023458233856847 16 1.6023458233856847 20 1.6023458233856847;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1700";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.7149195703006082 3 -2.7149195703006082 
		5 -2.7149195703006082 8 -2.7149195703006082 16 -2.7149195703006082 20 -2.7149195703006082;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1701";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -9.448854147766081 3 -9.448854147766081 
		5 -9.448854147766081 8 -9.448854147766081 16 -9.448854147766081 20 -9.448854147766081;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1702";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.9042146334359309 3 2.9042146334359309 
		5 2.9042146334359309 8 2.9042146334359309 16 2.9042146334359309 20 2.9042146334359309;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.635760016530293 3 1.635760016530293 
		5 1.635760016530293 8 1.635760016530293 16 1.635760016530293 20 1.635760016530293;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.79733745153385938 3 0.79733745153385938 
		5 0.79733745153385938 8 0.79733745153385938 16 0.79733745153385938 20 0.79733745153385938;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.6031411449878863 3 1.6031411449878863 
		5 1.6031411449878863 8 1.6031411449878863 16 1.6031411449878863 20 1.6031411449878863;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1703";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 5 0 8 0 16 0 20 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1704";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 14.260733409455982 3 14.260733409455984 
		5 14.260733409455984 8 14.260733409455984 16 14.260733409455984 20 14.260733409455984;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1705";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 5 0 8 0 16 0 20 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1706";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1707";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1708";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1709";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1710";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1711";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1712";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1713";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1714";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1715";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1716";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1717";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.011621961304049206 3 -0.011621961304049206 
		5 -0.011621961304049206 8 -0.011621961304049206 16 -0.011621961304049206 
		20 -0.011621961304049206;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.53592894662340362 3 0.53592894662340362 
		5 0.53592894662340362 8 0.53592894662340362 16 0.53592894662340362 20 0.53592894662340362;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.1714982742260704 3 1.1714982742260704 
		5 1.1714982742260704 8 1.1714982742260704 16 1.1714982742260704 20 1.1714982742260704;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.028577078352958335 3 -0.028577078352958335 
		5 -0.028577078352958335 8 -0.028577078352958335 16 -0.028577078352958335 
		20 -0.028577078352958335;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.6265256146554018 3 0.6265256146554018 
		5 0.6265256146554018 8 0.6265256146554018 16 0.6265256146554018 20 0.6265256146554018;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.1827937027824305 3 1.1827937027824305 
		5 1.1827937027824305 8 1.1827937027824305 16 1.1827937027824305 20 1.1827937027824305;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.4056785302309036 3 1.4056785302309036 
		5 1.4056785302309036 8 1.4056785302309036 16 1.4056785302309036 20 1.4056785302309036;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.96452787963755071 3 0.96452787963755071 
		5 0.96452787963755071 8 0.96452787963755071 16 0.96452787963755071 20 0.96452787963755071;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.0057239815788857 3 1.0057239815788857 
		5 1.0057239815788857 8 1.0057239815788857 16 1.0057239815788857 20 1.0057239815788857;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1718";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -19.688418588621207 3 -18.291711400021391 
		5 -18.291711400021391 8 -15.649330406989028 16 -15.390562532517645 20 -19.688418588621207;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 0.98947221040725708 0.96378296613693237 
		0.99059921503067017 0.98482263088226318 1;
	setAttr -s 6 ".kiy[0:5]"  0 0.14472301304340363 0.26668789982795715 
		0.13679617643356323 -0.1735636442899704 0;
createNode animCurveTA -n "animCurveTA1719";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.6085540494966317 3 -1.6085540494966311 
		5 -1.6085540494966311 8 -1.6085540494966413 16 -1.6085540494966313 20 -1.6085540494966313;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1720";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.23076428718713959 3 0.23076428718713959 
		5 0.23076428718713959 8 0.23076428718714068 16 0.23076428718713959 20 0.23076428718713959;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1721";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1722";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1723";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1724";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1725";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1726";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1727";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1728";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1729";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1730";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1731";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1732";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1733";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1734";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1735";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1736";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1737";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1738";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1739";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1740";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1741";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -5.6803276403432976 3 -5.6803276403432976 
		5 -5.6803276403432976 8 -5.6803276403432976 16 -5.6803276403432976 20 -5.6803276403432976;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1742";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -6.1570151121354497 3 -6.1570151121354488 
		5 -6.1570151121354488 8 -6.1570151121354488 16 -6.1570151121354488 20 -6.1570151121354488;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1743";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 5.3480278027016874 3 5.3480278027016865 
		5 5.3480278027016865 8 5.3480278027016865 16 5.3480278027016865 20 5.3480278027016865;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1744";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 5 0 8 0 16 0 20 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1745";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 5 0 8 0 16 0 20 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1746";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 5 0 8 0 16 0 20 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "Right_Arm_Hoop_translateX2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -0.28153965634655165 1 -0.28415782034006543 
		2 -0.28552296088062351 3 -0.28572130074962915 4 -0.28571424759791114 5 -0.28572130074962915 
		6 -0.28469251997024586 7 -0.28182094812810549 8 -0.27956459526228855 9 -0.27927825537979301 
		10 -0.27917950176827744 11 -0.27921136948623682 12 -0.27931971161032965 13 
		-0.27945404277987707 14 -0.27956701576932802 15 -0.27961253323473384 16 -0.27954249254493663 
		17 -0.27968930214020576 18 -0.28024572331089642 19 -0.2809518449795908 20 
		-0.2815396563465522;
createNode animCurveTL -n "Right_Arm_Hoop_translateY2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0.062866594353928579 1 0.11191184328778063 
		2 0.15948965570192308 3 0.19438398502408968 4 0.21068252838334789 5 0.19438398502408968 
		6 0.12261052825289995 7 0.028506538965093288 8 -0.019458764691361687 9 -0.019454179174399761 
		10 -0.01863867306768436 11 -0.017340287588022051 12 -0.01588637661747843 
		13 -0.014603463624996734 14 -0.013817450630799019 15 -0.01385418972010769 
		16 -0.015040419336827726 17 -0.011053884642773975 18 0.0040716274750679741 
		19 0.029256470976336102 20 0.062866594353928038;
createNode animCurveTL -n "Right_Arm_Hoop_translateZ2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0.94758108715296308 1 0.91130169792999172 
		2 0.87310609398827399 3 0.84304699491791479 4 0.83087965127185059 5 0.84304699491791479 
		6 0.88598563053891966 7 0.93296240678689868 8 0.95257910741686302 9 0.95137212429927143 
		10 0.94995567302671702 11 0.94855344764822447 12 0.9473887504936227 13 0.94668479662535054 
		14 0.94666456015122369 15 0.94755017382442552 16 0.94956188717328094 17 0.95349470008287396 
		18 0.95729802076736203 19 0.95676257685022592 20 0.94758108715296352;
createNode animCurveTA -n "Right_Arm_Hoop_rotateX2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -29.993438056114957 1 -33.498673266334769 
		2 -37.590336693673706 3 -41.145466219327702 4 -42.899320425341202 5 -41.145466219327702 
		6 -34.94514088083838 7 -29.038953398526036 8 -26.660545961303193 9 -26.626243350043787 
		10 -26.653579668557125 11 -26.720303561388281 12 -26.804013127174116 13 -26.88212045883332 
		14 -26.931919187005413 15 -26.930756744408413 16 -26.856307306011779 17 -26.945995784943943 
		18 -27.460490536241053 19 -28.443493562647028 20 -29.993438056114901;
createNode animCurveTA -n "Right_Arm_Hoop_rotateY2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 62.825162069071652 1 64.953170652311456 
		2 66.979585801636532 3 68.425590360727639 4 69.084370445756463 5 68.425590360727639 
		6 65.396154635951945 7 61.302461380367603 8 59.253534786196752 9 59.342158630468688 
		10 59.430453698098297 11 59.510248372953711 12 59.573253973908194 13 59.611178716383094 
		14 59.615782899811393 15 59.578874877397851 16 59.492247796690698 17 59.61033478535736 
		18 60.200810521351492 19 61.271787945634046 20 62.825162069071609;
createNode animCurveTA -n "Right_Arm_Hoop_rotateZ2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 65.11865964432144 1 61.489806259764677 
		2 57.252406403319448 3 53.572913594934313 4 51.79570875542516 5 53.572913594934313 
		6 59.73623938054002 7 65.578480653655092 8 67.966902121047852 9 68.073445077931652 
		10 68.083739390622767 11 68.027325653715963 12 67.933973005029074 13 67.833709281141296 
		14 67.756731685412475 15 67.733196118098377 16 67.792888770180468 17 67.732125450472822 
		18 67.312143618949136 19 66.478143669885725 20 65.118659644321454;
createNode animCurveTL -n "Left_Arm_Hoop_translateX2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0.32620582435379875 1 0.32353375248524574 
		2 0.32189118071482087 3 0.32133530554133105 4 0.32118308695068382 5 0.32133530554133105 
		6 0.32275678693054061 7 0.325848685220474 8 0.32810300509782736 9 0.32838849620848776 
		10 0.32848708209906535 11 0.32845695284379561 12 0.3283511641718968 13 0.32821860923247131 
		14 0.32810559579813231 15 0.32805803220024415 16 0.32812422455238421 17 0.32798367955260316 
		18 0.32744905358262627 19 0.32677041541942514 20 0.32620582435379958;
createNode animCurveTL -n "Left_Arm_Hoop_translateY2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0.033439979479083518 1 0.069224972043323854 
		2 0.10362402144542793 3 0.12862584980520186 4 0.14137246433854012 5 0.12862584980520186 
		6 0.068881472228009499 7 -0.0092605113740999983 8 -0.047751316051245996 9 
		-0.045923229587196204 10 -0.044349627421944399 11 -0.043092949833030171 12 
		-0.042214150937998872 13 -0.041772867311824155 14 -0.041827889745669589 15 
		-0.042437956223135405 16 -0.043662872450502349 17 -0.039366860055099755 18 
		-0.024105846571695282 19 0.00080036375755730303 20 0.033439979479082449;
createNode animCurveTL -n "Left_Arm_Hoop_translateZ2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0.90790943701675209 1 0.88358136708349055 
		2 0.85743008657491726 3 0.8365228308711844 4 0.82801653583482482 5 0.8365228308711844 
		6 0.86645287951357208 7 0.89795352634679404 8 0.90948390365688481 9 0.90710667470821083 
		10 0.90524038362473391 11 0.90391661539455215 12 0.90316940645251143 13 0.90303441706769028 
		14 0.90354774021019424 15 0.90474436201270281 16 0.90665627867461096 17 0.91058800372797555 
		18 0.91501729136465859 19 0.91559238626160888 20 0.90790943701675231;
createNode animCurveTA -n "Left_Arm_Hoop_rotateX2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -34.320242729481222 1 -33.803812729501288 
		2 -33.140441457603586 3 -32.497976788388499 4 -32.236997218579255 5 -32.497976788388499 
		6 -33.051002397447235 7 -33.440868261627571 8 -33.642104057491188 9 -33.763187462892894 
		10 -33.823367806448843 11 -33.836600585810295 12 -33.816641715631484 13 -33.77730679100037 
		14 -33.732605310046104 15 -33.696742757321097 16 -33.683986874236041 17 -33.713190321366127 
		18 -33.808220384410276 19 -33.997042559798523 20 -34.320242729481222;
createNode animCurveTA -n "Left_Arm_Hoop_rotateY2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -66.497970732237533 1 -69.118292954994217 
		2 -71.731432151017856 3 -73.699103195883708 4 -74.611619107211936 5 -73.699103195883708 
		6 -69.822090394817494 7 -64.952699820949036 8 -62.59069947989142 9 -62.661843147605438 
		10 -62.746861875309499 11 -62.833345553858543 12 -62.908760761944357 13 -62.960538217456119 
		14 -62.976125996066763 15 -62.943009017175321 16 -62.848694423882428 17 -62.974525638513711 
		18 -63.617476909946788 19 -64.788403448034771 20 -66.497970732237519;
createNode animCurveTA -n "Left_Arm_Hoop_rotateZ2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -84.523994027970701 1 -85.482909015858581 
		2 -86.607711850539744 3 -87.611031650961607 4 -88.004603343812946 5 -87.611031650961607 
		6 -86.628665296789222 7 -85.709210479749373 8 -85.206144079082449 9 -85.021570373228755 
		10 -84.934270458968314 11 -84.921442051286292 12 -84.960400192705336 13 -85.028327926510968 
		14 -85.102165598984328 15 -85.158646034241258 16 -85.174479683445369 17 -85.131924036752494 
		18 -85.021862748478895 19 -84.828255611197704 20 -84.523994027970687;
createNode animCurveTL -n "animCurveTL645";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.1344099872624747 20 1.1344099872624747;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL646";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.1296110275135671 20 2.1296110275135671;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.0696046407532309 20 2.0696046407532309;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1753";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -44.889076788073439 20 -44.889076788073439;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1754";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 71.289995585927571 20 71.289995585927571;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1755";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 50.619719123253631 20 50.619719123253631;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.5330905047330146 20 2.5330905047330146;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.0768417541934041 20 2.0768417541934041;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.0481292103665369 20 2.0481292103665369;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1756";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -36.33267118790765 20 -36.33267118790765;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1757";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -76.683613894212968 20 -76.683613894212968;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1758";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -83.339653964504663 20 -83.339653964504663;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.578730476483856 3 0.578730476483856 
		5 0.578730476483856 8 0.578730476483856 16 0.578730476483856 20 0.578730476483856;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.3751169572549602 3 -1.3751169572549602 
		5 -1.3751169572549602 8 -1.3751169572549602 16 -1.3751169572549602 20 -1.3751169572549602;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.21739896228115529 3 -0.21739896228115529 
		5 -0.21739896228115529 8 -0.21739896228115529 16 -0.21739896228115529 20 
		-0.21739896228115529;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.48508072212835623 3 -0.48508072212835623 
		5 -0.48508072212835623 8 -0.48508072212835623 16 -0.48508072212835623 20 
		-0.48508072212835623;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.3461376073222053 3 -1.3461376073222053 
		5 -1.3461376073222053 8 -1.3461376073222053 16 -1.3461376073222053 20 -1.3461376073222053;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.22135527095932556 3 -0.22135527095932556 
		5 -0.22135527095932556 8 -0.22135527095932556 16 -0.22135527095932556 20 
		-0.22135527095932556;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1759";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 12.253734489678925 3 12.253734489678925 
		5 12.253734489678925 8 12.253734489678925 16 12.253734489678925 20 12.253734489678925;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1760";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -65.746751280844975 3 -65.746751280844961 
		5 -65.746751280844961 8 -65.746751280844961 16 -65.746751280844961 20 -65.746751280844961;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1761";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 5 0 8 0 16 0 20 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1762";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.061808866237340665 3 -0.061808866237337522 
		5 -0.061808866237337522 8 -0.061808866237337522 16 -0.061808866237337522 
		20 -0.061808866237337522;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1763";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -59.058178941076754 3 -59.058178941076754 
		5 -59.058178941076754 8 -59.058178941076754 16 -59.058178941076754 20 -59.058178941076754;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1764";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 16.57914742975785 3 16.579147429757843 
		5 16.579147429757843 8 16.579147429757843 16 16.579147429757843 20 16.579147429757843;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1765";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.5572674112203639 3 8.5572674112203622 
		5 8.5572674112203622 8 8.5572674112203622 16 8.5572674112203622 20 8.5572674112203622;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1766";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 15.711328223519061 3 15.711328223519057 
		5 15.711328223519057 8 15.711328223519057 16 15.711328223519057 20 15.711328223519057;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1767";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 5 0 8 0 16 0 20 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1768";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 5 0 8 0 16 0 20 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1769";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 5 0 8 0 16 0 20 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1770";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 5 0 8 0 16 0 20 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1771";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 5 0 8 0 16 0 20 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1772";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 5 0 8 0 16 0 20 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1773";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -114.40155295336663 3 -114.40155295336663 
		5 -114.40155295336663 8 -114.40155295336663 16 -114.40155295336663 20 -114.40155295336663;
createNode animCurveTA -n "animCurveTA1774";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 53.592921685310522 3 53.592921685310522 
		5 53.592921685310522 8 53.592921685310522 16 53.592921685310522 20 53.592921685310522;
createNode animCurveTA -n "animCurveTA1775";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -3.0523073838833712 3 -3.0523073838833712 
		5 -3.0523073838833712 8 -3.0523073838833712 16 -3.0523073838833712 20 -3.0523073838833712;
createNode animCurveTA -n "animCurveTA1776";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 5 0 8 0 16 0 20 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1777";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 5 0 8 0 16 0 20 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1778";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 56.683882055276058 3 56.683882055276051 
		5 56.683882055276051 8 56.683882055276051 16 56.683882055276051 20 56.683882055276051;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1779";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1780";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1781";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1782";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1783";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1784";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 5 13.994403295754109 
		20 13.994403295754109;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1785";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1786";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 20 0;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1787";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 5 13.994403295754109 
		20 13.994403295754109;
	setAttr -s 3 ".kot[0:2]"  9 9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA1788";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 5 0 8 0 16 0 20 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1789";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 5 0 8 0 16 0 20 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1790";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 44.839776244285055 3 44.839776244285055 
		5 44.839776244285055 8 44.839776244285055 16 44.839776244285055 20 44.839776244285055;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1791";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 5 0 8 0 16 0 20 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1792";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 5 0 8 0 16 0 20 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1793";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 5 0 8 0 16 0 20 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1794";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.55766507474896454 3 0.10609449374385549 
		5 0.10609449374385549 8 -0.37666135615367807 16 -0.37666135615367807 20 -0.55766507474896432;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 0.9975929856300354 0.99872457981109619 
		0.99973607063293457 0.99996882677078247 0.99971944093704224;
	setAttr -s 6 ".kiy[0:5]"  0 0.069341428577899933 -0.050489597022533417 
		-0.022973060607910156 -0.0078975316137075424 -0.023686680942773819;
createNode animCurveTA -n "animCurveTA1795";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.0198239624003347 3 -2.0458987073604149 
		5 -2.0458987073604149 8 -2.0612466544532513 16 -2.0612466544532513 20 -2.0198239624003347;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 0.99999624490737915 0.99999868869781494 
		0.9999997615814209 0.99999839067459106 0.99998527765274048;
	setAttr -s 6 ".kiy[0:5]"  0 -0.0027305306866765022 -0.0016072312137112021 
		-0.00073056039400398731 0.001807403052225709 0.0054221372120082378;
createNode animCurveTA -n "animCurveTA1796";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 7.5513277031901893 3 7.1445163729644978 
		5 7.1445163729644978 8 2.4712130490692577 16 2.4712130490692577 20 7.5513277031901911;
	setAttr -s 6 ".kit[1:5]"  9 9 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 9 9 1 1 5;
	setAttr -s 6 ".kix[0:5]"  0 0.99909383058547974 0.89820766448974609 
		0.99802690744400024 0.99838042259216309 0.83269590139389038;
	setAttr -s 6 ".kiy[0:5]"  0 -0.042562577873468399 -0.4395713210105896 
		-0.062787309288978577 0.056890334933996201 0.5537305474281311;
	setAttr -s 6 ".kox[3:5]"  0.99802690744400024 0.99838042259216309 
		0;
	setAttr -s 6 ".koy[3:5]"  -0.062787324190139771 0.056890338659286499 
		0;
createNode animCurveTA -n "animCurveTA1797";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.95273800592490188 3 -0.43171982623546989 
		5 -0.43171982623546989 8 0.56851891612715988 16 0.56851891612715988 20 0.95273800592490165;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 0.98965322971343994 0.99455899000167847 
		0.99886852502822876 0.9998595118522644 0.998737633228302;
	setAttr -s 6 ".kiy[0:5]"  0 -0.14348000288009644 0.10417483747005463 
		0.047557380050420761 0.016762364655733109 0.050230663269758224;
createNode animCurveTA -n "animCurveTA1798";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.41955881507249093 3 1.4218513150177203 
		5 1.4218513150177203 8 0.87208616832729269 16 0.87208616832729269 20 0.41955881507249082;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 0.99453681707382202 0.99834686517715454 
		0.99965775012969971 0.99980509281158447 0.99825018644332886;
	setAttr -s 6 ".kiy[0:5]"  0 0.10438641160726547 -0.057476099580526352 
		-0.026159804314374924 -0.019741382449865341 -0.059132028371095657;
createNode animCurveTA -n "animCurveTA1799";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.6634293801101623 3 18.755178870632925 
		5 18.755178870632925 8 -31.468898632077373 16 -31.468898632077373 20 1.6634293801101616;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 0.48774448037147522 0.18678753077983856 
		0.38589456677436829 0.56888347864151001 0.22467845678329468;
	setAttr -s 6 ".kiy[0:5]"  0 0.87298643589019775 -0.98240035772323608 
		-0.92254287004470825 0.82241815328598022 0.97443294525146484;
createNode animCurveTA -n "animCurveTA1800";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.0598705588951514 3 1.0598705588951511 
		5 1.0598705588951511 8 1.0598705588951511 16 1.0598705588951511 20 1.0598705588951511;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1801";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.26280824457411484 3 0.26280824457411489 
		5 0.26280824457411489 8 0.26280824457411489 16 0.26280824457411489 20 0.26280824457411489;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1802";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 6.5086084195154994 3 6.5086084195154994 
		5 6.5086084195154994 8 6.5086084195154994 16 6.5086084195154994 20 6.5086084195154994;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1803";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.47197901174667056 3 0.63834854131364283 
		5 0.63834854131364283 8 0.39014009436571134 16 0.39014009436571134 20 0.47197901174667056;
	setAttr -s 6 ".kit[1:5]"  9 9 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 9 9 1 1 5;
	setAttr -s 6 ".kix[0:5]"  0 0.99984824657440186 0.99966239929199219 
		0.99999934434890747 0.99999958276748657 0.9999426007270813;
	setAttr -s 6 ".kiy[0:5]"  0 0.017419533804059029 -0.025983553379774094 
		-0.0011439122026786208 0.00088499102275818586 0.010712073184549809;
	setAttr -s 6 ".kox[3:5]"  0.99999934434890747 0.99999958276748657 
		0;
	setAttr -s 6 ".koy[3:5]"  -0.0011439144145697355 0.00088499102275818586 
		0;
createNode animCurveTA -n "animCurveTA1804";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.6163460272109138 3 2.6302618608743518 
		5 2.6302618608743518 8 1.6380206794877936 16 1.6380206794877936 20 1.6163460272109134;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 0.99441045522689819 0.99464493989944458 
		0.99888652563095093 0.9999995231628418 0.99999594688415527;
	setAttr -s 6 ".kiy[0:5]"  0 0.10558353364467621 -0.10335083305835724 
		-0.047177981585264206 -0.00094573473324999213 -0.0028371934313327074;
createNode animCurveTA -n "animCurveTA1805";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.9660530560192304 3 8.1560456914294832 
		5 8.1560456914294832 8 -0.91540906505245545 16 -0.91540906505245545 20 1.9660530560192302;
	setAttr -s 6 ".kit[1:5]"  9 9 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 9 9 1 1 5;
	setAttr -s 6 ".kix[0:5]"  0 0.83912754058837891 0.72501373291015625 
		0.99912720918655396 0.99865186214447021 0.93565613031387329;
	setAttr -s 6 ".kiy[0:5]"  0 0.54393464326858521 -0.68873441219329834 
		-0.04177108034491539 0.051908232271671295 0.35291308164596558;
	setAttr -s 6 ".kox[3:5]"  0.99912720918655396 0.99865186214447021 
		0;
	setAttr -s 6 ".koy[3:5]"  -0.041771046817302704 0.051908228546380997 
		0;
createNode animCurveTA -n "animCurveTA1806";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 5 0 8 0 16 0 20 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1807";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 5 0 8 0 16 0 20 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1808";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 77.428435288625664 3 77.428435288625664 
		5 77.428435288625664 8 77.428435288625664 16 77.428435288625664 20 77.428435288625664;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1809";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -153.90535089061453 3 -153.90535089061453 
		5 -153.90535089061453 8 -153.90535089061453 16 -153.90535089061453 20 -153.90535089061453;
createNode animCurveTA -n "animCurveTA1810";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 38.757782523984581 3 38.757782523984581 
		5 38.757782523984581 8 38.757782523984581 16 38.757782523984581 20 38.757782523984581;
createNode animCurveTA -n "animCurveTA1811";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -17.577333162534277 3 -17.577333162534277 
		5 -17.577333162534277 8 -17.577333162534277 16 -17.577333162534277 20 -17.577333162534277;
createNode animCurveTA -n "animCurveTA1812";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 5 0 8 0 16 0 20 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1813";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 5 0 8 0 16 0 20 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1814";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 37.656527956664149 3 37.656527956664149 
		5 37.656527956664149 8 37.656527956664149 16 37.656527956664149 20 37.656527956664149;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[5]"  5;
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
	setAttr ".o" 5;
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
	setAttr -s 654 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".top" 478;
	setAttr ".rght" 638;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
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
connectAttr "cdr_accelerateSource.st" "clipLibrary1.st[0]";
connectAttr "cdr_accelerateSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL616.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL617.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL618.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL619.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL620.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA1696.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU117.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU118.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU119.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU120.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU121.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU122.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "cdr_Hoop_Root_IK_Body_IK_World_RArm2.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "cdr_Hoop_Root_IK_Body_IK_World_LArm2.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "animCurveTA1697.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1698.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1699.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL621.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL622.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL623.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL624.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL625.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL626.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1700.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1701.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1702.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL627.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL628.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL629.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1703.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1704.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1705.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1706.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1707.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1708.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1709.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1710.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1711.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA1712.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA1713.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA1714.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA1715.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA1716.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA1717.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL630.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL631.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL632.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL633.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL634.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL635.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL636.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL637.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL638.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1718.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1719.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1720.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1721.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1722.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1723.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1724.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1725.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1726.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1727.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1728.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1729.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1730.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1731.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1732.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1733.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1734.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1735.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1736.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1737.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1738.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1739.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1740.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA1741.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA1742.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA1743.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1744.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1745.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1746.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "Right_Arm_Hoop_translateX2.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "Right_Arm_Hoop_translateY2.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "Right_Arm_Hoop_translateZ2.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateX2.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateY2.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateZ2.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "Left_Arm_Hoop_translateX2.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "Left_Arm_Hoop_translateY2.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "Left_Arm_Hoop_translateZ2.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateX2.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateY2.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateZ2.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "animCurveTL645.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL646.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL647.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1753.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1754.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1755.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL648.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL649.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL650.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1756.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1757.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1758.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL651.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL652.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL653.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL654.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL655.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL656.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1759.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1760.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1761.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1762.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1763.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1764.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1765.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1766.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1767.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1768.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1769.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1770.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1771.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1772.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1773.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1774.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1775.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1776.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1777.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1778.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1779.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1780.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1781.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1782.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1783.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1784.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1785.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1786.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1787.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1788.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1789.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1790.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1791.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1792.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1793.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1794.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1795.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1796.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1797.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1798.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1799.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1800.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1801.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1802.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1803.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1804.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1805.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1806.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1807.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1808.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1809.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1810.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1811.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1812.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1813.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1814.a" "clipLibrary1.cel[0].cev[167].cevr";
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
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of cdr_accelerate.ma
