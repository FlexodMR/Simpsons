//Maya ASCII 4.0 scene
//Name: wdr_wave.ma
//Last modified: Mon, Aug 12, 2002 02:00:31 PM
requires maya "4.0";
requires "p3dSimpleShader" "18.0";
requires "p3dLayeredShader" "18.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "wdr_waveSource";
	setAttr ".ihi" 0;
	setAttr ".du" 40;
	setAttr ".ci" no;
createNode animCurveTL -n "wdr_Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTL -n "wdr_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTL -n "wdr_Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 1.0931321889110071;
createNode animCurveTL -n "wdr_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTL -n "wdr_Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0.50990367929941149;
createNode animCurveTA -n "wdr_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTU -n "wdr_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTU -n "wdr_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTU -n "wdr_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTU -n "wdr_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTU -n "wdr_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTU -n "wdr_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTU -n "wdr_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTU -n "wdr_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTL -n "wdr_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTL -n "wdr_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTL -n "wdr_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTL -n "Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.1468862801970878 10 1.1468862801970878 
		25 1.1468862801970878 35 1.1468862801970878 40 1.1468862801970878;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.2464696855624631 10 1.2464696855624631 
		25 1.2464696855624631 35 1.2464696855624631 40 1.2464696855624631;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.3883743416871892 10 1.3883743416871892 
		25 1.3883743416871892 35 1.3883743416871892 40 1.3883743416871892;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Right_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -36.819011955683756 10 -36.819011955683756 
		25 -36.819011955683756 35 -36.819011955683756 40 -36.819011955683756;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Right_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 25 0 35 0 40 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Right_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 25 0 35 0 40 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.4496212507996262 10 1.4496212507996262 
		25 1.4496212507996262 35 1.4496212507996262 40 1.4496212507996262;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.2279490663618713 10 1.2279490663618713 
		25 1.2279490663618713 35 1.2279490663618713 40 1.2279490663618713;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.4274355819015074 10 1.4274355819015074 
		25 1.4274355819015074 35 1.4274355819015074 40 1.4274355819015074;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Left_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -24.204848230542304 10 -24.204848230542304 
		25 -24.204848230542304 35 -24.204848230542304 40 -24.204848230542304;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Left_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 25 0 35 0 40 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Left_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 25 0 35 0 40 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "wdr_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_Right_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_Right_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_Right_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_Left_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_Left_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_Left_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTL -n "Right_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 25 0 35 0 40 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "Right_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 25 0 35 0 40 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "Right_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 10 1 25 1 35 1 40 1;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "Left_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 25 0 35 0 40 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "Left_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 25 0 35 0 40 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "Left_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 10 1 25 1 35 1 40 1;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.3318677670487873 10 1.3318677670487873 
		25 1.3318677670487873 35 1.3318677670487873 40 1.3318677670487873;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.4718651042148105 10 1.4718651042148105 
		25 1.4718651042148105 35 1.4718651042148105 40 1.4718651042148105;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.62126454755213167 10 0.62126454755213167 
		25 0.62126454755213167 35 0.62126454755213167 40 0.62126454755213167;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Character_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -47.088616656908457 10 -42.313763025422254 
		25 -42.120458329642688 35 -42.685666308706281 40 -47.088616656908457;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Character_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.0975263990809512 10 -7.0834058119179319 
		25 -10.829823623856843 35 -14.411486284150277 40 -2.0975263990809512;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Character_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.53932213336905677 10 2.9508256184436639 
		25 2.0454716898801157 35 1.8589760667720696 40 0.53932213336905677;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "wdr_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_L_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_L_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_L_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTL -n "Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 -0.20626769739024042 1 -0.19594227432100639 
		2 -0.16790869264265013 3 -0.1264410908362055 4 -0.076105774284202427 5 -0.02212183636077782 
		6 0.029568713763831626 7 0.072472587934407501 8 0.099867004265234413 9 0.10516882204263794 
		10 0.065342873052202613 11 -0.020855042766376924 12 -0.12795108664684052 
		13 -0.23567555254588995 14 -0.32344461184716211 15 -0.37056535055063822 16 
		-0.38882520435409673 17 -0.40379676234515244 18 -0.4154891523507746 19 -0.42392751517657984 
		20 -0.42914602589391537 21 -0.43118175455310509 22 -0.43006938412625489 23 
		-0.42583680498606213 24 -0.41850160879178844 25 -0.4080685107757438 26 -0.39437667487280809 
		27 -0.37752372619428343 28 -0.3579197956952862 29 -0.33603702136509894 30 
		-0.31242622677386578 31 -0.28240189756647427 32 -0.24256765554807488 33 -0.19558351805593732 
		34 -0.14425183521536183 35 -0.091500630883804779 36 -0.077022591640354673 
		37 -0.11535699317289386 38 -0.1711317516894536 39 -0.21172842699038569 40 
		-0.20626769739024042;
createNode animCurveTL -n "Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 -0.4886122070385342 1 -0.49223452487794667 
		2 -0.50103901757301017 3 -0.51179912335852651 4 -0.52134199559590944 5 -0.52677406303298779 
		6 -0.52562384221522906 7 -0.51588416316559793 8 -0.49593619773346431 9 -0.46434713240020731 
		10 -0.40326811726653861 11 -0.30818205345619076 12 -0.19725942194385332 13 
		-0.088940771523435491 14 -0.0015984997827365711 15 0.046310905154899176 16 
		0.066375165309794662 17 0.082689295032917304 18 0.095423746784687014 19 0.10474004012607128 
		20 0.1107963655481671 21 0.11375265892554652 22 0.11377515629181621 23 0.1110404639019298 
		24 0.10573919541582739 25 0.098079235953020372 26 0.088755832066075638 27 
		0.078254653484112424 28 0.066472650059977365 29 0.05325886911341577 30 0.038385988695536104 
		31 0.016914342734279462 32 -0.014960539248722657 33 -0.055964855620516243 
		34 -0.10499712654539572 35 -0.16110621806601613 36 -0.22488268525951882 37 
		-0.29404983683830838 38 -0.36277083363302964 39 -0.4279090055086025 40 -0.4886122070385342;
createNode animCurveTL -n "Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0.71257877629597177 1 0.7185331652331951 
		2 0.73384983033335038 3 0.75435101028118512 4 0.77593426000723642 5 0.7951375707012811 
		6 0.8095355537424942 7 0.81791285679656822 8 0.820156242106024 9 0.8168299438101011 
		10 0.80390805395068465 11 0.78243135137705977 12 0.75955256319341025 13 0.74033115978210673 
		14 0.72861490835182741 15 0.72715776805974064 16 0.73202372805832594 17 0.73779022654424453 
		18 0.74425047395203692 19 0.75121528461517828 20 0.75851414195345512 21 0.7659955481106 
		22 0.77352670716580507 23 0.78099256093413116 24 0.78829417159025328 25 0.79534642615894269 
		26 0.80255891094432086 27 0.81006034764790502 28 0.81737074395326081 29 0.82405195694259081 
		30 0.82972848909813823 31 0.83446245306469491 32 0.83836876349344036 33 0.84138187150325083 
		34 0.8436361808918964 35 0.84539060931862042 36 0.83022923839796658 37 0.79264744456044811 
		38 0.74628377334968687 39 0.71084981894337584 40 0.71257877629597177;
createNode animCurveTA -n "Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 -45.794489268991065 1 -46.747563998476153 
		2 -43.862502785957581 3 -36.288636252525308 4 -22.232685600717858 5 -1.4223842810512466 
		6 20.050060622360856 7 35.211664289887651 8 44.79067104720103 9 66.077948827301583 
		10 20.083053572035301 11 13.466260543059631 12 0.91499694329635473 13 169.95940608273429 
		14 162.17677213696075 15 157.55125615327168 16 157.50666312750181 17 162.05053371437353 
		18 169.44918666605562 19 174.39689173527893 20 171.12063566023642 21 164.57731530420733 
		22 159.36781082306157 23 157.31104191113857 24 161.26380472345804 25 171.46365698724571 
		26 178.01086350387018 27 170.9838158019846 28 161.33420191476853 29 154.39303567520582 
		30 151.01364286025836 31 149.24495908753451 32 147.9022825235011 33 147.47628106112793 
		34 149.36931789787397 35 155.1323099830955 36 167.33500741544847 37 -171.01733783701161 
		38 -139.99984277055748 39 -100.81432451062851 40 -45.794489268991065;
createNode animCurveTA -n "Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 69.888741868854027 1 70.775247546240962 
		2 73.055053224231756 3 76.053472270031492 4 78.927374212011259 5 80.787555100916578 
		6 81.421973996642294 7 81.880312184165575 8 83.595388923344686 9 87.479947838676054 
		10 98.034139809259031 11 113.78642547791371 12 129.97102569951497 13 38.001096517252812 
		14 32.017047734005047 15 30.314624034924258 16 30.04873061557268 17 32.363907188826772 
		18 38.488594697320437 19 43.129151893241421 20 41.688253825320366 21 37.510941526122743 
		22 34.242784914540678 23 33.26845696701087 24 36.126429312764834 25 43.536918462684142 
		26 46.846404739529333 27 42.219657078693942 28 35.143458484386599 29 29.340897934065712 
		30 26.893371455171284 31 25.479022748765413 32 24.274866257438557 33 22.134618234734141 
		34 18.351180263981 35 12.888744202675479 36 10.747339424829178 37 16.243641709302484 
		38 29.322247658704676 39 48.057793131120228 40 69.888741868854027;
createNode animCurveTA -n "Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 14.70557263514106 1 16.628072379999768 
		2 22.322834915522101 3 32.641932834324685 4 49.426905359704449 5 73.075805842767707 
		6 97.695147244171238 7 116.54996065758898 8 130.58538594277584 9 157.19634399612804 
		10 118.25547131067363 11 119.02595522961725 12 110.96613010604904 13 -79.817631208566468 
		14 -89.874073284899239 15 -95.692622413155917 16 -92.113610706890867 17 -80.332139360310151 
		18 -67.327743279592227 19 -60.766382415365904 20 -66.109901156949917 21 -77.684283781615505 
		22 -88.593957363505623 23 -92.853104335714733 24 -82.134518970099919 25 -62.535068517457766 
		26 -51.730725436100919 27 -59.998777444725391 28 -75.149095910762341 29 -90.315733100652835 
		30 -100.2448447909141 31 -104.55862172487748 32 -106.77558919609082 33 -108.41897062484639 
		34 -109.11351904110072 35 -104.76037114702868 36 -93.04971958957799 37 -74.373330418785088 
		38 -51.077826238476035 39 -24.535316309796823 40 14.70557263514106;
createNode animCurveTL -n "Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0.24539528622847229 1 0.25258378883658794 
		2 0.27185607927573413 3 0.29944966785778265 4 0.33152096142880966 5 0.36451870769918915 
		6 0.3954807656405126 7 0.42222809652627746 8 0.44341978312463937 9 0.45843976866636127 
		10 0.46710193550606105 11 0.47201609275295087 12 0.47599354842915831 13 0.4791844632771205 
		14 0.48171463271616605 15 0.48368987718725093 16 0.485199975236838 17 0.48632211351305726 
		18 0.48712383045385194 19 0.48766543078147323 20 0.48800184762165999 21 0.48818392925868892 
		22 0.48825912893011636 23 0.48827157907642343 24 0.48826153634002967 25 0.48826419056553816 
		26 0.48805024014752973 27 0.48737118100237153 28 0.48624675805755685 29 0.48473205584625451 
		30 0.48292183443760506 31 0.48094300097269754 32 0.47893488595733175 33 0.4770172861972003 
		34 0.4752465889732207 35 0.47356074494651668 36 0.46173864057916264 37 0.42250882032115838 
		38 0.35415153506606828 39 0.28037804176422126 40 0.24539528622847229;
createNode animCurveTL -n "Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 -0.44502060810624655 1 -0.44273708912105814 
		2 -0.43642836812685737 3 -0.42686431897164084 4 -0.41484073207290695 5 -0.40124704252471793 
		6 -0.38708650663350924 7 -0.37345537768881498 8 -0.36149760166463552 9 -0.35235650369088917 
		10 -0.34714308104398195 11 -0.34482040395314284 12 -0.34352424261329761 13 
		-0.34309965776249518 14 -0.3433968475512596 15 -0.3442695765972254 16 -0.345573773282223 
		17 -0.34716635099640825 18 -0.34890429483050611 19 -0.35064404371859442 20 
		-0.35224118909731061 21 -0.35355050480302508 22 -0.35442631932925578 23 -0.35472324092578844 
		24 -0.35429724854174049 25 -0.35300716741497612 26 -0.35008053828844016 27 
		-0.3452590054310718 28 -0.33917200936697223 29 -0.33241879552383169 30 -0.3255478312721875 
		31 -0.31904981848374858 32 -0.31336519394188722 33 -0.30890692936290537 34 
		-0.3060990238536993 35 -0.30543039684140222 36 -0.31983516003890733 37 -0.35442967258753072 
		38 -0.39626099867025771 39 -0.43084254217226414 40 -0.44502060810624655;
createNode animCurveTL -n "Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0.67920043317323675 1 0.67231251116429547 
		2 0.65307713042892868 3 0.6234143413090486 4 0.58529938350471167 5 0.54107337215525786 
		6 0.49358795241202869 7 0.4461993883982916 8 0.40265289031268497 9 0.36691123132780207 
		10 0.34297779595149819 11 0.32734153019712808 12 0.31376002042588452 13 0.30206494267097045 
		14 0.29207775394061114 15 0.2836121952476981 16 0.27647620893745029 17 0.27047339051975883 
		18 0.26540406404328054 19 0.2610660439133744 20 0.25725512507906217 21 0.25376532781532746 
		22 0.25038891305981309 23 0.24691617962153772 24 0.24313505579175257 25 0.23883050519851878 
		26 0.2330187674260239 27 0.22550316773308793 28 0.21724605462939195 29 0.20922405377276676 
		30 0.20243926505696577 31 0.19792259335769957 32 0.19673104565334143 33 0.19994043663487959 
		34 0.20863362199750385 35 0.22388210482608797 36 0.28778886386346841 37 0.40999906249352236 
		38 0.54172061221087642 39 0.6409439448784886 40 0.67920043317323675;
createNode animCurveTA -n "Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 -26.769542984158743 1 -27.448382289309752 
		2 -29.191301194137413 3 -31.510963602289404 4 -33.984848560352226 5 -36.326781381417291 
		6 -38.378394901549392 7 -40.068396899251766 8 -41.372049964639345 9 -42.281298599484607 
		10 -42.783824853872197 11 -43.00633300082653 12 -43.108556420593608 13 -43.111872366287159 
		14 -43.035365423517227 15 -42.896437188136076 16 -42.711271155486308 17 -42.495187477673959 
		18 -42.26291150266151 19 -42.028772492001593 20 -41.806843656787379 21 -41.611030994132058 
		22 -41.455115902376299 23 -41.352754904254134 24 -41.317438822949619 25 -41.362413328144562 
		26 -41.569348605654035 27 -41.966367299665869 28 -42.488191482666714 29 -43.073409387453275 
		30 -43.664947898171228 31 -44.209573304683559 32 -44.65658415038596 33 -44.955777287853849 
		34 -45.054613514354855 35 -44.894252310382676 36 -43.798135840843997 37 -41.060420927606543 
		38 -36.374194855249655 39 -30.286615776070086 40 -26.769542984158743;
createNode animCurveTA -n "Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 -63.847396819970108 1 -63.368851576233766 
		2 -62.040286139744801 3 -60.016691552544295 4 -57.463283000956793 5 -54.564266111929385 
		6 -51.520329807512177 7 -48.542347764261407 8 -45.84575043330041 9 -43.646804955123663 
		10 -42.160499146842064 11 -41.15627987232736 12 -40.255911610498899 13 -39.450745797371013 
		14 -38.731789136236884 15 -38.089832767515922 16 -37.515543000833645 17 -36.999523512063746 
		18 -36.53235516630054 19 -36.10461706167839 20 -35.706890655264836 21 -35.329747728072093 
		22 -34.963722355718936 23 -34.599266911462678 24 -34.226692406232864 25 -33.836094146346774 
		26 -33.358797562494303 27 -32.772884977939107 28 -32.138657193548312 29 -31.51816671025119 
		30 -30.976201002531727 31 -30.580487380765998 32 -30.401260711850732 33 -30.510313106683679 
		34 -30.979578395317009 35 -31.879193145303105 36 -36.068037967207772 37 -44.332947871366279 
		38 -53.607612465105831 39 -60.939525096065417 40 -63.847396819970108;
createNode animCurveTA -n "Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 -20.817287075694008 1 -20.098039804011417 
		2 -18.241866371749826 3 -15.745962224451098 4 -13.042257606476001 5 -10.428350523834531 
		6 -8.078053379346624 7 -6.0836005299156533 8 -4.4968233140193972 9 -3.3583985884907128 
		10 -2.7163759316359251 11 -2.4120161969195992 12 -2.2302900300758255 13 -2.1502674700016966 
		14 -2.1530553411509312 15 -2.2212247562706069 16 -2.338384727916528 17 -2.4888663574711303 
		18 -2.6574928866197056 19 -2.829418518174307 20 -2.9900242949271338 21 -3.1248631158120217 
		22 -3.2196486056853377 23 -3.2602843292576682 24 -3.2329309366260159 25 -3.1241093531503745 
		26 -2.8568922123174603 27 -2.4079462616440819 28 -1.8428564419885629 29 -1.2227392594134825 
		30 -0.60277633425882404 31 -0.032185610349910007 32 0.44450871013557725 33 
		0.78496219061668637 34 0.94516607407918118 35 0.87396226094066853 36 -0.59535879854202811 
		37 -4.3008303011008664 38 -10.058999864199356 39 -16.972048291460048 40 -20.817287075694008;
createNode animCurveTL -n "Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.2760452972323346 10 2.2760452972323346 
		25 2.2760452972323346 35 2.2760452972323346 40 2.2760452972323346;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 3.8907520938893785 10 3.8907520938893785 
		25 3.8907520938893785 35 3.8907520938893785 40 3.8907520938893785;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.6188797842204359 10 1.6188797842204359 
		25 1.6188797842204359 35 1.6188797842204359 40 1.6188797842204359;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 70.626908478600072 10 70.626908478600072 
		25 70.626908478600072 35 70.626908478600072 40 70.626908478600072;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 118.13736085477974 10 118.13736085477974 
		25 118.13736085477974 35 118.13736085477974 40 118.13736085477974;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 137.25600907246934 10 137.25600907246934 
		25 137.25600907246934 35 137.25600907246934 40 137.25600907246934;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 3.4012936997283774 10 3.4012936997283774 
		25 3.4012936997283774 35 3.4012936997283774 40 3.4012936997283774;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 3.9492335849148859 10 3.9492335849148859 
		25 3.9492335849148859 35 3.9492335849148859 40 3.9492335849148859;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.5749480404742857 10 1.5749480404742857 
		25 1.5749480404742857 35 1.5749480404742857 40 1.5749480404742857;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 95.306131338095284 10 95.306131338095284 
		25 95.306131338095284 35 95.306131338095284 40 95.306131338095284;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -118.5838298882701 10 -118.5838298882701 
		25 -118.5838298882701 35 -118.5838298882701 40 -118.5838298882701;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -146.79957702114922 10 -146.79957702114922 
		25 -146.79957702114922 35 -146.79957702114922 40 -146.79957702114922;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "Left_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.22996541113775407 10 0.22996541113775407 
		25 0.22996541113775407 35 0.22996541113775407 40 0.22996541113775407;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "Left_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.71572892866406468 10 -0.71572892866406468 
		25 -0.71572892866406468 35 -0.71572892866406468 40 -0.71572892866406468;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "Left_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.86045149817799882 10 -0.86045149817799882 
		25 -0.86045149817799882 35 -0.86045149817799882 40 -0.86045149817799882;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.017571725225418895 10 -0.017571725225418895 
		25 -0.017571725225418895 35 -0.017571725225418895 40 -0.017571725225418895;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.54560785950824164 10 -0.54560785950824164 
		25 -0.54560785950824164 35 -0.54560785950824164 40 -0.54560785950824164;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.64724218630287966 10 -0.64724218630287966 
		25 -0.64724218630287966 35 -0.64724218630287966 40 -0.64724218630287966;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "R_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 12.253734489678925 10 12.253734489678925 
		25 12.253734489678925 35 12.253734489678925 40 12.253734489678925;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "R_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -65.746751280844975 10 -65.746751280844975 
		25 -65.746751280844975 35 -65.746751280844975 40 -65.746751280844975;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "R_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 25 0 35 0 40 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "L_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.061808866237340665 10 -0.061808866237340665 
		25 -0.061808866237340665 35 -0.061808866237340665 40 -0.061808866237340665;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "L_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -59.058178941076754 10 -59.058178941076754 
		25 -59.058178941076754 35 -59.058178941076754 40 -59.058178941076754;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "L_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.57914742975785 10 16.57914742975785 
		25 16.57914742975785 35 16.57914742975785 40 16.57914742975785;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "R_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.5572674112203657 10 8.5572674112203657 
		25 8.5572674112203657 35 8.5572674112203657 40 8.5572674112203657;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "L_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 15.711328223519061 10 15.711328223519061 
		25 15.711328223519061 35 15.711328223519061 40 15.711328223519061;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "R_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 25 0 35 0 40 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "R_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 25 0 35 0 40 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "R_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 25 0 35 0 40 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "L_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 25 0 35 0 40 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "L_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 25 0 35 0 40 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "L_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 25 0 35 0 40 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.4857988835365301 10 -4.4857988835365301 
		25 -4.4857988835365301 35 -4.4857988835365301 40 -4.4857988835365301;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 33.296656517080201 10 33.296656517080201 
		25 33.296656517080201 35 33.296656517080201 40 33.296656517080201;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 11.822498430160282 10 11.822498430160282 
		25 11.822498430160282 35 11.822498430160282 40 11.822498430160282;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Middle_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 25 0 35 0 40 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Middle_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 25 0 35 0 40 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Middle_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 33.321241519753315 10 33.321241519753315 
		25 33.321241519753315 35 33.321241519753315 40 33.321241519753315;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "wdr_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 4.0997018413633617;
createNode animCurveTA -n "wdr_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 11.088235898323637;
createNode animCurveTA -n "wdr_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 -3.7232021658234848;
createNode animCurveTA -n "wdr_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 -15.715763414303195;
createNode animCurveTA -n "wdr_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 3.6668765941632233;
createNode animCurveTA -n "wdr_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 6.2620030236771775;
createNode animCurveTA -n "Middle_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0 15 0.5323343732623631 
		25 0.5323343732623631 35 0.5323343732623631 40 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "Middle_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0 15 0.061298418984474273 
		25 0.061298418984474273 35 0.061298418984474273 40 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "Middle_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 52.057610833014301 10 52.057610833014301 
		15 18.741132087287198 25 18.741132087287198 35 18.741132087287198 40 52.057610833014301;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "Jaw_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 25 0 35 0 40 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Jaw_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 25 0 35 0 40 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Jaw_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 25 0 35 0 40 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Spine_2_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.3937906322123035 10 -15.61834020589737 
		25 -19.831793276058647 35 -18.736191989104121 40 2.3937906322123035;
	setAttr -s 5 ".kit[0:4]"  3 1 9 1 3;
	setAttr -s 5 ".kot[0:4]"  3 1 9 1 3;
	setAttr -s 5 ".kix[1:4]"  0.93886983394622803 0.99787473678588867 
		0.97148215770721436 1;
	setAttr -s 5 ".kiy[1:4]"  -0.34427234530448914 -0.065161354839801788 
		0.23711258172988892 0;
	setAttr -s 5 ".kox[1:4]"  0.93886983394622803 0.99787473678588867 
		0.97148215770721436 1;
	setAttr -s 5 ".koy[1:4]"  -0.34427234530448914 -0.065161354839801788 
		0.23711265623569489 0;
createNode animCurveTA -n "Spine_2_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.7843868968348546 10 0.22733926092771015 
		25 3.121853638796745 35 3.1194324218344214 40 -1.7843868968348546;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Spine_2_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.23227595374661 10 13.061462947090696 
		25 11.093601121373933 35 15.261296437183343 40 13.23227595374661;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Neck_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 25 0 35 0 40 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Neck_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 25 0 35 0 40 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Neck_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 25 0 35 0 40 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.71032600031388182 10 8.8091395019725773 
		25 12.42137797626175 35 10.762823753136752 40 0.71032600031388182;
createNode animCurveTA -n "Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 3.6938159239902002 10 37.181850245951367 
		25 44.965096232108465 35 36.282695161935607 40 3.6938159239902002;
createNode animCurveTA -n "Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 14.572231982957494 10 8.9709712762199523 
		25 9.4142294990088047 35 11.789794916573522 40 14.572231982957494;
	setAttr -s 5 ".kit[0:4]"  3 1 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 1 9 9 3;
	setAttr -s 5 ".kix[1:4]"  0.99940437078475952 0.99826186895370483 
		0.98417502641677856 1;
	setAttr -s 5 ".kiy[1:4]"  -0.034509919583797455 0.058934688568115234 
		0.17719900608062744 0;
	setAttr -s 5 ".kox[1:4]"  0.99940437078475952 0.99826186895370483 
		0.98417502641677856 1;
	setAttr -s 5 ".koy[1:4]"  -0.034509912133216858 0.058934688568115234 
		0.17719900608062744 0;
createNode animCurveTA -n "Spine_1_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.2796212519697261 10 -2.2796212519697261 
		25 -2.2796212519697261 35 -2.2796212519697261 40 -2.2796212519697261;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Spine_1_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.2209313171847884 10 2.2209313171847884 
		25 2.2209313171847884 35 2.2209313171847884 40 2.2209313171847884;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Spine_1_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.0401232256568225 10 8.0401232256568225 
		25 8.0401232256568225 35 8.0401232256568225 40 8.0401232256568225;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Middle_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0 15 0 25 0 35 0 40 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "Middle_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0 15 0 25 0 35 0 40 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "Middle_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 33.429092416277157 10 33.429092416277157 
		15 19.351946353295709 25 19.351946353295709 35 19.351946353295709 40 33.429092416277157;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.2533422302317216 10 8.2533422302317216 
		15 12.887413353891306 25 12.887413353891306 35 12.887413353891306 40 8.2533422302317216;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 23.263402056531085 10 23.263402056531085 
		15 18.282335243936988 25 18.282335243936988 35 18.282335243936988 40 23.263402056531085;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 20.166277752815617 10 20.166277752815617 
		15 36.263906815367598 25 36.263906815367598 35 36.263906815367598 40 20.166277752815617;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "Middle_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 25 0 35 0 40 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Middle_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 25 0 35 0 40 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "Middle_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 43.699331907638154 10 43.699331907638154 
		25 43.699331907638154 35 43.699331907638154 40 43.699331907638154;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "wdr_hair_1_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_hair_1_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_hair_1_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_hair_2_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_hair_2_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_hair_2_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_hair_3_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_hair_3_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTA -n "wdr_hair_3_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode clipLibrary -n "clipLibrary1";
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
	setAttr -s 91 ".lnk";
select -ne :time1;
	setAttr ".o" 4;
select -ne :renderPartition;
	setAttr -s 91 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 95 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 40 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 36 ".tx";
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
connectAttr "wdr_waveSource.st" "clipLibrary1.st[0]";
connectAttr "wdr_waveSource.du" "clipLibrary1.du[0]";
connectAttr "wdr_Extra_Attributes_translateX.a" "clipLibrary1.cel[0].cev[0].cevr"
		;
connectAttr "wdr_Extra_Attributes_translateY.a" "clipLibrary1.cel[0].cev[1].cevr"
		;
connectAttr "wdr_Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "wdr_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "wdr_Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "wdr_Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr"
		;
connectAttr "wdr_Hoop_Root_IK_FK_RFoot.a" "clipLibrary1.cel[0].cev[6].cevr"
		;
connectAttr "wdr_Hoop_Root_IK_FK_LFoot.a" "clipLibrary1.cel[0].cev[7].cevr"
		;
connectAttr "wdr_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary1.cel[0].cev[8].cevr"
		;
connectAttr "wdr_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary1.cel[0].cev[9].cevr"
		;
connectAttr "wdr_Hoop_Root_IK_FK_RArm.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "wdr_Hoop_Root_IK_FK_LArm.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "wdr_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "wdr_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "wdr_Hoop_Root_rotateX.a" "clipLibrary1.cel[0].cev[14].cevr"
		;
connectAttr "wdr_Hoop_Root_rotateY.a" "clipLibrary1.cel[0].cev[15].cevr"
		;
connectAttr "wdr_Hoop_Root_rotateZ.a" "clipLibrary1.cel[0].cev[16].cevr"
		;
connectAttr "wdr_Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "wdr_Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "wdr_Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
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
connectAttr "wdr_Right_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[32].cevr"
		;
connectAttr "wdr_Right_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[33].cevr"
		;
connectAttr "wdr_Right_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[34].cevr"
		;
connectAttr "wdr_Left_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[35].cevr"
		;
connectAttr "wdr_Left_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[36].cevr"
		;
connectAttr "wdr_Left_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[37].cevr"
		;
connectAttr "wdr_Right_Toe_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[38].cevr"
		;
connectAttr "wdr_Right_Toe_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[39].cevr"
		;
connectAttr "wdr_Right_Toe_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[40].cevr"
		;
connectAttr "wdr_Left_Toe_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[41].cevr"
		;
connectAttr "wdr_Left_Toe_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[42].cevr"
		;
connectAttr "wdr_Left_Toe_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[43].cevr"
		;
connectAttr "Right_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[44].cevr"
		;
connectAttr "Right_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[45].cevr"
		;
connectAttr "Right_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[46].cevr"
		;
connectAttr "Left_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[47].cevr"
		;
connectAttr "Left_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[48].cevr"
		;
connectAttr "Left_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[49].cevr"
		;
connectAttr "Character_Hoop_translateX.a" "clipLibrary1.cel[0].cev[50].cevr"
		;
connectAttr "Character_Hoop_translateY.a" "clipLibrary1.cel[0].cev[51].cevr"
		;
connectAttr "Character_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[52].cevr"
		;
connectAttr "Character_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[53].cevr"
		;
connectAttr "Character_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[54].cevr"
		;
connectAttr "Character_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[55].cevr"
		;
connectAttr "wdr_R_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "wdr_R_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "wdr_R_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "wdr_R_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[59].cevr"
		;
connectAttr "wdr_R_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[60].cevr"
		;
connectAttr "wdr_R_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[61].cevr"
		;
connectAttr "wdr_R_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[62].cevr"
		;
connectAttr "wdr_R_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[63].cevr"
		;
connectAttr "wdr_R_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[64].cevr"
		;
connectAttr "wdr_R_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[65].cevr"
		;
connectAttr "wdr_L_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "wdr_L_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "wdr_L_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "wdr_L_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[69].cevr"
		;
connectAttr "wdr_L_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[70].cevr"
		;
connectAttr "wdr_L_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[71].cevr"
		;
connectAttr "wdr_L_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[72].cevr"
		;
connectAttr "wdr_L_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[73].cevr"
		;
connectAttr "wdr_L_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[74].cevr"
		;
connectAttr "wdr_L_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[75].cevr"
		;
connectAttr "wdr_R_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[76].cevr"
		;
connectAttr "wdr_R_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[77].cevr"
		;
connectAttr "wdr_R_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[78].cevr"
		;
connectAttr "wdr_L_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[79].cevr"
		;
connectAttr "wdr_L_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[80].cevr"
		;
connectAttr "wdr_L_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[81].cevr"
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
connectAttr "Left_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[106].cevr"
		;
connectAttr "Left_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[107].cevr"
		;
connectAttr "Left_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[108].cevr"
		;
connectAttr "Right_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[109].cevr"
		;
connectAttr "Right_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[110].cevr"
		;
connectAttr "Right_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[111].cevr"
		;
connectAttr "R_FK_Shoulder_rotateX.a" "clipLibrary1.cel[0].cev[112].cevr"
		;
connectAttr "R_FK_Shoulder_rotateY.a" "clipLibrary1.cel[0].cev[113].cevr"
		;
connectAttr "R_FK_Shoulder_rotateZ.a" "clipLibrary1.cel[0].cev[114].cevr"
		;
connectAttr "L_FK_Shoulder_rotateX.a" "clipLibrary1.cel[0].cev[115].cevr"
		;
connectAttr "L_FK_Shoulder_rotateY.a" "clipLibrary1.cel[0].cev[116].cevr"
		;
connectAttr "L_FK_Shoulder_rotateZ.a" "clipLibrary1.cel[0].cev[117].cevr"
		;
connectAttr "R_FK_Elbow_rotateZ.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "L_FK_Elbow_rotateZ.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "R_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "R_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "R_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "L_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "L_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "L_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "Thumb_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[126].cevr"
		;
connectAttr "Thumb_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[127].cevr"
		;
connectAttr "Thumb_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[128].cevr"
		;
connectAttr "Middle_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[129].cevr"
		;
connectAttr "Middle_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[130].cevr"
		;
connectAttr "Middle_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[131].cevr"
		;
connectAttr "wdr_Pelvis_rotateX.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "wdr_Pelvis_rotateY.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "wdr_Pelvis_rotateZ.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "wdr_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "wdr_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "wdr_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "wdr_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "wdr_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "wdr_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "Middle_R_rotateX.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "Middle_R_rotateY.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "Middle_R_rotateZ.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "Jaw_rotateX.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "Jaw_rotateY.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "Jaw_rotateZ.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "Spine_2_rotateX.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "Spine_2_rotateY.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "Spine_2_rotateZ.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "Neck_rotateX.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "Neck_rotateY.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "Neck_rotateZ.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "Head_rotateX.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "Head_rotateY.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "Head_rotateZ.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "Spine_1_rotateX.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "Spine_1_rotateY.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "Spine_1_rotateZ.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "Middle_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[159].cevr"
		;
connectAttr "Middle_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[160].cevr"
		;
connectAttr "Middle_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[161].cevr"
		;
connectAttr "Thumb_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[162].cevr"
		;
connectAttr "Thumb_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[163].cevr"
		;
connectAttr "Thumb_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[164].cevr"
		;
connectAttr "Middle_L_rotateX.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "Middle_L_rotateY.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "Middle_L_rotateZ.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr "wdr_hair_1_rotateX.a" "clipLibrary1.cel[0].cev[168].cevr";
connectAttr "wdr_hair_1_rotateY.a" "clipLibrary1.cel[0].cev[169].cevr";
connectAttr "wdr_hair_1_rotateZ.a" "clipLibrary1.cel[0].cev[170].cevr";
connectAttr "wdr_hair_2_rotateX.a" "clipLibrary1.cel[0].cev[171].cevr";
connectAttr "wdr_hair_2_rotateY.a" "clipLibrary1.cel[0].cev[172].cevr";
connectAttr "wdr_hair_2_rotateZ.a" "clipLibrary1.cel[0].cev[173].cevr";
connectAttr "wdr_hair_3_rotateX.a" "clipLibrary1.cel[0].cev[174].cevr";
connectAttr "wdr_hair_3_rotateY.a" "clipLibrary1.cel[0].cev[175].cevr";
connectAttr "wdr_hair_3_rotateZ.a" "clipLibrary1.cel[0].cev[176].cevr";
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
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[55].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[56].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[57].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[58].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[59].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[60].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[61].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[62].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[63].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[64].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[64].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[65].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[66].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[67].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[68].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[69].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[70].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[71].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[72].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[73].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[74].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[75].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[76].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[77].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[78].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[79].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[80].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[81].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[82].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[83].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[84].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[85].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[86].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[87].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[88].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[89].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[90].llnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of wdr_wave.ma
