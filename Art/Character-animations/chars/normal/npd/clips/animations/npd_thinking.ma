//Maya ASCII 4.0 scene
//Name: npd_thinking.ma
//Last modified: Mon, Feb 17, 2003 02:30:31 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "npd_thinkingSource";
	setAttr ".ihi" 0;
	setAttr ".du" 100;
	setAttr ".ci" no;
createNode animCurveTL -n "npd_Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 1;
createNode animCurveTL -n "npd_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTL -n "npd_Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 -0.060083816922849878;
createNode animCurveTL -n "npd_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTL -n "npd_Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTU -n "npd_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTU -n "npd_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTU -n "npd_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTU -n "npd_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 95 1 100 0;
	setAttr -s 4 ".kit[0:3]"  3 2 2 3;
	setAttr -s 4 ".kot[0:3]"  3 2 2 3;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 95 1 100 0;
	setAttr -s 4 ".kit[0:3]"  3 2 2 3;
	setAttr -s 4 ".kot[0:3]"  3 2 2 3;
createNode animCurveTU -n "npd_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTU -n "npd_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTL -n "npd_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTL -n "npd_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTL -n "npd_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTL -n "npd_Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 -0.22948570846143723;
createNode animCurveTL -n "Right_Foot_Hoop_translateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.13964711708164665 16 0.13964711708164665 
		22 0.18434154906913075 25 0.13964711708164665 29 0.13964711708164665 34 0.15202747474217984 
		37 0.13964711708164665 50 0.13964711708164665 62 0.1378963593953989 88 0.1378963593953989 
		100 0.13964711708164665;
	setAttr -s 11 ".kit[2:10]"  9 3 3 9 3 3 3 
		3 3;
	setAttr -s 11 ".kot[2:10]"  9 3 3 9 3 3 3 
		3 3;
createNode animCurveTL -n "npd_Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 -0.064904406754016042;
createNode animCurveTA -n "Right_Foot_Hoop_rotateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 16 0 22 -18.917444470195793 
		25 0 29 0 34 -5.6024739392502898 37 0 50 0 62 0.79226904145708898 88 0.79226904145708898 
		100 0;
	setAttr -s 11 ".kit[5:10]"  9 9 3 3 3 3;
	setAttr -s 11 ".kot[1:10]"  1 3 3 3 9 3 3 
		3 3 3;
	setAttr -s 11 ".kox[1:10]"  0.99449610710144043 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 11 ".koy[1:10]"  -0.10477379709482193 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTA -n "npd_Right_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 -12.031576538165265;
createNode animCurveTA -n "npd_Right_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTL -n "npd_Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0.10825868069997467;
createNode animCurveTL -n "npd_Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0.13791212285411131;
createNode animCurveTL -n "npd_Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 -0.10454507572235824;
createNode animCurveTA -n "npd_Left_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_Left_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 18.635117457566011;
createNode animCurveTA -n "npd_Left_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTL -n "npd_Right_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTL -n "npd_Right_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTL -n "npd_Right_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 1;
createNode animCurveTL -n "npd_Left_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTL -n "npd_Left_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTL -n "npd_Left_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 1;
createNode animCurveTL -n "Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.0052529700667724097 14 -0.030756398785928896 
		48 -0.036774997039785789 60 -0.13465090339168634 86 -0.024217072333354791 
		100 -0.0052529700667724097;
	setAttr -s 6 ".kit[0:5]"  3 9 1 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 1 9 9 3;
	setAttr -s 6 ".kix[2:5]"  0.24752064049243927 0.71014845371246338 
		0.1024986058473587 1;
	setAttr -s 6 ".kiy[2:5]"  -0.96888262033462524 0.70405197143554688 
		0.99473315477371216 0;
	setAttr -s 6 ".kox[2:5]"  0.24752096831798553 0.71014845371246338 
		0.1024986058473587 1;
	setAttr -s 6 ".koy[2:5]"  -0.96888256072998047 0.70405197143554688 
		0.99473315477371216 0;
createNode animCurveTL -n "Character_Hoop_translateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  14 0.9912550528809112 48 0.99120412684100945 
		60 0.99499028485781749 86 0.99499028485781749 100 0.9912550528809112;
	setAttr -s 5 ".kit[0:4]"  9 1 1 9 3;
	setAttr -s 5 ".kot[0:4]"  9 1 1 9 3;
	setAttr -s 5 ".kix[1:4]"  0.99544626474380493 0.98842084407806396 
		0.9629284143447876 1;
	setAttr -s 5 ".kiy[1:4]"  0.095324315130710602 0.15173758566379547 
		-0.26975706219673157 0;
	setAttr -s 5 ".kox[1:4]"  0.99544626474380493 0.98842066526412964 
		0.9629284143447876 1;
	setAttr -s 5 ".koy[1:4]"  0.09532427042722702 0.15173843502998352 
		-0.26975706219673157 0;
createNode animCurveTL -n "Character_Hoop_translateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 14 0.0077770279475376028 48 
		0.0089999900177527969 60 -0.029423608986724536 86 0.004983337056563405 100 
		0;
	setAttr -s 6 ".kit[0:5]"  3 1 1 9 1 3;
	setAttr -s 6 ".kot[0:5]"  3 1 1 9 1 3;
	setAttr -s 6 ".kix[1:5]"  0.77958440780639648 0.73992252349853516 
		0.95322209596633911 0.90291005373001099 1;
	setAttr -s 6 ".kiy[1:5]"  0.62629717588424683 -0.67269206047058105 
		-0.30227074027061462 0.42982950806617737 0;
	setAttr -s 6 ".kox[1:5]"  0.77958416938781738 0.73992067575454712 
		0.95322209596633911 0.90291047096252441 1;
	setAttr -s 6 ".koy[1:5]"  0.6262974739074707 -0.67269414663314819 
		-0.30227074027061462 0.42982861399650574 0;
createNode animCurveTA -n "npd_Character_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_Character_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "Character_Hoop_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  14 1.5273506473629141 48 1.2953906634023735 
		60 -2.2701334503400394 86 0 100 1.5273506473629141;
	setAttr -s 5 ".kit[0:4]"  9 1 3 1 3;
	setAttr -s 5 ".kot[0:4]"  9 1 3 1 3;
	setAttr -s 5 ".kix[1:4]"  0.999611496925354 1 0.99831700325012207 
		1;
	setAttr -s 5 ".kiy[1:4]"  -0.027871806174516678 0 0.057992585003376007 
		0;
	setAttr -s 5 ".kox[1:4]"  0.999611496925354 1 0.99831700325012207 
		1;
	setAttr -s 5 ".koy[1:4]"  -0.027871806174516678 0 0.057992588728666306 
		0;
createNode animCurveTA -n "npd_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_L_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_L_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_L_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTL -n "Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.22164053326398034 16 0.52588537528673795 
		50 0.36732259274780832 62 0.062074125016377303 88 0.062074125016377303 100 
		-0.22164053326398034;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.9417076481617882 16 0.24261047541359035 
		50 0.0045135107202548853 62 -0.46942381579058678 88 -0.46942381579058678 
		100 -0.9417076481617882;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.038362195289875119 16 0.45535171955418435 
		50 0.38285941913512583 62 0.22696860849171463 88 0.22696860849171463 100 
		0.038362195289875119;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 6.7230119492284173 16 4.4197345729753632 
		50 4.8201520000774494 62 5.6812282590278436 88 5.6812282590278436 100 6.7230119492284173;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 19.839511008631867 16 22.646910800576748 
		50 22.158853296581952 62 21.109311747439843 88 21.109311747439843 100 19.839511008631867;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 76.90743997913691 16 76.603079733540241 
		50 76.655991791448727 62 76.769776342877591 88 76.769776342877591 100 76.90743997913691;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "npd_Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0.20623790699604494;
createNode animCurveTL -n "npd_Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 -0.94615818397708606;
createNode animCurveTL -n "npd_Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0.023808763748733922;
createNode animCurveTA -n "npd_Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 8.1910546202722809;
createNode animCurveTA -n "npd_Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 -16.680769289981995;
createNode animCurveTA -n "npd_Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 -64.609749241846473;
createNode animCurveTL -n "npd_Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 -0.8448236677023373;
createNode animCurveTL -n "npd_Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 1.5117481219250299;
createNode animCurveTL -n "npd_Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 -0.097994651149805143;
createNode animCurveTA -n "npd_Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 5.4739599453216474;
createNode animCurveTA -n "npd_Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 8.5874521608419823;
createNode animCurveTA -n "npd_Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 74.754744621954103;
createNode animCurveTL -n "npd_Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0.61083301393139333;
createNode animCurveTL -n "npd_Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 1.4644416293758407;
createNode animCurveTL -n "npd_Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0.14314299916678522;
createNode animCurveTA -n "npd_Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 16.226511010665405;
createNode animCurveTA -n "npd_Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 -8.513966085499284;
createNode animCurveTA -n "npd_Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 -68.213989601412422;
createNode animCurveTL -n "npd_Left_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTL -n "npd_Left_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTL -n "npd_Left_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 -1;
createNode animCurveTL -n "Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.10167917362943303 16 -0.73810969304757312 
		50 -0.62746827761432478 62 -0.38953982331974019 88 -0.38953982331974019 100 
		-0.10167917362943303;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.40762644910266188 16 -0.36008784014046685 
		50 -0.36835227560145628 62 -0.3861245027015201 88 -0.3861245027015201 100 
		-0.40762644910266188;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.93129112588482243 16 -0.26526062035167752 
		50 -0.38104789696603014 62 -0.6300422506279183 88 -0.6300422506279183 100 
		-0.93129112588482243;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "R_FK_Shoulder_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.253734489678925 16 -37.366494547638922 
		50 -37.993501838790245 56 -4.5572205384299966 62 -6.1909837740625866 88 -6.1909837740625866 
		100 12.253734489678925;
	setAttr -s 7 ".kit[0:6]"  3 1 1 1 9 1 3;
	setAttr -s 7 ".kot[0:6]"  3 1 1 1 9 1 3;
	setAttr -s 7 ".kix[1:6]"  0.99971431493759155 0.99974626302719116 
		0.99891889095306396 0.99964290857315063 0.99916380643844604 1;
	setAttr -s 7 ".kiy[1:6]"  -0.023900974541902542 0.022525284439325333 
		0.046487588435411453 -0.026722842827439308 0.040886238217353821 0;
	setAttr -s 7 ".kox[1:6]"  0.99971431493759155 0.99974626302719116 
		0.99891889095306396 0.99964290857315063 0.99916380643844604 1;
	setAttr -s 7 ".koy[1:6]"  -0.023900998756289482 0.02252531424164772 
		0.046487588435411453 -0.026722842827439308 0.040886260569095612 0;
createNode animCurveTA -n "R_FK_Shoulder_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -65.746751280844961 16 -5.9039825360424478 
		50 -4.4192090043709999 56 -2.731134681043403 62 -20.279827517874502 88 -20.279827517874502 
		100 -65.746751280844961;
	setAttr -s 7 ".kit[0:6]"  3 1 9 1 1 1 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 1 1 1 3;
	setAttr -s 7 ".kix[1:6]"  0.99848842620849609 0.99913865327835083 
		0.99815982580184937 0.99914556741714478 0.99954098463058472 1;
	setAttr -s 7 ".kiy[1:6]"  0.054961852729320526 0.041496708989143372 
		-0.060637757182121277 -0.041329190135002136 -0.030295988544821739 0;
	setAttr -s 7 ".kox[1:6]"  0.99848848581314087 0.99913865327835083 
		0.99815982580184937 0.99914556741714478 0.99954098463058472 1;
	setAttr -s 7 ".koy[1:6]"  0.054961703717708588 0.041496708989143372 
		-0.060637742280960083 -0.041329149156808853 -0.030295960605144501 0;
createNode animCurveTA -n "R_FK_Shoulder_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 3.871449260799477e-015 16 109.67972007935933 
		50 111.48053898332854 56 79.462118288292316 62 96.414413390666056 88 96.414413390666056 
		100 3.871449260799477e-015;
	setAttr -s 7 ".kit[0:6]"  3 1 1 1 1 1 3;
	setAttr -s 7 ".kot[0:6]"  3 1 1 1 1 1 3;
	setAttr -s 7 ".kix[1:6]"  0.99860656261444092 0.99955946207046509 
		0.99857199192047119 0.99883198738098145 0.99735945463180542 1;
	setAttr -s 7 ".kiy[1:6]"  0.052772019058465958 -0.029678817838430405 
		-0.053422417491674423 0.048318751156330109 -0.072622932493686676 0;
	setAttr -s 7 ".kox[1:6]"  0.99860662221908569 0.99955946207046509 
		0.99857199192047119 0.99883198738098145 0.99735945463180542 1;
	setAttr -s 7 ".koy[1:6]"  0.052771836519241333 -0.029678825289011002 
		-0.053422540426254272 0.048318739980459213 -0.072622872889041901 0;
createNode animCurveTA -n "L_FK_Shoulder_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.061808866237337522 18 -4.996588609324399 
		52 -5.0816921502730095 58 12.77993589815498 64 -6.0188443996937568 90 -6.0188443996937568 
		100 -0.061808866237337522;
	setAttr -s 7 ".kit[0:6]"  3 1 1 9 1 1 3;
	setAttr -s 7 ".kot[0:6]"  3 1 1 9 1 1 3;
	setAttr -s 7 ".kix[1:6]"  0.99998968839645386 0.99995028972625732 
		0.99916499853134155 0.99996465444564819 0.99996930360794067 1;
	setAttr -s 7 ".kiy[1:6]"  -0.0045390785671770573 0.0099690761417150497 
		-0.040856838226318359 -0.0084087355062365532 0.0078332005068659782 0;
	setAttr -s 7 ".kox[1:6]"  0.99998968839645386 0.99995028972625732 
		0.99916499853134155 0.99996465444564819 0.99996930360794067 1;
	setAttr -s 7 ".koy[1:6]"  -0.0045390771701931953 0.0099690798670053482 
		-0.040856838226318359 -0.0084087401628494263 0.0078332051634788513 0;
createNode animCurveTA -n "L_FK_Shoulder_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -59.058178941076754 18 -33.725591023005073 
		52 -33.272731146510637 58 -26.216607353903047 64 -33.144840286769899 90 -33.144840286769899 
		100 -59.058178941076754;
	setAttr -s 7 ".kit[0:6]"  3 1 1 9 1 1 3;
	setAttr -s 7 ".kot[0:6]"  3 1 1 9 1 1 3;
	setAttr -s 7 ".kix[1:6]"  0.99987536668777466 0.99987351894378662 
		0.99998444318771362 0.99996083974838257 0.99989789724349976 1;
	setAttr -s 7 ".kiy[1:6]"  0.015786044299602509 0.015904413536190987 
		0.005580204539000988 -0.0088467095047235489 -0.014289409853518009 0;
	setAttr -s 7 ".kox[1:6]"  0.99987536668777466 0.99987351894378662 
		0.99998444318771362 0.99996083974838257 0.99989789724349976 1;
	setAttr -s 7 ".koy[1:6]"  0.015786055475473404 0.015904413536190987 
		0.005580204539000988 -0.0088467104360461235 -0.01428942009806633 0;
createNode animCurveTA -n "L_FK_Shoulder_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.579147429757843 18 79.577639961991196 
		52 81.140704012364225 58 64.872217245627695 64 82.787625339019158 90 82.787625339019158 
		100 16.579147429757843;
	setAttr -s 7 ".kit[0:6]"  3 1 1 9 1 1 3;
	setAttr -s 7 ".kot[0:6]"  3 1 1 9 1 1 3;
	setAttr -s 7 ".kix[1:6]"  0.99832528829574585 0.9999161958694458 
		0.99742799997329712 0.99989610910415649 0.99917292594909668 1;
	setAttr -s 7 ".kiy[1:6]"  0.057850152254104614 -0.012946427799761295 
		0.071675673127174377 0.014412504620850086 -0.040663447231054306 0;
	setAttr -s 7 ".kox[1:6]"  0.99832528829574585 0.9999161958694458 
		0.99742799997329712 0.99989610910415649 0.99917292594909668 1;
	setAttr -s 7 ".koy[1:6]"  0.057850092649459839 -0.01294642873108387 
		0.071675673127174377 0.014412523247301579 -0.040663488209247589 0;
createNode animCurveTA -n "R_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.5572674112203622 16 86.590712866087728 
		50 88.426065638738976 56 86.242130081646962 62 81.24741764161665 88 81.24741764161665 
		100 8.5572674112203622;
	setAttr -s 7 ".kit[0:6]"  3 1 9 9 9 1 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 9 9 1 3;
	setAttr -s 7 ".kix[1:6]"  0.99654418230056763 0.99998956918716431 
		0.95428210496902466 0.99667710065841675 0.9999350905418396 1;
	setAttr -s 7 ".kiy[1:6]"  0.083064667880535126 -0.0045628906227648258 
		-0.29890751838684082 -0.08145422488451004 -0.011393418535590172 0;
	setAttr -s 7 ".kox[1:6]"  0.99654418230056763 0.99998956918716431 
		0.95428210496902466 0.99667710065841675 0.9999350905418396 1;
	setAttr -s 7 ".koy[1:6]"  0.083064645528793335 -0.0045628906227648258 
		-0.29890751838684082 -0.08145422488451004 -0.011393411085009575 0;
createNode animCurveTA -n "L_FK_Elbow_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.711328223519057 19 84.274604912846527 
		53 85.418312544754272 59 78.490824231517294 65 62.647493819837592 91 62.647493819837592 
		100 15.711328223519057;
	setAttr -s 7 ".kit[0:6]"  3 1 9 9 1 1 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 9 1 1 3;
	setAttr -s 7 ".kix[1:6]"  0.99941897392272949 0.99714630842208862 
		0.70938575267791748 0.99988210201263428 0.99978160858154297 1;
	setAttr -s 7 ".kiy[1:6]"  0.034084673970937729 -0.075493462383747101 
		-0.70482045412063599 0.01535438559949398 -0.020897040143609047 0;
	setAttr -s 7 ".kox[1:6]"  0.99941897392272949 0.99714630842208862 
		0.70938575267791748 0.99988210201263428 0.99978160858154297 1;
	setAttr -s 7 ".koy[1:6]"  0.034084685146808624 -0.075493462383747101 
		-0.70482045412063599 0.015354398638010025 -0.020897040143609047 0;
createNode animCurveTA -n "R_FK_Wrist_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 16 -89.23469156075106 50 -88.965806790659968 
		56 -64.64067100094897 62 -9.0085064870862368 88 -9.0085064870862368 100 0;
	setAttr -s 7 ".kit[0:6]"  3 1 1 9 1 9 3;
	setAttr -s 7 ".kot[0:6]"  3 1 1 9 1 9 3;
	setAttr -s 7 ".kix[1:6]"  0.99967694282531738 0.99958634376525879 
		0.27553653717041016 0.99947476387023926 0.99238407611846924 1;
	setAttr -s 7 ".kiy[1:6]"  0.025417767465114594 0.0287591852247715 
		0.96129059791564941 0.03240605816245079 0.12318210303783417 0;
	setAttr -s 7 ".kox[1:6]"  0.99967688322067261 0.99958634376525879 
		0.27553653717041016 0.99947476387023926 0.99238407611846924 1;
	setAttr -s 7 ".koy[1:6]"  0.025417953729629517 0.028759192675352097 
		0.96129059791564941 0.032406099140644073 0.12318210303783417 0;
createNode animCurveTA -n "R_FK_Wrist_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 16 -2.1568690181753367 50 -2.2223131615750473 
		56 -13.123813205420968 62 -38.055803341427172 88 -38.055803341427172 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 1 1 9 1 1 3;
	setAttr -s 7 ".kot[0:6]"  3 1 1 9 1 1 3;
	setAttr -s 7 ".kix[1:6]"  0.99999529123306274 0.99975574016571045 
		0.53880143165588379 0.99973618984222412 0.99967706203460693 1;
	setAttr -s 7 ".kiy[1:6]"  -0.0030718571506440639 -0.022099953144788742 
		-0.84243279695510864 -0.02296898327767849 0.025413116440176964 0;
	setAttr -s 7 ".kox[1:6]"  0.99999529123306274 0.99975574016571045 
		0.53880143165588379 0.99973618984222412 0.99967706203460693 1;
	setAttr -s 7 ".koy[1:6]"  -0.0030718552879989147 -0.022099947556853294 
		-0.84243279695510864 -0.022969018667936325 0.02541310153901577 0;
createNode animCurveTA -n "R_FK_Wrist_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 16 28.853948340524877 50 29.708827906094765 
		56 31.498616005606685 62 35.59190400300028 88 35.59190400300028 100 0;
	setAttr -s 7 ".kit[0:6]"  3 1 9 9 1 1 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 9 1 1 3;
	setAttr -s 7 ".kix[1:6]"  0.99952536821365356 0.99940133094787598 
		0.96859687566757202 0.99999994039535522 0.99989539384841919 1;
	setAttr -s 7 ".kiy[1:6]"  0.030806178227066994 0.034597892314195633 
		0.24863651394844055 0.00035231371293775737 -0.014465834945440292 0;
	setAttr -s 7 ".kox[1:6]"  0.99952536821365356 0.99940133094787598 
		0.96859687566757202 0.99999994039535522 0.99989533424377441 1;
	setAttr -s 7 ".koy[1:6]"  0.030806183815002441 0.034597892314195633 
		0.24863651394844055 0.00035231508081778884 -0.014465860091149807 0;
createNode animCurveTA -n "L_FK_Wrist_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 19 -90.159059577282719 53 -92.054964512871436 
		59 -67.570210237516164 65 -11.572994187279695 91 -11.572994187279695 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 1 1 9 1 1 3;
	setAttr -s 7 ".kot[0:6]"  3 1 1 9 1 1 3;
	setAttr -s 7 ".kix[1:6]"  0.99916243553161621 0.99874043464660645 
		0.27387541532516479 0.99987447261810303 0.99982792139053345 1;
	setAttr -s 7 ".kiy[1:6]"  -0.040919065475463867 0.050174850970506668 
		0.96176517009735107 0.015845602378249168 -0.018552215769886971 0;
	setAttr -s 7 ".kox[1:6]"  0.99916249513626099 0.99874043464660645 
		0.27387541532516479 0.99987447261810303 0.99982792139053345 1;
	setAttr -s 7 ".koy[1:6]"  -0.040918923914432526 0.050174843519926071 
		0.96176517009735107 0.015845628455281258 -0.018552215769886971 0;
createNode animCurveTA -n "L_FK_Wrist_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 19 -2.3150038642762212 53 -2.3160709707928526 
		59 -7.5569242983181137 65 -19.54288064138245 91 -19.54288064138245 100 0;
	setAttr -s 7 ".kit[0:6]"  3 1 1 9 1 1 3;
	setAttr -s 7 ".kot[0:6]"  3 1 1 9 1 1 3;
	setAttr -s 7 ".kix[1:6]"  1 0.99999737739562988 0.79936212301254272 
		0.99999642372131348 0.99998503923416138 1;
	setAttr -s 7 ".kiy[1:6]"  -0.00010139827645616606 0.0022807205095887184 
		-0.60084962844848633 -0.0026723137125372887 0.0054732109420001507 0;
	setAttr -s 7 ".kox[1:6]"  1 0.99999737739562988 0.79936212301254272 
		0.99999642372131348 0.99998503923416138 1;
	setAttr -s 7 ".koy[1:6]"  -0.00010139831283595413 0.0022807242348790169 
		-0.60084962844848633 -0.0026722992770373821 0.0054732211865484715 0;
createNode animCurveTA -n "L_FK_Wrist_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 19 6.8249366417476303 53 6.8538995884988392 
		59 18.212366746087035 65 44.189450628586677 91 44.189450628586677 100 0;
	setAttr -s 7 ".kit[0:6]"  3 1 1 9 1 1 3;
	setAttr -s 7 ".kot[0:6]"  3 1 1 9 1 1 3;
	setAttr -s 7 ".kix[1:6]"  0.99999994039535522 0.99989539384841919 
		0.52314656972885132 0.99972045421600342 0.99932420253753662 1;
	setAttr -s 7 ".kiy[1:6]"  0.00029891706071794033 0.014464305713772774 
		0.85224276781082153 0.023644682019948959 -0.036757130175828934 0;
	setAttr -s 7 ".kox[1:6]"  0.99999994039535522 0.99989539384841919 
		0.52314656972885132 0.99972045421600342 0.99932420253753662 1;
	setAttr -s 7 ".koy[1:6]"  0.00029892023303546011 0.014464297331869602 
		0.85224276781082153 0.023644696921110153 -0.036757122725248337 0;
createNode animCurveTA -n "Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  50 10.423754966968488 62 7.7345395887176229 
		88 7.7345395887176229 100 10.423754966968488;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  50 27.722848255843903 62 39.353337765044174 
		88 39.353337765044174 100 27.722848255843903;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  50 21.576484776388227 62 20.998878908074921 
		88 20.998878908074921 100 21.576484776388227;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "npd_Middle_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_Middle_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "Middle_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  50 27.080064458283051 62 84.997397908619021 
		88 84.997397908619021 100 27.080064458283051;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "npd_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 13.994403295754109;
createNode animCurveTA -n "npd_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 13.994403295754109;
createNode animCurveTA -n "npd_Middle_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_Middle_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "Middle_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  50 27.911632519594587 62 68.872546074178004 
		88 68.872546074178004 100 27.911632519594587;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "npd_Jaw_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_Jaw_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_Jaw_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "Spine_2_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  50 0 62 -0.66805894317438608 88 
		-0.66805894317438608 100 0;
	setAttr -s 4 ".kit[1:3]"  1 9 3;
	setAttr -s 4 ".kot[1:3]"  1 9 3;
	setAttr -s 4 ".kix[1:3]"  0.99998956918716431 0.9999576210975647 
		1;
	setAttr -s 4 ".kiy[1:3]"  -0.0045666135847568512 0.0092047369107604027 
		0;
	setAttr -s 4 ".kox[1:3]"  0.99998956918716431 0.9999576210975647 
		1;
	setAttr -s 4 ".koy[1:3]"  -0.0045666112564504147 0.0092047369107604027 
		0;
createNode animCurveTA -n "npd_Spine_2_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "Spine_2_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 16 2.1311620370562814 50 2.4994142951933482 
		62 4.6654369392297834 88 4.6654369392297834 100 0;
	setAttr -s 6 ".kit[0:5]"  3 1 1 9 1 3;
	setAttr -s 6 ".kot[0:5]"  3 1 1 9 1 3;
	setAttr -s 6 ".kix[1:5]"  0.9997633695602417 0.99981456995010376 
		0.99955493211746216 0.99969220161437988 1;
	setAttr -s 6 ".kiy[1:5]"  0.021754279732704163 0.019255299121141434 
		0.029832158237695694 -0.024809474125504494 0;
	setAttr -s 6 ".kox[1:5]"  0.9997633695602417 0.99981456995010376 
		0.99955493211746216 0.99969220161437988 1;
	setAttr -s 6 ".koy[1:5]"  0.021754277870059013 0.019255297258496284 
		0.029832158237695694 -0.024809474125504494 0;
createNode animCurveTA -n "Neck_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 14 26.948460617942192 48 34.835161049291642 
		60 -41.237003248289064 86 -41.237003248289064 100 0;
	setAttr -s 6 ".kit[0:5]"  3 1 1 1 1 3;
	setAttr -s 6 ".kot[0:5]"  3 1 1 1 1 3;
	setAttr -s 6 ".kix[1:5]"  0.95619958639144897 0.99783271551132202 
		0.97779703140258789 0.99753439426422119 1;
	setAttr -s 6 ".kiy[1:5]"  0.29271557927131653 -0.065801560878753662 
		-0.20955421030521393 0.070179015398025513 0;
	setAttr -s 6 ".kox[1:5]"  0.9561995267868042 0.99783271551132202 
		0.97779703140258789 0.99753439426422119 1;
	setAttr -s 6 ".koy[1:5]"  0.29271560907363892 -0.065801441669464111 
		-0.20955425500869751 0.070178993046283722 0;
createNode animCurveTA -n "Neck_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 14 10.80960725653264 48 13.19123114343345 
		60 4.3085339042094519 86 4.3085339042094519 100 0;
	setAttr -s 6 ".kit[0:5]"  3 1 1 1 1 3;
	setAttr -s 6 ".kot[0:5]"  3 1 1 1 1 3;
	setAttr -s 6 ".kix[1:5]"  0.99780464172363281 0.99998325109481812 
		0.99988639354705811 0.99988764524459839 1;
	setAttr -s 6 ".kiy[1:5]"  0.06622622162103653 0.0057839700020849705 
		-0.015072593465447426 -0.014991767704486847 0;
	setAttr -s 6 ".kox[1:5]"  0.99780464172363281 0.99998325109481812 
		0.99988639354705811 0.99988764524459839 1;
	setAttr -s 6 ".koy[1:5]"  0.066226236522197723 0.0057839672081172466 
		-0.015072592534124851 -0.014991769567131996 0;
createNode animCurveTA -n "Neck_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 14 -21.546896188311798 48 -25.240571274691039 
		60 18.604454091883497 86 18.604454091883497 100 0;
	setAttr -s 6 ".kit[0:5]"  3 1 1 1 1 3;
	setAttr -s 6 ".kot[0:5]"  3 1 1 1 1 3;
	setAttr -s 6 ".kix[1:5]"  0.98883485794067383 0.99998337030410767 
		0.99904483556747437 0.99857568740844727 1;
	setAttr -s 6 ".kiy[1:5]"  -0.14901542663574219 0.005766499787569046 
		0.043697115033864975 -0.053353570401668549 0;
	setAttr -s 6 ".kox[1:5]"  0.98883485794067383 0.99998337030410767 
		0.99904483556747437 0.99857568740844727 1;
	setAttr -s 6 ".koy[1:5]"  -0.14901545643806458 0.0057665100321173668 
		0.043697100132703781 -0.053353574126958847 0;
createNode animCurveTA -n "npd_Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 -4.9367554394300077;
createNode animCurveTA -n "npd_Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 -8.6986303327609935;
createNode animCurveTA -n "npd_Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 17.455917002855632;
createNode animCurveTA -n "Spine_1_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  50 0 62 -1.2564524909752091 88 
		-1.2564524909752091 100 0;
	setAttr -s 4 ".kit[1:3]"  1 9 3;
	setAttr -s 4 ".kot[1:3]"  1 9 3;
	setAttr -s 4 ".kix[1:3]"  0.99999898672103882 0.99985015392303467 
		1;
	setAttr -s 4 ".kiy[1:3]"  -0.0014268377562984824 0.01730995811522007 
		0;
	setAttr -s 4 ".kox[1:3]"  0.99999898672103882 0.99985015392303467 
		1;
	setAttr -s 4 ".koy[1:3]"  -0.0014268415980041027 0.01730995811522007 
		0;
createNode animCurveTA -n "Spine_1_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  50 0 62 0.014135747974148143 88 
		0.014135747974148143 100 0;
	setAttr -s 4 ".kit[1:3]"  1 9 3;
	setAttr -s 4 ".kot[1:3]"  1 9 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  9.6627896709833294e-005 -0.0001947752753039822 
		0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  9.6627860330045223e-005 -0.0001947752753039822 
		0;
createNode animCurveTA -n "Spine_1_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 16 1.9514592358355098 50 2.2886599125868741 
		62 2.9799025690958914 88 2.9799025690958914 100 0;
	setAttr -s 6 ".kit[0:5]"  3 1 9 9 1 3;
	setAttr -s 6 ".kot[0:5]"  3 1 9 9 1 3;
	setAttr -s 6 ".kix[1:5]"  0.99979007244110107 0.99993151426315308 
		0.99995464086532593 0.99997270107269287 1;
	setAttr -s 6 ".kiy[1:5]"  0.020490268245339394 0.011705539189279079 
		0.009524141438305378 -0.0073889940977096558 0;
	setAttr -s 6 ".kox[1:5]"  0.99979007244110107 0.99993151426315308 
		0.99995464086532593 0.99997270107269287 1;
	setAttr -s 6 ".koy[1:5]"  0.020490264520049095 0.011705539189279079 
		0.009524141438305378 -0.0073889852501451969 0;
createNode animCurveTA -n "npd_Middle_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_Middle_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "Middle_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  50 33.429092416277157 62 81.243579340495145 
		88 81.243579340495145 100 33.429092416277157;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.2533422302317216 16 -17.674937457033032 
		50 -17.833301096478056 56 -3.1684042036287252 62 -16.194123631755591 88 -16.194123631755591 
		100 8.2533422302317216;
	setAttr -s 7 ".kit[0:6]"  3 1 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 9 9 9 3;
	setAttr -s 7 ".kix[1:6]"  1 0.98244422674179077 0.9974520206451416 
		0.97803282737731934 0.94767600297927856 1;
	setAttr -s 7 ".kiy[1:6]"  0 0.18655641376972198 0.071340367197990417 
		-0.20845091342926025 0.31923371553421021 0;
	setAttr -s 7 ".kox[1:6]"  1 0.98244422674179077 0.9974520206451416 
		0.97803282737731934 0.94767600297927856 1;
	setAttr -s 7 ".koy[1:6]"  0 0.18655641376972198 0.071340367197990417 
		-0.20845091342926025 0.31923371553421021 0;
createNode animCurveTA -n "Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 23.263402056531085 16 17.664712222410962 
		50 17.481736682944508 56 25.523866905864168 62 21.688734331238155 88 21.688734331238155 
		100 23.263402056531085;
	setAttr -s 7 ".kit[0:6]"  3 1 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 9 9 9 3;
	setAttr -s 7 ".kix[1:6]"  0.99998211860656738 0.99474990367889404 
		0.98356610536575317 0.99803686141967773 0.99976468086242676 1;
	setAttr -s 7 ".kiy[1:6]"  -0.0059803090989589691 0.10233598947525024 
		0.18054822087287903 -0.06262902170419693 0.021692108362913132 0;
	setAttr -s 7 ".kox[1:6]"  0.99998211860656738 0.99474990367889404 
		0.98356610536575317 0.99803686141967773 0.99976468086242676 1;
	setAttr -s 7 ".koy[1:6]"  -0.0059803086332976818 0.10233598947525024 
		0.18054822087287903 -0.06262902170419693 0.021692108362913132 0;
createNode animCurveTA -n "Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 20.166277752815617 16 -46.519150406160207 
		50 -48.949826619877371 56 21.836260885383837 62 23.478256271435477 88 23.478256271435477 
		100 20.166277752815617;
	setAttr -s 7 ".kit[0:6]"  3 1 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 9 9 9 3;
	setAttr -s 7 ".kix[1:6]"  0.99552017450332642 0.74522894620895386 
		0.30168533325195313 0.99963927268981934 0.99896031618118286 1;
	setAttr -s 7 ".kiy[1:6]"  -0.094549313187599182 0.66680866479873657 
		0.95340752601623535 0.026857394725084305 -0.045588027685880661 0;
	setAttr -s 7 ".kox[1:6]"  0.99552017450332642 0.74522894620895386 
		0.30168533325195313 0.99963927268981934 0.99896031618118286 1;
	setAttr -s 7 ".koy[1:6]"  -0.09454934298992157 0.66680866479873657 
		0.95340752601623535 0.026857394725084305 -0.045588027685880661 0;
createNode animCurveTA -n "npd_Middle_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "npd_Middle_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  85 0;
createNode animCurveTA -n "Middle_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  50 17.254116939558369 62 68.118796800669443 
		88 68.118796800669443 100 17.254116939558369;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
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
	setAttr ".o" 85;
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
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -k on ".ra";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -k on ".esr";
	setAttr -k on ".ors";
	setAttr -k on ".outf";
	setAttr -k on ".gama";
	setAttr -k on ".left";
	setAttr -k on ".bot";
	setAttr -k on ".urr";
	setAttr ".fs" 1;
	setAttr ".ef" 10;
	setAttr -k on ".bf";
	setAttr -k on ".bfs";
	setAttr -k on ".be";
	setAttr -k on ".fec";
	setAttr -k on ".sec";
	setAttr -k on ".ofc";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -k on ".sp";
	setAttr -k on ".shs";
	setAttr -k on ".lpr";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".shp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -k on ".mbf";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -k on ".bll";
	setAttr -k on ".bls";
	setAttr -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -k on ".rgpn";
	setAttr -k on ".rlsd";
	setAttr -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
select -ne :characterPartition;
select -ne :hyperGraphLayout;
	setAttr ".cch" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".img" -type "string" "";
	setAttr ".ims" 1;
select -ne :ikSystem;
connectAttr "npd_thinkingSource.st" "clipLibrary1.st[0]";
connectAttr "npd_thinkingSource.du" "clipLibrary1.du[0]";
connectAttr "npd_Extra_Attributes_translateX.a" "clipLibrary1.cel[0].cev[0].cevr"
		;
connectAttr "npd_Extra_Attributes_translateY.a" "clipLibrary1.cel[0].cev[1].cevr"
		;
connectAttr "npd_Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "npd_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "npd_Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "npd_Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr"
		;
connectAttr "npd_Hoop_Root_IK_FK_RFoot.a" "clipLibrary1.cel[0].cev[6].cevr"
		;
connectAttr "npd_Hoop_Root_IK_FK_LFoot.a" "clipLibrary1.cel[0].cev[7].cevr"
		;
connectAttr "npd_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary1.cel[0].cev[8].cevr"
		;
connectAttr "npd_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary1.cel[0].cev[9].cevr"
		;
connectAttr "animCurveTU13.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "npd_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "npd_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "npd_Hoop_Root_rotateX.a" "clipLibrary1.cel[0].cev[14].cevr"
		;
connectAttr "npd_Hoop_Root_rotateY.a" "clipLibrary1.cel[0].cev[15].cevr"
		;
connectAttr "npd_Hoop_Root_rotateZ.a" "clipLibrary1.cel[0].cev[16].cevr"
		;
connectAttr "npd_Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "npd_Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "npd_Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
connectAttr "npd_Right_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[20].cevr"
		;
connectAttr "Right_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[21].cevr"
		;
connectAttr "npd_Right_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[22].cevr"
		;
connectAttr "Right_Foot_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[23].cevr"
		;
connectAttr "npd_Right_Foot_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[24].cevr"
		;
connectAttr "npd_Right_Foot_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[25].cevr"
		;
connectAttr "npd_Left_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[26].cevr"
		;
connectAttr "npd_Left_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[27].cevr"
		;
connectAttr "npd_Left_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[28].cevr"
		;
connectAttr "npd_Left_Foot_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[29].cevr"
		;
connectAttr "npd_Left_Foot_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[30].cevr"
		;
connectAttr "npd_Left_Foot_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[31].cevr"
		;
connectAttr "npd_Right_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[32].cevr"
		;
connectAttr "npd_Right_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[33].cevr"
		;
connectAttr "npd_Right_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[34].cevr"
		;
connectAttr "npd_Left_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[35].cevr"
		;
connectAttr "npd_Left_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[36].cevr"
		;
connectAttr "npd_Left_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[37].cevr"
		;
connectAttr "npd_Right_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[38].cevr"
		;
connectAttr "npd_Right_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[39].cevr"
		;
connectAttr "npd_Right_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[40].cevr"
		;
connectAttr "npd_Left_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[41].cevr"
		;
connectAttr "npd_Left_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[42].cevr"
		;
connectAttr "npd_Left_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[43].cevr"
		;
connectAttr "Character_Hoop_translateX.a" "clipLibrary1.cel[0].cev[44].cevr"
		;
connectAttr "Character_Hoop_translateY.a" "clipLibrary1.cel[0].cev[45].cevr"
		;
connectAttr "Character_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[46].cevr"
		;
connectAttr "npd_Character_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[47].cevr"
		;
connectAttr "npd_Character_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[48].cevr"
		;
connectAttr "Character_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[49].cevr"
		;
connectAttr "npd_R_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "npd_R_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "npd_R_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "npd_R_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[53].cevr"
		;
connectAttr "npd_R_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[54].cevr"
		;
connectAttr "npd_R_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[55].cevr"
		;
connectAttr "npd_R_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[56].cevr"
		;
connectAttr "npd_R_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[57].cevr"
		;
connectAttr "npd_R_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[58].cevr"
		;
connectAttr "npd_R_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[59].cevr"
		;
connectAttr "npd_L_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "npd_L_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "npd_L_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "npd_L_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[63].cevr"
		;
connectAttr "npd_L_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[64].cevr"
		;
connectAttr "npd_L_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[65].cevr"
		;
connectAttr "npd_L_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[66].cevr"
		;
connectAttr "npd_L_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[67].cevr"
		;
connectAttr "npd_L_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[68].cevr"
		;
connectAttr "npd_L_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[69].cevr"
		;
connectAttr "npd_R_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[70].cevr"
		;
connectAttr "npd_R_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[71].cevr"
		;
connectAttr "npd_R_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[72].cevr"
		;
connectAttr "npd_L_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[73].cevr"
		;
connectAttr "npd_L_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[74].cevr"
		;
connectAttr "npd_L_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[75].cevr"
		;
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
connectAttr "npd_Left_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "npd_Left_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "npd_Left_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "npd_Left_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "npd_Left_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "npd_Left_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "npd_Right_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "npd_Right_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "npd_Right_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "npd_Right_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "npd_Right_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "npd_Right_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "npd_Left_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[94].cevr"
		;
connectAttr "npd_Left_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[95].cevr"
		;
connectAttr "npd_Left_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[96].cevr"
		;
connectAttr "npd_Left_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[97].cevr"
		;
connectAttr "npd_Left_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[98].cevr"
		;
connectAttr "npd_Left_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[99].cevr"
		;
connectAttr "npd_Left_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[100].cevr"
		;
connectAttr "npd_Left_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[101].cevr"
		;
connectAttr "npd_Left_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[102].cevr"
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
connectAttr "npd_Middle_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[123].cevr"
		;
connectAttr "npd_Middle_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[124].cevr"
		;
connectAttr "Middle_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[125].cevr"
		;
connectAttr "npd_Pelvis_rotateX.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "npd_Pelvis_rotateY.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "npd_Pelvis_rotateZ.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "npd_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "npd_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "npd_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "npd_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "npd_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "npd_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "npd_Middle_R_rotateX.a" "clipLibrary1.cel[0].cev[135].cevr"
		;
connectAttr "npd_Middle_R_rotateY.a" "clipLibrary1.cel[0].cev[136].cevr"
		;
connectAttr "Middle_R_rotateZ.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "npd_Jaw_rotateX.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "npd_Jaw_rotateY.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "npd_Jaw_rotateZ.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "Spine_2_rotateX.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "npd_Spine_2_rotateY.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "Spine_2_rotateZ.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "Neck_rotateX.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "Neck_rotateY.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "Neck_rotateZ.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "npd_Head_rotateX.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "npd_Head_rotateY.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "npd_Head_rotateZ.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "Spine_1_rotateX.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "Spine_1_rotateY.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "Spine_1_rotateZ.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "npd_Middle_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[153].cevr"
		;
connectAttr "npd_Middle_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[154].cevr"
		;
connectAttr "Middle_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[155].cevr"
		;
connectAttr "Thumb_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[156].cevr"
		;
connectAttr "Thumb_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[157].cevr"
		;
connectAttr "Thumb_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[158].cevr"
		;
connectAttr "npd_Middle_L_rotateX.a" "clipLibrary1.cel[0].cev[159].cevr"
		;
connectAttr "npd_Middle_L_rotateY.a" "clipLibrary1.cel[0].cev[160].cevr"
		;
connectAttr "Middle_L_rotateZ.a" "clipLibrary1.cel[0].cev[161].cevr";
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
// End of npd_thinking.ma
