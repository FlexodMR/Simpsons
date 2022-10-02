//Maya ASCII 4.0 scene
//Name: ndr_look_back.ma
//Last modified: Tue, Jun 17, 2003 03:49:45 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "ndr_look_backSource";
	setAttr ".ihi" 0;
	setAttr ".du" 38;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL288";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL289";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL290";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.995 38 0.995;
createNode animCurveTL -n "animCurveTL291";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.46000000000000002 38 0.46000000000000002;
createNode animCurveTL -n "animCurveTL292";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.72 38 0.72;
createNode animCurveTA -n "animCurveTA792";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
createNode animCurveTU -n "animCurveTU57";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU58";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU59";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU60";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "ndr_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "ndr_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "ndr_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0316580936521982;
createNode animCurveTU -n "ndr_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0316580936521982;
createNode animCurveTA -n "animCurveTA793";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA794";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA795";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL293";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL294";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL295";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.1582036071592778 4 1.1582036071592778 
		8 1.1582036071592778 11 1.1582036071592778 14 1.1582036071592778 17 1.1582036071592778 
		30 1.1582036071592778 34 1.1582036071592778 38 1.1582036071592778;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.8024274637299138 4 0.8024274637299138 
		8 0.8024274637299138 11 0.8024274637299138 14 0.8024274637299138 17 0.8024274637299138 
		30 0.8024274637299138 34 0.8024274637299138 38 0.8024274637299138;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.6023458233856847 4 1.6023458233856847 
		8 1.6023458233856847 11 1.6023458233856847 14 1.6023458233856847 17 1.6023458233856847 
		30 1.6023458233856847 34 1.6023458233856847 38 1.6023458233856847;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA796";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -2.7149195703006082 4 -2.7149195703006082 
		8 -2.7149195703006082 11 -2.7149195703006082 14 -2.7149195703006082 17 -2.7149195703006082 
		30 -2.7149195703006082 34 -2.7149195703006082 38 -2.7149195703006082;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA797";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -9.448854147766081 4 -9.448854147766081 
		8 -9.448854147766081 11 -9.448854147766081 14 -9.448854147766081 17 -9.448854147766081 
		30 -9.448854147766081 34 -9.448854147766081 38 -9.448854147766081;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA798";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.9042146334359309 4 2.9042146334359309 
		8 2.9042146334359309 11 2.9042146334359309 14 2.9042146334359309 17 2.9042146334359309 
		30 2.9042146334359309 34 2.9042146334359309 38 2.9042146334359309;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.635760016530293 4 1.635760016530293 
		8 1.635760016530293 11 1.635760016530293 14 1.635760016530293 17 1.635760016530293 
		30 1.635760016530293 34 1.635760016530293 38 1.635760016530293;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.79733745153385938 4 0.79733745153385938 
		8 0.79733745153385938 11 0.79733745153385938 14 0.79733745153385938 17 0.79733745153385938 
		30 0.79733745153385938 34 0.79733745153385938 38 0.79733745153385938;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.6031411449878863 4 1.6031411449878863 
		8 1.6031411449878863 11 1.6031411449878863 14 1.6031411449878863 17 1.6031411449878863 
		30 1.6031411449878863 34 1.6031411449878863 38 1.6031411449878863;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA799";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 11 0 14 0 17 0 30 0 
		34 0 38 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA800";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 14.260733409455982 4 14.260733409455982 
		8 14.260733409455982 11 14.260733409455982 14 14.260733409455982 17 14.260733409455982 
		30 14.260733409455982 34 14.260733409455982 38 14.260733409455982;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA801";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 11 0 14 0 17 0 30 0 
		34 0 38 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA802";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA803";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA804";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA805";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA806";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA807";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.011621961304049206 4 -0.011621961304049206 
		8 -0.011621961304049206 11 -0.011621961304049206 14 -0.011621961304049206 
		17 -0.011621961304049206 30 -0.011621961304049206 34 -0.011621961304049206 
		38 -0.011621961304049206;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL303";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.53592894662340362 4 0.53592894662340362 
		8 0.53592894662340362 11 0.53592894662340362 14 0.53592894662340362 17 0.53592894662340362 
		30 0.53592894662340362 34 0.53592894662340362 38 0.53592894662340362;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL304";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.1714982742260704 4 1.1714982742260704 
		8 1.1714982742260704 11 1.1714982742260704 14 1.1714982742260704 17 1.1714982742260704 
		30 1.1714982742260704 34 1.1714982742260704 38 1.1714982742260704;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL305";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.028577078352958335 4 -0.097466557943624466 
		8 -0.097466557943624466 11 -0.097466557943624466 14 -0.097466557943624466 
		17 -0.097466557943624466 30 -0.097466557943624466 34 -0.097466557943624466 
		38 -0.028577078352958335;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.038680374622344971 1 1 1 1 
		1 0.038680374622344971 0.019351046532392502;
	setAttr -s 9 ".kiy[0:8]"  0 -0.99925166368484497 0 0 0 0 
		0 0.99925166368484497 0.99981272220611572;
createNode animCurveTL -n "animCurveTL306";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.6265256146554018 4 0.89926276112817349 
		8 0.89926276112817349 11 0.89926276112817349 14 0.89926276112817349 17 0.89926276112817349 
		30 0.89926276112817349 34 0.89926276112817349 38 0.6265256146554018;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.0097769564017653465 1 1 1 1 
		1 0.0097769564017653465 0.004888653289526701;
	setAttr -s 9 ".kiy[0:8]"  0 0.99995219707489014 0 0 0 0 0 
		-0.99995219707489014 -0.99998807907104492;
createNode animCurveTL -n "animCurveTL307";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.1827937027824305 4 0.80168990793572048 
		8 0.80168990793572048 11 0.80168990793572048 14 0.80168990793572048 17 0.80168990793572048 
		30 0.80168990793572048 34 0.80168990793572048 38 1.1827937027824305;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.0069970474578440189 1 1 1 1 
		1 0.0069970474578440189 0.0034985879901796579;
	setAttr -s 9 ".kiy[0:8]"  0 -0.99997550249099731 0 0 0 0 
		0 0.99997550249099731 0.99999386072158813;
createNode animCurveTL -n "animCurveTL308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.406 4 1.406 8 1.406 11 1.406 
		14 1.406 17 1.406 30 1.406 34 1.406 38 1.406;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL309";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.96452787963755071 4 0.96452787963755071 
		8 0.96452787963755071 11 0.96452787963755071 14 0.96452787963755071 17 0.96452787963755071 
		30 0.96452787963755071 34 0.96452787963755071 38 0.96452787963755071;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.0057239815788857 4 1.006 8 
		1.006 11 1.006 14 1.006 17 1.006 30 1.006 34 1.006 38 1.0057239815788857;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.9946858286857605 1 1 1 1 1 
		0.9946858286857605 0.97923761606216431;
	setAttr -s 9 ".kiy[0:8]"  0 0.1029568538069725 0 0 0 0 0 
		-0.1029568538069725 -0.20271572470664978;
createNode animCurveTA -n "animCurveTA808";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -19.688418588621207 4 -19.688418588621186 
		8 -19.688418588621186 11 -19.688418588621186 14 -19.688418588621186 17 -19.688418588621186 
		30 -19.688418588621186 34 -19.688418588621186 38 -19.688418588621207;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA809";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1.6085540494966317 4 -1.6085540494966297 
		8 -1.6085540494966297 11 -1.6085540494966297 14 -1.6085540494966297 17 -1.6085540494966297 
		30 -1.6085540494966297 34 -1.6085540494966297 38 -1.6085540494966317;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA810";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.23076428718713959 4 -4.1348769634669011 
		8 -4.1348769634669011 11 -4.1348769634669011 14 -4.1348769634669011 17 -4.1348769634669011 
		30 -4.1348769634669011 34 -4.1348769634669011 38 0.23076428718713959;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.96151983737945557 1 1 1 1 1 
		0.96151983737945557 0.86823093891143799;
	setAttr -s 9 ".kiy[0:8]"  0 -0.27473556995391846 0 0 0 0 
		0 0.27473556995391846 0.49616026878356934;
createNode animCurveTA -n "animCurveTA811";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA812";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA813";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA814";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA815";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA816";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA817";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA818";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA819";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA820";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA821";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA822";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA823";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA824";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA825";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA826";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA827";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA828";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA829";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA830";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA831";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -5.6803276403432976 4 -5.6803276403432976 
		8 -5.6803276403432976 11 -5.6803276403432976 14 -5.6803276403432976 17 -5.6803276403432976 
		30 -5.6803276403432976 34 -5.6803276403432976 38 -5.6803276403432976;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA832";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -6.1570151121354497 4 -6.1570151121354497 
		8 -6.1570151121354497 11 -6.1570151121354497 14 -6.1570151121354497 17 -6.1570151121354497 
		30 -6.1570151121354497 34 -6.1570151121354497 38 -6.1570151121354497;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA833";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 5.3480278027016874 4 5.3480278027016874 
		8 5.3480278027016874 11 5.3480278027016874 14 5.3480278027016874 17 5.3480278027016874 
		30 5.3480278027016874 34 5.3480278027016874 38 5.3480278027016874;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA834";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 11 0 14 0 17 0 30 0 
		34 0 38 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA835";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 11 0 14 0 17 0 30 0 
		34 0 38 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA836";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 11 0 14 0 17 0 30 0 
		34 0 38 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "ndr_Right_Arm_Hoop_translateX2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 -0.053946154130855462;
createNode animCurveTL -n "ndr_Right_Arm_Hoop_translateY2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 -0.67667650405506108;
createNode animCurveTL -n "ndr_Right_Arm_Hoop_translateZ2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 0.55757203721029291;
createNode animCurveTA -n "ndr_Right_Arm_Hoop_rotateX2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 9.4037209115126323;
createNode animCurveTA -n "ndr_Right_Arm_Hoop_rotateY2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 77.316960645134102;
createNode animCurveTA -n "ndr_Right_Arm_Hoop_rotateZ2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 30.60757801954858;
createNode animCurveTL -n "ndr_Left_Arm_Hoop_translateX2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 0.38197593353053522;
createNode animCurveTL -n "ndr_Left_Arm_Hoop_translateY2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 -0.53328827544008506;
createNode animCurveTL -n "ndr_Left_Arm_Hoop_translateZ2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 0.4628073796737307;
createNode animCurveTA -n "ndr_Left_Arm_Hoop_rotateX2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 4.6931680813932024;
createNode animCurveTA -n "ndr_Left_Arm_Hoop_rotateY2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 -82.169846625535428;
createNode animCurveTA -n "ndr_Left_Arm_Hoop_rotateZ2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 -48.607521818219418;
createNode animCurveTL -n "animCurveTL317";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.5799571818574061 4 1.6254521627659528 
		8 1.6254521627659528 11 1.312900302033529 14 1.4555806006068039 17 1.7635479609017497 
		30 1.7635479609017497 34 1.1837611105958015 38 1.5799571818574061;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 3 3 
		9 9;
	setAttr -s 9 ".kot[5:8]"  3 3 9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.058514095842838287 0.0074652191251516342 
		0.011772784404456615 0.0044380133040249348 1 1 0.014523525722324848 0.0033653178252279758;
	setAttr -s 9 ".kiy[0:8]"  0 0.99828660488128662 -0.99997216463088989 
		-0.99993067979812622 0.99999016523361206 0 0 -0.99989449977874756 0.99999433755874634;
createNode animCurveTL -n "animCurveTL318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.1296110275135671 4 1.7744259866497851 
		8 1.7744259866497851 11 1.8321822312584459 14 2.5365220527486225 17 2.3050337740008255 
		30 2.3050337740008255 34 2.2661578474151045 38 2.1296110275135671;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 3 3 
		9 9;
	setAttr -s 9 ".kot[5:8]"  3 3 9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.0075076115317642689 0.040366742759943008 
		0.0026243319734930992 0.0042296191677451134 1 1 0.015199616551399231 0.0097641944885253906;
	setAttr -s 9 ".kiy[0:8]"  0 -0.99997180700302124 0.99918490648269653 
		0.99999654293060303 0.99999105930328369 0 0 -0.99988448619842529 -0.99995231628417969;
createNode animCurveTL -n "animCurveTL319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.0696046407532309 4 1.8689678269144532 
		8 1.8689678269144532 11 1.6586224899032374 14 1.6457936664801878 17 0.51631282041594717 
		30 0.51631282041594717 34 1.2489758370973103 38 2.0696046407532309;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 3 3 
		9 9;
	setAttr -s 9 ".kot[5:8]"  3 3 9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.013289839960634708 0.011092186905443668 
		0.0089612510055303574 0.0017508360324427485 1 1 0.0017167815240100026 0.0016247680177912116;
	setAttr -s 9 ".kiy[0:8]"  0 -0.99991166591644287 -0.9999384880065918 
		-0.99995982646942139 -0.99999845027923584 0 0 0.99999850988388062 0.99999868869781494;
createNode animCurveTA -n "animCurveTA843";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -44.889076788073439 4 -39.296899878223357 
		8 -39.296899878223357 11 -0.042705812377061121 14 31.677390582708622 17 -27.561850863420414 
		30 -27.561850863420414 34 -48.968025876394535 38 -44.889076788073439;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 3 3 
		9 9;
	setAttr -s 9 ".kot[5:8]"  3 3 9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.93907636404037476 0.32239097356796265 
		0.15939091145992279 0.38441085815429688 1 1 0.66138178110122681 0.8821331262588501;
	setAttr -s 9 ".kiy[0:8]"  0 0.34370863437652588 0.94660657644271851 
		0.98721551895141602 -0.92316210269927979 0 0 -0.75004947185516357 0.47100019454956055;
createNode animCurveTA -n "animCurveTA844";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 71.289995585927571 4 77.756094215389751 
		8 77.756094215389751 11 67.449634149707236 14 47.49935319194288 17 -25.48351471860942 
		30 -25.48351471860942 34 64.443428250487983 38 71.289995585927571;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 3 3 
		9 9;
	setAttr -s 9 ".kot[5:8]"  3 3 9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.9209248423576355 0.7919764518737793 
		0.35418027639389038 0.12237854301929474 1 1 0.15595109760761261 0.74469459056854248;
	setAttr -s 9 ".kiy[0:8]"  0 0.38974016904830933 -0.61055159568786621 
		-0.93517714738845825 -0.99248349666595459 0 0 0.98776477575302124 0.66740542650222778;
createNode animCurveTA -n "animCurveTA845";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 50.619719123253631 4 -22.376629620485513 
		8 -22.376629620485513 11 28.902153222776551 14 36.492087696364067 17 11.568578966649076 
		30 11.568578966649076 34 -20.366392624429519 38 50.619719123253631;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 3 3 
		9 9;
	setAttr -s 9 ".kot[5:8]"  3 3 9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.20487046241760254 0.25227952003479004 
		0.19106985628604889 0.55147886276245117 1 1 0.36435782909393311 0.10700090229511261;
	setAttr -s 9 ".kiy[0:8]"  0 -0.97878909111022949 0.96765440702438354 
		0.98157644271850586 -0.83418887853622437 0 0 0.93125903606414795 0.99425894021987915;
createNode animCurveTL -n "animCurveTL320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.5330905047330146 4 2.5330905047330146 
		8 2.5330905047330146 11 2.5330905047330146 14 2.5330905047330146 17 2.5330905047330146 
		30 2.5330905047330146 34 2.5330905047330146 38 2.5330905047330146;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.0768417541934041 4 2.0768417541934041 
		8 2.0768417541934041 11 2.0768417541934041 14 2.0768417541934041 17 2.0768417541934041 
		30 2.0768417541934041 34 2.0768417541934041 38 2.0768417541934041;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.0481292103665369 4 2.0481292103665369 
		8 2.0481292103665369 11 2.0481292103665369 14 2.0481292103665369 17 2.0481292103665369 
		30 2.0481292103665369 34 2.0481292103665369 38 2.0481292103665369;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA846";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -36.33267118790765 4 -36.33267118790765 
		8 -36.33267118790765 11 -36.33267118790765 14 -36.33267118790765 17 -36.33267118790765 
		30 -36.33267118790765 34 -36.33267118790765 38 -36.33267118790765;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA847";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -76.683613894212968 4 -76.683613894212968 
		8 -76.683613894212968 11 -76.683613894212968 14 -76.683613894212968 17 -76.683613894212968 
		30 -76.683613894212968 34 -76.683613894212968 38 -76.683613894212968;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA848";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -83.339653964504663 4 -83.339653964504663 
		8 -83.339653964504663 11 -83.339653964504663 14 -83.339653964504663 17 -83.339653964504663 
		30 -83.339653964504663 34 -83.339653964504663 38 -83.339653964504663;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.578730476483856 4 0.35039089098226439 
		8 0.35039089098226439 11 0.35039089098226439 14 0.35039089098226439 17 -0.44788104066202394 
		30 -0.44788104066202394 34 -0.087123524927508383 38 0.578730476483856;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.011677715927362442 1 1 0.0025054041761904955 
		0.0066809491254389286 0.01570575125515461 0.0025975333992391825 0.0020024366676807404;
	setAttr -s 9 ".kiy[0:8]"  0 -0.99993181228637695 0 0 -0.9999968409538269 
		-0.999977707862854 0.99987667798995972 0.9999966025352478 0.99999797344207764;
createNode animCurveTL -n "animCurveTL324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1.3751169572549602 4 -0.40854033940183732 
		8 -0.40854033940183732 11 -0.40854033940183732 14 -0.40854033940183732 17 
		-0.075984499982089809 30 -0.075984499982089809 34 -0.22627415908666934 38 
		-1.3751169572549602;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.0027588671073317528 1 1 0.0060139186680316925 
		0.016035344451665878 0.037678193300962448 0.002052647527307272 0.0011605873005464673;
	setAttr -s 9 ".kiy[0:8]"  0 0.99999618530273438 0 0 0.99998193979263306 
		0.99987143278121948 -0.99928992986679077 -0.99999791383743286 -0.99999934434890747;
createNode animCurveTL -n "animCurveTL325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.21739896228115529 4 -0.82408995422063858 
		8 -0.82408995422063858 11 -0.82408995422063858 14 -0.82408995422063858 17 
		-2.0052669270844747 30 -2.0052669270844747 34 -1.4714657826455271 38 -0.21739896228115529;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.0043953857384622097 1 1 0.0016932239523157477 
		0.0045152241364121437 0.010615089908242226 0.0014915327774360776 0.0010632069315761328;
	setAttr -s 9 ".kiy[0:8]"  0 -0.99999034404754639 0 0 -0.99999856948852539 
		-0.99998980760574341 0.99994367361068726 0.99999886751174927 0.99999946355819702;
createNode animCurveTL -n "animCurveTL326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.48508072212835623 4 -0.77290696453185026 
		8 -0.77290696453185026 11 -0.94348453985714442 14 -0.57437272816844454 17 
		-1.3510196847228395 30 -1.3510196847228395 34 -1.3766904115595286 38 -0.48508072212835623;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.0092644514515995979 0.013677735812962055 
		0.010073318146169186 0.0049074930138885975 0.006866964977234602 0.21555496752262115 
		0.0030794942285865545 0.0014954208163544536;
	setAttr -s 9 ".kiy[0:8]"  0 -0.99995708465576172 -0.99990648031234741 
		0.99994927644729614 -0.99998795986175537 -0.99997639656066895 -0.97649168968200684 
		0.99999523162841797 0.99999886751174927;
createNode animCurveTL -n "animCurveTL327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1.3461376073222053 4 -0.71234308293286885 
		8 -0.71234308293286885 11 -0.12250683092112503 14 0.22510159015731129 17 
		-0.15125015899266933 30 -0.15125015899266933 34 0.016593292728574276 38 -1.3461376073222053;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.0042074252851307392 0.0039558690041303635 
		0.0021334544289857149 0.069413535296916962 0.014169716276228428 0.033742394298315048 
		0.0022317247930914164 0.00097842700779438019;
	setAttr -s 9 ".kiy[0:8]"  0 0.99999117851257324 0.99999219179153442 
		0.99999773502349854 -0.99758797883987427 -0.99989962577819824 0.99943053722381592 
		-0.99999749660491943 -0.9999995231628418;
createNode animCurveTL -n "animCurveTL328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.22135527095932556 4 -0.35872267288917942 
		8 -0.35872267288917942 11 -0.23814335482044388 14 -0.94018111187892128 17 
		-0.45847862935248079 30 -0.45847862935248079 34 -0.32547685871326359 38 -0.22135527095932556;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.019409002736210823 0.019347403198480606 
		0.0034396064002066851 0.0090767014771699905 0.011071162298321724 0.042567331343889236 
		0.011245193891227245 0.012804490514099598;
	setAttr -s 9 ".kiy[0:8]"  0 -0.99981164932250977 0.99981284141540527 
		-0.99999409914016724 -0.99995881319046021 0.9999387264251709 0.99909359216690063 
		0.99993675947189331 0.99991804361343384;
createNode animCurveTA -n "animCurveTA849";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 12.253734489678925 4 12.253734489678925 
		8 12.253734489678925 11 12.253734489678925 14 12.253734489678925 17 12.253734489678925 
		30 12.253734489678925 34 12.253734489678925 38 12.253734489678925;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA850";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -65.746751280844975 4 -65.746751280844961 
		8 -65.746751280844961 11 -65.746751280844961 14 -65.746751280844961 17 -65.746751280844961 
		30 -65.746751280844961 34 -65.746751280844961 38 -65.746751280844975;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA851";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 11 0 14 0 17 0 30 0 
		34 0 38 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA852";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.061808866237340665 4 -0.061808866237337522 
		8 -0.061808866237337522 11 -0.061808866237337522 14 -0.061808866237337522 
		17 -0.061808866237337522 30 -0.061808866237337522 34 -0.061808866237337522 
		38 -0.061808866237340665;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA853";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -59.058178941076754 4 -59.058178941076754 
		8 -59.058178941076754 11 -59.058178941076754 14 -59.058178941076754 17 -59.058178941076754 
		30 -59.058178941076754 34 -59.058178941076754 38 -59.058178941076754;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA854";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 16.57914742975785 4 16.579147429757843 
		8 16.579147429757843 11 16.579147429757843 14 16.579147429757843 17 16.579147429757843 
		30 16.579147429757843 34 16.579147429757843 38 16.57914742975785;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA855";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.5572674112203639 4 8.5572674112203622 
		8 8.5572674112203622 11 8.5572674112203622 14 8.5572674112203622 17 8.5572674112203622 
		30 8.5572674112203622 34 8.5572674112203622 38 8.5572674112203639;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA856";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 15.711328223519061 4 15.711328223519057 
		8 15.711328223519057 11 15.711328223519057 14 15.711328223519057 17 15.711328223519057 
		30 15.711328223519057 34 15.711328223519057 38 15.711328223519061;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA857";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 11 0 14 0 17 0 30 0 
		34 0 38 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA858";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 11 0 14 0 17 0 30 0 
		34 0 38 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA859";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 11 0 14 0 17 0 30 0 
		34 0 38 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA860";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 11 0 14 0 17 0 30 0 
		34 0 38 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA861";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 11 0 14 0 17 0 30 0 
		34 0 38 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA862";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 11 0 14 0 17 0 30 0 
		34 0 38 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA863";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -10.597736793341939 4 -10.597736793341939 
		8 -10.597736793341939 11 -10.597736793341939 14 -10.597736793341939 17 -10.597736793341939 
		30 -10.597736793341939 34 -10.597736793341939 38 -10.597736793341939;
createNode animCurveTA -n "animCurveTA864";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 64.03458729655091 4 64.03458729655091 
		8 64.03458729655091 11 64.03458729655091 14 64.03458729655091 17 64.03458729655091 
		30 64.03458729655091 34 64.03458729655091 38 64.03458729655091;
createNode animCurveTA -n "animCurveTA865";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -3.5980180414270868 4 -3.5980180414270868 
		8 -3.5980180414270868 11 -3.5980180414270868 14 -3.5980180414270868 17 -3.5980180414270868 
		30 -3.5980180414270868 34 -3.5980180414270868 38 -3.5980180414270868;
createNode animCurveTA -n "animCurveTA866";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 11 0 14 0 17 0 30 0 
		34 0 38 0;
createNode animCurveTA -n "animCurveTA867";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 11 0 14 0 17 0 30 0 
		34 0 38 0;
createNode animCurveTA -n "animCurveTA868";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 56.683882055276058 4 56.683882055276058 
		8 56.683882055276058 11 56.683882055276058 14 56.683882055276058 17 56.683882055276058 
		30 56.683882055276058 34 56.683882055276058 38 56.683882055276058;
createNode animCurveTA -n "animCurveTA869";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA870";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA871";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA872";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA873";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA874";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 38 13.994403295754109;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA875";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA876";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA877";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 38 13.994403295754109;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA878";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 11 0 14 0 17 0 30 0 
		34 0 38 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA879";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 11 0 14 0 17 0 30 0 
		34 0 38 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA880";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 44.839776244285055 4 27.911632519594587 
		8 27.911632519594587 11 27.911632519594587 14 27.911632519594587 17 33.277153763652379 
		30 33.277153763652379 34 27.911632519594587 38 44.839776244285055;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.67001909017562866 1 1 0.90563982725143433 
		0.98493224382400513 0.98661839962005615 0.79740059375762939 0.41133931279182434;
	setAttr -s 9 ".kiy[0:8]"  0 -0.74234390258789063 0 0 0.4240477979183197 
		0.17294058203697205 -0.16304625570774078 0.60345035791397095 0.91148227453231812;
createNode animCurveTA -n "animCurveTA881";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 11 0 14 0 17 0 30 0 
		34 0 38 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA882";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 11 0 14 0 17 0 30 0 
		34 0 38 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA883";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 11 0 14 0 17 0 30 0 
		34 0 38 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA884";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.55766507474896454 4 -0.87902215066922906 
		8 -3.4640754970993748 11 -12.37328638828712 14 -27.152440886420102 17 -24.304333102894599 
		30 -24.304333102894599 34 -13.519889120274589 38 -0.55766507474896454;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.98238402605056763 0.75827181339263916 
		0.4354698657989502 0.69270014762878418 0.99568456411361694 0.94901680946350098 
		0.54108732938766479 0.50774085521697998;
	setAttr -s 9 ".kiy[0:8]"  0 -0.18687315285205841 -0.65193855762481689 
		-0.90020328760147095 -0.72122567892074585 0.092801898717880249 0.3152255117893219 
		0.84096640348434448 0.86150985956192017;
createNode animCurveTA -n "animCurveTA885";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -2.0198239624003347 4 -4.7952631452849266 
		8 -8.564874838845709 11 -10.338814627786174 14 -9.4502749456670347 17 -10.183451159923013 
		30 -10.183451159923013 34 -5.758785811591169 38 -2.0198239624003347;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.91921120882034302 0.92373472452163696 
		0.99702829122543335 0.99990808963775635 0.99971228837966919 0.9908413290977478 
		0.88199567794799805 0.8981928825378418;
	setAttr -s 9 ".kiy[0:8]"  0 -0.39376488327980042 -0.38303279876708984 
		-0.07703612744808197 0.013556774705648422 -0.023986233398318291 0.13503123819828033 
		0.47125747799873352 0.4396016001701355;
createNode animCurveTA -n "animCurveTA886";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 7.5513277031901893 4 7.5470594542643701 
		8 11.270216569638619 11 6.7716990805485544 14 3.2215610258951308 17 -3.6230405143181179 
		30 -3.6230405143181179 34 0.48178652949818895 38 7.5513277031901893;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.97163248062133789 0.99832242727279663 
		0.81831681728363037 0.7406691312789917 0.97582054138183594 0.99210250377655029 
		0.80716365575790405 0.73395276069641113;
	setAttr -s 9 ".kiy[0:8]"  0 0.23649603128433228 -0.057899527251720428 
		-0.57476747035980225 -0.67186999320983887 -0.21857313811779022 0.1254299134016037 
		0.59032773971557617 0.67920053005218506;
createNode animCurveTA -n "animCurveTA887";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.95273800592490188 4 36.584447012037614 
		8 37.320174277133589 11 -50.606843181834897 14 -47.60631759771622 17 -29.180942149121503 
		30 -29.180942149121503 34 64.618625665939618 38 0.95273800592490188;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 1 1 1 
		9 9;
	setAttr -s 9 ".kot[4:8]"  1 1 1 9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.387330561876297 0.15155848860740662 
		0.13371853530406952 0.23898071050643921 0.97670382261276245 0.94675135612487793 
		0.45222723484039307 0.11913800239562988;
	setAttr -s 9 ".kiy[0:8]"  0 0.92194092273712158 -0.98844826221466064 
		-0.99101936817169189 0.97102433443069458 0.21459192037582397 0.32196569442749023 
		0.89190274477005005 -0.99287772178649902;
	setAttr -s 9 ".kox[4:8]"  0.2389807403087616 0.97670382261276245 
		0.94675159454345703 0.45222723484039307 0.11913800239562988;
	setAttr -s 9 ".koy[4:8]"  0.97102433443069458 0.21459193527698517 
		0.32196500897407532 0.89190274477005005 -0.99287772178649902;
createNode animCurveTA -n "animCurveTA888";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.41955881507249093 4 -14.90072523078136 
		8 -16.354209718635847 11 -0.26316573274183197 14 1.019549690575124 17 6.7893947082121082 
		30 6.7893947082121082 34 4.8328041640365429 38 0.41955881507249093;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.67339628934860229 0.67438727617263794 
		0.55059033632278442 0.85163271427154541 0.98263686895370483 0.99818915128707886 
		0.92299890518188477 0.86589705944061279;
	setAttr -s 9 ".kiy[0:8]"  0 -0.73928171396255493 0.73837780952453613 
		0.83477562665939331 0.52413904666900635 0.18553927540779114 -0.060153719037771225 
		-0.38480263948440552 -0.50022220611572266;
createNode animCurveTA -n "animCurveTA889";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.6634293801101623 4 20.559471979947382 
		8 21.750435775717474 11 13.373932986709431 14 14.580906370533018 17 15.7143491183769 
		30 15.7143491183769 34 10.617145842820799 38 1.6634293801101623;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 1 9 9 
		9 9;
	setAttr -s 9 ".kot[4:8]"  1 9 9 9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.60540342330932617 0.88083279132843018 
		0.84774696826934814 0.95025384426116943 0.99931281805038452 0.98789972066879272 
		0.73606652021408081 0.6490667462348938;
	setAttr -s 9 ".kiy[0:8]"  0 0.79591876268386841 -0.47342744469642639 
		-0.53040087223052979 0.31147652864456177 0.037066340446472168 -0.15509383380413055 
		-0.67690920829772949 -0.76073145866394043;
	setAttr -s 9 ".kox[4:8]"  0.95025384426116943 0.99931281805038452 
		0.98789972066879272 0.73606652021408081 0.6490667462348938;
	setAttr -s 9 ".koy[4:8]"  0.31147658824920654 0.037066340446472168 
		-0.15509383380413055 -0.67690920829772949 -0.76073145866394043;
createNode animCurveTA -n "animCurveTA890";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.0598705588951514 4 9.4150928574629695 
		8 9.4150928574629695 11 9.4150928574629695 14 9.4150928574629695 17 19.658655380436635 
		30 19.658655380436635 34 12.975985005084686 38 1.0598705588951514;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.8773810863494873 1 1 0.74554407596588135 
		0.94814532995223999 0.97946798801422119 0.63477170467376709 0.53971129655838013;
	setAttr -s 9 ".kiy[0:8]"  0 0.47979411482810974 0 0 0.66645634174346924 
		0.31783708930015564 -0.20159976184368134 -0.77269977331161499 -0.8418501615524292;
createNode animCurveTA -n "animCurveTA891";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.26280824457411484 4 5.1702065727472419 
		8 5.1702065727472419 11 5.1702065727472419 14 5.1702065727472419 17 43.042347258524401 
		30 43.042347258524401 34 28.915800773068575 38 0.26280824457411484;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.9520951509475708 1 1 0.28960806131362915 
		0.62794792652130127 0.91696470975875854 0.33634552359580994 0.25761979818344116;
	setAttr -s 9 ".kiy[0:8]"  0 0.30580198764801025 0 0 0.9571453332901001 
		0.7782554030418396 -0.39896824955940247 -0.94173866510391235 -0.96624636650085449;
createNode animCurveTA -n "animCurveTA892";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 6.5086084195154994 4 9.1600510760194762 
		8 9.1600510760194762 11 9.1600510760194762 14 9.1600510760194762 17 7.1656013602829596 
		30 7.1656013602829596 34 7.3358774624794734 38 6.5086084195154994;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.98527431488037109 1 1 0.98518919944763184 
		0.99787682294845581 0.99998623132705688 0.99907678365707397 0.99418777227401733;
	setAttr -s 9 ".kiy[0:8]"  0 0.17098107933998108 0 0 -0.17147077620029449 
		-0.065129645168781281 0.0052444194443523884 -0.042960386723279953 -0.10765986889600754;
createNode animCurveTA -n "animCurveTA893";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.47197901174667056 4 -0.62622119873454107 
		8 1.0220094506051762 11 -1.3341247881832206 14 -20.413676283044826 17 -63.736645876760655 
		30 -63.736645876760655 34 -35.467922147810363 38 0.47197901174667056;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.99935263395309448 0.99860101938247681 
		0.47144612669944763 0.18061292171478271 0.57639145851135254 0.75419104099273682 
		0.23149301111698151 0.20791624486446381;
	setAttr -s 9 ".kiy[0:8]"  0 0.035976104438304901 -0.052876986563205719 
		-0.88189488649368286 -0.98355424404144287 -0.81717371940612793 0.65665507316589355 
		0.97283655405044556 0.97814661264419556;
createNode animCurveTA -n "animCurveTA894";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.6163460272109138 4 3.8840070108449005 
		8 1.6635181598298709 11 -0.53649478370245318 14 -12.349973796234659 17 -9.0901336237512673 
		30 -9.0901336237512673 34 -3.1865684613605922 38 1.6163460272109138;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.99999523162841797 0.94944405555725098 
		0.63302505016326904 0.80136507749557495 0.99435800313949585 0.98386794328689575 
		0.81894809007644653 0.84658747911453247;
	setAttr -s 9 ".kiy[0:8]"  0 0.0030873941723257303 -0.31393629312515259 
		-0.77413129806518555 -0.59817558526992798 0.10607615113258362 0.17889609932899475 
		0.57386761903762817 0.5322495698928833;
createNode animCurveTA -n "animCurveTA895";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.9660530560192304 4 1.9840981620606046 
		8 4.6525260534232444 11 4.663618927290063 14 12.359197634886842 17 18.679699397496808 
		30 18.679699397496808 34 7.9192105988898467 38 1.9660530560192304;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.98489147424697876 0.98049992322921753 
		0.82979637384414673 0.63295495510101318 0.97927182912826538 0.94922608137130737 
		0.67471694946289063 0.78878277540206909;
	setAttr -s 9 ".kiy[0:8]"  0 0.173172727227211 0.19651933014392853 
		0.55806624889373779 0.77418863773345947 0.20255056023597717 -0.31459465622901917 
		-0.73807662725448608 -0.61467200517654419;
createNode animCurveTA -n "animCurveTA896";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 11 0 14 0 17 0 30 0 
		34 0 38 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA897";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 11 0 14 0 17 0 30 0 
		34 0 38 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA898";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 77.428435288625664 4 33.429092416277157 
		8 33.429092416277157 11 33.429092416277157 14 33.429092416277157 17 58.751715316750904 
		30 58.751715316750904 34 33.429092416277157 38 77.428435288625664;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.3280370831489563 1 1 0.41227787733078003 
		0.76998013257980347 0.78852719068527222 0.63318616151809692 0.17106680572032928;
	setAttr -s 9 ".kiy[0:8]"  0 -0.94466483592987061 0 0 0.91105812788009644 
		0.63806784152984619 -0.61499989032745361 0.77399951219558716 0.98525941371917725;
createNode animCurveTA -n "animCurveTA899";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -12.533800869393716 4 8.2533422302317216 
		8 8.2533422302317216 11 8.2533422302317216 14 8.2533422302317216 17 8.2533422302317216 
		30 8.2533422302317216 34 8.2533422302317216 38 -12.533800869393716;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.59224474430084229 1 1 1 1 1 
		0.59224474430084229 0.34495046734809875;
	setAttr -s 9 ".kiy[0:8]"  0 0.80575811862945557 0 0 0 0 0 
		-0.80575811862945557 -0.93862086534500122;
createNode animCurveTA -n "animCurveTA900";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 38.757782523984616 4 23.263402056531085 
		8 23.263402056531085 11 23.263402056531085 14 23.263402056531085 17 23.263402056531085 
		30 23.263402056531085 34 23.263402056531085 38 38.757782523984616;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.70213764905929565 1 1 1 1 1 
		0.70213764905929565 0.44221672415733337;
	setAttr -s 9 ".kiy[0:8]"  0 -0.71204119920730591 0 0 0 0 
		0 0.71204119920730591 0.8969082236289978;
createNode animCurveTA -n "animCurveTA901";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -17.577333162534281 4 20.166277752815617 
		8 20.166277752815617 11 20.166277752815617 14 20.166277752815617 17 20.166277752815617 
		30 20.166277752815617 34 20.166277752815617 38 -17.577333162534281;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.37522861361503601 1 1 1 1 1 
		0.37522861361503601 0.19838067889213562;
	setAttr -s 9 ".kiy[0:8]"  0 0.92693227529525757 0 0 0 0 0 
		-0.92693227529525757 -0.9801250696182251;
createNode animCurveTA -n "animCurveTA902";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 11 0 14 0 17 0 30 0 
		34 0 38 0;
createNode animCurveTA -n "animCurveTA903";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 8 0 11 0 14 0 17 0 30 0 
		34 0 38 0;
createNode animCurveTA -n "animCurveTA904";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 37.656527956664149 4 37.656527956664149 
		8 37.656527956664149 11 37.656527956664149 14 37.656527956664149 17 37.656527956664149 
		30 37.656527956664149 34 37.656527956664149 38 37.656527956664149;
createNode clipLibrary -n "clipLibrary1";
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
	setAttr -k on ".gama";
	setAttr -k on ".left";
	setAttr -k on ".bot";
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
connectAttr "ndr_look_backSource.st" "clipLibrary1.st[0]";
connectAttr "ndr_look_backSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL288.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL289.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL290.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL291.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL292.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA792.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU57.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU58.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU59.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU60.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "ndr_Hoop_Root_IK_FK_RArm.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "ndr_Hoop_Root_IK_FK_LArm.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "ndr_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "ndr_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "animCurveTA793.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA794.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA795.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL293.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL294.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL295.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL296.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL297.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL298.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA796.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA797.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA798.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL299.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL300.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL301.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA799.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA800.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA801.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA802.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA803.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA804.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA805.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA806.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA807.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL302.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL303.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL304.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL305.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL306.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL307.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL308.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL309.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL310.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA808.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA809.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA810.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA811.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA812.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA813.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA814.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA815.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA816.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA817.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA818.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA819.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA820.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA821.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA822.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA823.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA824.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA825.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA826.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA827.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA828.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA829.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA830.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA831.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA832.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA833.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA834.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA835.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA836.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "ndr_Right_Arm_Hoop_translateX2.a" "clipLibrary1.cel[0].cev[76].cevr"
		;
connectAttr "ndr_Right_Arm_Hoop_translateY2.a" "clipLibrary1.cel[0].cev[77].cevr"
		;
connectAttr "ndr_Right_Arm_Hoop_translateZ2.a" "clipLibrary1.cel[0].cev[78].cevr"
		;
connectAttr "ndr_Right_Arm_Hoop_rotateX2.a" "clipLibrary1.cel[0].cev[79].cevr"
		;
connectAttr "ndr_Right_Arm_Hoop_rotateY2.a" "clipLibrary1.cel[0].cev[80].cevr"
		;
connectAttr "ndr_Right_Arm_Hoop_rotateZ2.a" "clipLibrary1.cel[0].cev[81].cevr"
		;
connectAttr "ndr_Left_Arm_Hoop_translateX2.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "ndr_Left_Arm_Hoop_translateY2.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "ndr_Left_Arm_Hoop_translateZ2.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "ndr_Left_Arm_Hoop_rotateX2.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "ndr_Left_Arm_Hoop_rotateY2.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "ndr_Left_Arm_Hoop_rotateZ2.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "animCurveTL317.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL318.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL319.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA843.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA844.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA845.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL320.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL321.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL322.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA846.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA847.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA848.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL323.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL324.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL325.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL326.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL327.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL328.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA849.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA850.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA851.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA852.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA853.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA854.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA855.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA856.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA857.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA858.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA859.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA860.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA861.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA862.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA863.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA864.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA865.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA866.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA867.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA868.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA869.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA870.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA871.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA872.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA873.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA874.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA875.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA876.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA877.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA878.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA879.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA880.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA881.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA882.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA883.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA884.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA885.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA886.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA887.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA888.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA889.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA890.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA891.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA892.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA893.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA894.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA895.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA896.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA897.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA898.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA899.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA900.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA901.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA902.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA903.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA904.a" "clipLibrary1.cel[0].cev[161].cevr";
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
// End of ndr_look_back.ma
