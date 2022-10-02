//Maya ASCII 4.0 scene
//Name: mrg_dialogue_no.ma
//Last modified: Fri, Feb 21, 2003 12:52:08 PM
requires maya "4.0";
requires "p3dSimpleShader" "18.8";
requires "p3dmayaexp" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_dialogue_noSource";
	setAttr ".ihi" 0;
	setAttr ".du" 40;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL124";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 1 20 1 26 1 34 1 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTL -n "animCurveTL125";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTL -n "mrg_Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 -0.079815982092630827 40 
		-0.079815982092630827;
createNode animCurveTL -n "mrg_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0 40 0;
createNode animCurveTL -n "mrg_Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0 40 0;
createNode animCurveTA -n "mrg_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0 40 0;
createNode animCurveTU -n "animCurveTU33";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0.995 0;
createNode animCurveTU -n "animCurveTU34";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0.995 0;
createNode animCurveTU -n "animCurveTU35";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0.995 0;
createNode animCurveTU -n "animCurveTU36";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0.995 0;
createNode animCurveTU -n "animCurveTU37";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0.995 0;
createNode animCurveTU -n "animCurveTU38";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0.995 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 1;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 1;
createNode animCurveTA -n "animCurveTA371";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA372";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA373";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTL -n "animCurveTL129";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTL -n "animCurveTL130";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTL -n "animCurveTL131";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTL -n "mrg_Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 -0.17655026201706334 40 -0.17655026201706334;
createNode animCurveTL -n "mrg_Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0.10676264329452093 40 0.10676264329452093;
createNode animCurveTL -n "mrg_Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 -0.073147264740539078 40 
		-0.073147264740539078;
createNode animCurveTA -n "mrg_Right_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0 40 0;
createNode animCurveTA -n "mrg_Right_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 -25.948901905116401 40 -25.948901905116401;
createNode animCurveTA -n "mrg_Right_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0 40 0;
createNode animCurveTL -n "mrg_Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0.072059567379697237 40 0.072059567379697237;
createNode animCurveTL -n "mrg_Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0.10860528941614173 40 0.10860528941614173;
createNode animCurveTL -n "mrg_Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0.00088390886240813306 40 
		0.00088390886240813306;
createNode animCurveTA -n "mrg_Left_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0 40 0;
createNode animCurveTA -n "mrg_Left_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0 40 0;
createNode animCurveTA -n "mrg_Left_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0 40 0;
createNode animCurveTA -n "animCurveTA380";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA381";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA382";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA383";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA384";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA385";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0 40 0;
createNode animCurveTA -n "animCurveTA387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0 40 0;
createNode animCurveTA -n "animCurveTA388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0 40 0;
createNode animCurveTA -n "animCurveTA389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0 40 0;
createNode animCurveTA -n "animCurveTA390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0 40 0;
createNode animCurveTA -n "animCurveTA391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0 40 0;
createNode animCurveTL -n "animCurveTL138";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTL -n "animCurveTL139";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTL -n "animCurveTL140";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 1.1269999742507935 11 1 20 
		1 26 1 34 1 40 1.1269999742507935;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTL -n "animCurveTL141";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTL -n "animCurveTL142";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTL -n "animCurveTL143";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 1.1269999742507935 11 1 20 
		1 26 1 34 1 40 1.1269999742507935;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTL -n "mrg_Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 -0.097247464600251146 40 
		-0.097247464600251146;
createNode animCurveTL -n "mrg_Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0.9825577053607899 40 0.9825577053607899;
createNode animCurveTL -n "mrg_Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0 40 0;
createNode animCurveTA -n "mrg_Character_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 -0.62843630316474508 40 -0.62843630316474508;
createNode animCurveTA -n "mrg_Character_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 -5.8284402688137158 40 -5.8284402688137158;
createNode animCurveTA -n "mrg_Character_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 -1.2956360193097458 40 -1.2956360193097458;
createNode animCurveTA -n "animCurveTA395";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA396";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA397";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA398";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA399";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA400";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA401";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA402";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA403";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA404";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA405";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA406";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA407";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA408";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA411";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA412";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA413";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA414";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA415";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA416";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA420";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTL -n "animCurveTL147";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.995 -0.43524234076486068 11 -0.25836961521967955 
		20 -0.25836961521967955 40 -0.43524234076486068;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  9 3 3 9;
createNode animCurveTL -n "animCurveTL148";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.995 -0.82665738350180629 11 -0.91449714178056596 
		20 -0.91449714178056596 40 -0.82665738350180629;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  9 3 3 9;
createNode animCurveTL -n "animCurveTL149";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.995 0.27773886459742925 11 0.038362195289875119 
		20 0.038362195289875119 40 0.27773886459742925;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  9 3 3 9;
createNode animCurveTA -n "animCurveTA421";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.995 0 11 6.7230119492284173 20 
		6.7230119492284173 40 0;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  9 3 3 9;
createNode animCurveTA -n "animCurveTA422";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.995 28.652637602052774 11 19.839511008631867 
		20 19.839511008631867 40 28.652637602052774;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  9 3 3 9;
createNode animCurveTA -n "animCurveTA423";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.995 64.676908227303443 11 76.90743997913691 
		20 76.90743997913691 40 64.676908227303443;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  9 3 3 9;
createNode animCurveTL -n "animCurveTL150";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.995 0.5198069948790518 11 0.19294723723866039 
		20 0.19294723723866039 40 0.5198069948790518;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  9 3 3 9;
createNode animCurveTL -n "animCurveTL151";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.995 -0.72394202659893114 11 -0.91060244765508003 
		20 -0.91060244765508003 40 -0.72394202659893114;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  9 3 3 9;
createNode animCurveTL -n "animCurveTL152";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.995 0.36439499068905612 11 0.023808763748733922 
		20 0.023808763748733922 40 0.36439499068905612;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  9 3 3 9;
createNode animCurveTA -n "animCurveTA424";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.995 7.7976222737965299 11 8.1910546202722809 
		20 8.1910546202722809 40 7.7976222737965299;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  9 3 3 9;
createNode animCurveTA -n "animCurveTA425";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.995 -30.409274105849079 11 -16.680769289981995 
		20 -16.680769289981995 40 -30.409274105849079;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  9 3 3 9;
createNode animCurveTA -n "animCurveTA426";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0.995 -64.859940280210878 11 -64.609749241846473 
		20 -64.609749241846473 40 -64.859940280210878;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  9 3 3 9;
createNode animCurveTL -n "mrg_Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 -0.65311611999272123 40 -0.65311611999272123;
createNode animCurveTL -n "mrg_Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 2.222264083594911 40 2.222264083594911;
createNode animCurveTL -n "mrg_Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 -0.097994651149805143 40 
		-0.097994651149805143;
createNode animCurveTA -n "mrg_Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 5.4739599453216474 40 5.4739599453216474;
createNode animCurveTA -n "mrg_Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 8.5874521608419823 40 8.5874521608419823;
createNode animCurveTA -n "mrg_Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 74.754744621954103 40 74.754744621954103;
createNode animCurveTL -n "mrg_Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0.25368378509166484 40 0.25368378509166484;
createNode animCurveTL -n "mrg_Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 2.2026421011163611 40 2.2026421011163611;
createNode animCurveTL -n "mrg_Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0.0085295933619701936 40 
		0.0085295933619701936;
createNode animCurveTA -n "mrg_Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 16.226511010665405 40 16.226511010665405;
createNode animCurveTA -n "mrg_Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 -8.513966085499284 40 -8.513966085499284;
createNode animCurveTA -n "mrg_Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 -68.213989601412422 40 -68.213989601412422;
createNode animCurveTL -n "animCurveTL159";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 -0.245189189189189 11 0 20 
		0 26 0 34 0 40 -0.245189189189189;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTL -n "animCurveTL160";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTL -n "animCurveTL161";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 -1 11 -1 20 -1 26 -1 34 -1 
		40 -1;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTL -n "animCurveTL162";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0.062337280601809833 11 -0.10167917362943303 
		20 -0.10167917362943303 26 -0.10167917362943303 34 -0.10167917362943303 40 
		0.062337280601809833;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTL -n "animCurveTL163";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 -0.40762644910266188 11 -0.40762644910266188 
		20 -0.40762644910266188 26 -0.40762644910266188 34 -0.40762644910266188 40 
		-0.40762644910266188;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTL -n "animCurveTL164";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 -0.93129112588482243 11 -0.93129112588482243 
		20 -0.93129112588482243 26 -0.93129112588482243 34 -0.93129112588482243 40 
		-0.93129112588482243;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA433";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 12.253734489678925 11 12.253734489678925 
		20 12.253734489678925 26 12.253734489678925 34 12.253734489678925 40 12.253734489678925;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA434";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 -65.746751280844961 11 -65.746751280844961 
		20 -65.746751280844961 26 -65.746751280844961 34 -65.746751280844961 40 -65.746751280844961;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA435";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA436";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 -0.061808866237337522 11 
		-0.061808866237337522 20 -0.061808866237337522 26 -0.061808866237337522 34 
		-0.061808866237337522 40 -0.061808866237337522;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA437";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 -59.058178941076754 11 -59.058178941076754 
		20 -59.058178941076754 26 -59.058178941076754 34 -59.058178941076754 40 -59.058178941076754;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA438";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 16.579147429757843 11 16.579147429757843 
		20 16.579147429757843 26 16.579147429757843 34 16.579147429757843 40 16.579147429757843;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA439";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 8.5572674112203622 11 8.5572674112203622 
		20 8.5572674112203622 26 8.5572674112203622 34 8.5572674112203622 40 8.5572674112203622;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA440";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 15.711328223519057 11 15.711328223519057 
		20 15.711328223519057 26 15.711328223519057 34 15.711328223519057 40 15.711328223519057;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA441";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA442";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA443";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA444";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA445";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA446";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA447";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 10.423754966968488 11 10.423754966968488 
		20 10.423754966968488 26 10.423754966968488 34 10.423754966968488 40 10.423754966968488;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA448";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 27.722848255843903 11 27.722848255843903 
		20 27.722848255843903 26 27.722848255843903 34 27.722848255843903 40 27.722848255843903;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA449";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 21.576484776388227 11 21.576484776388227 
		20 21.576484776388227 26 21.576484776388227 34 21.576484776388227 40 21.576484776388227;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA450";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA451";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA452";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 27.080064458283051 11 27.080064458283051 
		20 27.080064458283051 26 27.080064458283051 34 27.080064458283051 40 27.080064458283051;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA453";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA454";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA455";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA456";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA457";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA458";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 13.994403295754109 11 13.994403295754109 
		20 13.994403295754109 26 13.994403295754109 34 13.994403295754109 40 13.994403295754109;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA459";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA460";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA461";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 13.994403295754109 11 13.994403295754109 
		20 13.994403295754109 26 13.994403295754109 34 13.994403295754109 40 13.994403295754109;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA462";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA463";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA464";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 27.911632519594587 11 27.911632519594587 
		20 27.911632519594587 26 27.911632519594587 34 27.911632519594587 40 27.911632519594587;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA465";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA466";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA467";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA468";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0.71009266045616004 11 -3.9571777359042422 
		20 -0.1637517727516227 26 -3.5603477475976764 34 0 40 0.71009266045616004;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA469";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0.39065484564574898 11 0 
		20 0 26 0 34 0 40 0.39065484564574898;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA470";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 8.1445984161934586 11 0 20 
		0 26 0 34 0 40 8.1445984161934586;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA471";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 -11.282525782615652 
		20 27.520209241562053 26 -4.9260773376168787 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA472";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 -1.9697106240740936 
		20 -1.9697106240740936 26 -2.1247021423214139 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA473";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 -3.5078467693936166 
		20 -3.5078467693936166 26 -3.7838703286544755 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA474";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 -2.0270270270270276 11 3.1756745427787596 
		20 -8.0429504468419708 26 1.1703761373785557 34 -4.9367554394300077 40 -2.0270270270270276;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA475";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 -2.4108692476260054 11 6.0809159794441401 
		20 -18.727320486028507 26 0.42599855679405735 34 -8.6986303327609935 40 -2.4108692476260054;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA476";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 13.0432985235726 11 16.186357871905329 
		20 13.567556852102117 26 15.425446262282536 34 17.455917002855632 40 13.0432985235726;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "mrg_Spine_1_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "mrg_Spine_1_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "mrg_Spine_1_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -10.382821061592262;
createNode animCurveTA -n "animCurveTA480";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA481";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA482";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 33.429092416277157 11 33.429092416277157 
		20 33.429092416277157 26 33.429092416277157 34 33.429092416277157 40 33.429092416277157;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA483";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 8.2533422302317216 11 8.2533422302317216 
		20 8.2533422302317216 26 8.2533422302317216 34 8.2533422302317216 40 8.2533422302317216;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA484";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 23.263402056531085 11 23.263402056531085 
		20 23.263402056531085 26 23.263402056531085 34 23.263402056531085 40 23.263402056531085;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA485";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 20.166277752815617 11 20.166277752815617 
		20 20.166277752815617 26 20.166277752815617 34 20.166277752815617 40 20.166277752815617;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA486";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA487";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 0 11 0 20 0 26 0 34 0 40 
		0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA488";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.995 17.254116939558369 11 17.254116939558369 
		20 17.254116939558369 26 17.254116939558369 34 17.254116939558369 40 17.254116939558369;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA489";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0 40 0;
createNode animCurveTA -n "animCurveTA490";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0 40 0;
createNode animCurveTA -n "animCurveTA491";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0 40 0;
createNode animCurveTA -n "animCurveTA492";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0 40 0;
createNode animCurveTA -n "animCurveTA493";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0 40 0;
createNode animCurveTA -n "animCurveTA494";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0 40 0;
createNode animCurveTA -n "animCurveTA495";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0 40 0;
createNode animCurveTA -n "animCurveTA496";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0 40 0;
createNode animCurveTA -n "animCurveTA497";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0.995 0 40 0;
createNode clipLibrary -n "clipLibrary2";
	setAttr -s 177 ".cel[0].cev";
	setAttr ".cd[0].cm" -type "characterMapping" 177 "Extra_Attributes.translateX" 
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
		2 118 "Middle_L.rotateZ" 2 119 "hair_1.rotateX" 2 120 "hair_1.rotateY" 
		2 121 "hair_1.rotateZ" 2 122 "hair_2.rotateX" 2 123 "hair_2.rotateY" 
		2 124 "hair_2.rotateZ" 2 125 "hair_3.rotateX" 2 126 "hair_3.rotateY" 
		2 127 "hair_3.rotateZ" 2 128  ;
	setAttr ".cd[0].cim" -type "Int32Array" 177 0 1 2 3
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
		 158 159 160 161 162 163 164 165 166 167 168
		 169 170 171 172 173 174 175 176 ;
createNode lightLinker -n "lightLinker1";
	setAttr ".ihi" 0;
	setAttr -s 21 ".lnk";
select -ne :time1;
	setAttr ".o" 34;
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
	setAttr ".outf" 23;
	setAttr ".an" yes;
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
connectAttr "mrg_dialogue_noSource.st" "clipLibrary2.st[0]";
connectAttr "mrg_dialogue_noSource.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL124.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL125.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "mrg_Motion_Root_translateX.a" "clipLibrary2.cel[0].cev[2].cevr"
		;
connectAttr "mrg_Motion_Root_translateY.a" "clipLibrary2.cel[0].cev[3].cevr"
		;
connectAttr "mrg_Motion_Root_translateZ.a" "clipLibrary2.cel[0].cev[4].cevr"
		;
connectAttr "mrg_Motion_Root_rotateY.a" "clipLibrary2.cel[0].cev[5].cevr"
		;
connectAttr "animCurveTU33.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU34.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU35.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU36.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU37.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU38.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "mrg_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary2.cel[0].cev[12].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary2.cel[0].cev[13].cevr"
		;
connectAttr "animCurveTA371.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA372.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA373.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL129.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL130.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL131.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "mrg_Right_Foot_Hoop_translateX.a" "clipLibrary2.cel[0].cev[20].cevr"
		;
connectAttr "mrg_Right_Foot_Hoop_translateY.a" "clipLibrary2.cel[0].cev[21].cevr"
		;
connectAttr "mrg_Right_Foot_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[22].cevr"
		;
connectAttr "mrg_Right_Foot_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[23].cevr"
		;
connectAttr "mrg_Right_Foot_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[24].cevr"
		;
connectAttr "mrg_Right_Foot_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[25].cevr"
		;
connectAttr "mrg_Left_Foot_Hoop_translateX.a" "clipLibrary2.cel[0].cev[26].cevr"
		;
connectAttr "mrg_Left_Foot_Hoop_translateY.a" "clipLibrary2.cel[0].cev[27].cevr"
		;
connectAttr "mrg_Left_Foot_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[28].cevr"
		;
connectAttr "mrg_Left_Foot_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[29].cevr"
		;
connectAttr "mrg_Left_Foot_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[30].cevr"
		;
connectAttr "mrg_Left_Foot_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[31].cevr"
		;
connectAttr "animCurveTA380.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA381.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA382.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA383.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA384.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA385.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTA386.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTA387.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTA388.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTA389.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTA390.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTA391.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL138.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL139.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL140.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTL141.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTL142.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTL143.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "mrg_Character_Hoop_translateX.a" "clipLibrary2.cel[0].cev[50].cevr"
		;
connectAttr "mrg_Character_Hoop_translateY.a" "clipLibrary2.cel[0].cev[51].cevr"
		;
connectAttr "mrg_Character_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[52].cevr"
		;
connectAttr "mrg_Character_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[53].cevr"
		;
connectAttr "mrg_Character_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[54].cevr"
		;
connectAttr "mrg_Character_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[55].cevr"
		;
connectAttr "animCurveTA395.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA396.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA397.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA398.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA399.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA400.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA401.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA402.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA403.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA404.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA405.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA406.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA407.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA408.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA409.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA410.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA411.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA412.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA413.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA414.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTA415.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA416.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA417.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA418.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA419.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA420.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL147.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL148.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL149.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA421.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA422.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA423.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL150.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL151.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL152.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA424.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA425.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA426.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "mrg_Right_Arm_World_translateX.a" "clipLibrary2.cel[0].cev[94].cevr"
		;
connectAttr "mrg_Right_Arm_World_translateY.a" "clipLibrary2.cel[0].cev[95].cevr"
		;
connectAttr "mrg_Right_Arm_World_translateZ.a" "clipLibrary2.cel[0].cev[96].cevr"
		;
connectAttr "mrg_Right_Arm_World_rotateX.a" "clipLibrary2.cel[0].cev[97].cevr"
		;
connectAttr "mrg_Right_Arm_World_rotateY.a" "clipLibrary2.cel[0].cev[98].cevr"
		;
connectAttr "mrg_Right_Arm_World_rotateZ.a" "clipLibrary2.cel[0].cev[99].cevr"
		;
connectAttr "mrg_Left_Arm_World_translateX.a" "clipLibrary2.cel[0].cev[100].cevr"
		;
connectAttr "mrg_Left_Arm_World_translateY.a" "clipLibrary2.cel[0].cev[101].cevr"
		;
connectAttr "mrg_Left_Arm_World_translateZ.a" "clipLibrary2.cel[0].cev[102].cevr"
		;
connectAttr "mrg_Left_Arm_World_rotateX.a" "clipLibrary2.cel[0].cev[103].cevr"
		;
connectAttr "mrg_Left_Arm_World_rotateY.a" "clipLibrary2.cel[0].cev[104].cevr"
		;
connectAttr "mrg_Left_Arm_World_rotateZ.a" "clipLibrary2.cel[0].cev[105].cevr"
		;
connectAttr "animCurveTL159.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTL160.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTL161.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTL162.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTL163.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTL164.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA433.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA434.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA435.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA436.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA437.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA438.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA439.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA440.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA441.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA442.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA443.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA444.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA445.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA446.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA447.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA448.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA449.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA450.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA451.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA452.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA453.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA454.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA455.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA456.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA457.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA458.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA459.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA460.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA461.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA462.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA463.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA464.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA465.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA466.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA467.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA468.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA469.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA470.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA471.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA472.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA473.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA474.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA475.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA476.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "mrg_Spine_1_rotateX.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "mrg_Spine_1_rotateY.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "mrg_Spine_1_rotateZ.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA480.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA481.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA482.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA483.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA484.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA485.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA486.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA487.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA488.a" "clipLibrary2.cel[0].cev[167].cevr";
connectAttr "animCurveTA489.a" "clipLibrary2.cel[0].cev[168].cevr";
connectAttr "animCurveTA490.a" "clipLibrary2.cel[0].cev[169].cevr";
connectAttr "animCurveTA491.a" "clipLibrary2.cel[0].cev[170].cevr";
connectAttr "animCurveTA492.a" "clipLibrary2.cel[0].cev[171].cevr";
connectAttr "animCurveTA493.a" "clipLibrary2.cel[0].cev[172].cevr";
connectAttr "animCurveTA494.a" "clipLibrary2.cel[0].cev[173].cevr";
connectAttr "animCurveTA495.a" "clipLibrary2.cel[0].cev[174].cevr";
connectAttr "animCurveTA496.a" "clipLibrary2.cel[0].cev[175].cevr";
connectAttr "animCurveTA497.a" "clipLibrary2.cel[0].cev[176].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[8].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[13].llnk";
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
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of mrg_dialogue_no.ma
