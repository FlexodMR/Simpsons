//Maya ASCII 4.0 scene
//Name: brt_turn45_CCW.ma
//Last modified: Tue, May 28, 2002 03:14:41 PM
requires maya "4.0";
requires "p3dSimpleShader" "16.4";
requires "p3dDeformer" "16.0.0.1";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_turn45_CCWSource";
	setAttr ".ihi" 0;
	setAttr ".du" 25;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTL -n "animCurveTL2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -0.049449375655084442 1 -0.06402471135779661 
		2 -0.081277841867825898 3 -0.097192075595566405 4 -0.10775072095141228 5 
		-0.10893708634575765 6 -0.093696058498882878 7 -0.064546704148660872 8 -0.031833601731874536 
		9 -0.0059013296853067743 10 0.012300472716268624 11 0.028543969711342161 
		12 0.042567288133027389 13 0.054108554814437854 14 0.062905896588687074 15 
		0.06911854283495944 16 0.073393636708816379 17 0.076201175707937108 18 0.078011157330000774 
		19 0.07929357907268661 20 0.080518438433673775 21 0.082155732910641502 22 
		0.083581846265012277 23 0.084187867462377469 24 0.084465851806669531 25 0.084907854601820903;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 -0.00023932418134911036 2 
		-0.00030587876444723873 3 -0.00045881814413190731 4 -0.00095729671524063793 
		5 -0.0020604688726109537 6 -0.003732914831802396 7 -0.0059756430997515578 
		8 -0.0091024505083615297 9 -0.01342713388953541 10 -0.02012377313485092 11 
		-0.02883868000330693 12 -0.037593999127938274 13 -0.044411875141779772 14 
		-0.047314452677866249 15 -0.046504940255870784 16 -0.043793599923681877 17 
		-0.039613156606657499 18 -0.034396335230155624 19 -0.028575860719534232 20 
		-0.022584458000151297 21 -0.016854851997364813 22 -0.011134826737037598 23 
		-0.0050354288320273886 24 0.0012157182804003186 25 0.0073909911629800353;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 -0.31111111467242103 2 -0.93333334401726309 
		3 -1.4000000160258945 4 -1.2444444586896841 5 0 6 2.086481590844298 7 4.4288677020684268 
		8 6.9849037418171322 9 9.7123351182351598 10 12.568907239467256 11 15.512365513658168 
		12 18.500455348952638 13 21.490922153495415 14 24.441511335431244 15 27.309968302904871 
		16 30.054038464061044 17 32.631467227044503 18 35 19 37.032069903623437 20 
		38.695335175766232 21 40.090378900306355 22 41.317784161121807 23 42.478134042090574 
		24 43.67201162709064 25 45;
createNode animCurveTU -n "brt_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 1;
createNode animCurveTU -n "brt_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 1;
createNode animCurveTU -n "brt_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "brt_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "brt_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "brt_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTL -n "brt_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTL -n "brt_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTL -n "brt_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTL -n "Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.26454016861507795 5 -0.26454016861507795 
		9 -0.26454016861507795 14 -0.30592768688681143 18 -0.12565485269071178 22 
		-0.1320016588910683 25 -0.1320016588910683;
	setAttr -s 7 ".kit[5:6]"  3 3;
	setAttr -s 7 ".kot[5:6]"  3 3;
createNode animCurveTL -n "Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.2310866185004945 5 0.23551636603541187 
		9 0.23551636603541157 14 0.2821974537664888 18 0.36436440170099393 22 0.2427536313308235 
		25 0.2427536313308235;
	setAttr -s 7 ".kit[5:6]"  3 3;
	setAttr -s 7 ".kot[5:6]"  3 3;
createNode animCurveTL -n "Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.064904406754016042 5 -0.064904406754016042 
		9 -0.064904406754016042 14 -0.043897671948574628 18 0.042577340289598996 
		22 0.10268430101983253 25 0.10268430101983253;
	setAttr -s 7 ".kit[5:6]"  3 3;
	setAttr -s 7 ".kot[5:6]"  3 3;
createNode animCurveTA -n "Right_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 9 0 14 13.220970707297967 
		18 21.677402498853461 22 0.52937804713300707 25 0.52937804713300707;
	setAttr -s 7 ".kit[5:6]"  3 3;
	setAttr -s 7 ".kot[5:6]"  3 3;
createNode animCurveTA -n "Right_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -25.948901905116401 5 -25.948901905116401 
		9 -25.948901905116401 14 6.6580430187458601 18 6.6580430187458663 22 14.087411301032011 
		25 14.087411301032011;
	setAttr -s 7 ".kit[5:6]"  3 3;
	setAttr -s 7 ".kot[5:6]"  3 3;
createNode animCurveTA -n "Right_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 9 0 14 -9.6619230723324065 
		18 -9.6619230723324101 22 2.0625319149338543 25 2.0625319149338543;
	setAttr -s 7 ".kit[5:6]"  3 3;
	setAttr -s 7 ".kot[5:6]"  3 3;
createNode animCurveTL -n "Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.21594587158542247 5 0.12347906309676848 
		9 0.31724009019942295 14 0.31724009019942295 21 0.31724009019942295 25 0.31724009019942295;
	setAttr -s 6 ".kit[2:5]"  3 3 9 9;
	setAttr -s 6 ".kot[2:5]"  3 3 9 9;
createNode animCurveTL -n "Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.23108625983085523 5 0.31361084255333604 
		9 0.24361429240783075 14 0.24361429240783075 21 0.24361429240783075 25 0.24361429240783075;
	setAttr -s 6 ".kit[2:5]"  3 3 9 9;
	setAttr -s 6 ".kot[2:5]"  3 3 9 9;
createNode animCurveTL -n "Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.00078430246903575811 5 0.0080936781074702306 
		9 -0.21483653910076048 14 -0.21483653910076048 21 -0.21483653910076048 25 
		-0.21483653910076048;
	setAttr -s 6 ".kit[2:5]"  3 3 9 9;
	setAttr -s 6 ".kot[2:5]"  3 3 9 9;
createNode animCurveTA -n "Left_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 17.442704038995487 9 0.13993760757442705 
		14 0.13993760757442705 21 0.13993760757442705 25 0.13993760757442705;
createNode animCurveTA -n "Left_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 30.072700064410643 9 51.281891424371246 
		14 51.281891424371246 21 51.281891424371246 25 51.281891424371246;
createNode animCurveTA -n "Left_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0.36856385935983527 14 
		0.36856385935983527 21 0.36856385935983527 25 0.36856385935983527;
createNode animCurveTA -n "animCurveTA11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "brt_Right_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "brt_Right_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "brt_Right_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "brt_Left_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "brt_Left_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "brt_Left_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTL -n "Right_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
createNode animCurveTL -n "Right_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
createNode animCurveTL -n "Right_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 5 1 9 1 14 1 21 1 25 1;
createNode animCurveTL -n "Left_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
createNode animCurveTL -n "Left_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
createNode animCurveTL -n "Left_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 5 1 9 1 14 1 21 1 25 1;
createNode animCurveTL -n "Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.076472881617957691 5 -0.1684699310671233 
		9 -0.0091263373992994442 14 0.097283233997789126 21 0.12705288092886258 25 
		0.13130900496480147;
createNode animCurveTL -n "Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.0240788596559134 5 1.0381920148904336 
		9 1.0479037514781822 14 1.0292062600312608 21 1.0370875145379619 25 1.0534305662474923;
	setAttr -s 6 ".kit[4:5]"  1 9;
	setAttr -s 6 ".kot[4:5]"  1 9;
	setAttr -s 6 ".kix[4:5]"  0.081038311123847961 0.081313945353031158;
	setAttr -s 6 ".kiy[4:5]"  0.99671101570129395 0.99668854475021362;
	setAttr -s 6 ".kox[4:5]"  0.081038571894168854 0.081313945353031158;
	setAttr -s 6 ".koy[4:5]"  0.99671095609664917 0.99668854475021362;
createNode animCurveTL -n "Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 -0.00318649103421921 9 -0.020764905659578968 
		14 -0.073171248180984721 21 -0.026065831659295116 25 0.011430081467324413;
	setAttr -s 6 ".kit[4:5]"  1 9;
	setAttr -s 6 ".kot[4:5]"  1 9;
	setAttr -s 6 ".kix[4:5]"  0.039485808461904526 0.035536967217922211;
	setAttr -s 6 ".kiy[4:5]"  0.99922013282775879 0.99936836957931519;
	setAttr -s 6 ".kox[4:5]"  0.039485819637775421 0.035536967217922211;
	setAttr -s 6 ".koy[4:5]"  0.99922013282775879 0.99936836957931519;
createNode animCurveTA -n "Character_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.62843630316474508 5 -4.2889659557988216 
		9 -4.3221309891224644 14 -3.7827056294066135 21 -0.73590357638831183 25 -0.62843630316474508;
createNode animCurveTA -n "Character_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -5.8284402688137158 5 -4.9836194606569988 
		9 8.6636635777831277 14 25.30894180155865 21 31.179822849972499 25 40.200000000000003;
createNode animCurveTA -n "Character_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.2956360193097458 5 2.5214912245651688 
		9 1.4959435164340582 14 0.38168469082212425 21 -2.7058363487641701 25 -1.2956360193097458;
createNode animCurveTA -n "animCurveTA20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA23";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA24";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA27";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA28";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA31";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA33";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA35";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA38";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA39";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTL -n "animCurveTL24";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0.27773886459742925;
createNode animCurveTA -n "animCurveTA46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 28.652637602052774;
createNode animCurveTA -n "animCurveTA48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 64.676908227303443;
createNode animCurveTL -n "animCurveTL27";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0.5198069948790518;
createNode animCurveTL -n "animCurveTL28";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0.36439499068905612;
createNode animCurveTA -n "animCurveTA49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 7.7976222737965299;
createNode animCurveTA -n "animCurveTA50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 -30.409274105849079;
createNode animCurveTA -n "animCurveTA51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 -64.859940280210878;
createNode animCurveTL -n "brt_Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -0.8448236677023373;
createNode animCurveTL -n "brt_Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0.90875111933027442;
createNode animCurveTL -n "brt_Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -0.097994651149805143;
createNode animCurveTA -n "brt_Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 5.4739599453216474;
createNode animCurveTA -n "brt_Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 8.5874521608419823;
createNode animCurveTA -n "brt_Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 74.754744621954103;
createNode animCurveTL -n "brt_Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0.61083301393139333;
createNode animCurveTL -n "brt_Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0.89950600418209226;
createNode animCurveTL -n "brt_Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0.14314299916678522;
createNode animCurveTA -n "brt_Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 16.226511010665405;
createNode animCurveTA -n "brt_Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -8.513966085499284;
createNode animCurveTA -n "brt_Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -68.213989601412422;
createNode animCurveTL -n "brt_Left_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTL -n "brt_Left_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTL -n "brt_Left_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -1;
createNode animCurveTL -n "brt_Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -0.10167917362943303;
createNode animCurveTL -n "brt_Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -0.40762644910266188;
createNode animCurveTL -n "brt_Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 -0.93129112588482243;
createNode animCurveTA -n "R_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 26.634200838989013 5 12.515727944153777 
		9 26.860836807744462 14 33.088808467679087 21 15.366066702508039 25 26.634200838989013;
createNode animCurveTA -n "R_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -68.169688810027651 5 -68.422285803308995 
		9 -64.478098611231005 14 -61.538202533687802 21 -65.502777426417794 25 -68.169688810027651;
createNode animCurveTA -n "R_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -25.970494035879824 5 -13.792456946073651 
		9 -19.187155291830525 14 -16.076588739171239 21 -12.253605392857898 25 -25.970494035879824;
createNode animCurveTA -n "L_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 31.735857389407794 5 17.285260780666771 
		9 14.996420430194194 14 26.210773519878771 21 10.696474705959282 25 31.735857389407794;
createNode animCurveTA -n "L_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -63.769642788512655 5 -63.191931301103928 
		9 -61.819905792772431 14 -53.238163307408648 21 -63.549686954457052 25 -63.769642788512655;
createNode animCurveTA -n "L_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -29.585363300515354 5 -28.961493306830913 
		9 -38.552183345411791 14 -47.801796445128701 21 -20.121464262325318 25 -29.585363300515354;
createNode animCurveTA -n "R_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 12.670039063265143 5 17.848459683077682 
		9 17.848459683077682 14 35.392659604351294 21 19.981870659783006 25 12.670039063265143;
createNode animCurveTA -n "L_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 31.526437289979079 5 31.526437289979079 
		9 23.641665314913901 14 23.641665314913901 21 23.641665314913901 25 31.526437289979079;
createNode animCurveTA -n "R_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 10.989672158724797 5 10.989672158724797 
		9 10.989672158724797 14 7.6965172616157096 21 7.6965172616157096 25 10.989672158724797;
createNode animCurveTA -n "R_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -7.8213229000335263 5 -7.8213229000335263 
		9 -7.8213229000335263 14 -1.1822325767589767 21 -1.1822325767589767 25 -7.8213229000335263;
createNode animCurveTA -n "R_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 7.1689180217311135 5 7.1689180217311135 
		9 7.1689180217311135 14 -2.7225805701322785 21 -2.7225805701322785 25 7.1689180217311135;
createNode animCurveTA -n "L_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 9.5543091941466987 5 9.8804672986877904 
		9 9.8804672986877904 14 9.8804672986877904 21 9.8804672986877904 25 9.5543091941466987;
createNode animCurveTA -n "L_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 3.1141991673710261 5 1.8171816965037182 
		9 1.8171816965037182 14 1.8171816965037182 21 1.8171816965037182 25 3.1141991673710261;
createNode animCurveTA -n "L_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -12.079825411483434 5 -4.5099750834803078 
		9 -4.5099750834803078 14 -4.5099750834803078 21 -4.5099750834803078 25 -12.079825411483434;
createNode animCurveTA -n "Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 10.423754966968488 5 10.423754966968488 
		9 10.423754966968488 14 10.423754966968488 21 10.423754966968488 25 10.423754966968488;
createNode animCurveTA -n "Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.722848255843903 5 27.722848255843903 
		9 27.722848255843903 14 27.722848255843903 21 27.722848255843903 25 27.722848255843903;
createNode animCurveTA -n "Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 21.576484776388227 5 21.576484776388227 
		9 21.576484776388227 14 21.576484776388227 21 21.576484776388227 25 21.576484776388227;
createNode animCurveTA -n "Middle_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
createNode animCurveTA -n "Middle_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
createNode animCurveTA -n "Middle_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.080064458283051 5 27.080064458283051 
		9 27.080064458283051 14 27.080064458283051 21 27.080064458283051 25 27.080064458283051;
createNode animCurveTA -n "animCurveTA78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA83";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 13.994403295754109;
createNode animCurveTA -n "animCurveTA84";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA85";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA86";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 13.994403295754109;
createNode animCurveTA -n "Middle_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
createNode animCurveTA -n "Middle_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
createNode animCurveTA -n "Middle_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.911632519594587 5 27.911632519594587 
		9 27.911632519594587 14 27.911632519594587 21 27.911632519594587 25 27.911632519594587;
createNode animCurveTA -n "Jaw_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
createNode animCurveTA -n "Jaw_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
createNode animCurveTA -n "Jaw_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
createNode animCurveTA -n "Spine_2_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.65073001024951671 5 -0.65073001024951671 
		9 9.2506557526471305 14 16.380826459661783 21 4.9813407430659282 25 -0.65073001024951671;
createNode animCurveTA -n "Spine_2_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -4.2368721935960929 5 -4.2368721935960929 
		9 -9.0139437864697509 14 -10.262586163063158 21 -4.6792815935163325 25 -4.2368721935960929;
createNode animCurveTA -n "Spine_2_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.6995264082587447 5 2.6995264082587447 
		9 1.9203574071774732 14 -2.0731685891325662 21 -1.5793738771823533 25 2.6995264082587447;
createNode animCurveTA -n "Neck_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 11.849880863988108 9 11.849880863988108 
		14 11.849880863988108 21 3.1304567898930151 25 0;
createNode animCurveTA -n "Neck_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 1.7848977639002914 
		25 0;
createNode animCurveTA -n "Neck_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0.097602335376249821 
		25 0;
createNode animCurveTA -n "Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 4.7599965713560239 5 -23.113878732859547 
		9 -7.4544692616566595 14 12.494184135127384 21 2.6330019291068512 25 4.7599965713560239;
	setAttr -s 6 ".kit[0:5]"  3 9 1 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 1 9 9 3;
	setAttr -s 6 ".kix[2:5]"  0.29048189520835876 0.9152647852897644 
		0.938426673412323 1;
	setAttr -s 6 ".kiy[2:5]"  0.95688050985336304 0.402852863073349 
		-0.34547847509384155 0;
	setAttr -s 6 ".kox[2:5]"  0.29048186540603638 0.9152647852897644 
		0.938426673412323 1;
	setAttr -s 6 ".koy[2:5]"  0.95688050985336304 0.402852863073349 
		-0.34547847509384155 0;
createNode animCurveTA -n "Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.81809016928262102 5 -14.368725833515443 
		9 -9.2215761414618882 14 2.157481423536789 21 1.6155781161393779 25 0.81809016928262102;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 1 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 1 3;
	setAttr -s 6 ".kix[4:5]"  0.94736713171005249 1;
	setAttr -s 6 ".kiy[4:5]"  -0.32014927268028259 0;
	setAttr -s 6 ".kox[4:5]"  0.94736713171005249 1;
	setAttr -s 6 ".koy[4:5]"  -0.32014918327331543 0;
createNode animCurveTA -n "Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.8062800556149559 5 14.681157053179938 
		9 7.4025158107550615 14 11.719276215516221 21 3.2852717947621124 25 -2.8062800556149559;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 1 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 1 3;
	setAttr -s 6 ".kix[4:5]"  0.58760261535644531 1;
	setAttr -s 6 ".kiy[4:5]"  -0.80914962291717529 0;
	setAttr -s 6 ".kox[4:5]"  0.58760261535644531 1;
	setAttr -s 6 ".koy[4:5]"  -0.80914962291717529 0;
createNode animCurveTA -n "Spine_1_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.8903601258661931 5 -1.8903601258661931 
		9 -1.8903601258661931 14 -1.8903601258661931 21 -1.8903601258661931 25 -1.8903601258661931;
createNode animCurveTA -n "Spine_1_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.5597289571479034 5 2.5597289571479034 
		9 2.5597289571479034 14 2.5597289571479034 21 2.5597289571479034 25 2.5597289571479034;
createNode animCurveTA -n "Spine_1_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.016811087403604 5 2.016811087403604 
		9 2.016811087403604 14 2.016811087403604 21 2.016811087403604 25 2.016811087403604;
createNode animCurveTA -n "Middle_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
createNode animCurveTA -n "Middle_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
createNode animCurveTA -n "Middle_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 33.429092416277157 5 33.429092416277157 
		9 33.429092416277157 14 33.429092416277157 21 33.429092416277157 25 33.429092416277157;
createNode animCurveTA -n "Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.2533422302317216 5 8.2533422302317216 
		9 8.2533422302317216 14 8.2533422302317216 21 8.2533422302317216 25 8.2533422302317216;
createNode animCurveTA -n "Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 23.263402056531085 5 23.263402056531085 
		9 23.263402056531085 14 23.263402056531085 21 23.263402056531085 25 23.263402056531085;
createNode animCurveTA -n "Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 20.166277752815617 5 20.166277752815617 
		9 20.166277752815617 14 20.166277752815617 21 20.166277752815617 25 20.166277752815617;
createNode animCurveTA -n "Middle_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
createNode animCurveTA -n "Middle_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 14 0 21 0 25 0;
createNode animCurveTA -n "Middle_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 17.254116939558369 5 17.254116939558369 
		9 17.254116939558369 14 17.254116939558369 21 17.254116939558369 25 17.254116939558369;
createNode clipLibrary -n "clipLibrary2";
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
	setAttr ".o" 24;
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
	setAttr ".w" 720;
	setAttr ".h" 486;
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
connectAttr "brt_turn45_CCWSource.st" "clipLibrary2.st[0]";
connectAttr "brt_turn45_CCWSource.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL1.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL2.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary2.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary2.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary2.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "brt_Hoop_Root_IK_FK_RFoot.a" "clipLibrary2.cel[0].cev[6].cevr"
		;
connectAttr "brt_Hoop_Root_IK_FK_LFoot.a" "clipLibrary2.cel[0].cev[7].cevr"
		;
connectAttr "brt_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary2.cel[0].cev[8].cevr"
		;
connectAttr "brt_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary2.cel[0].cev[9].cevr"
		;
connectAttr "brt_Hoop_Root_IK_FK_RArm.a" "clipLibrary2.cel[0].cev[10].cevr"
		;
connectAttr "brt_Hoop_Root_IK_FK_LArm.a" "clipLibrary2.cel[0].cev[11].cevr"
		;
connectAttr "brt_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary2.cel[0].cev[12].cevr"
		;
connectAttr "brt_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary2.cel[0].cev[13].cevr"
		;
connectAttr "brt_Hoop_Root_rotateX.a" "clipLibrary2.cel[0].cev[14].cevr"
		;
connectAttr "brt_Hoop_Root_rotateY.a" "clipLibrary2.cel[0].cev[15].cevr"
		;
connectAttr "brt_Hoop_Root_rotateZ.a" "clipLibrary2.cel[0].cev[16].cevr"
		;
connectAttr "brt_Hoop_Root_translateX.a" "clipLibrary2.cel[0].cev[17].cevr"
		;
connectAttr "brt_Hoop_Root_translateY.a" "clipLibrary2.cel[0].cev[18].cevr"
		;
connectAttr "brt_Hoop_Root_translateZ.a" "clipLibrary2.cel[0].cev[19].cevr"
		;
connectAttr "Right_Foot_Hoop_translateX.a" "clipLibrary2.cel[0].cev[20].cevr"
		;
connectAttr "Right_Foot_Hoop_translateY.a" "clipLibrary2.cel[0].cev[21].cevr"
		;
connectAttr "Right_Foot_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[22].cevr"
		;
connectAttr "Right_Foot_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[23].cevr"
		;
connectAttr "Right_Foot_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[24].cevr"
		;
connectAttr "Right_Foot_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[25].cevr"
		;
connectAttr "Left_Foot_Hoop_translateX.a" "clipLibrary2.cel[0].cev[26].cevr"
		;
connectAttr "Left_Foot_Hoop_translateY.a" "clipLibrary2.cel[0].cev[27].cevr"
		;
connectAttr "Left_Foot_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[28].cevr"
		;
connectAttr "Left_Foot_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[29].cevr"
		;
connectAttr "Left_Foot_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[30].cevr"
		;
connectAttr "Left_Foot_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[31].cevr"
		;
connectAttr "animCurveTA11.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA12.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA13.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA14.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA15.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA16.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "brt_Right_Toe_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[38].cevr"
		;
connectAttr "brt_Right_Toe_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[39].cevr"
		;
connectAttr "brt_Right_Toe_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[40].cevr"
		;
connectAttr "brt_Left_Toe_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[41].cevr"
		;
connectAttr "brt_Left_Toe_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[42].cevr"
		;
connectAttr "brt_Left_Toe_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[43].cevr"
		;
connectAttr "Right_Knee_Hoop_translateX.a" "clipLibrary2.cel[0].cev[44].cevr"
		;
connectAttr "Right_Knee_Hoop_translateY.a" "clipLibrary2.cel[0].cev[45].cevr"
		;
connectAttr "Right_Knee_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[46].cevr"
		;
connectAttr "Left_Knee_Hoop_translateX.a" "clipLibrary2.cel[0].cev[47].cevr"
		;
connectAttr "Left_Knee_Hoop_translateY.a" "clipLibrary2.cel[0].cev[48].cevr"
		;
connectAttr "Left_Knee_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[49].cevr"
		;
connectAttr "Character_Hoop_translateX.a" "clipLibrary2.cel[0].cev[50].cevr"
		;
connectAttr "Character_Hoop_translateY.a" "clipLibrary2.cel[0].cev[51].cevr"
		;
connectAttr "Character_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[52].cevr"
		;
connectAttr "Character_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[53].cevr"
		;
connectAttr "Character_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[54].cevr"
		;
connectAttr "Character_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[55].cevr"
		;
connectAttr "animCurveTA20.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA21.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA22.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA23.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA24.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA25.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA26.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA27.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA28.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA29.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA30.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA31.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA32.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA33.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA34.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA35.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA36.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA37.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA38.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA39.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTA40.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA41.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA42.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA43.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA44.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA45.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL24.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL25.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL26.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA46.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA47.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA48.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL27.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL28.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL29.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA49.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA50.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA51.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "brt_Right_Arm_World_translateX.a" "clipLibrary2.cel[0].cev[94].cevr"
		;
connectAttr "brt_Right_Arm_World_translateY.a" "clipLibrary2.cel[0].cev[95].cevr"
		;
connectAttr "brt_Right_Arm_World_translateZ.a" "clipLibrary2.cel[0].cev[96].cevr"
		;
connectAttr "brt_Right_Arm_World_rotateX.a" "clipLibrary2.cel[0].cev[97].cevr"
		;
connectAttr "brt_Right_Arm_World_rotateY.a" "clipLibrary2.cel[0].cev[98].cevr"
		;
connectAttr "brt_Right_Arm_World_rotateZ.a" "clipLibrary2.cel[0].cev[99].cevr"
		;
connectAttr "brt_Left_Arm_World_translateX.a" "clipLibrary2.cel[0].cev[100].cevr"
		;
connectAttr "brt_Left_Arm_World_translateY.a" "clipLibrary2.cel[0].cev[101].cevr"
		;
connectAttr "brt_Left_Arm_World_translateZ.a" "clipLibrary2.cel[0].cev[102].cevr"
		;
connectAttr "brt_Left_Arm_World_rotateX.a" "clipLibrary2.cel[0].cev[103].cevr"
		;
connectAttr "brt_Left_Arm_World_rotateY.a" "clipLibrary2.cel[0].cev[104].cevr"
		;
connectAttr "brt_Left_Arm_World_rotateZ.a" "clipLibrary2.cel[0].cev[105].cevr"
		;
connectAttr "brt_Left_Elbow_Hoop_translateX.a" "clipLibrary2.cel[0].cev[106].cevr"
		;
connectAttr "brt_Left_Elbow_Hoop_translateY.a" "clipLibrary2.cel[0].cev[107].cevr"
		;
connectAttr "brt_Left_Elbow_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[108].cevr"
		;
connectAttr "brt_Right_Elbow_Hoop_translateX.a" "clipLibrary2.cel[0].cev[109].cevr"
		;
connectAttr "brt_Right_Elbow_Hoop_translateY.a" "clipLibrary2.cel[0].cev[110].cevr"
		;
connectAttr "brt_Right_Elbow_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[111].cevr"
		;
connectAttr "R_FK_Shoulder_rotateX.a" "clipLibrary2.cel[0].cev[112].cevr"
		;
connectAttr "R_FK_Shoulder_rotateY.a" "clipLibrary2.cel[0].cev[113].cevr"
		;
connectAttr "R_FK_Shoulder_rotateZ.a" "clipLibrary2.cel[0].cev[114].cevr"
		;
connectAttr "L_FK_Shoulder_rotateX.a" "clipLibrary2.cel[0].cev[115].cevr"
		;
connectAttr "L_FK_Shoulder_rotateY.a" "clipLibrary2.cel[0].cev[116].cevr"
		;
connectAttr "L_FK_Shoulder_rotateZ.a" "clipLibrary2.cel[0].cev[117].cevr"
		;
connectAttr "R_FK_Elbow_rotateZ.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "L_FK_Elbow_rotateZ.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "R_FK_Wrist_rotateX.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "R_FK_Wrist_rotateY.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "R_FK_Wrist_rotateZ.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "L_FK_Wrist_rotateX.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "L_FK_Wrist_rotateY.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "L_FK_Wrist_rotateZ.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "Thumb_Base_L_rotateX.a" "clipLibrary2.cel[0].cev[126].cevr"
		;
connectAttr "Thumb_Base_L_rotateY.a" "clipLibrary2.cel[0].cev[127].cevr"
		;
connectAttr "Thumb_Base_L_rotateZ.a" "clipLibrary2.cel[0].cev[128].cevr"
		;
connectAttr "Middle_Base_L_rotateX.a" "clipLibrary2.cel[0].cev[129].cevr"
		;
connectAttr "Middle_Base_L_rotateY.a" "clipLibrary2.cel[0].cev[130].cevr"
		;
connectAttr "Middle_Base_L_rotateZ.a" "clipLibrary2.cel[0].cev[131].cevr"
		;
connectAttr "animCurveTA78.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA79.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA80.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA81.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA82.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA83.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA84.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA85.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA86.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "Middle_R_rotateX.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "Middle_R_rotateY.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "Middle_R_rotateZ.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "Jaw_rotateX.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "Jaw_rotateY.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "Jaw_rotateZ.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "Spine_2_rotateX.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "Spine_2_rotateY.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "Spine_2_rotateZ.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "Neck_rotateX.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "Neck_rotateY.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "Neck_rotateZ.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "Head_rotateX.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "Head_rotateY.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "Head_rotateZ.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "Spine_1_rotateX.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "Spine_1_rotateY.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "Spine_1_rotateZ.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "Middle_Base_R_rotateX.a" "clipLibrary2.cel[0].cev[159].cevr"
		;
connectAttr "Middle_Base_R_rotateY.a" "clipLibrary2.cel[0].cev[160].cevr"
		;
connectAttr "Middle_Base_R_rotateZ.a" "clipLibrary2.cel[0].cev[161].cevr"
		;
connectAttr "Thumb_Base_R_rotateX.a" "clipLibrary2.cel[0].cev[162].cevr"
		;
connectAttr "Thumb_Base_R_rotateY.a" "clipLibrary2.cel[0].cev[163].cevr"
		;
connectAttr "Thumb_Base_R_rotateZ.a" "clipLibrary2.cel[0].cev[164].cevr"
		;
connectAttr "Middle_L_rotateX.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "Middle_L_rotateY.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "Middle_L_rotateZ.a" "clipLibrary2.cel[0].cev[167].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
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
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[21].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[22].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[23].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[24].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[25].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[26].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[27].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[28].llnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of brt_turn45_CCW.ma
