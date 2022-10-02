//Maya ASCII 4.0 scene
//Name: cdr_wave_goodbye.ma
//Last modified: Tue, Aug 06, 2002 02:32:03 PM
requires maya "4.0";
requires "p3dDeformer" "17.1.1.0";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dSimpleShader" "17.1";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "cdr_wave_goodbyeSource";
	setAttr ".ihi" 0;
	setAttr ".du" 24;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL329";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL330";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.62276245245106443 24 0.62276245245106443;
createNode animCurveTL -n "animCurveTL332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "animCurveTL333";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.44556925341531151 24 0.44556925341531151;
createNode animCurveTA -n "animCurveTA911";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "animCurveTU63";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU64";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU65";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU66";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU67";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU68";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "animCurveTU70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "animCurveTA912";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA913";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA914";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL334";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL335";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL336";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.1582036071592778 4 1.1582036071592778 
		7 1.1582036071592778 10 1.1582036071592778 13 1.1582036071592778 16 1.1582036071592778 
		20 1.1582036071592778 24 1.1582036071592778;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.8024274637299138 4 0.8024274637299138 
		7 0.8024274637299138 10 0.8024274637299138 13 0.8024274637299138 16 0.8024274637299138 
		20 0.8024274637299138 24 0.8024274637299138;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.6023458233856847 4 1.6023458233856847 
		7 1.6023458233856847 10 1.6023458233856847 13 1.6023458233856847 16 1.6023458233856847 
		20 1.6023458233856847 24 1.6023458233856847;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA915";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.7149195703006082 4 -2.7149195703006082 
		7 -2.7149195703006082 10 -2.7149195703006082 13 -2.7149195703006082 16 -2.7149195703006082 
		20 -2.7149195703006082 24 -2.7149195703006082;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA916";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -9.448854147766081 4 -9.448854147766081 
		7 -9.448854147766081 10 -9.448854147766081 13 -9.448854147766081 16 -9.448854147766081 
		20 -9.448854147766081 24 -9.448854147766081;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA917";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.9042146334359309 4 2.9042146334359309 
		7 2.9042146334359309 10 2.9042146334359309 13 2.9042146334359309 16 2.9042146334359309 
		20 2.9042146334359309 24 2.9042146334359309;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL340";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.635760016530293 4 1.635760016530293 
		7 1.635760016530293 10 1.635760016530293 13 1.635760016530293 16 1.635760016530293 
		20 1.635760016530293 24 1.635760016530293;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL341";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.79733745153385938 4 0.79733745153385938 
		7 0.79733745153385938 10 0.79733745153385938 13 0.79733745153385938 16 0.79733745153385938 
		20 0.79733745153385938 24 0.79733745153385938;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL342";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.6031411449878863 4 1.6031411449878863 
		7 1.6031411449878863 10 1.6031411449878863 13 1.6031411449878863 16 1.6031411449878863 
		20 1.6031411449878863 24 1.6031411449878863;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA918";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 10 0 13 0 16 0 20 0 
		24 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA919";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 14.260733409455982 4 14.260733409455984 
		7 14.260733409455984 10 14.260733409455984 13 14.260733409455984 16 14.260733409455984 
		20 14.260733409455984 24 14.260733409455982;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA920";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 10 0 13 0 16 0 20 0 
		24 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA921";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA922";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA923";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA924";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA925";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA926";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
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
	setAttr -s 8 ".ktv[0:7]"  0 -0.011621961304049206 4 -0.011621961304049206 
		7 -0.011621961304049206 10 -0.011621961304049206 13 -0.011621961304049206 
		16 -0.011621961304049206 20 -0.011621961304049206 24 -0.011621961304049206;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.53592894662340362 4 0.53592894662340362 
		7 0.53592894662340362 10 0.53592894662340362 13 0.53592894662340362 16 0.53592894662340362 
		20 0.53592894662340362 24 0.53592894662340362;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.1714982742260704 4 1.1714982742260704 
		7 1.1714982742260704 10 1.1714982742260704 13 1.1714982742260704 16 1.1714982742260704 
		20 1.1714982742260704 24 1.1714982742260704;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.028577078352958335 4 -0.028577078352958335 
		7 -0.028577078352958335 10 -0.028577078352958335 13 -0.028577078352958335 
		16 -0.028577078352958335 20 -0.028577078352958335 24 -0.028577078352958335;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.6265256146554018 4 0.6265256146554018 
		7 0.6265256146554018 10 0.6265256146554018 13 0.6265256146554018 16 0.6265256146554018 
		20 0.6265256146554018 24 0.6265256146554018;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.1827937027824305 4 1.1827937027824305 
		7 1.1827937027824305 10 1.1827937027824305 13 1.1827937027824305 16 1.1827937027824305 
		20 1.1827937027824305 24 1.1827937027824305;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.4056785302309036 4 1.4056785302309036 
		7 1.4056785302309036 10 1.4056785302309036 13 1.4056785302309036 16 1.4056785302309036 
		20 1.4056785302309036 24 1.4056785302309036;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.96452787963755071 4 0.96452787963755071 
		7 0.96452787963755071 10 0.96452787963755071 13 0.96452787963755071 16 0.96452787963755071 
		20 0.96452787963755071 24 0.96452787963755071;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.0057239815788857 4 1.0057239815788857 
		7 1.0057239815788857 10 1.0057239815788857 13 1.0057239815788857 16 1.0057239815788857 
		20 1.0057239815788857 24 1.0057239815788857;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA933";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -19.688418588621207 4 -19.688418588621207 
		7 -19.688418588621207 10 -19.688418588621207 13 -19.688418588621207 16 -19.688418588621207 
		20 -19.688418588621207 24 -19.688418588621207;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA934";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.6085540494966317 4 -1.6085540494966313 
		7 -1.6085540494966313 10 -1.6085540494966313 13 -1.6085540494966313 16 -1.6085540494966313 
		20 -1.6085540494966313 24 -1.6085540494966317;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA935";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.23076428718713959 4 0.23076428718713959 
		7 0.23076428718713959 10 0.23076428718713959 13 0.23076428718713959 16 0.23076428718713959 
		20 0.23076428718713959 24 0.23076428718713959;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA936";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA937";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA938";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA939";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA940";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA941";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA942";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA943";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA944";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA945";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA946";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA947";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA948";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA949";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA950";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA951";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA952";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA953";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA954";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA955";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA956";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -5.6803276403432976 4 -5.6803276403432976 
		7 -5.6803276403432976 10 -5.6803276403432976 13 -5.6803276403432976 16 -5.6803276403432976 
		20 -5.6803276403432976 24 -5.6803276403432976;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA957";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -6.1570151121354497 4 -6.1570151121354488 
		7 -6.1570151121354488 10 -6.1570151121354488 13 -6.1570151121354488 16 -6.1570151121354488 
		20 -6.1570151121354488 24 -6.1570151121354497;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA958";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 5.3480278027016874 4 5.3480278027016865 
		7 5.3480278027016865 10 5.3480278027016865 13 5.3480278027016865 16 5.3480278027016865 
		20 5.3480278027016865 24 5.3480278027016874;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA959";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 10 0 13 0 16 0 20 0 
		24 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA960";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 10 0 13 0 16 0 20 0 
		24 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA961";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 10 0 13 0 16 0 20 0 
		24 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 -0.28153965634655165 1 -0.30886345758092065 
		2 -0.35379400257743371 3 -0.39710196112416668 4 -0.41446062369663611 5 -0.35472303103468122 
		6 -0.24493948305826721 7 -0.17829804302370492 8 -0.21307155409135903 9 -0.28963864355671814 
		10 -0.3263935236328071 11 -0.27063566881543805 12 -0.17646752083349526 13 
		-0.12461499011520957 14 -0.1698881968015867 15 -0.25637593749254933 16 -0.30100442640685088 
		17 -0.27178047835921348 18 -0.2112338756867726 19 -0.15072208545279367 20 
		-0.12122325860897164 21 -0.13490130046375015 22 -0.17517570624338774 23 -0.22865796966503382 
		24 -0.28153965634655165;
createNode animCurveTL -n "Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0.062866594353928579 1 0.15957879727971555 
		2 0.2592999255108619 3 0.34814885458520345 4 0.41430752100238039 5 0.442077813594348 
		6 0.43959339872842562 7 0.43333906055277488 8 0.43243371299893119 9 0.42831348915709905 
		10 0.42454138630484778 11 0.42482986769141273 12 0.42534901977191042 13 0.41957609025099035 
		14 0.42546954744091792 15 0.423916381890445 16 0.35685694482179586 17 0.1771253651739719 
		18 -0.069341029202231438 19 -0.29740610733157147 20 -0.4192882165698672 21 
		-0.38895675239693583 22 -0.25907732250862059 23 -0.088557393539612742 24 
		0.062866594353928579;
createNode animCurveTL -n "Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0.94758108715296308 1 0.88996462783373065 
		2 0.83657054802515074 3 0.79565653212995957 4 0.76944008004434017 5 0.7553258740544615 
		6 0.74983627985856882 7 0.75274249745009059 8 0.77221607233836442 9 0.80572186207356544 
		10 0.82925086048555141 11 0.82174465132206564 12 0.80073089651531459 13 0.79218997818549042 
		14 0.81676778781854587 15 0.85738149149920251 16 0.87168091297847639 17 0.83527766353240662 
		18 0.78003399506261961 19 0.73824187136052999 20 0.73296108790394288 21 0.7690643931693899 
		22 0.82778933242010977 23 0.89184598798599812 24 0.94758108715296308;
createNode animCurveTA -n "Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 -29.993438056114957 1 -40.385734163268872 
		2 -55.709993096193344 3 -73.15151084675405 4 -89.721065965216212 5 -103.03066635984563 
		6 -109.55306312738675 7 -110.07088688135804 8 -105.2499020453895 9 -90.340923450045295 
		10 -80.734075416034358 11 -91.35545982715054 12 -108.11234813324191 13 -113.44487440014932 
		14 -108.62062234258939 15 -91.39615589852302 16 -76.551992250100611 17 -78.010412398649393 
		18 -85.800317454761171 19 -91.683072565846189 20 -87.867654129468932 21 -73.082201637946625 
		22 -55.550288053777599 23 -40.414118658736641 24 -29.993438056114957;
createNode animCurveTA -n "Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 62.825162069071652 1 50.266105353184116 
		2 39.410678489149134 3 30.024271469846468 4 21.760005982501315 5 15.821484855338195 
		6 10.167115226794497 7 7.4860249834976837 8 14.148435818897253 9 21.456966045463233 
		10 21.11106809638839 11 20.589860585347015 12 10.63819247905794 13 2.358333373482751 
		14 10.754733773858135 15 22.856820670571498 16 26.805632726005022 17 32.634451335686087 
		18 41.659791278852957 19 50.910789427739147 20 57.346350187078777 21 59.54073993082249 
		22 59.643484789473213 23 60.130946678953158 24 62.825162069071652;
createNode animCurveTA -n "Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 65.11865964432144 1 43.323895520254212 
		2 17.558547151757224 3 -9.2853775753068337 4 -35.187420310249344 5 -67.029859399835331 
		6 -98.786020067850345 7 -111.06467905795775 8 -84.615526166958048 9 -36.959592464381267 
		10 -10.846959269688217 11 -37.82684823567557 12 -85.407908756666814 13 -109.06129667133402 
		14 -87.777808389143871 15 -42.758537946563855 16 -7.2481683015934744 17 1.909486685335307 
		18 0.95113142774297899 19 -1.582788800557996 20 4.2844657031096114 21 20.485724640692716 
		22 38.349743210433445 23 53.811470720243754 24 65.11865964432144;
createNode animCurveTL -n "Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0.32620582435379875 1 0.37200428175878159 
		2 0.41716997985725957 3 0.45694891172945662 4 0.48763921753754064 5 0.50355284214490637 
		6 0.50971079648509576 7 0.51834933738216304 8 0.5359643519547399 9 0.555215409317799 
		10 0.56836160672041303 11 0.57117068220426148 12 0.56853227748148671 13 0.56769322672533551 
		14 0.57564153794693085 15 0.5849681923176081 16 0.58343853665015755 17 0.56766511359118799 
		18 0.54347716704984383 19 0.51353342699948035 20 0.48152298175197161 21 0.44770173782248551 
		22 0.40977689543657703 23 0.36881420766876744 24 0.32620582435379875;
createNode animCurveTL -n "Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0.033439979479083518 1 0.041985842614327654 
		2 0.052337729870754648 3 0.062610615436518843 4 0.070362415733480399 5 0.070652504966179849 
		6 0.065936728148994844 7 0.064748146825072087 8 0.073425476684895769 9 0.085888521338803411 
		10 0.091679232453921608 11 0.083252885244895339 12 0.067833282280895482 13 
		0.056920056573786938 14 0.056871377465096629 15 0.061432106005613038 16 0.063125816745044333 
		17 0.059717212045859502 18 0.054801065305206578 19 0.049596702846345833 20 
		0.045052561444341672 21 0.041212446917949903 22 0.037862132003343145 23 0.035229526605795758 
		24 0.033439979479083518;
createNode animCurveTL -n "Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0.90790943701675209 1 0.86985745207110532 
		2 0.82804166192578321 3 0.78723095759288475 4 0.75304441385884235 5 0.73528334658876138 
		6 0.72951222623250034 7 0.71978853939801857 8 0.69632153938475994 9 0.66831275315973881 
		10 0.64872418776775631 11 0.64724782574071515 12 0.65479053745202775 13 0.65684133465480121 
		14 0.64052504493978435 15 0.6188673770053883 16 0.61624934312277835 17 0.63950448198577492 
		18 0.67485487032894609 19 0.71558316841337555 20 0.75524837255055932 21 0.79347217906926204 
		22 0.83275452467153632 23 0.87140498852535675 24 0.90790943701675209;
createNode animCurveTA -n "Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 -34.320242729481222 1 -41.269456817680265 
		2 -47.947360548304744 3 -53.570619411183849 4 -57.691827923475579 5 -59.687913762202925 
		6 -60.385195217918735 7 -61.487635368872887 8 -63.973751680784474 9 -66.810000141218296 
		10 -68.613388027602255 11 -68.453365858252155 12 -67.343602211768058 13 -66.807154357847963 
		14 -67.977689244285855 15 -69.592463577877041 16 -69.804223522471446 17 -68.077501978567852 
		18 -65.190655428694498 19 -61.404549959092122 20 -57.162197135631573 21 -52.474849878713336 
		22 -46.974683053905011 23 -40.826562826279144 24 -34.320242729481222;
createNode animCurveTA -n "Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 -66.497970732237533 1 -65.763978381570539 
		2 -64.636562653595334 3 -63.297445902001357 4 -62.046521692303301 5 -61.315360251595173 
		6 -61.059992216781595 7 -60.82384035855015 8 -60.438234695382995 9 -60.01592627100387 
		10 -59.544381419792771 11 -59.062901260662279 12 -58.576774078006501 13 -58.085787593132643 
		14 -57.335179852327862 15 -56.5500598073736 16 -56.559962238665612 17 -57.611735857958884 
		18 -59.142540547465188 19 -60.815013876742263 20 -62.337497879809298 21 -63.677938689855168 
		22 -64.879751282956306 23 -65.841786709472075 24 -66.497970732237533;
createNode animCurveTA -n "Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 -84.523994027970701 1 -77.06907733661825 
		2 -69.840001560576809 3 -63.731718814753648 4 -59.308983245427285 5 -57.387991953271488 
		6 -57.040099559008226 7 -56.235554855827118 8 -53.861292038898824 9 -51.073744498216648 
		10 -49.327733886857203 11 -49.604545232391956 12 -50.8429165536431 13 -51.457989698122994 
		14 -50.262068754091523 15 -48.559852072128201 16 -48.324235216037167 17 -50.142713049219815 
		18 -53.163254567409467 19 -57.086786215725439 20 -61.44481616648455 21 -66.226014977021649 
		22 -71.800287090563771 23 -77.9967270694533 24 -84.523994027970701;
createNode animCurveTL -n "animCurveTL358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.1344099872624747 4 0.90501424715833989 
		7 1.1134333487709125 10 0.90501424715833989 13 1.1134333487709125 16 0.90501424715833989 
		20 1.1444424514856828 24 1.1344099872624747;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.11055300384759903 1 1 1 0.075034596025943756 
		0.011623957194387913 0.13174350559711456;
	setAttr -s 8 ".kiy[0:7]"  0 -0.99387025833129883 0 0 0 0.99718093872070313 
		0.99993246793746948 -0.9912838339805603;
createNode animCurveTL -n "animCurveTL359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.1296110275135671 4 2.4945102919876865 
		7 2.4945102919876865 10 2.4945102919876865 13 2.4945102919876865 16 2.4614419413236321 
		20 1.6433588151737064 24 2.1296110275135671;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.0063943276181817055 1 1 0.060370475053787231 
		0.0027413740754127502 0.0080359615385532379 0.0027420513797551394;
	setAttr -s 8 ".kiy[0:7]"  0 0.99997955560684204 0 0 -0.99817603826522827 
		-0.99999624490737915 -0.99996769428253174 0.99999624490737915;
createNode animCurveTL -n "animCurveTL360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.0696046407532309 4 1.6470923150548868 
		7 1.6470923150548868 10 1.6470923150548868 13 1.6470923150548868 16 1.6470923150548868 
		20 1.8407438058631733 24 2.0696046407532309;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.0055224373936653137 1 1 1 0.012048262171447277 
		0.0063113272190093994 0.0058258590288460255;
	setAttr -s 8 ".kiy[0:7]"  0 -0.9999847412109375 0 0 0 0.99992740154266357 
		0.99998009204864502 0.99998301267623901;
createNode animCurveTA -n "animCurveTA968";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -44.889076788073439 4 -91.587788862264674 
		7 -92.878974662925614 10 -86.831435100955247 13 -92.645838755927173 16 -85.283919334608555 
		20 -104.77857740429623 24 -44.889076788073439;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.26836103200912476 0.92359954118728638 
		0.99979311227798462 0.99100410938262939 0.7405163049697876 0.3537774384021759 
		0.12653361260890961;
	setAttr -s 8 ".kiy[0:7]"  0 -0.96331840753555298 0.38335862755775452 
		0.020340736955404282 0.13383136689662933 -0.67203837633132935 0.9353296160697937 
		0.99196231365203857;
createNode animCurveTA -n "animCurveTA969";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 71.289995585927571 4 5.6272853679790575 
		7 2.0814275425452555 10 1.6421778558839553 13 -2.7701956931412677 16 4.9629965798866138 
		20 45.366279612413642 24 71.289995585927571;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.18966373801231384 0.94451433420181274 
		0.92086571455001831 0.96048152446746826 0.26760244369506836 0.22447788715362549 
		0.28267085552215576;
	setAttr -s 8 ".kiy[0:7]"  0 -0.98184913396835327 -0.32847020030021667 
		-0.38987982273101807 0.2783437967300415 0.96352940797805786 0.97447919845581055 
		0.95921695232391357;
createNode animCurveTA -n "animCurveTA970";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 50.619719123253631 4 -39.485921247805408 
		7 -113.00785606036072 10 -15.693254464703735 13 -112.42952300134512 16 -13.383304291819773 
		20 -11.238925443990366 24 50.619719123253631;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.08143257349729538 0.43392097949981689 
		0.99872887134552002 0.98028147220611572 0.13097900152206421 0.2321966141462326 
		0.12256716191768646;
	setAttr -s 8 ".kiy[0:7]"  0 -0.99667882919311523 0.90095090866088867 
		0.050404928624629974 0.19760629534721375 0.99138516187667847 0.97266888618469238 
		0.99246025085449219;
createNode animCurveTL -n "animCurveTL361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.5330905047330146 4 2.5330905047330146 
		7 2.5330905047330146 10 2.5330905047330146 13 2.5330905047330146 16 2.5330905047330146 
		20 2.5330905047330146 24 2.5330905047330146;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.0768417541934041 4 2.0768417541934041 
		7 2.0768417541934041 10 2.0768417541934041 13 2.0768417541934041 16 2.0768417541934041 
		20 2.0768417541934041 24 2.0768417541934041;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.0481292103665369 4 2.0481292103665369 
		7 2.0481292103665369 10 2.0481292103665369 13 2.0481292103665369 16 2.0481292103665369 
		20 2.0481292103665369 24 2.0481292103665369;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA971";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -36.33267118790765 4 -36.332671187907607 
		7 -36.332671187907607 10 -36.332671187907607 13 -36.332671187907607 16 -36.332671187907607 
		20 -36.332671187907607 24 -36.33267118790765;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA972";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -76.683613894212968 4 -76.683613894212968 
		7 -76.683613894212968 10 -76.683613894212968 13 -76.683613894212968 16 -76.683613894212968 
		20 -76.683613894212968 24 -76.683613894212968;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA973";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -83.339653964504663 4 -83.339653964504663 
		7 -83.339653964504663 10 -83.339653964504663 13 -83.339653964504663 16 -83.339653964504663 
		20 -83.339653964504663 24 -83.339653964504663;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.578730476483856 4 0.578730476483856 
		7 0.578730476483856 10 0.578730476483856 13 0.578730476483856 16 0.578730476483856 
		20 0.578730476483856 24 0.578730476483856;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.3751169572549602 4 -1.3751169572549602 
		7 -1.3751169572549602 10 -1.3751169572549602 13 -1.3751169572549602 16 -1.3751169572549602 
		20 -1.3751169572549602 24 -1.3751169572549602;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.21739896228115529 4 -0.21739896228115529 
		7 -0.21739896228115529 10 -0.21739896228115529 13 -0.21739896228115529 16 
		-0.21739896228115529 20 -0.21739896228115529 24 -0.21739896228115529;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.48508072212835623 4 -0.48218366141506636 
		7 -0.48218366141506636 10 -0.48218366141506636 13 -0.48218366141506636 16 
		-0.48218366141506636 20 -0.48351148095715885 24 -0.48508072212835623;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.62726271152496338 1 1 1 0.86912649869918823 
		0.67724508047103882 0.64750140905380249;
	setAttr -s 8 ".kiy[0:7]"  0 0.77880775928497314 0 0 0 -0.49458989500999451 
		-0.73575752973556519 -0.76206427812576294;
createNode animCurveTL -n "animCurveTL368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.3461376073222053 4 -0.67369178599238799 
		7 -0.67369178599238799 10 -0.67369178599238799 13 -0.67369178599238799 16 
		-0.67369178599238799 20 -0.98189613055283176 24 -1.3461376073222053;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.0034698992967605591 1 1 1 0.0075705181807279587 
		0.0039655915461480618 0.0036605512723326683;
	setAttr -s 8 ".kiy[0:7]"  0 0.99999397993087769 0 0 0 -0.99997133016586304 
		-0.99999213218688965 -0.99999332427978516;
createNode animCurveTL -n "animCurveTL369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.22135527095932556 4 0.20693161486976588 
		7 0.20693161486976588 10 0.20693161486976588 13 0.20693161486976588 16 0.20693161486976588 
		20 0.01063345301273344 24 -0.22135527095932556;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.0054479804821312428 1 1 1 0.011885839514434338 
		0.006226235069334507 0.0057473122142255306;
	setAttr -s 8 ".kiy[0:7]"  0 0.99998515844345093 0 0 0 -0.99992936849594116 
		-0.999980628490448 -0.99998348951339722;
createNode animCurveTA -n "animCurveTA974";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 12.253734489678925 4 12.253734489678925 
		7 12.253734489678925 10 12.253734489678925 13 12.253734489678925 16 12.253734489678925 
		20 12.253734489678925 24 12.253734489678925;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA975";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -65.746751280844975 4 -65.746751280844961 
		7 -65.746751280844961 10 -65.746751280844961 13 -65.746751280844961 16 -65.746751280844961 
		20 -65.746751280844961 24 -65.746751280844975;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA976";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 10 0 13 0 16 0 20 0 
		24 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA977";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.061808866237340665 4 -0.061808866237337522 
		7 -0.061808866237337522 10 -0.061808866237337522 13 -0.061808866237337522 
		16 -0.061808866237337522 20 -0.061808866237337522 24 -0.061808866237340665;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA978";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -59.058178941076754 4 -59.058178941076754 
		7 -59.058178941076754 10 -59.058178941076754 13 -59.058178941076754 16 -59.058178941076754 
		20 -59.058178941076754 24 -59.058178941076754;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA979";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 16.57914742975785 4 16.579147429757843 
		7 16.579147429757843 10 16.579147429757843 13 16.579147429757843 16 16.579147429757843 
		20 16.579147429757843 24 16.57914742975785;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA980";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.5572674112203639 4 8.5572674112203622 
		7 8.5572674112203622 10 8.5572674112203622 13 8.5572674112203622 16 8.5572674112203622 
		20 8.5572674112203622 24 8.5572674112203639;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA981";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 15.711328223519061 4 15.711328223519057 
		7 15.711328223519057 10 15.711328223519057 13 15.711328223519057 16 15.711328223519057 
		20 15.711328223519057 24 15.711328223519061;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA982";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 10 0 13 0 16 0 20 0 
		24 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA983";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 10 0 13 0 16 0 20 0 
		24 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA984";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 10 0 13 0 16 0 20 0 
		24 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA985";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 10 0 13 0 16 0 20 0 
		24 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA986";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 10 0 13 0 16 0 20 0 
		24 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA987";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 10 0 13 0 16 0 20 0 
		24 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA988";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -94.468308159208192 4 -94.468308159208192 
		7 -94.468308159208192 10 -94.468308159208192 13 -94.468308159208192 16 -94.468308159208192 
		20 -94.468308159208192 24 -94.468308159208192;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA989";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 72.836273346919612 4 72.836273346919612 
		7 72.836273346919612 10 72.836273346919612 13 72.836273346919612 16 72.836273346919612 
		20 72.836273346919612 24 72.836273346919612;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA990";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 6.0130362214677122 4 6.0130362214677122 
		7 6.0130362214677122 10 6.0130362214677122 13 6.0130362214677122 16 6.0130362214677122 
		20 6.0130362214677122 24 6.0130362214677122;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA991";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 10 0 13 0 16 0 20 0 
		24 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA992";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 10 0 13 0 16 0 20 0 
		24 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA993";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 56.683882055276058 4 56.683882055276051 
		7 56.683882055276051 10 56.683882055276051 13 56.683882055276051 16 56.683882055276051 
		20 56.683882055276051 24 56.683882055276058;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA994";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA995";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA996";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA997";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA998";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA999";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 24 13.994403295754109;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1000";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1001";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1002";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 24 13.994403295754109;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1003";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 10 0 13 0 16 0 20 0 
		24 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1004";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 10 0 13 0 16 0 20 0 
		24 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1005";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 44.839776244285055 4 -0.099923488989266798 
		7 -0.099923488989266798 10 -0.099923488989266798 13 -0.099923488989266798 
		16 -0.099923488989266798 20 20.497439241152264 24 44.839776244285055;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.28513810038566589 1 1 1 0.54443657398223877 
		0.32189095020294189 0.29943382740020752;
	setAttr -s 8 ".kiy[0:7]"  0 -0.95848643779754639 0 0 0 0.8388020396232605 
		0.94677674770355225 0.9541170597076416;
createNode animCurveTA -n "animCurveTA1006";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 10 0 13 0 16 0 20 0 
		24 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1007";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 10 0 13 0 16 0 20 0 
		24 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1008";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 10 0 13 0 16 0 20 0 
		24 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1009";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.55766507474896454 4 -8.7049126755349882 
		7 -10.073953023173518 10 -11.421368736227013 13 -10.226887007404454 16 -9.9211491330490311 
		20 -5.6040740798332358 24 -0.55766507474896454;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.81468373537063599 0.97303372621536255 
		0.99991095066070557 0.99153876304626465 0.94509363174438477 0.85262578725814819 
		0.83438944816589355;
	setAttr -s 8 ".kiy[0:7]"  0 -0.57990550994873047 -0.230663001537323 
		-0.013344819657504559 0.1298111230134964 0.32679975032806396 0.52252203226089478 
		0.55117535591125488;
createNode animCurveTA -n "animCurveTA1010";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.0198239624003347 4 -2.9268319470105908 
		7 -1.2156454679743334 10 -2.5331226186441054 13 -1.6022861532578536 16 -0.89464444064703397 
		20 -1.3513815917563075 24 -2.0198239624003347;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.99819576740264893 0.99941027164459229 
		0.99943125247955322 0.98993188142776489 0.9998239278793335 0.99729937314987183 
		0.99619382619857788;
	setAttr -s 8 ".kiy[0:7]"  0 0.060043882578611374 0.034337360411882401 
		-0.033721577376127243 0.14154461026191711 0.01876431331038475 -0.0734439417719841 
		-0.087165854871273041;
createNode animCurveTA -n "animCurveTA1011";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 7.5513277031901893 4 5.1911371502819321 
		7 4.9291224092827459 10 4.8397582131480661 13 3.1741279423795423 16 2.0142049876073918 
		20 4.4553927529413846 24 7.5513277031901893;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.98130226135253906 0.99953019618988037 
		0.98847454786300659 0.97091966867446899 0.99543887376785278 0.94016504287719727 
		0.92678719758987427;
	setAttr -s 8 ".kiy[0:7]"  0 -0.19247311353683472 -0.03064919076859951 
		-0.15138702094554901 -0.23940552771091461 0.095401257276535034 0.34071940183639526 
		0.3755868673324585;
createNode animCurveTA -n "animCurveTA1012";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.95273800592490188 4 -13.140438564064842 
		7 -13.140438564064842 10 -13.140438564064842 13 -13.140438564064842 16 -13.140438564064842 
		20 -13.140438564064842 24 0.95273800592490188;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.68822157382965088 1 1 1 1 0.73505276441574097 
		0.47655487060546875;
	setAttr -s 8 ".kiy[0:7]"  0 -0.72550058364868164 0 0 0 0 
		0.67800992727279663 0.87914472818374634;
createNode animCurveTA -n "animCurveTA1013";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.41955881507249093 4 -5.6676132320816803 
		7 -5.6676132320816803 10 -5.6676132320816803 13 -5.6676132320816803 16 -5.6676132320816803 
		20 -5.6676132320816803 24 0.41955881507249093;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.91010093688964844 1 1 1 1 0.92898690700531006 
		0.78208476305007935;
	setAttr -s 8 ".kiy[0:7]"  0 -0.41438663005828857 0 0 0 0 
		0.37011253833770752 0.62317204475402832;
createNode animCurveTA -n "animCurveTA1014";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.6634293801101623 4 3.9657013485173089 
		7 3.9657013485173089 10 3.9657013485173089 13 3.9657013485173089 16 3.9657013485173089 
		20 3.9657013485173089 24 1.6634293801101623;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.98549377918243408 1 1 1 1 0.98883700370788574 
		0.95746541023254395;
	setAttr -s 8 ".kiy[0:7]"  0 0.16971144080162048 0 0 0 0 -0.14900127053260803 
		-0.28854814171791077;
createNode animCurveTA -n "animCurveTA1015";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.0598705588951514 4 1.0598705588951511 
		7 1.0598705588951511 10 1.0598705588951511 13 1.0598705588951511 16 1.0598705588951511 
		20 1.0598705588951511 24 1.0598705588951514;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1016";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.26280824457411484 4 0.26280824457411489 
		7 0.26280824457411489 10 0.26280824457411489 13 0.26280824457411489 16 0.26280824457411489 
		20 0.26280824457411489 24 0.26280824457411484;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1017";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 6.5086084195154994 4 6.5086084195154994 
		7 6.5086084195154994 10 6.5086084195154994 13 6.5086084195154994 16 6.5086084195154994 
		20 6.5086084195154994 24 6.5086084195154994;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1018";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.47197901174667056 4 -2.9887146687462103 
		7 -2.9887713025731673 10 -6.1734618208720011 13 -6.6277450415184394 16 -8.4700901220481182 
		20 -4.5251704155820942 24 0.47197901174667056;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.96808987855911255 0.96348214149475098 
		0.95309674739837646 0.98050165176391602 0.98785752058029175 0.86305540800094604 
		0.83686262369155884;
	setAttr -s 8 ".kiy[0:7]"  0 -0.25060313940048218 -0.26777252554893494 
		-0.30266577005386353 -0.19651080667972565 0.15536254644393921 0.50510925054550171 
		0.5474129319190979;
createNode animCurveTA -n "animCurveTA1019";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.6163460272109138 4 0.34719751375954749 
		7 -0.49481616656435323 10 -0.13293570836282956 13 -1.3320884482522601 16 
		-3.102547054168967 20 -1.0872591845542898 24 1.6163460272109138;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.98775994777679443 0.99912339448928833 
		0.9973413348197937 0.96802318096160889 0.99983233213424683 0.9554673433303833 
		0.94270598888397217;
	setAttr -s 8 ".kiy[0:7]"  0 -0.15598167479038239 -0.041862796992063522 
		-0.072871528565883636 -0.2508607804775238 0.018310116603970528 0.29509687423706055 
		0.33362463116645813;
createNode animCurveTA -n "animCurveTA1020";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.9660530560192304 4 3.1514622421570211 
		7 3.1954240632386477 10 4.1550077617047734 13 4.1074452700028328 16 5.2801981801634508 
		20 3.8589443566595674 24 1.9660530560192304;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.99579858779907227 0.99618715047836304 
		0.99684774875640869 0.99521380662918091 0.99982726573944092 0.97727382183074951 
		0.97064763307571411;
	setAttr -s 8 ".kiy[0:7]"  0 0.091570384800434113 0.087241955101490021 
		0.079337984323501587 0.09772142767906189 -0.018584614619612694 -0.21198074519634247 
		-0.24050596356391907;
createNode animCurveTA -n "animCurveTA1021";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 10 0 13 0 16 0 20 0 
		24 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1022";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 10 0 13 0 16 0 20 0 
		24 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1023";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 77.428435288625664 4 10.773476600930445 
		7 10.773476600930445 10 10.773476600930445 13 10.773476600930445 16 10.773476600930445 
		20 41.323667395336003 24 77.428435288625664;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.19665390253067017 1 1 1 0.40090206265449524 
		0.22342866659164429 0.20700764656066895;
	setAttr -s 8 ".kiy[0:7]"  0 -0.98047298192977905 0 0 0 0.91612088680267334 
		0.974720299243927 0.97833931446075439;
createNode animCurveTA -n "animCurveTA1024";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -133.3327622181794 4 -133.3327622181794 
		7 -133.3327622181794 10 -133.3327622181794 13 -133.3327622181794 16 -133.3327622181794 
		20 -133.3327622181794 24 -133.3327622181794;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1025";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 46.995440027015853 4 46.995440027015853 
		7 46.995440027015853 10 46.995440027015853 13 46.995440027015853 16 46.995440027015853 
		20 46.995440027015853 24 46.995440027015853;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1026";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -49.838450918042973 4 -49.838450918042973 
		7 -49.838450918042973 10 -49.838450918042973 13 -49.838450918042973 16 -49.838450918042973 
		20 -49.838450918042973 24 -49.838450918042973;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1027";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 10 0 13 0 16 0 20 0 
		24 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1028";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 10 0 13 0 16 0 20 0 
		24 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1029";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 37.656527956664149 4 37.656527956664149 
		7 37.656527956664149 10 37.656527956664149 13 37.656527956664149 16 37.656527956664149 
		20 37.656527956664149 24 37.656527956664149;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
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
connectAttr "cdr_wave_goodbyeSource.st" "clipLibrary1.st[0]";
connectAttr "cdr_wave_goodbyeSource.du" "clipLibrary1.du[0]";
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
// End of cdr_wave_goodbye.ma
