//Maya ASCII 4.0 scene
//Name: lsa_idle_florida.ma
//Last modified: Fri, Mar 21, 2003 06:04:34 PM
requires maya "4.0";
requires "p3dDeformer" "2.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_idle_floridaSource";
	setAttr ".ihi" 0;
	setAttr ".du" 119;
	setAttr ".ci" no;
createNode animCurveTL -n "lsa_Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTL -n "lsa_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTL -n "lsa_Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTL -n "lsa_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTL -n "lsa_Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23.15 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23.15 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23.15 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23.15 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23.15 0;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23.15 0;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23.15 1;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23.15 1;
createNode animCurveTA -n "lsa_Hoop_Root_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Hoop_Root_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Hoop_Root_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTL -n "lsa_Hoop_Root_translateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTL -n "lsa_Hoop_Root_translateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTL -n "lsa_Hoop_Root_translateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTL -n "lsa_Right_Foot_Hoop_translateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.26454016861507795 7.54 -0.26454016861507795 
		9.45 -0.26454016861507795 14.76 -0.26454016861507795 25.5 -0.26454016861507795 
		35 -0.46278047938492711 52 -0.46278047938492711 60 -0.11311719952010334 73 
		-0.11311719952010334 80 -0.08468593255313113 93 -0.08468593255313113 100 
		-0.2130331400686041 105 -0.26454016861507795 122 -0.26454016861507795;
	setAttr -s 14 ".kit[0:13]"  9 9 9 3 3 9 9 
		3 3 3 3 9 3 3;
	setAttr -s 14 ".kot[0:13]"  9 9 9 3 3 9 9 
		3 3 3 3 9 3 3;
createNode animCurveTL -n "lsa_Right_Foot_Hoop_translateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.13806192026723146 7.54 0.13806192026723146 
		9.45 0.13806192026723146 12.925000000000001 0.26992056068773695 14.76 0.13806192026723146 
		25.5 0.13806192026723146 52 0.13806192026723146 60 0.092482224682335107 73 
		0.092482224682335107 80 0.092482224682335107 93 0.092482224682335107 100 
		0.18906428728209906 105 0.13806192026723146 122 0.13806192026723146;
	setAttr -s 14 ".kit[0:13]"  9 9 9 9 3 3 9 
		3 3 3 3 9 3 3;
	setAttr -s 14 ".kot[0:13]"  9 9 9 9 3 3 9 
		3 3 3 3 9 3 3;
createNode animCurveTL -n "lsa_Right_Foot_Hoop_translateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.064904406754016042 7.54 -0.064904406754016042 
		9.445 -0.14884585365024186 14.76 -1.1145722068545123 25.5 -1.1145722068545123 
		31 -0.64530421335155808 35 -0.779299253282975 52 -0.779299253282975 60 -1.4370363082900039 
		73 -1.3940538430372553 80 -0.94187123143781637 93 -0.94187123143781637 105 
		-0.064904406754016042 122 -0.064904406754016042;
	setAttr -s 14 ".kit[0:13]"  9 9 9 3 3 9 9 
		9 3 3 3 3 3 3;
	setAttr -s 14 ".kot[0:13]"  9 9 9 3 3 9 9 
		9 3 3 3 3 3 3;
createNode animCurveTA -n "lsa_Right_Foot_Hoop_rotateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 7.54 0 9.45 0 12.925000000000001 
		-27.175957026768238 14.76 0 25.5 0 35 -77.90923951768572 52 -77.90923951768572 
		60 100.98396552697211 73 100.98396552697211 80 2.2319860650467795 93 2.2319860650467795 
		100 11.95273014875581 105 0 122 0;
	setAttr -s 15 ".kit[0:14]"  9 9 9 9 3 3 9 
		9 3 3 3 3 9 3 3;
	setAttr -s 15 ".kot[0:14]"  9 9 9 9 3 3 9 
		9 3 3 3 3 9 3 3;
createNode animCurveTA -n "lsa_Right_Foot_Hoop_rotateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -13.717778871715202 7.54 -13.717778871715202 
		9.45 -13.717778871715202 14.76 -13.717778871715202 25.5 -13.717778871715202 
		35 -26.932724114652512 52 -26.932724114652512 60 5.0151570053327781 73 5.0151570053327781 
		80 15.695740724126079 93 15.695740724126079 100 36.102278751320696 105 -13.717778871715202 
		122 -13.717778871715202;
	setAttr -s 14 ".kit[0:13]"  9 9 9 3 3 9 9 
		3 3 3 3 9 3 3;
	setAttr -s 14 ".kot[0:13]"  9 9 9 3 3 9 9 
		3 3 3 3 9 3 3;
createNode animCurveTA -n "lsa_Right_Foot_Hoop_rotateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 7.54 0 9.45 0 14.76 0 25.5 
		0 35 38.945199897128731 52 38.945199897128731 60 -34.727125711478784 73 -34.727125711478784 
		80 -0.39395628888018702 93 -0.39395628888018702 100 10.516854223176537 105 
		0 122 0;
	setAttr -s 14 ".kit[0:13]"  9 9 9 3 3 9 9 
		3 3 3 3 9 3 3;
	setAttr -s 14 ".kot[0:13]"  9 9 9 3 3 9 9 
		3 3 3 3 9 3 3;
createNode animCurveTL -n "lsa_Left_Foot_Hoop_translateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.21594587158542247 7.54 0.21594587158542247 
		9.45 0.21594587158542247 25.5 0.21594587158542247 35 0.55958279742657946 
		55 0.55958279742657946 62.145000000000003 0.99768892875805648 71 0.57081036727842971 
		76 0.57081036727842971 80 0.57081036727842971 92 0.21594587158542247 101 
		0.21594587158542247 122 0.21594587158542247;
	setAttr -s 13 ".kit[0:12]"  9 3 3 3 3 3 9 
		3 3 3 3 3 3;
	setAttr -s 13 ".kot[0:12]"  9 3 3 3 3 3 9 
		3 3 3 3 3 3;
createNode animCurveTL -n "lsa_Left_Foot_Hoop_translateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.1380615615975922 3.635 0.30336443779835609 
		7.54 0.1380615615975922 9.45 0.1380615615975922 25.5 0.1380615615975922 55 
		0.1380615615975922 62.145000000000003 0.13800000000000001 76 0.13800000000000001 
		80 0.13800000000000001 92 0.1380615615975922 101 0.1380615615975922 122 0.1380615615975922;
	setAttr -s 12 ".kit[0:11]"  9 9 3 3 3 3 9 
		3 3 3 3 3;
	setAttr -s 12 ".kot[0:11]"  9 9 3 3 3 3 9 
		3 3 3 3 3;
createNode animCurveTL -n "lsa_Left_Foot_Hoop_translateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.00078430246903575811 3.635 
		-0.12007282686055976 7.54 -0.66741116427184244 9.45 -0.66741116427184244 
		25.5 -0.66741116427184244 35 -0.82352319509592786 55 -0.82352319509592786 
		62.145000000000003 -1.8407468749362581 71 -1.8671316365632011 76 -1.8671316365632011 
		80 -1.8671316365632011 92 -0.17879972537818259 101 -0.0015037310709436014 
		122 0.00078430246903575811;
	setAttr -s 14 ".kit[0:13]"  1 9 3 3 3 3 3 
		3 3 3 3 3 3 3;
	setAttr -s 14 ".kot[0:13]"  1 9 3 3 3 3 3 
		3 3 3 3 3 3 3;
	setAttr -s 14 ".kix[0:13]"  0.060407053679227829 0.0037613478489220142 
		1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[0:13]"  0.99817383289337158 -0.99999290704727173 
		0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[0:13]"  0.060406990349292755 0.0037613478489220142 
		1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[0:13]"  0.99817383289337158 -0.99999290704727173 
		0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "lsa_Left_Foot_Hoop_rotateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3.635 26.103014394050629 7.54 
		0 9.45 0 17.52 -24.527943565682698 21.190000000000001 0 25.5 0 35 -84.630604000710406 
		55 -84.630604000710406 62.145000000000003 74.092551200678997 71 136.44099885544918 
		76 136.44099885544918 80 136.44099885544918 92 2.2718277312223103 101 0.028944768131127816 
		122 0;
	setAttr -s 16 ".kit[0:15]"  9 9 3 3 9 3 3 
		3 3 9 3 3 3 3 3 3;
	setAttr -s 16 ".kot[0:15]"  9 9 3 3 9 3 3 
		3 3 9 3 3 3 3 3 3;
createNode animCurveTA -n "lsa_Left_Foot_Hoop_rotateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3.635 1.1849064339658499 7.54 
		0 9.45 0 17.52 -24.126352380038806 21.190000000000001 -30.075771747299434 
		25.5 -30.075771747299434 35 20.455086497419522 55 20.455086497419522 62.145000000000003 
		-0.67795924118231143 71 38.625544419738617 76 38.625544419738617 80 38.625544419738617 
		92 -2.1390059779055099 101 -0.027252520607387951 122 0;
	setAttr -s 16 ".kit[0:15]"  9 9 3 3 9 3 3 
		3 3 9 3 3 3 3 3 3;
	setAttr -s 16 ".kot[0:15]"  9 9 3 3 9 3 3 
		3 3 9 3 3 3 3 3 3;
createNode animCurveTA -n "lsa_Left_Foot_Hoop_rotateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 3.635 3.3415963338672832 7.54 
		0 9.45 0 17.52 10.565349224709706 21.190000000000001 0 25.5 0 35 -23.052475510765468 
		55 -23.052475510765468 62.145000000000003 49.042590997920634 71 10.903645112596754 
		76 10.903645112596754 80 10.903645112596754 92 0.5787037971738338 101 0.007373115045473817 
		122 0;
	setAttr -s 16 ".kit[0:15]"  9 9 3 3 9 3 3 
		3 3 9 3 3 3 3 3 3;
	setAttr -s 16 ".kot[0:15]"  9 9 3 3 9 3 3 
		3 3 9 3 3 3 3 3 3;
createNode animCurveTA -n "lsa_Right_Ball_Hoop_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Right_Ball_Hoop_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Right_Ball_Hoop_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Left_Ball_Hoop_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Left_Ball_Hoop_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Left_Ball_Hoop_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Right_Toe_Hoop_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Right_Toe_Hoop_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Right_Toe_Hoop_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Left_Toe_Hoop_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Left_Toe_Hoop_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Left_Toe_Hoop_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTL -n "lsa_Right_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTL -n "lsa_Right_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTL -n "lsa_Right_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 7.54 1 9.45 1 122 1;
createNode animCurveTL -n "lsa_Left_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTL -n "lsa_Left_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTL -n "lsa_Left_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 7.54 1 9.45 1 122 1;
createNode animCurveTL -n "lsa_Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.076472881617957691 7.5300000000000002 
		-0.076472881617957691 9.45 -0.07489655543783845 15.57 -0.060703614845301866 
		25.65 -0.060703614845301866 31.65 -0.060703614845301866 40.82 -0.060703614845301866 
		44.965000000000003 -0.060703614845301866 55.25 -0.060703614845301866 65.39 
		0.65567067096255061 77.36 0.58272219975025885 93.025000000000006 0.092642699685927893 
		120 -0.076472881617957691 122 -0.076472881617957691;
createNode animCurveTL -n "lsa_Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0.96147551361829786 7.5300000000000002 
		0.83192531037302431 9.45 0.87246889911479164 15.595000000000001 0.76293478814345816 
		21.45 0.74971770248491643 25.65 0.69079800309709016 28 0.58569128613117327 
		28.955 0.30439410970731406 30.29 0.5744446446249214 31.65 0.30439410970731406 
		36.630000000000003 0.32349860294549204 40.82 0.32349860294549204 44.965000000000003 
		0.32349860294549204 55.25 0.32349860294549204 65.39 0.46465380484754532 77.36 
		0.29863508368461839 93.025000000000006 0.79463066954049166 103.155 0.72306140011717079 
		110 0.90951604214186932 120 0.96147551361829786 122 0.96147551361829786;
	setAttr -s 21 ".kit[1:20]"  1 9 9 1 9 9 1 
		9 3 9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 21 ".kot[1:20]"  1 9 9 1 9 9 3 
		9 3 9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 21 ".ktl[7:20]" no no no yes yes yes yes yes yes 
		yes yes yes yes yes;
	setAttr -s 21 ".kix[1:20]"  0.030753081664443016 0.038937155157327652 
		0.032568953931331635 0.065811969339847565 0.01330968551337719 0.0028510638512670994 
		0.0019988131243735552 1 1 0.15798786282539368 1 1 0.048176955431699753 0.28419578075408936 
		0.027905227616429329 0.020254561677575111 0.049192365258932114 0.023544928058981895 
		0.07675597071647644 1;
	setAttr -s 21 ".kiy[1:20]"  0.99952703714370728 -0.99924165010452271 
		-0.99946951866149902 -0.99783205986022949 -0.99991142749786377 -0.99999594688415527 
		-0.99999797344207764 0 0 0.98744106292724609 0 0 0.99883884191513062 -0.95876628160476685 
		0.99961060285568237 0.99979484081268311 0.99878931045532227 0.99972277879714966 
		0.99704992771148682 0;
	setAttr -s 21 ".kox[1:20]"  0.030753182247281075 0.038937155157327652 
		0.032568953931331635 0.065811090171337128 0.01330968551337719 0.0028510638512670994 
		1 1 1 0.15798786282539368 1 1 0.048176955431699753 0.28419578075408936 0.027905227616429329 
		0.020254561677575111 0.049192365258932114 0.023544928058981895 0.07675597071647644 
		1;
	setAttr -s 21 ".koy[1:20]"  0.99952703714370728 -0.99924165010452271 
		-0.99946951866149902 -0.99783211946487427 -0.99991142749786377 -0.99999594688415527 
		0 0 0 0.98744106292724609 0 0 0.99883884191513062 -0.95876628160476685 0.99961060285568237 
		0.99979484081268311 0.99878931045532227 0.99972277879714966 0.99704992771148682 
		0;
createNode animCurveTL -n "lsa_Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 7.5300000000000002 -0.54038467145160218 
		15.595000000000001 -0.97219346589796962 21.45 -0.9597559868584925 25.65 -1.0832765501747874 
		28.955 -1.5771595445223485 31.65 -1.617924378869894 36.630000000000003 -1.5166239903990242 
		40.82 -1.5166239903990242 44.965000000000003 -1.5166239903990242 55.25 -1.5166239903990242 
		77.36 -1.0276942454867275 93.025000000000006 0.071560066358363233 103.155 
		-0.074501668585361072 110 0.17500767282839974 120 0 122 0;
	setAttr -s 17 ".kit[0:16]"  1 1 9 1 1 9 9 
		9 9 9 9 9 9 9 9 9 9;
	setAttr -s 17 ".kot[0:16]"  1 1 9 1 1 9 9 
		9 9 9 9 9 9 9 9 9 9;
	setAttr -s 17 ".kix[0:16]"  0.11946117132902145 0.0043435045517981052 
		0.011063503101468086 0.025428181514143944 0.0028674418572336435 0.0037407539784908295 
		0.0422239750623703 0.030160555616021156 1 1 0.022080270573496819 0.0079280929639935493 
		0.0090201953426003456 0.054615933448076248 0.075154289603233337 0.022850172594189644 
		1;
	setAttr -s 17 ".kiy[0:16]"  0.99283885955810547 -0.99999058246612549 
		-0.99993878602981567 0.99967664480209351 -0.9999958872795105 -0.99999302625656128 
		0.99910819530487061 0.99954503774642944 0 0 0.99975621700286865 0.99996858835220337 
		0.99995929002761841 0.99850744009017944 0.99717193841934204 -0.99973887205123901 
		0;
	setAttr -s 17 ".kox[0:16]"  0.11946114897727966 0.0043434989638626575 
		0.011063503101468086 0.025427974760532379 0.0028674816712737083 0.0037407539784908295 
		0.0422239750623703 0.030160555616021156 1 1 0.022080270573496819 0.0079280929639935493 
		0.0090201953426003456 0.054615933448076248 0.075154289603233337 0.022850172594189644 
		1;
	setAttr -s 17 ".koy[0:16]"  0.99283885955810547 -0.99999058246612549 
		-0.99993878602981567 0.99967664480209351 -0.9999958872795105 -0.99999302625656128 
		0.99910819530487061 0.99954503774642944 0 0 0.99975621700286865 0.99996858835220337 
		0.99995929002761841 0.99850744009017944 0.99717193841934204 -0.99973887205123901 
		0;
createNode animCurveTA -n "lsa_Character_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 -0.62843630316474508 7.5300000000000002 
		-22.646835231542322 9.45 -27.062053582581157 15.595000000000001 -50.475028608900686 
		21.45 -24.401422534561906 25.65 -17.695685561471326 28.955 -32.653231751623579 
		36.630000000000003 -90 40.82 -90 44.965000000000003 -90 55.25 -90 65.39 28.033839562557567 
		77.36 33.989788065903404 93.025000000000006 19.558541648170799 103.155 -12.68472685691841 
		110 -11.854308357493981 120 -0.62843630316474508 122 -0.62843630316474508;
	setAttr -s 18 ".kit[6:17]"  1 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 18 ".kot[6:17]"  1 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 18 ".kix[6:17]"  0.2634727954864502 0.36749762296676636 
		1 1 0.31379607319831848 0.32238489389419556 0.98735100030899048 0.7259337306022644 
		0.71817260980606079 0.93640619516372681 0.89805376529693604 1;
	setAttr -s 18 ".kiy[6:17]"  -0.96466684341430664 -0.93002444505691528 
		0 0 0.94949042797088623 0.94660866260528564 -0.15854980051517487 -0.68776470422744751 
		-0.69586503505706787 0.35091796517372131 0.43988567590713501 0;
	setAttr -s 18 ".kox[6:17]"  0.2634727954864502 0.36749762296676636 
		1 1 0.31379607319831848 0.32238489389419556 0.98735100030899048 0.7259337306022644 
		0.71817260980606079 0.93640619516372681 0.89805376529693604 1;
	setAttr -s 18 ".koy[6:17]"  -0.96466684341430664 -0.93002444505691528 
		0 0 0.94949042797088623 0.94660866260528564 -0.15854980051517487 -0.68776470422744751 
		-0.69586503505706787 0.35091796517372131 0.43988567590713501 0;
createNode animCurveTA -n "lsa_Character_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -5.8284402688137158 7.5300000000000002 
		-5.8284402688137158 9.45 -7.3268358485051843 15.595000000000001 -19.589989250060416 
		21.45 -26.985783194518419 25.65 -25.743757503012493 28.955 -26.533051738226302 
		31.65 -28.475123387888313 36.630000000000003 0 40.82 0 44.965000000000003 
		0 55.25 0 65.39 33.311863175550286 77.36 33.75073757249536 93.025000000000006 
		-10.705919902055545 120 -5.8284402688137158 122 -5.8284402688137158;
	setAttr -s 17 ".kit[7:16]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 17 ".kot[7:16]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 17 ".kix[7:16]"  0.95832794904708862 0.52388602495193481 
		1 1 0.76045280694961548 0.78114718198776245 0.76796853542327881 0.8994024395942688 
		0.99613821506500244 1;
	setAttr -s 17 ".kiy[7:16]"  -0.28567042946815491 0.85178840160369873 
		0 0 0.64939320087432861 0.62434697151184082 -0.64048761129379272 -0.43712159991264343 
		0.087799131870269775 0;
	setAttr -s 17 ".kox[7:16]"  0.95832794904708862 0.52388602495193481 
		1 1 0.76045280694961548 0.78114718198776245 0.76796853542327881 0.8994024395942688 
		0.99613821506500244 1;
	setAttr -s 17 ".koy[7:16]"  -0.28567042946815491 0.85178840160369873 
		0 0 0.64939320087432861 0.62434697151184082 -0.64048761129379272 -0.43712159991264343 
		0.087799131870269775 0;
createNode animCurveTA -n "lsa_Character_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -1.2956360193097458 7.5300000000000002 
		-1.2956360193097458 9.45 -0.70136725803456546 15.595000000000001 3.2665553182641185 
		21.45 -0.51773563187054916 25.65 -0.84629901331584534 28.955 0.96267423121222984 
		31.65 2.1758056185799513 36.630000000000003 0 40.82 0 44.965000000000003 
		0 55.25 0 65.39 -17.89661781559823 77.36 -18.094172023784591 93.025000000000006 
		15.091510973502396 120 -1.2956360193097458 122 -1.2956360193097458;
createNode animCurveTA -n "lsa_R_Hip_Fk_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_R_Hip_Fk_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_R_Hip_Fk_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_R_Knee_Fk_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_R_Ankle_Fk_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_R_Ankle_Fk_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_R_Ankle_Fk_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_R_Ball_Fk_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_R_Ball_Fk_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_R_Ball_Fk_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_L_Hip_Fk_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_L_Hip_Fk_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_L_Hip_Fk_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_L_Knee_Fk_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_L_Ankle_Fk_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_L_Ankle_Fk_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_L_Ankle_Fk_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_L_Ball_Fk_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_L_Ball_Fk_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_L_Ball_Fk_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_R_Ball_IK_Fk_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_R_Ball_IK_Fk_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_R_Ball_IK_Fk_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_L_Ball_IK_Fk_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_L_Ball_IK_Fk_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_L_Ball_IK_Fk_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTL -n "lsa_Right_Arm_Hoop_translateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.43524234076486068 7.54 -0.43524234076486068 
		9.45 -0.43524234076486068 122 -0.43524234076486068;
createNode animCurveTL -n "lsa_Right_Arm_Hoop_translateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.82665738350180629 7.54 -0.82665738350180629 
		9.45 -0.82665738350180629 122 -0.82665738350180629;
createNode animCurveTL -n "lsa_Right_Arm_Hoop_translateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.27773886459742925 7.54 0.27773886459742925 
		9.45 0.27773886459742925 122 0.27773886459742925;
createNode animCurveTA -n "lsa_Right_Arm_Hoop_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.8121934161072299e-015 7.54 
		1.8121934161072299e-015 9.45 0 122 0;
createNode animCurveTA -n "lsa_Right_Arm_Hoop_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 28.652637602052774 7.54 28.652637602052774 
		9.45 28.652637602052774 122 28.652637602052774;
createNode animCurveTA -n "lsa_Right_Arm_Hoop_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 64.676908227303443 7.54 64.676908227303443 
		9.45 64.676908227303443 122 64.676908227303443;
createNode animCurveTL -n "lsa_Left_Arm_Hoop_translateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.5198069948790518 7.54 0.5198069948790518 
		9.45 0.5198069948790518 122 0.5198069948790518;
createNode animCurveTL -n "lsa_Left_Arm_Hoop_translateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.72394202659893114 7.54 -0.72394202659893114 
		9.45 -0.72394202659893114 122 -0.72394202659893114;
createNode animCurveTL -n "lsa_Left_Arm_Hoop_translateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.36439499068905612 7.54 0.36439499068905612 
		9.45 0.36439499068905612 122 0.36439499068905612;
createNode animCurveTA -n "lsa_Left_Arm_Hoop_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 7.7976222737965317 7.54 7.7976222737965335 
		9.45 7.7976222737965317 122 7.7976222737965335;
createNode animCurveTA -n "lsa_Left_Arm_Hoop_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -30.409274105849086 7.54 -30.409274105849086 
		9.45 -30.409274105849089 122 -30.409274105849086;
createNode animCurveTA -n "lsa_Left_Arm_Hoop_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -64.859940280210907 7.54 -64.859940280210921 
		9.45 -64.859940280210921 122 -64.859940280210921;
createNode animCurveTL -n "lsa_Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.97384023505055983 17 -1.2911226347819889 
		27 -0.88977154353358157 35 -0.77571579642263433 40 -1.409190478449502 52 
		-1.409190478449502 59 -0.53791825197795207 63 0.76669305703776192 68 0.76669305703776192 
		76 0.3163478984674139 90 -0.66273402743560827 120 -0.97384023505055983;
	setAttr -s 12 ".kit[4:11]"  3 3 9 3 3 9 9 
		9;
	setAttr -s 12 ".kot[4:11]"  3 3 9 3 3 9 9 
		9;
createNode animCurveTL -n "lsa_Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1.2525965505547216 17 1.6560255201563212 
		35 0.8860838761108949 40 0.14765229240925523 52 0.14765229240925523 59 0.70310445807582866 
		63 0.20259484444730264 68 0.20259484444730264 76 0.46410012929821071 90 0.69105353374935163 
		97 1.2424050618410891 120 1.2525965505547216;
	setAttr -s 12 ".kit[3:11]"  3 3 9 3 3 9 9 
		9 9;
	setAttr -s 12 ".kot[3:11]"  3 3 9 3 3 9 9 
		9 9;
createNode animCurveTL -n "lsa_Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.097994651149805143 17 -1.7608498799137677 
		27 -2.2932388793546088 35 -2.913859611996898 40 -2.8571354845751595 52 -2.8571354845751595 
		59 -1.3047095783318572 63 -0.91034630861042953 68 -0.91034630861042953 76 
		-0.58953571192253018 120 -0.097994651149805143;
	setAttr -s 11 ".kit[4:10]"  3 3 9 3 3 9 9;
	setAttr -s 11 ".kot[4:10]"  3 3 9 3 3 9 9;
createNode animCurveTA -n "lsa_Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -12.222987645962959 17 7.1300331541592463 
		35 -9.9479456209402812 40 0 52 0 68 0 76 59.426880524978827 120 -12.222987645962959;
	setAttr -s 8 ".kit[3:7]"  3 3 3 9 9;
	setAttr -s 8 ".kot[3:7]"  3 3 3 9 9;
createNode animCurveTA -n "lsa_Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -19.681044208515029 17 34.719837651515938 
		35 9.7193569385297085 40 0 52 0 63 73.133980854462052 68 73.133980854462052 
		76 1.8784369482126995 120 -19.681044208515029;
	setAttr -s 9 ".kit[3:8]"  3 3 3 3 9 9;
	setAttr -s 9 ".kot[3:8]"  3 3 3 3 9 9;
createNode animCurveTA -n "lsa_Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 65.119655550709041 17 -52.08605425607395 
		35 -80.673229737875104 40 0 52 0 68 0 76 51.820466530053629 120 65.119655550709041;
	setAttr -s 8 ".kit[3:7]"  3 3 3 9 9;
	setAttr -s 8 ".kot[3:7]"  3 3 3 9 9;
createNode animCurveTL -n "lsa_Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.75854111686822778 7.54 1.1318602214340667 
		22 0.61170363421956819 37 0.89290457423915459 55 0.89290457423915459 61 1.6356911378787629 
		66 1.8394663531792277 77 1.8394663531792277 92 0.82415801452430015 105 0.96679254692265926 
		120 0.75854111686822778;
	setAttr -s 11 ".kit[3:10]"  3 3 3 3 3 9 9 
		9;
	setAttr -s 11 ".kot[3:10]"  3 3 3 3 3 9 9 
		9;
createNode animCurveTL -n "lsa_Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1.1932952672205326 7.54 1.761242661148275 
		22 1.4024908560164118 31 1.0019424917209794 37 0.1222584063891291 55 0.1222584063891291 
		61 0.61899246878919245 66 0.122 77 0.122 84 0.8743413931429872 92 1.3751583818668958 
		120 1.1932952672205326;
	setAttr -s 12 ".kit[4:11]"  3 3 9 3 3 9 9 
		9;
	setAttr -s 12 ".kot[4:11]"  3 3 9 3 3 9 9 
		9;
createNode animCurveTL -n "lsa_Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.14314299916678522 7.54 -1.0438009102128563 
		22 -0.87270339048289847 37 -2.6203809988541584 55 -2.6203809988541584 66 
		-1.5304464470122827 77 -1.5304464470122827 92 0.57385840758767226 120 0.14314299916678522;
	setAttr -s 9 ".kit[3:8]"  3 3 3 3 9 9;
	setAttr -s 9 ".kot[3:8]"  3 3 3 3 9 9;
createNode animCurveTA -n "lsa_Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -5.7993291745893352 7.54 -105.42329527126165 
		22 -51.568117424238309 31 -66.535879937539264 37 -12.366102805611318 55 -13.014807845067965 
		61 -13.134938407930306 66 -12.366102805611318 77 -12.366102805611318 92 49.549617731746714 
		105 -5.0063633774767018 120 -5.7993291745893352;
	setAttr -s 12 ".kit[4:11]"  3 3 9 3 3 9 9 
		9;
	setAttr -s 12 ".kot[4:11]"  3 3 9 3 3 9 9 
		9;
createNode animCurveTA -n "lsa_Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -1.228264010471275 7.54 42.507072395371495 
		22 -52.043360409699268 31 -17.175254352241701 37 -1.8200000000000001 55 -1.8200000000000001 
		61 -29.368655323045406 66 -1.8241166223025982 77 -1.8241166223025982 92 -45.012392270857404 
		105 -42.660881026896064 120 -1.228264010471275;
	setAttr -s 12 ".kit[4:11]"  3 3 9 3 3 9 9 
		9;
	setAttr -s 12 ".kot[4:11]"  3 3 9 3 3 9 9 
		9;
createNode animCurveTA -n "lsa_Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -60.456694896838378 7.54 2.0951381767233963 
		22 47.046064059061862 31 86.768840342895317 37 2.534 55 2.534 61 41.608015659879399 
		66 2.5339540633867044 77 2.5339540633867044 92 -99.350034060799416 105 -33.852952420734084 
		120 -60.456694896838378;
	setAttr -s 12 ".kit[4:11]"  3 3 9 3 3 9 9 
		9;
	setAttr -s 12 ".kot[4:11]"  3 3 9 3 3 9 9 
		9;
createNode animCurveTL -n "lsa_Left_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTL -n "lsa_Left_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTL -n "lsa_Left_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1 7.54 -1 9.45 -1 122 -1;
createNode animCurveTL -n "lsa_Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.10167917362943303 7.54 -0.10167917362943303 
		9.45 -0.10167917362943303 122 -0.10167917362943303;
createNode animCurveTL -n "lsa_Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.40762644910266188 7.54 -0.40762644910266188 
		9.45 -0.40762644910266188 122 -0.40762644910266188;
createNode animCurveTL -n "lsa_Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.93129112588482243 7.54 -0.93129112588482243 
		9.45 -0.93129112588482243 122 -0.93129112588482243;
createNode animCurveTA -n "lsa_R_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 12.253734489678925 7.54 12.253734489678923 
		9.45 12.253734489678925 122 12.253734489678923;
createNode animCurveTA -n "lsa_R_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -65.746751280844975 7.54 -65.746751280844975 
		9.45 -65.746751280844975 122 -65.746751280844975;
createNode animCurveTA -n "lsa_R_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.9357246303997397e-015 7.54 
		0 9.45 0 122 0;
createNode animCurveTA -n "lsa_L_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.061808866237340665 7.54 -0.061808866237339131 
		9.45 -0.061808866237342212 122 -0.061808866237339131;
createNode animCurveTA -n "lsa_L_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -59.058178941076754 7.54 -59.058178941076754 
		9.45 -59.058178941076754 122 -59.058178941076754;
createNode animCurveTA -n "lsa_L_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 16.579147429757864 7.54 16.579147429757864 
		9.45 16.579147429757871 122 16.579147429757864;
createNode animCurveTA -n "lsa_R_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.5572674112203657 7.54 8.5572674112203675 
		9.45 8.5572674112203693 122 8.5572674112203675;
createNode animCurveTA -n "lsa_L_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 15.711328223519068 7.54 15.71132822351907 
		9.45 15.711328223519073 122 15.71132822351907;
createNode animCurveTA -n "lsa_R_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_R_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_R_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_L_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_L_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_L_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 10.423754966968488 7.54 10.423754966968488 
		9.45 10.423754966968488 122 10.423754966968488;
createNode animCurveTA -n "lsa_Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.722848255843903 7.54 27.722848255843903 
		9.45 27.722848255843903 122 27.722848255843903;
createNode animCurveTA -n "lsa_Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 21.576484776388227 7.54 21.576484776388227 
		9.45 21.576484776388227 122 21.576484776388227;
createNode animCurveTA -n "lsa_Middle_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Middle_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Middle_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.080064458283051 7.54 27.080064458283051 
		9.45 27.080064458283051 122 27.080064458283051;
createNode animCurveTA -n "lsa_Pelvis_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Pelvis_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Pelvis_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Thumb_R_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Thumb_R_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Thumb_R_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 13.994403295754109 7.54 13.994403295754109 
		9.45 13.994403295754109 122 13.994403295754109;
createNode animCurveTA -n "lsa_Thumb_L_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Thumb_L_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Thumb_L_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 13.994403295754109 7.54 13.994403295754109 
		9.45 13.994403295754109 122 13.994403295754109;
createNode animCurveTA -n "lsa_Middle_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Middle_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Middle_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.911632519594587 7.54 27.911632519594587 
		9.45 27.911632519594587 122 27.911632519594587;
createNode animCurveTA -n "lsa_Jaw_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 9.45 0 120 0 122 0;
createNode animCurveTA -n "lsa_Jaw_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 9.45 0 120 0 122 0;
createNode animCurveTA -n "lsa_Jaw_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 7.9641460039454941 9.45 46.419977943026907 
		32 32.101414451016588 39 93.980074924115826 46 16.959473892947244 120 0 122 
		0;
createNode animCurveTA -n "lsa_Spine_2_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -0.65073001024951671 9.45 19.69361745212408 
		16 12.648827309843643 24 8.073634781167053 30 -16.772074406708708 39 0 45 
		0.89832257461983633 57 10.372346667829689 67 -12.263342787739164 80 10.868513401686933 
		95 1.4192405653886107 106 -16.304120000708313 111 -10.82941154068414 120 
		-0.65073001024951671 122 -0.65073001024951671;
createNode animCurveTA -n "lsa_Spine_2_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -4.2368721935960929 9.45 -9.8708558231227652 
		16 5.0792861003959056 24 -15.309326525125655 30 4.7121456155213854 39 0 45 
		-0.54498191967104759 57 28.532464179008848 67 10.887537801496133 80 -5.1740054619270248 
		95 -33.076678862046641 106 17.118672774700219 111 17.460170596043337 120 
		-4.2368721935960929 122 -4.2368721935960929;
createNode animCurveTA -n "lsa_Spine_2_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 2.6995264082587447 9.45 15.678692858753807 
		16 1.0657729432006979 24 10.649634952654464 30 2.0126818516944365 39 -11.889648954382288 
		45 -11.704130226846589 57 34.75422213552055 67 -14.269857712499954 80 -34.699631157455997 
		95 25.829458002439793 106 26.819148704335863 111 28.539377886656965 120 2.6995264082587447 
		122 2.6995264082587447;
createNode animCurveTA -n "lsa_Neck_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 21 0.083830870696041893 33.8 
		-10.414775900475053 39.4 0 48 0.29149667364925075 53 10.772478177036124 66 
		-8.9546519697307208 81 -21.7144216258312 96 -9.712482824030495 120 0 122 
		0;
	setAttr -s 11 ".kit[3:10]"  3 3 9 9 9 9 1 
		9;
	setAttr -s 11 ".kot[3:10]"  3 3 9 9 9 9 1 
		9;
	setAttr -s 11 ".kix[9:10]"  0.99980282783508301 1;
	setAttr -s 11 ".kiy[9:10]"  0.019858567044138908 0;
	setAttr -s 11 ".kox[9:10]"  0.99980282783508301 1;
	setAttr -s 11 ".koy[9:10]"  0.019858559593558311 0;
createNode animCurveTA -n "lsa_Neck_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 21 -8.9949965458123238 33.8 
		-15.253780177263472 39.4 0 48 1.1937426320191262 53 0.6256125907132728 66 
		3.7056984575640142 81 15.328826064002616 96 3.359642303523231 120 0 122 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 3 3 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  1 9 9 3 3 9 9 
		9 9 9 9;
	setAttr -s 11 ".kix[0:10]"  0.99995988607406616 0.97319900989532471 
		0.96876740455627441 1 1 0.99734103679656982 0.96421784162521362 0.99998176097869873 
		0.97947317361831665 0.99771904945373535 1;
	setAttr -s 11 ".kiy[0:10]"  0.0089593557640910149 -0.22996462881565094 
		0.24797123670578003 0 0 0.072875544428825378 0.26511117815971375 -0.0060397088527679443 
		-0.20157444477081299 -0.067503549158573151 0;
	setAttr -s 11 ".kox[0:10]"  0.99995988607406616 0.97319900989532471 
		0.96876740455627441 1 1 0.99734103679656982 0.96421784162521362 0.99998176097869873 
		0.97947317361831665 0.99771904945373535 1;
	setAttr -s 11 ".koy[0:10]"  0.0089593622833490372 -0.22996462881565094 
		0.24797123670578003 0 0 0.072875544428825378 0.26511117815971375 -0.0060397088527679443 
		-0.20157444477081299 -0.067503549158573151 0;
createNode animCurveTA -n "lsa_Neck_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 21 19.912888314736595 33.8 
		63.315136695329251 39.4 -10.378060625168631 48 -10.72018096933596 53 19.469155579319981 
		66 0.4355406967730025 81 25.269096152895084 96 -39.935204634862885 120 0 
		122 0;
	setAttr -s 11 ".kit[3:10]"  3 3 9 9 9 9 1 
		9;
	setAttr -s 11 ".kot[3:10]"  3 3 9 9 9 9 1 
		9;
	setAttr -s 11 ".kix[9:10]"  0.99996256828308105 1;
	setAttr -s 11 ".kiy[9:10]"  0.0086496174335479736 0;
	setAttr -s 11 ".kox[9:10]"  0.99996256828308105 1;
	setAttr -s 11 ".koy[9:10]"  0.0086493873968720436 0;
createNode animCurveTA -n "lsa_Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -4.0198472869728343 7.54 -4.0198472869728343 
		9.45 -4.0198472869728343 122 -4.0198472869728343;
createNode animCurveTA -n "lsa_Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -9.1335573833666714 7.54 -9.1335573833666714 
		9.45 -9.1335573833666714 122 -9.1335573833666714;
createNode animCurveTA -n "lsa_Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.2752136084710033 7.54 -2.2752136084710033 
		9.45 -2.2752136084710033 122 -2.2752136084710033;
createNode animCurveTA -n "lsa_Spine_1_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.8903601258661931 6 5.518090411031797 
		16 -32.032722886431763 24 12.143771893684164 40 0 59 16.859399318549244 68 
		15.199009930911053 83 -18.869234927690755 105 18.044117351835343 120 -1.8903601258661931 
		122 -1.8903601258661931;
createNode animCurveTA -n "lsa_Spine_1_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.5597289571479034 6 0.83208470391410949 
		16 2.8458895994375815 24 0.95920467438892565 40 0 59 -3.6049144650399576 
		68 5.9551532712334598 83 20.965314157064945 105 -6.4815486422152286 120 2.5597289571479034 
		122 2.5597289571479034;
createNode animCurveTA -n "lsa_Spine_1_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.016811087403604 6 -25.150330043940162 
		16 12.150563485061241 24 22.97824284144086 40 0 59 34.90479565300263 68 2.0188360222625086 
		83 -7.3405333623754689 105 -0.64668096875142034 120 2.016811087403604 122 
		2.016811087403604;
createNode animCurveTA -n "lsa_Middle_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Middle_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Middle_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 33.429092416277157 7.54 33.429092416277157 
		9.45 33.429092416277157 122 33.429092416277157;
createNode animCurveTA -n "lsa_Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.2533422302317216 7.54 8.2533422302317216 
		9.45 8.2533422302317216 122 8.2533422302317216;
createNode animCurveTA -n "lsa_Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 23.263402056531085 7.54 23.263402056531085 
		9.45 23.263402056531085 122 23.263402056531085;
createNode animCurveTA -n "lsa_Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 20.166277752815617 7.54 20.166277752815617 
		9.45 20.166277752815617 122 20.166277752815617;
createNode animCurveTA -n "lsa_Middle_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Middle_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 7.54 0 9.45 0 122 0;
createNode animCurveTA -n "lsa_Middle_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 17.254116939558369 7.54 17.254116939558369 
		9.45 17.254116939558369 122 17.254116939558369;
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
	setAttr -s 22 ".lnk";
select -ne :time1;
	setAttr ".o" 119;
select -ne :renderPartition;
	setAttr -s 22 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 22 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
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
	setAttr -s 204 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".top" 479;
	setAttr ".rght" 639;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
select -ne :defaultRenderQuality;
	setAttr ".eaa" 1;
select -ne :defaultResolution;
	setAttr ".w" 720;
	setAttr ".h" 486;
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
connectAttr "lsa_idle_floridaSource.st" "clipLibrary2.st[0]";
connectAttr "lsa_idle_floridaSource.du" "clipLibrary2.du[0]";
connectAttr "lsa_Extra_Attributes_translateX.a" "clipLibrary2.cel[0].cev[0].cevr"
		;
connectAttr "lsa_Extra_Attributes_translateY.a" "clipLibrary2.cel[0].cev[1].cevr"
		;
connectAttr "lsa_Motion_Root_translateX.a" "clipLibrary2.cel[0].cev[2].cevr"
		;
connectAttr "lsa_Motion_Root_translateY.a" "clipLibrary2.cel[0].cev[3].cevr"
		;
connectAttr "lsa_Motion_Root_translateZ.a" "clipLibrary2.cel[0].cev[4].cevr"
		;
connectAttr "lsa_Motion_Root_rotateY.a" "clipLibrary2.cel[0].cev[5].cevr"
		;
connectAttr "animCurveTU9.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU15.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU16.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "lsa_Hoop_Root_rotateX1.a" "clipLibrary2.cel[0].cev[14].cevr"
		;
connectAttr "lsa_Hoop_Root_rotateY1.a" "clipLibrary2.cel[0].cev[15].cevr"
		;
connectAttr "lsa_Hoop_Root_rotateZ1.a" "clipLibrary2.cel[0].cev[16].cevr"
		;
connectAttr "lsa_Hoop_Root_translateX1.a" "clipLibrary2.cel[0].cev[17].cevr"
		;
connectAttr "lsa_Hoop_Root_translateY1.a" "clipLibrary2.cel[0].cev[18].cevr"
		;
connectAttr "lsa_Hoop_Root_translateZ1.a" "clipLibrary2.cel[0].cev[19].cevr"
		;
connectAttr "lsa_Right_Foot_Hoop_translateX.a" "clipLibrary2.cel[0].cev[20].cevr"
		;
connectAttr "lsa_Right_Foot_Hoop_translateY.a" "clipLibrary2.cel[0].cev[21].cevr"
		;
connectAttr "lsa_Right_Foot_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[22].cevr"
		;
connectAttr "lsa_Right_Foot_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[23].cevr"
		;
connectAttr "lsa_Right_Foot_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[24].cevr"
		;
connectAttr "lsa_Right_Foot_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[25].cevr"
		;
connectAttr "lsa_Left_Foot_Hoop_translateX.a" "clipLibrary2.cel[0].cev[26].cevr"
		;
connectAttr "lsa_Left_Foot_Hoop_translateY.a" "clipLibrary2.cel[0].cev[27].cevr"
		;
connectAttr "lsa_Left_Foot_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[28].cevr"
		;
connectAttr "lsa_Left_Foot_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[29].cevr"
		;
connectAttr "lsa_Left_Foot_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[30].cevr"
		;
connectAttr "lsa_Left_Foot_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[31].cevr"
		;
connectAttr "lsa_Right_Ball_Hoop_rotateX1.a" "clipLibrary2.cel[0].cev[32].cevr"
		;
connectAttr "lsa_Right_Ball_Hoop_rotateY1.a" "clipLibrary2.cel[0].cev[33].cevr"
		;
connectAttr "lsa_Right_Ball_Hoop_rotateZ1.a" "clipLibrary2.cel[0].cev[34].cevr"
		;
connectAttr "lsa_Left_Ball_Hoop_rotateX1.a" "clipLibrary2.cel[0].cev[35].cevr"
		;
connectAttr "lsa_Left_Ball_Hoop_rotateY1.a" "clipLibrary2.cel[0].cev[36].cevr"
		;
connectAttr "lsa_Left_Ball_Hoop_rotateZ1.a" "clipLibrary2.cel[0].cev[37].cevr"
		;
connectAttr "lsa_Right_Toe_Hoop_rotateX1.a" "clipLibrary2.cel[0].cev[38].cevr"
		;
connectAttr "lsa_Right_Toe_Hoop_rotateY1.a" "clipLibrary2.cel[0].cev[39].cevr"
		;
connectAttr "lsa_Right_Toe_Hoop_rotateZ1.a" "clipLibrary2.cel[0].cev[40].cevr"
		;
connectAttr "lsa_Left_Toe_Hoop_rotateX1.a" "clipLibrary2.cel[0].cev[41].cevr"
		;
connectAttr "lsa_Left_Toe_Hoop_rotateY1.a" "clipLibrary2.cel[0].cev[42].cevr"
		;
connectAttr "lsa_Left_Toe_Hoop_rotateZ1.a" "clipLibrary2.cel[0].cev[43].cevr"
		;
connectAttr "lsa_Right_Knee_Hoop_translateX.a" "clipLibrary2.cel[0].cev[44].cevr"
		;
connectAttr "lsa_Right_Knee_Hoop_translateY.a" "clipLibrary2.cel[0].cev[45].cevr"
		;
connectAttr "lsa_Right_Knee_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[46].cevr"
		;
connectAttr "lsa_Left_Knee_Hoop_translateX.a" "clipLibrary2.cel[0].cev[47].cevr"
		;
connectAttr "lsa_Left_Knee_Hoop_translateY.a" "clipLibrary2.cel[0].cev[48].cevr"
		;
connectAttr "lsa_Left_Knee_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[49].cevr"
		;
connectAttr "lsa_Character_Hoop_translateX.a" "clipLibrary2.cel[0].cev[50].cevr"
		;
connectAttr "lsa_Character_Hoop_translateY.a" "clipLibrary2.cel[0].cev[51].cevr"
		;
connectAttr "lsa_Character_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[52].cevr"
		;
connectAttr "lsa_Character_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[53].cevr"
		;
connectAttr "lsa_Character_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[54].cevr"
		;
connectAttr "lsa_Character_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[55].cevr"
		;
connectAttr "lsa_R_Hip_Fk_rotateX1.a" "clipLibrary2.cel[0].cev[56].cevr"
		;
connectAttr "lsa_R_Hip_Fk_rotateY1.a" "clipLibrary2.cel[0].cev[57].cevr"
		;
connectAttr "lsa_R_Hip_Fk_rotateZ1.a" "clipLibrary2.cel[0].cev[58].cevr"
		;
connectAttr "lsa_R_Knee_Fk_rotateZ1.a" "clipLibrary2.cel[0].cev[59].cevr"
		;
connectAttr "lsa_R_Ankle_Fk_rotateX1.a" "clipLibrary2.cel[0].cev[60].cevr"
		;
connectAttr "lsa_R_Ankle_Fk_rotateY1.a" "clipLibrary2.cel[0].cev[61].cevr"
		;
connectAttr "lsa_R_Ankle_Fk_rotateZ1.a" "clipLibrary2.cel[0].cev[62].cevr"
		;
connectAttr "lsa_R_Ball_Fk_rotateX1.a" "clipLibrary2.cel[0].cev[63].cevr"
		;
connectAttr "lsa_R_Ball_Fk_rotateY1.a" "clipLibrary2.cel[0].cev[64].cevr"
		;
connectAttr "lsa_R_Ball_Fk_rotateZ1.a" "clipLibrary2.cel[0].cev[65].cevr"
		;
connectAttr "lsa_L_Hip_Fk_rotateX1.a" "clipLibrary2.cel[0].cev[66].cevr"
		;
connectAttr "lsa_L_Hip_Fk_rotateY1.a" "clipLibrary2.cel[0].cev[67].cevr"
		;
connectAttr "lsa_L_Hip_Fk_rotateZ1.a" "clipLibrary2.cel[0].cev[68].cevr"
		;
connectAttr "lsa_L_Knee_Fk_rotateZ1.a" "clipLibrary2.cel[0].cev[69].cevr"
		;
connectAttr "lsa_L_Ankle_Fk_rotateX1.a" "clipLibrary2.cel[0].cev[70].cevr"
		;
connectAttr "lsa_L_Ankle_Fk_rotateY1.a" "clipLibrary2.cel[0].cev[71].cevr"
		;
connectAttr "lsa_L_Ankle_Fk_rotateZ1.a" "clipLibrary2.cel[0].cev[72].cevr"
		;
connectAttr "lsa_L_Ball_Fk_rotateX1.a" "clipLibrary2.cel[0].cev[73].cevr"
		;
connectAttr "lsa_L_Ball_Fk_rotateY1.a" "clipLibrary2.cel[0].cev[74].cevr"
		;
connectAttr "lsa_L_Ball_Fk_rotateZ1.a" "clipLibrary2.cel[0].cev[75].cevr"
		;
connectAttr "lsa_R_Ball_IK_Fk_rotateX1.a" "clipLibrary2.cel[0].cev[76].cevr"
		;
connectAttr "lsa_R_Ball_IK_Fk_rotateY1.a" "clipLibrary2.cel[0].cev[77].cevr"
		;
connectAttr "lsa_R_Ball_IK_Fk_rotateZ1.a" "clipLibrary2.cel[0].cev[78].cevr"
		;
connectAttr "lsa_L_Ball_IK_Fk_rotateX1.a" "clipLibrary2.cel[0].cev[79].cevr"
		;
connectAttr "lsa_L_Ball_IK_Fk_rotateY1.a" "clipLibrary2.cel[0].cev[80].cevr"
		;
connectAttr "lsa_L_Ball_IK_Fk_rotateZ1.a" "clipLibrary2.cel[0].cev[81].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_translateX1.a" "clipLibrary2.cel[0].cev[82].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_translateY1.a" "clipLibrary2.cel[0].cev[83].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_translateZ1.a" "clipLibrary2.cel[0].cev[84].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_rotateX1.a" "clipLibrary2.cel[0].cev[85].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_rotateY1.a" "clipLibrary2.cel[0].cev[86].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_rotateZ1.a" "clipLibrary2.cel[0].cev[87].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_translateX1.a" "clipLibrary2.cel[0].cev[88].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_translateY1.a" "clipLibrary2.cel[0].cev[89].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_translateZ1.a" "clipLibrary2.cel[0].cev[90].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_rotateX1.a" "clipLibrary2.cel[0].cev[91].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_rotateY1.a" "clipLibrary2.cel[0].cev[92].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_rotateZ1.a" "clipLibrary2.cel[0].cev[93].cevr"
		;
connectAttr "lsa_Right_Arm_World_translateX.a" "clipLibrary2.cel[0].cev[94].cevr"
		;
connectAttr "lsa_Right_Arm_World_translateY.a" "clipLibrary2.cel[0].cev[95].cevr"
		;
connectAttr "lsa_Right_Arm_World_translateZ.a" "clipLibrary2.cel[0].cev[96].cevr"
		;
connectAttr "lsa_Right_Arm_World_rotateX.a" "clipLibrary2.cel[0].cev[97].cevr"
		;
connectAttr "lsa_Right_Arm_World_rotateY.a" "clipLibrary2.cel[0].cev[98].cevr"
		;
connectAttr "lsa_Right_Arm_World_rotateZ.a" "clipLibrary2.cel[0].cev[99].cevr"
		;
connectAttr "lsa_Left_Arm_World_translateX.a" "clipLibrary2.cel[0].cev[100].cevr"
		;
connectAttr "lsa_Left_Arm_World_translateY.a" "clipLibrary2.cel[0].cev[101].cevr"
		;
connectAttr "lsa_Left_Arm_World_translateZ.a" "clipLibrary2.cel[0].cev[102].cevr"
		;
connectAttr "lsa_Left_Arm_World_rotateX.a" "clipLibrary2.cel[0].cev[103].cevr"
		;
connectAttr "lsa_Left_Arm_World_rotateY.a" "clipLibrary2.cel[0].cev[104].cevr"
		;
connectAttr "lsa_Left_Arm_World_rotateZ.a" "clipLibrary2.cel[0].cev[105].cevr"
		;
connectAttr "lsa_Left_Elbow_Hoop_translateX.a" "clipLibrary2.cel[0].cev[106].cevr"
		;
connectAttr "lsa_Left_Elbow_Hoop_translateY.a" "clipLibrary2.cel[0].cev[107].cevr"
		;
connectAttr "lsa_Left_Elbow_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[108].cevr"
		;
connectAttr "lsa_Right_Elbow_Hoop_translateX.a" "clipLibrary2.cel[0].cev[109].cevr"
		;
connectAttr "lsa_Right_Elbow_Hoop_translateY.a" "clipLibrary2.cel[0].cev[110].cevr"
		;
connectAttr "lsa_Right_Elbow_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[111].cevr"
		;
connectAttr "lsa_R_FK_Shoulder_rotateX.a" "clipLibrary2.cel[0].cev[112].cevr"
		;
connectAttr "lsa_R_FK_Shoulder_rotateY.a" "clipLibrary2.cel[0].cev[113].cevr"
		;
connectAttr "lsa_R_FK_Shoulder_rotateZ.a" "clipLibrary2.cel[0].cev[114].cevr"
		;
connectAttr "lsa_L_FK_Shoulder_rotateX.a" "clipLibrary2.cel[0].cev[115].cevr"
		;
connectAttr "lsa_L_FK_Shoulder_rotateY.a" "clipLibrary2.cel[0].cev[116].cevr"
		;
connectAttr "lsa_L_FK_Shoulder_rotateZ.a" "clipLibrary2.cel[0].cev[117].cevr"
		;
connectAttr "lsa_R_FK_Elbow_rotateZ.a" "clipLibrary2.cel[0].cev[118].cevr"
		;
connectAttr "lsa_L_FK_Elbow_rotateZ.a" "clipLibrary2.cel[0].cev[119].cevr"
		;
connectAttr "lsa_R_FK_Wrist_rotateX.a" "clipLibrary2.cel[0].cev[120].cevr"
		;
connectAttr "lsa_R_FK_Wrist_rotateY.a" "clipLibrary2.cel[0].cev[121].cevr"
		;
connectAttr "lsa_R_FK_Wrist_rotateZ.a" "clipLibrary2.cel[0].cev[122].cevr"
		;
connectAttr "lsa_L_FK_Wrist_rotateX.a" "clipLibrary2.cel[0].cev[123].cevr"
		;
connectAttr "lsa_L_FK_Wrist_rotateY.a" "clipLibrary2.cel[0].cev[124].cevr"
		;
connectAttr "lsa_L_FK_Wrist_rotateZ.a" "clipLibrary2.cel[0].cev[125].cevr"
		;
connectAttr "lsa_Thumb_Base_L_rotateX.a" "clipLibrary2.cel[0].cev[126].cevr"
		;
connectAttr "lsa_Thumb_Base_L_rotateY.a" "clipLibrary2.cel[0].cev[127].cevr"
		;
connectAttr "lsa_Thumb_Base_L_rotateZ.a" "clipLibrary2.cel[0].cev[128].cevr"
		;
connectAttr "lsa_Middle_Base_L_rotateX.a" "clipLibrary2.cel[0].cev[129].cevr"
		;
connectAttr "lsa_Middle_Base_L_rotateY.a" "clipLibrary2.cel[0].cev[130].cevr"
		;
connectAttr "lsa_Middle_Base_L_rotateZ.a" "clipLibrary2.cel[0].cev[131].cevr"
		;
connectAttr "lsa_Pelvis_rotateX1.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "lsa_Pelvis_rotateY1.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "lsa_Pelvis_rotateZ1.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "lsa_Thumb_R_rotateX1.a" "clipLibrary2.cel[0].cev[135].cevr"
		;
connectAttr "lsa_Thumb_R_rotateY1.a" "clipLibrary2.cel[0].cev[136].cevr"
		;
connectAttr "lsa_Thumb_R_rotateZ1.a" "clipLibrary2.cel[0].cev[137].cevr"
		;
connectAttr "lsa_Thumb_L_rotateX1.a" "clipLibrary2.cel[0].cev[138].cevr"
		;
connectAttr "lsa_Thumb_L_rotateY1.a" "clipLibrary2.cel[0].cev[139].cevr"
		;
connectAttr "lsa_Thumb_L_rotateZ1.a" "clipLibrary2.cel[0].cev[140].cevr"
		;
connectAttr "lsa_Middle_R_rotateX.a" "clipLibrary2.cel[0].cev[141].cevr"
		;
connectAttr "lsa_Middle_R_rotateY.a" "clipLibrary2.cel[0].cev[142].cevr"
		;
connectAttr "lsa_Middle_R_rotateZ.a" "clipLibrary2.cel[0].cev[143].cevr"
		;
connectAttr "lsa_Jaw_rotateX.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "lsa_Jaw_rotateY.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "lsa_Jaw_rotateZ.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "lsa_Spine_2_rotateX.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "lsa_Spine_2_rotateY.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "lsa_Spine_2_rotateZ.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "lsa_Neck_rotateX.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "lsa_Neck_rotateY.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "lsa_Neck_rotateZ.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "lsa_Head_rotateX.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "lsa_Head_rotateY.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "lsa_Head_rotateZ.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "lsa_Spine_1_rotateX.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "lsa_Spine_1_rotateY.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "lsa_Spine_1_rotateZ.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "lsa_Middle_Base_R_rotateX.a" "clipLibrary2.cel[0].cev[159].cevr"
		;
connectAttr "lsa_Middle_Base_R_rotateY.a" "clipLibrary2.cel[0].cev[160].cevr"
		;
connectAttr "lsa_Middle_Base_R_rotateZ.a" "clipLibrary2.cel[0].cev[161].cevr"
		;
connectAttr "lsa_Thumb_Base_R_rotateX.a" "clipLibrary2.cel[0].cev[162].cevr"
		;
connectAttr "lsa_Thumb_Base_R_rotateY.a" "clipLibrary2.cel[0].cev[163].cevr"
		;
connectAttr "lsa_Thumb_Base_R_rotateZ.a" "clipLibrary2.cel[0].cev[164].cevr"
		;
connectAttr "lsa_Middle_L_rotateX.a" "clipLibrary2.cel[0].cev[165].cevr"
		;
connectAttr "lsa_Middle_L_rotateY.a" "clipLibrary2.cel[0].cev[166].cevr"
		;
connectAttr "lsa_Middle_L_rotateZ.a" "clipLibrary2.cel[0].cev[167].cevr"
		;
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[4].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[5].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[5].olnk";
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
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of lsa_idle_florida.ma
