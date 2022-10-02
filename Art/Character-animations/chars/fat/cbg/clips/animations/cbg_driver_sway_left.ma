//Maya ASCII 4.0 scene
//Name: cbg_driver_sway_left.ma
//Last modified: Fri, Aug 02, 2002 01:34:32 PM
requires maya "4.0";
requires "p3dmayaexp" "18.0";
requires "p3dSimpleShader" "18.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "cbg_driver_sway_leftSource";
	setAttr ".ihi" 0;
	setAttr ".du" 30;
	setAttr ".ci" no;
createNode animCurveTL -n "cbg_Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "cbg_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "cbg_Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.99433739766662688 1 -0.99433739766662688 
		2 -0.99433739766662688 3 -0.99433739766662688 4 -0.99433739766662688 5 -0.99433739766662688 
		6 -0.99433739766662688 7 -0.99433739766662688 8 -0.99433739766662688 9 -0.99433739766662688 
		10 -0.99433739766662688 11 -0.99433739766662688 12 -0.99433739766662688 13 
		-0.99433739766662688 14 -0.99433739766662688 15 -0.99433739766662688 16 -0.99433739766662688 
		17 -0.99433739766662688 18 -0.99433739766662688 19 -0.99433739766662688 20 
		-0.99433739766662688 21 -0.99433739766662688 22 -0.99433739766662688 23 -0.99433739766662688 
		24 -0.99433739766662688 25 -0.99433739766662688 26 -0.99433739766662688 27 
		-0.99433739766662688 28 -0.99433739766662688 29 -0.99433739766662688 30 -0.99433739766662688;
createNode animCurveTL -n "cbg_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0;
createNode animCurveTL -n "cbg_Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.88021938078782869 1 0.88021938078782869 
		2 0.88021938078782869 3 0.88021938078782869 4 0.88021938078782869 5 0.88021938078782869 
		6 0.88021938078782869 7 0.88021938078782869 8 0.88021938078782869 9 0.88021938078782869 
		10 0.88021938078782869 11 0.88021938078782869 12 0.88021938078782869 13 0.88021938078782869 
		14 0.88021938078782869 15 0.88021938078782869 16 0.88021938078782869 17 0.88021938078782869 
		18 0.88021938078782869 19 0.88021938078782869 20 0.88021938078782869 21 0.88021938078782869 
		22 0.88021938078782869 23 0.88021938078782869 24 0.88021938078782869 25 0.88021938078782869 
		26 0.88021938078782869 27 0.88021938078782869 28 0.88021938078782869 29 0.88021938078782869 
		30 0.88021938078782869;
createNode animCurveTA -n "cbg_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 30.315000000000001 0;
createNode animCurveTU -n "cbg_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "cbg_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "cbg_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "cbg_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "cbg_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "cbg_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "cbg_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "cbg_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTL -n "cbg_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "cbg_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "cbg_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "cbg_Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.7084450118300396 6.9850000000000003 
		-1.7084450118300396 10.465 -1.7084450118300396 13.08 -1.7084450118300396;
createNode animCurveTL -n "cbg_Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.82121446776202978 6.9850000000000003 
		0.82121446776202978 10.465 0.82121446776202978 13.08 0.82121446776202978;
createNode animCurveTL -n "cbg_Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.6495856783017808 6.9850000000000003 
		1.6495856783017808 10.465 1.6495856783017808 13.08 1.6495856783017808;
createNode animCurveTA -n "cbg_Right_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6.9850000000000003 0 24.43 
		0 30.315000000000001 0;
createNode animCurveTA -n "cbg_Right_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6.9850000000000003 0 24.43 
		0 30.315000000000001 0;
createNode animCurveTA -n "cbg_Right_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6.9850000000000003 0 24.43 
		0 30.315000000000001 0;
createNode animCurveTL -n "cbg_Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.2504784321605431 6.9850000000000003 
		-1.2504784321605431 10.465 -1.2504784321605431 13.08 -1.2504784321605431;
createNode animCurveTL -n "cbg_Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.82533069850741669 6.9850000000000003 
		0.82533069850741669 10.465 0.82533069850741669 13.08 0.82533069850741669;
createNode animCurveTL -n "cbg_Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.6270503750293122 6.9850000000000003 
		1.6270503750293122 10.465 1.6270503750293122 13.08 1.6270503750293122;
createNode animCurveTA -n "cbg_Left_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6.9850000000000003 0 24.43 
		0 30.315000000000001 0;
createNode animCurveTA -n "cbg_Left_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6.9850000000000003 0 24.43 
		0 30.315000000000001 0;
createNode animCurveTA -n "cbg_Left_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6.9850000000000003 0 24.43 
		0 30.315000000000001 0;
createNode animCurveTA -n "cbg_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_Right_Toe_Hoop_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_Right_Toe_Hoop_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_Right_Toe_Hoop_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_Left_Toe_Hoop_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_Left_Toe_Hoop_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_Left_Toe_Hoop_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTL -n "cbg_Right_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "cbg_Right_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "cbg_Right_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "cbg_Left_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "cbg_Left_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "cbg_Left_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "cbg_Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.4786421250535617 6.9850000000000003 
		-1.4786421250535617 10.465 -1.4786421250535617 13.08 -1.4786421250535617;
createNode animCurveTL -n "cbg_Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.013846891275328 6.9850000000000003 
		1.013846891275328 10.465 1.013846891275328 13.08 1.013846891275328;
createNode animCurveTL -n "cbg_Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.2853416563090898 6.9850000000000003 
		1.2853416563090898 10.465 1.2853416563090898 13.08 1.2853416563090898;
createNode animCurveTA -n "cbg_Character_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -25.655237914214105 6.9850000000000003 
		-25.655237914214105 24.43 -25.655237914214105 30.315000000000001 -25.655237914214105;
createNode animCurveTA -n "cbg_Character_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.0975263990809512 6.9850000000000003 
		2.0975263990809512 24.43 2.0975263990809512 30.315000000000001 2.0975263990809512;
createNode animCurveTA -n "cbg_Character_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.53932213336905666 6.9850000000000003 
		-0.53932213336905666 24.43 -0.53932213336905666 30.315000000000001 -0.53932213336905666;
createNode animCurveTA -n "cbg_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_L_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_L_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_L_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTL -n "Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.11291150034048428 1 0.1159964795261476 
		2 0.11827310043435944 3 0.12034838007803103 4 0.12284499470593745 5 0.12639860123311336 
		6 0.13163830161140111 7 0.13914811897125959 8 0.15227321905243626 9 0.16958749669810344 
		10 0.18726451633811222 11 0.20844093614164166 12 0.2397042397453322 13 0.26364038415207119 
		14 0.26183557182947681 15 0.25509601762199025 16 0.24393601734633449 17 0.22919484215464422 
		18 0.2120068388501315 19 0.19363356628777212 20 0.17532925089728679 21 0.1582275130093703 
		22 0.14325210805169405 23 0.13106420024515758 24 0.12206203122962052 25 0.1163272472533842 
		26 0.11324151506460141 27 0.1124791064783409 28 0.11373305127211665 29 0.11646405934496812 
		30 0.11982305226714772;
createNode animCurveTL -n "Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.4987085338958881 1 -0.50070530096194621 
		2 -0.50464494632550294 3 -0.50906682956452376 4 -0.51250448557676453 5 -0.51348654101770252 
		6 -0.51054014138785142 7 -0.50219195939153716 8 -0.46673889299554133 9 -0.41312310071678371 
		10 -0.38025517286762273 11 -0.39931403257910958 12 -0.45411317240081839 13 
		-0.50020404041895805 14 -0.5193854074023061 15 -0.52972669543209394 16 -0.53314252910136228 
		17 -0.53104672586350576 18 -0.52460568011404562 19 -0.5148591114852511 20 
		-0.50282983688733007 21 -0.48960516269265242 22 -0.47638101782769454 23 -0.46446791558280148 
		24 -0.45526509276773369 25 -0.45075092626625163 26 -0.45307777593826815 27 
		-0.45998159603762878 28 -0.46897544294610027 29 -0.4778045512024528 30 -0.48448373667050904;
createNode animCurveTL -n "Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.79613624855945153 1 0.79821498629075327 
		2 0.79977687587954349 3 0.80118184465297648 4 0.80281705191083774 5 0.80508870079127492 
		6 0.80836701873336825 7 0.81288500618555637 8 0.81609816472086338 9 0.81659552195439922 
		10 0.82351660261158066 11 0.85589964987125788 12 0.91560896130689318 13 0.95847774037909395 
		14 0.97059253002132484 15 0.97646114381648608 16 0.97714507288027619 17 0.97332102246504137 
		18 0.96560285382274191 19 0.95463205398324247 20 0.9411350172207511 21 0.92594836344077647 
		22 0.91001528908321971 23 0.8943592697777264 24 0.88004482637564196 25 0.86749171155511473 
		26 0.85452211688406143 27 0.84118751388927848 28 0.82787828768990213 29 0.81494429759370135 
		30 0.80266092923820809;
createNode animCurveTA -n "Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 28.533942700976652 1 28.784529624964051 
		2 28.881896212502514 3 28.941716702050666 4 29.077642220357035 5 29.40204035827643 
		6 30.030769641929968 7 31.092390932217612 8 33.549742911123715 9 37.769188689798966 
		10 42.50968959076917 11 46.371055460172407 12 50.957128064970419 13 52.995625839249293 
		14 52.524339218833234 15 51.892581531202971 16 51.091551318104742 17 50.093485492909892 
		18 48.878705484963959 19 47.442950207991707 20 45.802622408745918 21 43.997575360766525 
		22 42.090868980303554 23 40.165215134346326 24 38.31662209803212 25 36.611725215520103 
		26 34.97113658506953 27 33.414334763049226 28 31.960356254437727 29 30.610799933256249 
		30 29.345873751630837;
createNode animCurveTA -n "Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 34.630882542021425 1 34.438839583653753 
		2 34.073013319860337 3 33.664461992893294 4 33.34378096922687 5 33.240736095676496 
		6 33.481615677294428 7 34.184404876084592 8 36.987919259670981 9 41.185609211265259 
		10 43.626920444555417 11 41.890233630273876 12 37.234370427660743 13 33.520729040194041 
		14 32.625988953888758 15 32.306948895646237 16 32.426507996078577 17 32.873923871428133 
		18 33.544408795890575 19 34.339242004598937 20 35.167513351496588 21 35.949183426200705 
		22 36.618583655909156 23 37.127103586331366 24 37.443751639880581 25 37.531220690940692 
		26 37.321610493507869 27 36.872908188969454 28 36.250066770607127 29 35.525531441995177 
		30 34.78543216912594;
createNode animCurveTA -n "Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 101.46878748387553 1 101.62878084884166 
		2 101.63454516137577 3 101.60162993317202 4 101.6435986509954 5 101.87316712069101 
		6 102.40967824658681 7 103.39315263611203 8 105.61811639219562 9 109.82422727534176 
		10 115.18769568689794 11 120.67496146155146 12 128.7779468592436 13 133.99431217836712 
		14 135.07446284466329 15 135.1332778957055 16 134.31379189053257 17 132.7293660939043 
		18 130.4948652731014 19 127.73272395948129 20 124.57859107766343 21 121.18587200413192 
		22 117.72808425015906 23 114.39813407925065 24 111.40440994055108 25 108.93547798295 
		26 106.93155353432141 27 105.24075073007499 28 103.71459822999249 29 102.21681109061058 
		30 100.62741780578686;
createNode animCurveTL -n "Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.23872956870360326 1 -0.23568566390726203 
		2 -0.23339910400009459 3 -0.23130293916906611 4 -0.22882317375969818 5 -0.22538463288388585 
		6 -0.22045262920769701 7 -0.21361331957984789 8 -0.20216561010132836 9 -0.18881067847660163 
		10 -0.17840762828899231 11 -0.17124403887103554 12 -0.17473170363003107 13 
		-0.18372833111174403 14 -0.19357953328742014 15 -0.20161383687076906 16 -0.20819860430801812 
		17 -0.21372264474386826 18 -0.21854531047428269 19 -0.22295767718022219 20 
		-0.22714794941833602 21 -0.23117835097088191 22 -0.23497615703189609 23 -0.23833715490401275 
		24 -0.24093718672894951 25 -0.24242726213852905 26 -0.24273513843867933 27 
		-0.24161303839431994 28 -0.2390202842192018 29 -0.23529367240253224 30 -0.23120470815846658;
createNode animCurveTL -n "Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.45815765628955618 1 -0.45988956224886246 
		2 -0.46445078471238077 3 -0.46971247226378943 4 -0.47354113419818944 5 -0.47379954752232528 
		6 -0.46834871440639431 7 -0.4550466339215779 8 -0.4111703919450273 9 -0.34249856268814105 
		10 -0.28665074980094268 11 -0.26668382606604579 12 -0.24772333346126993 13 
		-0.23620974320805752 14 -0.23490651992922232 15 -0.23763994145604642 16 -0.24395225437763166 
		17 -0.25342564509087978 18 -0.26559519078865174 19 -0.27993390043485206 20 
		-0.29585514606297042 21 -0.31272501654380203 22 -0.32987708821746686 23 -0.34662302705363424 
		24 -0.36225427921103481 25 -0.37663257172204873 26 -0.39194653103868471 27 
		-0.40835393004574222 28 -0.42571177258522391 29 -0.44374239148606942 30 -0.46198521495579664;
createNode animCurveTL -n "Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.79099905418568139 1 0.78985918335280769 
		2 0.78955654351561488 3 0.78942487757555813 4 0.78883464892153032 5 0.78718319663554071 
		6 0.78382857202921985 7 0.7779673213024898 8 0.76131585496779353 9 0.73099800520736868 
		10 0.70141384152802344 11 0.68959082008671746 12 0.6822175547179018 13 0.68598175928427763 
		14 0.69830075017203341 15 0.70900230647397333 16 0.71845533248339533 17 0.72702026546669374 
		18 0.73496534071555975 19 0.74247019125955149 20 0.74964105954319704 21 0.75653375996761674 
		22 0.76317869709308972 23 0.76960195726053349 24 0.77583758916481915 25 0.78158483871491602 
		26 0.78542955964636552 27 0.78755051633791862 28 0.78841434582214864 29 0.78857898258837611 
		30 0.78873091835563391;
createNode animCurveTA -n "Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 9.0838892560813118 1 8.8390472652813159 
		2 8.8062548193187524 3 8.8245602765173405 4 8.7373630596705052 5 8.3911648399749961 
		6 7.6281198195625546 7 6.2721451456540995 8 2.8067750494184946 9 -3.2199634949907421 
		10 -9.451731396280648 11 -13.099615495558092 12 -16.47500342641359 13 -17.503469566375095 
		14 -16.749155058540371 15 -15.992538617654487 16 -15.178818819163782 17 -14.244921329722935 
		18 -13.138761076697008 19 -11.825266794553778 20 -10.291993150847164 21 -8.5537825040497548 
		22 -6.6553981392325516 23 -4.6708245406917905 24 -2.6983921540661275 25 -0.80669747132261749 
		26 1.1052014337445935 27 2.99047837009745 28 4.8018690883179174 29 6.5130773159337805 
		30 8.1232876210986174;
createNode animCurveTA -n "Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -44.629378900476482 1 -44.407983218659844 
		2 -44.034147698929246 3 -43.622800068345391 4 -43.288620557515593 5 -43.145472380856106 
		6 -43.302404160222359 7 -43.856196511064198 8 -46.278037927725038 9 -49.758180984216438 
		10 -51.352377833010642 11 -48.986776724964948 12 -43.626325361458051 13 -39.631200091164274 
		14 -38.846843637452558 15 -38.652663902863289 16 -38.916716406520152 17 -39.535585727612734 
		18 -40.409645366167581 19 -41.441938458645282 20 -42.539071969104853 21 -43.613962869648951 
		22 -44.589726295588214 23 -45.403501725413683 24 -46.008708677947894 25 -46.358648773215229 
		26 -46.399238738305009 27 -46.184255973905593 28 -45.775120320761779 29 -45.24375072345704 
		30 -44.678776132432908;
createNode animCurveTA -n "Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -69.735314582665623 1 -69.545711791086163 
		2 -69.571883973692138 3 -69.650813548202493 4 -69.623901669028626 5 -69.335334317240083 
		6 -68.621996783018986 7 -67.294842986106161 8 -64.046274269739953 9 -58.01909155949248 
		10 -51.039468922401987 11 -45.372207508126003 12 -37.749938295576698 13 -33.030850683070199 
		14 -32.170666401272399 15 -32.246302630157707 16 -33.146679799424717 17 -34.783223709985577 
		18 -37.06301888663419 19 -39.883958419046749 20 -43.128815091988379 21 -46.65901444412637 
		22 -50.309616344203732 23 -53.887342070123921 24 -57.173038533384975 25 -59.969384719907339 
		26 -62.360329834837039 27 -64.474939558373677 28 -66.437555900997765 29 -68.364968734608979 
		30 -70.363857972951266;
createNode animCurveTL -n "Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.9908420079621203 6.9850000000000003 
		-1.9908420079621203 10.465 -1.9908420079621203 13.08 -1.9908420079621203;
createNode animCurveTL -n "Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.0110107466963401 6.9850000000000003 
		2.0110107466963401 10.465 2.0110107466963401 13.08 2.0110107466963401;
createNode animCurveTL -n "Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.6026565239254307 6.9850000000000003 
		1.6026565239254307 10.465 1.6026565239254307 13.08 1.6026565239254307;
createNode animCurveTA -n "Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 41.988352198761007 6.9850000000000003 
		41.988352198761007 24.43 41.988352198761007 30.315000000000001 41.988352198761007;
createNode animCurveTA -n "Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 60.276142834404972 6.9850000000000003 
		60.276142834404972 24.43 60.276142834404972 30.315000000000001 60.276142834404972;
createNode animCurveTA -n "Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 107.75114880137443 6.9850000000000003 
		107.75114880137443 24.43 107.75114880137443 30.315000000000001 107.75114880137443;
createNode animCurveTL -n "Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.2003575390128778 6.9850000000000003 
		-1.2003575390128778 10.465 -1.2003575390128778 13.08 -1.2003575390128778;
createNode animCurveTL -n "Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.9860774243414616 6.9850000000000003 
		1.9860774243414616 10.465 1.9860774243414616 13.08 1.9860774243414616;
createNode animCurveTL -n "Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.5595002670347433 6.9850000000000003 
		1.5595002670347433 10.465 1.5595002670347433 13.08 1.5595002670347433;
createNode animCurveTA -n "Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -18.983406447510582 6.9850000000000003 
		-18.983406447510582 24.43 -18.983406447510582 30.315000000000001 -18.983406447510582;
createNode animCurveTA -n "Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -67.32660964705903 6.9850000000000003 
		-67.32660964705903 24.43 -67.32660964705903 30.315000000000001 -67.32660964705903;
createNode animCurveTA -n "Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -49.77690804472806 6.9850000000000003 
		-49.77690804472806 24.43 -49.77690804472806 30.315000000000001 -49.77690804472806;
createNode animCurveTL -n "cbg_Left_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.80217394619293847 6.9850000000000003 
		0.80217394619293847 10.465 0.80217394619293847 13.08 0.80217394619293847;
createNode animCurveTL -n "cbg_Left_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.44299574108883399 6.9850000000000003 
		-0.44299574108883399 10.465 -0.44299574108883399 13.08 -0.44299574108883399;
createNode animCurveTL -n "cbg_Left_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.5412845761155356 6.9850000000000003 
		-0.5412845761155356 10.465 -0.5412845761155356 13.08 -0.5412845761155356;
createNode animCurveTL -n "cbg_Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.49484451559913972 6.9850000000000003 
		-0.49484451559913972 10.465 -0.49484451559913972 13.08 -0.49484451559913972;
createNode animCurveTL -n "cbg_Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.71931626134224813 6.9850000000000003 
		-0.71931626134224813 10.465 -0.71931626134224813 13.08 -0.71931626134224813;
createNode animCurveTL -n "cbg_Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.66067307131502628 6.9850000000000003 
		-0.66067307131502628 10.465 -0.66067307131502628 13.08 -0.66067307131502628;
createNode animCurveTA -n "cbg_R_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 -0.061808866237340665 
		24.43 -0.061808866237340665 30.315000000000001 -0.061808866237340665;
createNode animCurveTA -n "cbg_R_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 -59.058178941076754 
		24.43 -59.058178941076754 30.315000000000001 -59.058178941076754;
createNode animCurveTA -n "cbg_R_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 16.57914742975785 
		24.43 16.57914742975785 30.315000000000001 16.57914742975785;
createNode animCurveTA -n "cbg_L_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 12.253734489678925 
		24.43 12.253734489678925 30.315000000000001 12.253734489678925;
createNode animCurveTA -n "cbg_L_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 -65.746751280844975 
		24.43 -65.746751280844975 30.315000000000001 -65.746751280844975;
createNode animCurveTA -n "cbg_L_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_R_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 15.711328223519061 
		24.43 15.711328223519061 30.315000000000001 15.711328223519061;
createNode animCurveTA -n "cbg_L_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 8.5572674112203657 
		24.43 8.5572674112203657 30.315000000000001 8.5572674112203657;
createNode animCurveTA -n "cbg_R_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_R_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_R_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_L_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_L_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_L_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.2533422302317216 6.9850000000000003 
		8.2533422302317216 24.43 8.2533422302317216 30.315000000000001 8.2533422302317216;
createNode animCurveTA -n "cbg_Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 23.263402056531085 6.9850000000000003 
		23.263402056531085 24.43 23.263402056531085 30.315000000000001 23.263402056531085;
createNode animCurveTA -n "cbg_Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 20.166277752815617 6.9850000000000003 
		20.166277752815617 24.43 20.166277752815617 30.315000000000001 20.166277752815617;
createNode animCurveTA -n "Middle_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6.9850000000000003 0 24.43 
		0 30.315000000000001 0;
createNode animCurveTA -n "Middle_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6.9850000000000003 0 24.43 
		0 30.315000000000001 0;
createNode animCurveTA -n "Middle_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 79.802705892979176 6.9850000000000003 
		79.802705892979176 24.43 79.802705892979176 30.315000000000001 79.802705892979176;
createNode animCurveTA -n "cbg_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  6.9850000000000003 0 24.43 0 30.315000000000001 
		0;
createNode animCurveTA -n "cbg_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6.9850000000000003 0 24.43 
		0 30.315000000000001 0;
createNode animCurveTA -n "cbg_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6.9850000000000003 0 24.43 
		0 30.315000000000001 0;
createNode animCurveTA -n "cbg_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 13.994403295754109 6.9850000000000003 
		13.994403295754109 24.43 13.994403295754109 30.315000000000001 13.994403295754109;
createNode animCurveTA -n "cbg_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6.9850000000000003 0 24.43 
		0 30.315000000000001 0;
createNode animCurveTA -n "cbg_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6.9850000000000003 0 24.43 
		0 30.315000000000001 0;
createNode animCurveTA -n "cbg_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 13.994403295754109 6.9850000000000003 
		13.994403295754109 24.43 13.994403295754109 30.315000000000001 13.994403295754109;
createNode animCurveTA -n "Middle_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6.9850000000000003 0 24.43 
		0 30.315000000000001 0;
createNode animCurveTA -n "Middle_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6.9850000000000003 0 24.43 
		0 30.315000000000001 0;
createNode animCurveTA -n "Middle_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 71.026803426671577 6.9850000000000003 
		71.026803426671577 24.43 71.026803426671577 30.315000000000001 71.026803426671577;
createNode animCurveTA -n "cbg_Jaw_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6.9850000000000003 0 24.43 
		0 30.315000000000001 0;
createNode animCurveTA -n "cbg_Jaw_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6.9850000000000003 0 24.43 
		0 30.315000000000001 0;
createNode animCurveTA -n "cbg_Jaw_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 6.9850000000000003 0 10.460000000000001 
		-11.718954412173623 13.085000000000001 17.506560139138646 24.43 11.255949260876445 
		30.315000000000001 0;
createNode animCurveTA -n "cbg_Spine_2_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 6.9850000000000003 -2.1957450020722873 
		10.460000000000001 -9.9517050381206111 13.085000000000001 -12.863960459730835 
		24.43 2.3466362390264854 30.315000000000001 0;
createNode animCurveTA -n "cbg_Spine_2_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.5886647225957985 6.9850000000000003 
		-0.5886647225957985 10.460000000000001 -2.2091236882739405 13.085000000000001 
		-9.5492166861096557 24.43 1.2410584158574316 30.315000000000001 1.0692848493364067;
	setAttr -s 6 ".kit[3:5]"  1 9 9;
	setAttr -s 6 ".kot[3:5]"  1 9 9;
	setAttr -s 6 ".kix[3:5]"  0.66204327344894409 0.95168006420135498 
		0.99988323450088501;
	setAttr -s 6 ".kiy[3:5]"  -0.74946564435958862 0.30709132552146912 
		-0.015281213447451591;
	setAttr -s 6 ".kox[3:5]"  0.66204297542572021 0.95168006420135498 
		0.99988323450088501;
	setAttr -s 6 ".koy[3:5]"  -0.74946582317352295 0.30709132552146912 
		-0.015281213447451591;
createNode animCurveTA -n "Spine_2_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.5058694957498595 6.9850000000000003 
		-2.5058694957498595 10.460000000000001 11.380954762433173 24.43 7.1732976692903714 
		30.315000000000001 -2.5058694957498595;
createNode animCurveTA -n "cbg_Neck_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6.9850000000000003 0 24.43 
		0 30.315000000000001 0;
createNode animCurveTA -n "cbg_Neck_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6.9850000000000003 0 24.43 
		0 30.315000000000001 0;
createNode animCurveTA -n "cbg_Neck_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6.9850000000000003 0 24.43 
		0 30.315000000000001 0;
createNode animCurveTA -n "cbg_Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6.9850000000000003 0 10.460000000000001 
		-25.180129120385686 13.085000000000001 24.457107666226189 24 24.457107666226189 
		24.43 31.815802869831991 30.315000000000001 0;
createNode animCurveTA -n "cbg_Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 6.9850000000000003 0 10.460000000000001 
		-2.7615596244885934 13.085000000000001 -3.2763816950394649 24 -3.0353001397759738 
		30.315000000000001 0;
	setAttr -s 6 ".kit[2:5]"  1 1 9 9;
	setAttr -s 6 ".kot[2:5]"  1 1 9 9;
	setAttr -s 6 ".kix[2:5]"  0.98078745603561401 0.9996875524520874 
		0.99507993459701538 0.96976083517074585;
	setAttr -s 6 ".kiy[2:5]"  -0.19507938623428345 -0.02499663271009922 
		0.099075391888618469 0.24405720829963684;
	setAttr -s 6 ".kox[2:5]"  0.98078739643096924 0.9996875524520874 
		0.99507993459701538 0.96976083517074585;
	setAttr -s 6 ".koy[2:5]"  -0.19507956504821777 -0.024996619671583176 
		0.099075391888618469 0.24405720829963684;
createNode animCurveTA -n "Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 18.603314785497371 6.9850000000000003 
		18.603314785497371 10.460000000000001 28.267512817493859 13.085000000000001 
		28.120930436491751 24 28.120930436491751 24.43 19.819281925972316 30.315000000000001 
		18.603314785497371;
createNode animCurveTA -n "cbg_Spine_1_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.5315117770142568 6.9850000000000003 
		1.5315117770142568 10.460000000000001 2.1888444655649528 13.085000000000001 
		-4.3919258297602557 24.43 -4.167617951406501 30.315000000000001 1.5315117770142568;
	setAttr -s 6 ".kit[3:5]"  1 9 9;
	setAttr -s 6 ".kot[3:5]"  1 9 9;
	setAttr -s 6 ".kix[3:5]"  0.82429230213165283 0.98418229818344116 
		0.89189368486404419;
	setAttr -s 6 ".kiy[3:5]"  -0.56616443395614624 0.17715878784656525 
		0.45224511623382568;
	setAttr -s 6 ".kox[3:5]"  0.82429236173629761 0.98418229818344116 
		0.89189368486404419;
	setAttr -s 6 ".koy[3:5]"  -0.56616437435150146 0.17715878784656525 
		0.45224511623382568;
createNode animCurveTA -n "cbg_Spine_1_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.7891971390395636 6.9850000000000003 
		-2.7891971390395636 10.460000000000001 -3.8742952975513698 13.085000000000001 
		-11.708047785452479 24.43 -10.689322132814622 30.315000000000001 -2.7891971390395636;
	setAttr -s 6 ".kit[0:5]"  9 9 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  9 9 1 1 1 9;
	setAttr -s 6 ".kix[2:5]"  0.90722852945327759 0.92544823884963989 
		0.89783161878585815 0.81812036037445068;
	setAttr -s 6 ".kiy[2:5]"  -0.42063802480697632 -0.3788740336894989 
		0.44033893942832947 0.57504701614379883;
	setAttr -s 6 ".kox[2:5]"  0.90722846984863281 0.92544817924499512 
		0.89783161878585815 0.81812036037445068;
	setAttr -s 6 ".koy[2:5]"  -0.42063820362091064 -0.37887418270111084 
		0.44033896923065186 0.57504701614379883;
createNode animCurveTA -n "Spine_1_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.1874045407638754 6.9850000000000003 
		1.1874045407638754 10.460000000000001 -0.20273836508780985 13.085000000000001 
		-4.3070020097031909 24.43 -3.534637425604215 30.315000000000001 1.1874045407638754;
	setAttr -s 6 ".kit[3:5]"  1 9 9;
	setAttr -s 6 ".kot[3:5]"  1 9 9;
	setAttr -s 6 ".kix[3:5]"  0.87666219472885132 0.98634564876556396 
		0.92193984985351563;
	setAttr -s 6 ".kiy[3:5]"  -0.48110637068748474 0.16468849778175354 
		0.38733312487602234;
	setAttr -s 6 ".kox[3:5]"  0.87666219472885132 0.98634564876556396 
		0.92193984985351563;
	setAttr -s 6 ".koy[3:5]"  -0.48110643029212952 0.16468849778175354 
		0.38733312487602234;
createNode animCurveTA -n "Middle_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.90377949588789308 6.9850000000000003 
		0.90377949588789308 24.43 0.90377949588789308 30.315000000000001 0.90377949588789308;
createNode animCurveTA -n "Middle_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -7.8984463198172383 6.9850000000000003 
		-7.8984463198172383 24.43 -7.8984463198172383 30.315000000000001 -7.8984463198172383;
createNode animCurveTA -n "Middle_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 80.26632241086908 6.9850000000000003 
		80.26632241086908 24.43 80.26632241086908 30.315000000000001 80.26632241086908;
createNode animCurveTA -n "cbg_Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 10.423754966968488 6.9850000000000003 
		10.423754966968488 24.43 10.423754966968488 30.315000000000001 10.423754966968488;
createNode animCurveTA -n "cbg_Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.7228482558439 6.9850000000000003 
		27.7228482558439 24.43 27.7228482558439 30.315000000000001 27.7228482558439;
createNode animCurveTA -n "cbg_Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 21.576484776388224 6.9850000000000003 
		21.576484776388224 24.43 21.576484776388224 30.315000000000001 21.576484776388224;
createNode animCurveTA -n "cbg_Middle_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6.9850000000000003 0 24.43 
		0 30.315000000000001 0;
createNode animCurveTA -n "cbg_Middle_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6.9850000000000003 0 24.43 
		0 30.315000000000001 0;
createNode animCurveTA -n "cbg_Middle_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.911632519594587 6.9850000000000003 
		27.911632519594587 24.43 27.911632519594587 30.315000000000001 27.911632519594587;
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
select -ne :time1;
	setAttr ".o" 0;
select -ne :renderPartition;
	setAttr -s 55 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 55 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 37 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 37 ".tx";
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
connectAttr "cbg_driver_sway_leftSource.st" "clipLibrary1.st[0]";
connectAttr "cbg_driver_sway_leftSource.du" "clipLibrary1.du[0]";
connectAttr "cbg_Extra_Attributes_translateX.a" "clipLibrary1.cel[0].cev[0].cevr"
		;
connectAttr "cbg_Extra_Attributes_translateY.a" "clipLibrary1.cel[0].cev[1].cevr"
		;
connectAttr "cbg_Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "cbg_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "cbg_Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "cbg_Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr"
		;
connectAttr "cbg_Hoop_Root_IK_FK_RFoot.a" "clipLibrary1.cel[0].cev[6].cevr"
		;
connectAttr "cbg_Hoop_Root_IK_FK_LFoot.a" "clipLibrary1.cel[0].cev[7].cevr"
		;
connectAttr "cbg_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary1.cel[0].cev[8].cevr"
		;
connectAttr "cbg_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary1.cel[0].cev[9].cevr"
		;
connectAttr "cbg_Hoop_Root_IK_FK_RArm.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "cbg_Hoop_Root_IK_FK_LArm.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "cbg_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "cbg_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "cbg_Hoop_Root_rotateX.a" "clipLibrary1.cel[0].cev[14].cevr"
		;
connectAttr "cbg_Hoop_Root_rotateY.a" "clipLibrary1.cel[0].cev[15].cevr"
		;
connectAttr "cbg_Hoop_Root_rotateZ.a" "clipLibrary1.cel[0].cev[16].cevr"
		;
connectAttr "cbg_Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "cbg_Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "cbg_Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
connectAttr "cbg_Right_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[20].cevr"
		;
connectAttr "cbg_Right_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[21].cevr"
		;
connectAttr "cbg_Right_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[22].cevr"
		;
connectAttr "cbg_Right_Foot_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[23].cevr"
		;
connectAttr "cbg_Right_Foot_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[24].cevr"
		;
connectAttr "cbg_Right_Foot_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[25].cevr"
		;
connectAttr "cbg_Left_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[26].cevr"
		;
connectAttr "cbg_Left_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[27].cevr"
		;
connectAttr "cbg_Left_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[28].cevr"
		;
connectAttr "cbg_Left_Foot_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[29].cevr"
		;
connectAttr "cbg_Left_Foot_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[30].cevr"
		;
connectAttr "cbg_Left_Foot_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[31].cevr"
		;
connectAttr "cbg_Right_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[32].cevr"
		;
connectAttr "cbg_Right_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[33].cevr"
		;
connectAttr "cbg_Right_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[34].cevr"
		;
connectAttr "cbg_Left_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[35].cevr"
		;
connectAttr "cbg_Left_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[36].cevr"
		;
connectAttr "cbg_Left_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[37].cevr"
		;
connectAttr "cbg_Right_Toe_Hoop_rotateX1.a" "clipLibrary1.cel[0].cev[38].cevr"
		;
connectAttr "cbg_Right_Toe_Hoop_rotateY1.a" "clipLibrary1.cel[0].cev[39].cevr"
		;
connectAttr "cbg_Right_Toe_Hoop_rotateZ1.a" "clipLibrary1.cel[0].cev[40].cevr"
		;
connectAttr "cbg_Left_Toe_Hoop_rotateX1.a" "clipLibrary1.cel[0].cev[41].cevr"
		;
connectAttr "cbg_Left_Toe_Hoop_rotateY1.a" "clipLibrary1.cel[0].cev[42].cevr"
		;
connectAttr "cbg_Left_Toe_Hoop_rotateZ1.a" "clipLibrary1.cel[0].cev[43].cevr"
		;
connectAttr "cbg_Right_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[44].cevr"
		;
connectAttr "cbg_Right_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[45].cevr"
		;
connectAttr "cbg_Right_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[46].cevr"
		;
connectAttr "cbg_Left_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[47].cevr"
		;
connectAttr "cbg_Left_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[48].cevr"
		;
connectAttr "cbg_Left_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[49].cevr"
		;
connectAttr "cbg_Character_Hoop_translateX.a" "clipLibrary1.cel[0].cev[50].cevr"
		;
connectAttr "cbg_Character_Hoop_translateY.a" "clipLibrary1.cel[0].cev[51].cevr"
		;
connectAttr "cbg_Character_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[52].cevr"
		;
connectAttr "cbg_Character_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[53].cevr"
		;
connectAttr "cbg_Character_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[54].cevr"
		;
connectAttr "cbg_Character_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[55].cevr"
		;
connectAttr "cbg_R_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "cbg_R_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "cbg_R_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "cbg_R_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[59].cevr"
		;
connectAttr "cbg_R_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[60].cevr"
		;
connectAttr "cbg_R_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[61].cevr"
		;
connectAttr "cbg_R_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[62].cevr"
		;
connectAttr "cbg_R_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[63].cevr"
		;
connectAttr "cbg_R_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[64].cevr"
		;
connectAttr "cbg_R_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[65].cevr"
		;
connectAttr "cbg_L_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "cbg_L_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "cbg_L_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "cbg_L_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[69].cevr"
		;
connectAttr "cbg_L_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[70].cevr"
		;
connectAttr "cbg_L_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[71].cevr"
		;
connectAttr "cbg_L_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[72].cevr"
		;
connectAttr "cbg_L_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[73].cevr"
		;
connectAttr "cbg_L_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[74].cevr"
		;
connectAttr "cbg_L_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[75].cevr"
		;
connectAttr "cbg_R_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[76].cevr"
		;
connectAttr "cbg_R_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[77].cevr"
		;
connectAttr "cbg_R_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[78].cevr"
		;
connectAttr "cbg_L_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[79].cevr"
		;
connectAttr "cbg_L_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[80].cevr"
		;
connectAttr "cbg_L_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[81].cevr"
		;
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
connectAttr "Right_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[94].cevr"
		;
connectAttr "Right_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[95].cevr"
		;
connectAttr "Right_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[96].cevr"
		;
connectAttr "Right_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[97].cevr"
		;
connectAttr "Right_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[98].cevr"
		;
connectAttr "Right_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[99].cevr"
		;
connectAttr "Left_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[100].cevr"
		;
connectAttr "Left_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[101].cevr"
		;
connectAttr "Left_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[102].cevr"
		;
connectAttr "Left_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[103].cevr"
		;
connectAttr "Left_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[104].cevr"
		;
connectAttr "Left_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[105].cevr"
		;
connectAttr "cbg_Left_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[106].cevr"
		;
connectAttr "cbg_Left_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[107].cevr"
		;
connectAttr "cbg_Left_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[108].cevr"
		;
connectAttr "cbg_Right_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[109].cevr"
		;
connectAttr "cbg_Right_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[110].cevr"
		;
connectAttr "cbg_Right_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[111].cevr"
		;
connectAttr "cbg_R_FK_Shoulder_rotateX.a" "clipLibrary1.cel[0].cev[112].cevr"
		;
connectAttr "cbg_R_FK_Shoulder_rotateY.a" "clipLibrary1.cel[0].cev[113].cevr"
		;
connectAttr "cbg_R_FK_Shoulder_rotateZ.a" "clipLibrary1.cel[0].cev[114].cevr"
		;
connectAttr "cbg_L_FK_Shoulder_rotateX.a" "clipLibrary1.cel[0].cev[115].cevr"
		;
connectAttr "cbg_L_FK_Shoulder_rotateY.a" "clipLibrary1.cel[0].cev[116].cevr"
		;
connectAttr "cbg_L_FK_Shoulder_rotateZ.a" "clipLibrary1.cel[0].cev[117].cevr"
		;
connectAttr "cbg_R_FK_Elbow_rotateZ.a" "clipLibrary1.cel[0].cev[118].cevr"
		;
connectAttr "cbg_L_FK_Elbow_rotateZ.a" "clipLibrary1.cel[0].cev[119].cevr"
		;
connectAttr "cbg_R_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[120].cevr"
		;
connectAttr "cbg_R_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[121].cevr"
		;
connectAttr "cbg_R_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[122].cevr"
		;
connectAttr "cbg_L_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[123].cevr"
		;
connectAttr "cbg_L_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[124].cevr"
		;
connectAttr "cbg_L_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[125].cevr"
		;
connectAttr "cbg_Thumb_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[126].cevr"
		;
connectAttr "cbg_Thumb_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[127].cevr"
		;
connectAttr "cbg_Thumb_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[128].cevr"
		;
connectAttr "Middle_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[129].cevr"
		;
connectAttr "Middle_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[130].cevr"
		;
connectAttr "Middle_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[131].cevr"
		;
connectAttr "cbg_Pelvis_rotateX.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "cbg_Pelvis_rotateY.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "cbg_Pelvis_rotateZ.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "cbg_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "cbg_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "cbg_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "cbg_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "cbg_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "cbg_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "Middle_R_rotateX.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "Middle_R_rotateY.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "Middle_R_rotateZ.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "cbg_Jaw_rotateX.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "cbg_Jaw_rotateY.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "cbg_Jaw_rotateZ.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "cbg_Spine_2_rotateX.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "cbg_Spine_2_rotateY.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "Spine_2_rotateZ.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "cbg_Neck_rotateX.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "cbg_Neck_rotateY.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "cbg_Neck_rotateZ.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "cbg_Head_rotateX.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "cbg_Head_rotateY.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "Head_rotateZ.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "cbg_Spine_1_rotateX.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "cbg_Spine_1_rotateY.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "Spine_1_rotateZ.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "Middle_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[159].cevr"
		;
connectAttr "Middle_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[160].cevr"
		;
connectAttr "Middle_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[161].cevr"
		;
connectAttr "cbg_Thumb_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[162].cevr"
		;
connectAttr "cbg_Thumb_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[163].cevr"
		;
connectAttr "cbg_Thumb_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[164].cevr"
		;
connectAttr "cbg_Middle_L_rotateX.a" "clipLibrary1.cel[0].cev[165].cevr"
		;
connectAttr "cbg_Middle_L_rotateY.a" "clipLibrary1.cel[0].cev[166].cevr"
		;
connectAttr "cbg_Middle_L_rotateZ.a" "clipLibrary1.cel[0].cev[167].cevr"
		;
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
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
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[38].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[39].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[40].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[41].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[42].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[43].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[44].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[45].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[46].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[47].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[48].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[49].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[50].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[51].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[52].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[53].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[54].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[54].olnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of cbg_driver_sway_left.ma
