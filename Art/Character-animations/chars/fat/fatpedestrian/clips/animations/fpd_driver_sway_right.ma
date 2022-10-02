//Maya ASCII 4.0 scene
//Name: fpd_driver_sway_right.ma
//Last modified: Fri, Aug 02, 2002 03:03:31 PM
requires maya "4.0";
requires "p3dmayaexp" "18.0";
requires "p3dSimpleShader" "18.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "fpd_driver_sway_rightSource";
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
		-1.7084450118300396 10.465 -1.7084450118300396 12.08 -1.7084450118300396;
createNode animCurveTL -n "cbg_Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.82121446776202978 6.9850000000000003 
		0.82121446776202978 10.465 0.82121446776202978 12.08 0.82121446776202978;
createNode animCurveTL -n "cbg_Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.6495856783017808 6.9850000000000003 
		1.6495856783017808 10.465 1.6495856783017808 12.08 1.6495856783017808;
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
		-1.2504784321605431 10.465 -1.2504784321605431 12.08 -1.2504784321605431;
createNode animCurveTL -n "cbg_Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.82533069850741669 6.9850000000000003 
		0.82533069850741669 10.465 0.82533069850741669 12.08 0.82533069850741669;
createNode animCurveTL -n "cbg_Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.6270503750293122 6.9850000000000003 
		1.6270503750293122 10.465 1.6270503750293122 12.08 1.6270503750293122;
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
		-1.4786421250535617 10.465 -1.4786421250535617 12.08 -1.4786421250535617;
createNode animCurveTL -n "cbg_Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.013846891275328 6.9850000000000003 
		1.013846891275328 10.465 1.013846891275328 12.08 1.013846891275328;
createNode animCurveTL -n "cbg_Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.2853416563090898 6.9850000000000003 
		1.2853416563090898 10.465 1.2853416563090898 12.08 1.2853416563090898;
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
createNode animCurveTL -n "cbg_Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.11125773965369234 1 0.10961278775455384 
		2 0.10578344659148342 3 0.10142469513541101 4 0.09817729757743876 5 0.097668818738640945 
		6 0.10153539065472955 7 0.11145996956691448 8 0.13010137506330863 9 0.1619925794794557 
		10 0.21557352682198683 11 0.33426248733494535 12 0.50703794236885702 13 0.54732716879883214 
		14 0.56367022363193453 15 0.5602477893795117 16 0.54030066890119888 17 0.50709646894934057 
		18 0.46400328007536301 19 0.4145554747811292 20 0.36239856102307616 21 0.31109897256154057 
		22 0.26387759240004555 23 0.22336572029043622 24 0.19148412919498811 25 0.1695280470697631 
		26 0.15625783809276897 27 0.14748289704490306 28 0.13950182933165536 29 0.12962891055390116 
		30 0.11629299707548228;
createNode animCurveTL -n "cbg_Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.50663668051467747 1 -0.50895068663493159 
		2 -0.51434999597681474 3 -0.52051781880183667 4 -0.5251289923330158 5 -0.52585228555375241 
		6 -0.5203608798774636 7 -0.50635006413467598 8 -0.4724978585310492 9 -0.4172265772470769 
		10 -0.3486872860971586 11 -0.27308628511404826 12 -0.25021510223381199 13 
		-0.24489215339095183 14 -0.24502926096149963 15 -0.24732369238098004 16 -0.25076566455796923 
		17 -0.25589587701031602 18 -0.26394528113507465 19 -0.27614214637677703 20 
		-0.29318851116356437 21 -0.31492662958315232 22 -0.34021538193842488 23 -0.36701245760172074 
		24 -0.39262336938151021 25 -0.4149513096941469 26 -0.43603713587070497 27 
		-0.45560318553976459 28 -0.47308012051290638 29 -0.48836489380776471 30 -0.50225983938311791;
createNode animCurveTL -n "cbg_Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.80863036971789259 1 0.80802765726081394 
		2 0.80658268074140427 3 0.80486599080010512 4 0.80353669873875111 5 0.80332463807725585 
		6 0.80491054288566666 7 0.80870369298982236 8 0.81429363048484027 9 0.81935498796237138 
		10 0.82197250653124099 11 0.83687512446452683 12 0.87000284012631823 13 0.86327287894832549 
		14 0.85842381028411585 15 0.85540379854804738 16 0.85337993427031322 17 0.85142383811928857 
		18 0.84870660623488703 19 0.8446550422150173 20 0.83906579299560902 21 0.83215970208638324 
		22 0.8245627163705308 23 0.81721650761778608 24 0.81124128234521509 25 0.80792568186771452 
		26 0.80791264980195776 27 0.80958532020316842 28 0.8112219281279468 29 0.81152987759113315 
		30 0.80971567985302251;
createNode animCurveTA -n "cbg_Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 28.533942700976652 1 28.392411261219014 
		2 28.063200865861411 3 27.688824218205063 4 27.410058555019798 5 27.366416715707835 
		6 27.698328503177137 7 28.551581891145833 8 31.016898395310672 9 35.39759613294153 
		10 40.185035640829824 11 43.498267213229731 12 44.881081272393558 13 43.631967912054712 
		14 42.038933986004267 15 40.242020507706748 16 38.310892534248765 17 36.289728234610784 
		18 34.220571695243038 19 32.157799085465335 20 30.173136588595501 21 28.353021772544768 
		22 26.791036744540108 23 25.578374252645926 24 24.795227326749924 25 24.57839419278908 
		26 25.121270452063754 27 26.078005974896119 28 27.108597753904085 29 27.961071189657531 
		30 28.46572165398743;
createNode animCurveTA -n "cbg_Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 34.630882542021425 1 34.506701972446308 
		2 34.217634045663345 3 33.888612749957154 4 33.643475264915345 5 33.605090194988463 
		6 33.896968676856325 7 34.646486737840128 8 37.14216129835804 9 40.96950240604275 
		10 44.300047861904964 11 45.170270635708299 12 43.150790349843021 13 43.5095932944932 
		14 43.534153347801741 15 43.260693722616303 16 42.785819775492072 17 42.213173639033876 
		18 41.639045026492418 19 41.140848084769637 20 40.767500121127902 21 40.532479518463532 
		22 40.410919058262607 23 40.341739348194928 24 40.235021862503707 25 39.943868351423248 
		26 39.25016561946719 27 38.240631243048398 28 37.074543021381523 29 35.916455009505079 
		30 34.903471960661022;
createNode animCurveTA -n "cbg_Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 101.46878748387553 1 101.44379258534012 
		2 101.38853041284919 3 101.33058193663366 4 101.29081917547164 5 101.28485594109557 
		6 101.33198858331184 7 101.47232712392437 8 103.27794048514171 9 106.58286053498576 
		10 108.10740746262823 11 100.83868450561982 12 84.845923449960864 13 78.947380520720685 
		14 75.230833905011295 15 73.374466932995418 16 73.118691640252209 17 74.185487337982835 
		18 76.292652429054883 19 79.162749805275055 20 82.526630660215261 21 86.123018365198405 
		22 89.695625024225208 23 92.988736399712266 24 95.741955073226762 25 97.761975009191772 
		26 99.244419613350871 27 100.24308015250203 28 100.82050398384598 29 101.11822357251464 
		30 101.35972202410289;
createNode animCurveTL -n "cbg_Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.24038332939039522 1 -0.24206082071922538 
		2 -0.24597826188252428 3 -0.2504587505292723 4 -0.25381205596458328 5 -0.25433831437399962 
		6 -0.25034467584465003 7 -0.24017752666219608 8 -0.22220223870379854 9 -0.19254880595767376 
		10 -0.14126342313579854 11 -0.034625526811132235 12 0.069176322986664762 
		13 0.079717199900712923 14 0.079863288355898732 15 0.074363145591693047 16 
		0.064720981247472623 17 0.050790831278303868 18 0.03178540035648169 19 0.0070953252233485389 
		20 -0.02312991935976683 21 -0.057677007865484312 22 -0.09424904474080506 
		23 -0.12969659930841901 24 -0.16042549147030313 25 -0.18284440151478848 26 
		-0.19635032623427862 27 -0.20487033133679292 28 -0.21242038645606556 29 -0.22199025403254197 
		30 -0.23529051372019397;
createNode animCurveTL -n "cbg_Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.46608580290834556 1 -0.46762495537483512 
		2 -0.47120897807068057 3 -0.47529075137627119 4 -0.47833383920041628 5 -0.47881051246792633 
		6 -0.47518705380672194 7 -0.46589039198053417 8 -0.42788137677571514 9 -0.36870865427614313 
		10 -0.32970437860778506 11 -0.38785816546174423 12 -0.58067552654158605 13 
		-0.63727553879032228 14 -0.66852768783736638 15 -0.67813305179673133 16 -0.66922905118050613 
		17 -0.64545415812547124 18 -0.61078822615528527 19 -0.56944031726703548 20 
		-0.52566091388370695 21 -0.48347070535387415 22 -0.44637569655697229 23 -0.41717136244450781 
		24 -0.39792717008302669 25 -0.39070518581191366 26 -0.39659721550913246 27 
		-0.41117388552973622 28 -0.42975577067003479 29 -0.44809939816101152 30 -0.46269763287707782;
createNode animCurveTL -n "cbg_Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.80349317534412279 1 0.80423032227946922 
		2 0.80592125172194473 3 0.80780332621556628 4 0.80917609725515383 5 0.80938877410039678 
		6 0.80775608939722987 7 0.80340013261530874 8 0.78731513055912772 9 0.75693167176681886 
		10 0.72448676021381575 11 0.7124316317713888 12 0.72359504019329901 13 0.73014924700459904 
		14 0.74035448754927491 15 0.75328618676261305 16 0.76810875063818163 17 0.78403253360745939 
		18 0.80020633234259964 19 0.81569976468742456 20 0.82957504636984591 21 0.84101467371607241 
		22 0.84945257914845285 23 0.85465489170462261 24 0.85671193915610433 25 0.85524824737381255 
		26 0.84846173363629673 27 0.83827120659007248 28 0.82666304046360695 29 0.81537621420659312 
		30 0.80590262070405216;
createNode animCurveTA -n "cbg_Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 9.0838892560813118 1 9.2721704799384614 
		2 9.7092753025736851 3 10.204897744144471 4 10.572934488013978 5 10.630473652669956 
		6 10.192334599273694 7 9.06037993670002 8 5.6602381263171946 9 -0.43842975451567739 
		10 -7.0750478193621067 11 -11.175955788811036 12 -11.92319603764175 13 -10.666761364211936 
		14 -8.8860992983414473 15 -6.7504994314888087 16 -4.3792674528886772 17 -1.8649837294370033 
		18 0.70896661247736759 19 3.255931467476644 20 5.6808354911060484 21 7.8817409572075681 
		22 9.7562288990435739 23 11.210229290864431 24 12.166638083032197 25 12.493847661508072 
		26 12.013732365120138 27 11.122312466171666 28 10.186679485415345 29 9.4604598222882377 
		30 9.1030992525645544;
createNode animCurveTA -n "cbg_Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -44.629378900476482 1 -44.524419295645252 
		2 -44.279696330347669 3 -44.000484663993106 4 -43.792007784509799 5 -43.759328967196538 
		6 -44.007584232070016 7 -44.642579423299914 8 -46.783161064700344 9 -49.914580847002533 
		10 -52.40130549102782 11 -52.677117488121482 12 -50.475643984581836 13 -51.043673243862749 
		14 -51.343104356087458 15 -51.380601578758458 16 -51.234353546946537 17 -50.99488065539699 
		18 -50.747432835757813 19 -50.558767739113186 20 -50.467315465331495 21 -50.476918631922814 
		22 -50.55478384826683 23 -50.634085459594509 24 -50.621153543580611 25 -50.358566875919387 
		26 -49.609631759463198 27 -48.49846389206018 28 -47.221211389587744 29 -45.971490954312699 
		30 -44.90733514645823;
createNode animCurveTA -n "cbg_Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -69.735314582665623 1 -69.81215341977753 
		2 -69.987439933097775 3 -70.180911676972187 4 -70.320915923705044 5 -70.34252043092205 
		6 -70.176077276029588 7 -69.725283398610372 8 -66.930791751552633 9 -61.827842684856968 
		10 -58.375723500157839 11 -64.721095594627542 12 -81.091869733889837 13 -87.106382040739405 
		14 -91.113535615592411 15 -93.403470508463116 16 -94.192448297985152 17 -93.717347718319388 
		18 -92.22435617867977 19 -89.960054227848119 20 -87.166815089734797 21 -84.082354247342707 
		22 -80.942652643302111 23 -77.987444837086855 24 -75.467159711750895 25 -73.559949496723135 
		26 -72.055820605039287 27 -70.982623061598943 28 -70.341046184045581 29 -70.022719575573149 
		30 -69.819005880768159;
createNode animCurveTL -n "Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.9908420079621203 6.9850000000000003 
		-1.9908420079621203 10.465 -1.9908420079621203 12.08 -1.9908420079621203;
createNode animCurveTL -n "Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.0110107466963401 6.9850000000000003 
		2.0110107466963401 10.465 2.0110107466963401 12.08 2.0110107466963401;
createNode animCurveTL -n "Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.6026565239254307 6.9850000000000003 
		1.6026565239254307 10.465 1.6026565239254307 12.08 1.6026565239254307;
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
		-1.2003575390128778 10.465 -1.2003575390128778 12.08 -1.2003575390128778;
createNode animCurveTL -n "Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.9860774243414616 6.9850000000000003 
		1.9860774243414616 10.465 1.9860774243414616 12.08 1.9860774243414616;
createNode animCurveTL -n "Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.5595002670347433 6.9850000000000003 
		1.5595002670347433 10.465 1.5595002670347433 12.08 1.5595002670347433;
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
		0.80217394619293847 10.465 0.80217394619293847 12.08 0.80217394619293847;
createNode animCurveTL -n "cbg_Left_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.44299574108883399 6.9850000000000003 
		-0.44299574108883399 10.465 -0.44299574108883399 12.08 -0.44299574108883399;
createNode animCurveTL -n "cbg_Left_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.5412845761155356 6.9850000000000003 
		-0.5412845761155356 10.465 -0.5412845761155356 12.08 -0.5412845761155356;
createNode animCurveTL -n "cbg_Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.49484451559913972 6.9850000000000003 
		-0.49484451559913972 10.465 -0.49484451559913972 12.08 -0.49484451559913972;
createNode animCurveTL -n "cbg_Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.71931626134224813 6.9850000000000003 
		-0.71931626134224813 10.465 -0.71931626134224813 12.08 -0.71931626134224813;
createNode animCurveTL -n "cbg_Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.66067307131502628 6.9850000000000003 
		-0.66067307131502628 10.465 -0.66067307131502628 12.08 -0.66067307131502628;
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
		-11.718954412173623 12.085000000000001 17.506560139138646 24.43 11.255949260876445 
		30.315000000000001 0;
createNode animCurveTA -n "cbg_Spine_2_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 6.9850000000000003 0 10.460000000000001 
		-9.9517050381206111 12.085000000000001 -6.812645811599193 24.43 2.3466362390264854 
		30.315000000000001 0;
createNode animCurveTA -n "cbg_Spine_2_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.5886647225957985 6.9850000000000003 
		-0.5886647225957985 10.460000000000001 2.847386791643725 12.085000000000001 
		16.133175122470846 24.43 -13.37536014657092 30.315000000000001 -0.5886647225957985;
	setAttr -s 6 ".kit[3:5]"  1 9 9;
	setAttr -s 6 ".kot[3:5]"  1 9 9;
	setAttr -s 6 ".kix[3:5]"  0.48922514915466309 0.90142399072647095 
		0.66020500659942627;
	setAttr -s 6 ".kiy[3:5]"  0.8721575140953064 -0.43293741345405579 
		0.75108546018600464;
	setAttr -s 6 ".kox[3:5]"  0.48922502994537354 0.90142399072647095 
		0.66020500659942627;
	setAttr -s 6 ".koy[3:5]"  0.87215757369995117 -0.43293741345405579 
		0.75108546018600464;
createNode animCurveTA -n "Spine_2_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.5058694957498595 6.9850000000000003 
		-2.5058694957498595 10.460000000000001 11.380954762433173 12.085000000000001 
		10.981954046983136 24.43 7.1732976692903714 30.315000000000001 -2.5058694957498595;
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
	setAttr -s 6 ".ktv[0:5]"  0 0 6.9850000000000003 0 10.460000000000001 
		-17.941030542344219 12.085000000000001 24.457107666226189 24.43 31.815802869831991 
		30.315000000000001 0;
createNode animCurveTA -n "cbg_Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6.9850000000000003 0 10.460000000000001 
		3.1607144000121865 24.43 -7.5710262762544591 30.315000000000001 0;
	setAttr -s 5 ".kit[2:4]"  1 1 9;
	setAttr -s 5 ".kot[2:4]"  1 1 9;
	setAttr -s 5 ".kix[2:4]"  0.80296283960342407 0.46723392605781555 
		0.82938379049301147;
	setAttr -s 5 ".kiy[2:4]"  0.59602904319763184 0.88413369655609131 
		0.55867922306060791;
	setAttr -s 5 ".kox[2:4]"  0.80296307802200317 0.46723392605781555 
		0.82938379049301147;
	setAttr -s 5 ".koy[2:4]"  0.59602874517440796 0.88413369655609131 
		0.55867922306060791;
createNode animCurveTA -n "Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 18.603314785497371 6.9850000000000003 
		18.603314785497371 10.460000000000001 28.267512817493859 24.43 19.819281925972316 
		30.315000000000001 18.603314785497371;
createNode animCurveTA -n "cbg_Spine_1_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.5315117770142568 6.9850000000000003 
		1.5315117770142568 10.460000000000001 3.6183047182632651 12.085000000000001 
		-4.1536824543105375 24.43 -4.167617951406501 30.315000000000001 1.5315117770142568;
createNode animCurveTA -n "cbg_Spine_1_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.7891971390395636 6.9850000000000003 
		-2.7891971390395636 10.460000000000001 1.1375054956917143 12.085000000000001 
		9.2661685512256629 24.43 10.284894203863521 30.315000000000001 -2.7891971390395636;
	setAttr -s 6 ".kit[0:5]"  9 9 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  9 9 1 1 1 9;
	setAttr -s 6 ".kix[2:5]"  0.43217399716377258 0.61109358072280884 
		0.81443345546722412 0.65189927816390991;
	setAttr -s 6 ".kiy[2:5]"  0.90179026126861572 0.79155838489532471 
		-0.58025699853897095 -0.75830554962158203;
	setAttr -s 6 ".kox[2:5]"  0.43217399716377258 0.61109358072280884 
		0.81443345546722412 0.65189927816390991;
	setAttr -s 6 ".koy[2:5]"  0.90179026126861572 0.79155838489532471 
		-0.58025699853897095 -0.75830554962158203;
createNode animCurveTA -n "Spine_1_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.1874045407638754 6.9850000000000003 
		1.1874045407638754 10.460000000000001 -0.20273836508780985 12.085000000000001 
		-5.3128699391958332 24.43 -3.534637425604215 30.315000000000001 1.1874045407638754;
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
	setAttr -s 2 ".st";
select -ne :hyperGraphLayout;
	setAttr ".cch" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".img" -type "string" "";
	setAttr ".ims" 1;
select -ne :ikSystem;
connectAttr "fpd_driver_sway_rightSource.st" "clipLibrary1.st[0]";
connectAttr "fpd_driver_sway_rightSource.du" "clipLibrary1.du[0]";
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
connectAttr "cbg_Right_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "cbg_Right_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "cbg_Right_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "cbg_Right_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "cbg_Right_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "cbg_Right_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "cbg_Left_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "cbg_Left_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "cbg_Left_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "cbg_Left_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "cbg_Left_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "cbg_Left_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[93].cevr"
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
// End of fpd_driver_sway_right.ma
