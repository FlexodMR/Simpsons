//Maya ASCII 4.0 scene
//Name: ndr-m_sway_left.ma
//Last modified: Mon, Aug 05, 2002 11:48:33 PM
requires maya "4.0";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dSimpleShader" "17.1";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "ndr_sway_left";
	setAttr ".ihi" 0;
	setAttr ".du" 32;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL329";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL330";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.99420945471891953 32 -0.99420945471891953;
createNode animCurveTL -n "animCurveTL332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTL -n "animCurveTL333";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.71116663678754255 32 0.71116663678754255;
createNode animCurveTA -n "animCurveTA905";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTU -n "animCurveTU63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTU -n "animCurveTU70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA906";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA907";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA908";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL334";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL335";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL336";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.635760016530293 3 -1.635760016530293 
		6 -1.635760016530293 10 -1.635760016530293 20 -1.635760016530293 24 -1.635760016530293 
		28 -1.635760016530293 32 -1.635760016530293;
createNode animCurveTL -n "animCurveTL338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.79733745153385938 3 0.79733745153385938 
		6 0.79733745153385938 10 0.79733745153385938 20 0.79733745153385938 24 0.79733745153385938 
		28 0.79733745153385938 32 0.79733745153385938;
createNode animCurveTL -n "animCurveTL339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.6031411449878863 3 1.6031411449878863 
		6 1.6031411449878863 10 1.6031411449878863 20 1.6031411449878863 24 1.6031411449878863 
		28 1.6031411449878863 32 1.6031411449878863;
createNode animCurveTA -n "animCurveTA909";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTA -n "animCurveTA910";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -14.260733409455982 3 -14.260733409455982 
		6 -14.260733409455982 10 -14.260733409455982 20 -14.260733409455982 24 -14.260733409455982 
		28 -14.260733409455982 32 -14.260733409455982;
createNode animCurveTA -n "animCurveTA911";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTL -n "animCurveTL340";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.1582036071592778 3 -1.1582036071592778 
		6 -1.1582036071592778 10 -1.1582036071592778 20 -1.1582036071592778 24 -1.1582036071592778 
		28 -1.1582036071592778 32 -1.1582036071592778;
createNode animCurveTL -n "animCurveTL341";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.8024274637299138 3 0.8024274637299138 
		6 0.8024274637299138 10 0.8024274637299138 20 0.8024274637299138 24 0.8024274637299138 
		28 0.8024274637299138 32 0.8024274637299138;
createNode animCurveTL -n "animCurveTL342";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.6023458233856847 3 1.6023458233856847 
		6 1.6023458233856847 10 1.6023458233856847 20 1.6023458233856847 24 1.6023458233856847 
		28 1.6023458233856847 32 1.6023458233856847;
createNode animCurveTA -n "animCurveTA912";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.7149195703006082 3 -2.7149195703006082 
		6 -2.7149195703006082 10 -2.7149195703006082 20 -2.7149195703006082 24 -2.7149195703006082 
		28 -2.7149195703006082 32 -2.7149195703006082;
createNode animCurveTA -n "animCurveTA913";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 9.448854147766081 3 9.448854147766081 
		6 9.448854147766081 10 9.448854147766081 20 9.448854147766081 24 9.448854147766081 
		28 9.448854147766081 32 9.448854147766081;
createNode animCurveTA -n "animCurveTA914";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.9042146334359309 3 -2.9042146334359309 
		6 -2.9042146334359309 10 -2.9042146334359309 20 -2.9042146334359309 24 -2.9042146334359309 
		28 -2.9042146334359309 32 -2.9042146334359309;
createNode animCurveTA -n "animCurveTA915";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA916";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA917";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA918";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA919";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA920";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.028577078352958335 3 0.097466557943624466 
		6 0.097466557943624466 10 0.097466557943624466 20 0.097466557943624466 24 
		0.097466557943624466 28 0.097466557943624466 32 0.028577078352958335;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.029019782319664955 1 1 1 1 
		0.038680374622344971 0.019351040944457054;
	setAttr -s 8 ".kiy[0:7]"  0 0.99957883358001709 0 0 0 0 -0.99925166368484497 
		-0.99981272220611572;
createNode animCurveTL -n "animCurveTL344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.6265256146554018 3 0.89926276112817349 
		6 0.89926276112817349 10 0.89926276112817349 20 0.89926276112817349 24 0.89926276112817349 
		28 0.89926276112817349 32 0.6265256146554018;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.0073328707367181778 1 1 1 1 
		0.0097769564017653465 0.0048886514268815517;
	setAttr -s 8 ".kiy[0:7]"  0 0.9999731183052063 0 0 0 0 -0.99995219707489014 
		-0.99998807907104492;
createNode animCurveTL -n "animCurveTL345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.1827937027824305 3 0.80168990793572048 
		6 0.80168990793572048 10 0.80168990793572048 20 0.80168990793572048 24 0.80168990793572048 
		28 0.80168990793572048 32 1.1827937027824305;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.0052478420548141003 1 1 1 1 
		0.0069970474578440189 0.0034985868260264397;
	setAttr -s 8 ".kiy[0:7]"  0 -0.99998623132705688 0 0 0 0 
		0.99997550249099731 0.99999386072158813;
createNode animCurveTL -n "animCurveTL346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.011621961304049206 3 0.011621961304049206 
		6 0.011621961304049206 10 0.011621961304049206 20 0.011621961304049206 24 
		0.011621961304049206 28 0.011621961304049206 32 0.011621961304049206;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.53592894662340362 3 0.53592894662340362 
		6 0.53592894662340362 10 0.53592894662340362 20 0.53592894662340362 24 0.53592894662340362 
		28 0.53592894662340362 32 0.53592894662340362;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.1714982742260704 3 1.1714982742260704 
		6 1.1714982742260704 10 1.1714982742260704 20 1.1714982742260704 24 1.1714982742260704 
		28 1.1714982742260704 32 1.1714982742260704;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.406 3 -1.406 6 -1.406 10 -1.406 
		20 -1.406 24 -1.406 28 -1.406 32 -1.406;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.96452787963755071 3 0.96452787963755071 
		6 0.96452787963755071 10 0.96452787963755071 20 0.96452787963755071 24 0.96452787963755071 
		28 0.96452787963755071 32 0.96452787963755071;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.0057239815788857 3 1.006 6 
		1.006 10 1.006 20 1.006 24 1.006 28 1.006 32 1.0057239815788857;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.99061065912246704 1 1 1 1 0.9946858286857605 
		0.97923761606216431;
	setAttr -s 8 ".kiy[0:7]"  0 0.13671338558197021 0 0 0 0 -0.1029568538069725 
		-0.20271579921245575;
createNode animCurveTA -n "animCurveTA921";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -19.688418588621207 3 -19.68841858862119 
		6 -19.688418588621186 10 -16.681098374804272 20 -16.681098374804272 24 -19.688418588621186 
		28 -19.751370263652689 32 -19.688418588621207;
	setAttr -s 8 ".kit[0:7]"  1 9 9 1 1 9 9 
		9;
	setAttr -s 8 ".kot[3:7]"  1 1 9 9 9;
	setAttr -s 8 ".kix[0:7]"  0 1 0.9756208062171936 0.99975961446762085 
		0.99955809116363525 0.98040139675140381 1 0.99996602535247803;
	setAttr -s 8 ".kiy[0:7]"  0 0 0.21946300566196442 0.021924974396824837 
		-0.029726272448897362 -0.19701051712036133 0 0.0082400785759091377;
	setAttr -s 8 ".kox[3:7]"  0.99975961446762085 0.99955809116363525 
		0.98040139675140381 1 0.99996602535247803;
	setAttr -s 8 ".koy[3:7]"  0.021925011649727821 -0.029726259410381317 
		-0.19701051712036133 0 0.0082400785759091377;
createNode animCurveTA -n "animCurveTA922";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.6085540494966317 3 1.6085540494966299 
		6 1.6085540494966299 10 3.7948068215313993 20 3.7948068215313993 24 1.6085540494966297 
		28 -0.045498044900976108 32 1.6085540494966317;
	setAttr -s 8 ".kit[0:7]"  1 9 9 1 1 9 9 
		9;
	setAttr -s 8 ".kot[3:7]"  1 1 9 9 9;
	setAttr -s 8 ".kix[0:7]"  0 1 0.98689109086990356 0.99994856119155884 
		0.99992567300796509 0.96983426809310913 1 0.97735381126403809;
	setAttr -s 8 ".kiy[0:7]"  0 0 0.16138762235641479 0.010144998319447041 
		-0.012190749868750572 -0.24376527965068817 0 0.21161176264286041;
	setAttr -s 8 ".kox[3:7]"  0.99994856119155884 0.99992567300796509 
		0.96983426809310913 1 0.97735381126403809;
	setAttr -s 8 ".koy[3:7]"  0.010145001113414764 -0.012190760113298893 
		-0.24376527965068817 0 0.21161176264286041;
createNode animCurveTA -n "animCurveTA923";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.23076428718713959 3 1.0789280880091228 
		6 -0.49270276222632337 10 10.294482049548055 20 10.294482049548055 24 4.1348769634669011 
		28 -0.47743876760723408 32 -0.23076428718713959;
	setAttr -s 8 ".kit[0:7]"  1 9 9 1 1 9 9 
		9;
	setAttr -s 8 ".kot[3:7]"  1 1 9 9 9;
	setAttr -s 8 ".kix[0:7]"  0 0.99973887205123901 0.8233410120010376 
		0.99844193458557129 0.99916386604309082 0.81729954481124878 0.96151983737945557 
		0.99947911500930786;
	setAttr -s 8 ".kiy[0:7]"  0 -0.022852474823594093 0.56754696369171143 
		0.055800478905439377 -0.040884647518396378 -0.57621300220489502 -0.27473556995391846 
		0.032272804528474808;
	setAttr -s 8 ".kox[3:7]"  0.99844193458557129 0.99916386604309082 
		0.81729954481124878 0.96151983737945557 0.99947911500930786;
	setAttr -s 8 ".koy[3:7]"  0.055800512433052063 -0.040884643793106079 
		-0.57621300220489502 -0.27473556995391846 0.032272804528474808;
createNode animCurveTA -n "animCurveTA924";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA925";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA926";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA927";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA928";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA929";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA930";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA931";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA932";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA933";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA934";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA935";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA936";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA937";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA938";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA939";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA940";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA941";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA942";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA943";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA944";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTA -n "animCurveTA945";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTA -n "animCurveTA946";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
createNode animCurveTA -n "animCurveTA947";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -5.6803276403432976 3 -5.6803276403432976 
		6 -5.6803276403432976 10 -5.6803276403432976 20 -5.6803276403432976 24 -5.6803276403432976 
		28 -5.6803276403432976 32 -5.6803276403432976;
createNode animCurveTA -n "animCurveTA948";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -6.1570151121354497 3 -6.1570151121354497 
		6 -6.1570151121354497 10 -6.1570151121354497 20 -6.1570151121354497 24 -6.1570151121354497 
		28 -6.1570151121354497 32 -6.1570151121354497;
createNode animCurveTA -n "animCurveTA949";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 5.3480278027016874 3 5.3480278027016874 
		6 5.3480278027016874 10 5.3480278027016874 20 5.3480278027016874 24 5.3480278027016874 
		28 5.3480278027016874 32 5.3480278027016874;
createNode animCurveTL -n "animCurveTL352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -0.089531466712054461 1 -0.10131764426917129 
		2 -0.11280088783029613 3 -0.12355323697972438 4 -0.13902855884679696 5 -0.15313216003897423 
		6 -0.15105286080816599 7 -0.14476069073231429 8 -0.16809871006531296 9 -0.23488258494842512 
		10 -0.34281525182793532 11 -0.45419097764792637 12 -0.52415905995328727 13 
		-0.55654740848598638 14 -0.57481182979432788 15 -0.58127887323041028 16 -0.57845096886844372 
		17 -0.56892743507567167 18 -0.55533239036440196 19 -0.54024662161892822 20 
		-0.52614453604876299 21 -0.50851449254614633 22 -0.48187991587181556 23 -0.44908355813593576 
		24 -0.415442218470846 25 -0.38296147523959068 26 -0.34830864597589428 27 
		-0.31075092724868514 28 -0.27312613336649177 29 -0.23454731371581317 30 -0.19061470990925558 
		31 -0.141072371191313 32 -0.089531466712054461;
createNode animCurveTL -n "animCurveTL353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -0.36630945286283184 1 -0.37790243171165755 
		2 -0.38952314483291078 3 -0.40117216504132203 4 -0.4232423358351966 5 -0.44614154304033277 
		6 -0.43761071618419617 7 -0.41182919463533313 8 -0.40590392898955435 9 -0.4180870743589945 
		10 -0.45899982819438551 11 -0.51767425596846006 12 -0.55209196859848653 13 
		-0.56844223384001136 14 -0.58176172999204423 15 -0.591897542248222 16 -0.59840295532226129 
		17 -0.60071867936472956 18 -0.59830630379126692 19 -0.5907321117233133 20 
		-0.57770155190781203 21 -0.54964754627276391 22 -0.51067369892375036 23 -0.4791094465420454 
		24 -0.46834693767753677 25 -0.48856808511431665 26 -0.52491746531110794 27 
		-0.5530459364271465 28 -0.55278248240482653 29 -0.51890505205153237 30 -0.46793048919106489 
		31 -0.41359838007052496 32 -0.36630945286283184;
createNode animCurveTL -n "animCurveTL354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0.80887693548548756 1 0.80664804199799922 
		2 0.80421052670704651 3 0.80171669247589539 4 0.79974882393149482 5 0.79781278828336444 
		6 0.79477819070854572 7 0.72977475052509033 8 0.57217959866634338 9 0.36582480547622981 
		10 0.15310694617639165 11 -0.028195947324457932 12 -0.14116672592372595 13 
		-0.19676115514440004 14 -0.23343852194572506 15 -0.25271101267947932 16 -0.25608049318670661 
		17 -0.24505513272698373 18 -0.22115780324757492 19 -0.18592594546106753 20 
		-0.14090302287265452 21 -0.034669708464897066 22 0.14524078595767034 23 0.33851623347615734 
		24 0.48409305750054876 25 0.5622264130513529 26 0.60681673577689799 27 0.63665939392902493 
		28 0.67000986018855235 29 0.70836423024342454 30 0.7427822303308621 31 0.77548176133672597 
		32 0.80887693548548756;
createNode animCurveTA -n "animCurveTA950";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -35.087478750046408 1 -35.719388579186123 
		2 -36.354339451571292 3 -36.981001616966729 4 -37.663201220045266 5 -38.335516929881642 
		6 -38.784098408067912 7 -35.825303165238807 8 -29.224717005296249 9 -21.99802615600484 
		10 -15.205246601758107 11 -9.6937032407440835 12 -6.5137899919798246 13 -4.5964230301594267 
		14 -2.5727841311390738 15 -0.75829713957335076 16 0.50178622900066316 17 
		0.86831853049500274 18 0.024036553889057767 19 -2.3242376250812549 20 -6.4495094381820577 
		21 -17.097039773830783 22 -32.342145187636838 23 -34.147033325167357 24 9.7399727775871661 
		25 23.064568733048255 26 10.87704400990326 27 -8.7384122295939815 28 -21.642603768773053 
		29 -28.808320046661922 30 -33.323801096937068 31 -35.093625070600659 32 -35.087478750046408;
createNode animCurveTA -n "animCurveTA951";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 66.472370131839597 1 66.449431221220109 
		2 66.450939018832671 3 66.467256814276809 4 66.412107516599661 5 66.355563326397061 
		6 66.492545662250336 7 64.78283772586262 8 59.988338500814123 9 53.536947477182487 
		10 46.783367917830901 11 41.143983878667193 12 37.77200504017167 13 35.858267024322096 
		14 34.094332662734857 15 32.674697724255637 16 31.805914796281598 17 31.689354345398037 
		18 32.514807274110524 19 34.467031136828773 20 37.745940432402847 21 46.804948393522025 
		22 62.3310517292132 23 77.513569223291782 24 82.666057984661876 25 81.153886147002979 
		26 80.385445977578627 27 79.051512443692062 28 76.920702779826414 29 74.619728695566295 
		30 71.725147781005674 31 68.807631840448295 32 66.472370131839597;
createNode animCurveTA -n "animCurveTA952";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 83.863669147879875 1 84.690026934229948 
		2 85.513565665717223 3 86.322254860700511 4 88.068532166407877 5 89.802211408154378 
		6 88.663989263663026 7 80.328246884592744 8 64.225752273110729 9 44.324055100736665 
		10 26.587200966113226 11 13.417994746510503 12 4.9505453393459744 13 1.5400500614560724 
		14 0.88520965556472686 15 2.1438703082662696 16 4.4420736470128332 17 6.8994626972279711 
		18 8.6463258094724509 19 8.8403185567140401 20 6.6868138176777956 21 -1.0745949207880701 
		22 -10.461800825873148 23 -4.1101595023435467 24 49.004453418987289 25 73.611484877992751 
		26 74.869414625094251 27 68.76236359915697 28 67.401518810000965 29 68.998661747958579 
		30 71.709305969220281 31 76.662340341968303 32 83.863669147879875;
createNode animCurveTL -n "animCurveTL355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0.071393788731188013 1 0.058240562029559441 
		2 0.044799333563659616 3 0.031543795150146818 4 0.01060965538548544 5 -0.010511261273783816 
		6 -0.006381247711101423 7 0.038080508654863364 8 0.097823447270851599 9 0.14415654843505421 
		10 0.16318119483755311 11 0.16601553599704744 12 0.16779345832692913 13 0.16875659756437927 
		14 0.1690686356569944 15 0.1688463000238403 16 0.16818467022026881 17 0.1671763054947786 
		18 0.16592398299176808 19 0.16454701270021702 20 0.16318119483755311 21 0.15692202936561672 
		22 0.14324168469179369 23 0.12589477819470404 24 0.1091412740246409 25 0.090929806896888302 
		26 0.067421633091099123 27 0.043797424240688658 28 0.029145835656656231 29 
		0.030408189203587312 30 0.042696657858144249 31 0.058515047684056187 32 0.071393788731188013;
createNode animCurveTL -n "animCurveTL356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -0.33020600607735029 1 -0.31842630441308606 
		2 -0.3066987619717555 3 -0.29541370515566839 4 -0.27841713836667004 5 -0.26288084620355567 
		6 -0.26606999044453228 7 -0.30229531898866202 8 -0.36698605396619177 9 -0.43820050630395913 
		10 -0.47947137784354454 11 -0.49014225450244042 12 -0.49687788291795076 13 
		-0.50023261421697296 14 -0.50079207880717092 15 -0.49915955144933094 16 -0.49594629776581967 
		17 -0.49176473555948991 18 -0.48722387283319407 19 -0.48292693704516693 20 
		-0.47947137784354454 21 -0.47220389963500692 22 -0.4573506893007051 23 -0.43682835612430937 
		24 -0.41196107233024853 25 -0.37575384525852329 26 -0.33144044682874613 27 
		-0.29325127453916183 28 -0.2727152699930076 29 -0.27412895864741488 30 -0.28957404274509424 
		31 -0.31114504997846665 32 -0.33020600607735029;
createNode animCurveTL -n "animCurveTL357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0.8507267908877798 1 0.85270903014680222 
		2 0.85443584240978698 3 0.85600055373161965 4 0.85865999415401761 5 0.86130027790796149 
		6 0.86073483818407814 7 0.85499806215104057 8 0.84678809267982136 9 0.83959919358429846 
		10 0.83610746077992082 11 0.83547241582889453 12 0.83523466151482528 13 0.83530529316787383 
		14 0.8355878254719713 15 0.83598180822946777 16 0.83638553458685028 17 0.83669796277657926 
		18 0.83681992065788058 19 0.83665461847824774 20 0.83610746077992082 21 0.83484025580236843 
		22 0.83374912646610511 23 0.83418733904340903 24 0.83615955309393908 25 0.83926582835192154 
		26 0.84285483691832863 27 0.84589803973805844 28 0.84805964961902547 29 0.84943005579030928 
		30 0.850186654352032 31 0.85049290029753266 32 0.8507267908877798;
createNode animCurveTA -n "animCurveTA953";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -29.385780402081803 1 -28.881303687439807 
		2 -28.400462562993624 3 -27.941544100063883 4 -27.356431186681174 5 -26.77460569378789 
		6 -26.589579686374829 7 -26.983365570309331 8 -27.590992225055981 9 -28.077822307749969 
		10 -28.323294874565235 11 -28.393053756695824 12 -28.38252956157503 13 -28.315208857895378 
		14 -28.215351768147322 15 -28.10771194317222 16 -28.017288132680477 17 -27.969093795720369 
		18 -27.987927885075472 19 -28.098128743898396 20 -28.323294874565235 21 -29.296265126546281 
		22 -30.889907680847678 23 -32.163873012742883 24 -32.618313727380091 25 -32.198702949804037 
		26 -31.331358885128264 27 -30.427423726327469 28 -29.804563367082459 29 -29.522752778415668 
		30 -29.411171457763956 31 -29.401522703537108 32 -29.385780402081803;
createNode animCurveTA -n "animCurveTA954";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -62.958174689347601 1 -63.066836622296215 
		2 -63.197754200730991 3 -63.340237770574028 4 -63.433495147574483 5 -63.524278859449524 
		6 -63.734516726572807 7 -64.197029027375166 8 -64.842404987525526 9 -65.45238204486698 
		10 -65.741333762174506 11 -65.765893754976688 12 -65.793014640336679 13 -65.818703012887184 
		14 -65.839934270855295 15 -65.854285083422269 16 -65.85960072784026 17 -65.853699071898362 
		18 -65.834112953541293 19 -65.79787301794471 20 -65.741333762174506 21 -65.278178711564095 
		22 -64.250118989098823 23 -63.061039557172464 24 -62.240360324419498 25 -62.047808442800068 
		26 -62.241324340100974 27 -62.605295576959129 28 -62.86133639143776 29 -62.915961252171179 
		30 -62.914482385778832 31 -62.91753677379301 32 -62.958174689347601;
createNode animCurveTA -n "animCurveTA955";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -65.616366301272222 1 -64.660223198580752 
		2 -63.68355204733512 3 -62.710227356062298 4 -60.861739708062004 5 -59.03265114186955 
		6 -59.925506415846307 7 -65.399942748642758 8 -73.52626039258918 9 -81.24553374056228 
		10 -85.318338974329293 11 -86.294062408489964 12 -86.961230588574921 13 -87.355013364559426 
		14 -87.509842037657819 15 -87.459669312236542 16 -87.23820852403604 17 -86.879161370285928 
		18 -86.416448408826312 19 -85.884459274812258 20 -85.318338974329293 21 -83.379318563989656 
		22 -79.695977970903087 23 -75.579889024924228 24 -71.918744456879296 25 -68.100016161526014 
		26 -63.76059949392338 27 -59.983756956839194 28 -57.927561042432004 29 -58.333467426205551 
		30 -60.447978334811673 31 -63.215673769295442 32 -65.616366301272222;
createNode animCurveTL -n "animCurveTL358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.5330905047330146 3 -2.5330905047330146 
		6 -2.5330905047330146 12 -2.982244883201091 20 -2.982244883201091 24 -2.8614370767228712 
		28 -2.7008775891641785 32 -2.5330905047330146;
	setAttr -s 8 ".kit[0:7]"  3 3 3 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 3 3 9 9 9 9 
		9;
createNode animCurveTL -n "animCurveTL359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.0768417541934041 3 2.0768417541934041 
		6 2.0768417541934041 12 1.4240624167621636 20 1.4240624167621636 24 1.7861655623246184 
		28 1.9495674054044119 32 2.0768417541934041;
	setAttr -s 8 ".kit[0:7]"  3 3 3 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 3 3 9 9 9 9 
		9;
createNode animCurveTL -n "animCurveTL360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.0481292103665369 3 2.0481292103665369 
		6 2.0481292103665369 12 1.2358010127664807 20 1.2358010127664807 24 1.7515032595495144 
		28 1.9304320023230213 32 2.0481292103665369;
	setAttr -s 8 ".kit[0:7]"  3 3 3 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 3 3 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA956";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -36.33267118790765 3 -36.33267118790765 
		6 -36.33267118790765 12 -14.740379440658328 20 -14.740379440658328 24 -88.808544236675544 
		28 -70.929450474300481 32 -36.33267118790765;
	setAttr -s 8 ".kit[0:7]"  3 3 3 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 3 3 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA957";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 76.683613894212968 3 76.683613894212968 
		6 76.683613894212968 12 42.939882371214097 20 42.939882371214097 24 83.878009663660919 
		28 83.992088991464641 32 76.683613894212968;
	setAttr -s 8 ".kit[0:7]"  3 3 3 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 3 3 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA958";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 83.339653964504663 3 83.339653964504663 
		6 83.339653964504663 12 20.56028059081039 20 20.56028059081039 24 -39.173779852465344 
		28 12.000369856390989 32 83.339653964504663;
	setAttr -s 8 ".kit[0:7]"  3 3 3 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 3 3 9 9 9 9 
		9;
createNode animCurveTL -n "animCurveTL361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.5799571818574061 3 -1.5799571818574061 
		6 -1.5799571818574061 10 -1.5799571818574061 20 -1.5799571818574061 24 -1.5799571818574061 
		28 -1.5799571818574061 32 -1.5799571818574061;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.1296110275135671 3 2.1296110275135671 
		6 2.1296110275135671 10 2.1296110275135671 20 2.1296110275135671 24 2.1296110275135671 
		28 2.1296110275135671 32 2.1296110275135671;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.0696046407532309 3 2.0696046407532309 
		6 2.0696046407532309 10 2.0696046407532309 20 2.0696046407532309 24 2.0696046407532309 
		28 2.0696046407532309 32 2.0696046407532309;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA959";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -44.889076788073439 3 -44.889076788073439 
		6 -44.889076788073439 10 -44.889076788073439 20 -44.889076788073439 24 -44.889076788073439 
		28 -44.889076788073439 32 -44.889076788073439;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA960";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -71.289995585927571 3 -71.289995585927571 
		6 -71.289995585927571 10 -71.289995585927571 20 -71.289995585927571 24 -71.289995585927571 
		28 -71.289995585927571 32 -71.289995585927571;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA961";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -50.619719123253631 3 -50.619719123253631 
		6 -50.619719123253631 10 -50.619719123253631 20 -50.619719123253631 24 -50.619719123253631 
		28 -50.619719123253631 32 -50.619719123253631;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.48508072212835623 3 0.77290696453185026 
		6 0.77290696453185026 10 0.77290696453185026 20 0.77290696453185026 24 0.77290696453185026 
		28 0.77290696453185026 32 0.48508072212835623;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.0069484692066907883 1 1 1 1 
		0.0092644514515995979 0.0046323728747665882;
	setAttr -s 8 ".kiy[0:7]"  0 0.99997586011886597 0 0 0 0 -0.99995708465576172 
		-0.99998927116394043;
createNode animCurveTL -n "animCurveTL365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.3461376073222053 3 -0.71234308293286885 
		6 -0.71234308293286885 10 -0.71234308293286885 20 -0.71234308293286885 24 
		-0.71234308293286885 28 -0.71234308293286885 32 -1.3461376073222053;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.0031555809546262026 1 1 1 1 
		0.0042074252851307392 0.0021037256810814142;
	setAttr -s 8 ".kiy[0:7]"  0 0.99999499320983887 0 0 0 0 -0.99999117851257324 
		-0.99999779462814331;
createNode animCurveTL -n "animCurveTL366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.22135527095932556 3 -0.35872267288917942 
		6 -0.35872267288917942 10 -0.35872267288917942 20 -0.35872267288917942 24 
		-0.35872267288917942 28 -0.35872267288917942 32 -0.22135527095932556;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.014557952061295509 1 1 1 1 
		0.019409002736210823 0.0097058694809675217;
	setAttr -s 8 ".kiy[0:7]"  0 -0.99989402294158936 0 0 0 0 
		0.99981164932250977 0.99995291233062744;
createNode animCurveTL -n "animCurveTL367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.578730476483856 3 -0.35039089098226439 
		6 -0.35039089098226439 10 -0.35039089098226439 20 -0.35039089098226439 24 
		-0.35039089098226439 28 -0.35039089098226439 32 -0.578730476483856;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.0087585486471652985 1 1 1 1 
		0.011677715927362442 0.005839154589921236;
	setAttr -s 8 ".kiy[0:7]"  0 0.99996161460876465 0 0 0 0 -0.99993181228637695 
		-0.99998295307159424;
createNode animCurveTL -n "animCurveTL368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.3751169572549602 3 -0.40854033940183732 
		6 -0.40854033940183732 10 -0.40854033940183732 20 -0.40854033940183732 24 
		-0.40854033940183732 28 -0.40854033940183732 32 -1.3751169572549602;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.0020691538229584694 1 1 1 1 
		0.0027588671073317528 0.0013794370461255312;
	setAttr -s 8 ".kiy[0:7]"  0 0.99999785423278809 0 0 0 0 -0.99999618530273438 
		-0.99999904632568359;
createNode animCurveTL -n "animCurveTL369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.21739896228115529 3 -0.82408995422063858 
		6 -0.82408995422063858 10 -0.82408995422063858 20 -0.82408995422063858 24 
		-0.82408995422063858 28 -0.82408995422063858 32 -0.21739896228115529;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.0032965531572699547 1 1 1 1 
		0.0043953857384622097 0.0021977080032229424;
	setAttr -s 8 ".kiy[0:7]"  0 -0.99999457597732544 0 0 0 0 
		0.99999034404754639 0.99999755620956421;
createNode animCurveTA -n "animCurveTA962";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.061808866237340665 3 -0.061808866237337522 
		6 -0.061808866237337522 10 -0.061808866237337522 20 -0.061808866237337522 
		24 -0.061808866237337522 28 -0.061808866237337522 32 -0.061808866237340665;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA963";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -59.058178941076754 3 -59.058178941076754 
		6 -59.058178941076754 10 -59.058178941076754 20 -59.058178941076754 24 -59.058178941076754 
		28 -59.058178941076754 32 -59.058178941076754;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA964";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 16.57914742975785 3 16.579147429757843 
		6 16.579147429757843 10 16.579147429757843 20 16.579147429757843 24 16.579147429757843 
		28 16.579147429757843 32 16.57914742975785;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA965";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 12.253734489678925 3 12.253734489678925 
		6 12.253734489678925 10 12.253734489678925 20 12.253734489678925 24 12.253734489678925 
		28 12.253734489678925 32 12.253734489678925;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA966";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -65.746751280844975 3 -65.746751280844961 
		6 -65.746751280844961 10 -65.746751280844961 20 -65.746751280844961 24 -65.746751280844961 
		28 -65.746751280844961 32 -65.746751280844975;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA967";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA968";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 15.711328223519061 3 15.711328223519057 
		6 15.711328223519057 10 15.711328223519057 20 15.711328223519057 24 15.711328223519057 
		28 15.711328223519057 32 15.711328223519061;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA969";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.5572674112203657 3 8.5572674112203622 
		6 8.5572674112203622 10 8.5572674112203622 20 8.5572674112203622 24 8.5572674112203622 
		28 8.5572674112203622 32 8.5572674112203657;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA970";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA971";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA972";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA973";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA974";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA975";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA976";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -12.533800869393716 3 -12.533800869393716 
		6 -12.533800869393716 10 -12.533800869393716 20 -12.533800869393716 24 -12.533800869393716 
		28 -12.533800869393716 32 -12.533800869393716;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA977";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 38.757782523984616 3 38.757782523984616 
		6 38.757782523984616 10 38.757782523984616 20 38.757782523984616 24 38.757782523984616 
		28 38.757782523984616 32 38.757782523984616;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA978";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -17.577333162534281 3 -17.577333162534281 
		6 -17.577333162534281 10 -17.577333162534281 20 -17.577333162534281 24 -17.577333162534281 
		28 -17.577333162534281 32 -17.577333162534281;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA979";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA980";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA981";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 77.428435288625664 3 77.428435288625664 
		6 77.428435288625664 10 77.428435288625664 20 77.428435288625664 24 77.428435288625664 
		28 77.428435288625664 32 77.428435288625664;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA982";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA983";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA984";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA985";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA986";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA987";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 20 13.994403295754109 
		32 13.994403295754109;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA988";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA989";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA990";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 20 13.994403295754109 
		32 13.994403295754109;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA991";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA992";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA993";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 37.656527956664149 3 37.656527956664149 
		6 17.254116939558369 10 17.254116939558369 20 17.254116939558369 24 17.254116939558369 
		28 17.254116939558369 32 37.656527956664149;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.48970276117324829 0.54808127880096436 
		1 1 1 0.59942400455474854 0.35066184401512146;
	setAttr -s 8 ".kiy[0:7]"  0 -0.87188947200775146 -0.8364250659942627 
		0 0 0 0.80043166875839233 0.93650215864181519;
createNode animCurveTA -n "animCurveTA994";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA995";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA996";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA997";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.55766507474896454 3 0.47169836699590695 
		6 0.3060699065895281 10 1.236975047779568 20 1.236975047779568 24 1.4214016114875909 
		28 0.87616976080293729 32 0.55766507474896454;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.99975907802581787 0.99836564064025879 
		0.99939447641372681 0.99997621774673462 0.99972128868103027 0.99840593338012695 
		0.99913203716278076;
	setAttr -s 8 ".kiy[0:7]"  0 -0.021950529888272285 0.0571490079164505 
		0.03479468822479248 0.006897373590618372 -0.023608069866895676 -0.056441310793161392 
		-0.041655994951725006;
createNode animCurveTA -n "animCurveTA998";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.0198239624003347 3 1.2768818095243442 
		6 -0.15351191025562338 10 7.7222637653379511 20 7.7222637653379511 24 9.4440669425409904 
		28 -1.2973778944769148 32 2.0198239624003347;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.98248577117919922 0.90077906847000122 
		0.95925229787826538 0.997933030128479 0.86114329099655151 0.89943701028823853 
		0.91725838184356689;
	setAttr -s 8 ".kiy[0:7]"  0 -0.18633760511875153 0.43427768349647522 
		0.28255096077919006 0.064262181520462036 -0.5083622932434082 -0.43705043196678162 
		0.39829272031784058;
createNode animCurveTA -n "animCurveTA999";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 7.5513277031901893 3 7.555110749961746 
		6 7.5655322219557872 10 7.3353787742734253 20 7.3353787742734253 24 7.5751720837071632 
		28 7.4537320541368777 32 7.5513277031901893;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.99999922513961792 0.99986493587493896 
		0.99996292591094971 0.99995976686477661 0.99997001886367798 0.99999880790710449 
		0.99991840124130249;
	setAttr -s 8 ".kiy[0:7]"  0 0.0012395771918818355 -0.016433693468570709 
		-0.008607400581240654 0.0089678885415196419 0.0077459719032049179 -0.0015606092056259513 
		0.012774202972650528;
createNode animCurveTA -n "animCurveTA1000";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.95273800592490188 3 -0.77436614475965426 
		6 -0.43048234716517736 10 -18.829269962708576 15 -16.628895002917908 20 -16.628895002917908 
		24 -7.0084518016860731 28 2.310873568438117 32 -0.95273800592490188;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.99896305799484253 0.59508419036865234 
		0.72776073217391968 0.99342852830886841 0.87261956930160522 0.62787365913391113 
		0.92964357137680054 0.91959905624389648;
	setAttr -s 9 ".kiy[0:8]"  0 0.045528143644332886 -0.80366337299346924 
		-0.68583112955093384 0.11445426195859909 0.48840054869651794 0.77831530570983887 
		0.36846008896827698 -0.39285817742347717;
createNode animCurveTA -n "animCurveTA1001";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.41955881507249099 3 16.096308660636037 
		6 -3.9084086951295003 10 -28.567668164768961 15 11.905623807122382 20 11.905623807122382 
		24 2.770439936679427 28 -5.7089991278026551 32 -0.41955881507249099;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.95664411783218384 0.28675398230552673 
		0.73592251539230347 0.42675423622131348 0.88303762674331665 0.65524566173553467 
		0.97889208793640137 0.82216191291809082;
	setAttr -s 9 ".kiy[0:8]"  0 -0.29125946760177612 -0.95800423622131348 
		0.67706573009490967 0.90436762571334839 -0.46930220723152161 -0.75541585683822632 
		-0.2043779194355011 0.56925368309020996;
createNode animCurveTA -n "animCurveTA1002";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.6634293801101625 3 1.6474266959931043 
		6 1.6930326595131873 10 6.6060424320876807 15 -0.30458770080736486 20 -0.30458770080736486 
		24 0.86545910645245694 28 2.0077625371950685 32 1.6634293801101625;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.99999666213989258 0.93758583068847656 
		0.99331444501876831 0.94033485651016235 0.99769121408462524 0.98874068260192871 
		0.99863892793655396 0.99898576736450195;
	setAttr -s 9 ".kiy[0:8]"  0 0.0025833649560809135 0.34775394201278687 
		-0.11543987691402435 -0.34025052189826965 0.06791340559720993 0.14963895082473755 
		0.052155949175357819 -0.045027408748865128;
createNode animCurveTA -n "animCurveTA1003";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.0598705588951514 3 6.3459498001189099 
		6 -4.8714700432790456 10 -11.585389647444966 20 -4.8714700432790456 24 -1.107962030853916 
		28 -4.7871034605416334 32 -1.0598705588951514;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.94888478517532349 0.59772306680679321 
		1 0.93106871843338013 0.9999847412109375 0.99999505281448364 0.89873695373535156;
	setAttr -s 8 ".kiy[0:7]"  0 -0.31562259793281555 -0.80170267820358276 
		0 0.36484381556510925 0.0055216955952346325 0.0031475638970732689 0.43848821520805359;
createNode animCurveTA -n "animCurveTA1004";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.26280824457411484 3 1.9963037400559176 
		6 -11.783606204137085 10 -10.333092121253337 20 -11.783606204137085 24 -2.8983658144265312 
		28 5.037822461176523 32 -0.26280824457411484;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.7052074670791626 0.73511123657226563 
		1 0.96344822645187378 0.67235147953033447 0.98544639348983765 0.82159823179244995;
	setAttr -s 8 ".kiy[0:7]"  0 -0.70900100469589233 -0.67794650793075562 
		0 0.26789459586143494 0.74023205041885376 0.16998639702796936 -0.57006692886352539;
createNode animCurveTA -n "animCurveTA1005";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 6.5086084195154994 3 6.3786479652115133 
		6 7.5423825101935913 10 7.4167347966497221 20 7.5423825101935913 24 6.6727974003941704 
		28 6.1239022477803227 32 6.5086084195154994;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.99595540761947632 0.99699890613555908 
		1 0.99961316585540771 0.99571806192398071 0.99994224309921265 0.99873447418212891;
	setAttr -s 8 ".kiy[0:7]"  0 0.089848928153514862 0.077415682375431061 
		0 -0.027812430635094643 -0.092441782355308533 -0.010745523497462273 0.050294209271669388;
createNode animCurveTA -n "animCurveTA1006";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.47197901174667056 3 1.6329203501433724 
		6 2.0923016578577855 10 0.62491185199516064 20 0.62491185199516064 24 0.62622119873454107 
		28 0.62731213752257731 32 -0.47197901174667056;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.9758649468421936 0.99716955423355103 
		0.99849748611450195 1 1 0.99742680788040161 0.98980486392974854;
	setAttr -s 8 ".kiy[0:7]"  0 0.21837486326694489 -0.075185447931289673 
		-0.054797790944576263 4.896945392829366e-005 0.00015709831495769322 -0.071692086756229401 
		-0.1424298882484436;
createNode animCurveTA -n "animCurveTA1007";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.6163460272109138 3 -5.9572552200413194 
		6 -6.899880481305205 10 1.1641825201681875 20 1.1641825201681875 24 -3.8840070108449005 
		28 -5.1467380795344901 32 -1.6163460272109138;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.9081193208694458 0.88259142637252808 
		0.95740491151809692 0.98263967037200928 0.92425966262817383 0.98916471004486084 
		0.90775585174560547;
	setAttr -s 8 ".kiy[0:7]"  0 -0.41871145367622375 0.47014081478118896 
		0.28874877095222473 -0.18552419543266296 -0.38176435232162476 0.14680992066860199 
		0.41949886083602905;
createNode animCurveTA -n "animCurveTA1008";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.9660530560192304 3 1.9624155241830841 
		6 1.9403913422709886 10 2.0392151659083639 20 2.0392151659083639 24 1.9840981620606046 
		28 1.970241689140211 32 1.9660530560192304;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.99999749660491943 0.99998348951339722 
		0.99999314546585083 0.99999785423278809 0.99998980760574341 0.9999992847442627 
		0.99999982118606567;
	setAttr -s 8 ".kiy[0:7]"  0 -0.0022394014522433281 0.0057445047423243523 
		0.0036959771532565355 -0.0020613668020814657 -0.0045142574235796928 -0.0011810485739260912 
		-0.00054829090368002653;
createNode animCurveTA -n "animCurveTA1009";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1010";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1011";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 56.683882055276058 3 56.683882055276058 
		6 27.080064458283051 10 27.080064458283051 20 27.080064458283051 24 27.080064458283051 
		28 27.080064458283051 32 56.683882055276058;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.36098352074623108 0.41157516837120056 
		1 1 1 0.45863071084022522 0.24987001717090607;
	setAttr -s 8 ".kiy[0:7]"  0 -0.93257218599319458 -0.91137582063674927 
		0 0 0 0.88862693309783936 0.96827936172485352;
createNode animCurveTA -n "animCurveTA1012";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -10.597736793341939 3 -10.597736793341939 
		6 -10.597736793341939 10 10.423754966968488 20 10.423754966968488 24 10.423754966968488 
		28 10.423754966968488 32 -10.597736793341939;
createNode animCurveTA -n "animCurveTA1013";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 64.03458729655091 3 64.03458729655091 
		6 64.03458729655091 10 27.722848255843903 20 27.722848255843903 24 27.722848255843903 
		28 27.722848255843903 32 64.03458729655091;
createNode animCurveTA -n "animCurveTA1014";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -3.5980180414270868 3 -3.5980180414270868 
		6 -3.5980180414270868 10 21.576484776388227 20 21.576484776388227 24 21.576484776388227 
		28 21.576484776388227 32 -3.5980180414270868;
createNode animCurveTA -n "animCurveTA1015";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1016";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1017";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 44.839776244285055 3 44.839776244285055 
		6 44.839776244285055 10 44.839776244285055 20 44.839776244285055 24 44.839776244285055 
		28 44.839776244285055 32 44.839776244285055;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode clipLibrary -n "clipLibrary2";
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
	setAttr -s 3 ".sol";
connectAttr "ndr_sway_left.st" "clipLibrary2.st[0]";
connectAttr "ndr_sway_left.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL329.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL330.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL331.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL332.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL333.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA905.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU63.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU64.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU65.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU66.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU67.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU68.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU69.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU70.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA906.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA907.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA908.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL334.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL335.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL336.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL337.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL338.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL339.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA909.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA910.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA911.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL340.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL341.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL342.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA912.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA913.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA914.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA915.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA916.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA917.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA918.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA919.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA920.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTL343.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTL344.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTL345.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTL346.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTL347.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTL348.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL349.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL350.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL351.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTA921.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTA922.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTA923.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTA924.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTA925.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTA926.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA927.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA928.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA929.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA930.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA931.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA932.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA933.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA934.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA935.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA936.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA937.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA938.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA939.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA940.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA941.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA942.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA943.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA944.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA945.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA946.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA947.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA948.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA949.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTL352.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTL353.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTL354.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA950.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA951.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA952.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL355.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL356.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL357.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA953.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA954.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA955.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL358.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL359.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL360.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA956.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA957.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA958.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL361.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL362.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL363.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA959.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA960.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA961.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL364.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL365.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL366.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTL367.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTL368.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTL369.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTA962.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTA963.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTA964.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTA965.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTA966.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTA967.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA968.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA969.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA970.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA971.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA972.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA973.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA974.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA975.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA976.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA977.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA978.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA979.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA980.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA981.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA982.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA983.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA984.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA985.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA986.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA987.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA988.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA989.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA990.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA991.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA992.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA993.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA994.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA995.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA996.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA997.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA998.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA999.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA1000.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA1001.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA1002.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA1003.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA1004.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA1005.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA1006.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA1007.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA1008.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA1009.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA1010.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA1011.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA1012.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA1013.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA1014.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA1015.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA1016.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA1017.a" "clipLibrary2.cel[0].cev[161].cevr";
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
// End of ndr-m_sway_left.ma
