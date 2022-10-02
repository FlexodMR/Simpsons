//Maya ASCII 4.0 scene
//Name: cdr-m_sway_left.ma
//Last modified: Tue, Aug 06, 2002 02:34:33 PM
requires maya "4.0";
requires "p3dDeformer" "17.1.1.0";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dSimpleShader" "17.1";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "cdr_sway_left";
	setAttr ".ihi" 0;
	setAttr ".du" 33;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL780";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL781";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL782";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.62276245245106443 33 -0.62276245245106443;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL783";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL784";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.44556925341531151 33 0.44556925341531151;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
createNode animCurveTU -n "animCurveTU2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
createNode animCurveTU -n "animCurveTU3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
createNode animCurveTU -n "animCurveTU4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
createNode animCurveTU -n "animCurveTU5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
createNode animCurveTU -n "animCurveTU6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
createNode animCurveTU -n "animCurveTU7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
createNode animCurveTU -n "animCurveTU8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
createNode animCurveTA -n "animCurveTA2161";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2162";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2163";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL785";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL786";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL787";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL788";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.635760016530293 4 -1.635760016530293 
		7 -1.635760016530293 11 -1.635760016530293 21 -1.635760016530293 25 -1.635760016530293 
		29 -1.635760016530293 33 -1.635760016530293;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL789";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.79733745153385938 4 0.79733745153385938 
		7 0.79733745153385938 11 0.79733745153385938 21 0.79733745153385938 25 0.79733745153385938 
		29 0.79733745153385938 33 0.79733745153385938;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL790";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.6031411449878863 4 1.6031411449878863 
		7 1.6031411449878863 11 1.6031411449878863 21 1.6031411449878863 25 1.6031411449878863 
		29 1.6031411449878863 33 1.6031411449878863;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 21 0 25 0 29 0 
		33 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -14.260733409455982 4 -14.260733409455982 
		7 -14.260733409455982 11 -14.260733409455982 21 -14.260733409455982 25 -14.260733409455982 
		29 -14.260733409455982 33 -14.260733409455982;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 21 0 25 0 29 0 
		33 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL791";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.1582036071592778 4 -1.1582036071592778 
		7 -1.1582036071592778 11 -1.1582036071592778 21 -1.1582036071592778 25 -1.1582036071592778 
		29 -1.1582036071592778 33 -1.1582036071592778;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL792";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.8024274637299138 4 0.8024274637299138 
		7 0.8024274637299138 11 0.8024274637299138 21 0.8024274637299138 25 0.8024274637299138 
		29 0.8024274637299138 33 0.8024274637299138;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL793";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.6023458233856847 4 1.6023458233856847 
		7 1.6023458233856847 11 1.6023458233856847 21 1.6023458233856847 25 1.6023458233856847 
		29 1.6023458233856847 33 1.6023458233856847;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.7149195703006082 4 -2.7149195703006082 
		7 -2.7149195703006082 11 -2.7149195703006082 21 -2.7149195703006082 25 -2.7149195703006082 
		29 -2.7149195703006082 33 -2.7149195703006082;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 9.448854147766081 4 9.448854147766081 
		7 9.448854147766081 11 9.448854147766081 21 9.448854147766081 25 9.448854147766081 
		29 9.448854147766081 33 9.448854147766081;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.9042146334359309 4 -2.9042146334359309 
		7 -2.9042146334359309 11 -2.9042146334359309 21 -2.9042146334359309 25 -2.9042146334359309 
		29 -2.9042146334359309 33 -2.9042146334359309;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2170";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2171";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2172";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2173";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2174";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2175";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2176";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2177";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2178";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2179";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2180";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2181";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL794";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.028577078352958335 4 0.097466557943624466 
		7 0.097466557943624466 11 0.097466557943624466 21 0.097466557943624466 25 
		0.097466557943624466 29 0.097466557943624466 33 0.028577078352958335;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.033851265907287598 1 1 1 1 
		0.038680374622344971 0.019351042807102203;
	setAttr -s 8 ".kiy[0:7]"  0 0.99942690134048462 0 0 0 0 -0.99925166368484497 
		-0.99981272220611572;
createNode animCurveTL -n "animCurveTL795";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.6265256146554018 4 0.89926276112817349 
		7 0.89926276112817349 11 0.89926276112817349 21 0.89926276112817349 25 0.89926276112817349 
		29 0.89926276112817349 33 0.6265256146554018;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.0085549326613545418 1 1 1 1 
		0.0097769564017653465 0.0048886514268815517;
	setAttr -s 8 ".kiy[0:7]"  0 0.99996340274810791 0 0 0 0 -0.99995219707489014 
		-0.99998807907104492;
createNode animCurveTL -n "animCurveTL796";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.1827937027824305 4 0.80168990793572048 
		7 0.80168990793572048 11 0.80168990793572048 21 0.80168990793572048 25 0.80168990793572048 
		29 0.80168990793572048 33 1.1827937027824305;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.0061224517412483692 1 1 1 1 
		0.0069970474578440189 0.0034985868260264397;
	setAttr -s 8 ".kiy[0:7]"  0 -0.99998128414154053 0 0 0 0 
		0.99997550249099731 0.99999380111694336;
createNode animCurveTL -n "animCurveTL797";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.011621961304049206 4 0.011621961304049206 
		7 0.011621961304049206 11 0.011621961304049206 21 0.011621961304049206 25 
		0.011621961304049206 29 0.011621961304049206 33 0.011621961304049206;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL798";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.53592894662340362 4 0.53592894662340362 
		7 0.53592894662340362 11 0.53592894662340362 21 0.53592894662340362 25 0.53592894662340362 
		29 0.53592894662340362 33 0.53592894662340362;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL799";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.1714982742260704 4 1.1714982742260704 
		7 1.1714982742260704 11 1.1714982742260704 21 1.1714982742260704 25 1.1714982742260704 
		29 1.1714982742260704 33 1.1714982742260704;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL800";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.4056785302309036 4 -1.406 
		7 -1.406 11 -1.406 21 -1.406 25 -1.406 29 -1.406 33 -1.406;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.99064236879348755 1 1 1 1 1 
		1;
	setAttr -s 8 ".kiy[0:7]"  0 -0.13648352026939392 0 0 0 0 
		0 0;
createNode animCurveTL -n "animCurveTL801";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.96452787963755071 4 0.96452787963755071 
		7 0.96452787963755071 11 0.96452787963755071 21 0.96452787963755071 25 0.96452787963755071 
		29 0.96452787963755071 33 0.96452787963755071;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL802";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.0057239815788857 4 1.006 7 
		1.006 11 1.006 21 1.006 25 1.006 29 1.006 33 1.0057239815788857;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.9930759072303772 1 1 1 1 0.9946858286857605 
		0.97923761606216431;
	setAttr -s 8 ".kiy[0:7]"  0 0.11747453361749649 0 0 0 0 -0.1029568538069725 
		-0.20271579921245575;
createNode animCurveTA -n "animCurveTA2182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -19.688418588621207 4 -19.68841858862119 
		7 -19.688418588621186 11 -16.681098374804272 21 -16.681098374804272 25 -19.688418588621186 
		29 -19.751370263652689 33 -19.688418588621207;
	setAttr -s 8 ".kit[0:7]"  1 9 9 1 1 9 9 
		1;
	setAttr -s 8 ".kot[3:7]"  1 1 9 9 5;
	setAttr -s 8 ".kix[0:7]"  0 1 0.9756208062171936 0.99975961446762085 
		0.99955809116363525 0.98040139675140381 1 0.99996602535247803;
	setAttr -s 8 ".kiy[0:7]"  0 0 0.21946300566196442 0.021924974396824837 
		-0.029726272448897362 -0.19701051712036133 0 0.0082400785759091377;
	setAttr -s 8 ".kox[3:7]"  0.99975961446762085 0.99955809116363525 
		0.98040139675140381 1 0;
	setAttr -s 8 ".koy[3:7]"  0.021925011649727821 -0.029726259410381317 
		-0.19701051712036133 0 0;
createNode animCurveTA -n "animCurveTA2183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.6085540494966317 4 1.6085540494966299 
		7 1.6085540494966299 11 3.7948068215313993 21 3.7948068215313993 25 1.6085540494966297 
		29 -0.045498044900976108 33 1.6085540494966317;
	setAttr -s 8 ".kit[0:7]"  1 9 9 1 1 9 9 
		1;
	setAttr -s 8 ".kot[3:7]"  1 1 9 9 5;
	setAttr -s 8 ".kix[0:7]"  0 1 0.98689109086990356 0.99994856119155884 
		0.99992567300796509 0.96983426809310913 1 0.97735381126403809;
	setAttr -s 8 ".kiy[0:7]"  0 0 0.16138762235641479 0.010144998319447041 
		-0.012190749868750572 -0.24376527965068817 0 0.21161176264286041;
	setAttr -s 8 ".kox[3:7]"  0.99994856119155884 0.99992567300796509 
		0.96983426809310913 1 0;
	setAttr -s 8 ".koy[3:7]"  0.010145001113414764 -0.012190760113298893 
		-0.24376527965068817 0 0;
createNode animCurveTA -n "animCurveTA2184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.23076428718713959 4 1.0789280880091228 
		7 -0.49270276222632337 11 10.294482049548055 21 10.294482049548055 25 4.1348769634669011 
		29 -0.47743876760723408 33 -0.23076428718713959;
	setAttr -s 8 ".kit[0:7]"  1 9 9 1 1 9 9 
		1;
	setAttr -s 8 ".kot[3:7]"  1 1 9 9 5;
	setAttr -s 8 ".kix[0:7]"  0 0.99980813264846802 0.8233410120010376 
		0.99844193458557129 0.99916386604309082 0.81729954481124878 0.96151983737945557 
		0.99947911500930786;
	setAttr -s 8 ".kiy[0:7]"  0 -0.019589193165302277 0.56754696369171143 
		0.055800478905439377 -0.040884647518396378 -0.57621300220489502 -0.27473556995391846 
		0.032272804528474808;
	setAttr -s 8 ".kox[3:7]"  0.99844193458557129 0.99916386604309082 
		0.81729954481124878 0.96151983737945557 0;
	setAttr -s 8 ".koy[3:7]"  0.055800512433052063 -0.040884643793106079 
		-0.57621300220489502 -0.27473556995391846 0;
createNode animCurveTA -n "animCurveTA2185";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2186";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2187";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2188";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2189";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2190";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2191";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2192";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2193";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2194";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2195";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2196";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2197";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2198";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2199";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2200";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2201";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2202";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2203";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2204";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 21 0 25 0 29 0 
		33 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 21 0 25 0 29 0 
		33 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 21 0 25 0 29 0 
		33 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -5.6803276403432976 4 -5.6803276403432976 
		7 -5.6803276403432976 11 -5.6803276403432976 21 -5.6803276403432976 25 -5.6803276403432976 
		29 -5.6803276403432976 33 -5.6803276403432976;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -6.1570151121354497 4 -6.1570151121354497 
		7 -6.1570151121354497 11 -6.1570151121354497 21 -6.1570151121354497 25 -6.1570151121354497 
		29 -6.1570151121354497 33 -6.1570151121354497;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 5.3480278027016874 4 5.3480278027016874 
		7 5.3480278027016874 11 5.3480278027016874 21 5.3480278027016874 25 5.3480278027016874 
		29 5.3480278027016874 33 5.3480278027016874;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL803";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 -0.32620582435379875 1 -0.3374656923405368 
		2 -0.34822534586160031 3 -0.35925376341375881 4 -0.37127336034899289 5 -0.39406053177364841 
		6 -0.41706977345966778 7 -0.41548176733590708 8 -0.39327786175729418 9 -0.38465371181210717 
		10 -0.41554476072497493 11 -0.5050841801464514 12 -0.61477331525896972 13 
		-0.68427717195374582 14 -0.71678396259394983 15 -0.73613782928836002 16 -0.74425741828890757 
		17 -0.74330450021487848 18 -0.73557866143256345 19 -0.72341743604427511 20 
		-0.70910283437969246 21 -0.6947782870259539 22 -0.67520324472316728 23 -0.64621774837600243 
		24 -0.61364250542146725 25 -0.58677383973965735 26 -0.57421848638895623 27 
		-0.56844399092237641 28 -0.55821881594853207 29 -0.53677319079737063 30 -0.4996396182380744 
		31 -0.44828941428528568 32 -0.38732307413386563 33 -0.32579009884388799;
createNode animCurveTL -n "animCurveTL804";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0.033439979479083518 1 0.020425404921218613 
		2 0.0076104652466360443 3 -0.0055868819586663322 4 -0.019892709196791234 
		5 -0.054099167028136927 6 -0.090957211214833716 7 -0.073987626789379854 8 
		-0.003545597470233002 9 0.056524051330235497 10 0.078180716489156199 11 0.039406381471903416 
		12 -0.03226965937314475 13 -0.075787173517500292 14 -0.096957321304944055 
		15 -0.11397006322399036 16 -0.12647462882710117 17 -0.13396883330562062 18 
		-0.13595216101966842 19 -0.13203600605837379 20 -0.12200804074125315 21 -0.10585052645520407 
		22 -0.074693812113823699 23 -0.040533925010436893 24 -0.026900859246177904 
		25 -0.038709229456175581 26 -0.077759101120119745 27 -0.13147569235549747 
		28 -0.17407431658841602 29 -0.18273940152311446 30 -0.14843064148151888 31 
		-0.089174792931275421 32 -0.023536978918824863 33 0.033434419098104823;
createNode animCurveTL -n "animCurveTL805";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0.90790943701675209 1 0.9063705125873267 
		2 0.9047767747225649 3 0.90287385118155816 4 0.9004401348555513 5 0.89912609578577629 
		6 0.8969522413847747 7 0.88915758311720217 8 0.81134357526722189 9 0.63678021464509793 
		10 0.41792445766029213 11 0.20537422495037716 12 0.032010331784158803 13 
		-0.075935454373916439 14 -0.12948073212388436 15 -0.16493938574190523 16 
		-0.18373035275090743 17 -0.18717596728269267 18 -0.17653615879541884 19 -0.15303328482640241 
		20 -0.11786700196383261 21 -0.072219298173496427 22 0.0412107698735419 23 
		0.23763835683996173 24 0.4500080771813727 25 0.60768750580890074 26 0.68579995401458549 
		27 0.72298871516130958 28 0.74313376818441768 29 0.77000631577083367 30 0.80670991764369648 
		31 0.84122929617000464 32 0.8744928005037208 33 0.90791217000900259;
createNode animCurveTA -n "animCurveTA2211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 -34.320242729481222 1 -34.621457347356547 
		2 -34.906129037131393 3 -35.228227397931107 4 -35.641117676549364 5 -36.274145958281188 
		6 -37.040417927457405 7 -37.643326318984826 8 -35.293299652494746 9 -30.633019531930525 
		10 -26.230049756834067 11 -21.305595355205934 12 -16.46396046225615 13 -13.651240339391142 
		14 -11.894315100539291 15 -9.8631031650683418 16 -7.932421424868747 17 -6.4833041143104211 
		18 -5.8909507859903814 19 -6.5188094285400062 20 -8.7130419303591875 21 -12.796311995321224 
		22 -23.397333125345149 23 -38.583861464783681 24 -39.630024302560471 25 18.302691963228327 
		26 30.213731988680344 27 15.744798733947679 28 -6.3120016940889778 29 -20.731227232981535 
		30 -28.215805545793163 31 -32.719909212271489 32 -34.384791351360398 33 -34.320242729481222;
createNode animCurveTA -n "animCurveTA2212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 66.497970732237533 1 66.481643255195564 
		2 66.479788510842795 3 66.490144441507312 4 66.506171268496857 5 66.281336629301819 
		6 66.057490351827951 7 66.528279653997359 8 65.997421656483695 9 62.734594041446194 
		10 57.204773408106547 11 50.203702893050597 12 43.760273660605236 13 39.740043001742173 
		14 37.547579399507228 15 35.734777509230334 16 34.433330397467685 17 33.76225141341471 
		18 33.829411961464693 19 34.740136713291065 20 36.614061329882809 21 39.610586407336172 
		22 47.969447414227666 23 63.062052018795164 24 78.693596013465324 25 83.304346888638861 
		26 80.955951706249678 27 80.213237509093887 28 79.098912642779652 29 77.022761809116062 
		30 74.693924739635008 31 71.794171502595717 32 68.866632765063983 33 66.497970732237533;
createNode animCurveTA -n "animCurveTA2213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 84.523994027970701 1 85.2817151930996 
		2 86.040299355371815 3 86.793189527844049 4 87.534487828227881 5 89.22118443454508 
		6 90.889577478841332 7 89.668929207815296 8 80.843490691221362 9 63.13600339404676 
		10 41.108657208004296 11 22.360616276253257 12 9.2164387225748428 13 0.86604906977874452 
		14 -2.4321264636232502 15 -2.8993297833814204 16 -1.4399702390959013 17 1.0316471127943292 
		18 3.6032998018769389 19 5.3749989777536795 20 5.4721210948097756 21 3.0631838679157442 
		22 -5.3619553971095355 23 -15.678178166649184 24 -9.2198529601919148 25 57.661162833784751 
		26 80.734453637329139 27 79.626116191825275 28 71.009547392960997 29 68.097306379612405 
		30 69.380131883733569 31 72.134095614910379 32 77.231297650378409 33 84.523994027970701;
createNode animCurveTL -n "animCurveTL806";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0.28153965634655165 1 0.26943405850188357 
		2 0.2573932024332527 3 0.24457131308786687 4 0.23008692245234882 5 0.20072610081126613 
		6 0.16845893325662148 7 0.17250662470420111 8 0.23660943310936433 9 0.32732254280839568 
		10 0.40381753230467538 11 0.43986357409726806 12 0.4479543186182845 13 0.45287292933319878 
		14 0.45518501745501982 15 0.45539661152028726 16 0.45398638283429466 17 0.45143053107932618 
		18 0.44821931902595524 19 0.44486470950682205 20 0.44189888066839417 21 0.43986357409726806 
		22 0.43519705989729784 23 0.42420030246846568 24 0.40721964386001136 25 0.38472771961451102 
		26 0.34859952679651895 27 0.29697212180581051 28 0.24416264026367132 29 0.21098492742791253 
		30 0.21051535419591261 31 0.23123166454448907 32 0.25921499426487871 33 0.28195538185646302;
createNode animCurveTL -n "animCurveTL807";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0.062866594353928579 1 0.07508616864206083 
		2 0.087145963643785032 3 0.099503524724044612 4 0.11246420766932216 5 0.13301659356884535 
		6 0.15304229465919331 7 0.15450171019274156 8 0.12244045537194499 9 0.05880780186360017 
		10 -0.01483911282080772 11 -0.057631132063282707 12 -0.067053976059632703 
		13 -0.072194679200054637 14 -0.073805246397641758 15 -0.072701430327639469 
		16 -0.06973767573891515 17 -0.065787795366786028 18 -0.06173077081918301 
		19 -0.058441643423911033 20 -0.056787809052702302 21 -0.057631132063282707 
		22 -0.062933285983696546 23 -0.069489978035005145 24 -0.069857307048743073 
		25 -0.054678899718830005 26 -0.0093458088586400832 27 0.054824296106865393 
		28 0.11250395109584811 29 0.14337920639634047 30 0.1413627250040306 31 0.11973455197865639 
		32 0.08954103715496961 33 0.062861033972949884;
createNode animCurveTL -n "animCurveTL808";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0.94758108715296308 1 0.94900315997716933 
		2 0.95016790200498025 3 0.95134471370660323 4 0.95284236361165542 5 0.95843480213637511 
		6 0.96456509036243265 7 0.96071932327497866 8 0.9405293612492035 9 0.91258098200184901 
		10 0.88782328516565179 11 0.87448036266090157 12 0.8699351434055701 13 0.86687158336500125 
		14 0.86513165427924577 15 0.86454005362251285 16 0.86491100438841939 17 0.86605339143064042 
		18 0.86777429910096804 19 0.86988093080142603 20 0.87218083732730978 21 0.87448036266090157 
		22 0.87957099659432347 23 0.88947451768916042 24 0.90239186392051074 25 0.91479094125006344 
		26 0.92543974126003459 27 0.93478059078540554 28 0.94128243323431904 29 0.94547352493364234 
		30 0.947916525537982 31 0.94853933362820386 32 0.94804871093231968 33 0.94758382014521336;
createNode animCurveTA -n "animCurveTA2214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 -29.993438056114957 1 -29.748203711709479 
		2 -29.531162903351355 3 -29.299190803466608 4 -29.004588980295338 5 -28.270051647323033 
		6 -27.431577828250404 7 -27.506146856131348 8 -29.031455186834016 9 -31.146985918879817 
		10 -32.933920223070807 11 -33.92905513196753 12 -34.357653338434453 13 -34.593567520464475 
		14 -34.666594036885442 15 -34.612205354859547 16 -34.470287117868295 17 -34.283496448679514 
		18 -34.095352476288198 19 -33.948213079043796 20 -33.881314937472759 21 -33.92905513196753 
		22 -34.610978386457923 23 -35.440712677503427 24 -35.561919455477017 25 -34.988240719055753 
		26 -33.861779308936725 27 -32.443781901458777 28 -31.140175306836909 29 -30.247763979078499 
		30 -29.861103624448095 31 -29.801955914589566 32 -29.914272614027901 33 -29.993438056114957;
createNode animCurveTA -n "animCurveTA2215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 -62.825162069071652 1 -62.871856917261901 
		2 -62.927827888857415 3 -63.002027294731249 4 -63.099706583057085 5 -63.035516004777044 
		6 -63.000376862072834 7 -63.528838935905647 8 -65.065687277812927 9 -67.275485778754188 
		10 -69.424309681712117 11 -70.611859304897294 12 -70.962450784339381 13 -71.246376909738203 
		14 -71.458471081779592 15 -71.59449072688831 16 -71.650756656675426 17 -71.623853677114624 
		18 -71.510371867883947 19 -71.306677671364511 20 -71.008716278899939 21 -70.611859304897294 
		22 -69.195027985619234 23 -66.517133199041041 24 -63.64793285961747 25 -61.732494232058578 
		26 -61.241944901583821 27 -61.587313284229936 28 -62.281322190051469 29 -62.753607099952596 
		30 -62.836659061029152 31 -62.821037498362848 32 -62.798161489828914 33 -62.825162069071652;
createNode animCurveTA -n "animCurveTA2216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 -65.118659644321454 1 -64.302938203961403 
		2 -63.476543440770712 3 -62.634927558560285 4 -61.777600094629527 5 -60.165718086960041 
		6 -58.543586847171213 7 -59.145601235532247 8 -63.517723865397606 9 -70.128675668088988 
		10 -76.48879178314499 11 -79.763268616337015 12 -80.371035826071378 13 -80.786528741679064 
		14 -81.038204063500032 15 -81.148603854226678 16 -81.13568540025247 17 -81.014543607746802 
		18 -80.799409295233858 19 -80.505766415923276 20 -80.152410188022216 21 -79.763268616337015 
		22 -78.123483030839026 23 -75.22636327962978 24 -72.286510975141965 25 -69.668682195973446 
		26 -66.575891993777574 27 -62.820686589841628 28 -59.487125705924704 29 -57.725474654476351 
		30 -58.222253295952171 31 -60.248955286772421 32 -62.851460724656782 33 -65.118659644321454;
createNode animCurveTL -n "animCurveTL809";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.5330905047330146 4 -2.5330905047330146 
		7 -2.5330905047330146 13 -2.982244883201091 21 -2.982244883201091 25 -2.8614370767228712 
		29 -2.7008775891641785 33 -2.5330905047330146;
	setAttr -s 8 ".kit[0:7]"  1 3 3 9 9 9 9 
		1;
	setAttr -s 8 ".kot[1:7]"  3 3 9 9 9 9 5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 0.010389333590865135 0.033092308789491653 
		0.009477103129029274 0.0081212315708398819 0.0079463254660367966;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 -0.99994605779647827 0.99945229291915894 
		0.99995511770248413 0.99996703863143921 0.99996840953826904;
createNode animCurveTL -n "animCurveTL810";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.0768417541934041 4 2.0768417541934041 
		7 2.0768417541934041 13 1.4240624167621636 21 1.4240624167621636 25 1.7861655623246184 
		29 1.9495674054044119 33 2.0768417541934041;
	setAttr -s 8 ".kit[0:7]"  1 3 3 9 9 9 9 
		1;
	setAttr -s 8 ".kot[1:7]"  3 3 9 9 9 9 5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 0.007148736622184515 0.011045902036130428 
		0.0050744186155498028 0.009173625148832798 0.010475478135049343;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 -0.99997442960739136 0.99993896484375 
		0.99998712539672852 0.99995791912078857 0.99994510412216187;
createNode animCurveTL -n "animCurveTL811";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.0481292103665369 4 2.0481292103665369 
		7 2.0481292103665369 13 1.2358010127664807 21 1.2358010127664807 25 1.7515032595495144 
		29 1.9304320023230213 33 2.0481292103665369;
	setAttr -s 8 ".kit[0:7]"  1 3 3 9 9 9 9 
		1;
	setAttr -s 8 ".kot[1:7]"  3 3 9 9 9 9 5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 0.0057447096332907677 0.0077561801299452782 
		0.0038389402907341719 0.0089896339923143387 0.011327772401273251;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 -0.99998348951339722 0.99996989965438843 
		0.99999260902404785 0.99995958805084229 0.99993592500686646;
createNode animCurveTA -n "animCurveTA2217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -36.33267118790765 4 -36.33267118790765 
		7 -36.33267118790765 13 -14.740379440658328 21 -14.740379440658328 25 -88.808544236675544 
		29 -70.929450474300481 33 -36.33267118790765;
	setAttr -s 8 ".kit[0:7]"  1 3 3 9 9 9 9 
		1;
	setAttr -s 8 ".kot[1:7]"  3 3 9 9 9 9 5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 0.77799534797668457 0.29559487104415894 
		0.2623913586139679 0.27955162525177002 0.21561937034130096;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0.62827003002166748 -0.95531338453292847 
		-0.96496152877807617 0.96013063192367554 0.97647750377655029;
createNode animCurveTA -n "animCurveTA2218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 76.683613894212968 4 76.683613894212968 
		7 76.683613894212968 13 42.939882371214097 21 42.939882371214097 25 83.878009663660919 
		29 83.992088991464641 33 76.683613894212968;
	setAttr -s 8 ".kit[0:7]"  1 3 3 9 9 9 9 
		1;
	setAttr -s 8 ".kot[1:7]"  3 3 9 9 9 9 5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 0.62104904651641846 0.48848915100097656 
		0.34880661964416504 0.90471971035003662 0.72258561849594116;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 -0.78377169370651245 0.8725699782371521 
		0.93719470500946045 -0.42600727081298828 -0.69128143787384033;
createNode animCurveTA -n "animCurveTA2219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 83.339653964504663 4 83.339653964504663 
		7 83.339653964504663 13 20.56028059081039 21 20.56028059081039 25 -39.173779852465344 
		29 12.000369856390989 33 83.339653964504663;
	setAttr -s 8 ".kit[0:7]"  1 3 3 9 9 9 9 
		1;
	setAttr -s 8 ".kot[1:7]"  3 3 9 9 9 9 5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 0.39184555411338806 0.35821202397346497 
		0.87241494655609131 0.12375316768884659 0.10647717118263245;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 -0.92003101110458374 -0.9336402416229248 
		-0.48876598477363586 0.99231302738189697 0.99431514739990234;
createNode animCurveTL -n "animCurveTL812";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.1344099872624747 4 -1.1344099872624747 
		7 -1.1344099872624747 11 -1.1344099872624747 21 -1.1344099872624747 25 -1.1344099872624747 
		29 -1.1344099872624747 33 -1.1344099872624747;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL813";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.1296110275135671 4 2.1296110275135671 
		7 2.1296110275135671 11 2.1296110275135671 21 2.1296110275135671 25 2.1296110275135671 
		29 2.1296110275135671 33 2.1296110275135671;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL814";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.0696046407532309 4 2.0696046407532309 
		7 2.0696046407532309 11 2.0696046407532309 21 2.0696046407532309 25 2.0696046407532309 
		29 2.0696046407532309 33 2.0696046407532309;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -44.889076788073439 4 -44.889076788073439 
		7 -44.889076788073439 11 -44.889076788073439 21 -44.889076788073439 25 -44.889076788073439 
		29 -44.889076788073439 33 -44.889076788073439;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -71.289995585927571 4 -71.289995585927571 
		7 -71.289995585927571 11 -71.289995585927571 21 -71.289995585927571 25 -71.289995585927571 
		29 -71.289995585927571 33 -71.289995585927571;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -50.619719123253631 4 -50.619719123253631 
		7 -50.619719123253631 11 -50.619719123253631 21 -50.619719123253631 25 -50.619719123253631 
		29 -50.619719123253631 33 -50.619719123253631;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL815";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.48508072212835623 4 0.77290696453185026 
		7 0.77290696453185026 11 0.77290696453185026 21 0.77290696453185026 25 0.77290696453185026 
		29 0.77290696453185026 33 0.48508072212835623;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.0081064766272902489 1 1 1 1 
		0.0092644514515995979 0.0046323728747665882;
	setAttr -s 8 ".kiy[0:7]"  0 0.99996715784072876 0 0 0 0 -0.99995708465576172 
		-0.99998927116394043;
createNode animCurveTL -n "animCurveTL816";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.3461376073222053 4 -0.71234308293286885 
		7 -0.71234308293286885 11 -0.71234308293286885 21 -0.71234308293286885 25 
		-0.71234308293286885 29 -0.71234308293286885 33 -1.3461376073222053;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.0036815048661082983 1 1 1 1 
		0.0042074252851307392 0.0021037256810814142;
	setAttr -s 8 ".kiy[0:7]"  0 0.99999320507049561 0 0 0 0 -0.99999117851257324 
		-0.99999785423278809;
createNode animCurveTL -n "animCurveTL817";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.22135527095932556 4 -0.35872267288917942 
		7 -0.35872267288917942 11 -0.35872267288917942 21 -0.35872267288917942 25 
		-0.35872267288917942 29 -0.35872267288917942 33 -0.22135527095932556;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.016983626410365105 1 1 1 1 
		0.019409002736210823 0.0097058694809675217;
	setAttr -s 8 ".kiy[0:7]"  0 -0.99985575675964355 0 0 0 0 
		0.99981164932250977 0.99995297193527222;
createNode animCurveTL -n "animCurveTL818";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.578730476483856 4 -0.35039089098226439 
		7 -0.35039089098226439 11 -0.35039089098226439 21 -0.35039089098226439 25 
		-0.35039089098226439 29 -0.35039089098226439 33 -0.578730476483856;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.010218164883553982 1 1 1 1 
		0.011677715927362442 0.005839154589921236;
	setAttr -s 8 ".kiy[0:7]"  0 0.99994778633117676 0 0 0 0 -0.99993181228637695 
		-0.99998295307159424;
createNode animCurveTL -n "animCurveTL819";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.3751169572549602 4 -0.40854033940183732 
		7 -0.40854033940183732 11 -0.40854033940183732 21 -0.40854033940183732 25 
		-0.40854033940183732 29 -0.40854033940183732 33 -1.3751169572549602;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.0024140109308063984 1 1 1 1 
		0.0027588671073317528 0.0013794370461255312;
	setAttr -s 8 ".kiy[0:7]"  0 0.99999707937240601 0 0 0 0 -0.99999618530273438 
		-0.99999904632568359;
createNode animCurveTL -n "animCurveTL820";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.21739896228115529 4 -0.82408995422063858 
		7 -0.82408995422063858 11 -0.82408995422063858 21 -0.82408995422063858 25 
		-0.82408995422063858 29 -0.82408995422063858 33 -0.21739896228115529;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.0038459710776805878 1 1 1 1 
		0.0043953857384622097 0.0021977080032229424;
	setAttr -s 8 ".kiy[0:7]"  0 -0.99999260902404785 0 0 0 0 
		0.99999034404754639 0.99999755620956421;
createNode animCurveTA -n "animCurveTA2223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.061808866237340665 4 -0.061808866237337522 
		7 -0.061808866237337522 11 -0.061808866237337522 21 -0.061808866237337522 
		25 -0.061808866237337522 29 -0.061808866237337522 33 -0.061808866237340665;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -59.058178941076754 4 -59.058178941076754 
		7 -59.058178941076754 11 -59.058178941076754 21 -59.058178941076754 25 -59.058178941076754 
		29 -59.058178941076754 33 -59.058178941076754;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 16.57914742975785 4 16.579147429757843 
		7 16.579147429757843 11 16.579147429757843 21 16.579147429757843 25 16.579147429757843 
		29 16.579147429757843 33 16.57914742975785;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 12.253734489678925 4 12.253734489678925 
		7 12.253734489678925 11 12.253734489678925 21 12.253734489678925 25 12.253734489678925 
		29 12.253734489678925 33 12.253734489678925;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -65.746751280844975 4 -65.746751280844961 
		7 -65.746751280844961 11 -65.746751280844961 21 -65.746751280844961 25 -65.746751280844961 
		29 -65.746751280844961 33 -65.746751280844975;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 21 0 25 0 29 0 
		33 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 15.711328223519061 4 15.711328223519057 
		7 15.711328223519057 11 15.711328223519057 21 15.711328223519057 25 15.711328223519057 
		29 15.711328223519057 33 15.711328223519061;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.5572674112203657 4 8.5572674112203622 
		7 8.5572674112203622 11 8.5572674112203622 21 8.5572674112203622 25 8.5572674112203622 
		29 8.5572674112203622 33 8.5572674112203657;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 21 0 25 0 29 0 
		33 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 21 0 25 0 29 0 
		33 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 21 0 25 0 29 0 
		33 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 21 0 25 0 29 0 
		33 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 21 0 25 0 29 0 
		33 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 21 0 25 0 29 0 
		33 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -133.3327622181794 4 -133.3327622181794 
		7 -133.3327622181794 11 -133.3327622181794 21 -133.3327622181794 25 -133.3327622181794 
		29 -133.3327622181794 33 -133.3327622181794;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 46.995440027015853 4 46.995440027015853 
		7 46.995440027015853 11 46.995440027015853 21 46.995440027015853 25 46.995440027015853 
		29 46.995440027015853 33 46.995440027015853;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -49.838450918042973 4 -49.838450918042973 
		7 -49.838450918042973 11 -49.838450918042973 21 -49.838450918042973 25 -49.838450918042973 
		29 -49.838450918042973 33 -49.838450918042973;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 21 0 25 0 29 0 
		33 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 21 0 25 0 29 0 
		33 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 77.428435288625664 4 77.428435288625664 
		7 77.428435288625664 11 77.428435288625664 21 77.428435288625664 25 77.428435288625664 
		29 77.428435288625664 33 77.428435288625664;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2243";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2244";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2245";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2246";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2247";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2248";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 21 13.994403295754109 
		33 13.994403295754109;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2249";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2250";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 21 0 33 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2251";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 21 13.994403295754109 
		33 13.994403295754109;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2252";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 21 0 25 0 29 0 
		33 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2253";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 21 0 25 0 29 0 
		33 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2254";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 37.656527956664149 4 37.656527956664149 
		7 17.254116939558369 11 17.254116939558369 21 17.254116939558369 25 17.254116939558369 
		29 17.254116939558369 33 37.656527956664149;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.54808127880096436 0.54808127880096436 
		1 1 1 0.59942400455474854 0.35066184401512146;
	setAttr -s 8 ".kiy[0:7]"  0 -0.8364250659942627 -0.8364250659942627 
		0 0 0 0.80043166875839233 0.93650209903717041;
createNode animCurveTA -n "animCurveTA2255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 21 0 25 0 29 0 
		33 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 21 0 25 0 29 0 
		33 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 21 0 25 0 29 0 
		33 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.55766507474896454 4 0.47169836699590695 
		7 0.3060699065895281 11 1.236975047779568 21 1.236975047779568 25 1.4214016114875909 
		29 0.87616976080293729 33 0.55766507474896454;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.99982297420501709 0.99836564064025879 
		0.99939447641372681 0.99997621774673462 0.99972128868103027 0.99840593338012695 
		0.99913203716278076;
	setAttr -s 8 ".kiy[0:7]"  0 -0.018815942108631134 0.0571490079164505 
		0.03479468822479248 0.006897373590618372 -0.023608069866895676 -0.056441310793161392 
		-0.041655994951725006;
createNode animCurveTA -n "animCurveTA2259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.0198239624003347 4 1.2768818095243442 
		7 -0.15351191025562338 11 7.7222637653379511 21 7.7222637653379511 25 9.4440669425409904 
		29 -1.2973778944769148 33 2.0198239624003347;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.98704254627227783 0.90077906847000122 
		0.95925229787826538 0.997933030128479 0.86114329099655151 0.89943701028823853 
		0.91725838184356689;
	setAttr -s 8 ".kiy[0:7]"  0 -0.16045871376991272 0.43427768349647522 
		0.28255096077919006 0.064262181520462036 -0.5083622932434082 -0.43705043196678162 
		0.39829272031784058;
createNode animCurveTA -n "animCurveTA2260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 7.5513277031901893 4 7.555110749961746 
		7 7.5655322219557872 11 7.3353787742734253 21 7.3353787742734253 25 7.5751720837071632 
		29 7.4537320541368777 33 7.5513277031901893;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.99999946355819702 0.99986493587493896 
		0.99996292591094971 0.99995976686477661 0.99997001886367798 0.99999880790710449 
		0.99991840124130249;
	setAttr -s 8 ".kiy[0:7]"  0 0.0010624949354678392 -0.016433693468570709 
		-0.008607400581240654 0.0089678885415196419 0.0077459719032049179 -0.0015606092056259513 
		0.012774202972650528;
createNode animCurveTA -n "animCurveTA2261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.95273800592490188 4 -0.77436614475965426 
		7 -0.43048234716517736 11 -18.829269962708576 16 -16.628895002917908 21 -16.628895002917908 
		25 -7.0084518016860731 29 2.310873568438117 33 -0.95273800592490188;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[0:8]"  0 0.99923783540725708 0.59508419036865234 
		0.72776073217391968 0.99342852830886841 0.87261956930160522 0.62787365913391113 
		0.92964357137680054 0.91959905624389648;
	setAttr -s 9 ".kiy[0:8]"  0 0.039034858345985413 -0.80366337299346924 
		-0.68583112955093384 0.11445426195859909 0.48840054869651794 0.77831530570983887 
		0.36846008896827698 -0.39285817742347717;
createNode animCurveTA -n "animCurveTA2262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.41955881507249099 4 16.096308660636037 
		7 -3.9084086951295003 11 -28.567668164768961 16 11.905623807122382 21 11.905623807122382 
		25 2.770439936679427 29 -5.7089991278026551 33 -0.41955881507249099;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[0:8]"  0 0.96759462356567383 0.28675398230552673 
		0.73592251539230347 0.42675423622131348 0.88303762674331665 0.65524566173553467 
		0.97889208793640137 0.82216191291809082;
	setAttr -s 9 ".kiy[0:8]"  0 -0.25250869989395142 -0.95800423622131348 
		0.67706573009490967 0.90436762571334839 -0.46930220723152161 -0.75541585683822632 
		-0.2043779194355011 0.56925368309020996;
createNode animCurveTA -n "animCurveTA2263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.6634293801101625 4 1.6474266959931043 
		7 1.6930326595131873 11 6.6060424320876807 16 -0.30458770080736486 21 -0.30458770080736486 
		25 0.86545910645245694 29 2.0077625371950685 33 1.6634293801101625;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[0:8]"  0 0.99999755620956421 0.93758583068847656 
		0.99331444501876831 0.94033485651016235 0.99769121408462524 0.98874068260192871 
		0.99863892793655396 0.99898576736450195;
	setAttr -s 9 ".kiy[0:8]"  0 0.0022143148817121983 0.34775394201278687 
		-0.11543987691402435 -0.34025052189826965 0.06791340559720993 0.14963895082473755 
		0.052155949175357819 -0.045027408748865128;
createNode animCurveTA -n "animCurveTA2264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.0598705588951514 4 6.3459498001189099 
		7 -4.8714700432790456 11 -11.585389647444966 21 -4.8714700432790456 25 -1.107962030853916 
		29 -4.7871034605416334 33 -1.0598705588951514;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.96167808771133423 0.59772306680679321 
		1 0.93106871843338013 0.9999847412109375 0.99999505281448364 0.89873695373535156;
	setAttr -s 8 ".kiy[0:7]"  0 -0.27418112754821777 -0.80170267820358276 
		0 0.36484381556510925 0.0055216955952346325 0.0031475638970732689 0.43848821520805359;
createNode animCurveTA -n "animCurveTA2265";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.26280824457411484 4 1.9963037400559176 
		7 -11.783606204137085 11 -10.333092121253337 21 -11.783606204137085 25 -2.8983658144265312 
		29 5.037822461176523 33 -0.26280824457411484;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.75752806663513184 0.73511123657226563 
		1 0.96344822645187378 0.67235147953033447 0.98544639348983765 0.82159823179244995;
	setAttr -s 8 ".kiy[0:7]"  0 -0.65280258655548096 -0.67794650793075562 
		0 0.26789459586143494 0.74023205041885376 0.16998639702796936 -0.57006692886352539;
createNode animCurveTA -n "animCurveTA2266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 6.5086084195154994 4 6.3786479652115133 
		7 7.5423825101935913 11 7.4167347966497221 21 7.5423825101935913 25 6.6727974003941704 
		29 6.1239022477803227 33 6.5086084195154994;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.99702370166778564 0.99699890613555908 
		1 0.99961316585540771 0.99571806192398071 0.99994224309921265 0.99873447418212891;
	setAttr -s 8 ".kiy[0:7]"  0 0.077095970511436462 0.077415682375431061 
		0 -0.027812430635094643 -0.092441782355308533 -0.010745523497462273 0.050294209271669388;
createNode animCurveTA -n "animCurveTA2267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.47197901174667056 4 1.6329203501433724 
		7 2.0923016578577855 11 0.72768375478866032 21 0.72768375478866032 25 0.62622119873454107 
		29 0.62731213752257731 33 -0.47197901174667056;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.98209738731384277 0.99771541357040405 
		0.99870020151138306 0.99999278783798218 0.99997842311859131 0.99742680788040161 
		0.98980486392974854;
	setAttr -s 8 ".kiy[0:7]"  0 0.18837389349937439 -0.067556850612163544 
		-0.050970252603292465 -0.0037946635857224464 -0.0065691652707755566 -0.071692086756229401 
		-0.1424298882484436;
createNode animCurveTA -n "animCurveTA2268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.6163460272109138 4 -5.9572552200413194 
		7 -6.899880481305205 11 1.1028706964461599 21 1.1028706964461599 25 -3.8840070108449005 
		29 -5.1467380795344901 33 -1.6163460272109138;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.93000566959381104 0.88426852226257324 
		0.95801007747650146 0.98304826021194458 0.92556476593017578 0.98916471004486084 
		0.90775585174560547;
	setAttr -s 8 ".kiy[0:7]"  0 -0.36754518747329712 0.46697881817817688 
		0.28673452138900757 -0.18334713578224182 -0.37858927249908447 0.14680992066860199 
		0.41949886083602905;
createNode animCurveTA -n "animCurveTA2269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.9660530560192304 4 1.9624155241830841 
		7 1.9403913422709886 11 7.2307577465423991 21 7.2307577465423991 25 1.9840981620606046 
		29 1.970241689140211 33 1.9660530560192304;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.99999815225601196 0.9303666353225708 
		0.98098242282867432 0.98128664493560791 0.9455265998840332 0.9999992847442627 
		0.99999982118606567;
	setAttr -s 8 ".kiy[0:7]"  0 -0.0019194881897419691 0.36663055419921875 
		0.19409644603729248 -0.1925525963306427 -0.32554477453231812 -0.0011810485739260912 
		-0.00054829090368002653;
createNode animCurveTA -n "animCurveTA2270";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 21 0 25 0 29 0 
		33 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2271";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 21 0 25 0 29 0 
		33 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2272";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 56.683882055276058 4 56.683882055276058 
		7 27.080064458283051 11 27.080064458283051 21 27.080064458283051 25 27.080064458283051 
		29 27.080064458283051 33 56.683882055276058;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 0.41157516837120056 0.41157516837120056 
		1 1 1 0.45863071084022522 0.24987001717090607;
	setAttr -s 8 ".kiy[0:7]"  0 -0.91137582063674927 -0.91137582063674927 
		0 0 0 0.88862693309783936 0.96827936172485352;
createNode animCurveTA -n "animCurveTA2273";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -94.468308159208192 4 -94.468308159208192 
		7 -94.468308159208192 11 -94.468308159208192 21 -94.468308159208192 25 -94.468308159208192 
		29 -94.468308159208192 33 -94.468308159208192;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2274";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 72.836273346919612 4 72.836273346919612 
		7 72.836273346919612 11 72.836273346919612 21 72.836273346919612 25 72.836273346919612 
		29 72.836273346919612 33 72.836273346919612;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2275";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 6.0130362214677122 4 6.0130362214677122 
		7 6.0130362214677122 11 6.0130362214677122 21 6.0130362214677122 25 6.0130362214677122 
		29 6.0130362214677122 33 6.0130362214677122;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2276";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 21 0 25 0 29 0 
		33 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2277";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 7 0 11 0 21 0 25 0 29 0 
		33 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 44.839776244285055 4 44.839776244285055 
		7 44.839776244285055 11 44.839776244285055 21 44.839776244285055 25 44.839776244285055 
		29 44.839776244285055 33 44.839776244285055;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode clipLibrary -n "clipLibrary2";
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
	setAttr -s 3 ".sol";
connectAttr "cdr_sway_left.st" "clipLibrary2.st[0]";
connectAttr "cdr_sway_left.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL780.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL781.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL782.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL783.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL784.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA2160.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU1.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU2.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU3.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU4.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU5.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU6.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU7.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU8.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA2161.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA2162.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA2163.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL785.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL786.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL787.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL788.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL789.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL790.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA2164.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA2165.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA2166.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL791.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL792.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL793.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA2167.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA2168.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA2169.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA2170.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA2171.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA2172.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA2173.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA2174.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA2175.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTA2176.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTA2177.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTA2178.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTA2179.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTA2180.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTA2181.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL794.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL795.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL796.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTL797.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTL798.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTL799.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTL800.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL801.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL802.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA2182.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA2183.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA2184.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA2185.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA2186.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA2187.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA2188.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA2189.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA2190.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA2191.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA2192.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA2193.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA2194.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA2195.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA2196.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA2197.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA2198.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA2199.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA2200.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA2201.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA2202.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA2203.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA2204.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTA2205.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA2206.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA2207.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA2208.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA2209.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA2210.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL803.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL804.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL805.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA2211.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA2212.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA2213.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL806.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL807.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL808.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA2214.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA2215.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA2216.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL809.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL810.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL811.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA2217.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA2218.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA2219.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL812.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL813.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL814.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTA2220.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTA2221.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTA2222.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTL815.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTL816.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTL817.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTL818.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTL819.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTL820.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA2223.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA2224.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA2225.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA2226.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA2227.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA2228.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA2229.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA2230.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA2231.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA2232.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA2233.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA2234.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA2235.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA2236.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA2237.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA2238.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA2239.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA2240.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA2241.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA2242.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA2243.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA2244.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA2245.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA2246.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA2247.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA2248.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA2249.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA2250.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA2251.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA2252.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA2253.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA2254.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA2255.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA2256.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA2257.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA2258.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA2259.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA2260.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA2261.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA2262.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA2263.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA2264.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA2265.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA2266.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA2267.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA2268.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA2269.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA2270.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA2271.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA2272.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA2273.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA2274.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA2275.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA2276.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA2277.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA2278.a" "clipLibrary2.cel[0].cev[167].cevr";
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
// End of cdr-m_sway_left.ma
