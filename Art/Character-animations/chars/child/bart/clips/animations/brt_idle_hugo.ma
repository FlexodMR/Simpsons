//Maya ASCII 4.0 scene
//Name: brt_idle_hugo.ma
//Last modified: Tue, May 27, 2003 01:48:32 PM
requires maya "4.0";
requires "p3dDeformer" "2.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_idle_hugoSource";
	setAttr ".ihi" 0;
	setAttr ".du" 105;
	setAttr ".ci" no;
createNode animCurveTL -n "brt_Extra_Attributes_translateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTL -n "brt_Extra_Attributes_translateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTL -n "animCurveTL79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.033880036066693167 105 -0.033880036066693167;
createNode animCurveTL -n "animCurveTL80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 105 0;
createNode animCurveTL -n "animCurveTL81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 105 0;
createNode animCurveTA -n "animCurveTA239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 105 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_FK_RFoot1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_FK_LFoot1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_Rev_IK_Sim_RFoot1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_Rev_IK_Sim_LFoot1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_FK_RArm1";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 1 100 1 105 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_FK_LArm1";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 1 100 1 105 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_Body_IK_World_RArm1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 1;
createNode animCurveTU -n "brt_Hoop_Root_IK_Body_IK_World_LArm1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  3 1;
createNode animCurveTA -n "brt_Hoop_Root_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_Hoop_Root_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_Hoop_Root_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTL -n "brt_Hoop_Root_translateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTL -n "brt_Hoop_Root_translateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTL -n "brt_Hoop_Root_translateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTL -n "brt_Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 -0.26454016861507795;
createNode animCurveTL -n "brt_Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0.2145489688158761;
createNode animCurveTL -n "brt_Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 -0.064904406754016042;
createNode animCurveTA -n "brt_Right_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_Right_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 -25.948901905116401;
createNode animCurveTA -n "brt_Right_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTL -n "animCurveTL88";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.21594587158542247 6 0.15266692251230798 
		10 0.67248268298410907 95 0.67248268298410907 100 0.38641579629143852 105 
		0.21594587158542247;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 9 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 9 9;
createNode animCurveTL -n "animCurveTL89";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.21454861014623702 6 0.52689057905819758 
		10 0.21454861014623702 95 0.21516311735287247 100 0.28346795685965676 105 
		0.21454861014623702;
	setAttr -s 6 ".kit[4:5]"  9 9;
	setAttr -s 6 ".kot[4:5]"  9 9;
createNode animCurveTL -n "brt_Left_Foot_Hoop_translateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  95 0.00078430246903575811 100 0.00078430246903575811;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTA -n "animCurveTA246";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 6 34.505056971681434 10 0 95 
		1.5731952175560053e-017 100 1.7643989439974276e-015 105 0;
	setAttr -s 6 ".kit[4:5]"  9 9;
	setAttr -s 6 ".kot[4:5]"  9 9;
createNode animCurveTA -n "animCurveTA247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 6 25.94308346192949 10 41.069891813578771 
		95 41.069891813578771 100 25.66868185112445 105 0;
	setAttr -s 6 ".kit[2:5]"  3 3 9 9;
	setAttr -s 6 ".kot[2:5]"  3 3 9 9;
createNode animCurveTA -n "animCurveTA248";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 6 16.737462451542147 10 0 95 
		0.31365109533077523 100 35.177176691713107 105 0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 9 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 9 9;
createNode animCurveTA -n "brt_Right_Ball_Hoop_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_Right_Ball_Hoop_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_Right_Ball_Hoop_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_Left_Ball_Hoop_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_Left_Ball_Hoop_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_Left_Ball_Hoop_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_Right_Toe_Hoop_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_Right_Toe_Hoop_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_Right_Toe_Hoop_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_Left_Toe_Hoop_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_Left_Toe_Hoop_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_Left_Toe_Hoop_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTL -n "brt_Right_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTL -n "brt_Right_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTL -n "brt_Right_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 1;
createNode animCurveTL -n "brt_Left_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTL -n "brt_Left_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTL -n "brt_Left_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 1;
createNode animCurveTL -n "animCurveTL97";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.076472881617957691 6 -0.20682194041192492 
		10 0.30869090545673744 51 0.33887603426282698 57 0.15482241658273097 95 0.15482241658273097 
		100 -0.15211885822826282 105 -0.076472881617957691;
	setAttr -s 8 ".kit[2:7]"  1 3 1 1 9 9;
	setAttr -s 8 ".kot[2:7]"  1 3 1 1 9 9;
	setAttr -s 8 ".kix[2:7]"  0.30731639266014099 1 0.42376190423965454 
		0.3572528064250946 0.014410095289349556 0.022027114406228065;
	setAttr -s 8 ".kiy[2:7]"  0.95160740613937378 0 -0.90577363967895508 
		-0.93400770425796509 -0.99989616870880127 0.99975734949111938;
	setAttr -s 8 ".kox[2:7]"  0.3073158860206604 1 0.42376205325126648 
		0.35725325345993042 0.014410095289349556 0.022027114406228065;
	setAttr -s 8 ".koy[2:7]"  0.95160758495330811 0 -0.90577352046966553 
		-0.93400758504867554 -0.99989616870880127 0.99975734949111938;
createNode animCurveTL -n "animCurveTL98";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.96624786942537044 6 0.92508178631019577 
		10 0.64359671878709568 95 0.62863503760073813 100 0.88080476141588937 105 
		0.96624786942537044;
	setAttr -s 6 ".kit[0:5]"  3 1 1 1 9 9;
	setAttr -s 6 ".kot[0:5]"  3 1 1 1 9 9;
	setAttr -s 6 ".kix[1:5]"  0.027293896302580833 0.39287376403808594 
		0.75559705495834351 0.0098727606236934662 0.01950245164334774;
	setAttr -s 6 ".kiy[1:5]"  -0.99962747097015381 -0.91959238052368164 
		0.65503668785095215 0.99995124340057373 0.99980980157852173;
	setAttr -s 6 ".kox[1:5]"  0.027293713763356209 0.39287370443344116 
		0.75559717416763306 0.0098727606236934662 0.01950245164334774;
	setAttr -s 6 ".koy[1:5]"  -0.99962747097015381 -0.91959244012832642 
		0.6550365686416626 0.99995124340057373 0.99980980157852173;
createNode animCurveTL -n "animCurveTL99";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0.02116917138151795 10 0.030410588516415992 
		51 0.059668105099209223 95 0.059668105099209223 100 0.037253101130005871 
		105 0;
	setAttr -s 7 ".kit[2:6]"  1 1 1 9 9;
	setAttr -s 7 ".kot[2:6]"  1 1 1 9 9;
	setAttr -s 7 ".kix[2:6]"  0.29621744155883789 0.86325305700302124 
		0.99554455280303955 0.055777601897716522 0.044694308191537857;
	setAttr -s 7 ".kiy[2:6]"  0.9551205039024353 0.50477141141891479 
		-0.094292186200618744 -0.99844324588775635 -0.99900072813034058;
	setAttr -s 7 ".kox[2:6]"  0.29621604084968567 0.86325246095657349 
		0.99554455280303955 0.055777601897716522 0.044694308191537857;
	setAttr -s 7 ".koy[2:6]"  0.95512098073959351 0.5047723650932312 
		-0.094292193651199341 -0.99844324588775635 -0.99900072813034058;
createNode animCurveTA -n "animCurveTA261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.62843630316474508 6 3.2690227867529793 
		10 9.5441631255155031 51 8.8802937018917802 95 8.8802937018917802 100 0 105 
		-0.62843630316474508;
	setAttr -s 7 ".kit[2:6]"  1 1 1 9 9;
	setAttr -s 7 ".kot[2:6]"  1 1 1 9 9;
	setAttr -s 7 ".kix[2:6]"  0.99928861856460571 0.99999892711639404 
		0.99999487400054932 0.89518648386001587 0.99784153699874878;
	setAttr -s 7 ".kiy[2:6]"  0.037712182849645615 -0.0014494205825030804 
		-0.0032008632551878691 -0.44569182395935059 -0.065667636692523956;
	setAttr -s 7 ".kox[2:6]"  0.99928861856460571 0.99999892711639404 
		0.99999487400054932 0.89518648386001587 0.99784153699874878;
	setAttr -s 7 ".koy[2:6]"  0.037712175399065018 -0.0014494172064587474 
		-0.0032008639536798 -0.44569182395935059 -0.065667636692523956;
createNode animCurveTA -n "animCurveTA262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -5.8284402688137158 6 -6.0534067664566935 
		10 -5.8260685689500464 51 -11.878814555241432 95 -11.878814555241432 100 
		0 105 -5.8284402688137158;
	setAttr -s 7 ".kit[2:6]"  1 1 1 9 9;
	setAttr -s 7 ".kot[2:6]"  1 1 1 9 9;
	setAttr -s 7 ".kix[2:6]"  0.99988281726837158 0.99998629093170166 
		0.9999995231628418 0.95330649614334106 0.85356974601745605;
	setAttr -s 7 ".kiy[2:6]"  -0.015307171270251274 -0.0052355262450873852 
		0.00097856367938220501 0.30200451612472534 -0.52097862958908081;
	setAttr -s 7 ".kox[2:6]"  0.99988281726837158 0.99998629093170166 
		0.9999995231628418 0.95330649614334106 0.85356974601745605;
	setAttr -s 7 ".koy[2:6]"  -0.015307182446122169 -0.0052355239167809486 
		0.00097856391221284866 0.30200451612472534 -0.52097862958908081;
createNode animCurveTA -n "animCurveTA263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.2956360193097458 6 -6.0682859030874665 
		10 -0.53114872438436089 95 -0.57147491975097586 100 -1.8603494990012244 105 
		-1.2956360193097458;
	setAttr -s 6 ".kit[1:5]"  3 1 1 9 9;
	setAttr -s 6 ".kot[1:5]"  3 1 1 9 9;
	setAttr -s 6 ".kix[2:5]"  0.99999862909317017 0.99999988079071045 
		0.99928194284439087 0.99825602769851685;
	setAttr -s 6 ".kiy[2:5]"  0.0016428380040451884 0.00050450942944735289 
		-0.037889759987592697 0.059033509343862534;
	setAttr -s 6 ".kox[2:5]"  0.99999862909317017 0.99999988079071045 
		0.99928194284439087 0.99825602769851685;
	setAttr -s 6 ".koy[2:5]"  0.001642839633859694 0.00050450942944735289 
		-0.037889759987592697 0.059033509343862534;
createNode animCurveTA -n "brt_R_Hip_Fk_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_R_Hip_Fk_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_R_Hip_Fk_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_R_Knee_Fk_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_R_Ankle_Fk_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_R_Ankle_Fk_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_R_Ankle_Fk_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_R_Ball_Fk_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_R_Ball_Fk_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_R_Ball_Fk_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_L_Hip_Fk_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_L_Hip_Fk_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_L_Hip_Fk_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_L_Knee_Fk_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_L_Ankle_Fk_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_L_Ankle_Fk_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_L_Ankle_Fk_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_L_Ball_Fk_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_L_Ball_Fk_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_L_Ball_Fk_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "animCurveTA284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 10 0 51 0 57 0 77 0 85 
		0 95 0 100 0 105 0;
createNode animCurveTA -n "animCurveTA285";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 10 0 51 0 57 0 77 0 85 
		0 95 0 100 0 105 0;
createNode animCurveTA -n "animCurveTA286";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 10 0 51 0 57 0 77 0 85 
		0 95 0 100 0 105 0;
createNode animCurveTA -n "animCurveTA287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 10 0 51 0 57 0 77 0 85 
		0 95 0 100 0 105 0;
createNode animCurveTA -n "animCurveTA288";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 10 0 51 0 57 0 77 0 85 
		0 95 0 100 0 105 0;
createNode animCurveTA -n "animCurveTA289";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 10 0 51 0 57 0 77 0 85 
		0 95 0 100 0 105 0;
createNode animCurveTL -n "brt_Right_Arm_Hoop_translateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 -0.43524234076486068;
createNode animCurveTL -n "brt_Right_Arm_Hoop_translateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 -0.82665738350180629;
createNode animCurveTL -n "brt_Right_Arm_Hoop_translateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0.27773886459742925;
createNode animCurveTA -n "brt_Right_Arm_Hoop_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_Right_Arm_Hoop_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 28.652637602052774;
createNode animCurveTA -n "brt_Right_Arm_Hoop_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 64.676908227303443;
createNode animCurveTL -n "brt_Left_Arm_Hoop_translateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0.5198069948790518;
createNode animCurveTL -n "brt_Left_Arm_Hoop_translateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 -0.72394202659893114;
createNode animCurveTL -n "brt_Left_Arm_Hoop_translateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0.36439499068905612;
createNode animCurveTA -n "brt_Left_Arm_Hoop_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 7.7976222737965299;
createNode animCurveTA -n "brt_Left_Arm_Hoop_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 -30.409274105849079;
createNode animCurveTA -n "brt_Left_Arm_Hoop_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 -64.859940280210878;
createNode animCurveTL -n "animCurveTL106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.8448236677023373 6 -0.8448236677023373 
		10 -0.8448236677023373 51 -0.8448236677023373 57 -0.8448236677023373 77 -0.8448236677023373 
		85 -0.8448236677023373 95 -0.8448236677023373 100 -0.8448236677023373 105 
		-0.8448236677023373;
createNode animCurveTL -n "animCurveTL107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  -0.015 1.0269179155097397 0 1.0269179155097397 
		6 1.0269179155097397 10 1.0269179155097397 51 1.0269179155097397 57 1.0269179155097397 
		77 1.0269179155097397 85 1.0269179155097397 95 1.0269179155097397 100 1.0269179155097397 
		105 1.0269179155097397;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTL -n "animCurveTL108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.097994651149805143 6 -0.097994651149805143 
		10 -0.097994651149805143 51 -0.097994651149805143 57 -0.097994651149805143 
		77 -0.097994651149805143 85 -0.097994651149805143 95 -0.097994651149805143 
		100 -0.097994651149805143 105 -0.097994651149805143;
createNode animCurveTA -n "animCurveTA296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 5.4739599453216474 6 5.4739599453216474 
		10 5.4739599453216474 51 5.4739599453216474 57 5.4739599453216474 77 5.4739599453216474 
		85 5.4739599453216474 95 5.4739599453216474 100 5.4739599453216474 105 5.4739599453216474;
createNode animCurveTA -n "animCurveTA297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 8.5874521608419823 6 8.5874521608419823 
		10 8.5874521608419823 51 8.5874521608419823 57 8.5874521608419823 77 8.5874521608419823 
		85 8.5874521608419823 95 8.5874521608419823 100 8.5874521608419823 105 8.5874521608419823;
createNode animCurveTA -n "animCurveTA298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 74.754744621954103 6 74.754744621954103 
		10 74.754744621954103 51 74.754744621954103 57 74.754744621954103 77 74.754744621954103 
		85 74.754744621954103 95 74.754744621954103 100 74.754744621954103 105 74.754744621954103;
createNode animCurveTL -n "animCurveTL109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.61083301393139333 6 0.61083301393139333 
		10 0.61083301393139333 51 0.61083301393139333 57 0.61083301393139333 77 0.61083301393139333 
		85 0.61083301393139333 95 0.61083301393139333 100 0.61083301393139333 105 
		0.61083301393139333;
createNode animCurveTL -n "animCurveTL110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.0176944705789435 6 1.0176944705789435 
		10 1.0176944705789435 51 1.0176944705789435 57 1.0176944705789435 77 1.0176944705789435 
		85 1.0176944705789435 95 1.0176944705789435 100 1.0176944705789435 105 1.0176944705789435;
createNode animCurveTL -n "animCurveTL111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.14314299916678522 6 0.14314299916678522 
		10 0.14314299916678522 51 0.14314299916678522 57 0.14314299916678522 77 0.14314299916678522 
		85 0.14314299916678522 95 0.14314299916678522 100 0.14314299916678522 105 
		0.14314299916678522;
createNode animCurveTA -n "animCurveTA299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 16.226511010665405 6 16.226511010665405 
		10 16.226511010665405 51 16.226511010665405 57 16.226511010665405 77 16.226511010665405 
		85 16.226511010665405 95 16.226511010665405 100 16.226511010665405 105 16.226511010665405;
createNode animCurveTA -n "animCurveTA300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -8.513966085499284 6 -8.513966085499284 
		10 -8.513966085499284 51 -8.513966085499284 57 -8.513966085499284 77 -8.513966085499284 
		85 -8.513966085499284 95 -8.513966085499284 100 -8.513966085499284 105 -8.513966085499284;
createNode animCurveTA -n "animCurveTA301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -68.213989601412422 6 -68.213989601412422 
		10 -68.213989601412422 51 -68.213989601412422 57 -68.213989601412422 77 -68.213989601412422 
		85 -68.213989601412422 95 -68.213989601412422 100 -68.213989601412422 105 
		-68.213989601412422;
createNode animCurveTL -n "animCurveTL112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 10 0 51 0 57 0 77 0 85 
		0 95 0 100 0 105 0;
createNode animCurveTL -n "animCurveTL113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 10 0 51 0 57 0 77 0 85 
		0 95 0 100 0 105 0;
createNode animCurveTL -n "animCurveTL114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1 6 -1 10 -1 51 -1 57 -1 77 
		-1 85 -1 95 -1 100 -1 105 -1;
createNode animCurveTL -n "animCurveTL115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.10167917362943303 6 -0.10167917362943303 
		10 -0.10167917362943303 51 -0.10167917362943303 57 -0.10167917362943303 77 
		-0.10167917362943303 85 -0.10167917362943303 95 -0.10167917362943303 100 
		-0.10167917362943303 105 -0.10167917362943303;
createNode animCurveTL -n "animCurveTL116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.40762644910266188 6 -0.40762644910266188 
		10 -0.40762644910266188 51 -0.40762644910266188 57 -0.40762644910266188 77 
		-0.40762644910266188 85 -0.40762644910266188 95 -0.40762644910266188 100 
		-0.40762644910266188 105 -0.40762644910266188;
createNode animCurveTL -n "animCurveTL117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.93129112588482243 6 -0.93129112588482243 
		10 -0.93129112588482243 51 -0.93129112588482243 57 -0.93129112588482243 77 
		-0.93129112588482243 85 -0.93129112588482243 95 -0.93129112588482243 100 
		-0.93129112588482243 105 -0.93129112588482243;
createNode animCurveTA -n "animCurveTA302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 12.253734489678925 6 -46.641294135039516 
		10 -69.621807514879151 51 -70.525491346482866 57 -64.619664317164521 95 -64.619664317164521 
		100 -25.289501729324606 105 12.253734489678925;
	setAttr -s 8 ".kit[5:7]"  1 9 9;
	setAttr -s 8 ".kot[5:7]"  1 9 9;
	setAttr -s 8 ".kix[5:7]"  0.99977326393127441 0.24111242592334747 
		0.24650564789772034;
	setAttr -s 8 ".kiy[5:7]"  0.021292734891176224 0.97049719095230103 
		0.96914136409759521;
	setAttr -s 8 ".kox[5:7]"  0.99977326393127441 0.24111242592334747 
		0.24650564789772034;
	setAttr -s 8 ".koy[5:7]"  0.021292701363563538 0.97049719095230103 
		0.96914136409759521;
createNode animCurveTA -n "animCurveTA303";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -65.746751280844961 6 -25.053693857401306 
		10 -9.1270079994755893 51 -7.0732301749366764 57 -23.697419940101284 95 -23.697419940101284 
		100 -27.359850025536446 105 -65.746751280844961;
	setAttr -s 8 ".kit[4:7]"  1 1 9 9;
	setAttr -s 8 ".kot[4:7]"  1 1 9 9;
	setAttr -s 8 ".kix[4:7]"  0.99985045194625854 0.99898332357406616 
		0.41353842616081238 0.24140702188014984;
	setAttr -s 8 ".kiy[4:7]"  -0.017294023185968399 -0.045081015676259995 
		-0.91048663854598999 -0.97042393684387207;
	setAttr -s 8 ".kox[4:7]"  0.99985045194625854 0.99898332357406616 
		0.41353842616081238 0.24140702188014984;
	setAttr -s 8 ".koy[4:7]"  -0.01729402132332325 -0.04508102685213089 
		-0.91048663854598999 -0.97042393684387207;
createNode animCurveTA -n "animCurveTA304";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 3.871449260799477e-015 6 30.726012969955203 
		10 42.512193909420837 51 37.000347815694987 57 77.193173877328277 95 77.193173877328277 
		100 30.608950282658764 105 0;
	setAttr -s 8 ".kit[4:7]"  1 1 9 9;
	setAttr -s 8 ".kot[4:7]"  1 1 9 9;
	setAttr -s 8 ".kix[4:7]"  0.99998754262924194 0.99885934591293335 
		0.24017131328582764 0.29782038927078247;
	setAttr -s 8 ".kiy[4:7]"  0.00498918816447258 -0.047749720513820648 
		-0.97073054313659668 -0.95462191104888916;
	setAttr -s 8 ".kox[4:7]"  0.99998754262924194 0.99885934591293335 
		0.24017131328582764 0.29782038927078247;
	setAttr -s 8 ".koy[4:7]"  0.0049891993403434753 -0.047749754041433334 
		-0.97073054313659668 -0.95462191104888916;
createNode animCurveTA -n "animCurveTA305";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.061808866237337522 6 -46.892593176358979 
		10 -65.15615999083856 51 -65.593314129343682 57 -136.26260469859278 61 -77.82356438188576 
		65 -136.26260469859278 69 -77.82356438188576 73 -136.26260469859278 77 -77.82356438188576 
		85 -81.708137020125164 95 -81.708137020125164 100 -50.724418499395689 105 
		-0.061808866237337522;
	setAttr -s 14 ".kit[2:13]"  1 9 9 9 9 9 9 
		1 9 1 9 9;
	setAttr -s 14 ".kot[2:13]"  1 9 9 9 9 9 9 
		1 9 1 9 9;
	setAttr -s 14 ".kix[2:13]"  0.98602771759033203 0.78385978937149048 
		0.8421282172203064 1 1 1 1 0.99989420175552368 0.99367624521255493 0.98842990398406982 
		0.22777000069618225 0.18522647023200989;
	setAttr -s 14 ".kiy[2:13]"  -0.16658134758472443 -0.62093782424926758 
		-0.53927737474441528 0 0 0 0 0.014544159173965454 -0.11228306591510773 0.15167826414108276 
		0.97371494770050049 0.98269587755203247;
	setAttr -s 14 ".kox[2:13]"  0.98602771759033203 0.78385978937149048 
		0.8421282172203064 1 1 1 1 0.99989420175552368 0.99367624521255493 0.98842990398406982 
		0.22777000069618225 0.18522647023200989;
	setAttr -s 14 ".koy[2:13]"  -0.16658133268356323 -0.62093782424926758 
		-0.53927737474441528 0 0 0 0 0.014544081874191761 -0.11228306591510773 0.15167839825153351 
		0.97371494770050049 0.98269587755203247;
createNode animCurveTA -n "animCurveTA306";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -59.058178941076754 6 -35.22633423661901 
		10 -25.961264554845538 51 -26.597541458098149 57 76.237934835436391 61 69.048203314769069 
		65 76.237934835436391 69 69.048203314769069 73 76.237934835436391 77 69.048203314769069 
		85 -14.23234348967793 95 -14.23234348967793 100 -33.843647612621588 105 -59.058178941076754;
createNode animCurveTA -n "animCurveTA307";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 16.579147429757843 6 51.083499639367602 
		10 64.455443371866565 51 62.288248280101236 57 -4.921920967864998 61 54.631546312498351 
		65 -4.921920967864998 69 54.631546312498351 73 -4.921920967864998 77 54.631546312498351 
		85 70.8636500655617 95 70.8636500655617 100 50.348679409496867 105 16.579147429757843;
	setAttr -s 14 ".kit[9:13]"  1 1 1 9 9;
	setAttr -s 14 ".kot[9:13]"  1 1 1 9 9;
	setAttr -s 14 ".kix[9:13]"  0.47155013680458069 0.99477612972259521 
		0.99780935049057007 0.33188286423683167 0.27210834622383118;
	setAttr -s 14 ".kiy[9:13]"  0.88183927536010742 0.10208062827587128 
		-0.066155470907688141 -0.943320631980896 -0.96226662397384644;
	setAttr -s 14 ".kox[9:13]"  0.47155013680458069 0.99477612972259521 
		0.99780935049057007 0.33188286423683167 0.27210834622383118;
	setAttr -s 14 ".koy[9:13]"  0.88183927536010742 0.10208059847354889 
		-0.066155493259429932 -0.943320631980896 -0.96226662397384644;
createNode animCurveTA -n "animCurveTA308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.5572674112203622 6 56.9945980518116 
		10 76.255789503537997 51 87.648774902469398 57 36.327504471175409 95 36.327504471175409 
		100 25.744988236928148 105 8.5572674112203622;
	setAttr -s 8 ".kit[4:7]"  1 1 9 9;
	setAttr -s 8 ".kot[4:7]"  1 1 9 9;
	setAttr -s 8 ".kix[4:7]"  0.99975192546844482 0.99751323461532593 
		0.56666088104248047 0.48566490411758423;
	setAttr -s 8 ".kiy[4:7]"  0.022271947935223579 -0.070479437708854675 
		-0.8239511251449585 -0.87414509057998657;
	setAttr -s 8 ".kox[4:7]"  0.99975192546844482 0.99751323461532593 
		0.56666088104248047 0.48566490411758423;
	setAttr -s 8 ".koy[4:7]"  0.022271972149610519 -0.070479452610015869 
		-0.8239511251449585 -0.87414509057998657;
createNode animCurveTA -n "animCurveTA309";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 15.711328223519057 6 76.103544678260434 
		10 100.06106925993156 51 112.56927834808781 57 44.394774586544095 61 39.930967691986361 
		65 44.394774586544095 69 39.525167047756995 73 44.394774586544095 77 39.525167047756995 
		85 44.394774586544095 95 44.394774586544095 100 33.484851291059222 105 15.711328223519057;
	setAttr -s 14 ".kit[3:13]"  1 1 9 9 9 9 9 
		9 1 9 9;
	setAttr -s 14 ".kot[3:13]"  1 1 9 9 9 9 9 
		9 1 9 9;
	setAttr -s 14 ".kix[3:13]"  0.99688965082168579 0.73482155799865723 
		1 0.99964749813079834 1 1 1 0.99011600017547607 0.99793577194213867 0.55422383546829224 
		0.47329044342041016;
	setAttr -s 14 ".kiy[3:13]"  -0.078809760510921478 -0.6782604455947876 
		0 -0.026550225913524628 0 0 0 0.14025105535984039 -0.064219802618026733 -0.8323676586151123 
		-0.88090646266937256;
	setAttr -s 14 ".kox[3:13]"  0.99688965082168579 0.73482155799865723 
		1 0.99964749813079834 1 1 1 0.99011600017547607 0.99793577194213867 0.55422383546829224 
		0.47329044342041016;
	setAttr -s 14 ".koy[3:13]"  -0.078809738159179688 -0.67826050519943237 
		0 -0.026550225913524628 0 0 0 0.14025105535984039 -0.064219795167446136 -0.8323676586151123 
		-0.88090646266937256;
createNode animCurveTA -n "animCurveTA310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 32.528069634471535 10 45.071166042275316 
		51 41.172058716978711 57 74.562374936007487 95 74.562374936007487 100 46.460788022565339 
		105 0;
	setAttr -s 8 ".kit[4:7]"  1 1 9 9;
	setAttr -s 8 ".kot[4:7]"  1 1 9 9;
	setAttr -s 8 ".kix[4:7]"  0.99954670667648315 0.99826788902282715 
		0.24813196063041687 0.20132611691951752;
	setAttr -s 8 ".kiy[4:7]"  0.0301059540361166 -0.058832067996263504 
		-0.96872621774673462 -0.97952425479888916;
	setAttr -s 8 ".kox[4:7]"  0.99954670667648315 0.99826788902282715 
		0.24813196063041687 0.20132611691951752;
	setAttr -s 8 ".koy[4:7]"  0.030105946585536003 -0.058832067996263504 
		-0.96872621774673462 -0.97952425479888916;
createNode animCurveTA -n "animCurveTA311";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 -4.4277338481365591 10 -6.3839377081393378 
		51 -13.189605117043589 57 -6.6279088400506119 95 -6.6279088400506119 100 
		-4.1248103853372653 105 0;
	setAttr -s 8 ".kit[4:7]"  1 1 9 9;
	setAttr -s 8 ".kot[4:7]"  1 1 9 9;
	setAttr -s 8 ".kix[4:7]"  0.99993771314620972 0.99997270107269287 
		0.94472801685333252 0.918018639087677;
	setAttr -s 8 ".kiy[4:7]"  0.011161435395479202 0.007385715376585722 
		0.32785511016845703 0.39653727412223816;
	setAttr -s 8 ".kox[4:7]"  0.99993771314620972 0.99997270107269287 
		0.94472801685333252 0.918018639087677;
	setAttr -s 8 ".koy[4:7]"  0.011161435395479202 0.0073857167735695839 
		0.32785511016845703 0.39653727412223816;
createNode animCurveTA -n "animCurveTA312";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 -20.236001968746201 10 -28.562192920881817 
		51 -41.556877469774875 57 -21.706264603838125 95 -21.706264603838125 100 
		-13.514721641802565 105 0;
	setAttr -s 8 ".kit[4:7]"  1 1 9 9;
	setAttr -s 8 ".kot[4:7]"  1 1 9 9;
	setAttr -s 8 ".kix[4:7]"  0.99961376190185547 0.99976563453674316 
		0.66057097911834717 0.57706606388092041;
	setAttr -s 8 ".kiy[4:7]"  0.027791179716587067 0.021648144349455833 
		0.75076359510421753 0.81669747829437256;
	setAttr -s 8 ".kox[4:7]"  0.99961376190185547 0.99976563453674316 
		0.66057097911834717 0.57706606388092041;
	setAttr -s 8 ".koy[4:7]"  0.027791183441877365 0.021648142486810684 
		0.75076359510421753 0.81669747829437256;
createNode animCurveTA -n "animCurveTA313";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 6 47.602413096568256 10 66.132419293034857 
		51 65.559899994175765 57 -27.26480578581203 61 -12.407890953048808 65 -27.26480578581203 
		69 -12.407890953048808 73 -27.26480578581203 77 -12.407890953048808 85 -38.128441801788746 
		95 -38.128441801788746 100 -21.44724787704714 105 0;
createNode animCurveTA -n "animCurveTA314";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 6 -6.2228761582046515 10 -8.8059421840933929 
		51 -13.469403217827026 57 -19.746505490364402 61 -40.017084116599065 65 -19.746505490364402 
		69 -40.017084116599065 73 -19.746505490364402 77 -40.017084116599065 85 1.703285671719365 
		95 1.703285671719365 100 0.95809816706341766 105 0;
	setAttr -s 14 ".kit[10:13]"  1 9 9 9;
	setAttr -s 14 ".kot[10:13]"  1 9 9 9;
	setAttr -s 14 ".kix[10:13]"  0.99958604574203491 0.99966186285018921 
		0.99604666233062744 0.99500447511672974;
	setAttr -s 14 ".kiy[10:13]"  0.028769884258508682 -0.0260031558573246 
		-0.088831260800361633 -0.099830575287342072;
	setAttr -s 14 ".kox[10:13]"  0.99958604574203491 0.99966186285018921 
		0.99604666233062744 0.99500447511672974;
	setAttr -s 14 ".koy[10:13]"  0.02876991406083107 -0.0260031558573246 
		-0.088831260800361633 -0.099830575287342072;
createNode animCurveTA -n "animCurveTA315";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 6 -35.363933368340646 10 -49.667553980278534 
		51 -65.093643737477549 57 36.208310407463003 61 1.8629215247740913 65 36.208310407463003 
		69 1.8629215247740913 73 36.208310407463003 77 1.8629215247740913 85 5.8691602724494372 
		95 5.8691602724494372 100 3.3014025562247404 105 0;
	setAttr -s 14 ".kit[3:13]"  1 9 9 9 9 9 1 
		9 9 9 9;
	setAttr -s 14 ".kot[3:13]"  1 9 9 9 9 9 1 
		9 9 9 9;
	setAttr -s 14 ".kix[3:13]"  0.99998944997787476 0.27429813146591187 
		1 1 1 1 0.98809510469436646 0.99327796697616577 0.99600714445114136 0.95588207244873047 
		0.94511216878890991;
	setAttr -s 14 ".kiy[3:13]"  0.0045937593095004559 0.96164470911026001 
		0 0 0 0 -0.15384446084499359 0.11575339734554291 -0.089273765683174133 -0.29375070333480835 
		-0.32674604654312134;
	setAttr -s 14 ".kox[3:13]"  0.99998944997787476 0.27429813146591187 
		1 1 1 1 0.98809510469436646 0.99327796697616577 0.99600714445114136 0.95588207244873047 
		0.94511216878890991;
	setAttr -s 14 ".koy[3:13]"  0.0045937616378068924 0.96164470911026001 
		0 0 0 0 -0.15384437143802643 0.11575339734554291 -0.089273765683174133 -0.29375070333480835 
		-0.32674604654312134;
createNode animCurveTA -n "animCurveTA316";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 210.60557314878687 6 210.60557314878687 
		10 210.60557314878687 51 210.60557314878687 57 210.60557314878687 77 210.60557314878687 
		85 210.60557314878687 95 210.60557314878687 100 210.60557314878687 105 210.60557314878687;
createNode animCurveTA -n "animCurveTA317";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 27.722848255843903 6 27.722848255843903 
		10 27.722848255843903 51 27.722848255843903 57 27.722848255843903 77 27.722848255843903 
		85 27.722848255843903 95 27.722848255843903 100 27.722848255843903 105 27.722848255843903;
createNode animCurveTA -n "animCurveTA318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 21.576484776388227 6 21.576484776388227 
		10 21.576484776388227 51 21.576484776388227 57 21.576484776388227 77 21.576484776388227 
		85 21.576484776388227 95 21.576484776388227 100 21.576484776388227 105 21.576484776388227;
createNode animCurveTA -n "animCurveTA319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 10 0 51 0 57 0 77 0 85 
		0 95 0 100 0 105 0;
createNode animCurveTA -n "animCurveTA320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 10 0 51 0 57 0 77 0 85 
		0 95 0 100 0 105 0;
createNode animCurveTA -n "animCurveTA321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 27.080064458283051 6 27.080064458283051 
		10 27.080064458283051 51 27.080064458283051 57 27.080064458283051 77 27.080064458283051 
		85 27.080064458283051 95 27.080064458283051 100 27.080064458283051 105 27.080064458283051;
createNode animCurveTA -n "brt_Pelvis_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_Pelvis_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_Pelvis_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_Thumb_R_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_Thumb_R_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_Thumb_R_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 13.994403295754109;
createNode animCurveTA -n "brt_Thumb_L_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_Thumb_L_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_Thumb_L_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 13.994403295754109;
createNode animCurveTA -n "animCurveTA331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 10 0 51 0 57 0 77 0 85 
		0 95 0 100 0 105 0;
createNode animCurveTA -n "animCurveTA332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 10 0 51 0 57 0 77 0 85 
		0 95 0 100 0 105 0;
createNode animCurveTA -n "animCurveTA333";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 27.911632519594587 6 27.911632519594587 
		10 27.911632519594587 51 27.911632519594587 57 27.911632519594587 77 27.911632519594587 
		85 27.911632519594587 95 27.911632519594587 100 27.911632519594587 105 27.911632519594587;
createNode animCurveTA -n "brt_Jaw_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 -0.01308432947571448;
createNode animCurveTA -n "brt_Jaw_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 -0.024198282846844561;
createNode animCurveTA -n "brt_Jaw_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "animCurveTA337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.65073001024951671 6 16.454672765107187 
		10 -2.8804860794638496 95 -2.9601766712594557 100 6.5066202227318026 105 
		-0.65073001024951671;
	setAttr -s 6 ".kit[1:5]"  3 1 1 9 9;
	setAttr -s 6 ".kot[1:5]"  3 1 1 9 9;
	setAttr -s 6 ".kix[2:5]"  0.99999678134918213 0.99999815225601196 
		0.99276810884475708 0.8001859188079834;
	setAttr -s 6 ".kiy[2:5]"  -0.0025474317371845245 0.0019205926219001412 
		0.12004785239696503 -0.59975200891494751;
	setAttr -s 6 ".kox[2:5]"  0.99999678134918213 0.99999815225601196 
		0.99276810884475708 0.8001859188079834;
	setAttr -s 6 ".koy[2:5]"  -0.0025474289432168007 0.0019205923890694976 
		0.12004785239696503 -0.59975200891494751;
createNode animCurveTA -n "animCurveTA338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -4.2368721935960929 6 1.844453479198223 
		10 -5.4695534528579923 95 -5.5136089925026814 100 -0.18696804892566335 105 
		-4.2368721935960929;
	setAttr -s 6 ".kit[2:5]"  1 1 9 9;
	setAttr -s 6 ".kot[2:5]"  1 1 9 9;
	setAttr -s 6 ".kix[2:5]"  0.99999964237213135 0.99999618530273438 
		0.99777299165725708 0.92062729597091675;
	setAttr -s 6 ".kiy[2:5]"  -0.00087713234825059772 0.0027556114364415407 
		0.06670091301202774 -0.39044255018234253;
	setAttr -s 6 ".kox[2:5]"  0.99999964237213135 0.99999618530273438 
		0.99777299165725708 0.92062729597091675;
	setAttr -s 6 ".koy[2:5]"  -0.00087713234825059772 0.0027556112036108971 
		0.06670091301202774 -0.39044255018234253;
createNode animCurveTA -n "animCurveTA339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.6995264082587447 6 0.023456881178574147 
		10 21.115783745540345 51 21.773973493900481 95 21.773973493900481 100 14.611944604153798 
		105 2.6995264082587447;
	setAttr -s 7 ".kit[1:6]"  3 1 9 1 9 9;
	setAttr -s 7 ".kot[1:6]"  3 1 9 1 9 9;
	setAttr -s 7 ".kix[2:6]"  0.99991297721862793 0.999991774559021 
		0.99995726346969604 0.7075539231300354 0.62546807527542114;
	setAttr -s 7 ".kiy[2:6]"  0.013191954232752323 0.0040544057264924049 
		-0.0092436503618955612 -0.70665937662124634 -0.78024971485137939;
	setAttr -s 7 ".kox[2:6]"  0.99991297721862793 0.999991774559021 
		0.99995726346969604 0.7075539231300354 0.62546807527542114;
	setAttr -s 7 ".koy[2:6]"  0.013191946782171726 0.0040544057264924049 
		-0.0092436568811535835 -0.70665937662124634 -0.78024971485137939;
createNode animCurveTA -n "animCurveTA340";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 6 -17.873000945522044 10 -12.858506422889802 
		15 -12.858506422889802 18 59.926220301266248 23 59.926220301266248 26 -33.579769013410662 
		38 -34.202962827882622 41 58.564416109339177 51 58.564416109339177 57 -15.142252715305506 
		65 -17.110666667896229 73 -7.842532638936297 77 -15.142252715305506 85 15.399202526468883 
		95 15.399202526468883 100 7.4603773228186903 105 0;
	setAttr -s 18 ".kit[0:17]"  9 9 9 1 1 1 1 
		1 1 1 1 1 9 3 1 1 9 9;
	setAttr -s 18 ".kot[0:17]"  9 9 9 1 1 1 1 
		1 1 1 1 1 9 3 1 1 9 9;
	setAttr -s 18 ".kix[3:17]"  0.99815195798873901 0.99835336208343506 
		0.99982362985610962 0.99482429027557373 0.98681938648223877 0.99785614013671875 
		0.97659730911254883 0.8267783522605896 0.96585595607757568 0.99633187055587769 
		1 0.99570465087890625 0.99887371063232422 0.77847057580947876 0.78802484273910522;
	setAttr -s 18 ".kiy[3:17]"  0.060766927897930145 0.057362928986549377 
		0.018780900165438652 -0.10161027312278748 0.16182567179203033 0.065445557236671448 
		-0.21507608890533447 -0.56252777576446533 0.25907960534095764 0.085573211312294006 
		0 0.092586562037467957 -0.047447487711906433 -0.62768107652664185 -0.61564344167709351;
	setAttr -s 18 ".kox[3:17]"  0.99815195798873901 0.99835342168807983 
		0.99982362985610962 0.99482429027557373 0.98681932687759399 0.99785614013671875 
		0.97659730911254883 0.8267783522605896 0.96585595607757568 0.99633187055587769 
		1 0.99570465087890625 0.99887371063232422 0.77847057580947876 0.78802484273910522;
	setAttr -s 18 ".koy[3:17]"  0.06076696515083313 0.057362914085388184 
		0.018781008198857307 -0.10161015391349792 0.16182582080364227 0.065445318818092346 
		-0.21507611870765686 -0.56252783536911011 0.25907960534095764 0.085573211312294006 
		0 0.092586502432823181 -0.047447465360164642 -0.62768107652664185 -0.61564344167709351;
createNode animCurveTA -n "animCurveTA341";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 6 -10.602103338506113 10 8.0480765724116914 
		15 8.0480765724116914 18 11.218108543861245 23 11.218108543861245 26 -9.4536894448925981 
		38 -9.5385212935401391 41 33.406501975382469 51 33.406501975382469 57 30.725213139629219 
		61 36.91837872406952 65 26.275010824636134 69 36.91837872406952 73 26.373520238448933 
		77 30.725213139629219 85 0.48746062932446688 95 0.48746062932446688 100 -11.77176637328 
		105 0;
	setAttr -s 20 ".kit[2:19]"  1 1 1 1 1 1 1 
		1 9 9 9 9 9 9 1 9 9 9;
	setAttr -s 20 ".kot[2:19]"  1 1 1 1 1 1 1 
		1 9 9 9 9 9 9 1 9 9 9;
	setAttr -s 20 ".kix[2:19]"  0.99990266561508179 0.99974602460861206 
		0.99977463483810425 0.99977260828018188 0.99990338087081909 0.99993693828582764 
		0.99995839595794678 0.99661755561828613 0.98351079225540161 0.96010357141494751 
		1 0.99997919797897339 0.92675977945327759 0.66288381814956665 0.99706941843032837 
		0.91935914754867554 0.99967443943023682 0.6299859881401062;
	setAttr -s 20 ".kiy[2:19]"  0.013950183056294918 0.02253720723092556 
		0.021229054778814316 -0.021325625479221344 -0.013902206905186176 0.011230049654841423 
		-0.0091207828372716904 -0.082179583609104156 0.18084937334060669 -0.27964463829994202 
		0 0.0064472919330000877 -0.3756544291973114 -0.74872225522994995 -0.076502501964569092 
		-0.3934192955493927 -0.025515070185065269 0.77660650014877319;
	setAttr -s 20 ".kox[2:19]"  0.99990266561508179 0.99974602460861206 
		0.99977463483810425 0.99977260828018188 0.99990338087081909 0.99993693828582764 
		0.99995839595794678 0.99661755561828613 0.98351079225540161 0.96010357141494751 
		1 0.99997919797897339 0.92675977945327759 0.66288381814956665 0.99706941843032837 
		0.91935914754867554 0.99967443943023682 0.6299859881401062;
	setAttr -s 20 ".koy[2:19]"  0.013950171880424023 0.022537201642990112 
		0.021229051053524017 -0.021325616165995598 -0.013902232982218266 0.01122993603348732 
		-0.0091207930818200111 -0.08217957615852356 0.18084937334060669 -0.27964463829994202 
		0 0.0064472919330000877 -0.3756544291973114 -0.74872225522994995 -0.07650245726108551 
		-0.3934192955493927 -0.025515070185065269 0.77660650014877319;
createNode animCurveTA -n "animCurveTA342";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 6 -10.65067297654949 10 -51.142925603516872 
		15 -51.142925603516872 18 -61.161049921343817 23 -61.161049921343817 26 -71.820748022293273 
		38 -71.764296839195083 41 -61.345725735384335 51 -61.345725735384335 57 -20.053099528931305 
		77 -20.053099528931305 85 -45.891096118061789 95 -45.891096118061789 100 
		-27.978780427861079 105 0;
	setAttr -s 16 ".kit[0:15]"  3 9 1 1 1 1 1 
		1 1 1 1 1 1 1 9 9;
	setAttr -s 16 ".kot[0:15]"  3 9 1 1 1 1 1 
		1 1 1 1 1 1 1 9 9;
	setAttr -s 16 ".kix[2:15]"  0.99984973669052124 0.9998515248298645 
		0.99997562170028687 0.9989314079284668 0.99995720386505127 0.99945855140686035 
		0.9995923638343811 0.99855488538742065 0.99962061643600464 0.99108988046646118 
		0.98850220441818237 0.99316912889480591 0.38422626256942749 0.32300961017608643;
	setAttr -s 16 ".kiy[2:15]"  -0.017334839329123497 -0.017230987548828125 
		0.0069789532572031021 0.046216949820518494 0.009251701645553112 0.032903753221035004 
		0.028551014140248299 0.053741384297609329 0.027543297037482262 -0.13319490849971771 
		-0.15120644867420197 0.11668354272842407 0.92323893308639526 0.94639569520950317;
	setAttr -s 16 ".kox[2:15]"  0.99984973669052124 0.9998515248298645 
		0.99997562170028687 0.9989314079284668 0.99995720386505127 0.99945855140686035 
		0.9995923638343811 0.99855488538742065 0.99962061643600464 0.99108988046646118 
		0.98850220441818237 0.99316912889480591 0.38422626256942749 0.32300961017608643;
	setAttr -s 16 ".koy[2:15]"  -0.017334865406155586 -0.017230993136763573 
		0.0069789928384125233 0.046216942369937897 0.0092517109587788582 0.032903760671615601 
		0.028551016002893448 0.053741380572319031 0.027543412521481514 -0.1331949383020401 
		-0.15120644867420197 0.11668350547552109 0.92323893308639526 0.94639569520950317;
createNode animCurveTA -n "brt_Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 0;
createNode animCurveTA -n "brt_Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  100 6.6786334979782902;
createNode animCurveTA -n "animCurveTA346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.8903601258661931 6 -1.2223564417332597 
		10 -2.5640769657871445 95 -2.5786956088171316 100 -0.58092756973623949 105 
		-1.8903601258661931;
	setAttr -s 6 ".kit[1:5]"  3 1 1 9 9;
	setAttr -s 6 ".kot[1:5]"  3 1 1 9 9;
	setAttr -s 6 ".kix[2:5]"  0.9999995231628418 0.99999988079071045 
		0.9993511438369751 0.99072909355163574;
	setAttr -s 6 ".kiy[2:5]"  -0.00099328090436756611 0.00048196405987255275 
		0.036017779260873795 -0.13585217297077179;
	setAttr -s 6 ".kox[2:5]"  0.9999995231628418 0.99999988079071045 
		0.9993511438369751 0.99072909355163574;
	setAttr -s 6 ".koy[2:5]"  -0.0009932821849361062 0.00048196446732617915 
		0.036017779260873795 -0.13585217297077179;
createNode animCurveTA -n "animCurveTA347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.5597289571479034 6 5.7443051431117365 
		10 -0.77518829784090582 51 -0.93415271408030376 95 -0.93415271408030376 100 
		8.8574255216088655 105 2.5597289571479034;
	setAttr -s 7 ".kit[2:6]"  1 9 1 9 9;
	setAttr -s 7 ".kot[2:6]"  1 9 1 9 9;
	setAttr -s 7 ".kix[2:6]"  0.99998825788497925 0.9999995231628418 
		0.99999988079071045 0.98367524147033691 0.83480387926101685;
	setAttr -s 7 ".kiy[2:6]"  -0.0048434515483677387 -0.00097921804990619421 
		0.00054466130677610636 0.17995278537273407 -0.55054742097854614;
	setAttr -s 7 ".kox[2:6]"  0.99998825788497925 0.9999995231628418 
		0.99999988079071045 0.98367524147033691 0.83480387926101685;
	setAttr -s 7 ".koy[2:6]"  -0.0048434543423354626 -0.00097921804990619421 
		0.00054466043366119266 0.17995278537273407 -0.55054742097854614;
createNode animCurveTA -n "animCurveTA348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.016811087403604 6 18.63400525537768 
		10 35.705172407667852 95 36.034657686181461 100 23.395811422152637 105 2.016811087403604;
	setAttr -s 6 ".kit[2:5]"  1 1 9 9;
	setAttr -s 6 ".kot[2:5]"  1 1 9 9;
	setAttr -s 6 ".kix[2:5]"  0.99821817874908447 0.99995559453964233 
		0.48955142498016357 0.40783250331878662;
	setAttr -s 6 ".kiy[2:5]"  0.059669196605682373 -0.0094239972531795502 
		-0.8719744086265564 -0.91305673122406006;
	setAttr -s 6 ".kox[2:5]"  0.99821817874908447 0.99995559453964233 
		0.48955142498016357 0.40783250331878662;
	setAttr -s 6 ".koy[2:5]"  0.059669211506843567 -0.0094240065664052963 
		-0.8719744086265564 -0.91305673122406006;
createNode animCurveTA -n "animCurveTA349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 10 0 51 0 57 0 77 0 85 
		0 95 0 100 0 105 0;
createNode animCurveTA -n "animCurveTA350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 10 0 51 0 57 0 77 0 85 
		0 95 0 100 0 105 0;
createNode animCurveTA -n "animCurveTA351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 33.429092416277157 6 33.429092416277157 
		10 33.429092416277157 51 33.429092416277157 57 33.429092416277157 77 33.429092416277157 
		85 33.429092416277157 95 33.429092416277157 100 33.429092416277157 105 33.429092416277157;
createNode animCurveTA -n "animCurveTA352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 208.43516041205012 6 208.43516041205012 
		10 208.43516041205012 51 208.43516041205012 57 208.43516041205012 77 208.43516041205012 
		85 208.43516041205012 95 208.43516041205012 100 208.43516041205012 105 208.43516041205012;
createNode animCurveTA -n "animCurveTA353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 23.263402056531085 6 23.263402056531085 
		10 23.263402056531085 51 23.263402056531085 57 23.263402056531085 77 23.263402056531085 
		85 23.263402056531085 95 23.263402056531085 100 23.263402056531085 105 23.263402056531085;
createNode animCurveTA -n "animCurveTA354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 20.166277752815617 6 20.166277752815617 
		10 20.166277752815617 51 20.166277752815617 57 20.166277752815617 77 20.166277752815617 
		85 20.166277752815617 95 20.166277752815617 100 20.166277752815617 105 20.166277752815617;
createNode animCurveTA -n "animCurveTA355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 10 0 51 0 57 0 77 0 85 
		0 95 0 100 0 105 0;
createNode animCurveTA -n "animCurveTA356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 0 10 0 51 0 57 0 77 0 85 
		0 95 0 100 0 105 0;
createNode animCurveTA -n "animCurveTA357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 17.254116939558369 6 17.254116939558369 
		10 17.254116939558369 51 17.254116939558369 57 17.254116939558369 77 17.254116939558369 
		85 17.254116939558369 95 17.254116939558369 100 17.254116939558369 105 17.254116939558369;
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
	setAttr -s 23 ".lnk";
select -ne :time1;
	setAttr ".o" 3;
select -ne :renderPartition;
	setAttr -s 23 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 23 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 6 ".tx";
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
	setAttr -s 1963 ".gn";
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
	setAttr ".top" 478;
	setAttr -k on ".left";
	setAttr -k on ".bot";
	setAttr ".rght" 638;
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
	setAttr -s 2 ".hyp";
	setAttr ".hyp[6].x" 690.85577392578125;
	setAttr ".hyp[6].y" -215;
	setAttr ".hyp[6].isc" no;
	setAttr ".hyp[6].isf" yes;
	setAttr ".hyp[9].x" 692.84210205078125;
	setAttr ".hyp[9].y" -215;
	setAttr ".hyp[9].isc" no;
	setAttr ".hyp[9].isf" yes;
	setAttr ".img" -type "string" "";
	setAttr ".ims" 1;
select -ne :ikSystem;
connectAttr "brt_idle_hugoSource.st" "clipLibrary2.st[0]";
connectAttr "brt_idle_hugoSource.du" "clipLibrary2.du[0]";
connectAttr "brt_Extra_Attributes_translateX1.a" "clipLibrary2.cel[0].cev[0].cevr"
		;
connectAttr "brt_Extra_Attributes_translateY1.a" "clipLibrary2.cel[0].cev[1].cevr"
		;
connectAttr "animCurveTL79.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL80.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL81.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA239.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "brt_Hoop_Root_IK_FK_RFoot1.a" "clipLibrary2.cel[0].cev[6].cevr"
		;
connectAttr "brt_Hoop_Root_IK_FK_LFoot1.a" "clipLibrary2.cel[0].cev[7].cevr"
		;
connectAttr "brt_Hoop_Root_IK_Rev_IK_Sim_RFoot1.a" "clipLibrary2.cel[0].cev[8].cevr"
		;
connectAttr "brt_Hoop_Root_IK_Rev_IK_Sim_LFoot1.a" "clipLibrary2.cel[0].cev[9].cevr"
		;
connectAttr "brt_Hoop_Root_IK_FK_RArm1.a" "clipLibrary2.cel[0].cev[10].cevr"
		;
connectAttr "brt_Hoop_Root_IK_FK_LArm1.a" "clipLibrary2.cel[0].cev[11].cevr"
		;
connectAttr "brt_Hoop_Root_IK_Body_IK_World_RArm1.a" "clipLibrary2.cel[0].cev[12].cevr"
		;
connectAttr "brt_Hoop_Root_IK_Body_IK_World_LArm1.a" "clipLibrary2.cel[0].cev[13].cevr"
		;
connectAttr "brt_Hoop_Root_rotateX1.a" "clipLibrary2.cel[0].cev[14].cevr"
		;
connectAttr "brt_Hoop_Root_rotateY1.a" "clipLibrary2.cel[0].cev[15].cevr"
		;
connectAttr "brt_Hoop_Root_rotateZ1.a" "clipLibrary2.cel[0].cev[16].cevr"
		;
connectAttr "brt_Hoop_Root_translateX1.a" "clipLibrary2.cel[0].cev[17].cevr"
		;
connectAttr "brt_Hoop_Root_translateY1.a" "clipLibrary2.cel[0].cev[18].cevr"
		;
connectAttr "brt_Hoop_Root_translateZ1.a" "clipLibrary2.cel[0].cev[19].cevr"
		;
connectAttr "brt_Right_Foot_Hoop_translateX.a" "clipLibrary2.cel[0].cev[20].cevr"
		;
connectAttr "brt_Right_Foot_Hoop_translateY.a" "clipLibrary2.cel[0].cev[21].cevr"
		;
connectAttr "brt_Right_Foot_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[22].cevr"
		;
connectAttr "brt_Right_Foot_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[23].cevr"
		;
connectAttr "brt_Right_Foot_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[24].cevr"
		;
connectAttr "brt_Right_Foot_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[25].cevr"
		;
connectAttr "animCurveTL88.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL89.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "brt_Left_Foot_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[28].cevr"
		;
connectAttr "animCurveTA246.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA247.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA248.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "brt_Right_Ball_Hoop_rotateX1.a" "clipLibrary2.cel[0].cev[32].cevr"
		;
connectAttr "brt_Right_Ball_Hoop_rotateY1.a" "clipLibrary2.cel[0].cev[33].cevr"
		;
connectAttr "brt_Right_Ball_Hoop_rotateZ1.a" "clipLibrary2.cel[0].cev[34].cevr"
		;
connectAttr "brt_Left_Ball_Hoop_rotateX1.a" "clipLibrary2.cel[0].cev[35].cevr"
		;
connectAttr "brt_Left_Ball_Hoop_rotateY1.a" "clipLibrary2.cel[0].cev[36].cevr"
		;
connectAttr "brt_Left_Ball_Hoop_rotateZ1.a" "clipLibrary2.cel[0].cev[37].cevr"
		;
connectAttr "brt_Right_Toe_Hoop_rotateX1.a" "clipLibrary2.cel[0].cev[38].cevr"
		;
connectAttr "brt_Right_Toe_Hoop_rotateY1.a" "clipLibrary2.cel[0].cev[39].cevr"
		;
connectAttr "brt_Right_Toe_Hoop_rotateZ1.a" "clipLibrary2.cel[0].cev[40].cevr"
		;
connectAttr "brt_Left_Toe_Hoop_rotateX1.a" "clipLibrary2.cel[0].cev[41].cevr"
		;
connectAttr "brt_Left_Toe_Hoop_rotateY1.a" "clipLibrary2.cel[0].cev[42].cevr"
		;
connectAttr "brt_Left_Toe_Hoop_rotateZ1.a" "clipLibrary2.cel[0].cev[43].cevr"
		;
connectAttr "brt_Right_Knee_Hoop_translateX.a" "clipLibrary2.cel[0].cev[44].cevr"
		;
connectAttr "brt_Right_Knee_Hoop_translateY.a" "clipLibrary2.cel[0].cev[45].cevr"
		;
connectAttr "brt_Right_Knee_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[46].cevr"
		;
connectAttr "brt_Left_Knee_Hoop_translateX.a" "clipLibrary2.cel[0].cev[47].cevr"
		;
connectAttr "brt_Left_Knee_Hoop_translateY.a" "clipLibrary2.cel[0].cev[48].cevr"
		;
connectAttr "brt_Left_Knee_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[49].cevr"
		;
connectAttr "animCurveTL97.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL98.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL99.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA261.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA262.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA263.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "brt_R_Hip_Fk_rotateX1.a" "clipLibrary2.cel[0].cev[56].cevr"
		;
connectAttr "brt_R_Hip_Fk_rotateY1.a" "clipLibrary2.cel[0].cev[57].cevr"
		;
connectAttr "brt_R_Hip_Fk_rotateZ1.a" "clipLibrary2.cel[0].cev[58].cevr"
		;
connectAttr "brt_R_Knee_Fk_rotateZ1.a" "clipLibrary2.cel[0].cev[59].cevr"
		;
connectAttr "brt_R_Ankle_Fk_rotateX1.a" "clipLibrary2.cel[0].cev[60].cevr"
		;
connectAttr "brt_R_Ankle_Fk_rotateY1.a" "clipLibrary2.cel[0].cev[61].cevr"
		;
connectAttr "brt_R_Ankle_Fk_rotateZ1.a" "clipLibrary2.cel[0].cev[62].cevr"
		;
connectAttr "brt_R_Ball_Fk_rotateX1.a" "clipLibrary2.cel[0].cev[63].cevr"
		;
connectAttr "brt_R_Ball_Fk_rotateY1.a" "clipLibrary2.cel[0].cev[64].cevr"
		;
connectAttr "brt_R_Ball_Fk_rotateZ1.a" "clipLibrary2.cel[0].cev[65].cevr"
		;
connectAttr "brt_L_Hip_Fk_rotateX1.a" "clipLibrary2.cel[0].cev[66].cevr"
		;
connectAttr "brt_L_Hip_Fk_rotateY1.a" "clipLibrary2.cel[0].cev[67].cevr"
		;
connectAttr "brt_L_Hip_Fk_rotateZ1.a" "clipLibrary2.cel[0].cev[68].cevr"
		;
connectAttr "brt_L_Knee_Fk_rotateZ1.a" "clipLibrary2.cel[0].cev[69].cevr"
		;
connectAttr "brt_L_Ankle_Fk_rotateX1.a" "clipLibrary2.cel[0].cev[70].cevr"
		;
connectAttr "brt_L_Ankle_Fk_rotateY1.a" "clipLibrary2.cel[0].cev[71].cevr"
		;
connectAttr "brt_L_Ankle_Fk_rotateZ1.a" "clipLibrary2.cel[0].cev[72].cevr"
		;
connectAttr "brt_L_Ball_Fk_rotateX1.a" "clipLibrary2.cel[0].cev[73].cevr"
		;
connectAttr "brt_L_Ball_Fk_rotateY1.a" "clipLibrary2.cel[0].cev[74].cevr"
		;
connectAttr "brt_L_Ball_Fk_rotateZ1.a" "clipLibrary2.cel[0].cev[75].cevr"
		;
connectAttr "animCurveTA284.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA285.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA286.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA287.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA288.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA289.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "brt_Right_Arm_Hoop_translateX1.a" "clipLibrary2.cel[0].cev[82].cevr"
		;
connectAttr "brt_Right_Arm_Hoop_translateY1.a" "clipLibrary2.cel[0].cev[83].cevr"
		;
connectAttr "brt_Right_Arm_Hoop_translateZ1.a" "clipLibrary2.cel[0].cev[84].cevr"
		;
connectAttr "brt_Right_Arm_Hoop_rotateX1.a" "clipLibrary2.cel[0].cev[85].cevr"
		;
connectAttr "brt_Right_Arm_Hoop_rotateY1.a" "clipLibrary2.cel[0].cev[86].cevr"
		;
connectAttr "brt_Right_Arm_Hoop_rotateZ1.a" "clipLibrary2.cel[0].cev[87].cevr"
		;
connectAttr "brt_Left_Arm_Hoop_translateX1.a" "clipLibrary2.cel[0].cev[88].cevr"
		;
connectAttr "brt_Left_Arm_Hoop_translateY1.a" "clipLibrary2.cel[0].cev[89].cevr"
		;
connectAttr "brt_Left_Arm_Hoop_translateZ1.a" "clipLibrary2.cel[0].cev[90].cevr"
		;
connectAttr "brt_Left_Arm_Hoop_rotateX1.a" "clipLibrary2.cel[0].cev[91].cevr"
		;
connectAttr "brt_Left_Arm_Hoop_rotateY1.a" "clipLibrary2.cel[0].cev[92].cevr"
		;
connectAttr "brt_Left_Arm_Hoop_rotateZ1.a" "clipLibrary2.cel[0].cev[93].cevr"
		;
connectAttr "animCurveTL106.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL107.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL108.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA296.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA297.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA298.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL109.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL110.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL111.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTA299.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTA300.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTA301.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTL112.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTL113.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTL114.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTL115.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTL116.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTL117.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA302.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA303.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA304.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA305.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA306.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA307.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA308.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA309.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA310.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA311.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA312.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA313.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA314.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA315.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA316.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA317.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA318.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA319.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA320.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA321.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "brt_Pelvis_rotateX1.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "brt_Pelvis_rotateY1.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "brt_Pelvis_rotateZ1.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "brt_Thumb_R_rotateX1.a" "clipLibrary2.cel[0].cev[135].cevr"
		;
connectAttr "brt_Thumb_R_rotateY1.a" "clipLibrary2.cel[0].cev[136].cevr"
		;
connectAttr "brt_Thumb_R_rotateZ1.a" "clipLibrary2.cel[0].cev[137].cevr"
		;
connectAttr "brt_Thumb_L_rotateX1.a" "clipLibrary2.cel[0].cev[138].cevr"
		;
connectAttr "brt_Thumb_L_rotateY1.a" "clipLibrary2.cel[0].cev[139].cevr"
		;
connectAttr "brt_Thumb_L_rotateZ1.a" "clipLibrary2.cel[0].cev[140].cevr"
		;
connectAttr "animCurveTA331.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA332.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA333.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "brt_Jaw_rotateX.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "brt_Jaw_rotateY.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "brt_Jaw_rotateZ.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA337.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA338.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA339.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA340.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA341.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA342.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "brt_Head_rotateX.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "brt_Head_rotateY.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "brt_Head_rotateZ.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA346.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA347.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA348.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA349.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA350.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA351.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA352.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA353.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA354.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA355.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA356.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA357.a" "clipLibrary2.cel[0].cev[167].cevr";
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
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[21].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[22].llnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of brt_idle_hugo.ma
