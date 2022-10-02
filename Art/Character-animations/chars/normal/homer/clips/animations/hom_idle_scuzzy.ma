//Maya ASCII 4.0 scene
//Name: hom_idle_scuzzy.ma
//Last modified: Mon, Mar 24, 2003 10:03:33 AM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_idle_scuzzySource";
	setAttr ".ihi" 0;
	setAttr ".du" 140;
	setAttr ".ci" no;
createNode animCurveTL -n "Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTL -n "Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.051425456377630012 10 -0.051425456377630012 
		40 -0.051425456377630012 50 -0.051425456377630012 67 -0.051425456377630012 
		100 -0.051425456377630012 112 -0.051425456377630012 133 -0.051425456377630012 
		140 -0.051425456377630012;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTU -n "animCurveTU17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU23";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU24";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTL -n "Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTL -n "Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTL -n "Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTL -n "Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.26454016861507795 10 -0.26454016861507795 
		40 -0.26454016861507795 50 -0.26454016861507795 67 -0.26454016861507795 100 
		-0.26454016861507795 112 -0.26454016861507795 133 -0.26454016861507795 140 
		-0.26454016861507795;
createNode animCurveTL -n "Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.13806192026723146 10 0.13806192026723146 
		40 0.13806192026723146 50 0.13806192026723146 67 0.13806192026723146 100 
		0.13806192026723146 112 0.13806192026723146 133 0.13806192026723146 140 0.13806192026723146;
createNode animCurveTL -n "Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.064904406754016042 10 -0.064904406754016042 
		40 -0.064904406754016042 50 -0.064904406754016042 67 -0.064904406754016042 
		100 -0.064904406754016042 112 -0.064904406754016042 133 -0.064904406754016042 
		140 -0.064904406754016042;
createNode animCurveTA -n "Right_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Right_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -25.948901905116401 10 -25.948901905116401 
		40 -25.948901905116401 50 -25.948901905116401 67 -25.948901905116401 100 
		-25.948901905116401 112 -25.948901905116401 133 -25.948901905116401 140 -25.948901905116401;
createNode animCurveTA -n "Right_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTL -n "Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.21594587158542247 10 0.21594587158542247 
		40 0.21594587158542247 50 0.21594587158542247 67 0.21594587158542247 100 
		0.21594587158542247 112 0.21594587158542247 133 0.21594587158542247 140 0.21594587158542247;
createNode animCurveTL -n "Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.1380615615975922 10 0.1380615615975922 
		40 0.1380615615975922 50 0.1380615615975922 67 0.1380615615975922 100 0.1380615615975922 
		112 0.1380615615975922 133 0.1380615615975922 140 0.1380615615975922;
createNode animCurveTL -n "Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.00078430246903575811 10 0.00078430246903575811 
		40 0.00078430246903575811 50 0.00078430246903575811 67 0.00078430246903575811 
		100 0.00078430246903575811 112 0.00078430246903575811 133 0.00078430246903575811 
		140 0.00078430246903575811;
createNode animCurveTA -n "Left_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Left_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Left_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTL -n "Right_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTL -n "Right_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTL -n "Right_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 10 1 40 1 50 1 67 1 100 1 112 
		1 133 1 140 1;
createNode animCurveTL -n "Left_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTL -n "Left_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTL -n "Left_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 10 1 40 1 50 1 67 1 100 1 112 
		1 133 1 140 1;
createNode animCurveTL -n "Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.076472881617957691 10 -0.076472881617957691 
		40 -0.076472881617957691 50 -0.076472881617957691 67 -0.076472881617957691 
		100 -0.076472881617957691 112 -0.076472881617957691 133 -0.076472881617957691 
		140 -0.076472881617957691;
createNode animCurveTL -n "Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.93105416142265018 10 0.93105416142265018 
		40 0.93105416142265018 50 0.93105416142265018 67 0.93105416142265018 100 
		0.93105416142265018 112 0.93105416142265018 133 0.93105416142265018 140 0.93105416142265018;
createNode animCurveTL -n "Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Character_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.62843630316474508 10 2.4753040337815322 
		40 2.4753040337815322 50 -0.81603074748961402 67 -0.81603074748961402 100 
		-0.81603074748961402 112 -0.62843630316474508 133 -0.62843630316474508 140 
		-0.62843630316474508;
createNode animCurveTA -n "Character_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -5.8284402688137158 10 -18.404118772663796 
		40 -18.404118772663796 50 -1.649020394518834 67 -1.649020394518834 100 -1.649020394518834 
		112 -5.8284402688137158 133 -5.8284402688137158 140 -5.8284402688137158;
createNode animCurveTA -n "Character_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1.2956360193097458 10 -12.401899664909614 
		40 -12.401899664909614 50 5.1153154149722919 67 5.1153154149722919 100 5.1153154149722919 
		112 -1.2956360193097458 133 -1.2956360193097458 140 -1.2956360193097458;
createNode animCurveTA -n "R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "L_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "L_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "L_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTL -n "Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.43524234076486068 10 -0.43524234076486068 
		40 -0.43524234076486068 50 -0.43524234076486068 67 -0.43524234076486068 100 
		-0.43524234076486068 112 -0.43524234076486068 133 -0.43524234076486068 140 
		-0.43524234076486068;
createNode animCurveTL -n "Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.82665738350180629 10 -0.82665738350180629 
		40 -0.82665738350180629 50 -0.82665738350180629 67 -0.82665738350180629 100 
		-0.82665738350180629 112 -0.82665738350180629 133 -0.82665738350180629 140 
		-0.82665738350180629;
createNode animCurveTL -n "Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.27773886459742925 10 0.27773886459742925 
		40 0.27773886459742925 50 0.27773886459742925 67 0.27773886459742925 100 
		0.27773886459742925 112 0.27773886459742925 133 0.27773886459742925 140 0.27773886459742925;
createNode animCurveTA -n "Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1.8121934161072303e-015 10 -1.8121934161072303e-015 
		40 0 50 0 67 0 100 0 112 0 133 0 140 -1.8121934161072303e-015;
createNode animCurveTA -n "Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 28.652637602052774 10 28.652637602052774 
		40 28.652637602052774 50 28.652637602052774 67 28.652637602052774 100 28.652637602052774 
		112 28.652637602052774 133 28.652637602052774 140 28.652637602052774;
createNode animCurveTA -n "Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 64.676908227303443 10 64.676908227303443 
		40 64.676908227303443 50 64.676908227303443 67 64.676908227303443 100 64.676908227303443 
		112 64.676908227303443 133 64.676908227303443 140 64.676908227303443;
createNode animCurveTL -n "Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.5198069948790518 10 0.5198069948790518 
		40 0.5198069948790518 50 0.5198069948790518 67 0.5198069948790518 100 0.5198069948790518 
		112 0.5198069948790518 133 0.5198069948790518 140 0.5198069948790518;
createNode animCurveTL -n "Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.72394202659893114 10 -0.72394202659893114 
		40 -0.72394202659893114 50 -0.72394202659893114 67 -0.72394202659893114 100 
		-0.72394202659893114 112 -0.72394202659893114 133 -0.72394202659893114 140 
		-0.72394202659893114;
createNode animCurveTL -n "Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.36439499068905612 10 0.36439499068905612 
		40 0.36439499068905612 50 0.36439499068905612 67 0.36439499068905612 100 
		0.36439499068905612 112 0.36439499068905612 133 0.36439499068905612 140 0.36439499068905612;
createNode animCurveTA -n "Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 7.7976222737965299 10 7.7976222737965299 
		40 7.7976222737965299 50 7.7976222737965299 67 7.7976222737965299 100 7.7976222737965299 
		112 7.7976222737965299 133 7.7976222737965299 140 7.7976222737965299;
createNode animCurveTA -n "Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -30.409274105849079 10 -30.409274105849079 
		40 -30.409274105849079 50 -30.409274105849079 67 -30.409274105849079 100 
		-30.409274105849079 112 -30.409274105849079 133 -30.409274105849079 140 -30.409274105849079;
createNode animCurveTA -n "Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -64.859940280210878 10 -64.859940280210878 
		40 -64.859940280210878 50 -64.859940280210878 67 -64.859940280210878 100 
		-64.859940280210878 112 -64.859940280210878 133 -64.859940280210878 140 -64.859940280210878;
createNode animCurveTL -n "Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.98071836797454492 10 -0.80453407092669638 
		40 -0.80453407092669638 50 -0.98162884533059347 67 -0.98162884533059347 100 
		-0.98162884533059347 112 -1.1009602090820272 133 -1.1009602090820272 140 
		-0.98071836797454492;
createNode animCurveTL -n "Right_Arm_World_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.6432964864655397 10 3.2870968322210889 
		40 3.2870968322210889 50 2.1109598024274607 67 2.1109598024274607 100 2.1109598024274607 
		112 2.6461161015372858 133 2.6461161015372858 140 1.6432964864655397;
	setAttr -s 9 ".kit[0:8]"  9 1 1 1 9 1 1 
		1 9;
	setAttr -s 9 ".kot[0:8]"  9 1 1 1 9 1 1 
		1 9;
	setAttr -s 9 ".kix[1:8]"  0.028060531243681908 0.076857052743434906 
		0.020575879141688347 1 0.070748165249824524 0.10975529253482819 0.038303356617689133 
		0.0023267653305083513;
	setAttr -s 9 ".kiy[1:8]"  0.99960625171661377 -0.99704211950302124 
		-0.99978828430175781 0 -0.99749422073364258 0.99395865201950073 -0.99926614761352539 
		-0.99999731779098511;
	setAttr -s 9 ".kox[1:8]"  0.028060466051101685 0.076857149600982666 
		0.020575810223817825 1 0.070748254656791687 0.10975523293018341 0.038303390145301819 
		0.0023267653305083513;
	setAttr -s 9 ".koy[1:8]"  0.99960625171661377 -0.99704211950302124 
		-0.99978828430175781 0 -0.99749422073364258 0.99395865201950073 -0.99926614761352539 
		-0.99999731779098511;
createNode animCurveTL -n "Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.097994651149805143 10 0.2208590808579898 
		40 0.2208590808579898 50 0.43641131844058068 67 0.43641131844058068 100 0.43641131844058068 
		112 0.34188157109459311 133 0.34188157109459311 140 -0.097994651149805143;
createNode animCurveTA -n "Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 5.4739599453216474 10 167.87322993747404 
		40 167.87322993747404 50 169.1698765489088 67 169.1698765489088 100 169.1698765489088 
		112 34.497640870151749 133 34.497640870151749 140 5.4739599453216474;
	setAttr -s 9 ".kit[1:8]"  1 9 9 9 1 1 1 
		9;
	setAttr -s 9 ".kot[1:8]"  1 9 9 9 1 1 1 
		9;
	setAttr -s 9 ".kix[1:8]"  0.91228049993515015 0.99985599517822266 
		0.99968403577804565 1 0.87523931264877319 0.94623661041259766 0.99629443883895874 
		0.4183734655380249;
	setAttr -s 9 ".kiy[1:8]"  0.40956595540046692 0.016970621421933174 
		0.025137335062026978 0 -0.48369017243385315 -0.32347533106803894 -0.086008287966251373 
		-0.9082750678062439;
	setAttr -s 9 ".kox[1:8]"  0.91228032112121582 0.99985599517822266 
		0.99968403577804565 1 0.87523943185806274 0.94623655080795288 0.99629443883895874 
		0.4183734655380249;
	setAttr -s 9 ".koy[1:8]"  0.40956631302833557 0.016970621421933174 
		0.025137335062026978 0 -0.48368990421295166 -0.32347553968429565 -0.086008325219154358 
		-0.9082750678062439;
createNode animCurveTA -n "Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.5874521608419823 10 21.329169320464981 
		40 21.329169320464981 50 36.833023470131536 67 36.833023470131536 100 36.833023470131536 
		112 211.49770476261446 133 211.49770476261446 140 8.5874521608419823;
	setAttr -s 9 ".kit[5:8]"  1 1 1 9;
	setAttr -s 9 ".kot[5:8]"  1 1 1 9;
	setAttr -s 9 ".kix[5:8]"  0.9120563268661499 0.90439307689666748 
		0.84248811006546021 0.065743774175643921;
	setAttr -s 9 ".kiy[5:8]"  0.41006499528884888 0.42670026421546936 
		-0.5387149453163147 -0.99783653020858765;
	setAttr -s 9 ".kox[5:8]"  0.91205626726150513 0.9043923020362854 
		0.84248799085617065 0.065743774175643921;
	setAttr -s 9 ".koy[5:8]"  0.41006502509117126 0.42670199275016785 
		-0.53871512413024902 -0.99783653020858765;
createNode animCurveTA -n "Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 74.754744621954103 10 250.44367289570843 
		40 250.44367289570843 50 246.8960694083097 67 246.8960694083097 100 246.8960694083097 
		112 143.67038937270337 133 143.67038937270337 140 74.754744621954103;
	setAttr -s 9 ".kit[1:8]"  1 9 9 9 1 1 1 
		9;
	setAttr -s 9 ".kot[1:8]"  1 9 9 9 1 1 1 
		9;
	setAttr -s 9 ".kix[1:8]"  0.82956534624099731 0.99892348051071167 
		0.99764186143875122 1 0.89799845218658447 0.93918639421463013 0.97162014245986938 
		0.19044062495231628;
	setAttr -s 9 ".kiy[1:8]"  0.55840969085693359 -0.046388030052185059 
		-0.068634830415248871 0 -0.4399985671043396 -0.34340772032737732 -0.23654656112194061 
		-0.98169869184494019;
	setAttr -s 9 ".kox[1:8]"  0.82956534624099731 0.99892348051071167 
		0.99764186143875122 1 0.89799845218658447 0.9391864538192749 0.97162014245986938 
		0.19044062495231628;
	setAttr -s 9 ".koy[1:8]"  0.55840969085693359 -0.046388030052185059 
		-0.068634830415248871 0 -0.4399985671043396 -0.34340766072273254 -0.23654654622077942 
		-0.98169869184494019;
createNode animCurveTL -n "Left_Arm_World_translateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.76309120872911718 10 0.76309120872911718 
		40 0.76309120872911718 50 0.6897333209165406 67 0.6897333209165406 100 0.6897333209165406 
		112 0.48307180435742586 133 0.48307180435742586 140 0.76309120872911718;
	setAttr -s 9 ".kit[0:8]"  9 9 1 1 9 1 1 
		1 9;
	setAttr -s 9 ".kot[0:8]"  9 9 1 1 9 1 1 
		1 9;
	setAttr -s 9 ".kix[2:8]"  0.18894267082214355 0.20185548067092896 
		1 0.21226225793361664 0.215603306889534 0.60389053821563721 0.0083324629813432693;
	setAttr -s 9 ".kiy[2:8]"  -0.98198813199996948 -0.97941529750823975 
		0 -0.97721272706985474 -0.97648102045059204 0.79706728458404541 0.99996531009674072;
	setAttr -s 9 ".kox[2:8]"  0.18894213438034058 0.20185473561286926 
		1 0.21226291358470917 0.21560326218605042 0.6038898229598999 0.0083324629813432693;
	setAttr -s 9 ".koy[2:8]"  -0.98198825120925903 -0.97941547632217407 
		0 -0.97721260786056519 -0.97648102045059204 0.79706782102584839 0.99996531009674072;
createNode animCurveTL -n "Left_Arm_World_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.6150490657878991 10 1.5268620025904756 
		40 1.9040618159701745 50 3.4391645812709499 67 3.4742529360039454 100 3.4742529360039454 
		112 2.6806202433916031 133 2.6806202433916031 140 1.6150490657878991;
	setAttr -s 9 ".kit[0:8]"  9 1 1 1 9 9 1 
		1 9;
	setAttr -s 9 ".kot[0:8]"  9 1 1 1 9 9 1 
		1 9;
	setAttr -s 9 ".kix[1:8]"  0.30435112118721008 0.010177324526011944 
		0.0211513452231884 0.42905044555664063 0.018897054716944695 0.031589865684509277 
		0.046046726405620575 0.0021897424012422562;
	setAttr -s 9 ".kiy[1:8]"  0.9525599479675293 0.99994820356369019 
		0.99977630376815796 0.90328049659729004 -0.99982142448425293 -0.99950093030929565 
		-0.99893927574157715 -0.99999761581420898;
	setAttr -s 9 ".kox[1:8]"  0.30435088276863098 0.010177301242947578 
		0.021151360124349594 0.42905044555664063 0.018897054716944695 0.031589709222316742 
		0.046046596020460129 0.0021897424012422562;
	setAttr -s 9 ".koy[1:8]"  0.95256000757217407 0.99994820356369019 
		0.99977630376815796 0.90328049659729004 -0.99982142448425293 -0.99950093030929565 
		-0.99893927574157715 -0.99999761581420898;
createNode animCurveTL -n "Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.14314299916678522 10 0.14314299916678522 
		40 0.14314299916678522 50 0.14314299916678522 67 0.14314299916678522 100 
		0.14314299916678522 112 0.70178962478155582 133 0.70178962478155582 140 0.14314299916678522;
	setAttr -s 9 ".kit[5:8]"  1 1 1 9;
	setAttr -s 9 ".kot[5:8]"  1 1 1 9;
	setAttr -s 9 ".kix[5:8]"  0.093324802815914154 0.10173055529594421 
		0.13046081364154816 0.0041767223738133907;
	setAttr -s 9 ".kiy[5:8]"  0.99563568830490112 0.99481201171875 
		-0.99145346879959106 -0.99999129772186279;
	setAttr -s 9 ".kox[5:8]"  0.093324817717075348 0.10172970592975616 
		0.1304599791765213 0.0041767223738133907;
	setAttr -s 9 ".koy[5:8]"  0.99563568830490112 0.99481207132339478 
		-0.99145358800888062 -0.99999129772186279;
createNode animCurveTA -n "Left_Arm_World_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 16.226511010665405 10 18.957383970104438 
		40 18.957383970104438 50 -122.83897747146437 67 -122.83897747146437 100 -122.83897747146437 
		112 -225.91501972529881 133 -225.91501972529881 140 16.226511010665405;
	setAttr -s 9 ".kit[0:8]"  9 9 1 1 9 1 3 
		1 9;
	setAttr -s 9 ".kot[0:8]"  9 9 1 1 9 1 3 
		1 9;
	setAttr -s 9 ".kix[2:8]"  0.79419147968292236 0.63209348917007446 
		1 0.99819034337997437 1 0.96634477376937866 0.0551275834441185;
	setAttr -s 9 ".kiy[2:8]"  -0.60766756534576416 -0.77489215135574341 
		0 -0.060133982449769974 0 0.2572503387928009 0.99847930669784546;
	setAttr -s 9 ".kox[2:8]"  0.79419153928756714 0.63209354877471924 
		1 0.99819028377532959 1 0.96634477376937866 0.0551275834441185;
	setAttr -s 9 ".koy[2:8]"  -0.60766756534576416 -0.77489209175109863 
		0 -0.060134083032608032 0 0.25725030899047852 0.99847930669784546;
createNode animCurveTA -n "Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -8.513966085499284 10 -31.714296263041511 
		40 -31.714296263041511 50 -12.156486461101892 67 -12.156486461101892 100 
		-12.156486461101892 112 -42.356564380873309 133 -42.356564380873309 140 -8.513966085499284;
	setAttr -s 9 ".kit[1:8]"  1 1 1 9 1 9 9 
		9;
	setAttr -s 9 ".kot[1:8]"  1 1 1 9 1 9 9 
		9;
	setAttr -s 9 ".kix[1:8]"  0.99690479040145874 0.99996280670166016 
		0.9941023588180542 1 0.99940472841262817 0.90181362628936768 0.8450016975402832 
		0.36740639805793762;
	setAttr -s 9 ".kiy[1:8]"  -0.078618243336677551 0.008627748116850853 
		0.10844575613737106 0 -0.034499064087867737 -0.43212515115737915 0.5347636342048645 
		0.93006050586700439;
	setAttr -s 9 ".kox[1:8]"  0.99690479040145874 0.99996280670166016 
		0.9941023588180542 1 0.99940472841262817 0.90181362628936768 0.8450016975402832 
		0.36740639805793762;
	setAttr -s 9 ".koy[1:8]"  -0.078618250787258148 0.0086277378723025322 
		0.10844569653272629 0 -0.034499101340770721 -0.43212515115737915 0.5347636342048645 
		0.93006050586700439;
createNode animCurveTA -n "Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -68.213989601412422 10 -75.982433930485854 
		40 -75.982433930485854 50 86.902763496689644 67 86.902763496689644 100 86.902763496689644 
		112 57.336434738726197 133 57.336434738726197 140 -68.213989601412422;
	setAttr -s 9 ".kit[2:8]"  1 9 9 9 9 9 9;
	setAttr -s 9 ".kot[2:8]"  1 9 9 9 9 9 9;
	setAttr -s 9 ".kix[2:8]"  0.98258984088897705 0.30181664228439331 
		1 0.94560813903808594 0.9053308367729187 0.39186754822731018 0.10588458180427551;
	setAttr -s 9 ".kiy[2:8]"  0.18578799068927765 0.9533659815788269 
		0 -0.32530796527862549 -0.42470699548721313 -0.920021653175354 -0.99437844753265381;
	setAttr -s 9 ".kox[2:8]"  0.98258990049362183 0.30181664228439331 
		1 0.94560813903808594 0.9053308367729187 0.39186754822731018 0.10588458180427551;
	setAttr -s 9 ".koy[2:8]"  0.18578781187534332 0.9533659815788269 
		0 -0.32530796527862549 -0.42470699548721313 -0.920021653175354 -0.99437844753265381;
createNode animCurveTL -n "Left_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0.41962017960413628 
		67 0.41962017960413628 100 0.41962017960413628 112 0.1317531260235893 133 
		0.1317531260235893 140 0;
	setAttr -s 9 ".kit[6:8]"  3 3 9;
	setAttr -s 9 ".kot[6:8]"  3 3 9;
createNode animCurveTL -n "Left_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0.10417997791450086 
		67 0.10417997791450086 100 0.10417997791450086 112 0.12444661375990355 133 
		0.12444661375990355 140 0;
	setAttr -s 9 ".kit[6:8]"  3 3 9;
	setAttr -s 9 ".kot[6:8]"  3 3 9;
createNode animCurveTL -n "Left_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1 10 -1 40 -1 50 -0.26603229318240895 
		67 -0.26603229318240895 100 -0.26603229318240895 112 0.93286230561246219 
		133 0.93286230561246219 140 -1;
	setAttr -s 9 ".kit[6:8]"  3 3 9;
	setAttr -s 9 ".kot[6:8]"  3 3 9;
createNode animCurveTL -n "Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.10167917362943303 10 -0.32687675557507306 
		40 -0.32687675557507306 50 -0.10167917362943303 67 -0.10167917362943303 100 
		-0.10167917362943303 112 -0.039771392276307029 133 -0.039771392276307029 
		140 -0.10167917362943303;
	setAttr -s 9 ".kit[5:8]"  1 3 3 9;
	setAttr -s 9 ".kot[5:8]"  1 3 3 9;
	setAttr -s 9 ".kix[5:8]"  0.99316912889480591 1 1 0.03766370564699173;
	setAttr -s 9 ".kiy[5:8]"  0.11668377369642258 0 0 -0.99929046630859375;
	setAttr -s 9 ".kox[5:8]"  0.99316912889480591 1 1 0.03766370564699173;
	setAttr -s 9 ".koy[5:8]"  0.11668374389410019 0 0 -0.99929046630859375;
createNode animCurveTL -n "Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.40762644910266188 10 -0.22864558231741192 
		40 -0.22864558231741192 50 -0.40762644910266188 67 -0.40762644910266188 100 
		-0.40762644910266188 112 -0.27280313361669739 133 -0.27280313361669739 140 
		-0.40762644910266188;
	setAttr -s 9 ".kit[6:8]"  3 3 9;
	setAttr -s 9 ".kot[6:8]"  3 3 9;
createNode animCurveTL -n "Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.93129112588482243 10 0.14161005352167591 
		40 0.14161005352167591 50 -0.93129112588482243 67 -0.93129112588482243 100 
		-0.93129112588482243 112 0.025974126867710806 133 0.025974126867710806 140 
		-0.93129112588482243;
	setAttr -s 9 ".kit[6:8]"  3 3 9;
	setAttr -s 9 ".kot[6:8]"  3 3 9;
createNode animCurveTA -n "R_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 12.253734489678925 10 12.253734489678925 
		40 12.253734489678925 50 12.253734489678925 67 12.253734489678925 100 12.253734489678925 
		112 12.253734489678925 133 12.253734489678925 140 12.253734489678925;
createNode animCurveTA -n "R_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -65.746751280844961 10 -65.746751280844961 
		40 -65.746751280844961 50 -65.746751280844961 67 -65.746751280844961 100 
		-65.746751280844961 112 -65.746751280844961 133 -65.746751280844961 140 -65.746751280844961;
createNode animCurveTA -n "R_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 3.871449260799477e-015 10 3.871449260799477e-015 
		40 0 50 0 67 0 100 0 112 0 133 0 140 3.871449260799477e-015;
createNode animCurveTA -n "L_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.061808866237337522 10 -0.061808866237337522 
		40 -0.061808866237337522 50 -0.061808866237337522 67 -0.061808866237337522 
		100 -0.061808866237337522 112 -0.061808866237337522 133 -0.061808866237337522 
		140 -0.061808866237337522;
createNode animCurveTA -n "L_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -59.058178941076754 10 -59.058178941076754 
		40 -59.058178941076754 50 -59.058178941076754 67 -59.058178941076754 100 
		-59.058178941076754 112 -59.058178941076754 133 -59.058178941076754 140 -59.058178941076754;
createNode animCurveTA -n "L_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 16.579147429757843 10 16.579147429757843 
		40 16.579147429757843 50 16.579147429757843 67 16.579147429757843 100 16.579147429757843 
		112 16.579147429757843 133 16.579147429757843 140 16.579147429757843;
createNode animCurveTA -n "R_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.5572674112203622 10 8.5572674112203622 
		40 8.5572674112203622 50 8.5572674112203622 67 8.5572674112203622 100 8.5572674112203622 
		112 8.5572674112203622 133 8.5572674112203622 140 8.5572674112203622;
createNode animCurveTA -n "L_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 15.711328223519057 10 15.711328223519057 
		40 15.711328223519057 50 15.711328223519057 67 15.711328223519057 100 15.711328223519057 
		112 15.711328223519057 133 15.711328223519057 140 15.711328223519057;
createNode animCurveTA -n "R_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "R_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "R_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "L_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "L_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "L_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 10.423754966968488 10 10.423754966968488 
		40 10.423754966968488 50 10.423754966968488 67 10.423754966968488 100 10.423754966968488 
		112 10.423754966968488 133 10.423754966968488 140 10.423754966968488;
createNode animCurveTA -n "Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 27.722848255843903 10 27.722848255843903 
		40 27.722848255843903 50 27.722848255843903 67 27.722848255843903 100 27.722848255843903 
		112 27.722848255843903 133 27.722848255843903 140 27.722848255843903;
createNode animCurveTA -n "Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 21.576484776388227 10 21.576484776388227 
		40 21.576484776388227 50 21.576484776388227 67 21.576484776388227 100 21.576484776388227 
		112 21.576484776388227 133 21.576484776388227 140 21.576484776388227;
createNode animCurveTA -n "Middle_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Middle_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Middle_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 27.080064458283051 10 27.080064458283051 
		40 27.080064458283051 50 27.080064458283051 67 27.080064458283051 100 27.080064458283051 
		112 27.080064458283051 133 27.080064458283051 140 27.080064458283051;
createNode animCurveTA -n "Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 13.994403295754109 10 13.994403295754109 
		40 13.994403295754109 50 13.994403295754109 67 13.994403295754109 100 13.994403295754109 
		112 13.994403295754109 133 13.994403295754109 140 13.994403295754109;
createNode animCurveTA -n "Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 13.994403295754109 10 13.994403295754109 
		40 13.994403295754109 50 13.994403295754109 67 13.994403295754109 100 13.994403295754109 
		112 13.994403295754109 133 13.994403295754109 140 13.994403295754109;
createNode animCurveTA -n "Middle_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Middle_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Middle_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 27.911632519594587 10 85.529461550026639 
		40 85.529461550026639 50 27.911632519594587 67 27.911632519594587 100 27.911632519594587 
		112 27.911632519594587 133 27.911632519594587 140 27.911632519594587;
createNode animCurveTA -n "Jaw_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Jaw_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Jaw_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Spine_2_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.65073001024951671 10 -0.65073001024951671 
		40 -0.65073001024951671 50 -0.65073001024951671 67 -0.65073001024951671 100 
		-0.65073001024951671 112 0.95564840735523893 133 0.95564840735523893 140 
		-0.65073001024951671;
createNode animCurveTA -n "Spine_2_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -4.2368721935960929 10 -4.2368721935960929 
		40 -4.2368721935960929 50 -4.2368721935960929 67 -4.2368721935960929 100 
		-4.2368721935960929 112 -0.78354878973434083 133 -0.78354878973434083 140 
		-4.2368721935960929;
createNode animCurveTA -n "Spine_2_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.7398866450636881 10 8.7398866450636881 
		40 8.7398866450636881 50 8.7398866450636881 67 8.7398866450636881 100 8.7398866450636881 
		112 8.2409782783960281 133 8.2409782783960281 140 8.7398866450636881;
createNode animCurveTA -n "Neck_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 -34.747540345718029 40 -34.747540345718029 
		50 47.884216058538065 67 47.884216058538065 100 47.884216058538065 112 0 
		133 0 140 0;
	setAttr -s 9 ".kit[0:8]"  9 1 1 1 9 1 1 
		9 9;
	setAttr -s 9 ".kot[0:8]"  9 1 1 1 9 1 1 
		9 9;
	setAttr -s 9 ".kix[1:8]"  0.99943530559539795 0.96922832727432251 
		0.86672931909561157 1 0.99924415349960327 0.99999755620956421 1 1;
	setAttr -s 9 ".kiy[1:8]"  -0.033600836992263794 0.24616339802742004 
		0.49877876043319702 0 0.038873162120580673 -0.0022039958275854588 0 0;
	setAttr -s 9 ".kox[1:8]"  0.99943536520004272 0.96922838687896729 
		0.86672943830490112 1 0.99924415349960327 0.99999755620956421 1 1;
	setAttr -s 9 ".koy[1:8]"  -0.033600736409425735 0.24616329371929169 
		0.4987785816192627 0 0.03887321799993515 -0.0022041259799152613 0 0;
createNode animCurveTA -n "Neck_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 9.9434648273121251 40 9.9434648273121251 
		50 -14.136026308788198 67 -14.136026308788198 100 -14.136026308788198 112 
		20.566634171321788 133 20.566634171321788 140 0;
	setAttr -s 9 ".kit[0:8]"  9 1 1 9 9 1 1 
		1 9;
	setAttr -s 9 ".kot[0:8]"  9 1 1 9 9 1 1 
		1 9;
	setAttr -s 9 ".kix[1:8]"  0.99931102991104126 0.99922025203704834 
		0.90608036518096924 1 0.99815428256988525 0.99948006868362427 0.99968385696411133 
		0.54500830173492432;
	setAttr -s 9 ".kiy[1:8]"  0.037113945931196213 -0.039483223110437393 
		-0.42310568690299988 0 0.060729522258043289 -0.032242480665445328 -0.02514299564063549 
		-0.83843064308166504;
	setAttr -s 9 ".kox[1:8]"  0.99931102991104126 0.99922025203704834 
		0.90608036518096924 1 0.99815428256988525 0.99948006868362427 0.99968385696411133 
		0.54500830173492432;
	setAttr -s 9 ".koy[1:8]"  0.03711395338177681 -0.039483174681663513 
		-0.42310568690299988 0 0.060729537159204483 -0.032242409884929657 -0.025143012404441833 
		-0.83843064308166504;
createNode animCurveTA -n "Neck_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 35.902262142621865 40 35.902262142621865 
		50 15.919676283120204 67 15.919676283120204 100 15.919676283120204 112 0 
		133 0 140 0;
	setAttr -s 9 ".kit[1:8]"  1 1 9 9 1 1 9 
		9;
	setAttr -s 9 ".kot[1:8]"  1 1 9 9 1 1 9 
		9;
	setAttr -s 9 ".kix[1:8]"  0.99975407123565674 0.99275869131088257 
		0.93243730068206787 1 0.99994540214538574 0.99997627735137939 1 1;
	setAttr -s 9 ".kiy[1:8]"  0.022175172343850136 -0.12012591958045959 
		-0.36133182048797607 0 -0.010451169684529305 -0.0068893064744770527 0 0;
	setAttr -s 9 ".kox[1:8]"  0.99975407123565674 0.99275869131088257 
		0.93243730068206787 1 0.99994540214538574 0.99997627735137939 1 1;
	setAttr -s 9 ".koy[1:8]"  0.022175159305334091 -0.120125912129879 
		-0.36133182048797607 0 -0.010451157577335835 -0.0068893246352672577 0 0;
createNode animCurveTA -n "Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 4.8714700432790456 10 4.8714700432790456 
		19 7.1781247596691635 23 4.5370780106454314 31 5.7362559753440792 40 4.8714700432790456 
		50 0.1376436071492157 60 0.1376436071492157 68 -0.38617347415207109 73 0.14254245202245205 
		100 0.1376436071492157 112 4.8714700432790456 133 4.8714700432790456 140 
		4.8714700432790456;
createNode animCurveTA -n "Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 11.783606204137085 10 11.783606204137085 
		19 12.638565384634923 23 14.095706518134495 31 14.046680430186033 40 11.783606204137085 
		50 -5.5148003619226502 60 -5.5148003619226502 68 -4.6903795822915111 73 -8.8357168183178789 
		100 -5.5148003619226502 112 11.783606204137085 133 11.783606204137085 140 
		11.783606204137085;
createNode animCurveTA -n "Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 7.5423825101935913 10 7.5423825101935913 
		19 13.867201321133237 23 1.9359707732801423 31 6.0250098069789289 40 7.5423825101935913 
		50 23.751489182771635 60 25.390266530409239 68 32.664462482742771 73 21.410004841390151 
		100 25.390266530409239 112 7.5423825101935913 133 7.5423825101935913 140 
		7.5423825101935913;
createNode animCurveTA -n "Spine_1_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1.8903601258661931 10 -1.8903601258661931 
		40 -1.8903601258661931 50 -1.8903601258661931 67 -1.8903601258661931 100 
		-1.8903601258661931 112 -1.8895253284798921 133 -1.8895253284798921 140 -1.8903601258661931;
createNode animCurveTA -n "Spine_1_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.5597289571479034 10 2.5597289571479034 
		40 2.5597289571479034 50 2.5597289571479034 67 2.5597289571479034 100 2.5597289571479034 
		112 -1.9117274535572073 133 -1.9117274535572073 140 2.5597289571479034;
createNode animCurveTA -n "Spine_1_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.016811087403604 10 2.016811087403604 
		40 2.016811087403604 50 2.016811087403604 67 2.016811087403604 100 2.016811087403604 
		112 2.1643236651526712 133 2.1643236651526712 140 2.016811087403604;
createNode animCurveTA -n "Middle_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Middle_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Middle_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 33.429092416277157 10 85.057590722238444 
		40 85.057590722238444 50 33.429092416277157 67 33.429092416277157 100 33.429092416277157 
		112 33.429092416277157 133 33.429092416277157 140 33.429092416277157;
createNode animCurveTA -n "Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.2533422302317216 10 8.2533422302317216 
		40 8.2533422302317216 50 8.2533422302317216 67 8.2533422302317216 100 8.2533422302317216 
		112 8.2533422302317216 133 8.2533422302317216 140 8.2533422302317216;
createNode animCurveTA -n "Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 23.263402056531085 10 23.263402056531085 
		40 23.263402056531085 50 23.263402056531085 67 23.263402056531085 100 23.263402056531085 
		112 23.263402056531085 133 23.263402056531085 140 23.263402056531085;
createNode animCurveTA -n "Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 20.166277752815617 10 20.166277752815617 
		40 20.166277752815617 50 20.166277752815617 67 20.166277752815617 100 20.166277752815617 
		112 20.166277752815617 133 20.166277752815617 140 20.166277752815617;
createNode animCurveTA -n "Middle_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Middle_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 10 0 40 0 50 0 67 0 100 0 112 
		0 133 0 140 0;
createNode animCurveTA -n "Middle_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 17.254116939558369 10 17.254116939558369 
		40 17.254116939558369 50 17.254116939558369 67 17.254116939558369 100 17.254116939558369 
		112 17.254116939558369 133 17.254116939558369 140 17.254116939558369;
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
	setAttr ".o" 113;
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
connectAttr "hom_idle_scuzzySource.st" "clipLibrary1.st[0]";
connectAttr "hom_idle_scuzzySource.du" "clipLibrary1.du[0]";
connectAttr "Extra_Attributes_translateX.a" "clipLibrary1.cel[0].cev[0].cevr"
		;
connectAttr "Extra_Attributes_translateY.a" "clipLibrary1.cel[0].cev[1].cevr"
		;
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU17.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU18.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU19.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU20.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU21.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU22.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU23.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU24.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "Hoop_Root_rotateX.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "Hoop_Root_rotateY.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "Hoop_Root_rotateZ.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "Right_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[20].cevr"
		;
connectAttr "Right_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[21].cevr"
		;
connectAttr "Right_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[22].cevr"
		;
connectAttr "Right_Foot_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[23].cevr"
		;
connectAttr "Right_Foot_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[24].cevr"
		;
connectAttr "Right_Foot_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[25].cevr"
		;
connectAttr "Left_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[26].cevr"
		;
connectAttr "Left_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[27].cevr"
		;
connectAttr "Left_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[28].cevr"
		;
connectAttr "Left_Foot_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[29].cevr"
		;
connectAttr "Left_Foot_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[30].cevr"
		;
connectAttr "Left_Foot_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[31].cevr"
		;
connectAttr "Right_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[32].cevr"
		;
connectAttr "Right_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[33].cevr"
		;
connectAttr "Right_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[34].cevr"
		;
connectAttr "Left_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[35].cevr"
		;
connectAttr "Left_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[36].cevr"
		;
connectAttr "Left_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[37].cevr"
		;
connectAttr "Right_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[38].cevr"
		;
connectAttr "Right_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[39].cevr"
		;
connectAttr "Right_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[40].cevr"
		;
connectAttr "Left_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[41].cevr"
		;
connectAttr "Left_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[42].cevr"
		;
connectAttr "Left_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[43].cevr"
		;
connectAttr "Character_Hoop_translateX.a" "clipLibrary1.cel[0].cev[44].cevr"
		;
connectAttr "Character_Hoop_translateY.a" "clipLibrary1.cel[0].cev[45].cevr"
		;
connectAttr "Character_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[46].cevr"
		;
connectAttr "Character_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[47].cevr"
		;
connectAttr "Character_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[48].cevr"
		;
connectAttr "Character_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[49].cevr"
		;
connectAttr "R_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "R_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "R_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "R_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "R_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "R_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "R_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "R_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "R_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "R_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "L_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "L_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "L_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "L_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "L_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "L_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "L_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "L_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "L_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "L_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "R_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "R_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "R_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "L_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "L_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "L_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "Right_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[76].cevr"
		;
connectAttr "Right_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[77].cevr"
		;
connectAttr "Right_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[78].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[79].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[80].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[81].cevr"
		;
connectAttr "Left_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "Left_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "Left_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "Right_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "Right_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "Right_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "Right_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "Right_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "Right_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "Left_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[94].cevr"
		;
connectAttr "Left_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[95].cevr"
		;
connectAttr "Left_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[96].cevr"
		;
connectAttr "Left_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[97].cevr"
		;
connectAttr "Left_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[98].cevr"
		;
connectAttr "Left_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[99].cevr"
		;
connectAttr "Left_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[100].cevr"
		;
connectAttr "Left_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[101].cevr"
		;
connectAttr "Left_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[102].cevr"
		;
connectAttr "Right_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[103].cevr"
		;
connectAttr "Right_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[104].cevr"
		;
connectAttr "Right_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[105].cevr"
		;
connectAttr "R_FK_Shoulder_rotateX.a" "clipLibrary1.cel[0].cev[106].cevr"
		;
connectAttr "R_FK_Shoulder_rotateY.a" "clipLibrary1.cel[0].cev[107].cevr"
		;
connectAttr "R_FK_Shoulder_rotateZ.a" "clipLibrary1.cel[0].cev[108].cevr"
		;
connectAttr "L_FK_Shoulder_rotateX.a" "clipLibrary1.cel[0].cev[109].cevr"
		;
connectAttr "L_FK_Shoulder_rotateY.a" "clipLibrary1.cel[0].cev[110].cevr"
		;
connectAttr "L_FK_Shoulder_rotateZ.a" "clipLibrary1.cel[0].cev[111].cevr"
		;
connectAttr "R_FK_Elbow_rotateZ.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "L_FK_Elbow_rotateZ.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "R_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "R_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "R_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "L_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "L_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "L_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "Thumb_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[120].cevr"
		;
connectAttr "Thumb_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[121].cevr"
		;
connectAttr "Thumb_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[122].cevr"
		;
connectAttr "Middle_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[123].cevr"
		;
connectAttr "Middle_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[124].cevr"
		;
connectAttr "Middle_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[125].cevr"
		;
connectAttr "Pelvis_rotateX.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "Pelvis_rotateY.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "Pelvis_rotateZ.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "Middle_R_rotateX.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "Middle_R_rotateY.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "Middle_R_rotateZ.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "Jaw_rotateX.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "Jaw_rotateY.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "Jaw_rotateZ.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "Spine_2_rotateX.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "Spine_2_rotateY.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "Spine_2_rotateZ.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "Neck_rotateX.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "Neck_rotateY.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "Neck_rotateZ.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "Head_rotateX.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "Head_rotateY.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "Head_rotateZ.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "Spine_1_rotateX.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "Spine_1_rotateY.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "Spine_1_rotateZ.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "Middle_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[153].cevr"
		;
connectAttr "Middle_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[154].cevr"
		;
connectAttr "Middle_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[155].cevr"
		;
connectAttr "Thumb_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[156].cevr"
		;
connectAttr "Thumb_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[157].cevr"
		;
connectAttr "Thumb_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[158].cevr"
		;
connectAttr "Middle_L_rotateX.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "Middle_L_rotateY.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "Middle_L_rotateZ.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[2].olnk";
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
// End of hom_idle_scuzzy.ma
