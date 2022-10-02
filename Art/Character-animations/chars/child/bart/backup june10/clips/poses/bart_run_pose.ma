//Maya ASCII 4.0 scene
//Name: bart_run_pose.ma
//Last modified: Thu, May 16, 2002 11:29:38 AM
requires maya "4.0";
requires "p3dSimpleShader" "16.4";
requires "p3dDeformer" "16.0.0.1";
requires "p3dmayaexp" "16.15";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "clip1Source1";
	setAttr ".ihi" 0;
	setAttr ".ci" no;
createNode animCurveTL -n "hom_Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "hom_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "hom_Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.026247751186071679;
createNode animCurveTL -n "hom_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "hom_Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.6975348690808667;
createNode animCurveTA -n "hom_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "hom_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "hom_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "hom_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "hom_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "hom_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.19763288944005308;
createNode animCurveTL -n "Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.18919812301601746;
createNode animCurveTL -n "Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99077043779297014;
createNode animCurveTA -n "Right_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -31.548014841396505;
createNode animCurveTA -n "Right_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Right_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.19697756422115981;
createNode animCurveTL -n "Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.49095526767731257;
createNode animCurveTL -n "Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.092819338422239051;
createNode animCurveTA -n "Left_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 72.51831712904297;
createNode animCurveTA -n "Left_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Left_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Right_Toe_Hoop_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Right_Toe_Hoop_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Right_Toe_Hoop_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Left_Toe_Hoop_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Left_Toe_Hoop_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Left_Toe_Hoop_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Right_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Right_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Right_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "Left_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Left_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Left_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.033041213165890024;
createNode animCurveTL -n "Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.86191433053168653;
createNode animCurveTL -n "Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.72893957619979599;
createNode animCurveTA -n "Character_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 20.950825280283908;
createNode animCurveTA -n "Character_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -7.5734518508549122;
createNode animCurveTA -n "Character_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482521620249;
createNode animCurveTA -n "hom_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300303494186;
createNode animCurveTA -n "hom_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733334985114;
createNode animCurveTA -n "hom_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417477e-005;
createNode animCurveTA -n "hom_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482535121209;
createNode animCurveTA -n "hom_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300300216801;
createNode animCurveTA -n "hom_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733333057838;
createNode animCurveTA -n "hom_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417477e-005;
createNode animCurveTA -n "hom_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.4782236286598103;
createNode animCurveTA -n "hom_L_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_L_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_L_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -39.488235982334174;
createNode animCurveTL -n "hom_Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.99214331096561381;
createNode animCurveTL -n "hom_Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.033841737269357866;
createNode animCurveTL -n "hom_Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.027201153963313806;
createNode animCurveTA -n "hom_Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.1805546814635164e-015;
createNode animCurveTA -n "hom_Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.016273151455886e-014;
createNode animCurveTA -n "hom_Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5.3764496942944332e-016;
createNode animCurveTL -n "hom_Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99214413619678865;
createNode animCurveTL -n "hom_Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.033851474715545553;
createNode animCurveTL -n "hom_Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.0272011762672867;
createNode animCurveTA -n "hom_Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.3611093629270264e-015;
createNode animCurveTA -n "hom_Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.5281705937149269e-014;
createNode animCurveTA -n "hom_Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.5365128437888133e-014;
createNode animCurveTL -n "hom_Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.3705977767760478;
createNode animCurveTL -n "hom_Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.1618658070195953;
createNode animCurveTL -n "hom_Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.12044246479037771;
createNode animCurveTA -n "hom_Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "hom_Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.3705978542308779;
createNode animCurveTL -n "hom_Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.1618621235956237;
createNode animCurveTL -n "hom_Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.12044250833667494;
createNode animCurveTA -n "hom_Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "hom_Left_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "hom_Left_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "hom_Left_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
createNode animCurveTL -n "hom_Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "hom_Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "hom_Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
createNode animCurveTA -n "R_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 52.63721983934397;
createNode animCurveTA -n "R_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -24.480967171432489;
createNode animCurveTA -n "R_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -64.344364641857069;
createNode animCurveTA -n "L_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -53.609443747430014;
createNode animCurveTA -n "L_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -25.279137940425237;
createNode animCurveTA -n "L_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 57.594080128123693;
createNode animCurveTA -n "R_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 59.468287502559065;
createNode animCurveTA -n "L_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 59.305463658789549;
createNode animCurveTA -n "R_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.476235154862632;
createNode animCurveTA -n "R_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 10.082003051124275;
createNode animCurveTA -n "R_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.720189328892868;
createNode animCurveTA -n "L_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -11.342548829337769;
createNode animCurveTA -n "L_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 11.615881410206432;
createNode animCurveTA -n "L_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.32159281075535068;
createNode animCurveTA -n "Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 11.093319219895511;
createNode animCurveTA -n "Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 59.959644693642325;
createNode animCurveTA -n "Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 48.106469618696913;
createNode animCurveTA -n "Middle_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Middle_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Middle_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 101.15442879205187;
createNode animCurveTA -n "hom_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 27.705218915343313;
createNode animCurveTA -n "hom_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 43.35103828268312;
createNode animCurveTA -n "hom_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 54.23572299800319;
createNode animCurveTA -n "hom_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 39.038703285259977;
createNode animCurveTA -n "hom_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 72.755037061650995;
createNode animCurveTA -n "hom_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 38.926480273156798;
createNode animCurveTA -n "Middle_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Middle_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Middle_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 81.622987204614219;
createNode animCurveTA -n "Jaw_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.2945941069882381;
createNode animCurveTA -n "Jaw_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.3208811165553147;
createNode animCurveTA -n "Jaw_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -27.525824477859967;
createNode animCurveTA -n "Spine_2_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -8.7597363552835983;
createNode animCurveTA -n "Spine_2_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Spine_2_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -8.9349579591731985;
createNode animCurveTA -n "Neck_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Neck_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Neck_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -9.2427148064678804;
createNode animCurveTA -n "Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -10.062830706779266;
createNode animCurveTA -n "Spine_1_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Spine_1_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Spine_1_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5.671986885245901;
createNode animCurveTA -n "Middle_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Middle_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Middle_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 90.838361755940937;
createNode animCurveTA -n "Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 26.194612819039175;
createNode animCurveTA -n "Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 42.116293762219605;
createNode animCurveTA -n "Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 51.312599966148291;
createNode animCurveTA -n "Middle_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Middle_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Middle_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 86.611733534295581;
createNode clipLibrary -n "clipLibrary4";
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
	setAttr ".ihi" 0;
	setAttr -s 21 ".lnk";
select -ne :time1;
	setAttr ".o" 0;
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
select -ne :particleCloud1;
	addAttr -ci true -sn "p3dLit" -ln "p3dLit" -dv 1 -at "short";
	addAttr -ci true -sn "p3dShadeMode" -ln "p3dShadeMode" -dv 1 -at "short";
	addAttr -ci true -sn "p3dBlendMode" -ln "p3dBlendMode" -at "short";
	addAttr -ci true -sn "p3dTextureGen" -ln "p3dTextureGen" -at "short";
	addAttr -ci true -sn "p3dUVMode" -ln "p3dUVMode" -dv 1 -at "short";
	addAttr -ci true -sn "p3dFilterMode" -ln "p3dFilterMode" -dv 1 -at "short";
	addAttr -ci true -sn "p3dAlphaTest" -ln "p3dAlphaTest" -at "short";
	addAttr -ci true -sn "p3dAlphaCompareMode" -ln "p3dAlphaCompareMode" -at "short";
	addAttr -ci true -sn "p3dProceduralTexXRes" -ln "p3dProceduralTexXRes" -at "short";
	addAttr -ci true -sn "p3dProceduralTexYRes" -ln "p3dProceduralTexYRes" -at "short";
	setAttr ".t" -type "float3" 0.47108001 0.47108001 0.47108001 ;
select -ne :initialShadingGroup;
	setAttr -k on ".nds";
	setAttr ".ro" yes;
	setAttr -s 218 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".top" 478;
	setAttr ".rght" 638;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
select -ne :defaultResolution;
	setAttr ".w" 640;
	setAttr ".h" 480;
	setAttr ".dar" 1.3329999446868896;
	setAttr ".ldar" yes;
select -ne :characterPartition;
select -ne :hyperGraphLayout;
	setAttr ".cch" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".img" -type "string" "";
	setAttr ".ims" 1;
select -ne :ikSystem;
connectAttr "clip1Source1.st" "clipLibrary4.st[0]";
connectAttr "clip1Source1.du" "clipLibrary4.du[0]";
connectAttr "hom_Extra_Attributes_translateX.a" "clipLibrary4.cel[0].cev[0].cevr"
		;
connectAttr "hom_Extra_Attributes_translateY.a" "clipLibrary4.cel[0].cev[1].cevr"
		;
connectAttr "hom_Motion_Root_translateX.a" "clipLibrary4.cel[0].cev[2].cevr"
		;
connectAttr "hom_Motion_Root_translateY.a" "clipLibrary4.cel[0].cev[3].cevr"
		;
connectAttr "hom_Motion_Root_translateZ.a" "clipLibrary4.cel[0].cev[4].cevr"
		;
connectAttr "hom_Motion_Root_rotateY.a" "clipLibrary4.cel[0].cev[5].cevr"
		;
connectAttr "hom_Hoop_Root_IK_FK_RFoot.a" "clipLibrary4.cel[0].cev[6].cevr"
		;
connectAttr "hom_Hoop_Root_IK_FK_LFoot.a" "clipLibrary4.cel[0].cev[7].cevr"
		;
connectAttr "hom_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary4.cel[0].cev[8].cevr"
		;
connectAttr "hom_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary4.cel[0].cev[9].cevr"
		;
connectAttr "hom_Hoop_Root_IK_FK_RArm.a" "clipLibrary4.cel[0].cev[10].cevr"
		;
connectAttr "hom_Hoop_Root_IK_FK_LArm.a" "clipLibrary4.cel[0].cev[11].cevr"
		;
connectAttr "hom_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary4.cel[0].cev[12].cevr"
		;
connectAttr "hom_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary4.cel[0].cev[13].cevr"
		;
connectAttr "hom_Hoop_Root_rotateX.a" "clipLibrary4.cel[0].cev[14].cevr"
		;
connectAttr "hom_Hoop_Root_rotateY.a" "clipLibrary4.cel[0].cev[15].cevr"
		;
connectAttr "hom_Hoop_Root_rotateZ.a" "clipLibrary4.cel[0].cev[16].cevr"
		;
connectAttr "hom_Hoop_Root_translateX.a" "clipLibrary4.cel[0].cev[17].cevr"
		;
connectAttr "hom_Hoop_Root_translateY.a" "clipLibrary4.cel[0].cev[18].cevr"
		;
connectAttr "hom_Hoop_Root_translateZ.a" "clipLibrary4.cel[0].cev[19].cevr"
		;
connectAttr "Right_Foot_Hoop_translateX.a" "clipLibrary4.cel[0].cev[20].cevr"
		;
connectAttr "Right_Foot_Hoop_translateY.a" "clipLibrary4.cel[0].cev[21].cevr"
		;
connectAttr "Right_Foot_Hoop_translateZ.a" "clipLibrary4.cel[0].cev[22].cevr"
		;
connectAttr "Right_Foot_Hoop_rotateX.a" "clipLibrary4.cel[0].cev[23].cevr"
		;
connectAttr "Right_Foot_Hoop_rotateY.a" "clipLibrary4.cel[0].cev[24].cevr"
		;
connectAttr "Right_Foot_Hoop_rotateZ.a" "clipLibrary4.cel[0].cev[25].cevr"
		;
connectAttr "Left_Foot_Hoop_translateX.a" "clipLibrary4.cel[0].cev[26].cevr"
		;
connectAttr "Left_Foot_Hoop_translateY.a" "clipLibrary4.cel[0].cev[27].cevr"
		;
connectAttr "Left_Foot_Hoop_translateZ.a" "clipLibrary4.cel[0].cev[28].cevr"
		;
connectAttr "Left_Foot_Hoop_rotateX.a" "clipLibrary4.cel[0].cev[29].cevr"
		;
connectAttr "Left_Foot_Hoop_rotateY.a" "clipLibrary4.cel[0].cev[30].cevr"
		;
connectAttr "Left_Foot_Hoop_rotateZ.a" "clipLibrary4.cel[0].cev[31].cevr"
		;
connectAttr "hom_Right_Ball_Hoop_rotateX.a" "clipLibrary4.cel[0].cev[32].cevr"
		;
connectAttr "hom_Right_Ball_Hoop_rotateY.a" "clipLibrary4.cel[0].cev[33].cevr"
		;
connectAttr "hom_Right_Ball_Hoop_rotateZ.a" "clipLibrary4.cel[0].cev[34].cevr"
		;
connectAttr "hom_Left_Ball_Hoop_rotateX.a" "clipLibrary4.cel[0].cev[35].cevr"
		;
connectAttr "hom_Left_Ball_Hoop_rotateY.a" "clipLibrary4.cel[0].cev[36].cevr"
		;
connectAttr "hom_Left_Ball_Hoop_rotateZ.a" "clipLibrary4.cel[0].cev[37].cevr"
		;
connectAttr "brt_Right_Toe_Hoop_rotateX1.a" "clipLibrary4.cel[0].cev[38].cevr"
		;
connectAttr "brt_Right_Toe_Hoop_rotateY1.a" "clipLibrary4.cel[0].cev[39].cevr"
		;
connectAttr "brt_Right_Toe_Hoop_rotateZ1.a" "clipLibrary4.cel[0].cev[40].cevr"
		;
connectAttr "brt_Left_Toe_Hoop_rotateX1.a" "clipLibrary4.cel[0].cev[41].cevr"
		;
connectAttr "brt_Left_Toe_Hoop_rotateY1.a" "clipLibrary4.cel[0].cev[42].cevr"
		;
connectAttr "brt_Left_Toe_Hoop_rotateZ1.a" "clipLibrary4.cel[0].cev[43].cevr"
		;
connectAttr "Right_Knee_Hoop_translateX.a" "clipLibrary4.cel[0].cev[44].cevr"
		;
connectAttr "Right_Knee_Hoop_translateY.a" "clipLibrary4.cel[0].cev[45].cevr"
		;
connectAttr "Right_Knee_Hoop_translateZ.a" "clipLibrary4.cel[0].cev[46].cevr"
		;
connectAttr "Left_Knee_Hoop_translateX.a" "clipLibrary4.cel[0].cev[47].cevr"
		;
connectAttr "Left_Knee_Hoop_translateY.a" "clipLibrary4.cel[0].cev[48].cevr"
		;
connectAttr "Left_Knee_Hoop_translateZ.a" "clipLibrary4.cel[0].cev[49].cevr"
		;
connectAttr "Character_Hoop_translateX.a" "clipLibrary4.cel[0].cev[50].cevr"
		;
connectAttr "Character_Hoop_translateY.a" "clipLibrary4.cel[0].cev[51].cevr"
		;
connectAttr "Character_Hoop_translateZ.a" "clipLibrary4.cel[0].cev[52].cevr"
		;
connectAttr "Character_Hoop_rotateX.a" "clipLibrary4.cel[0].cev[53].cevr"
		;
connectAttr "Character_Hoop_rotateY.a" "clipLibrary4.cel[0].cev[54].cevr"
		;
connectAttr "Character_Hoop_rotateZ.a" "clipLibrary4.cel[0].cev[55].cevr"
		;
connectAttr "hom_R_Hip_Fk_rotateX.a" "clipLibrary4.cel[0].cev[56].cevr";
connectAttr "hom_R_Hip_Fk_rotateY.a" "clipLibrary4.cel[0].cev[57].cevr";
connectAttr "hom_R_Hip_Fk_rotateZ.a" "clipLibrary4.cel[0].cev[58].cevr";
connectAttr "hom_R_Knee_Fk_rotateZ.a" "clipLibrary4.cel[0].cev[59].cevr"
		;
connectAttr "hom_R_Ankle_Fk_rotateX.a" "clipLibrary4.cel[0].cev[60].cevr"
		;
connectAttr "hom_R_Ankle_Fk_rotateY.a" "clipLibrary4.cel[0].cev[61].cevr"
		;
connectAttr "hom_R_Ankle_Fk_rotateZ.a" "clipLibrary4.cel[0].cev[62].cevr"
		;
connectAttr "hom_R_Ball_Fk_rotateX.a" "clipLibrary4.cel[0].cev[63].cevr"
		;
connectAttr "hom_R_Ball_Fk_rotateY.a" "clipLibrary4.cel[0].cev[64].cevr"
		;
connectAttr "hom_R_Ball_Fk_rotateZ.a" "clipLibrary4.cel[0].cev[65].cevr"
		;
connectAttr "hom_L_Hip_Fk_rotateX.a" "clipLibrary4.cel[0].cev[66].cevr";
connectAttr "hom_L_Hip_Fk_rotateY.a" "clipLibrary4.cel[0].cev[67].cevr";
connectAttr "hom_L_Hip_Fk_rotateZ.a" "clipLibrary4.cel[0].cev[68].cevr";
connectAttr "hom_L_Knee_Fk_rotateZ.a" "clipLibrary4.cel[0].cev[69].cevr"
		;
connectAttr "hom_L_Ankle_Fk_rotateX.a" "clipLibrary4.cel[0].cev[70].cevr"
		;
connectAttr "hom_L_Ankle_Fk_rotateY.a" "clipLibrary4.cel[0].cev[71].cevr"
		;
connectAttr "hom_L_Ankle_Fk_rotateZ.a" "clipLibrary4.cel[0].cev[72].cevr"
		;
connectAttr "hom_L_Ball_Fk_rotateX.a" "clipLibrary4.cel[0].cev[73].cevr"
		;
connectAttr "hom_L_Ball_Fk_rotateY.a" "clipLibrary4.cel[0].cev[74].cevr"
		;
connectAttr "hom_L_Ball_Fk_rotateZ.a" "clipLibrary4.cel[0].cev[75].cevr"
		;
connectAttr "hom_R_Ball_IK_Fk_rotateX.a" "clipLibrary4.cel[0].cev[76].cevr"
		;
connectAttr "hom_R_Ball_IK_Fk_rotateY.a" "clipLibrary4.cel[0].cev[77].cevr"
		;
connectAttr "hom_R_Ball_IK_Fk_rotateZ.a" "clipLibrary4.cel[0].cev[78].cevr"
		;
connectAttr "hom_L_Ball_IK_Fk_rotateX.a" "clipLibrary4.cel[0].cev[79].cevr"
		;
connectAttr "hom_L_Ball_IK_Fk_rotateY.a" "clipLibrary4.cel[0].cev[80].cevr"
		;
connectAttr "hom_L_Ball_IK_Fk_rotateZ.a" "clipLibrary4.cel[0].cev[81].cevr"
		;
connectAttr "hom_Right_Arm_Hoop_translateX.a" "clipLibrary4.cel[0].cev[82].cevr"
		;
connectAttr "hom_Right_Arm_Hoop_translateY.a" "clipLibrary4.cel[0].cev[83].cevr"
		;
connectAttr "hom_Right_Arm_Hoop_translateZ.a" "clipLibrary4.cel[0].cev[84].cevr"
		;
connectAttr "hom_Right_Arm_Hoop_rotateX.a" "clipLibrary4.cel[0].cev[85].cevr"
		;
connectAttr "hom_Right_Arm_Hoop_rotateY.a" "clipLibrary4.cel[0].cev[86].cevr"
		;
connectAttr "hom_Right_Arm_Hoop_rotateZ.a" "clipLibrary4.cel[0].cev[87].cevr"
		;
connectAttr "hom_Left_Arm_Hoop_translateX.a" "clipLibrary4.cel[0].cev[88].cevr"
		;
connectAttr "hom_Left_Arm_Hoop_translateY.a" "clipLibrary4.cel[0].cev[89].cevr"
		;
connectAttr "hom_Left_Arm_Hoop_translateZ.a" "clipLibrary4.cel[0].cev[90].cevr"
		;
connectAttr "hom_Left_Arm_Hoop_rotateX.a" "clipLibrary4.cel[0].cev[91].cevr"
		;
connectAttr "hom_Left_Arm_Hoop_rotateY.a" "clipLibrary4.cel[0].cev[92].cevr"
		;
connectAttr "hom_Left_Arm_Hoop_rotateZ.a" "clipLibrary4.cel[0].cev[93].cevr"
		;
connectAttr "hom_Right_Arm_World_translateX.a" "clipLibrary4.cel[0].cev[94].cevr"
		;
connectAttr "hom_Right_Arm_World_translateY.a" "clipLibrary4.cel[0].cev[95].cevr"
		;
connectAttr "hom_Right_Arm_World_translateZ.a" "clipLibrary4.cel[0].cev[96].cevr"
		;
connectAttr "hom_Right_Arm_World_rotateX.a" "clipLibrary4.cel[0].cev[97].cevr"
		;
connectAttr "hom_Right_Arm_World_rotateY.a" "clipLibrary4.cel[0].cev[98].cevr"
		;
connectAttr "hom_Right_Arm_World_rotateZ.a" "clipLibrary4.cel[0].cev[99].cevr"
		;
connectAttr "hom_Left_Arm_World_translateX.a" "clipLibrary4.cel[0].cev[100].cevr"
		;
connectAttr "hom_Left_Arm_World_translateY.a" "clipLibrary4.cel[0].cev[101].cevr"
		;
connectAttr "hom_Left_Arm_World_translateZ.a" "clipLibrary4.cel[0].cev[102].cevr"
		;
connectAttr "hom_Left_Arm_World_rotateX.a" "clipLibrary4.cel[0].cev[103].cevr"
		;
connectAttr "hom_Left_Arm_World_rotateY.a" "clipLibrary4.cel[0].cev[104].cevr"
		;
connectAttr "hom_Left_Arm_World_rotateZ.a" "clipLibrary4.cel[0].cev[105].cevr"
		;
connectAttr "hom_Left_Elbow_Hoop_translateX.a" "clipLibrary4.cel[0].cev[106].cevr"
		;
connectAttr "hom_Left_Elbow_Hoop_translateY.a" "clipLibrary4.cel[0].cev[107].cevr"
		;
connectAttr "hom_Left_Elbow_Hoop_translateZ.a" "clipLibrary4.cel[0].cev[108].cevr"
		;
connectAttr "hom_Right_Elbow_Hoop_translateX.a" "clipLibrary4.cel[0].cev[109].cevr"
		;
connectAttr "hom_Right_Elbow_Hoop_translateY.a" "clipLibrary4.cel[0].cev[110].cevr"
		;
connectAttr "hom_Right_Elbow_Hoop_translateZ.a" "clipLibrary4.cel[0].cev[111].cevr"
		;
connectAttr "R_FK_Shoulder_rotateX.a" "clipLibrary4.cel[0].cev[112].cevr"
		;
connectAttr "R_FK_Shoulder_rotateY.a" "clipLibrary4.cel[0].cev[113].cevr"
		;
connectAttr "R_FK_Shoulder_rotateZ.a" "clipLibrary4.cel[0].cev[114].cevr"
		;
connectAttr "L_FK_Shoulder_rotateX.a" "clipLibrary4.cel[0].cev[115].cevr"
		;
connectAttr "L_FK_Shoulder_rotateY.a" "clipLibrary4.cel[0].cev[116].cevr"
		;
connectAttr "L_FK_Shoulder_rotateZ.a" "clipLibrary4.cel[0].cev[117].cevr"
		;
connectAttr "R_FK_Elbow_rotateZ.a" "clipLibrary4.cel[0].cev[118].cevr";
connectAttr "L_FK_Elbow_rotateZ.a" "clipLibrary4.cel[0].cev[119].cevr";
connectAttr "R_FK_Wrist_rotateX.a" "clipLibrary4.cel[0].cev[120].cevr";
connectAttr "R_FK_Wrist_rotateY.a" "clipLibrary4.cel[0].cev[121].cevr";
connectAttr "R_FK_Wrist_rotateZ.a" "clipLibrary4.cel[0].cev[122].cevr";
connectAttr "L_FK_Wrist_rotateX.a" "clipLibrary4.cel[0].cev[123].cevr";
connectAttr "L_FK_Wrist_rotateY.a" "clipLibrary4.cel[0].cev[124].cevr";
connectAttr "L_FK_Wrist_rotateZ.a" "clipLibrary4.cel[0].cev[125].cevr";
connectAttr "Thumb_Base_L_rotateX.a" "clipLibrary4.cel[0].cev[126].cevr"
		;
connectAttr "Thumb_Base_L_rotateY.a" "clipLibrary4.cel[0].cev[127].cevr"
		;
connectAttr "Thumb_Base_L_rotateZ.a" "clipLibrary4.cel[0].cev[128].cevr"
		;
connectAttr "Middle_Base_L_rotateX.a" "clipLibrary4.cel[0].cev[129].cevr"
		;
connectAttr "Middle_Base_L_rotateY.a" "clipLibrary4.cel[0].cev[130].cevr"
		;
connectAttr "Middle_Base_L_rotateZ.a" "clipLibrary4.cel[0].cev[131].cevr"
		;
connectAttr "hom_Pelvis_rotateX.a" "clipLibrary4.cel[0].cev[132].cevr";
connectAttr "hom_Pelvis_rotateY.a" "clipLibrary4.cel[0].cev[133].cevr";
connectAttr "hom_Pelvis_rotateZ.a" "clipLibrary4.cel[0].cev[134].cevr";
connectAttr "hom_Thumb_R_rotateX.a" "clipLibrary4.cel[0].cev[135].cevr";
connectAttr "hom_Thumb_R_rotateY.a" "clipLibrary4.cel[0].cev[136].cevr";
connectAttr "hom_Thumb_R_rotateZ.a" "clipLibrary4.cel[0].cev[137].cevr";
connectAttr "hom_Thumb_L_rotateX.a" "clipLibrary4.cel[0].cev[138].cevr";
connectAttr "hom_Thumb_L_rotateY.a" "clipLibrary4.cel[0].cev[139].cevr";
connectAttr "hom_Thumb_L_rotateZ.a" "clipLibrary4.cel[0].cev[140].cevr";
connectAttr "Middle_R_rotateX.a" "clipLibrary4.cel[0].cev[141].cevr";
connectAttr "Middle_R_rotateY.a" "clipLibrary4.cel[0].cev[142].cevr";
connectAttr "Middle_R_rotateZ.a" "clipLibrary4.cel[0].cev[143].cevr";
connectAttr "Jaw_rotateX.a" "clipLibrary4.cel[0].cev[144].cevr";
connectAttr "Jaw_rotateY.a" "clipLibrary4.cel[0].cev[145].cevr";
connectAttr "Jaw_rotateZ.a" "clipLibrary4.cel[0].cev[146].cevr";
connectAttr "Spine_2_rotateX.a" "clipLibrary4.cel[0].cev[147].cevr";
connectAttr "Spine_2_rotateY.a" "clipLibrary4.cel[0].cev[148].cevr";
connectAttr "Spine_2_rotateZ.a" "clipLibrary4.cel[0].cev[149].cevr";
connectAttr "Neck_rotateX.a" "clipLibrary4.cel[0].cev[150].cevr";
connectAttr "Neck_rotateY.a" "clipLibrary4.cel[0].cev[151].cevr";
connectAttr "Neck_rotateZ.a" "clipLibrary4.cel[0].cev[152].cevr";
connectAttr "Head_rotateX.a" "clipLibrary4.cel[0].cev[153].cevr";
connectAttr "Head_rotateY.a" "clipLibrary4.cel[0].cev[154].cevr";
connectAttr "Head_rotateZ.a" "clipLibrary4.cel[0].cev[155].cevr";
connectAttr "Spine_1_rotateX.a" "clipLibrary4.cel[0].cev[156].cevr";
connectAttr "Spine_1_rotateY.a" "clipLibrary4.cel[0].cev[157].cevr";
connectAttr "Spine_1_rotateZ.a" "clipLibrary4.cel[0].cev[158].cevr";
connectAttr "Middle_Base_R_rotateX.a" "clipLibrary4.cel[0].cev[159].cevr"
		;
connectAttr "Middle_Base_R_rotateY.a" "clipLibrary4.cel[0].cev[160].cevr"
		;
connectAttr "Middle_Base_R_rotateZ.a" "clipLibrary4.cel[0].cev[161].cevr"
		;
connectAttr "Thumb_Base_R_rotateX.a" "clipLibrary4.cel[0].cev[162].cevr"
		;
connectAttr "Thumb_Base_R_rotateY.a" "clipLibrary4.cel[0].cev[163].cevr"
		;
connectAttr "Thumb_Base_R_rotateZ.a" "clipLibrary4.cel[0].cev[164].cevr"
		;
connectAttr "Middle_L_rotateX.a" "clipLibrary4.cel[0].cev[165].cevr";
connectAttr "Middle_L_rotateY.a" "clipLibrary4.cel[0].cev[166].cevr";
connectAttr "Middle_L_rotateZ.a" "clipLibrary4.cel[0].cev[167].cevr";
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
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[11].olnk";
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
// End of bart_run_pose.ma
