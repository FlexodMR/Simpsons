//Maya ASCII 4.0 scene
//Name: fpd_driver_reverse.ma
//Last modified: Fri, Aug 02, 2002 02:57:20 PM
requires maya "4.0";
requires "p3dmayaexp" "18.0";
requires "p3dSimpleShader" "18.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "fpd_driver_reverseSource";
	setAttr ".ihi" 0;
	setAttr ".du" 40;
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
	setAttr -s 41 ".ktv[0:40]"  0 -0.99433739766662688 1 -0.99433739766662688 
		2 -0.99433739766662688 3 -0.99433739766662688 4 -0.99433739766662688 5 -0.99433739766662688 
		6 -0.99433739766662688 7 -0.99433739766662688 8 -0.99433739766662688 9 -0.99433739766662688 
		10 -0.99433739766662688 11 -0.99433739766662688 12 -0.99433739766662688 13 
		-0.99433739766662688 14 -0.99433739766662688 15 -0.99433739766662688 16 -0.99433739766662688 
		17 -0.99433739766662688 18 -0.99433739766662688 19 -0.99433739766662688 20 
		-0.99433739766662688 21 -0.99433739766662688 22 -0.99433739766662688 23 -0.99433739766662688 
		24 -0.99433739766662688 25 -0.99433739766662688 26 -0.99433739766662688 27 
		-0.99433739766662688 28 -0.99433739766662688 29 -0.99433739766662688 30 -0.99433739766662688 
		31 -0.99433739766662688 32 -0.99433739766662688 33 -0.99433739766662688 34 
		-0.99433739766662688 35 -0.99433739766662688 36 -0.99433739766662688 37 -0.99433739766662688 
		38 -0.99433739766662688 39 -0.99433739766662688 40 -0.99433739766662688;
createNode animCurveTL -n "cbg_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0;
createNode animCurveTL -n "cbg_Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0.88021938078782869 1 0.88021938078782869 
		2 0.88021938078782869 3 0.88021938078782869 4 0.88021938078782869 5 0.88021938078782869 
		6 0.88021938078782869 7 0.88021938078782869 8 0.88021938078782869 9 0.88021938078782869 
		10 0.88021938078782869 11 0.88021938078782869 12 0.88021938078782869 13 0.88021938078782869 
		14 0.88021938078782869 15 0.88021938078782869 16 0.88021938078782869 17 0.88021938078782869 
		18 0.88021938078782869 19 0.88021938078782869 20 0.88021938078782869 21 0.88021938078782869 
		22 0.88021938078782869 23 0.88021938078782869 24 0.88021938078782869 25 0.88021938078782869 
		26 0.88021938078782869 27 0.88021938078782869 28 0.88021938078782869 29 0.88021938078782869 
		30 0.88021938078782869 31 0.88021938078782869 32 0.88021938078782869 33 0.88021938078782869 
		34 0.88021938078782869 35 0.88021938078782869 36 0.88021938078782869 37 0.88021938078782869 
		38 0.88021938078782869 39 0.88021938078782869 40 0.88021938078782869;
createNode animCurveTA -n "cbg_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0;
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
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
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
	setAttr -s 4 ".ktv[0:3]"  0 -1.7084450118300396 8 -1.7084450118300396 
		31 -1.7084450118300396 40 -1.7084450118300396;
createNode animCurveTL -n "cbg_Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.82121446776202978 8 0.82121446776202978 
		31 0.82121446776202978 40 0.82121446776202978;
createNode animCurveTL -n "cbg_Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.6495856783017808 8 1.6495856783017808 
		31 1.6495856783017808 40 1.6495856783017808;
createNode animCurveTA -n "cbg_Right_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 15 0 31 0 40 0;
createNode animCurveTA -n "cbg_Right_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 15 0 31 0 40 0;
createNode animCurveTA -n "cbg_Right_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 15 0 31 0 40 0;
createNode animCurveTL -n "cbg_Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.2504784321605431 8 -1.2504784321605431 
		31 -1.2504784321605431 40 -1.2504784321605431;
createNode animCurveTL -n "cbg_Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.82533069850741669 8 0.82533069850741669 
		31 0.82533069850741669 40 0.82533069850741669;
createNode animCurveTL -n "cbg_Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.6270503750293122 8 1.6270503750293122 
		31 1.6270503750293122 40 1.6270503750293122;
createNode animCurveTA -n "cbg_Left_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 15 0 31 0 40 0;
createNode animCurveTA -n "cbg_Left_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 15 0 31 0 40 0;
createNode animCurveTA -n "cbg_Left_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 15 0 31 0 40 0;
createNode animCurveTA -n "cbg_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_Right_Toe_Hoop_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_Right_Toe_Hoop_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_Right_Toe_Hoop_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_Left_Toe_Hoop_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_Left_Toe_Hoop_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_Left_Toe_Hoop_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
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
	setAttr -s 4 ".ktv[0:3]"  0 -1.4786421250535617 8 -1.4786421250535617 
		31 -1.4786421250535617 40 -1.4786421250535617;
createNode animCurveTL -n "cbg_Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.013846891275328 8 1.013846891275328 
		31 1.013846891275328 40 1.013846891275328;
createNode animCurveTL -n "cbg_Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.2853416563090898 8 1.2853416563090898 
		31 1.2853416563090898 40 1.2853416563090898;
createNode animCurveTA -n "cbg_Character_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -25.655237914214105 8 -25.655237914214105 
		15 -25.655237914214105 31 -25.655237914214105 40 -25.655237914214105;
createNode animCurveTA -n "cbg_Character_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.0975263990809512 8 2.0975263990809512 
		15 2.0975263990809512 31 2.0975263990809512 40 2.0975263990809512;
createNode animCurveTA -n "cbg_Character_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.53932213336905666 8 -0.53932213336905666 
		15 -0.53932213336905666 31 -0.53932213336905666 40 -0.53932213336905666;
createNode animCurveTA -n "cbg_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_L_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_L_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_L_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0.11125773965369234 1 0.045468597043158636 
		2 -0.11903281740801105 3 -0.33726278181898722 4 -0.49179061227394871 5 -0.54106415844062783 
		6 -0.58168492182519971 7 -0.59651869008742409 8 -0.57353352980990624 9 -0.534759930514207 
		10 -0.51803559349243555 11 -0.51890446922551459 12 -0.53125029416294511 13 
		-0.54856613724274272 14 -0.56465184672826318 15 -0.57386328108027473 16 -0.57683534152125282 
		17 -0.57808328370970741 18 -0.57806763825968133 19 -0.57723444046315042 20 
		-0.57602493797051679 21 -0.57488109624454031 22 -0.57424684156806927 23 -0.57456509820874435 
		24 -0.57627065677961353 25 -0.57977875513229182 26 -0.58546896333188858 27 
		-0.59366354713731007 28 -0.60459895541712894 29 -0.61838846701546668 30 -0.63497339985820445 
		31 -0.65405973411203822 32 -0.60302510822695199 33 -0.51460930448372499 34 
		-0.41049342172698772 35 -0.3123863959056527 36 -0.23338001432540467 37 -0.15743790201664185 
		38 -0.067226295065808586 39 0.029285237416447105 40 0.11125773965369234;
createNode animCurveTL -n "Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 -0.50663668051467714 1 -0.13201363980966849 
		2 0.26538550821792667 3 0.57110006713523986 4 0.69101437460145154 5 0.59500786012604978 
		6 0.38871213315563652 7 0.17962114871129153 8 0.07804967756621338 9 0.087016395610798436 
		10 0.090651003385859921 11 0.090173990187222372 12 0.087113879537882119 13 
		0.083073847476472978 14 0.07959286792320136 15 0.078107523239084597 16 0.078194843269812256 
		17 0.078474636924923902 18 0.078900064622842839 19 0.079426469045547995 20 
		0.080009255562929774 21 0.080602649965921952 22 0.081159320805808552 23 0.081630857169257859 
		24 0.081969089690539856 25 0.082128233150120661 26 0.082067812174683397 27 
		0.081756303632838437 28 0.081175382269835547 29 0.080324576123860972 30 0.079226004654333132 
		31 0.077928657541568858 32 0.12724947217443763 33 0.22683119445671776 34 
		0.32704624362189433 35 0.38088566610677876 36 0.34603365591213203 37 0.19640073099982927 
		38 -0.03081606962492069 39 -0.2817583765200648 40 -0.50663668051467714;
createNode animCurveTL -n "Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0.80863036971789226 1 0.56128693550085995 
		2 0.31212982023253405 3 0.1672089179837036 4 0.20764169004938596 5 0.3550575965549288 
		6 0.48716618875610351 7 0.61708172030488639 8 0.72339611239396018 9 0.77790237391734229 
		10 0.79979561310673208 11 0.79910626493684478 12 0.78360551733741601 13 0.76052908388027618 
		14 0.73759515317381108 15 0.72326357138918407 16 0.71775786292049559 17 0.71497136168125142 
		18 0.71419757955363339 19 0.71471630039118994 20 0.71580435280063115 21 0.71674178999593519 
		22 0.71681352656719011 23 0.71530642207387762 24 0.71150181526481671 25 0.70466359965512793 
		26 0.69402209536429271 27 0.67875423034687798 28 0.6579609331142231 29 0.63064322174389509 
		30 0.59567934417043977 31 0.55180660725783837 32 0.53350417099586656 33 0.53953662176138129 
		34 0.5768114460687267 35 0.63949347190213335 36 0.70582348592611044 37 0.7429909931178591 
		38 0.75647674239404239 39 0.77189122080472983 40 0.80863036971789226;
createNode animCurveTA -n "Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 28.533942700976652 1 55.961796963848379 
		2 34.009339324491208 3 -18.299752817151845 4 -51.803847554735775 5 -82.341567061365694 
		6 -95.333464192252649 7 -93.988629658067339 8 -93.184239770594701 9 -98.810343754061279 
		10 -101.09929307962501 11 -100.93230108971873 12 -99.182168699365107 13 -96.722357131224683 
		14 -94.429677119904866 15 -93.184239770594701 16 -92.833682371953486 17 -92.614729533163896 
		18 -92.491327589020671 19 -92.427664082923684 20 -92.388100809677084 21 -92.337145028909063 
		22 -92.23945707211864 23 -92.059890839773985 24 -91.763563373818371 25 -91.315950788919949 
		26 -90.683010406324755 27 -89.831333142212458 28 -88.728336395013955 29 -87.342516258403279 
		30 -85.643789077964584 31 -83.603965712885909 32 -101.04595724960836 33 -136.3597475589736 
		34 12.457740301828883 35 173.54610358975171 36 166.25383229340881 37 3.1908874153389957 
		38 -6.950489415165424 39 16.213090410882753 40 28.533942700976652;
createNode animCurveTA -n "Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 34.630882542021425 1 20.624971522436233 
		2 34.840235156212046 3 5.6273920950194656 4 -32.074371598397732 5 -37.226780375022841 
		6 -16.176443727803925 7 8.8575662108639026 8 21.203198689955865 9 23.545289016255566 
		10 24.529321417304018 11 24.491525849769058 12 23.785132186165701 13 22.767035492449047 
		14 21.790613090621378 15 21.203198689955865 16 20.966763225216308 17 20.800823914869799 
		18 20.685776591026599 19 20.601903192142625 20 20.529388444987884 21 20.448322608763323 
		22 20.33869133409668 23 20.180356465632176 24 19.953031689900538 25 19.636254318338512 
		26 19.209349229455054 27 18.651373127196145 28 17.941016911813403 29 17.056431363991514 
		30 15.974927143897352 31 14.672485713923134 32 15.327671144964301 33 16.702170863651524 
		34 161.64516593647144 35 28.747408298625402 36 48.33492912659046 37 103.41620501683947 
		38 66.904097799489975 39 38.426138082291651 40 34.630882542021425;
createNode animCurveTA -n "Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 101.46878748387553 1 54.928069994181847 
		2 -25.480858324619096 3 -91.827666197452956 4 -104.46595394615123 5 -85.770601519564778 
		6 -64.693879701883503 7 -45.922327463277234 8 -34.920296699871436 9 -34.554398144946298 
		10 -34.450431958653539 11 -34.492000317920819 12 -34.615935918782618 13 -34.772225277766452 
		14 -34.899828157434698 15 -34.920296699871436 16 -34.864372991736616 17 -34.818330035588488 
		18 -34.778700089434899 19 -34.742197054664324 20 -34.705779315273602 21 -34.66670023493684 
		22 -34.622545510543119 23 -34.57125661240535 24 -34.511139433498087 25 -34.440856977806774 
		26 -34.359404513415384 27 -34.266065460404398 28 -34.160347162648186 29 -34.04189888634653 
		30 -33.910421640554091 31 -33.765592765140831 32 -45.976342085126468 33 -74.189100074167314 
		34 71.721934353425524 35 -135.77487632230341 36 -147.93776308262642 37 47.379597050406005 
		38 37.317388436765953 39 70.120485539949271 40 101.46878748387553;
createNode animCurveTL -n "Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 -0.24038332939039522 1 -0.11745155186742352 
		2 -0.0029738028018668674 3 0.091305878857640438 4 0.157314543490222 5 0.19253396566706557 
		6 0.20050445096221212 7 0.18976664869202772 8 0.17165899058261444 9 0.15656804130321988 
		10 0.14913778930532179 11 0.14925298560281278 12 0.15439767335763563 13 0.1614721962643656 
		14 0.16784142612166578 15 0.17165899058261444 16 0.17325643620686612 17 0.17408883708793624 
		18 0.17437653692324104 19 0.17431822947300959 20 0.17410621541387841 21 0.1739350839142923 
		22 0.17400379098402213 23 0.17451115210066553 24 0.17564475811107896 25 0.1775632614114285 
		26 0.1803718710250117 27 0.18409076393007801 28 0.18861601585155691 29 0.19367266495289528 
		30 0.19875978224582247 31 0.2030881283940642 32 0.20560061925271528 33 0.2020885373195874 
		34 0.18675337165314418 35 0.15485806366628324 36 0.10388120004741921 37 0.034235138114822664 
		38 -0.050619011379583016 39 -0.14468167438629181 40 -0.24038332939039522;
createNode animCurveTL -n "Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 -0.46608580290834556 1 -0.4510032556422186 
		2 -0.4318701460881586 3 -0.41080569781919318 4 -0.39033803488323188 5 -0.37294361889130445 
		6 -0.36054205437645764 7 -0.35416310109305399 8 -0.35395603115384711 9 -0.35616466890832849 
		10 -0.35703808173382667 11 -0.35671943873511042 12 -0.35570647092668867 13 
		-0.35458595323562181 14 -0.35387006744689581 15 -0.35395603115384711 16 -0.35450600374422458 
		17 -0.35496739437474284 18 -0.35536548080499969 19 -0.35572897394423919 20 
		-0.35608707465994388 21 -0.35646777225842213 22 -0.35689736116166898 23 -0.35740117903983076 
		24 -0.35800556292944308 25 -0.3587409798269775 26 -0.35964621450555656 27 
		-0.36077338815406662 28 -0.36219343340796983 29 -0.36400145948421397 30 -0.36632120071315577 
		31 -0.36930745217225608 32 -0.37380785208169237 33 -0.38071693555137637 34 
		-0.39013186233525399 35 -0.40181320147920113 36 -0.41513800760198494 37 -0.42919018145483628 
		38 -0.44294340256768749 39 -0.45546707094840272 40 -0.46608580290834556;
createNode animCurveTL -n "Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0.80349317534412279 1 0.73056428140210639 
		2 0.62822405228003642 3 0.50103567366480573 4 0.3584529190221642 5 0.2129137477297175 
		6 0.077250457384374013 7 -0.037588227804171627 8 -0.12365377839756192 9 -0.17523735785408576 
		10 -0.19655329519397596 11 -0.19590628200857141 12 -0.1808477567818717 13 
		-0.15873087395620103 14 -0.13707915103994667 15 -0.12365377839756192 16 -0.11857092837093007 
		17 -0.11623437385473437 18 -0.11593080535485556 19 -0.11694124377150474 20 
		-0.11854502907721055 21 -0.12002203219868349 22 -0.12065319835594011 23 -0.11971938770675238 
		24 -0.11649851090828961 25 -0.11026116289413125 26 -0.10026533930144538 27 
		-0.085751382208496235 28 -0.065939055762720786 29 -0.040029610881016281 30 
		-0.0072168679032928651 31 0.033287292479503211 32 0.090885257917368706 33 
		0.17114002624763458 34 0.26821939316193621 35 0.37509749952384641 36 0.48390237205290426 
		37 0.58676363278394217 38 0.67692488529642481 39 0.74977795760888744 40 0.80349317534412279;
createNode animCurveTA -n "Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 9.0838892560813118 1 -4.2564960701905923 
		2 -17.610983608724663 3 -30.172947065075498 4 -41.426775219938996 5 -51.120235442522798 
		6 -59.15683596236066 7 -65.490678753132542 8 -70.052738021382453 9 -72.760453159703488 
		10 -73.895439782771703 11 -73.867066697039775 12 -73.073466302401982 13 -71.909213716074419 
		14 -70.769369205330847 15 -70.052738021382453 16 -69.768731045099557 17 -69.633138402629584 
		18 -69.607395474432522 19 -69.652568170120631 20 -69.729572595798672 21 -69.799297882989123 
		22 -69.822630333633882 23 -69.760380562868676 24 -69.573114729472252 25 -69.220886275590502 
		26 -68.66285581768777 27 -67.856773697282748 28 -66.7582816171155 29 -65.319965627199394 
		30 -63.490060619703854 31 -61.210663724582403 32 -57.915323075138012 33 -53.170402371958879 
		34 -47.087869780414891 35 -39.762149490785852 36 -31.296446744203251 37 -21.844276332428691 
		38 -11.663620247516409 39 -1.1647152251608539 40 9.0838892560813118;
createNode animCurveTA -n "Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 -44.629378900476482 1 -42.227556426489365 
		2 -38.67187087135239 3 -34.046763152916284 4 -28.638021998868844 5 -22.858689165166183 
		6 -17.177948951779818 7 -12.071272527030514 8 -7.9878508049862589 9 -5.4256354960313598 
		10 -4.3523583728592472 11 -4.3869873631800305 12 -5.1493052492235671 13 -6.2584388966188023 
		14 -7.3321611367128661 15 -7.9878508049862589 16 -8.2328781709916452 17 -8.3516132775580818 
		18 -8.3774923922668858 19 -8.3437046675889306 20 -8.2833176370336119 21 -8.2293455810831393 
		22 -8.2147597194092583 23 -8.2724408749980984 24 -8.4350749534576241 25 -8.7349893038130784 
		26 -9.2039237139707417 27 -9.8727231776578233 28 -10.770930026448696 29 -11.926239356147015 
		30 -13.363761785525579 31 -15.105007887505201 32 -17.526968179277368 33 -20.817226638385261 
		34 -24.69537708820484 35 -28.86692956139964 36 -33.03233981823832 37 -36.902838134549164 
		38 -40.22663797609848 39 -42.825144013506218 40 -44.629378900476482;
createNode animCurveTA -n "Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 -69.735314582665623 1 -61.512467503124299 
		2 -53.554457365356591 3 -46.440471900755512 4 -40.494576716835837 5 -35.80977520231211 
		6 -32.346024667197369 7 -30.020813904930762 8 -28.764515889248646 9 -28.239679419083679 
		10 -28.021483195058998 11 -28.00295978488758 12 -28.123123767498253 13 -28.331949792185565 
		14 -28.570465035003725 15 -28.764515889248646 16 -28.880968562365712 17 -28.949417132903875 
		18 -28.982409659870747 19 -28.99289514765178 20 -28.993921003425495 21 -28.998458866419053 
		22 -29.019360161417197 23 -29.069440524769352 24 -29.161692663049621 25 -29.309630187359907 
		26 -29.527770618134824 27 -29.832274539152184 28 -30.241770835128964 29 -30.778416883578505 
		30 -31.469270200945928 31 -32.348087932616508 32 -33.657297135601716 33 -35.634254625652012 
		34 -38.331317360176548 35 -41.811565168762996 36 -46.122588756206909 37 -51.257446051623752 
		38 -57.104109672474003 39 -63.401310561370941 40 -69.735314582665623;
createNode animCurveTL -n "Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.9908420079621203 4 -2.5545892017431844 
		8 -2.7018544743764825 31 -2.7018544743764825 36 -2.6104743221949809 40 -1.9908420079621203;
	setAttr -s 6 ".kit[3:5]"  3 9 9;
	setAttr -s 6 ".kot[2:5]"  3 9 9 9;
createNode animCurveTL -n "Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.0110107466963401 4 2.5921768167938293 
		8 1.9236164755772012 31 1.9236164755772012 36 2.4927816282278132 40 2.0110107466963401;
	setAttr -s 6 ".kit[3:5]"  3 9 9;
	setAttr -s 6 ".kot[2:5]"  3 9 9 9;
createNode animCurveTL -n "Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.6026565239254305 4 0.075885776582418796 
		8 0.073015880141884634 31 0.073015880141884634 40 1.6026565239254305;
	setAttr -s 5 ".kit[1:4]"  1 9 3 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  0.01433044858276844 0.95273411273956299 
		1 0.0019612414762377739;
	setAttr -s 5 ".kiy[1:4]"  -0.999897301197052 -0.30380538105964661 
		0 0.99999809265136719;
	setAttr -s 5 ".kox[1:4]"  0.060311399400234222 0.95273411273956299 
		0.0069731459952890873 0.0019612414762377739;
	setAttr -s 5 ".koy[1:4]"  0.99817961454391479 -0.30380538105964661 
		0.99997568130493164 0.99999809265136719;
createNode animCurveTA -n "Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 41.988352198761007 4 -3.0918422707011852 
		8 -61.980878154097937 15 -61.980878154097937 31 -61.980878154097937 36 -140.11505013308496 
		40 41.988352198761007;
	setAttr -s 7 ".kit[4:6]"  1 9 9;
	setAttr -s 7 ".kot[3:6]"  3 1 9 9;
	setAttr -s 7 ".kix[4:6]"  0.98742735385894775 0.1631111204624176 
		0.04191424697637558;
	setAttr -s 7 ".kiy[4:6]"  -0.15807329118251801 0.98660773038864136 
		0.99912118911743164;
	setAttr -s 7 ".kox[4:6]"  0.98742735385894775 0.1631111204624176 
		0.04191424697637558;
	setAttr -s 7 ".koy[4:6]"  -0.15807357430458069 0.98660773038864136 
		0.99912118911743164;
createNode animCurveTA -n "Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 60.276142834404972 4 -31.76687042307681 
		8 -40.744091732295573 15 -40.744091732295573 31 -40.744091732295573 36 47.941504083415325 
		40 60.276142834404972;
	setAttr -s 7 ".kit[4:6]"  1 9 9;
	setAttr -s 7 ".kot[3:6]"  3 1 9 9;
	setAttr -s 7 ".kix[4:6]"  0.97353059053421021 0.16774055361747742 
		0.52653956413269043;
	setAttr -s 7 ".kiy[4:6]"  0.22855684161186218 0.98583120107650757 
		0.85015064477920532;
	setAttr -s 7 ".kox[4:6]"  0.97353059053421021 0.16774055361747742 
		0.52653956413269043;
	setAttr -s 7 ".koy[4:6]"  0.22855678200721741 0.98583120107650757 
		0.85015064477920532;
createNode animCurveTA -n "Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 107.75114880137443 4 -122.91278459692376 
		8 -25.125866402622091 15 -25.125866402622091 31 -25.125866402622091 36 -100.42292237127577 
		40 107.75114880137443;
	setAttr -s 7 ".kit[2:6]"  1 9 3 9 9;
	setAttr -s 7 ".kot[2:6]"  1 9 9 9 9;
	setAttr -s 7 ".kix[2:6]"  0.68623155355453491 1 1 0.12828929722309113 
		0.036672681570053101;
	setAttr -s 7 ".kiy[2:6]"  0.72738313674926758 0 0 0.9917367696762085 
		0.99932730197906494;
	setAttr -s 7 ".kox[2:6]"  0.68623143434524536 1 0.47011923789978027 
		0.12828929722309113 0.036672681570053101;
	setAttr -s 7 ".koy[2:6]"  0.7273833155632019 0 -0.88260293006896973 
		0.9917367696762085 0.99932730197906494;
createNode animCurveTL -n "Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.2003575390128778 8 -1.2003575390128778 
		31 -1.2003575390128778 40 -1.2003575390128778;
createNode animCurveTL -n "Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.9860774243414616 8 1.9860774243414616 
		31 1.9860774243414616 40 1.9860774243414616;
createNode animCurveTL -n "Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.5595002670347433 8 1.5595002670347433 
		31 1.5595002670347433 40 1.5595002670347433;
createNode animCurveTA -n "Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -18.983406447510582 8 -18.983406447510582 
		15 -18.983406447510582 31 -18.983406447510582 40 -18.983406447510582;
createNode animCurveTA -n "Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -67.32660964705903 8 -67.32660964705903 
		15 -67.32660964705903 31 -67.32660964705903 40 -67.32660964705903;
createNode animCurveTA -n "Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -49.77690804472806 8 -49.77690804472806 
		15 -49.77690804472806 31 -49.77690804472806 40 -49.77690804472806;
createNode animCurveTL -n "cbg_Left_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.80217394619293847 8 0.10327849526542043 
		31 0.10327849526542043 40 0.80217394619293847;
	setAttr -s 4 ".kit[1:3]"  1 3 9;
	setAttr -s 4 ".kot[1:3]"  3 9 9;
	setAttr -s 4 ".kix[1:3]"  0.37497201561927795 1 0.0042924489825963974;
	setAttr -s 4 ".kiy[1:3]"  0.9270361065864563 0 0.99999076128005981;
createNode animCurveTL -n "cbg_Left_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.44299574108883399 8 -0.25319782653746042 
		31 -0.25319782653746042 40 -0.44299574108883399;
	setAttr -s 4 ".kit[2:3]"  3 9;
	setAttr -s 4 ".kot[1:3]"  3 9 9;
createNode animCurveTL -n "cbg_Left_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.5412845761155356 8 -0.16849087275106908 
		31 -0.16849087275106908 40 -0.5412845761155356;
	setAttr -s 4 ".kit[2:3]"  3 9;
	setAttr -s 4 ".kot[1:3]"  3 9 9;
createNode animCurveTL -n "cbg_Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.49484451559913972 8 -0.45753603249057345 
		9 -0.45287247180140583 31 -0.45287247180140583 40 -0.49484451559913972;
createNode animCurveTL -n "cbg_Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.71931626134224813 8 -0.15833149443840752 
		9 -0.088208395053068017 31 -0.088208395053068017 40 -0.71931626134224813;
createNode animCurveTL -n "cbg_Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.66067307131502628 8 0.12180371694270278 
		9 0.21961332344463472 31 0.21961332344463472 40 -0.66067307131502628;
createNode animCurveTA -n "cbg_R_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.061808866237340665;
createNode animCurveTA -n "cbg_R_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -59.058178941076754;
createNode animCurveTA -n "cbg_R_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 16.57914742975785;
createNode animCurveTA -n "cbg_L_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 12.253734489678925;
createNode animCurveTA -n "cbg_L_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -65.746751280844975;
createNode animCurveTA -n "cbg_L_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_R_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 15.711328223519061;
createNode animCurveTA -n "cbg_L_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 8.5572674112203657;
createNode animCurveTA -n "cbg_R_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_R_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_R_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_L_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_L_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_L_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.2533422302317216 8 8.2533422302317216 
		15 8.2533422302317216 31 8.2533422302317216 40 8.2533422302317216;
createNode animCurveTA -n "cbg_Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 23.263402056531085 8 23.263402056531085 
		15 23.263402056531085 31 23.263402056531085 40 23.263402056531085;
createNode animCurveTA -n "cbg_Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 20.166277752815617 8 20.166277752815617 
		15 20.166277752815617 31 20.166277752815617 40 20.166277752815617;
createNode animCurveTA -n "Middle_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 15 0 31 0 40 0;
createNode animCurveTA -n "Middle_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 15 0 31 0 40 0;
createNode animCurveTA -n "Middle_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 79.802705892979176 8 79.802705892979176 
		15 79.802705892979176 31 79.802705892979176 40 79.802705892979176;
createNode animCurveTA -n "cbg_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cbg_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 15 0 31 0 40 0;
createNode animCurveTA -n "cbg_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 15 0 31 0 40 0;
createNode animCurveTA -n "cbg_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.994403295754109 8 13.994403295754109 
		15 13.994403295754109 31 13.994403295754109 40 13.994403295754109;
createNode animCurveTA -n "cbg_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 15 0 31 0 40 0;
createNode animCurveTA -n "cbg_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 15 0 31 0 40 0;
createNode animCurveTA -n "cbg_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.994403295754109 8 13.994403295754109 
		15 13.994403295754109 31 13.994403295754109 40 13.994403295754109;
createNode animCurveTA -n "Middle_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0.10828409751691585 15 0 
		31 0 40 0;
createNode animCurveTA -n "Middle_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 -0.44615263279196626 15 0 
		31 0 40 0;
createNode animCurveTA -n "Middle_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 71.026803426671577 4 7.4918997080913075 
		8 1.2502579136866563 15 0.74533880174153744 31 0.74533880174153744 36 1.9076175197254976 
		40 71.026803426671577;
createNode animCurveTA -n "cbg_Jaw_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 15 0 31 0 40 0;
createNode animCurveTA -n "cbg_Jaw_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 15 0 31 0 40 0;
createNode animCurveTA -n "cbg_Jaw_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 15 0 31 0 40 0;
createNode animCurveTA -n "cbg_Spine_2_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 -62.54180562091323 15 -62.54180562091323 
		31 -52.326644013501102 40 0;
createNode animCurveTA -n "cbg_Spine_2_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.5886647225957985 8 17.115200585208626 
		15 17.115200585208626 31 13.603933999719564 40 -0.5886647225957985;
createNode animCurveTA -n "Spine_2_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.50586949574986 8 8.7888835261340237 
		15 8.7888835261340237 31 7.0758459852475468 40 -2.50586949574986;
	setAttr -s 5 ".kit[1:4]"  1 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  0.99888604879379272 0.9992404580116272 
		0.97314250469207764 0.87345701456069946;
	setAttr -s 5 ".kiy[1:4]"  0.047187801450490952 -0.038967963308095932 
		-0.23020343482494354 -0.48690122365951538;
	setAttr -s 5 ".kox[1:4]"  0.99888604879379272 0.9992404580116272 
		0.97314250469207764 0.87345701456069946;
	setAttr -s 5 ".koy[1:4]"  0.04718780517578125 -0.038967963308095932 
		-0.23020343482494354 -0.48690122365951538;
createNode animCurveTA -n "cbg_Neck_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 15 0 31 0 40 0;
createNode animCurveTA -n "cbg_Neck_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 15 0 31 0 40 0;
createNode animCurveTA -n "cbg_Neck_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 15 0 31 0 40 0;
createNode animCurveTA -n "cbg_Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 147.7875752446424 8 156.81865580592148 
		15 156.81865580592148 31.115 130.61825789922278 36 22.450120790328711 40 
		0;
createNode animCurveTA -n "cbg_Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 69.914309945311246 8 74.434025194900713 
		15 74.434025194900713 31 67.103482266995755 36 33.97829704129559 40 0;
createNode animCurveTA -n "Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 18.603314785497371 4 165.75952055784754 
		8 126.98309673803745 15 126.98309673803745 31.06 109.04521618489859 36 33.056797667125302 
		40 18.603314785497371;
createNode animCurveTA -n "cbg_Spine_1_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.5315117770142568 8 -8.9801723468887662 
		15 -8.9801723468887662 31 -8.9801723468887662 40 1.5315117770142568;
createNode animCurveTA -n "cbg_Spine_1_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.7891971390395636 8 -0.40746356618359725 
		15 -0.40746356618359725 31 -0.40746356618359725 40 -2.7891971390395636;
createNode animCurveTA -n "Spine_1_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.1874045407638754 8 1.5971043826691012 
		15 1.5971043826691012 31 1.5971043826691012 40 1.1874045407638754;
createNode animCurveTA -n "Middle_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.90377949588789308 4 5.831056201126942 
		8 -3.0923609961964149 15 -3.0923609961964149 31 -3.0923609961964149 36 6.6153683558414551 
		40 0.90377949588789308;
createNode animCurveTA -n "Middle_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -7.8984463198172383 4 -3.4620738148783956 
		8 -5.6582716625502911 15 -5.6582716625502911 31 -5.6582716625502911 36 -1.7536233357984916 
		40 -7.8984463198172383;
createNode animCurveTA -n "Middle_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 80.26632241086908 4 4.7969927305984807 
		8 71.764150236305937 15 71.764150236305937 31 71.764150236305937 36 -9.0508451348375711 
		40 80.26632241086908;
createNode animCurveTA -n "cbg_Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.423754966968488 8 10.423754966968488 
		15 10.423754966968488 31 10.423754966968488 40 10.423754966968488;
createNode animCurveTA -n "cbg_Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.7228482558439 8 27.7228482558439 
		15 27.7228482558439 31 27.7228482558439 40 27.7228482558439;
createNode animCurveTA -n "cbg_Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 21.576484776388224 8 21.576484776388224 
		15 21.576484776388224 31 21.576484776388224 40 21.576484776388224;
createNode animCurveTA -n "cbg_Middle_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 15 0 31 0 40 0;
createNode animCurveTA -n "cbg_Middle_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 15 0 31 0 40 0;
createNode animCurveTA -n "cbg_Middle_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.911632519594587 8 27.911632519594587 
		15 27.911632519594587 31 27.911632519594587 40 27.911632519594587;
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
connectAttr "fpd_driver_reverseSource.st" "clipLibrary1.st[0]";
connectAttr "fpd_driver_reverseSource.du" "clipLibrary1.du[0]";
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
// End of fpd_driver_reverse.ma
