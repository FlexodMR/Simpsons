//Maya ASCII 4.0 scene
//Name: cdr_wave.ma
//Last modified: Tue, Aug 06, 2002 02:31:47 PM
requires maya "4.0";
requires "p3dDeformer" "17.1.1.0";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dSimpleShader" "17.1";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "cdr_waveSource";
	setAttr ".ihi" 0;
	setAttr ".du" 29;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL329";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 29 1;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL330";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.62276245245106443 29 0.62276245245106443;
createNode animCurveTL -n "animCurveTL332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
createNode animCurveTL -n "animCurveTL333";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.44556925341531151 29 0.44556925341531151;
createNode animCurveTA -n "animCurveTA911";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
createNode animCurveTU -n "animCurveTU63";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU64";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU65";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU66";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU67";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU68";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
createNode animCurveTU -n "animCurveTU70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
createNode animCurveTA -n "animCurveTA912";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA913";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA914";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL334";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL335";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL336";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.1582036071592778 4 1.1582036071592778 
		10 1.1582036071592778 13 1.1582036071592778 16 1.1582036071592778 20 1.1582036071592778 
		22 1.1582036071592778 24 1.1582036071592778 29 1.1582036071592778;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.8024274637299138 4 0.8024274637299138 
		10 0.8024274637299138 13 0.8024274637299138 16 0.8024274637299138 20 0.8024274637299138 
		22 0.8024274637299138 24 0.8024274637299138 29 0.8024274637299138;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.6023458233856847 4 1.6023458233856847 
		10 1.6023458233856847 13 1.6023458233856847 16 1.6023458233856847 20 1.6023458233856847 
		22 1.6023458233856847 24 1.6023458233856847 29 1.6023458233856847;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA915";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -2.7149195703006082 4 -2.7149195703006082 
		10 -2.7149195703006082 13 -2.7149195703006082 16 -2.7149195703006082 20 -2.7149195703006082 
		22 -2.7149195703006082 24 -2.7149195703006082 29 -2.7149195703006082;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA916";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -9.448854147766081 4 -9.448854147766081 
		10 -9.448854147766081 13 -9.448854147766081 16 -9.448854147766081 20 -9.448854147766081 
		22 -9.448854147766081 24 -9.448854147766081 29 -9.448854147766081;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA917";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.9042146334359309 4 2.9042146334359309 
		10 2.9042146334359309 13 2.9042146334359309 16 2.9042146334359309 20 2.9042146334359309 
		22 2.9042146334359309 24 2.9042146334359309 29 2.9042146334359309;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL340";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.635760016530293 4 1.635760016530293 
		10 1.635760016530293 13 1.635760016530293 16 1.635760016530293 20 1.635760016530293 
		22 1.635760016530293 24 1.635760016530293 29 1.635760016530293;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL341";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.79733745153385938 4 0.79733745153385938 
		10 0.79733745153385938 13 0.79733745153385938 16 0.79733745153385938 20 0.79733745153385938 
		22 0.79733745153385938 24 0.79733745153385938 29 0.79733745153385938;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL342";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.6031411449878863 4 1.6031411449878863 
		10 1.6031411449878863 13 1.6031411449878863 16 1.6031411449878863 20 1.6031411449878863 
		22 1.6031411449878863 24 1.6031411449878863 29 1.6031411449878863;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA918";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 13 0 16 0 20 0 22 
		0 24 0 29 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA919";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 14.260733409455982 4 14.260733409455984 
		10 14.260733409455984 13 14.260733409455984 16 14.260733409455984 20 14.260733409455984 
		22 14.260733409455984 24 14.260733409455984 29 14.260733409455982;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA920";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 13 0 16 0 20 0 22 
		0 24 0 29 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA921";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA922";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA923";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA924";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA925";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA926";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA927";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA928";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA929";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA930";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA931";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA932";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.011621961304049206 4 -0.011621961304049206 
		10 -0.011621961304049206 13 -0.011621961304049206 16 -0.011621961304049206 
		20 -0.011621961304049206 22 -0.011621961304049206 24 -0.011621961304049206 
		29 -0.011621961304049206;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.53592894662340362 4 0.53592894662340362 
		10 0.53592894662340362 13 0.53592894662340362 16 0.53592894662340362 20 0.53592894662340362 
		22 0.53592894662340362 24 0.53592894662340362 29 0.53592894662340362;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.1714982742260704 4 1.1714982742260704 
		10 1.1714982742260704 13 1.1714982742260704 16 1.1714982742260704 20 1.1714982742260704 
		22 1.1714982742260704 24 1.1714982742260704 29 1.1714982742260704;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.028577078352958335 4 -0.028577078352958335 
		10 -0.028577078352958335 13 -0.028577078352958335 16 -0.028577078352958335 
		20 -0.028577078352958335 22 -0.028577078352958335 24 -0.028577078352958335 
		29 -0.028577078352958335;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.6265256146554018 4 0.6265256146554018 
		10 0.6265256146554018 13 0.6265256146554018 16 0.6265256146554018 20 0.6265256146554018 
		22 0.6265256146554018 24 0.6265256146554018 29 0.6265256146554018;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.1827937027824305 4 1.1827937027824305 
		10 1.1827937027824305 13 1.1827937027824305 16 1.1827937027824305 20 1.1827937027824305 
		22 1.1827937027824305 24 1.1827937027824305 29 1.1827937027824305;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.4056785302309036 4 1.4056785302309036 
		10 1.4056785302309036 13 1.4056785302309036 16 1.4056785302309036 20 1.4056785302309036 
		22 1.4056785302309036 24 1.4056785302309036 29 1.4056785302309036;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.96452787963755071 4 0.96452787963755071 
		10 0.96452787963755071 13 0.96452787963755071 16 0.96452787963755071 20 0.96452787963755071 
		22 0.96452787963755071 24 0.96452787963755071 29 0.96452787963755071;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.0057239815788857 4 1.0057239815788857 
		10 1.0057239815788857 13 1.0057239815788857 16 1.0057239815788857 20 1.0057239815788857 
		22 1.0057239815788857 24 1.0057239815788857 29 1.0057239815788857;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA933";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -19.688418588621207 4 -19.688418588621207 
		10 -19.688418588621207 13 -19.688418588621207 16 -19.688418588621207 20 -19.688418588621207 
		22 -19.688418588621207 24 -19.688418588621207 29 -19.688418588621207;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA934";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1.6085540494966317 4 -1.6085540494966313 
		10 -1.6085540494966313 13 -1.6085540494966313 16 -1.6085540494966313 20 -1.6085540494966313 
		22 -1.6085540494966313 24 -1.6085540494966313 29 -1.6085540494966317;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA935";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.23076428718713959 4 0.23076428718713959 
		10 0.23076428718713959 13 0.23076428718713959 16 0.23076428718713959 20 0.23076428718713959 
		22 0.23076428718713959 24 0.23076428718713959 29 0.23076428718713959;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA936";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA937";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA938";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA939";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA940";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA941";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA942";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA943";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA944";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA945";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA946";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA947";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA948";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA949";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA950";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA951";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA952";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA953";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA954";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA955";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA956";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -5.6803276403432976 4 -5.6803276403432976 
		10 -5.6803276403432976 13 -5.6803276403432976 16 -5.6803276403432976 20 -5.6803276403432976 
		22 -5.6803276403432976 24 -5.6803276403432976 29 -5.6803276403432976;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA957";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -6.1570151121354497 4 -6.1570151121354488 
		10 -6.1570151121354488 13 -6.1570151121354488 16 -6.1570151121354488 20 -6.1570151121354488 
		22 -6.1570151121354488 24 -6.1570151121354488 29 -6.1570151121354497;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA958";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 5.3480278027016874 4 5.3480278027016865 
		10 5.3480278027016865 13 5.3480278027016865 16 5.3480278027016865 20 5.3480278027016865 
		22 5.3480278027016865 24 5.3480278027016865 29 5.3480278027016874;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA959";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 13 0 16 0 20 0 22 
		0 24 0 29 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA960";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 13 0 16 0 20 0 22 
		0 24 0 29 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA961";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 13 0 16 0 20 0 22 
		0 24 0 29 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Right_Arm_Hoop_translateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 -0.28153965634655165 1 -0.34978142753380992 
		2 -0.43389331441394419 3 -0.51264682687533525 4 -0.55842761250216411 5 -0.56590983900967173 
		6 -0.55313494068868463 7 -0.52665939937707928 8 -0.49319027391719572 9 -0.45899318661629113 
		10 -0.42973485098980763 11 -0.40701808627698155 12 -0.37943224974214818 13 
		-0.33176500439770579 14 -0.22640928519852666 15 -0.097139587406818745 16 
		-0.041333418698369255 17 -0.10288523602664895 18 -0.2223576554961133 19 -0.34742320973293661 
		20 -0.42973485098980763 21 -0.41548007969932144 22 -0.33176500439770579 23 
		-0.16704643952753556 24 -0.041333418698369255 25 -0.051761894629560885 26 
		-0.094694082568612004 27 -0.15628796563582811 28 -0.2229038000976695 29 -0.28153965634655165;
createNode animCurveTL -n "Right_Arm_Hoop_translateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0.062866594353928579 1 0.10323963780875289 
		2 0.14546406559836586 3 0.18670719700918928 4 0.22324492103785154 5 0.25447481064247951 
		6 0.28299221154416271 7 0.30949273134251309 8 0.33471273655056288 9 0.35937447182662124 
		10 0.38417976047367658 11 0.42753595416314993 12 0.46978857712268551 13 0.45315773525524383 
		14 0.30582322070582274 15 0.10071252898799013 16 -0.0085834903071578643 17 
		0.030445556508038197 18 0.14032925684572137 19 0.27502340262814956 20 0.38417976047367658 
		21 0.46244825280648799 22 0.45315773525524383 23 0.2106089514857942 24 -0.0085834903071578643 
		25 -0.039026494949868255 26 -0.030675795415776468 27 0.00012758691421866253 
		28 0.036900325565554101 29 0.062866594353928579;
createNode animCurveTL -n "Right_Arm_Hoop_translateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0.94758108715296308 1 0.85444400004431131 
		2 0.76286098562311 3 0.69384367397189395 4 0.66074532544900511 5 0.66012925603338302 
		6 0.67655327418380073 7 0.70313370901193439 8 0.73330734588209723 9 0.76017383526905469 
		10 0.77625328224456791 11 0.764676511298371 12 0.73933402984215402 13 0.73541929600453348 
		14 0.77896321792454171 15 0.84268764415195874 16 0.87906225131496774 17 0.87153688263851326 
		18 0.84393514693552119 19 0.80798405527557793 20 0.77625328224456791 21 0.74189543083800857 
		22 0.73541929600453348 23 0.8056283504895021 24 0.87906225131496774 25 0.90716626394825528 
		26 0.9252059791742534 27 0.93533648171090222 28 0.94106365106342749 29 0.94758108715296308;
createNode animCurveTA -n "Right_Arm_Hoop_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 -29.993438056114957 1 26.243691353351785 
		2 99.106652978181188 3 179.53153867376312 4 -125.69947500722334 5 -110.15284956212854 
		6 -114.186356194013 7 -130.53407100172834 8 -153.14216529656071 9 -176.6441893183534 
		10 164.73519259034114 11 146.23660322187885 12 132.87461241408161 13 131.29690791387381 
		14 141.5678292450969 15 156.3993910388721 16 164.303011426578 17 164.4158128588509 
		18 166.17852957512847 19 168.75095537517672 20 164.73519259034114 21 140.89136357397626 
		22 131.29690791387381 23 156.67256628330506 24 164.303011426578 25 129.98837084682472 
		26 89.807830039485282 27 47.627004970237145 28 6.31197758712631 29 -29.993438056114957;
createNode animCurveTA -n "Right_Arm_Hoop_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 62.825162069071652 1 50.965693023338069 
		2 48.496092967353739 3 50.402294572771247 4 46.237415186831527 5 43.382003608454852 
		6 44.018475705437289 7 47.389918584151253 8 51.716920750259504 9 54.919287741065432 
		10 54.915120695464168 11 44.380220832445183 12 21.460877455749927 13 5.2643303521462093 
		14 10.16681590053528 15 25.674365495493095 16 39.32878213266774 17 49.041754598640644 
		18 56.928989026331976 19 58.428606430410191 20 54.915120695464168 21 33.987075193075867 
		22 5.2643303521462093 23 19.536897379962209 24 39.32878213266774 25 42.331840884459304 
		26 44.40672846163632 27 48.068139289267258 28 54.319015747183528 29 62.825162069071652;
createNode animCurveTA -n "Right_Arm_Hoop_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 65.11865964432144 1 124.43205076635927 
		2 -159.48847919332147 3 -79.316060147646809 4 -23.610365784781131 5 0.6505263262512857 
		6 11.262910519601963 7 11.854024065270817 8 4.8372399331332474 9 -7.8523381324482049 
		10 -23.672288644059947 11 -61.653719669000218 12 -110.23961299102734 13 -140.6118862220992 
		14 -147.58348172050444 15 -142.6991720448564 16 -131.03624791907873 17 -107.69438306313897 
		18 -70.954732945247727 19 -35.714681261879235 20 -23.672288644059947 21 -82.71595390366565 
		22 -140.6118862220992 23 -134.51505313102987 24 -131.03624791907873 25 -161.78201500522437 
		26 163.38768383710473 27 127.71821076885387 28 93.798659500970487 29 65.11865964432144;
createNode animCurveTL -n "Left_Arm_Hoop_translateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0.32620582435379875 1 0.37678943415425609 
		2 0.4290487225351643 3 0.4726158027111495 4 0.49858314988673075 5 0.50794640738580366 
		6 0.50905801552962116 7 0.50451236335473881 8 0.4968167782907244 9 0.48850719718325508 
		10 0.48219695369762916 11 0.47522251539513322 12 0.46604569736527252 13 0.45898095402900907 
		14 0.45501648270319323 15 0.45301137168901678 16 0.4542244163425781 17 0.46032533829595451 
		18 0.46952333136595742 19 0.47805076832925436 20 0.48219695369762916 21 0.47248425121496185 
		22 0.45898095402900907 23 0.45942008161900616 24 0.4542244163425781 25 0.43393704120009347 
		26 0.40960918678798919 27 0.38251714097327805 28 0.35414395133035781 29 0.32620582435379875;
createNode animCurveTL -n "Left_Arm_Hoop_translateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0.033439979479083518 1 0.032799830390434048 
		2 0.031607980721082569 3 0.030132244584796603 4 0.029012657814568996 5 0.028629938845544132 
		6 0.028724456067623125 7 0.029111228778324092 8 0.029572578974877192 9 0.029865599524517145 
		10 0.029741395843324091 11 0.027775438897510427 12 0.024685304507555138 13 
		0.023975326124076535 14 0.029219463010780836 15 0.037215854643536973 16 0.04197875813032919 
		17 0.041529751472326709 18 0.038426902455238533 19 0.03386446928665203 20 
		0.029741395843324091 21 0.025609563567976223 22 0.023975326124076535 23 0.033440521861169914 
		24 0.04197875813032919 25 0.041725591335778446 26 0.039910406505152006 27 
		0.037419469144911302 28 0.035040070426354257 29 0.033439979479083518;
createNode animCurveTL -n "Left_Arm_Hoop_translateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0.90790943701675209 1 0.87216078247241557 
		2 0.83132515712037736 3 0.79390698296315954 4 0.76999153519274122 5 0.76103062645694342 
		6 0.75991374805744227 7 0.76423883280017313 8 0.7715206101956642 9 0.77930829618855457 
		10 0.78522986116726512 11 0.7925267605501507 12 0.80199761150530691 13 0.80781655871058133 
		14 0.80696454898869274 15 0.80259933422307972 16 0.7982047578934055 17 0.79400105405305055 
		18 0.78918242243529879 19 0.78565581605997292 20 0.78522986116726512 21 0.79621243797479013 
		22 0.80781655871058133 23 0.79989133000449042 24 0.7982047578934055 25 0.81647155681594685 
		26 0.83863875024901879 27 0.86255916382359421 28 0.8862455756143699 29 0.90790943701675209;
createNode animCurveTA -n "Left_Arm_Hoop_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 -34.320242729481222 1 -40.937465105133228 
		2 -47.927385813247398 3 -53.802301286287928 4 -57.299645926822343 5 -58.568240027587642 
		6 -58.74181423981085 7 -58.153848631678571 8 -57.125968667832176 9 -55.990137216314373 
		10 -55.09396570568186 11 -53.96193704345432 12 -52.484614582695137 13 -51.499766154846235 
		14 -51.330014859729722 15 -51.607775174734741 16 -52.095200354269814 17 -52.875683555148477 
		18 -53.914652804748627 19 -54.792254248961882 20 -55.09396570568186 21 -53.425302190404551 
		22 -51.499766154846235 23 -52.178678248228486 24 -52.095200354269814 25 -49.427799509889212 
		26 -46.070942647054139 27 -42.250510977165042 28 -38.233923823845352 29 -34.320242729481222;
createNode animCurveTA -n "Left_Arm_Hoop_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 -66.497970732237533 1 -66.448227446359027 
		2 -66.131268271656069 3 -65.644996487940659 4 -65.253798315002811 5 -65.114755770678755 
		6 -65.141685978833166 7 -65.268110854799531 8 -65.41888619132385 9 -65.521229028126498 
		10 -65.509669937211086 11 -65.228666140781058 12 -64.761095355828488 13 -64.426231379753105 
		14 -64.371288525663033 15 -64.462154929646161 16 -64.615985708093334 17 -64.853166196545359 
		18 -65.161509548172987 19 -65.418405256279371 20 -65.509669937211086 21 -65.027177187721378 
		22 -64.426231379753105 23 -64.356703287761192 24 -64.615985708093334 25 -65.079987320379331 
		26 -65.550255674158961 27 -65.964886179911161 28 -66.284214912126771 29 -66.497970732237533;
createNode animCurveTA -n "Left_Arm_Hoop_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 -84.523994027970701 1 -78.96950929265175 
		2 -73.124140845241271 3 -68.246959648622692 4 -65.366409580138097 5 -64.342936824401136 
		6 -64.236554169632399 7 -64.753883925878512 8 -65.613808248939151 9 -66.525065021429356 
		10 -67.180807950662796 11 -67.865441417586865 12 -68.67697483350068 13 -69.079657682066596 
		14 -68.744232433673787 15 -68.037655855928435 16 -67.496034827938146 17 -67.228151943298258 
		18 -67.038818646632549 19 -67.005292306995884 20 -67.180807950662796 21 -68.206358851843461 
		22 -69.079657682066596 23 -67.801503001362349 24 -67.496034827938146 25 -69.96251111992666 
		26 -73.170606621844058 27 -76.866411615857956 28 -80.757599065991144 29 -84.523994027970701;
createNode animCurveTL -n "animCurveTL358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.1344099872624747 4 0.72611087557126786 
		10 0.84537830002116476 13 0.9798900923413606 16 1.2465703605113885 20 0.84537830002116476 
		22 0.9798900923413606 24 1.2465703605113885 29 1.1344099872624747;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.011531993746757507 0.011820473708212376 
		0.004985081497579813 0.017344072461128235 0.0074994065798819065 0.0033234106376767159 
		0.01509881392121315 0.014858031645417213;
	setAttr -s 9 ".kiy[0:8]"  0 -0.99993348121643066 0.99993014335632324 
		0.99998760223388672 -0.99984955787658691 -0.99997186660766602 0.99999445676803589 
		0.99988603591918945 -0.99988961219787598;
createNode animCurveTL -n "animCurveTL359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.1296110275135671 4 2.1650800747679013 
		10 2.3551743442959032 13 2.4620018943842759 16 2.0448870542881905 20 2.3551743442959032 
		22 2.4620018943842759 24 2.0448870542881905 29 2.1296110275135671;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.014776202850043774 0.010103153996169567 
		0.0064455056563019753 0.021836847066879272 0.0047947876155376434 0.0042970534414052963 
		0.0070196748711168766 0.019667917862534523;
	setAttr -s 9 ".kiy[0:8]"  0 0.99989080429077148 0.99994897842407227 
		-0.99997919797897339 -0.99976152181625366 0.99998849630355835 -0.99999076128005981 
		-0.99997538328170776 0.99980658292770386;
createNode animCurveTL -n "animCurveTL360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.0696046407532309 4 1.6091893550759122 
		10 1.7309502071020615 13 1.6857958601161931 16 1.9546169516418481 20 1.7309502071020615 
		22 1.6857958601161931 24 1.9546169516418481 29 2.0696046407532309;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.009842398576438427 0.039131172001361847 
		0.00894151721149683 0.051605753600597382 0.0074396859854459763 0.0059611438773572445 
		0.0060793035663664341 0.014492780901491642;
	setAttr -s 9 ".kiy[0:8]"  0 -0.99995154142379761 0.99923408031463623 
		0.99996000528335571 0.99866753816604614 -0.99997234344482422 0.99998223781585693 
		0.99998152256011963 0.99989497661590576;
createNode animCurveTA -n "animCurveTA968";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -44.889076788073439 4 228.79762239095223 
		10 157.85845311794569 13 144.47631739150486 16 180.20706252268477 20 157.85845311794569 
		22 144.47631739150486 24 180.20706252268477 29 -44.889076788073439;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.093783721327781677 0.19974027574062347 
		0.45626401901245117 0.70675987005233765 0.3053877055644989 0.32345494627952576 
		0.070423752069473267 0.042385060340166092;
	setAttr -s 9 ".kiy[0:8]"  0 0.99559259414672852 -0.97984886169433594 
		0.88984447717666626 0.70745354890823364 -0.9522281289100647 0.94624358415603638 
		-0.9975171685218811 -0.99910134077072144;
createNode animCurveTA -n "animCurveTA969";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 71.289995585927571 4 33.773982635542012 
		10 43.14869338662956 13 4.4166028877929859 16 35.872696702090231 20 43.14869338662956 
		22 4.4166028877929859 24 35.872696702090231 29 71.289995585927571;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.56155598163604736 0.50526517629623413 
		0.84420138597488403 0.32627686858177185 0.34228584170341492 0.72412174940109253 
		0.19603627920150757 0.26032596826553345;
	setAttr -s 9 ".kiy[0:8]"  0 -0.82743877172470093 -0.86296415328979492 
		-0.53602612018585205 0.9452742338180542 -0.93959587812423706 -0.68967217206954956 
		0.98059666156768799 0.96552079916000366;
createNode animCurveTA -n "animCurveTA970";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 50.619719123253631 4 334.79763866640991 
		10 332.79571396103603 13 220.63776028957065 16 237.8320930243473 20 332.79571396103603 
		22 220.63776028957065 24 237.8320930243473 29 50.619719123253631;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.067528761923313141 0.1488889753818512 
		0.11979985982179642 0.11836022138595581 0.55457514524459839 0.080186888575553894 
		0.078390948474407196 0.050941593945026398;
	setAttr -s 9 ".kiy[0:8]"  0 0.99771732091903687 -0.98885393142700195 
		-0.9927980899810791 0.99297070503234863 -0.83213365077972412 -0.99677985906600952 
		-0.99692267179489136 -0.99870163202285767;
createNode animCurveTL -n "animCurveTL361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.5330905047330146 4 2.5330905047330146 
		10 2.5330905047330146 13 2.5330905047330146 16 2.5330905047330146 20 2.5330905047330146 
		22 2.5330905047330146 24 2.5330905047330146 29 2.5330905047330146;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.0768417541934041 4 2.0768417541934041 
		10 2.0768417541934041 13 2.0768417541934041 16 2.0768417541934041 20 2.0768417541934041 
		22 2.0768417541934041 24 2.0768417541934041 29 2.0768417541934041;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.0481292103665369 4 2.0481292103665369 
		10 2.0481292103665369 13 2.0481292103665369 16 2.0481292103665369 20 2.0481292103665369 
		22 2.0481292103665369 24 2.0481292103665369 29 2.0481292103665369;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA971";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -36.33267118790765 4 -36.332671187907607 
		10 -36.332671187907607 13 -36.332671187907607 16 -36.332671187907607 20 -36.332671187907607 
		22 -36.332671187907607 24 -36.332671187907607 29 -36.33267118790765;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA972";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -76.683613894212968 4 -76.683613894212968 
		10 -76.683613894212968 13 -76.683613894212968 16 -76.683613894212968 20 -76.683613894212968 
		22 -76.683613894212968 24 -76.683613894212968 29 -76.683613894212968;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA973";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -83.339653964504663 4 -83.339653964504663 
		10 -83.339653964504663 13 -83.339653964504663 16 -83.339653964504663 20 -83.339653964504663 
		22 -83.339653964504663 24 -83.339653964504663 29 -83.339653964504663;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.578730476483856 4 0.578730476483856 
		10 0.578730476483856 13 0.578730476483856 16 0.578730476483856 20 0.578730476483856 
		22 0.578730476483856 24 0.578730476483856 29 0.578730476483856;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1.3751169572549602 4 -1.3751169572549602 
		10 -1.3751169572549602 13 -1.3751169572549602 16 -1.3751169572549602 20 -1.3751169572549602 
		22 -1.3751169572549602 24 -1.3751169572549602 29 -1.3751169572549602;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.21739896228115529 4 -0.21739896228115529 
		10 -0.21739896228115529 13 -0.21739896228115529 16 -0.21739896228115529 20 
		-0.21739896228115529 22 -0.21739896228115529 24 -0.21739896228115529 29 -0.21739896228115529;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.48508072212835623 4 -0.48508072212835623 
		10 -0.28136736827078468 13 -0.85337013621518387 16 -1.2563787180723225 20 
		-0.28136736827078468 22 -0.85337013621518387 24 -1.2563787180723225 29 -0.48508072212835623;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.016360670328140259 0.0081454971805214882 
		0.0020512538030743599 0.0040792003273963928 0.00496261240914464 0.0013675041263923049 
		0.0063354698941111565 0.0021608541719615459;
	setAttr -s 9 ".kiy[0:8]"  0 0.99986612796783447 -0.99996680021286011 
		-0.99999791383743286 0.99999165534973145 0.99998766183853149 -0.99999904632568359 
		0.99997991323471069 0.99999767541885376;
createNode animCurveTL -n "animCurveTL368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1.3461376073222053 4 -1.3461376073222053 
		10 -1.4701534321705998 13 -0.0090159761435733305 16 -0.17470435499944162 
		20 -1.4701534321705998 22 -0.0090159761435733305 24 -0.17470435499944162 
		29 -1.3461376073222053;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.026868587359786034 0.0022436196450144053 
		0.0015438642585650086 0.0015969272935763001 0.012069973163306713 0.0010292435763403773 
		0.0017450392479076982 0.001422756933607161;
	setAttr -s 9 ".kiy[0:8]"  0 -0.99963897466659546 0.99999749660491943 
		0.99999880790710449 -0.99999874830245972 0.99992716312408447 0.99999946355819702 
		-0.99999845027923584 -0.99999898672103882;
createNode animCurveTL -n "animCurveTL369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.22135527095932556 4 -0.22135527095932556 
		10 0.51248572539349302 13 1.2348040217981324 16 1.107671173160631 20 0.51248572539349302 
		22 1.2348040217981324 24 1.107671173160631 29 -0.22135527095932556;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.0045422632247209549 0.002060209633782506 
		0.0033602784387767315 0.0032303223852068186 0.015729628503322601 0.0022401923779398203 
		0.0016023867065086961 0.0012540495954453945;
	setAttr -s 9 ".kiy[0:8]"  0 0.99998968839645386 0.99999785423278809 
		0.99999433755874634 -0.99999475479125977 0.99987626075744629 0.99999749660491943 
		-0.99999868869781494 -0.99999922513961792;
createNode animCurveTA -n "animCurveTA974";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 12.253734489678925 4 12.253734489678925 
		10 12.253734489678925 13 12.253734489678925 16 12.253734489678925 20 12.253734489678925 
		22 12.253734489678925 24 12.253734489678925 29 12.253734489678925;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA975";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -65.746751280844975 4 -65.746751280844961 
		10 -65.746751280844961 13 -65.746751280844961 16 -65.746751280844961 20 -65.746751280844961 
		22 -65.746751280844961 24 -65.746751280844961 29 -65.746751280844975;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA976";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 13 0 16 0 20 0 22 
		0 24 0 29 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA977";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.061808866237340665 4 -0.061808866237337522 
		10 -0.061808866237337522 13 -0.061808866237337522 16 -0.061808866237337522 
		20 -0.061808866237337522 22 -0.061808866237337522 24 -0.061808866237337522 
		29 -0.061808866237340665;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA978";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -59.058178941076754 4 -59.058178941076754 
		10 -59.058178941076754 13 -59.058178941076754 16 -59.058178941076754 20 -59.058178941076754 
		22 -59.058178941076754 24 -59.058178941076754 29 -59.058178941076754;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA979";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 16.57914742975785 4 16.579147429757843 
		10 16.579147429757843 13 16.579147429757843 16 16.579147429757843 20 16.579147429757843 
		22 16.579147429757843 24 16.579147429757843 29 16.57914742975785;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA980";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.5572674112203639 4 8.5572674112203622 
		10 8.5572674112203622 13 8.5572674112203622 16 8.5572674112203622 20 8.5572674112203622 
		22 8.5572674112203622 24 8.5572674112203622 29 8.5572674112203639;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA981";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 15.711328223519061 4 15.711328223519057 
		10 15.711328223519057 13 15.711328223519057 16 15.711328223519057 20 15.711328223519057 
		22 15.711328223519057 24 15.711328223519057 29 15.711328223519061;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA982";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 13 0 16 0 20 0 22 
		0 24 0 29 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA983";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 13 0 16 0 20 0 22 
		0 24 0 29 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA984";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 13 0 16 0 20 0 22 
		0 24 0 29 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA985";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 13 0 16 0 20 0 22 
		0 24 0 29 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA986";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 13 0 16 0 20 0 22 
		0 24 0 29 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA987";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 13 0 16 0 20 0 22 
		0 24 0 29 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA988";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -94.468308159208192 4 -94.468308159208192 
		10 -94.468308159208192 13 -94.468308159208192 16 -94.468308159208192 20 -94.468308159208192 
		22 -94.468308159208192 24 -94.468308159208192 29 -94.468308159208192;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA989";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 72.836273346919612 4 72.836273346919612 
		10 72.836273346919612 13 72.836273346919612 16 72.836273346919612 20 72.836273346919612 
		22 72.836273346919612 24 72.836273346919612 29 72.836273346919612;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA990";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 6.0130362214677122 4 6.0130362214677122 
		10 6.0130362214677122 13 6.0130362214677122 16 6.0130362214677122 20 6.0130362214677122 
		22 6.0130362214677122 24 6.0130362214677122 29 6.0130362214677122;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA991";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 13 0 16 0 20 0 22 
		0 24 0 29 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA992";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 13 0 16 0 20 0 22 
		0 24 0 29 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA993";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 56.683882055276058 4 56.683882055276051 
		10 56.683882055276051 13 56.683882055276051 16 56.683882055276051 20 56.683882055276051 
		22 56.683882055276051 24 56.683882055276051 29 56.683882055276058;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA994";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA995";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA996";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA997";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA998";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA999";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 29 13.994403295754109;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1000";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1001";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 29 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1002";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 29 13.994403295754109;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1003";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 13 0 16 0 20 0 22 
		0 24 0 29 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1004";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 13 0 16 0 20 0 22 
		0 24 0 29 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1005";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 44.839776244285055 4 44.839776244285055 
		10 9.6845970545823086 13 9.6845970545823086 16 15.589116971301147 20 9.6845970545823086 
		22 9.6845970545823086 24 15.589116971301147 29 44.839776244285055;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.47736892104148865 0.43924638628959656 
		0.88893288373947144 1 0.88893288373947144 0.79121893644332886 0.35545116662979126 
		0.31034478545188904;
	setAttr -s 9 ".kiy[0:8]"  0 -0.87870293855667114 -0.89836663007736206 
		0.45803743600845337 0 -0.45803743600845337 0.61153298616409302 0.93469482660293579 
		0.95062404870986938;
createNode animCurveTA -n "animCurveTA1006";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 13 0 16 0 20 0 22 
		0 24 0 29 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1007";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 13 0 16 0 20 0 22 
		0 24 0 29 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1008";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 13 0 16 0 20 0 22 
		0 24 0 29 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1009";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.55766507474896454 4 -2.9999659994925363 
		10 -2.7523753050936062 13 -3.6700660851738469 16 -4.3957300823924328 20 -2.7523753050936062 
		22 -3.6700660851738469 24 -4.3957300823924328 29 -0.55766507474896454;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.9934619665145874 0.9992409348487854 
		0.98987275362014771 0.99765235185623169 0.99800091981887817 0.97763609886169434 
		0.97395449876785278 0.92786067724227905;
	setAttr -s 9 ".kiy[0:8]"  0 -0.11416344344615936 -0.03895525261759758 
		-0.14195741713047028 0.068481959402561188 0.063199535012245178 -0.21030382812023163 
		0.22674347460269928 0.3729269802570343;
createNode animCurveTA -n "animCurveTA1010";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -2.0198239624003347 4 -1.6876835747884182 
		10 -1.7213546386231693 13 -2.2065283486818745 16 -2.4168618542039479 20 -1.7213546386231693 
		22 -2.2065283486818745 24 -2.4168618542039479 29 -2.0198239624003347;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.9998779296875 0.99954473972320557 
		0.99816316366195679 0.99934214353561401 0.99983161687850952 0.99588131904602051 
		0.99990248680114746 0.99913674592971802;
	setAttr -s 9 ".kiy[0:8]"  0 0.015625910833477974 -0.03017142228782177 
		-0.060582969337701797 0.036267034709453583 0.018351968377828598 -0.090666711330413818 
		0.013964094221591949 0.041541825979948044;
createNode animCurveTA -n "animCurveTA1011";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 7.5513277031901893 4 8.4565873347196554 
		10 8.3648157362878379 13 6.933829888209341 16 6.2325849881297586 20 8.3648157362878379 
		22 6.933829888209341 24 6.2325849881297586 29 7.5513277031901893;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.99909412860870361 0.99609881639480591 
		0.98312550783157349 0.99432027339935303 0.99813282489776611 0.96318668127059937 
		0.99893498420715332 0.99059867858886719;
	setAttr -s 9 ".kiy[0:8]"  0 0.042555548250675201 -0.088244825601577759 
		-0.18293236196041107 0.10642954707145691 0.061080899089574814 -0.26883342862129211 
		0.046139538288116455 0.1368001252412796;
createNode animCurveTA -n "animCurveTA1012";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.95273800592490188 4 -7.2380846937592773 
		10 -3.2032878435691954 13 -4.2787852112080982 16 -2.0540805040498866 20 -2.7690900924890163 
		22 -3.0205464117192928 24 -2.7690900924890163 29 0.95273800592490188;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.97713220119476318 0.98550111055374146 
		0.99500882625579834 0.99368429183959961 0.99646222591400146 1 0.95856159925460815 
		0.93173372745513916;
	setAttr -s 9 ".kiy[0:8]"  0 -0.21263276040554047 0.16966886818408966 
		0.099786706268787384 0.11221173405647278 -0.084041684865951538 0 0.28488543629646301 
		0.36314228177070618;
createNode animCurveTA -n "animCurveTA1013";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.41955881507249093 4 7.1637060626342777 
		10 5.746608253288259 13 -14.987276115969074 16 -19.538271310822264 20 -18.634709729077187 
		22 -19.63680759231644 24 -18.634709729077187 29 0.41955881507249093;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.96323275566101074 0.61305558681488037 
		0.4127885103225708 0.96473932266235352 0.99996304512023926 1 0.55464577674865723 
		0.44804519414901733;
	setAttr -s 9 ".kiy[0:8]"  0 0.26866841316223145 -0.7900397777557373 
		-0.9108269214630127 -0.26320731639862061 -0.0085985949262976646 0 0.83208656311035156 
		0.89401090145111084;
createNode animCurveTA -n "animCurveTA1014";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.6634293801101623 4 -0.23751859896852084 
		10 -0.67271778784290137 13 12.928331809957179 16 14.184600513509281 20 13.402073426645568 
		22 14.005312393958238 24 13.402073426645568 29 1.6634293801101623;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.99260175228118896 0.79387789964675903 
		0.61072981357574463 0.99937272071838379 0.99987763166427612 1 0.73476910591125488 
		0.63105612993240356;
	setAttr -s 9 ".kiy[0:8]"  0 -0.12141542881727219 0.60807722806930542 
		0.79183906316757202 0.035413563251495361 -0.015643924474716187 0 -0.67831730842590332 
		-0.77573716640472412;
createNode animCurveTA -n "animCurveTA1015";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.0598705588951514 4 1.0598705588951511 
		10 1.0598705588951511 13 1.0598705588951511 16 1.0598705588951511 20 1.0598705588951511 
		22 1.0598705588951511 24 1.0598705588951511 29 1.0598705588951514;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1016";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.26280824457411484 4 0.26280824457411489 
		10 0.26280824457411489 13 0.26280824457411489 16 0.26280824457411489 20 0.26280824457411489 
		22 0.26280824457411489 24 0.26280824457411489 29 0.26280824457411484;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1017";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 6.5086084195154994 4 6.5086084195154994 
		10 6.5086084195154994 13 6.5086084195154994 16 6.5086084195154994 20 6.5086084195154994 
		22 6.5086084195154994 24 6.5086084195154994 29 6.5086084195154994;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1018";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.47197901174667056 4 -6.9667983636843145 
		10 -6.2126848618930692 13 -4.3623780108084977 16 -3.7811217324943858 20 -6.2126848618930692 
		22 -4.3623780108084977 24 -3.7811217324943858 29 0.47197901174667056;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.94385594129562378 0.98871493339538574 
		0.97821968793869019 0.99055778980255127 0.99871599674224854 0.95289576053619385 
		0.94040423631668091 0.91349279880523682;
	setAttr -s 9 ".kiy[0:8]"  0 -0.33035731315612793 0.14980912208557129 
		0.20757226645946503 -0.13709579408168793 -0.050659049302339554 0.30329799652099609 
		0.34005868434906006 0.40685483813285828;
createNode animCurveTA -n "animCurveTA1019";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.6163460272109138 4 1.6163460272109156 
		10 1.6163460272109151 13 1.6163460272109156 16 1.2883195424863816 20 1.6163460272109151 
		22 1.6163460272109156 24 1.2883195424863816 29 1.6163460272109138;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 0.99959051609039307 1 0.99959051609039307 
		0.99907940626144409 1 0.99941051006317139;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 -0.028613990172743797 0 0.028613990172743797 
		-0.042899038642644882 0 0.034330610185861588;
createNode animCurveTA -n "animCurveTA1020";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.9660530560192304 4 1.9660530560192342 
		10 1.9660530560192337 13 1.9660530560192349 16 3.0336883552582896 20 1.9660530560192337 
		22 1.9660530560192349 24 3.0336883552582896 29 1.9660530560192304;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 0.99568784236907959 1 0.99568784236907959 
		0.99037528038024902 1 0.9938080906867981;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0.092767000198364258 0 -0.092767000198364258 
		0.13840804994106293 0 -0.11111025512218475;
createNode animCurveTA -n "animCurveTA1021";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 13 0 16 0 20 0 22 
		0 24 0 29 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1022";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 13 0 16 0 20 0 22 
		0 24 0 29 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1023";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 77.428435288625664 4 77.428435288625664 
		10 26.408081523825583 13 26.408081523825583 16 34.977251092340275 20 26.408081523825583 
		22 26.408081523825583 24 34.977251092340275 29 77.428435288625664;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.35057556629180908 0.31926774978637695 
		0.80084449052810669 1 0.80084449052810669 0.66545301675796509 0.25347545742988586 
		0.21946361660957336;
	setAttr -s 9 ".kiy[0:8]"  0 -0.93653446435928345 -0.94766455888748169 
		0.59887236356735229 0 -0.59887236356735229 0.74643975496292114 0.9673418402671814 
		0.97562068700790405;
createNode animCurveTA -n "animCurveTA1024";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -133.3327622181794 4 -133.3327622181794 
		10 -133.3327622181794 13 -133.3327622181794 16 -133.3327622181794 20 -133.3327622181794 
		22 -133.3327622181794 24 -133.3327622181794 29 -133.3327622181794;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1025";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 46.995440027015853 4 46.995440027015853 
		10 46.995440027015853 13 46.995440027015853 16 46.995440027015853 20 46.995440027015853 
		22 46.995440027015853 24 46.995440027015853 29 46.995440027015853;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1026";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -49.838450918042973 4 -49.838450918042973 
		10 -49.838450918042973 13 -49.838450918042973 16 -49.838450918042973 20 -49.838450918042973 
		22 -49.838450918042973 24 -49.838450918042973 29 -49.838450918042973;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1027";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 13 0 16 0 20 0 22 
		0 24 0 29 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1028";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 10 0 13 0 16 0 20 0 22 
		0 24 0 29 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1029";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 37.656527956664149 4 37.656527956664149 
		10 37.656527956664149 13 37.656527956664149 16 37.656527956664149 20 37.656527956664149 
		22 37.656527956664149 24 37.656527956664149 29 37.656527956664149;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
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
	setAttr ".o" 26;
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
connectAttr "cdr_waveSource.st" "clipLibrary1.st[0]";
connectAttr "cdr_waveSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL329.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL330.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL331.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL332.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL333.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA911.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU63.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU64.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU65.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU66.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU67.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU68.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU69.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU70.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA912.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA913.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA914.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL334.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL335.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL336.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL337.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL338.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL339.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA915.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA916.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA917.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL340.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL341.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL342.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA918.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA919.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA920.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA921.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA922.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA923.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA924.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA925.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA926.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA927.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA928.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA929.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA930.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA931.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA932.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL343.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL344.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL345.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL346.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL347.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL348.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL349.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL350.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL351.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA933.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA934.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA935.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA936.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA937.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA938.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA939.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA940.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA941.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA942.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA943.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA944.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA945.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA946.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA947.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA948.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA949.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA950.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA951.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA952.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA953.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA954.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA955.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA956.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA957.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA958.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA959.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA960.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA961.a" "clipLibrary1.cel[0].cev[81].cevr";
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
connectAttr "animCurveTL358.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL359.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL360.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA968.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA969.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA970.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL361.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL362.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL363.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA971.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA972.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA973.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL364.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL365.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL366.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL367.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL368.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL369.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA974.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA975.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA976.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA977.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA978.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA979.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA980.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA981.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA982.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA983.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA984.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA985.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA986.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA987.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA988.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA989.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA990.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA991.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA992.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA993.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA994.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA995.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA996.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA997.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA998.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA999.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1000.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1001.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1002.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1003.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1004.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1005.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1006.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1007.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1008.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1009.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1010.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1011.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1012.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1013.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1014.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1015.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1016.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1017.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1018.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1019.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1020.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1021.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1022.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1023.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1024.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1025.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1026.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1027.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1028.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1029.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of cdr_wave.ma
