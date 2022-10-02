//Maya ASCII 4.0 scene
//Name: mrg_dialogue_shake_hand_in_air.ma
//Last modified: Fri, Feb 21, 2003 12:52:48 PM
requires maya "4.0";
requires "p3dSimpleShader" "18.8";
requires "p3dmayaexp" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_dialogue_shake_hand_in_airSource";
	setAttr ".ihi" 0;
	setAttr ".st" 1;
	setAttr ".du" 45;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 16 1 36 1 46 1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "mrg_Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 -0.079815982092630827;
createNode animCurveTL -n "mrg_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0;
createNode animCurveTL -n "mrg_Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0;
createNode animCurveTA -n "mrg_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0;
createNode animCurveTU -n "animCurveTU33";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "animCurveTU34";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "animCurveTU35";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "animCurveTU36";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "animCurveTU37";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "animCurveTU38";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  29 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  29 0;
createNode animCurveTA -n "animCurveTA371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "mrg_Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 -0.17655026201706334;
createNode animCurveTL -n "mrg_Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0.10676264329452093;
createNode animCurveTL -n "mrg_Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 -0.073147264740539078;
createNode animCurveTA -n "mrg_Right_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0;
createNode animCurveTA -n "mrg_Right_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 -25.948901905116401;
createNode animCurveTA -n "mrg_Right_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0;
createNode animCurveTL -n "mrg_Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0.072059567379697237;
createNode animCurveTL -n "mrg_Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0.10860528941614173;
createNode animCurveTL -n "mrg_Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0.00088390886240813306;
createNode animCurveTA -n "mrg_Left_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0;
createNode animCurveTA -n "mrg_Left_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0;
createNode animCurveTA -n "mrg_Left_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0;
createNode animCurveTA -n "animCurveTA380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "mrg_Right_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0;
createNode animCurveTA -n "mrg_Right_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0;
createNode animCurveTA -n "mrg_Right_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0;
createNode animCurveTA -n "mrg_Left_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0;
createNode animCurveTA -n "mrg_Left_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0;
createNode animCurveTA -n "mrg_Left_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0;
createNode animCurveTL -n "animCurveTL138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 16 1 36 1 46 1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 16 1 36 1 46 1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "mrg_Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 -0.097247464600251146;
createNode animCurveTL -n "mrg_Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0.9825577053607899;
createNode animCurveTL -n "mrg_Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0;
createNode animCurveTA -n "mrg_Character_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 -0.62843630316474508;
createNode animCurveTA -n "mrg_Character_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 -5.8284402688137158;
createNode animCurveTA -n "mrg_Character_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 -1.2956360193097458;
createNode animCurveTA -n "animCurveTA395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -0.13579469320884366 9 -0.38249215960212501 
		16 -0.23259290396352655 36 -0.23259290396352655 41 -0.40287272581230221 46 
		-0.13579469320884366;
	setAttr -s 6 ".kit[2:5]"  1 1 9 9;
	setAttr -s 6 ".kot[2:5]"  1 1 9 9;
	setAttr -s 6 ".kix[2:5]"  0.99880242347717285 0.99989473819732666 
		0.034415498375892639 0.0062402514740824699;
	setAttr -s 6 ".kiy[2:5]"  0.048925582319498062 -0.014508568681776524 
		0.99940758943557739 0.99998050928115845;
	setAttr -s 6 ".kox[2:5]"  0.99880242347717285 0.99989473819732666 
		0.034415498375892639 0.0062402514740824699;
	setAttr -s 6 ".koy[2:5]"  0.048925582319498062 -0.014508573338389397 
		0.99940758943557739 0.99998050928115845;
createNode animCurveTL -n "animCurveTL148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -0.97398737733584617 9 -0.20092112366352941 
		16 -0.0023843290855240324 36 -0.0023843290855240324 41 -0.34760569922469908 
		46 -0.97398737733584617;
	setAttr -s 6 ".kit[2:5]"  1 1 9 9;
	setAttr -s 6 ".kot[2:5]"  1 1 9 9;
	setAttr -s 6 ".kix[2:5]"  0.14819827675819397 0.065752580761909485 
		0.0034307360183447599 0.0026607748586684465;
	setAttr -s 6 ".kiy[2:5]"  0.98895764350891113 -0.99783593416213989 
		-0.99999409914016724 -0.99999648332595825;
	setAttr -s 6 ".kox[2:5]"  0.14819830656051636 0.065752491354942322 
		0.0034307360183447599 0.0026607748586684465;
	setAttr -s 6 ".koy[2:5]"  0.98895764350891113 -0.99783593416213989 
		-0.99999409914016724 -0.99999648332595825;
createNode animCurveTL -n "animCurveTL149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0.038362195289875119 9 0.47804598685587457 
		16 0.68701156465143898 36 0.68701156465143898 41 0.44264327592997438 46 0.038362195289875119;
	setAttr -s 6 ".kit[2:5]"  1 1 9 9;
	setAttr -s 6 ".kot[0:5]"  1 9 1 1 9 9;
	setAttr -s 6 ".kix[2:5]"  0.1523873507976532 0.080582708120346069 
		0.00513881491497159 0.0041225091554224491;
	setAttr -s 6 ".kiy[2:5]"  0.98832082748413086 -0.99674791097640991 
		-0.99998676776885986 -0.99999147653579712;
	setAttr -s 6 ".kox[0:5]"  0.006064852699637413 0.007708095945417881 
		0.15238702297210693 0.080582790076732635 0.00513881491497159 0.0041225091554224491;
	setAttr -s 6 ".koy[0:5]"  0.9999815821647644 0.99997031688690186 
		0.98832088708877563 -0.99674791097640991 -0.99998676776885986 -0.99999147653579712;
createNode animCurveTA -n "animCurveTA421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 6.7230119492284173 9 43.822176234493575 
		16 126.145552556916 23 109.71911542992481 28 121.53071522463705 36 126.145552556916 
		41 0.52536946078853097 46 6.7230119492284173;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kox[0:7]"  0.38080835342407227 0.2332688570022583 
		0.37598353624343872 0.98032337427139282 0.83399355411529541 0.20099511742591858 
		0.15791782736778259 0.8388206958770752;
	setAttr -s 8 ".koy[0:7]"  0.92465400695800781 0.97241228818893433 
		0.92662632465362549 -0.19739818572998047 0.55177414417266846 -0.97959226369857788 
		-0.98745226860046387 0.54440778493881226;
createNode animCurveTA -n "animCurveTA422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 19.839511008631867 9 76.851016630409404 
		16 57.459146442469084 23 36.428970284485267 28 22.26820643607714 36 57.459146442469084 
		41 77.968219864526603 46 19.839511008631867;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kox[0:7]"  0.25886151194572449 0.60584664344787598 
		0.55169683694839478 0.54572802782058716 0.76305699348449707 0.40713247656822205 
		0.45268091559410095 0.16210563480854034;
	setAttr -s 8 ".koy[0:7]"  0.96591442823410034 0.79558145999908447 
		-0.83404475450515747 -0.83796238899230957 0.64633125066757202 0.91336911916732788 
		-0.89167255163192749 -0.98677343130111694;
createNode animCurveTA -n "animCurveTA423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 76.90743997913691 9 164.82647984066116 
		16 290.70440566934116 23 277.11465612009783 28 296.61591560314014 36 290.70440566934116 
		41 117.34839241190519 46 76.90743997913691;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kox[0:7]"  0.17121723294258118 0.13280878961086273 
		0.23164308071136475 0.96830689907073975 0.87719494104385376 0.1371883749961853 
		0.088976211845874786 0.22980950772762299;
	setAttr -s 8 ".koy[0:7]"  0.98523330688476563 0.991141676902771 
		0.9728008508682251 0.24976342916488647 0.48013442754745483 -0.99054497480392456 
		-0.99603372812271118 -0.9732356071472168;
createNode animCurveTL -n "animCurveTL150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0.14200366262674424 16 0.30600075590160719 
		36 0.29819624690977387 46 0.14200366262674424;
createNode animCurveTL -n "animCurveTL151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -0.98201773225027522 16 -0.90216612312498912 
		36 -0.89148184969502997 46 -0.98201773225027522;
createNode animCurveTL -n "animCurveTL152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0.039090266953598463 16 0.027084338176599752 
		36 -0.20453871919466701 46 0.039090266953598463;
createNode animCurveTA -n "animCurveTA424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 8.1910546202722809 16 -6.5238445378385457 
		36 -19.952210335874764 46 8.1910546202722809;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.88951879739761353 0.9216454029083252 
		0.96856749057769775 0.56152909994125366;
	setAttr -s 4 ".koy[0:3]"  -0.45689857006072998 -0.38803324103355408 
		0.24875085055828094 0.82745695114135742;
createNode animCurveTA -n "animCurveTA425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -16.680769289981995 16 -21.92124677993225 
		36 -16.179797558975608 46 -16.680769289981995;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.98367732763290405 0.99997192621231079 
		0.99584329128265381 0.99965614080429077;
	setAttr -s 4 ".koy[0:3]"  -0.179941326379776 0.0074943089857697487 
		0.091083399951457977 -0.026221802458167076;
createNode animCurveTA -n "animCurveTA426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -64.609749241846473 16 -65.194717045849245 
		36 -82.615713282129605 46 -64.609749241846473;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.99979162216186523 0.96558237075805664 
		0.99994790554046631 0.72761374711990356;
	setAttr -s 4 ".koy[0:3]"  -0.020414972677826881 -0.26009756326675415 
		0.010209082625806332 0.68598705530166626;
createNode animCurveTL -n "animCurveTL153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -0.8448236677023373 16 -0.8448236677023373 
		36 -0.8448236677023373 46 -0.8448236677023373;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1.5117481219250299 16 1.5117481219250299 
		36 1.5117481219250299 46 1.5117481219250299;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -0.097994651149805143 16 -0.097994651149805143 
		36 -0.097994651149805143 46 -0.097994651149805143;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 5.4739599453216474 16 5.4739599453216474 
		36 5.4739599453216474 46 5.4739599453216474;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 8.5874521608419823 16 8.5874521608419823 
		36 8.5874521608419823 46 8.5874521608419823;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 74.754744621954103 16 74.754744621954103 
		36 74.754744621954103 46 74.754744621954103;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0.61083301393139333 16 0.61083301393139333 
		36 0.61083301393139333 46 0.61083301393139333;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1.4644416293758407 16 1.4644416293758407 
		36 1.4644416293758407 46 1.4644416293758407;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0.14314299916678522 16 0.14314299916678522 
		36 0.14314299916678522 46 0.14314299916678522;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 16.226511010665405 16 16.226511010665405 
		36 16.226511010665405 46 16.226511010665405;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -8.513966085499284 16 -8.513966085499284 
		36 -8.513966085499284 46 -8.513966085499284;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -68.213989601412422 16 -68.213989601412422 
		36 -68.213989601412422 46 -68.213989601412422;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -1 16 -1 36 -1 46 -1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -0.10167917362943303 16 -0.090817195639074436 
		36 -0.090817195639074436 46 -0.10167917362943303;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.41814649105072021 0.73189681768417358 
		0.67731255292892456 0.2933771014213562;
	setAttr -s 4 ".koy[0:3]"  0.90837961435317993 0.68141549825668335 
		-0.73569542169570923 -0.9559968113899231;
createNode animCurveTL -n "animCurveTL163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -0.40762644910266188 16 -0.40762644910266188 
		36 -0.40762644910266188 46 -0.40762644910266188;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -0.93129112588482243 16 0.22742854486588568 
		36 0.22742854486588568 46 -0.93129112588482243;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.0043150675483047962 0.010068073868751526 
		0.008629893884062767 0.0028767264448106289;
	setAttr -s 4 ".koy[0:3]"  0.99999070167541504 0.99994933605194092 
		-0.99996274709701538 -0.9999958872795105;
createNode animCurveTA -n "animCurveTA433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 12.253734489678925 16 12.253734489678925 
		36 12.253734489678925 46 12.253734489678925;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -65.746751280844961 16 -65.746751280844961 
		36 -65.746751280844961 46 -65.746751280844961;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA435";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 3.871449260799477e-015 16 0 36 
		0 46 3.871449260799477e-015;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA436";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -0.061808866237337522 16 -0.061808866237337522 
		36 -0.061808866237337522 46 -0.061808866237337522;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA437";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -59.058178941076754 16 -59.058178941076754 
		36 -59.058178941076754 46 -59.058178941076754;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA438";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 16.579147429757843 16 16.579147429757843 
		36 16.579147429757843 46 16.579147429757843;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA439";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 8.5572674112203622 16 8.5572674112203622 
		36 8.5572674112203622 46 8.5572674112203622;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 15.711328223519057 16 15.711328223519057 
		36 15.711328223519057 46 15.711328223519057;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 10.423754966968488 16 10.423754966968488 
		36 10.423754966968488 46 10.423754966968488;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 27.722848255843903 16 27.722848255843903 
		36 27.722848255843903 46 27.722848255843903;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 21.576484776388227 16 21.576484776388227 
		36 21.576484776388227 46 21.576484776388227;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 27.080064458283051 16 27.080064458283051 
		36 27.080064458283051 46 27.080064458283051;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA453";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA457";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 13.994403295754109 16 13.994403295754109 
		36 13.994403295754109 46 13.994403295754109;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 13.994403295754109 16 13.994403295754109 
		36 13.994403295754109 46 13.994403295754109;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 27.911632519594587 16 27.911632519594587 
		36 27.911632519594587 46 27.911632519594587;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 7.8367624814728458 36 7.8367624814728458 
		46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.96456098556518555 0.99319767951965332 
		0.99077522754669189 0.92514407634735107;
	setAttr -s 4 ".koy[0:3]"  0.26386010646820068 0.11644020676612854 
		-0.13551557064056396 -0.37961617112159729;
createNode animCurveTA -n "animCurveTA470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 -7.1364420085202518 36 -7.1364420085202518 
		46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  0.97034561634063721 0.99434930086135864 
		0.99233222007751465 0.9367402195930481;
	setAttr -s 4 ".koy[0:3]"  -0.24172165989875793 -0.10615765303373337 
		0.1235993504524231 0.35002538561820984;
createNode animCurveTA -n "animCurveTA471";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 16 0 24 5.2045193599677058 
		36 0 46 0;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  1 0.9930540919303894 1 0.99241560697555542 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0.11765877902507782 0 -0.12292781472206116 
		0;
createNode animCurveTA -n "animCurveTA472";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 16 3.3792935691640498 24 -2.5509457232114445 
		36 3.3792935691640498 46 0;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  0.99311453104019165 0.99831801652908325 
		1 0.99816209077835083 0.98470443487167358;
	setAttr -s 5 ".koy[0:4]"  0.11714739352464676 -0.057975020259618759 
		0 0.060600783675909042 -0.17423301935195923;
createNode animCurveTA -n "animCurveTA473";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 16 0 24 -0.82826153002993641 
		36 0 46 0;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kox[0:4]"  1 0.99982225894927979 1 0.999805748462677 
		1;
	setAttr -s 5 ".koy[0:4]"  0 -0.018852159380912781 0 0.019708748906850815 
		0;
createNode animCurveTA -n "animCurveTA474";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -4.9367554394300077 16 -4.9367554394300077 
		36 -4.9367554394300077 46 -4.9367554394300077;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA475";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -8.6986303327609935 16 -8.6986303327609935 
		36 -8.6986303327609935 46 -8.6986303327609935;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA476";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 17.455917002855632 16 17.455917002855632 
		36 17.455917002855632 46 17.455917002855632;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA477";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA478";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA479";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA480";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA481";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA482";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 33.429092416277157 16 33.429092416277157 
		36 33.429092416277157 46 33.429092416277157;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA483";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 8.2533422302317216 16 8.2533422302317216 
		36 8.2533422302317216 46 8.2533422302317216;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA484";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 23.263402056531085 16 23.263402056531085 
		36 23.263402056531085 46 23.263402056531085;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA485";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 20.166277752815617 16 20.166277752815617 
		36 20.166277752815617 46 20.166277752815617;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA486";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA487";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 16 0 36 0 46 0;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA488";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 17.254116939558369 16 17.254116939558369 
		36 17.254116939558369 46 17.254116939558369;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "mrg_hair_1_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0;
createNode animCurveTA -n "mrg_hair_1_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0;
createNode animCurveTA -n "mrg_hair_1_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0;
createNode animCurveTA -n "mrg_hair_2_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0;
createNode animCurveTA -n "mrg_hair_2_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0;
createNode animCurveTA -n "mrg_hair_2_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0;
createNode animCurveTA -n "mrg_hair_3_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0;
createNode animCurveTA -n "mrg_hair_3_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0;
createNode animCurveTA -n "mrg_hair_3_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  46 0;
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
	setAttr ".o" 29;
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
connectAttr "mrg_dialogue_shake_hand_in_airSource.st" "clipLibrary2.st[0]"
		;
connectAttr "mrg_dialogue_shake_hand_in_airSource.du" "clipLibrary2.du[0]"
		;
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
connectAttr "mrg_Right_Toe_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[38].cevr"
		;
connectAttr "mrg_Right_Toe_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[39].cevr"
		;
connectAttr "mrg_Right_Toe_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[40].cevr"
		;
connectAttr "mrg_Left_Toe_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[41].cevr"
		;
connectAttr "mrg_Left_Toe_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[42].cevr"
		;
connectAttr "mrg_Left_Toe_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[43].cevr"
		;
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
connectAttr "animCurveTL153.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL154.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL155.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA427.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA428.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA429.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL156.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL157.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL158.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTA430.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTA431.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTA432.a" "clipLibrary2.cel[0].cev[105].cevr";
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
connectAttr "animCurveTA477.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA478.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA479.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA480.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA481.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA482.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA483.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA484.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA485.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA486.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA487.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA488.a" "clipLibrary2.cel[0].cev[167].cevr";
connectAttr "mrg_hair_1_rotateX.a" "clipLibrary2.cel[0].cev[168].cevr";
connectAttr "mrg_hair_1_rotateY.a" "clipLibrary2.cel[0].cev[169].cevr";
connectAttr "mrg_hair_1_rotateZ.a" "clipLibrary2.cel[0].cev[170].cevr";
connectAttr "mrg_hair_2_rotateX.a" "clipLibrary2.cel[0].cev[171].cevr";
connectAttr "mrg_hair_2_rotateY.a" "clipLibrary2.cel[0].cev[172].cevr";
connectAttr "mrg_hair_2_rotateZ.a" "clipLibrary2.cel[0].cev[173].cevr";
connectAttr "mrg_hair_3_rotateX.a" "clipLibrary2.cel[0].cev[174].cevr";
connectAttr "mrg_hair_3_rotateY.a" "clipLibrary2.cel[0].cev[175].cevr";
connectAttr "mrg_hair_3_rotateZ.a" "clipLibrary2.cel[0].cev[176].cevr";
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
// End of mrg_dialogue_shake_hand_in_air.ma
