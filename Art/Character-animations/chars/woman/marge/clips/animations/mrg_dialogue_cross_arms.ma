//Maya ASCII 4.0 scene
//Name: mrg_dialogue_cross_arms.ma
//Last modified: Fri, Feb 21, 2003 12:51:46 PM
requires maya "4.0";
requires "p3dSimpleShader" "18.8";
requires "p3dmayaexp" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_dialogue_cross_armsSource";
	setAttr ".ihi" 0;
	setAttr ".du" 75;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 1 29 1 58.55 1 75 0;
createNode animCurveTL -n "animCurveTL125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTL -n "mrg_Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -0.079815982092630827 75 -0.079815982092630827;
createNode animCurveTL -n "mrg_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTL -n "mrg_Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTA -n "mrg_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTU -n "animCurveTU33";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU34";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU35";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU36";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU37";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU38";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "mrg_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTA -n "mrg_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTA -n "mrg_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTL -n "mrg_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTL -n "mrg_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTL -n "mrg_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTL -n "mrg_Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -0.17655026201706334 75 -0.17655026201706334;
createNode animCurveTL -n "mrg_Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.10676264329452093 75 0.10676264329452093;
createNode animCurveTL -n "mrg_Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -0.073147264740539078 75 -0.073147264740539078;
createNode animCurveTA -n "mrg_Right_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTA -n "mrg_Right_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -25.948901905116401 75 -25.948901905116401;
createNode animCurveTA -n "mrg_Right_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTL -n "mrg_Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.072059567379697237 75 0.072059567379697237;
createNode animCurveTL -n "mrg_Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.10860528941614173 75 0.10860528941614173;
createNode animCurveTL -n "mrg_Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.00088390886240813306 75 0.00088390886240813306;
createNode animCurveTA -n "mrg_Left_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTA -n "mrg_Left_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTA -n "mrg_Left_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTA -n "animCurveTA380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTA -n "animCurveTA387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTA -n "animCurveTA388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTA -n "animCurveTA389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTA -n "animCurveTA390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTA -n "animCurveTA391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTL -n "animCurveTL138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTL -n "animCurveTL139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTL -n "animCurveTL140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1.1269999742507935 19 1 29 1 
		58.55 1 75 1.1269999742507935;
createNode animCurveTL -n "animCurveTL141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTL -n "animCurveTL142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTL -n "animCurveTL143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1.1269999742507935 19 1 29 1 
		58.55 1 75 1.1269999742507935;
createNode animCurveTL -n "mrg_Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -0.097247464600251146 75 -0.097247464600251146;
createNode animCurveTL -n "mrg_Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.9825577053607899 75 0.9825577053607899;
createNode animCurveTL -n "mrg_Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTA -n "mrg_Character_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -0.62843630316474508 75 -0.62843630316474508;
createNode animCurveTA -n "mrg_Character_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -5.8284402688137158 75 -5.8284402688137158;
createNode animCurveTA -n "mrg_Character_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -1.2956360193097458 75 -1.2956360193097458;
createNode animCurveTA -n "animCurveTA395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTL -n "animCurveTL147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -0.15610405691959128 13 0.2798955759893022 
		19 0.30861078020295352 29 0.30861078020295352 58.55 0.30861078020295352 69 
		-0.12469210812600162 75 -0.15610405691959128;
	setAttr -s 7 ".kit[3:6]"  3 3 9 9;
	setAttr -s 7 ".kot[3:6]"  3 3 9 9;
createNode animCurveTL -n "animCurveTL148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -0.98147999117911211 13 -0.54399753092906356 
		19 -0.22684661727462785 29 -0.22684661727462785 58.55 -0.22684661727462785 
		69 -0.55090300195485564 75 -0.98147999117911211;
	setAttr -s 7 ".kit[4:6]"  1 9 9;
	setAttr -s 7 ".kot[4:6]"  1 9 9;
	setAttr -s 7 ".kix[4:6]"  0.96646064519882202 0.0072660297155380249 
		0.0046448805369436741;
	setAttr -s 7 ".kiy[4:6]"  0.25681471824645996 -0.9999735951423645 
		-0.99998921155929565;
	setAttr -s 7 ".kox[4:6]"  0.96646064519882202 0.0072660297155380249 
		0.0046448805369436741;
	setAttr -s 7 ".koy[4:6]"  0.25681483745574951 -0.9999735951423645 
		-0.99998921155929565;
createNode animCurveTL -n "animCurveTL149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -0.059471318952037146 13 0.62473943387091047 
		19 0.47583842480344163 29 0.47583842480344163 58.55 0.47583842480344163 69 
		0.53448591138767676 75 -0.059471318952037146;
	setAttr -s 7 ".kit[4:6]"  1 9 9;
	setAttr -s 7 ".kot[4:6]"  1 9 9;
	setAttr -s 7 ".kix[4:6]"  0.53722620010375977 0.01024275366216898 
		0.0033672270365059376;
	setAttr -s 7 ".kiy[4:6]"  -0.84343820810317993 -0.99994754791259766 
		-0.99999433755874634;
	setAttr -s 7 ".kox[4:6]"  0.53722620010375977 0.01024275366216898 
		0.0033672270365059376;
	setAttr -s 7 ".koy[4:6]"  -0.84343820810317993 -0.99994754791259766 
		-0.99999433755874634;
createNode animCurveTA -n "animCurveTA421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 20.004936402922805 13 157.94858166048363 
		19 124.4891718582802 29 124.4891718582802 58.55 124.4891718582802 69 62.500228882349951 
		75 20.004936402922805;
	setAttr -s 7 ".kit[2:6]"  1 9 1 9 9;
	setAttr -s 7 ".kot[2:6]"  1 9 1 9 9;
	setAttr -s 7 ".kix[2:6]"  0.92355364561080933 1 0.97701698541641235 
		0.28795254230499268 0.26035726070404053;
	setAttr -s 7 ".kiy[2:6]"  -0.38346922397613525 0 -0.21316136419773102 
		-0.95764470100402832 -0.96551233530044556;
	setAttr -s 7 ".kox[2:6]"  0.92355358600616455 1 0.97701698541641235 
		0.28795254230499268 0.26035726070404053;
	setAttr -s 7 ".koy[2:6]"  -0.38346943259239197 0 -0.21316143870353699 
		-0.95764470100402832 -0.96551233530044556;
createNode animCurveTA -n "animCurveTA422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 6.1162214974929121 13 74.2234434721356 
		19 -14.472289965367391 29 -14.472289965367391 58.55 -14.472289965367391 69 
		52.652538344122405 75 6.1162214974929121;
	setAttr -s 7 ".kit[2:6]"  1 9 1 9 9;
	setAttr -s 7 ".kot[2:6]"  1 9 1 9 9;
	setAttr -s 7 ".kix[2:6]"  0.98923379182815552 1 0.99977695941925049 
		0.83640205860137939 0.23909899592399597;
	setAttr -s 7 ".kiy[2:6]"  -0.14634372293949127 0 0.021120635792613029 
		0.54811638593673706 -0.97099518775939941;
	setAttr -s 7 ".kox[2:6]"  0.98923385143280029 1 0.99977695941925049 
		0.83640205860137939 0.23909899592399597;
	setAttr -s 7 ".koy[2:6]"  -0.14634343981742859 0 0.021120697259902954 
		0.54811638593673706 -0.97099518775939941;
createNode animCurveTA -n "animCurveTA423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 72.162989675955245 13 236.09492726268138 
		19 203.65715763448463 29 203.65715763448463 58.55 203.65715763448463 69 122.87232646706532 
		75 72.162989675955245;
	setAttr -s 7 ".kit[2:6]"  1 9 1 9 9;
	setAttr -s 7 ".kot[2:6]"  1 9 1 9 9;
	setAttr -s 7 ".kix[2:6]"  0.98620307445526123 1 0.98612576723098755 
		0.23238380253314972 0.22041939198970795;
	setAttr -s 7 ".kiy[2:6]"  -0.16553986072540283 0 -0.16599993407726288 
		-0.97262418270111084 -0.97540521621704102;
	setAttr -s 7 ".kox[2:6]"  0.98620313405990601 1 0.98612576723098755 
		0.23238380253314972 0.22041939198970795;
	setAttr -s 7 ".koy[2:6]"  -0.16553975641727448 0 -0.16599999368190765 
		-0.97262418270111084 -0.97540521621704102;
createNode animCurveTL -n "animCurveTL150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0.13417001307445281 13 0.15863291519615266 
		19 -0.28058686437643604 29 -0.28058686437643604 58.55 -0.26777895642179816 
		69 0.013437317294548992 75 0.13417001307445281;
	setAttr -s 7 ".kit[2:6]"  1 3 3 9 9;
	setAttr -s 7 ".kot[2:6]"  1 3 3 9 9;
	setAttr -s 7 ".kix[2:6]"  0.891105055809021 1 1 0.01364059466868639 
		0.016563249751925468;
	setAttr -s 7 ".kiy[2:6]"  0.45379704236984253 0 0 0.99990695714950562 
		0.99986284971237183;
	setAttr -s 7 ".kox[2:6]"  0.891105055809021 1 1 0.01364059466868639 
		0.016563249751925468;
	setAttr -s 7 ".koy[2:6]"  0.45379713177680969 0 0 0.99990695714950562 
		0.99986284971237183;
createNode animCurveTL -n "animCurveTL151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -0.98554673596533104 13 -0.63007710812111928 
		19 -0.38910708300340474 29 -0.38910708300340474 58.55 -0.40949456867905493 
		69 -0.67012248381637363 75 -0.98554673596533104;
	setAttr -s 7 ".kit[2:6]"  1 3 3 9 9;
	setAttr -s 7 ".kot[2:6]"  1 3 3 9 9;
	setAttr -s 7 ".kix[2:6]"  0.15567542612552643 1 1 0.0095183821395039558 
		0.0063405395485460758;
	setAttr -s 7 ".kiy[2:6]"  0.98780828714370728 0 0 -0.9999547004699707 
		-0.99997991323471069;
	setAttr -s 7 ".kox[2:6]"  0.15567553043365479 1 1 0.0095183821395039558 
		0.0063405395485460758;
	setAttr -s 7 ".koy[2:6]"  0.9878082275390625 0 0 -0.9999547004699707 
		-0.99997991323471069;
createNode animCurveTL -n "animCurveTL152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -0.051798330713661439 13 0.46457407179369126 
		19 0.49079902253112823 29 0.49079902253112823 58.55 0.48519579559387999 69 
		0.5464278511463051 75 -0.051798330713661439;
	setAttr -s 7 ".kit[1:6]"  1 9 9 9 9 9;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 9;
	setAttr -s 7 ".kix[1:6]"  0.025759512558579445 0.19928924739360809 
		0.92032313346862793 0.23308227956295013 0.010210628621280193 0.0033431989140808582;
	setAttr -s 7 ".kiy[1:6]"  0.9996681809425354 0.97994071245193481 
		-0.39115896821022034 0.97245699167251587 -0.99994784593582153 -0.99999439716339111;
	setAttr -s 7 ".kox[1:6]"  0.025759240612387657 0.19928924739360809 
		0.92032313346862793 0.23308227956295013 0.010210628621280193 0.0033431989140808582;
	setAttr -s 7 ".koy[1:6]"  0.9996681809425354 0.97994071245193481 
		-0.39115896821022034 0.97245699167251587 -0.99994784593582153 -0.99999439716339111;
createNode animCurveTA -n "animCurveTA424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 6.732881024868683 13 43.697031189140063 
		19 75.144440687663476 29 75.144440687663476 58.55 72.241343057966887 69 116.67874460189078 
		75 6.732881024868683;
	setAttr -s 7 ".kit[2:6]"  1 9 1 9 9;
	setAttr -s 7 ".kot[2:6]"  1 9 1 9 9;
	setAttr -s 7 ".kix[2:6]"  0.93970000743865967 0.99926221370697021 
		0.99931061267852783 0.43243035674095154 0.10366392135620117;
	setAttr -s 7 ".kiy[2:6]"  0.34199979901313782 -0.038405481725931168 
		-0.037125773727893829 -0.90166735649108887 -0.99461239576339722;
	setAttr -s 7 ".kox[2:6]"  0.93970000743865967 0.99926221370697021 
		0.99931061267852783 0.43243035674095154 0.10366392135620117;
	setAttr -s 7 ".koy[2:6]"  0.34199988842010498 -0.038405481725931168 
		-0.037125803530216217 -0.90166735649108887 -0.99461239576339722;
createNode animCurveTA -n "animCurveTA425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -3.5951217662782904 13 -69.85979517127987 
		19 14.973178300838388 29 14.973178300838388 58.55 14.973178300838388 69 -81.820339559398334 
		75 -3.5951217662782904;
	setAttr -s 7 ".kit[2:6]"  1 9 1 9 9;
	setAttr -s 7 ".kot[2:6]"  1 9 1 9 9;
	setAttr -s 7 ".kix[2:6]"  0.95931166410446167 1 0.9985959529876709 
		0.86088329553604126 0.14494237303733826;
	setAttr -s 7 ".kiy[2:6]"  0.28234937787055969 0 -0.052973069250583649 
		-0.50880241394042969 0.98944008350372314;
	setAttr -s 7 ".kox[2:6]"  0.95931154489517212 1 0.9985959529876709 
		0.86088329553604126 0.14494237303733826;
	setAttr -s 7 ".koy[2:6]"  0.28234973549842834 0 -0.052973192185163498 
		-0.50880241394042969 0.98944008350372314;
createNode animCurveTA -n "animCurveTA426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -61.318919336085017 13 -124.60473178946374 
		19 -193.7934413138284 29 -193.7934413138284 58.55 -193.7934413138284 69 -189.5182200133853 
		75 -61.318919336085017;
	setAttr -s 7 ".kit[2:6]"  1 9 9 1 9;
	setAttr -s 7 ".kot[2:6]"  1 9 9 1 9;
	setAttr -s 7 ".kix[2:6]"  0.96320039033889771 1 0.99843776226043701 
		0.924000084400177 0.089030526578426361;
	setAttr -s 7 ".kiy[2:6]"  -0.26878437399864197 0 0.055875092744827271 
		0.38239231705665588 0.99602890014648438;
	setAttr -s 7 ".kox[2:6]"  0.96320033073425293 1 0.99843776226043701 
		0.9240003228187561 0.089030526578426361;
	setAttr -s 7 ".koy[2:6]"  -0.26878449320793152 0 0.055875092744827271 
		0.38239163160324097 0.99602890014648438;
createNode animCurveTL -n "animCurveTL153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.65311611999272123 19 -0.8448236677023373 
		29 -0.8448236677023373 58.55 -0.8448236677023373 75 -0.65311611999272123;
createNode animCurveTL -n "animCurveTL154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 2.222264083594911 19 1.5117481219250299 
		29 1.5117481219250299 58.55 1.5117481219250299 75 2.222264083594911;
createNode animCurveTL -n "animCurveTL155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.097994651149805143 19 -0.097994651149805143 
		29 -0.097994651149805143 58.55 -0.097994651149805143 75 -0.097994651149805143;
createNode animCurveTA -n "animCurveTA427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 5.4739599453216474 19 5.4739599453216474 
		29 5.4739599453216474 58.55 5.4739599453216474 75 5.4739599453216474;
createNode animCurveTA -n "animCurveTA428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 8.5874521608419823 19 8.5874521608419823 
		29 8.5874521608419823 58.55 8.5874521608419823 75 8.5874521608419823;
createNode animCurveTA -n "animCurveTA429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 74.754744621954103 19 74.754744621954103 
		29 74.754744621954103 58.55 74.754744621954103 75 74.754744621954103;
createNode animCurveTL -n "animCurveTL156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.25368378509166484 19 0.61083301393139333 
		29 0.61083301393139333 58.55 0.61083301393139333 75 0.25368378509166484;
createNode animCurveTL -n "animCurveTL157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 2.2026421011163611 19 1.4644416293758407 
		29 1.4644416293758407 58.55 1.4644416293758407 75 2.2026421011163611;
createNode animCurveTL -n "animCurveTL158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.0085295933619701936 19 0.14314299916678522 
		29 0.14314299916678522 58.55 0.14314299916678522 75 0.0085295933619701936;
createNode animCurveTA -n "animCurveTA430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 16.226511010665405 19 16.226511010665405 
		29 16.226511010665405 58.55 16.226511010665405 75 16.226511010665405;
createNode animCurveTA -n "animCurveTA431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -8.513966085499284 19 -8.513966085499284 
		29 -8.513966085499284 58.55 -8.513966085499284 75 -8.513966085499284;
createNode animCurveTA -n "animCurveTA432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -68.213989601412422 19 -68.213989601412422 
		29 -68.213989601412422 58.55 -68.213989601412422 75 -68.213989601412422;
createNode animCurveTL -n "mrg_Left_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -0.245189189189189 19 0.61253752473196155 
		69 0.61253752473196155 75 -0.245189189189189;
createNode animCurveTL -n "mrg_Left_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 19 0.72132580231357835 69 0.72132580231357835 
		75 0;
createNode animCurveTL -n "mrg_Left_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -1 19 -0.91210258231083363 69 
		-0.91210258231083363 75 -1;
createNode animCurveTL -n "mrg_Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0.062337280601809833 19 -0.87426927010992739 
		69 -0.87426927010992739 75 0.062337280601809833;
createNode animCurveTL -n "mrg_Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -0.40762644910266188 19 0.11325046236687145 
		69 0.11325046236687145 75 -0.40762644910266188;
createNode animCurveTL -n "mrg_Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -0.93129112588482243 19 -0.74416303945577955 
		69 -0.74416303945577955 75 -0.93129112588482243;
createNode animCurveTA -n "animCurveTA433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 12.253734489678925 19 12.253734489678925 
		29 12.253734489678925 58.55 12.253734489678925 75 12.253734489678925;
createNode animCurveTA -n "animCurveTA434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -65.746751280844961 19 -65.746751280844961 
		29 -65.746751280844961 58.55 -65.746751280844961 75 -65.746751280844961;
createNode animCurveTA -n "animCurveTA435";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 3.871449260799477e-015 19 0 29 
		0 58.55 0 75 3.871449260799477e-015;
createNode animCurveTA -n "animCurveTA436";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.061808866237337522 19 -0.061808866237337522 
		29 -0.061808866237337522 58.55 -0.061808866237337522 75 -0.061808866237337522;
createNode animCurveTA -n "animCurveTA437";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -59.058178941076754 19 -59.058178941076754 
		29 -59.058178941076754 58.55 -59.058178941076754 75 -59.058178941076754;
createNode animCurveTA -n "animCurveTA438";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 16.579147429757843 19 16.579147429757843 
		29 16.579147429757843 58.55 16.579147429757843 75 16.579147429757843;
createNode animCurveTA -n "animCurveTA439";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 8.5572674112203622 19 8.5572674112203622 
		29 8.5572674112203622 58.55 8.5572674112203622 75 8.5572674112203622;
createNode animCurveTA -n "animCurveTA440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 15.711328223519057 19 15.711328223519057 
		29 15.711328223519057 58.55 15.711328223519057 75 15.711328223519057;
createNode animCurveTA -n "animCurveTA441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 10.423754966968488 19 10.423754966968488 
		29 10.423754966968488 58.55 10.423754966968488 75 10.423754966968488;
createNode animCurveTA -n "animCurveTA448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 27.722848255843903 19 27.722848255843903 
		29 27.722848255843903 58.55 27.722848255843903 75 27.722848255843903;
createNode animCurveTA -n "animCurveTA449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 21.576484776388227 19 21.576484776388227 
		29 21.576484776388227 58.55 21.576484776388227 75 21.576484776388227;
createNode animCurveTA -n "animCurveTA450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 27.080064458283051 19 27.080064458283051 
		29 27.080064458283051 58.55 27.080064458283051 69 58.195459674547187 75 27.080064458283051;
createNode animCurveTA -n "animCurveTA453";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA457";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 13.994403295754109 19 13.994403295754109 
		29 13.994403295754109 58.55 13.994403295754109 75 13.994403295754109;
createNode animCurveTA -n "animCurveTA459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 13.994403295754109 19 13.994403295754109 
		29 13.994403295754109 58.55 13.994403295754109 75 13.994403295754109;
createNode animCurveTA -n "animCurveTA462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 27.911632519594587 19 27.911632519594587 
		29 27.911632519594587 58.55 27.911632519594587 69 -2.8693703597981992 75 
		27.911632519594587;
createNode animCurveTA -n "animCurveTA465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.71009266045616004 19 1.3331712872039234 
		29 1.3331712872039234 58.55 1.3331712872039234 75 0.71009266045616004;
createNode animCurveTA -n "animCurveTA469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.39065484564574898 19 -0.4545107424658496 
		29 -0.4545107424658496 58.55 -0.4545107424658496 75 0.39065484564574898;
createNode animCurveTA -n "animCurveTA470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 8.1445984161934586 19 -0.65252033916606644 
		29 -0.65252033916606644 58.55 -0.65252033916606644 75 8.1445984161934586;
createNode animCurveTA -n "animCurveTA471";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA472";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA473";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 16.058439575700767 29 16.058439575700767 
		58.55 16.058439575700767 75 0;
createNode animCurveTA -n "animCurveTA474";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -2.0270270270270276 19 -4.9367554394300077 
		29 -4.9367554394300077 58.55 -4.9367554394300077 75 -2.0270270270270276;
createNode animCurveTA -n "animCurveTA475";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -2.4108692476260054 19 -8.6986303327609935 
		29 -8.6986303327609935 58.55 -8.6986303327609935 75 -2.4108692476260054;
createNode animCurveTA -n "animCurveTA476";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 13.0432985235726 19 17.455917002855632 
		29 17.455917002855632 58.55 17.455917002855632 75 13.0432985235726;
createNode animCurveTA -n "animCurveTA477";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA478";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA479";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -10.382821061592262 19 -10.954467428984071 
		29 -10.954467428984071 58.55 -10.954467428984071 75 -10.382821061592262;
createNode animCurveTA -n "animCurveTA480";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA481";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA482";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 33.429092416277157 19 33.429092416277157 
		29 33.429092416277157 58.55 33.429092416277157 75 33.429092416277157;
createNode animCurveTA -n "animCurveTA483";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 8.2533422302317216 19 8.2533422302317216 
		29 8.2533422302317216 58.55 8.2533422302317216 75 8.2533422302317216;
createNode animCurveTA -n "animCurveTA484";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 23.263402056531085 19 23.263402056531085 
		29 23.263402056531085 58.55 23.263402056531085 75 23.263402056531085;
createNode animCurveTA -n "animCurveTA485";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 20.166277752815617 19 20.166277752815617 
		29 20.166277752815617 58.55 20.166277752815617 75 20.166277752815617;
createNode animCurveTA -n "animCurveTA486";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA487";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 19 0 29 0 58.55 0 75 0;
createNode animCurveTA -n "animCurveTA488";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 17.254116939558369 19 17.254116939558369 
		29 17.254116939558369 58.55 17.254116939558369 69 76.267143673053425 75 17.254116939558369;
createNode animCurveTA -n "animCurveTA489";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTA -n "animCurveTA490";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTA -n "animCurveTA491";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTA -n "animCurveTA492";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTA -n "animCurveTA493";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTA -n "animCurveTA494";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTA -n "animCurveTA495";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTA -n "animCurveTA496";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
createNode animCurveTA -n "animCurveTA497";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 75 0;
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
	setAttr ".o" 14;
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
connectAttr "mrg_dialogue_cross_armsSource.st" "clipLibrary2.st[0]";
connectAttr "mrg_dialogue_cross_armsSource.du" "clipLibrary2.du[0]";
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
connectAttr "mrg_Hoop_Root_rotateX.a" "clipLibrary2.cel[0].cev[14].cevr"
		;
connectAttr "mrg_Hoop_Root_rotateY.a" "clipLibrary2.cel[0].cev[15].cevr"
		;
connectAttr "mrg_Hoop_Root_rotateZ.a" "clipLibrary2.cel[0].cev[16].cevr"
		;
connectAttr "mrg_Hoop_Root_translateX.a" "clipLibrary2.cel[0].cev[17].cevr"
		;
connectAttr "mrg_Hoop_Root_translateY.a" "clipLibrary2.cel[0].cev[18].cevr"
		;
connectAttr "mrg_Hoop_Root_translateZ.a" "clipLibrary2.cel[0].cev[19].cevr"
		;
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
connectAttr "mrg_Left_Elbow_Hoop_translateX.a" "clipLibrary2.cel[0].cev[106].cevr"
		;
connectAttr "mrg_Left_Elbow_Hoop_translateY.a" "clipLibrary2.cel[0].cev[107].cevr"
		;
connectAttr "mrg_Left_Elbow_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[108].cevr"
		;
connectAttr "mrg_Right_Elbow_Hoop_translateX.a" "clipLibrary2.cel[0].cev[109].cevr"
		;
connectAttr "mrg_Right_Elbow_Hoop_translateY.a" "clipLibrary2.cel[0].cev[110].cevr"
		;
connectAttr "mrg_Right_Elbow_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[111].cevr"
		;
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
// End of mrg_dialogue_cross_arms.ma
