//Maya ASCII 4.0 scene
//Name: cdr_decelerate.ma
//Last modified: Tue, Aug 06, 2002 02:30:30 PM
requires maya "4.0";
requires "p3dDeformer" "17.1.1.0";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dSimpleShader" "17.1";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "cdr_decelerateSource";
	setAttr ".ihi" 0;
	setAttr ".du" 20;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL780";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 20 1;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL781";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL782";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.62276245245106443 20 0.62276245245106443;
createNode animCurveTL -n "animCurveTL783";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTL -n "animCurveTL784";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.44556925341531151 20 0.44556925341531151;
createNode animCurveTA -n "animCurveTA2166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTU -n "cdr_Hoop_Root_IK_FK_RFoot1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTU -n "cdr_Hoop_Root_IK_FK_LFoot1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTU -n "cdr_Hoop_Root_IK_Rev_IK_Sim_RFoot1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTU -n "cdr_Hoop_Root_IK_Rev_IK_Sim_LFoot1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTU -n "cdr_Hoop_Root_IK_FK_RArm1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTU -n "cdr_Hoop_Root_IK_FK_LArm1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTU -n "cdr_Hoop_Root_IK_Body_IK_World_RArm1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTU -n "cdr_Hoop_Root_IK_Body_IK_World_LArm1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTA -n "cdr_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "cdr_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "cdr_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTL -n "cdr_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTL -n "cdr_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTL -n "cdr_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTL -n "animCurveTL788";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.1582036071592778 3 1.1582036071592778 
		5 1.1582036071592778 8 1.1582036071592778 11 1.1582036071592778 16 1.1582036071592778 
		20 1.1582036071592778;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL789";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.8024274637299138 3 0.8024274637299138 
		5 0.8024274637299138 8 0.8024274637299138 11 0.8024274637299138 16 0.8024274637299138 
		20 0.8024274637299138;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL790";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.6023458233856847 3 1.6023458233856847 
		5 1.6023458233856847 8 1.6023458233856847 11 1.6023458233856847 16 1.6023458233856847 
		20 1.6023458233856847;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.7149195703006082 3 -2.7149195703006082 
		5 -2.7149195703006082 8 -2.7149195703006082 11 -2.7149195703006082 16 -2.7149195703006082 
		20 -2.7149195703006082;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -9.448854147766081 3 -9.448854147766081 
		5 -9.448854147766081 8 -9.448854147766081 11 -9.448854147766081 16 -9.448854147766081 
		20 -9.448854147766081;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.9042146334359309 3 2.9042146334359309 
		5 2.9042146334359309 8 2.9042146334359309 11 2.9042146334359309 16 2.9042146334359309 
		20 2.9042146334359309;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL791";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.635760016530293 3 1.635760016530293 
		5 1.635760016530293 8 1.635760016530293 11 1.635760016530293 16 1.635760016530293 
		20 1.635760016530293;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL792";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.79733745153385938 3 0.79733745153385938 
		5 0.79733745153385938 8 0.79733745153385938 11 0.79733745153385938 16 0.79733745153385938 
		20 0.79733745153385938;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL793";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.6031411449878863 3 1.6031411449878863 
		5 1.6031411449878863 8 1.6031411449878863 11 1.6031411449878863 16 1.6031411449878863 
		20 1.6031411449878863;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 5 0 8 0 11 0 16 0 20 0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 14.260733409455982 3 14.260733409455984 
		5 14.260733409455984 8 14.260733409455984 11 14.260733409455984 16 14.260733409455984 
		20 14.260733409455984;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 5 0 8 0 11 0 16 0 20 0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2176";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2177";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2178";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2179";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2180";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2181";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2182";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2183";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2184";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2185";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2186";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA2187";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL794";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.011621961304049206 3 -0.011621961304049206 
		5 -0.011621961304049206 8 -0.011621961304049206 11 -0.011621961304049206 
		16 -0.011621961304049206 20 -0.011621961304049206;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL795";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.53592894662340362 3 0.53592894662340362 
		5 0.53592894662340362 8 0.53592894662340362 11 0.53592894662340362 16 0.53592894662340362 
		20 0.53592894662340362;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL796";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.1714982742260704 3 1.1714982742260704 
		5 1.1714982742260704 8 1.1714982742260704 11 1.1714982742260704 16 1.1714982742260704 
		20 1.1714982742260704;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL797";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.028577078352958335 3 -0.028577078352958335 
		5 -0.028577078352958335 8 -0.028577078352958335 11 -0.028577078352958335 
		16 -0.028577078352958335 20 -0.028577078352958335;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL798";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.6265256146554018 3 0.6265256146554018 
		5 0.6265256146554018 8 0.6265256146554018 11 0.6265256146554018 16 0.6265256146554018 
		20 0.6265256146554018;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL799";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.1827937027824305 3 1.1827937027824305 
		5 1.1827937027824305 8 1.1827937027824305 11 1.1827937027824305 16 1.1827937027824305 
		20 1.1827937027824305;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL800";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.4056785302309036 3 1.4056785302309036 
		5 1.4056785302309036 8 1.4056785302309036 11 1.4056785302309036 16 1.4056785302309036 
		20 1.4056785302309036;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL801";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.96452787963755071 3 0.96452787963755071 
		5 0.96452787963755071 8 0.96452787963755071 11 0.96452787963755071 16 0.96452787963755071 
		20 0.96452787963755071;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL802";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.0057239815788857 3 1.0057239815788857 
		5 1.0057239815788857 8 1.0057239815788857 11 1.0057239815788857 16 1.0057239815788857 
		20 1.0057239815788857;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -19.688418588621207 3 -17.820994164724532 
		5 -17.820994164724532 8 -12.429059334558653 11 -12.429059334558653 16 -12.429059334558653 
		20 -19.688418588621207;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 0.98141038417816162 0.87077736854553223 
		0.90483725070953369 1 0.92121320962905884 0.72490978240966797;
	setAttr -s 7 ".kiy[0:6]"  0 0.19192090630531311 0.49167752265930176 
		0.42575764656066895 0 -0.38905817270278931 -0.68884384632110596;
createNode animCurveTA -n "animCurveTA2189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.6085540494966317 3 -1.6085540494966342 
		5 -1.6085540494966342 8 -1.6085540494966373 11 -1.6085540494966373 16 -1.6085540494966373 
		20 -1.6085540494966313;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.23076428718713959 3 0.23076428718714018 
		5 0.23076428718714018 8 0.23076428718714037 11 0.23076428718714037 16 0.23076428718714037 
		20 0.23076428718713959;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2191";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2192";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2193";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2194";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2195";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2196";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2197";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2198";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2199";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2200";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2201";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2202";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2203";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2204";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2205";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2206";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2207";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2208";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2209";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2210";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -5.6803276403432976 3 -5.6803276403432976 
		5 -5.6803276403432976 8 -5.6803276403432976 11 -5.6803276403432976 16 -5.6803276403432976 
		20 -5.6803276403432976;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -6.1570151121354497 3 -6.1570151121354488 
		5 -6.1570151121354488 8 -6.1570151121354488 11 -6.1570151121354488 16 -6.1570151121354488 
		20 -6.1570151121354488;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 5.3480278027016874 3 5.3480278027016865 
		5 5.3480278027016865 8 5.3480278027016865 11 5.3480278027016865 16 5.3480278027016865 
		20 5.3480278027016865;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 5 0 8 0 11 0 16 0 20 0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 5 0 8 0 11 0 16 0 20 0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 5 0 8 0 11 0 16 0 20 0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "Right_Arm_Hoop_translateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -0.28153965634655165 1 -0.28072479904174713 
		2 -0.2799090348152069 3 -0.27929261847149389 4 -0.27871824235905152 5 -0.27929261847149389 
		6 -0.28195229140582412 7 -0.28486703477107428 8 -0.28661126919083801 9 -0.28700471020742613 
		10 -0.28681091364589623 11 -0.28661126919083801 12 -0.28667472726552007 13 
		-0.28679868599712732 14 -0.28688903266555388 15 -0.28685916916567605 16 -0.28661126919083801 
		17 -0.28594851109408792 18 -0.28478939530339648 19 -0.28324095521016818 20 
		-0.2815396563465522;
createNode animCurveTL -n "Right_Arm_Hoop_translateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0.062866594353928579 1 0.044553282124100299 
		2 0.026122078720709114 3 0.012130348428792516 4 -0.026509790072707751 5 0.012130348428792516 
		6 0.22056818201968192 7 0.43862038311191842 8 0.55363189825960324 9 0.57679084188992746 
		10 0.56554439948037005 11 0.55363189825960324 12 0.55898191203758885 13 0.56928337696431575 
		14 0.57665873099007015 15 0.57423380670371704 16 0.55363189825960324 17 0.49518097401501043 
		18 0.38523607850738012 19 0.2315331096758747 20 0.062866594353928038;
createNode animCurveTL -n "Right_Arm_Hoop_translateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0.94758108715296308 1 0.95549624194162519 
		2 0.96308064192490994 3 0.96858781637943081 4 0.98465285332285601 5 0.96858781637943081 
		6 0.84898317587560768 7 0.63962139885034985 8 0.45860761749605744 9 0.40922713970203661 
		10 0.43404419213948664 11 0.45860761749605744 12 0.44766128830991814 13 0.42561633167193808 
		14 0.40895537946790561 15 0.41452076384682734 16 0.45860761749605744 17 0.56148968113839526 
		18 0.70409766692454101 19 0.84327580523185885 20 0.94758108715296352;
createNode animCurveTA -n "Right_Arm_Hoop_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -29.993438056114957 1 -29.053203545423976 
		2 -28.164905247535181 3 -27.525960247491621 4 -25.935710884584577 5 -27.525960247491621 
		6 -42.308584214688402 7 -96.541608197467269 8 -141.12948928329052 9 -147.79941737942016 
		10 -144.66368223402034 11 -141.12948928329052 12 -142.76410494649352 13 -145.78162761850899 
		14 -147.84308436759562 15 -147.17399200280983 16 -141.12948928329052 17 -120.08641889388136 
		18 -75.796806992660819 19 -43.50164319367731 20 -29.993438056114901;
createNode animCurveTA -n "Right_Arm_Hoop_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 62.825162069071652 1 61.963937854333892 
		2 61.096638342391742 3 60.438041553455555 4 58.541115901745904 5 60.438041553455555 
		6 70.86002549153514 7 78.512185298385631 8 74.020309602708224 9 71.930355348683804 
		10 73.002496616746413 11 74.020309602708224 12 73.573495713628446 13 72.644718240590635 
		14 71.920948818075686 15 72.164586893936431 16 74.020309602708224 17 77.473582346647788 
		18 77.721977189297846 19 71.283467720106657 20 62.825162069071609;
createNode animCurveTA -n "Right_Arm_Hoop_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 65.11865964432144 1 65.944149400329636 
		2 66.717254725221139 3 67.26890802265828 4 68.649497932874596 5 67.26890802265828 
		6 53.67329181348191 7 0.95571221583819754 8 -42.515366336796447 9 -48.89282713353699 
		10 -45.903707253156462 11 -42.515366336796447 12 -44.085695078558274 13 -46.974189992675562 
		14 -48.938461761562003 15 -48.301804919772344 16 -42.515366336796447 17 -22.086937041157345 
		18 21.295065952621673 19 52.572333624098221 20 65.118659644321454;
createNode animCurveTL -n "Left_Arm_Hoop_translateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0.32620582435379875 1 0.32698863737034373 
		2 0.32777152808502308 3 0.32836258424018411 4 0.32891335564387136 5 0.32836258424018411 
		6 0.32580244128089048 7 0.3229684115914529 8 0.32124389825368127 9 0.32084935420962923 
		10 0.32104404318689689 11 0.32124389825368127 12 0.32117972283643809 13 0.32105399436772641 
		14 0.3209620215068324 15 0.32099245590844278 16 0.32124389825368127 17 0.32190812145938025 
		18 0.32305237057287511 19 0.32456170770422604 20 0.32620582435379958;
createNode animCurveTL -n "Left_Arm_Hoop_translateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0.033439979479083518 1 0.015617819068284296 
		2 -0.0022991772675187505 3 -0.015887524703325613 4 -0.052670838585506238 
		5 -0.015887524703325613 6 0.18315002004678504 7 0.39390953343388668 8 0.50745305695509524 
		9 0.53078098476870295 10 0.51942174187954981 11 0.50745305695509524 12 0.51279906143237874 
		13 0.52312583076555552 14 0.53054941658276977 15 0.52810562321978327 16 0.50745305695509524 
		17 0.44960742625797118 18 0.34245410834701906 19 0.19448015123244772 20 0.033439979479082449;
createNode animCurveTL -n "Left_Arm_Hoop_translateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0.90790943701675209 1 0.91436034625635088 
		2 0.92049390042438728 3 0.92491459983529556 4 0.93911175751367115 5 0.92491459983529556 
		6 0.81714365238095255 7 0.62587487952758236 8 0.45920323068661234 9 0.41358817705908235 
		10 0.43651995862577753 11 0.45920323068661234 12 0.44907247903296799 13 0.42866258042408739 
		14 0.41323087182138973 15 0.41838625698262522 16 0.45920323068661234 17 0.55429283258151829 
		18 0.68565724775351555 19 0.8131619701351207 20 0.90790943701675231;
createNode animCurveTA -n "Left_Arm_Hoop_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -34.320242729481222 1 -34.193998946376325 
		2 -34.076594126300016 3 -33.99320801913936 4 -33.67802707643667 5 -33.99320801913936 
		6 -37.516215045610053 7 -156.80663589053219 8 157.57961527897768 9 156.02020964716004 
		10 156.72320919375372 11 157.57961527897768 12 157.17903407736486 13 156.4802792008995 
		14 156.02937550660755 15 156.17357991156837 16 157.57961527897768 17 165.33519842581043 
		18 -61.068113519766563 19 -37.638688059921456 20 -34.320242729481222;
createNode animCurveTA -n "Left_Arm_Hoop_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -66.497970732237533 1 -65.534201477789992 
		2 -64.570343127540553 3 -63.842479009515579 4 -61.786062976133515 5 -63.842479009515579 
		6 -75.785887924661765 7 -87.764777752379828 8 -77.406604283344777 9 -74.574192638379671 
		10 -75.991614312163549 11 -77.406604283344777 12 -76.774433846631609 13 -75.508487048929894 
		14 -74.55788088232994 15 -74.874845045648669 16 -77.406604283344777 17 -83.457003553388589 
		18 -86.519303351756349 19 -76.358764728842829 20 -66.497970732237519;
createNode animCurveTA -n "Left_Arm_Hoop_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -84.523994027970701 1 -84.647077501006081 
		2 -84.761327693795849 3 -84.842336058650361 4 -85.112423205341017 5 -84.842336058650361 
		6 -81.577554682742274 7 37.423671992326824 8 82.853811234993458 9 84.369159209131141 
		10 83.688041730180871 11 82.853811234993458 12 83.243651386531567 13 83.921109731835287 
		14 84.356201491632888 15 84.217252569183387 16 82.853811234993458 17 75.205371746867613 
		18 -58.217979803401654 19 -81.431082109988495 20 -84.523994027970687;
createNode animCurveTL -n "animCurveTL809";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.1344099872624747 3 1.1344099872624747 
		5 1.1344099872624747 8 1.1344099872624747 11 1.1344099872624747 16 1.1344099872624747 
		20 1.1344099872624747;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL810";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.1296110275135671 3 2.1296110275135671 
		5 2.1296110275135671 8 2.1296110275135671 11 2.1296110275135671 16 2.1296110275135671 
		20 2.1296110275135671;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL811";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.0696046407532309 3 2.0696046407532309 
		5 2.0696046407532309 8 2.0696046407532309 11 2.0696046407532309 16 2.0696046407532309 
		20 2.0696046407532309;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -44.889076788073439 3 -44.889076788073439 
		5 -44.889076788073439 8 -44.889076788073439 11 -44.889076788073439 16 -44.889076788073439 
		20 -44.889076788073439;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 71.289995585927571 3 71.289995585927571 
		5 71.289995585927571 8 71.289995585927571 11 71.289995585927571 16 71.289995585927571 
		20 71.289995585927571;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 50.619719123253631 3 50.619719123253631 
		5 50.619719123253631 8 50.619719123253631 11 50.619719123253631 16 50.619719123253631 
		20 50.619719123253631;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL812";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.5330905047330146 3 2.5330905047330146 
		5 2.5330905047330146 8 2.5330905047330146 11 2.5330905047330146 16 2.5330905047330146 
		20 2.5330905047330146;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL813";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.0768417541934041 3 2.0768417541934041 
		5 2.0768417541934041 8 2.0768417541934041 11 2.0768417541934041 16 2.0768417541934041 
		20 2.0768417541934041;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL814";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.0481292103665369 3 2.0481292103665369 
		5 2.0481292103665369 8 2.0481292103665369 11 2.0481292103665369 16 2.0481292103665369 
		20 2.0481292103665369;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -36.33267118790765 3 -36.33267118790765 
		5 -36.33267118790765 8 -36.33267118790765 11 -36.33267118790765 16 -36.33267118790765 
		20 -36.33267118790765;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -76.683613894212968 3 -76.683613894212968 
		5 -76.683613894212968 8 -76.683613894212968 11 -76.683613894212968 16 -76.683613894212968 
		20 -76.683613894212968;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -83.339653964504663 3 -83.339653964504663 
		5 -83.339653964504663 8 -83.339653964504663 11 -83.339653964504663 16 -83.339653964504663 
		20 -83.339653964504663;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL815";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.578730476483856 3 0.578730476483856 
		5 0.578730476483856 8 0.578730476483856 11 0.578730476483856 16 0.578730476483856 
		20 0.578730476483856;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL816";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.3751169572549602 3 -1.3751169572549602 
		5 -1.3751169572549602 8 -1.3751169572549602 11 -1.3751169572549602 16 -1.3751169572549602 
		20 -1.3751169572549602;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL817";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.21739896228115529 3 -0.21739896228115529 
		5 -0.21739896228115529 8 -0.21739896228115529 11 -0.21739896228115529 16 
		-0.21739896228115529 20 -0.21739896228115529;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL818";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.48508072212835623 3 -0.48508072212835623 
		5 -0.48508072212835623 8 -0.48508072212835623 11 -0.48508072212835623 16 
		-0.48508072212835623 20 -0.48508072212835623;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL819";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.3461376073222053 3 -1.3461376073222053 
		5 -1.3461376073222053 8 -1.3461376073222053 11 -1.3461376073222053 16 -1.3461376073222053 
		20 -1.3461376073222053;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL820";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.22135527095932556 3 -0.22135527095932556 
		5 -0.22135527095932556 8 -0.22135527095932556 11 -0.22135527095932556 16 
		-0.22135527095932556 20 -0.22135527095932556;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.253734489678925 3 12.253734489678925 
		5 12.253734489678925 8 12.253734489678925 11 12.253734489678925 16 12.253734489678925 
		20 12.253734489678925;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -65.746751280844975 3 -65.746751280844961 
		5 -65.746751280844961 8 -65.746751280844961 11 -65.746751280844961 16 -65.746751280844961 
		20 -65.746751280844961;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 5 0 8 0 11 0 16 0 20 0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.061808866237340665 3 -0.061808866237337522 
		5 -0.061808866237337522 8 -0.061808866237337522 11 -0.061808866237337522 
		16 -0.061808866237337522 20 -0.061808866237337522;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -59.058178941076754 3 -59.058178941076754 
		5 -59.058178941076754 8 -59.058178941076754 11 -59.058178941076754 16 -59.058178941076754 
		20 -59.058178941076754;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.57914742975785 3 16.579147429757843 
		5 16.579147429757843 8 16.579147429757843 11 16.579147429757843 16 16.579147429757843 
		20 16.579147429757843;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.5572674112203639 3 8.5572674112203622 
		5 8.5572674112203622 8 8.5572674112203622 11 8.5572674112203622 16 8.5572674112203622 
		20 8.5572674112203622;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.711328223519061 3 15.711328223519057 
		5 15.711328223519057 8 15.711328223519057 11 15.711328223519057 16 15.711328223519057 
		20 15.711328223519057;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 5 0 8 0 11 0 16 0 20 0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 5 0 8 0 11 0 16 0 20 0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 5 0 8 0 11 0 16 0 20 0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 5 0 8 0 11 0 16 0 20 0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 5 0 8 0 11 0 16 0 20 0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 5 0 8 0 11 0 16 0 20 0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -94.468308159208192 3 -94.468308159208192 
		5 -94.468308159208192 8 -94.468308159208192 11 -94.468308159208192 16 -94.468308159208192 
		20 -94.468308159208192;
createNode animCurveTA -n "animCurveTA2244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 72.836273346919612 3 72.836273346919612 
		5 72.836273346919612 8 72.836273346919612 11 72.836273346919612 16 72.836273346919612 
		20 72.836273346919612;
createNode animCurveTA -n "animCurveTA2245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 6.0130362214677122 3 6.0130362214677122 
		5 6.0130362214677122 8 6.0130362214677122 11 6.0130362214677122 16 6.0130362214677122 
		20 6.0130362214677122;
createNode animCurveTA -n "animCurveTA2246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 5 0 8 0 11 0 16 0 20 0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 5 0 8 0 11 0 16 0 20 0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 56.683882055276058 3 56.683882055276051 
		5 56.683882055276051 8 56.683882055276051 11 56.683882055276051 16 56.683882055276051 
		20 56.683882055276051;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2249";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2250";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2251";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2252";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2253";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2254";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 20 13.994403295754109;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2255";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2256";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2257";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 20 13.994403295754109;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 5 0 8 0 11 0 16 0 20 0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 5 0 8 0 11 0 16 0 20 0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 44.839776244285055 3 44.839776244285055 
		5 44.839776244285055 8 44.839776244285055 11 44.839776244285055 16 44.839776244285055 
		20 44.839776244285055;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 5 0 8 0 11 0 16 0 20 0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 5 0 8 0 11 0 16 0 20 0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 5 0 8 0 11 0 16 0 20 0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.55766507474896454 3 -0.52561026786454379 
		5 -0.52561026786454379 8 -1.0694712434114781 11 -1.0694712434114781 16 -1.0694712434114781 
		20 -0.55766507474896432;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 0.99999433755874634 0.9983820915222168 
		0.99887561798095703 1 0.9995570182800293 0.99776333570480347;
	setAttr -s 7 ".kiy[0:6]"  0 0.0033567526843398809 -0.056860845535993576 
		-0.04740745946764946 0 0.029762484133243561 0.066845417022705078;
createNode animCurveTA -n "animCurveTA2265";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.0198239624003347 3 -2.0283982865983545 
		5 -2.0283982865983545 8 -1.8019874431898606 11 -1.8019874431898606 16 -1.8019874431898606 
		20 -2.0198239624003347;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 0.99999958276748657 0.99971902370452881 
		0.99980485439300537 1 0.99991971254348755 0.99959367513656616;
	setAttr -s 7 ".kiy[0:6]"  0 -0.00089790078345686197 0.02370302751660347 
		0.019754217937588692 0 -0.012672197073698044 -0.028503144159913063;
createNode animCurveTA -n "animCurveTA2266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 7.5513277031901893 3 6.643794100552797 
		5 6.643794100552797 8 22.809211755635978 11 22.809211755635978 16 22.809211755635978 
		20 7.5513277031901911;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 0.9955143928527832 0.50861102342605591 
		0.57830804586410522 1 0.74786263704299927 0.44770562648773193;
	setAttr -s 7 ".kiy[0:6]"  0 -0.094610400497913361 0.86099642515182495 
		0.81581848859786987 0 -0.66385352611541748 -0.8941810131072998;
createNode animCurveTA -n "animCurveTA2267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.95273800592490188 3 0.85260933265500638 
		5 0.85260933265500638 8 0.067645607132228711 11 1.0210807994179214 16 1.0210807994179214 
		20 0.95273800592490165;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 0.99994504451751709 0.99663847684860229 
		0.99989193677902222 0.99805867671966553 0.99999207258224487 0.99996000528335571;
	setAttr -s 7 ".kiy[0:6]"  0 -0.010484873317182064 -0.081924892961978912 
		0.014700320549309254 0.062281046062707901 -0.0039759916253387928 -0.0089456913992762566;
createNode animCurveTA -n "animCurveTA2268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.41955881507249093 3 0.59733302775575614 
		5 0.59733302775575614 8 1.0388203193199006 11 0.20278421305496727 16 0.20278421305496727 
		20 0.41955881507249082;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 0.99982672929763794 0.99893301725387573 
		0.99940776824951172 0.99850630760192871 0.99992048740386963 0.99959766864776611;
	setAttr -s 7 ".kiy[0:6]"  0 0.018613247200846672 0.046183113008737564 
		-0.034410487860441208 -0.054636701941490173 0.01261043269187212 0.028364306315779686;
createNode animCurveTA -n "animCurveTA2269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.6634293801101623 3 -9.5837567925848415 
		5 -9.5837567925848415 8 -60.845459299877199 11 14.197155566751498 16 14.197155566751498 
		20 1.6634293801101616;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 0.64722293615341187 0.18313470482826233 
		0.43409505486488342 0.199509397149086 0.80800139904022217 0.52045458555221558;
	setAttr -s 7 ".kiy[0:6]"  0 -0.76230078935623169 -0.98308783769607544 
		0.90086710453033447 0.97989588975906372 -0.589180588722229 -0.8538893461227417;
createNode animCurveTA -n "animCurveTA2270";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.0598705588951514 3 1.0598705588951511 
		5 1.0598705588951511 8 1.0598705588951511 11 1.0598705588951511 16 1.0598705588951511 
		20 1.0598705588951511;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2271";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.26280824457411484 3 0.26280824457411489 
		5 0.26280824457411489 8 0.26280824457411489 11 0.26280824457411489 16 0.26280824457411489 
		20 0.26280824457411489;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2272";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 6.5086084195154994 3 6.5086084195154994 
		5 6.5086084195154994 8 6.5086084195154994 11 6.5086084195154994 16 6.5086084195154994 
		20 6.5086084195154994;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2273";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.47197901174667056 3 0.36898447942032819 
		5 0.36898447942032819 8 0.83402554615317892 11 0.83402554615317892 16 0.83402554615317892 
		20 0.47197901174667056;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 0.99994182586669922 0.99881631135940552 
		0.99917757511138916 1 0.99977827072143555 0.99887889623641968;
	setAttr -s 7 ".kiy[0:6]"  0 -0.010784934274852276 0.048641342669725418 
		0.040549110621213913 0 -0.021058341488242149 -0.047338642179965973;
createNode animCurveTA -n "animCurveTA2274";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.6163460272109138 3 1.6429142826083316 
		5 1.6429142826083316 8 1.4628164969292841 11 1.4628164969292841 16 1.4628164969292841 
		20 1.6163460272109134;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 0.9999961256980896 0.99982219934463501 
		0.99987649917602539 1 0.99996012449264526 0.99979811906814575;
	setAttr -s 7 ".kiy[0:6]"  0 0.0027822104748338461 -0.018856443464756012 
		-0.015714555978775024 0 0.0089316293597221375 0.020092908293008804;
createNode animCurveTA -n "animCurveTA2275";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.9660530560192304 3 -1.6543912738492852 
		5 -1.6543912738492852 8 15.379727658936838 11 15.379727658936838 16 15.379727658936838 
		20 1.9660530560192302;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 0.93505281209945679 0.48900052905082703 
		0.55817133188247681 1 0.78835856914520264 0.49489223957061768;
	setAttr -s 7 ".kiy[0:6]"  0 -0.35450848937034607 0.8722834587097168 
		0.82972574234008789 0 -0.61521607637405396 -0.8689543604850769;
createNode animCurveTA -n "animCurveTA2276";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 5 0 8 0 11 0 16 0 20 0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2277";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 5 0 8 0 11 0 16 0 20 0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 77.428435288625664 3 77.428435288625664 
		5 77.428435288625664 8 77.428435288625664 11 77.428435288625664 16 77.428435288625664 
		20 77.428435288625664;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2279";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -133.3327622181794 3 -133.3327622181794 
		5 -133.3327622181794 8 -133.3327622181794 11 -133.3327622181794 16 -133.3327622181794 
		20 -133.3327622181794;
createNode animCurveTA -n "animCurveTA2280";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 46.995440027015853 3 46.995440027015853 
		5 46.995440027015853 8 46.995440027015853 11 46.995440027015853 16 46.995440027015853 
		20 46.995440027015853;
createNode animCurveTA -n "animCurveTA2281";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -49.838450918042973 3 -49.838450918042973 
		5 -49.838450918042973 8 -49.838450918042973 11 -49.838450918042973 16 -49.838450918042973 
		20 -49.838450918042973;
createNode animCurveTA -n "animCurveTA2282";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 5 0 8 0 11 0 16 0 20 0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2283";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 5 0 8 0 11 0 16 0 20 0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 37.656527956664149 3 37.656527956664149 
		5 37.656527956664149 8 37.656527956664149 11 37.656527956664149 16 37.656527956664149 
		20 37.656527956664149;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
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
connectAttr "cdr_decelerateSource.st" "clipLibrary1.st[0]";
connectAttr "cdr_decelerateSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL780.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL781.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL782.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL783.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL784.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA2166.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "cdr_Hoop_Root_IK_FK_RFoot1.a" "clipLibrary1.cel[0].cev[6].cevr"
		;
connectAttr "cdr_Hoop_Root_IK_FK_LFoot1.a" "clipLibrary1.cel[0].cev[7].cevr"
		;
connectAttr "cdr_Hoop_Root_IK_Rev_IK_Sim_RFoot1.a" "clipLibrary1.cel[0].cev[8].cevr"
		;
connectAttr "cdr_Hoop_Root_IK_Rev_IK_Sim_LFoot1.a" "clipLibrary1.cel[0].cev[9].cevr"
		;
connectAttr "cdr_Hoop_Root_IK_FK_RArm1.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "cdr_Hoop_Root_IK_FK_LArm1.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "cdr_Hoop_Root_IK_Body_IK_World_RArm1.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "cdr_Hoop_Root_IK_Body_IK_World_LArm1.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "cdr_Hoop_Root_rotateX.a" "clipLibrary1.cel[0].cev[14].cevr"
		;
connectAttr "cdr_Hoop_Root_rotateY.a" "clipLibrary1.cel[0].cev[15].cevr"
		;
connectAttr "cdr_Hoop_Root_rotateZ.a" "clipLibrary1.cel[0].cev[16].cevr"
		;
connectAttr "cdr_Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "cdr_Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "cdr_Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
connectAttr "animCurveTL788.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL789.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL790.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA2170.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA2171.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA2172.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL791.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL792.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL793.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA2173.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA2174.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA2175.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA2176.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA2177.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA2178.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA2179.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA2180.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA2181.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA2182.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA2183.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA2184.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA2185.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA2186.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA2187.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL794.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL795.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL796.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL797.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL798.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL799.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL800.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL801.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL802.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA2188.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA2189.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA2190.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA2191.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA2192.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA2193.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA2194.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA2195.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA2196.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA2197.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA2198.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA2199.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA2200.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA2201.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA2202.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA2203.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA2204.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA2205.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA2206.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA2207.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA2208.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA2209.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA2210.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA2211.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA2212.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA2213.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA2214.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA2215.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA2216.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "Right_Arm_Hoop_translateX1.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "Right_Arm_Hoop_translateY1.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "Right_Arm_Hoop_translateZ1.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateX1.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateY1.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateZ1.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "Left_Arm_Hoop_translateX1.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "Left_Arm_Hoop_translateY1.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "Left_Arm_Hoop_translateZ1.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateX1.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateY1.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateZ1.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "animCurveTL809.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL810.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL811.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA2223.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA2224.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA2225.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL812.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL813.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL814.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA2226.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA2227.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA2228.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL815.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL816.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL817.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL818.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL819.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL820.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA2229.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA2230.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA2231.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA2232.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA2233.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA2234.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA2235.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA2236.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA2237.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA2238.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA2239.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA2240.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA2241.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA2242.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA2243.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA2244.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA2245.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA2246.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA2247.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA2248.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA2249.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA2250.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA2251.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA2252.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA2253.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA2254.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA2255.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA2256.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA2257.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA2258.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA2259.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA2260.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA2261.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA2262.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA2263.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA2264.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA2265.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA2266.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA2267.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA2268.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA2269.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA2270.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA2271.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA2272.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA2273.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA2274.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA2275.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA2276.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA2277.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA2278.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA2279.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA2280.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA2281.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA2282.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA2283.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA2284.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of cdr_decelerate.ma
