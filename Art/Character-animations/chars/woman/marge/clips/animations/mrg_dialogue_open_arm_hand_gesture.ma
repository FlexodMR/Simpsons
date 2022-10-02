//Maya ASCII 4.0 scene
//Name: mrg_dialogue_open_arm_hand_gesture.ma
//Last modified: Fri, Feb 21, 2003 12:52:28 PM
requires maya "4.0";
requires "p3dSimpleShader" "18.8";
requires "p3dmayaexp" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_dialogue_open_arm_hand_gestureSource";
	setAttr ".ihi" 0;
	setAttr ".st" 1;
	setAttr ".du" 62;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 1 18 1 39 1 49 1 63 0;
createNode animCurveTL -n "animCurveTL125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTL -n "mrg_Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -0.079815982092630827 63 -0.079815982092630827;
createNode animCurveTL -n "mrg_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 63 0;
createNode animCurveTL -n "mrg_Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 63 0;
createNode animCurveTA -n "mrg_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 63 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  35 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  35 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  35 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  35 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  35 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  35 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  35 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  35 0;
createNode animCurveTA -n "animCurveTA371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTL -n "animCurveTL129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTL -n "animCurveTL130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTL -n "animCurveTL131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTL -n "mrg_Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -0.17655026201706334 63 -0.17655026201706334;
createNode animCurveTL -n "mrg_Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.10676264329452093 63 0.10676264329452093;
createNode animCurveTL -n "mrg_Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -0.073147264740539078 63 -0.073147264740539078;
createNode animCurveTA -n "mrg_Right_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 63 0;
createNode animCurveTA -n "mrg_Right_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -25.948901905116401 63 -25.948901905116401;
createNode animCurveTA -n "mrg_Right_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 63 0;
createNode animCurveTL -n "mrg_Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.072059567379697237 63 0.072059567379697237;
createNode animCurveTL -n "mrg_Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.10860528941614173 63 0.10860528941614173;
createNode animCurveTL -n "mrg_Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.00088390886240813306 63 0.00088390886240813306;
createNode animCurveTA -n "mrg_Left_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 63 0;
createNode animCurveTA -n "mrg_Left_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 63 0;
createNode animCurveTA -n "mrg_Left_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 63 0;
createNode animCurveTA -n "animCurveTA380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 63 0;
createNode animCurveTA -n "animCurveTA387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 63 0;
createNode animCurveTA -n "animCurveTA388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 63 0;
createNode animCurveTA -n "animCurveTA389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 63 0;
createNode animCurveTA -n "animCurveTA390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 63 0;
createNode animCurveTA -n "animCurveTA391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 63 0;
createNode animCurveTL -n "animCurveTL138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTL -n "animCurveTL139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTL -n "animCurveTL140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1.1269999742507935 10 1 18 1 
		39 1 49 1 63 1.1269999742507935;
createNode animCurveTL -n "animCurveTL141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTL -n "animCurveTL142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTL -n "animCurveTL143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1.1269999742507935 10 1 18 1 
		39 1 49 1 63 1.1269999742507935;
createNode animCurveTL -n "animCurveTL144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -0.097247464600251146 10 -0.093972843235057377 
		18 -0.093972843235057377 39 -0.093972843235057377 49 -0.093972843235057377 
		63 -0.097247464600251146;
createNode animCurveTL -n "animCurveTL145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0.9825577053607899 10 0.98389986873157176 
		18 0.98389986873157176 39 0.98389986873157176 49 0.98389986873157176 63 0.9825577053607899;
createNode animCurveTL -n "animCurveTL146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -0.62843630316474508 10 0 18 
		0 39 0 49 0 63 -0.62843630316474508;
createNode animCurveTA -n "animCurveTA393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -5.8284402688137158 10 0 18 0 
		39 0 49 0 63 -5.8284402688137158;
createNode animCurveTA -n "animCurveTA394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -1.2956360193097458 10 0 18 0 
		39 0 49 0 63 -1.2956360193097458;
createNode animCurveTA -n "animCurveTA395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTL -n "animCurveTL147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -0.11752742512224019 10 -0.44759057328294871 
		18 -0.29288341836214238 39 -0.29288341836214238 49 -0.28012667244268596 56 
		-0.34134079147945867 63 -0.11752742512224019;
createNode animCurveTL -n "animCurveTL148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -0.9753361556575969 10 -0.27018311330701772 
		18 0.097530446623879788 39 0.097530446623879788 49 -0.029271546535677605 
		56 -0.4791497836862198 63 -0.9753361556575969;
	setAttr -s 7 ".kit[4:6]"  1 9 9;
	setAttr -s 7 ".kot[4:6]"  1 9 9;
	setAttr -s 7 ".kix[4:6]"  0.012250012718141079 0.0049326545558869839 
		0.0047024805098772049;
	setAttr -s 7 ".kiy[4:6]"  -0.99992495775222778 -0.99998784065246582 
		-0.99998891353607178;
	setAttr -s 7 ".kox[4:6]"  0.012249985709786415 0.0049326545558869839 
		0.0047024805098772049;
	setAttr -s 7 ".koy[4:6]"  -0.99992495775222778 -0.99998784065246582 
		-0.99998891353607178;
createNode animCurveTL -n "animCurveTL149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -0.10349137760817412 10 0.27370585695230654 
		18 0.5020375266269328 39 0.5020375266269328 49 0.43276190512367174 56 0.28819429327967178 
		63 -0.10349137760817412;
createNode animCurveTA -n "animCurveTA421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 2.4659783562297117 10 19.767828484813627 
		18 115.72574109075084 39 115.72574109075084 49 103.02851862590957 56 -149.17428217621193 
		63 2.4659783562297117;
	setAttr -s 7 ".kit[2:6]"  1 9 1 9 9;
	setAttr -s 7 ".kot[2:6]"  1 9 1 9 9;
	setAttr -s 7 ".kix[2:6]"  0.80393832921981812 0.97776752710342407 
		0.67888998985290527 0.25695696473121643 0.087822027504444122;
	setAttr -s 7 ".kiy[2:6]"  0.59471267461776733 -0.20969171822071075 
		-0.73423999547958374 -0.96642285585403442 0.99613618850708008;
	setAttr -s 7 ".kox[2:6]"  0.80393826961517334 0.97776752710342407 
		0.67889004945755005 0.25695696473121643 0.087822027504444122;
	setAttr -s 7 ".koy[2:6]"  0.59471273422241211 -0.20969171822071075 
		-0.73423999547958374 -0.96642285585403442 0.99613618850708008;
createNode animCurveTA -n "animCurveTA422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 8.1281165662061259 10 114.43280795973045 
		18 12.444138994439063 39 12.444138994439063 49 16.087193449548487 56 63.10315428436445 
		63 8.1281165662061259;
	setAttr -s 7 ".kit[2:6]"  1 1 9 9 9;
	setAttr -s 7 ".kot[2:6]"  1 1 9 9 9;
	setAttr -s 7 ".kix[2:6]"  0.93406850099563599 0.97133386135101318 
		0.53959405422210693 0.95843905210494995 0.23629657924175262;
	setAttr -s 7 ".kiy[2:6]"  -0.3570939302444458 0.23771950602531433 
		0.84192532300949097 -0.28529739379882813 -0.97168099880218506;
	setAttr -s 7 ".kox[2:6]"  0.93406844139099121 0.97133386135101318 
		0.53959405422210693 0.95843905210494995 0.23629657924175262;
	setAttr -s 7 ".koy[2:6]"  -0.35709404945373535 0.23771955072879791 
		0.84192532300949097 -0.28529739379882813 -0.97168099880218506;
createNode animCurveTA -n "animCurveTA423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 74.983843405651342 10 165.97193835658146 
		18 288.41736731906326 39 288.41736731906326 49 253.73363326021624 56 -62.827595649381578 
		63 74.983843405651342;
	setAttr -s 7 ".kit[2:6]"  1 9 1 9 9;
	setAttr -s 7 ".kot[2:6]"  1 9 1 9 9;
	setAttr -s 7 ".kix[2:6]"  0.83413600921630859 0.86284428834915161 
		0.29926633834838867 0.14793765544891357 0.0965561643242836;
	setAttr -s 7 ".kiy[2:6]"  0.55155879259109497 -0.50546979904174805 
		-0.9541696310043335 -0.98899668455123901 0.99532753229141235;
	setAttr -s 7 ".kox[2:6]"  0.83413606882095337 0.86284428834915161 
		0.29926630854606628 0.14793765544891357 0.0965561643242836;
	setAttr -s 7 ".koy[2:6]"  0.55155867338180542 -0.50546979904174805 
		-0.9541696310043335 -0.98899668455123901 0.99532753229141235;
createNode animCurveTL -n "animCurveTL150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0.13111126443439663 10 0.30460150635680516 
		18 0.27863609900863406 39 0.27863609900863406 49 0.26995570514581108 56 0.22492567910267114 
		63 0.13111126443439663;
	setAttr -s 7 ".kit[2:6]"  1 9 9 9 9;
	setAttr -s 7 ".kot[2:6]"  1 9 9 9 9;
	setAttr -s 7 ".kix[2:6]"  0.5595209002494812 0.76569050550460815 
		0.10492171347141266 0.03359178826212883 0.024864103645086288;
	setAttr -s 7 ".kiy[2:6]"  -0.82881623506546021 -0.64320921897888184 
		-0.99448049068450928 -0.9994356632232666 -0.99969083070755005;
	setAttr -s 7 ".kox[2:6]"  0.55952107906341553 0.76569050550460815 
		0.10492171347141266 0.03359178826212883 0.024864103645086288;
	setAttr -s 7 ".koy[2:6]"  -0.82881611585617065 -0.64320921897888184 
		-0.99448049068450928 -0.9994356632232666 -0.99969083070755005;
createNode animCurveTL -n "animCurveTL151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -0.97935944554139787 10 -0.34877625535961559 
		18 0.14892098276952426 39 0.14892098276952426 49 -0.042623361060607552 56 
		-0.39318184183997668 63 -0.97935944554139787;
createNode animCurveTL -n "animCurveTL152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -0.037138306042295004 10 0.27745506372828727 
		18 0.59382053079046104 39 0.59382053079046104 49 0.5045033801873523 56 0.1638756927253803 
		63 -0.037138306042295004;
createNode animCurveTA -n "animCurveTA424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 6.7982929469764954 10 153.18034714307666 
		18 136.0326435689542 39 136.0326435689542 49 119.31944106009051 56 12.728095979983685 
		63 6.7982929469764954;
createNode animCurveTA -n "animCurveTA425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -8.7076625931425351 10 -62.489533222967268 
		18 -5.0291652199186379 39 -5.0291652199186379 49.12 -7.583750825687428 56 
		-114.41716656269958 63 -8.7076625931425351;
createNode animCurveTA -n "animCurveTA426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -61.928743091167576 10 -276.35648395007837 
		18 -284.28834353897287 39 -284.28834353897287 49 -265.87646264850548 56 -103.83306200785566 
		63 -61.928743091167576;
	setAttr -s 7 ".kit[4:6]"  1 9 9;
	setAttr -s 7 ".kot[4:6]"  1 9 9;
	setAttr -s 7 ".kix[4:6]"  0.42175164818763733 0.12999001145362854 
		0.30394303798675537;
	setAttr -s 7 ".kiy[4:6]"  0.9067113995552063 0.99151527881622314 
		0.95269018411636353;
	setAttr -s 7 ".kox[4:6]"  0.42175167798995972 0.12999001145362854 
		0.30394303798675537;
	setAttr -s 7 ".koy[4:6]"  0.9067113995552063 0.99151527881622314 
		0.95269018411636353;
createNode animCurveTL -n "animCurveTL153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -0.65311611999272123 10 -0.8448236677023373 
		18 -0.8448236677023373 39 -0.8448236677023373 49 -0.8448236677023373 63 -0.65311611999272123;
createNode animCurveTL -n "animCurveTL154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 2.222264083594911 10 1.5117481219250299 
		18 1.5117481219250299 39 1.5117481219250299 49 1.5117481219250299 63 2.222264083594911;
createNode animCurveTL -n "animCurveTL155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -0.097994651149805143 10 -0.097994651149805143 
		18 -0.097994651149805143 39 -0.097994651149805143 49 -0.097994651149805143 
		63 -0.097994651149805143;
createNode animCurveTA -n "animCurveTA427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 5.4739599453216474 10 5.4739599453216474 
		18 5.4739599453216474 39 5.4739599453216474 49 5.4739599453216474 63 5.4739599453216474;
createNode animCurveTA -n "animCurveTA428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 8.5874521608419823 10 8.5874521608419823 
		18 8.5874521608419823 39 8.5874521608419823 49 8.5874521608419823 63 8.5874521608419823;
createNode animCurveTA -n "animCurveTA429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 74.754744621954103 10 74.754744621954103 
		18 74.754744621954103 39 74.754744621954103 49 74.754744621954103 63 74.754744621954103;
createNode animCurveTL -n "animCurveTL156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0.25368378509166484 10 0.61083301393139333 
		18 0.61083301393139333 39 0.61083301393139333 49 0.61083301393139333 63 0.25368378509166484;
createNode animCurveTL -n "animCurveTL157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 2.2026421011163611 10 1.4644416293758407 
		18 1.4644416293758407 39 1.4644416293758407 49 1.4644416293758407 63 2.2026421011163611;
createNode animCurveTL -n "animCurveTL158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0.0085295933619701936 10 0.14314299916678522 
		18 0.14314299916678522 39 0.14314299916678522 49 0.14314299916678522 63 0.0085295933619701936;
createNode animCurveTA -n "animCurveTA430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 16.226511010665405 10 16.226511010665405 
		18 16.226511010665405 39 16.226511010665405 49 16.226511010665405 63 16.226511010665405;
createNode animCurveTA -n "animCurveTA431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -8.513966085499284 10 -8.513966085499284 
		18 -8.513966085499284 39 -8.513966085499284 49 -8.513966085499284 63 -8.513966085499284;
createNode animCurveTA -n "animCurveTA432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -68.213989601412422 10 -68.213989601412422 
		18 -68.213989601412422 39 -68.213989601412422 49 -68.213989601412422 63 -68.213989601412422;
createNode animCurveTL -n "animCurveTL159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -0.245189189189189 10 0.26580543765542464 
		18 -0.13593135904558537 39 -0.13593135904558537 49 -0.13593135904558537 56 
		0.28045147945985588 63 -0.245189189189189;
createNode animCurveTL -n "animCurveTL160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 10 -0.55982617194351314 18 
		-0.87523452213708852 39 -0.87523452213708852 49 -0.87523452213708852 56 -0.48076369251786438 
		63 0;
createNode animCurveTL -n "animCurveTL161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -1 10 -0.38399732298805445 18 
		-0.020136204646250745 39 -0.020136204646250745 49 -0.020136204646250745 56 
		-0.47106042546308857 63 -1;
createNode animCurveTL -n "animCurveTL162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0.062337280601809833 10 -0.12847359769164618 
		18 0.10993378672185154 39 0.10993378672185154 49 0.10993378672185154 56 -0.26343904011548203 
		63 0.062337280601809833;
createNode animCurveTL -n "animCurveTL163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -0.40762644910266188 10 -0.40902788383170702 
		18 -0.40778078019695929 39 -0.40778078019695929 49 -0.40778078019695929 56 
		-0.40962276858418556 63 -0.40762644910266188;
createNode animCurveTL -n "animCurveTL164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -0.93129112588482243 10 -0.35519771304159764 
		18 -0.045121326394146122 39 -0.045121326394146122 49 -0.045121326394146122 
		56 -0.43262655701927361 63 -0.93129112588482243;
createNode animCurveTA -n "animCurveTA433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 12.253734489678925 10 12.253734489678925 
		18 12.253734489678925 39 12.253734489678925 49 12.253734489678925 63 12.253734489678925;
createNode animCurveTA -n "animCurveTA434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -65.746751280844961 10 -65.746751280844961 
		18 -65.746751280844961 39 -65.746751280844961 49 -65.746751280844961 63 -65.746751280844961;
createNode animCurveTA -n "animCurveTA435";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 1.1287024083963498e-015 
		18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA436";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -0.061808866237337522 10 -0.061808866237337522 
		18 -0.061808866237337522 39 -0.061808866237337522 49 -0.061808866237337522 
		63 -0.061808866237337522;
createNode animCurveTA -n "animCurveTA437";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -59.058178941076754 10 -59.058178941076754 
		18 -59.058178941076754 39 -59.058178941076754 49 -59.058178941076754 63 -59.058178941076754;
createNode animCurveTA -n "animCurveTA438";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 16.579147429757843 10 16.579147429757843 
		18 16.579147429757843 39 16.579147429757843 49 16.579147429757843 63 16.579147429757843;
createNode animCurveTA -n "animCurveTA439";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 8.5572674112203622 10 8.5572674112203622 
		18 8.5572674112203622 39 8.5572674112203622 49 8.5572674112203622 63 8.5572674112203622;
createNode animCurveTA -n "animCurveTA440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 15.711328223519057 10 15.711328223519057 
		18 15.711328223519057 39 15.711328223519057 49 15.711328223519057 63 15.711328223519057;
createNode animCurveTA -n "animCurveTA441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 10.423754966968488 10 10.423754966968488 
		18 10.423754966968488 39 10.423754966968488 49 10.423754966968488 63 10.423754966968488;
createNode animCurveTA -n "animCurveTA448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 27.722848255843903 10 27.722848255843903 
		18 27.722848255843903 39 27.722848255843903 49 27.722848255843903 63 27.722848255843903;
createNode animCurveTA -n "animCurveTA449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 21.576484776388227 10 21.576484776388227 
		18 21.576484776388227 39 21.576484776388227 49 21.576484776388227 63 21.576484776388227;
createNode animCurveTA -n "animCurveTA450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 -9.9396723943764513 18 0 
		39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 6.8322763972510501 18 0 
		39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 27.080064458283051 10 67.663946177921943 
		18 5.8314657859916599 39 5.8314657859916599 49 5.8314657859916599 63 27.080064458283051;
createNode animCurveTA -n "animCurveTA453";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA457";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 13.994403295754109 10 13.994403295754109 
		18 13.994403295754109 39 13.994403295754109 49 13.994403295754109 63 13.994403295754109;
createNode animCurveTA -n "animCurveTA459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 13.994403295754109 10 13.994403295754109 
		18 13.994403295754109 39 13.994403295754109 49 13.994403295754109 63 13.994403295754109;
createNode animCurveTA -n "animCurveTA462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 -2.3999321806630127 18 -3.1387379339399395 
		39 -3.1387379339399395 49 -3.1387379339399395 63 0;
createNode animCurveTA -n "animCurveTA463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0.15114263497544025 18 -2.0352570978672726 
		39 -2.0352570978672726 49 -2.0352570978672726 63 0;
createNode animCurveTA -n "animCurveTA464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 27.911632519594587 10 55.037107603673149 
		18 13.252712793879082 39 13.252712793879082 49 13.252712793879082 63 27.911632519594587;
createNode animCurveTA -n "animCurveTA465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0.71009266045616004 10 0 18 0 
		39 0 49 0 63 0.71009266045616004;
createNode animCurveTA -n "animCurveTA469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0.39065484564574898 10 5.1586582751770038 
		18 8.0245795212328641 39 8.0245795212328641 49 8.0245795212328641 63 0.39065484564574898;
createNode animCurveTA -n "animCurveTA470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 8.1445984161934586 10 0 18 0 
		39 0 49 0 63 8.1445984161934586;
createNode animCurveTA -n "animCurveTA471";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 10.68313960501006 18 -1.1807509467863606 
		39 -1.1807509467863606 49 -1.1672493633677192 63 0;
createNode animCurveTA -n "animCurveTA472";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 -7.2903614516740589 18 8.6808146576118439 
		39 8.6808146576118439 49 -0.38542978379405041 63 0;
createNode animCurveTA -n "animCurveTA473";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 5.269287715971414 18 -4.717907272577011 
		39 -4.717907272577011 49 -4.5318189550982551 63 0;
createNode animCurveTA -n "animCurveTA474";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -2.0270270270270276 10 -4.9367554394300077 
		18 -4.9367554394300077 39 -4.9367554394300077 49 -4.9367554394300077 63 -2.0270270270270276;
createNode animCurveTA -n "animCurveTA475";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -2.4108692476260054 10 -8.6986303327609935 
		18 -8.6986303327609935 39 -8.6986303327609935 49 -8.6986303327609935 63 -2.4108692476260054;
createNode animCurveTA -n "animCurveTA476";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 13.0432985235726 10 17.455917002855632 
		18 17.455917002855632 39 17.455917002855632 49 17.455917002855632 63 13.0432985235726;
createNode animCurveTA -n "animCurveTA477";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA478";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 -5.4491403441448396 18 -8.4764405587060345 
		39 -8.4764405587060345 49 -8.4764405587060345 63 0;
createNode animCurveTA -n "animCurveTA479";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -10.382821061592262 10 0 18 0 
		39 0 49 0 63 -10.382821061592262;
createNode animCurveTA -n "animCurveTA480";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA481";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA482";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 33.429092416277157 10 76.955850815624842 
		18 26.084448446487318 39 26.084448446487318 49 26.084448446487318 63 33.429092416277157;
createNode animCurveTA -n "animCurveTA483";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 8.2533422302317216 10 8.2533422302317216 
		18 8.2533422302317216 39 8.2533422302317216 49 8.2533422302317216 63 8.2533422302317216;
createNode animCurveTA -n "animCurveTA484";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 23.263402056531085 10 23.263402056531085 
		18 23.263402056531085 39 23.263402056531085 49 23.263402056531085 63 23.263402056531085;
createNode animCurveTA -n "animCurveTA485";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 20.166277752815617 10 20.166277752815617 
		18 20.166277752815617 39 20.166277752815617 49 20.166277752815617 63 20.166277752815617;
createNode animCurveTA -n "animCurveTA486";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA487";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 10 0 18 0 39 0 49 0 63 0;
createNode animCurveTA -n "animCurveTA488";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 17.254116939558369 10 93.891584493868507 
		18 17.574178345566331 39 17.574178345566331 49 17.574178345566331 63 17.254116939558369;
createNode animCurveTA -n "animCurveTA489";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 63 0;
createNode animCurveTA -n "animCurveTA490";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 63 0;
createNode animCurveTA -n "animCurveTA491";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 63 0;
createNode animCurveTA -n "animCurveTA492";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 63 0;
createNode animCurveTA -n "animCurveTA493";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 63 0;
createNode animCurveTA -n "animCurveTA494";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 63 0;
createNode animCurveTA -n "animCurveTA495";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 63 0;
createNode animCurveTA -n "animCurveTA496";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 63 0;
createNode animCurveTA -n "animCurveTA497";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 63 0;
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
	setAttr ".o" 35;
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
connectAttr "mrg_dialogue_open_arm_hand_gestureSource.st" "clipLibrary2.st[0]"
		;
connectAttr "mrg_dialogue_open_arm_hand_gestureSource.du" "clipLibrary2.du[0]"
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
connectAttr "mrg_Hoop_Root_IK_FK_RFoot.a" "clipLibrary2.cel[0].cev[6].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_FK_LFoot.a" "clipLibrary2.cel[0].cev[7].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary2.cel[0].cev[8].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary2.cel[0].cev[9].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_FK_RArm.a" "clipLibrary2.cel[0].cev[10].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_FK_LArm.a" "clipLibrary2.cel[0].cev[11].cevr"
		;
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
connectAttr "animCurveTL144.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL145.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL146.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA392.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA393.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA394.a" "clipLibrary2.cel[0].cev[55].cevr";
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
// End of mrg_dialogue_open_arm_hand_gesture.ma
