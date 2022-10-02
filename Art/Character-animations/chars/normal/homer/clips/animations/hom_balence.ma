//Maya ASCII 4.0 scene
//Name: hom_balence.ma
//Last modified: Wed, Sep 04, 2002 12:36:47 PM
requires maya "4.0";
requires "p3dmayaexp" "18.2";
requires "p3dSimpleShader" "18.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_balenceSource";
	setAttr ".ihi" 0;
	setAttr ".du" 75;
	setAttr ".ci" no;
createNode animCurveTL -n "hom_Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTL -n "hom_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTL -n "hom_Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 -0.051425456377630012;
createNode animCurveTL -n "hom_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTL -n "hom_Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 1;
createNode animCurveTU -n "hom_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 1;
createNode animCurveTA -n "hom_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTL -n "hom_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTL -n "hom_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTL -n "hom_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTL -n "hom_Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.26454016861507795 4 -0.26454016861507795 
		8 -0.26454016861507795 18 -0.26454016861507795 25 -0.26454016861507795 30 
		-0.26454016861507795 36 -0.26454016861507795 45 -0.26454016861507795 51 -0.26454016861507795 
		58 -0.26454016861507795 65 -0.26454016861507795 75 -0.26454016861507795;
createNode animCurveTL -n "hom_Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.13806192026723146 4 0.13806192026723146 
		8 0.25304941544917542 18 0.25304941544917542 25 0.13806192026723146 30 0.13806192026723146 
		36 0.13806192026723146 45 0.13806192026723146 51 0.13806192026723146 58 0.13806192026723146 
		65 0.13806192026723146 75 0.13806192026723146;
createNode animCurveTL -n "hom_Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.064904406754016042 4 -0.064904406754016042 
		8 -0.064904406754016042 18 -0.064904406754016042 25 -0.064904406754016042 
		30 -0.064904406754016042 36 -0.064904406754016042 45 -0.064904406754016042 
		51 -0.064904406754016042 58 -0.064904406754016042 65 -0.064904406754016042 
		75 -0.064904406754016042;
createNode animCurveTA -n "hom_Right_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 32.816503782674083 18 
		32.816503782674083 25 0 30 0 36 -19.433006940929278 45 -20.942587389785199 
		51 0 58 0 65 0 75 0;
createNode animCurveTA -n "hom_Right_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -25.948901905116401 4 -25.948901905116401 
		8 -25.948901905116447 18 -25.948901905116447 25 -25.948901905116401 30 -25.948901905116401 
		36 -25.948901905116429 45 -25.948901905116458 51 -25.948901905116401 58 -25.948901905116401 
		65 -25.948901905116401 75 -25.948901905116401;
createNode animCurveTA -n "hom_Right_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 0 18 -8.8428853630020743e-016 
		25 0 30 0 36 0 45 0 51 0 58 0 65 0 75 0;
createNode animCurveTL -n "hom_Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.21594587158542247 4 0.21594587158542247 
		8 0.21594587158542247 18 0.21594587158542247 25 0.21594587158542247 30 0.21594587158542247 
		36 0.21594587158542247 45 0.21594587158542247 51 0.21594587158542247 58 0.21594587158542247 
		65 0.21594587158542247 75 0.21594587158542247;
createNode animCurveTL -n "hom_Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.1380615615975922 4 0.1380615615975922 
		8 0.25304905677953615 18 0.25304905677953615 25 0.1380615615975922 30 0.1380615615975922 
		36 0.1380615615975922 45 0.1380615615975922 51 0.1380615615975922 58 0.1380615615975922 
		65 0.1380615615975922 75 0.1380615615975922;
createNode animCurveTL -n "hom_Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.00078430246903575811 4 0.00078430246903575811 
		8 0.00078430246903575811 18 0.00078430246903575811 25 0.00078430246903575811 
		30 0.00078430246903575811 36 0.00078430246903575811 45 0.00078430246903575811 
		51 0.00078430246903575811 58 0.00078430246903575811 65 0.00078430246903575811 
		75 0.00078430246903575811;
createNode animCurveTA -n "hom_Left_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 41.213619403606643 18 
		41.213619403606643 25 0 30 0 36 -19.433006940929289 45 -20.942587389785238 
		51 0 58 0 65 0 75 0;
createNode animCurveTA -n "hom_Left_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 0 18 0 25 0 30 0 36 0 
		45 0 51 0 58 0 65 0 75 0;
createNode animCurveTA -n "hom_Left_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 0 18 0 25 0 30 0 36 0 
		45 0 51 0 58 0 65 0 75 0;
createNode animCurveTA -n "hom_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTL -n "hom_Right_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 0 18 0 25 0 30 0 36 0 
		45 0 51 0 58 0 65 0 75 0;
createNode animCurveTL -n "hom_Right_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 0 18 0 25 0 30 0 36 0 
		45 0 51 0 58 0 65 0 75 0;
createNode animCurveTL -n "hom_Right_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 4 1 8 1 18 1 25 1 30 1 36 1 
		45 1 51 1 58 1 65 1 75 1;
createNode animCurveTL -n "hom_Left_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 0 18 0 25 0 30 0 36 0 
		45 0 51 0 58 0 65 0 75 0;
createNode animCurveTL -n "hom_Left_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 0 18 0 25 0 30 0 36 0 
		45 0 51 0 58 0 65 0 75 0;
createNode animCurveTL -n "hom_Left_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 4 1 8 1 18 1 25 1 30 1 36 1 
		45 1 51 1 58 1 65 1 75 1;
createNode animCurveTL -n "hom_Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.076472881617957691 4 -0.071004277784190176 
		8 -0.063903560985187208 18 -0.059452872811617603 25 -0.041300584482336776 
		30 -0.001626200450426445 36 -0.03674151140182029 45 -0.038257773706896349 
		51 -0.038257773706896349 58 -0.017783747731424167 65 -0.036411469052417433 
		75 -0.076472881617957691;
createNode animCurveTL -n "hom_Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.93105416142265018 4 0.83790100310430382 
		8 1.013371479478405 18 0.99403982545733349 25 0.76984333710316077 30 0.7020221896120481 
		36 0.9214371798726303 45 0.90275375512636968 51 0.81220181217175491 58 0.81220181217175524 
		65 0.84754215857422055 75 0.93105416142265018;
	setAttr -s 12 ".kit[2:11]"  1 1 9 9 9 9 9 
		9 9 9;
	setAttr -s 12 ".kot[2:11]"  1 1 9 9 9 9 9 
		9 9 9;
	setAttr -s 12 ".kix[2:11]"  0.18574744462966919 0.088804274797439575 
		0.013696517795324326 0.024180365726351738 0.024901164695620537 0.045724842697381973 
		0.047799967229366302 0.13091282546520233 0.047624107450246811 0.039882667362689972;
	setAttr -s 12 ".kiy[2:11]"  0.98259752988815308 -0.99604910612106323 
		-0.99990618228912354 0.99970763921737671 0.99968993663787842 -0.99895405769348145 
		-0.99885690212249756 0.99139386415481567 0.99886530637741089 0.99920439720153809;
	setAttr -s 12 ".kox[2:11]"  0.18574732542037964 0.088804498314857483 
		0.013696517795324326 0.024180365726351738 0.024901164695620537 0.045724842697381973 
		0.047799967229366302 0.13091282546520233 0.047624107450246811 0.039882667362689972;
	setAttr -s 12 ".koy[2:11]"  0.98259752988815308 -0.99604904651641846 
		-0.99990618228912354 0.99970763921737671 0.99968993663787842 -0.99895405769348145 
		-0.99885690212249756 0.99139386415481567 0.99886530637741089 0.99920439720153809;
createNode animCurveTL -n "hom_Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0.088752550601136057 8 0.2587840892585111 
		18 0.24506156961089445 25 0.16588896056616648 30 0.023686681774793647 36 
		-0.11167019758788377 45 -0.2006561097766697 51 0.30215220320920089 58 0.040023986279045992 
		65 0.018694411032514593 75 0;
	setAttr -s 12 ".kit[8:11]"  1 1 9 9;
	setAttr -s 12 ".kot[8:11]"  1 1 9 9;
	setAttr -s 12 ".kix[8:11]"  0.12158495187759399 0.03998170793056488 
		0.1401837170124054 0.17553779482841492;
	setAttr -s 12 ".kiy[8:11]"  -0.99258100986480713 -0.99920040369033813 
		-0.99012553691864014 -0.98447269201278687;
	setAttr -s 12 ".kox[8:11]"  0.12158495932817459 0.03998221829533577 
		0.1401837170124054 0.17553779482841492;
	setAttr -s 12 ".koy[8:11]"  -0.99258100986480713 -0.99920040369033813 
		-0.99012553691864014 -0.98447269201278687;
createNode animCurveTA -n "hom_Character_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.62843630316474508 4 27.760705917938367 
		8 58.059032167161817 18 71.339163359203923 25 1.5641974487633326 30 -21.173427503292967 
		36 -44.149966635337968 45 -42.807442488566565 51 -26.023871954595624 58 22.246468177445937 
		65 33.771488149493315 75 -0.62843630316474508;
createNode animCurveTA -n "hom_Character_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -5.8284402688137158 4 -5.8284402688137025 
		8 -5.8284402688136909 18 -5.828440268813682 25 -5.828440268813682 30 -5.8284402688136803 
		36 -5.8284402688136758 45 -11.623044805521147 51 -11.623044805521145 58 2.7854805658066373 
		65 1.0506833593884513 75 -5.8284402688137158;
createNode animCurveTA -n "hom_Character_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -1.2956360193097458 4 -1.2956360193097447 
		8 -1.2956360193097405 18 -1.2956360193097451 25 -1.2956360193097418 30 -1.2956360193097414 
		36 -1.2956360193097394 45 -3.1623781814763237 51 -3.1623781814763134 58 -5.4289060697334399 
		65 -4.1274794774464105 75 -1.2956360193097458;
createNode animCurveTA -n "hom_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  4 0 8 0 18 0 25 0;
createNode animCurveTA -n "hom_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  4 0 8 0 18 0 25 0;
createNode animCurveTA -n "hom_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  4 0 8 -42.323830495581177 18 -42.323830495581177 
		25 0;
createNode animCurveTA -n "hom_L_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  4 0 8 0 18 0 25 0;
createNode animCurveTA -n "hom_L_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  4 0 8 0 18 0 25 0;
createNode animCurveTA -n "hom_L_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  4 0 8 -42.323830495581177 18 -42.323830495581177 
		25 0;
createNode animCurveTL -n "hom_Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 -0.43524234076486068;
createNode animCurveTL -n "hom_Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 -0.82665738350180629;
createNode animCurveTL -n "hom_Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0.27773886459742925;
createNode animCurveTA -n "hom_Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 -1.8121934161072303e-015;
createNode animCurveTA -n "hom_Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 28.652637602052774;
createNode animCurveTA -n "hom_Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 64.676908227303443;
createNode animCurveTL -n "hom_Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0.5198069948790518;
createNode animCurveTL -n "hom_Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 -0.72394202659893114;
createNode animCurveTL -n "hom_Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0.36439499068905612;
createNode animCurveTA -n "hom_Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 7.7976222737965299;
createNode animCurveTA -n "hom_Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 -30.409274105849079;
createNode animCurveTA -n "hom_Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 -64.859940280210878;
createNode animCurveTL -n "hom_Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.98071836797454492 4 -1.0629509998565245 
		8 -1.1249778868217379 18 -1.1781258405078845 25 -1.1595538905100511 30 -1.1098938642024423 
		36 -1.0935604792649121 45 -1.1824034365415574 51 -1.2009619651484047 58 -1.1660073017106181 
		65 -1.0102768541006306 75 -0.98071836797454492;
	setAttr -s 12 ".kit[2:11]"  1 9 1 9 9 9 9 
		9 9 9;
	setAttr -s 12 ".kot[2:11]"  1 9 1 9 9 9 9 
		9 9 9;
	setAttr -s 12 ".kix[2:11]"  0.030368469655513763 0.16173247992992401 
		0.053154334425926208 0.055475540459156036 0.068793050944805145 0.046503923833370209 
		0.25551673769950867 0.024465830996632576 0.030568573623895645 0.11206047236919403;
	setAttr -s 12 ".kiy[2:11]"  -0.99953877925872803 -0.98683464527130127 
		0.99858629703521729 0.99846005439758301 -0.99763095378875732 -0.99891811609268188 
		0.9668046236038208 0.99970066547393799 0.99953269958496094 0.99370139837265015;
	setAttr -s 12 ".kox[2:11]"  0.030368950217962265 0.16173247992992401 
		0.05315404012799263 0.055475540459156036 0.068793050944805145 0.046503923833370209 
		0.25551673769950867 0.024465830996632576 0.030568573623895645 0.11206047236919403;
	setAttr -s 12 ".koy[2:11]"  -0.99953877925872803 -0.98683464527130127 
		0.99858629703521729 0.99846005439758301 -0.99763095378875732 -0.99891811609268188 
		0.9668046236038208 0.99970066547393799 0.99953269958496094 0.99370139837265015;
createNode animCurveTL -n "hom_Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1.6432964864655397 4 1.9781781972765187 
		8 2.2299733859186346 18 2.4759517682192542 25 2.4549052956716713 30 2.4215905178659582 
		36 2.4157405162771002 45 2.199341979871194 51 1.6817469506612392 58 1.4906344080842204 
		65 1.3527261804107895 75 1.6432964864655397;
createNode animCurveTL -n "hom_Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.097994651149805143 4 -0.0020460878375996041 
		8 0.24540562418449696 18 0.41080440499857956 25 -0.53500859938549117 30 -0.75993996939166064 
		36 -0.75766879686889455 45 -0.52414594248461777 51 0.30268233711496484 58 
		0.80094428691005992 65 0.79878999317681465 75 -0.097994651149805143;
	setAttr -s 12 ".kit[2:11]"  1 1 1 9 9 9 9 
		9 9 9;
	setAttr -s 12 ".kot[2:11]"  1 1 1 9 9 9 9 
		9 9 9;
	setAttr -s 12 ".kix[2:11]"  0.01191040500998497 0.023846155032515526 
		0.0058604334481060505 0.016465311869978905 0.021200181916356087 0.0047153662890195847 
		0.0032701999880373478 0.0094061437994241714 0.0063036023639142513 0.0037169572897255421;
	setAttr -s 12 ".kiy[2:11]"  0.99992907047271729 -0.99971562623977661 
		-0.99998283386230469 -0.99986445903778076 0.999775230884552 0.999988853931427 
		0.99999463558197021 0.99995577335357666 -0.99998015165328979 -0.99999308586120605;
	setAttr -s 12 ".kox[2:11]"  0.011910451576113701 0.023846281692385674 
		0.0058603882789611816 0.016465311869978905 0.021200181916356087 0.0047153662890195847 
		0.0032701999880373478 0.0094061437994241714 0.0063036023639142513 0.0037169572897255421;
	setAttr -s 12 ".koy[2:11]"  0.99992907047271729 -0.99971562623977661 
		-0.99998283386230469 -0.99986445903778076 0.999775230884552 0.999988853931427 
		0.99999463558197021 0.99995577335357666 -0.99998015165328979 -0.99999308586120605;
createNode animCurveTA -n "hom_Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 5.4739599453216474 4 -4.6003492909111792 
		8 -6.8856370961467652 18 -6.8856370961467652 25 -37.393576290284592 30 -61.560019000597393 
		36 -85.173624407040194 45 -91.400285303407742 51 -84.466106888757537 58 -16.914060359030515 
		65 -4.9589439580133714 75 5.4739599453216474;
createNode animCurveTA -n "hom_Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 8.5874521608419823 4 9.0828502604618002 
		8 -46.416281294895292 18 -46.416281294895292 25 -10.854450183641806 30 12.425617861006485 
		36 33.059497295169869 45 35.728076472204201 51 32.347810581618113 58 21.17971538224937 
		65 10.578544009760156 75 8.5874521608419823;
createNode animCurveTA -n "hom_Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 74.754744621954103 4 15.054628909548713 
		8 -14.415768343819007 18 -14.415768343819007 25 -33.013958568727247 30 -60.223832581550752 
		36 -90.63811463575324 45 -77.069780115115805 51 9.1735821885117055 58 31.06859502625235 
		65 59.901872236508765 75 74.754744621954103;
createNode animCurveTL -n "hom_Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.76309120872911718 4 0.94833651648926376 
		8 0.96640532696149539 18 0.81036690470957795 25 0.78876918394092455 30 0.94731281622489028 
		36 1.1416360468141422 45 1.185395166531831 51 1.2612128682667203 58 0.91534438630689896 
		65 0.76524866514508627 75 0.76309120872911718;
createNode animCurveTL -n "hom_Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1.6150490657878991 4 2.0773634480083012 
		8 2.0954221817701644 18 1.7583937884153367 25 2.3419346329462574 30 2.5694068446447615 
		36 2.4216137777357036 45 2.15419935153131 51 1.6878233645609788 58 1.4710880919227318 
		65 1.3811127822895908 75 1.6150490657878991;
createNode animCurveTL -n "hom_Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.14314299916678522 4 0.1463543008750143 
		8 0.73192746734136693 18 1.8552688842369967 25 0.96312246437645965 30 0.21187142394910483 
		36 -0.60839822730861548 45 -0.47257330399146613 51 0.03121616623008322 58 
		0.98894356648598902 65 0.8908363146042142 75 0.14314299916678522;
createNode animCurveTA -n "hom_Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 16.226511010665405 4 -2.8110438582054584 
		8 -14.860143463604393 18 -39.501867755512031 25 -74.184921105406076 30 -114.61332193838375 
		36 -89.496160363724684 45 -70.29952778178739 51 -36.823702622530831 58 26.643363185985425 
		65 50.79582589016092 75 16.226511010665405;
createNode animCurveTA -n "hom_Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -8.513966085499284 4 18.973025398946966 
		8 6.8444921513434771 18 -29.956265518341429 25 -15.467459751886068 30 3.4333409438875799 
		36 11.572349530397624 45 1.5490660585239946 51 -22.774993790058627 58 -55.728775661382855 
		65 -36.25121957549878 75 -8.513966085499284;
createNode animCurveTA -n "hom_Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -68.213989601412422 4 -11.969883056801375 
		8 12.489806469897454 18 34.237461092417689 25 48.867553961823774 30 52.210361373295207 
		36 38.089665517032124 45 39.026317207578224 51 12.603257554003166 58 -55.365455610031731 
		65 -74.940672521285634 75 -68.213989601412422;
createNode animCurveTL -n "hom_Left_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 -0.1046434367065702 18 
		0.51902250569485453 25 -0.023719660869654928 30 -0.023719660869654928 36 
		0.75244948846719095 45 0.75244948846719095 51 0.75244948846719095 58 0.21691992541604396 
		65 0.082567265987574745 75 0;
createNode animCurveTL -n "hom_Left_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 -0.40021235512979192 
		18 -1.7863992516364837 25 -0.25087594118839762 30 -0.25087594118839762 36 
		-0.28603255550313944 45 -0.28603255550313944 51 -0.28603255550313944 58 -0.71995039861458898 
		65 -0.49721096988183733 75 0;
createNode animCurveTL -n "hom_Left_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -1 4 -1 8 -1.1674401191401118 
		18 0.28856436395691842 25 -1.4027861441334115 30 -1.4027861441334115 36 -1.0850060067802461 
		45 -1.0850060067802461 51 -1.0850060067802461 58 -1.0822231991516902 65 -1.0515026410772639 
		75 -1;
createNode animCurveTL -n "hom_Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.10167917362943303 4 -0.10167917362943303 
		8 -0.10167917362943303 18 -0.10167917362943303 25 -0.95472954951302069 30 
		-0.95472954951302069 36 -0.89875521018678661 45 -0.89875521018678661 51 -0.89875521018678661 
		58 -0.89875521018678661 65 -0.60367105870954196 75 -0.10167917362943303;
createNode animCurveTL -n "hom_Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.40762644910266188 4 -0.40762644910266188 
		8 -0.40762644910266188 18 -0.40762644910266188 25 -0.59518359469630766 30 
		-0.59518359469630766 36 -0.45048262959050162 45 -0.45048262959050162 51 -0.45048262959050162 
		58 -0.45048262959050162 65 -0.43461691614151976 75 -0.40762644910266188;
createNode animCurveTL -n "hom_Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.93129112588482243 4 -0.93129112588482243 
		8 -0.93129112588482243 18 -0.93129112588482243 25 -0.55684696290808045 30 
		-0.55684696290808045 36 -1.0367347360490966 45 -1.0367347360490966 51 -1.0367347360490966 
		58 -1.0367347360490966 65 -0.99769863812113646 75 -0.93129112588482243;
createNode animCurveTA -n "hom_R_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 12.253734489678925 4 12.253734489678925 
		8 12.253734489678925 18 12.253734489678925 25 12.253734489678925 30 12.253734489678925 
		36 12.253734489678925 45 12.253734489678925 51 12.253734489678925 58 12.253734489678925 
		65 12.253734489678925 75 12.253734489678925;
createNode animCurveTA -n "hom_R_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -65.746751280844961 4 -65.746751280844961 
		8 -65.746751280844961 18 -65.746751280844961 25 -65.746751280844961 30 -65.746751280844961 
		36 -65.746751280844961 45 -65.746751280844961 51 -65.746751280844961 58 -65.746751280844961 
		65 -65.746751280844961 75 -65.746751280844961;
createNode animCurveTA -n "hom_R_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 3.871449260799477e-015 4 0 8 
		0 18 0 25 3.871449260799477e-015 30 0 36 0 45 0 51 0 58 0 65 0 75 0;
createNode animCurveTA -n "hom_L_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.061808866237337522 4 -0.061808866237337522 
		8 -0.061808866237337522 18 -0.061808866237337522 25 -0.061808866237337522 
		30 -0.061808866237337522 36 -0.061808866237337522 45 -0.061808866237337522 
		51 -0.061808866237337522 58 -0.061808866237337522 65 -0.061808866237337522 
		75 -0.061808866237337522;
createNode animCurveTA -n "hom_L_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -59.058178941076754 4 -59.058178941076754 
		8 -59.058178941076754 18 -59.058178941076754 25 -59.058178941076754 30 -59.058178941076754 
		36 -59.058178941076754 45 -59.058178941076754 51 -59.058178941076754 58 -59.058178941076754 
		65 -59.058178941076754 75 -59.058178941076754;
createNode animCurveTA -n "hom_L_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 16.579147429757843 4 16.579147429757843 
		8 16.579147429757843 18 16.579147429757843 25 16.579147429757843 30 16.579147429757843 
		36 16.579147429757843 45 16.579147429757843 51 16.579147429757843 58 16.579147429757843 
		65 16.579147429757843 75 16.579147429757843;
createNode animCurveTA -n "hom_R_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 8.5572674112203622 4 8.5572674112203622 
		8 8.5572674112203622 18 8.5572674112203622 25 8.5572674112203622 30 8.5572674112203622 
		36 8.5572674112203622 45 8.5572674112203622 51 8.5572674112203622 58 8.5572674112203622 
		65 8.5572674112203622 75 8.5572674112203622;
createNode animCurveTA -n "hom_L_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 15.711328223519057 4 15.711328223519057 
		8 15.711328223519057 18 15.711328223519057 25 15.711328223519057 30 15.711328223519057 
		36 15.711328223519057 45 15.711328223519057 51 15.711328223519057 58 15.711328223519057 
		65 15.711328223519057 75 15.711328223519057;
createNode animCurveTA -n "hom_R_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 0 18 0 25 0 30 0 36 0 
		45 0 51 0 58 0 65 0 75 0;
createNode animCurveTA -n "hom_R_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 0 18 0 25 0 30 0 36 0 
		45 0 51 0 58 0 65 0 75 0;
createNode animCurveTA -n "hom_R_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 0 18 0 25 0 30 0 36 0 
		45 0 51 0 58 0 65 0 75 0;
createNode animCurveTA -n "hom_L_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 0 18 0 25 0 30 0 36 0 
		45 0 51 0 58 0 65 0 75 0;
createNode animCurveTA -n "hom_L_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 0 18 0 25 0 30 0 36 0 
		45 0 51 0 58 0 65 0 75 0;
createNode animCurveTA -n "hom_L_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 0 18 0 25 0 30 0 36 0 
		45 0 51 0 58 0 65 0 75 0;
createNode animCurveTA -n "hom_Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 10.423754966968488 4 10.423754966968488 
		8 10.423754966968488 18 10.423754966968488 25 10.423754966968488 30 10.423754966968488 
		36 10.423754966968488 45 10.423754966968488 51 10.423754966968488 58 10.423754966968488 
		65 10.423754966968488 75 10.423754966968488;
createNode animCurveTA -n "hom_Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 27.722848255843903 4 27.722848255843903 
		8 27.722848255843903 18 27.722848255843903 25 27.722848255843903 30 27.722848255843903 
		36 27.722848255843903 45 27.722848255843903 51 27.722848255843903 58 27.722848255843903 
		65 27.722848255843903 75 27.722848255843903;
createNode animCurveTA -n "hom_Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 21.576484776388227 4 21.576484776388227 
		8 21.576484776388227 18 21.576484776388227 25 21.576484776388227 30 21.576484776388227 
		36 21.576484776388227 45 21.576484776388227 51 21.576484776388227 58 21.576484776388227 
		65 21.576484776388227 75 21.576484776388227;
createNode animCurveTA -n "hom_Middle_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 0 18 0 25 0 30 0 36 0 
		45 0 51 0 58 0 65 0 75 0;
createNode animCurveTA -n "hom_Middle_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 0 18 0 25 0 30 0 36 0 
		45 0 51 0 58 0 65 0 75 0;
createNode animCurveTA -n "hom_Middle_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 27.080064458283051 4 27.080064458283051 
		8 55.644794807214559 18 55.644794807214559 25 55.644794807214559 30 55.644794807214559 
		36 55.644794807214559 45 55.644794807214559 51 55.644794807214559 58 55.644794807214559 
		65 45.069894991344405 75 27.080064458283051;
createNode animCurveTA -n "hom_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 13.994403295754109;
createNode animCurveTA -n "hom_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 0;
createNode animCurveTA -n "hom_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 13.994403295754109;
createNode animCurveTA -n "hom_Middle_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 0 18 0 25 0 30 0 36 0 
		45 0 51 0 58 0 65 0 75 0;
createNode animCurveTA -n "hom_Middle_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 0 18 0 25 0 30 0 36 0 
		45 0 51 0 58 0 65 0 75 0;
createNode animCurveTA -n "hom_Middle_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 27.911632519594587 4 27.911632519594587 
		8 27.911632519594587 18 27.911632519594587 25 27.911632519594587 30 27.911632519594587 
		36 27.911632519594587 45 27.911632519594587 51 27.911632519594587 58 27.911632519594587 
		65 27.911632519594587 75 27.911632519594587;
createNode animCurveTA -n "hom_Jaw_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 0 18 0 25 0 30 0 36 0 
		45 0 51 0 58 0 65 0 75 0;
createNode animCurveTA -n "hom_Jaw_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 0 18 0 25 0 30 0 36 0 
		45 0 51 0 58 0 65 0 75 0;
createNode animCurveTA -n "hom_Jaw_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 0 18 0 25 0 30 0 36 0 
		45 0 51 0 58 0 65 0 75 0;
createNode animCurveTA -n "hom_Spine_2_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.65073001024951671 4 -4.5483842276306019 
		8 -20.80638665348522 18 -20.80638665348522 25 -2.4497485067739522 30 -2.4497485067739522 
		36 11.563480755544205 45 12.675489460320968 51 12.675489460320968 58 3.0539112751253317 
		65 0.76662502600942883 75 -0.65073001024951671;
createNode animCurveTA -n "hom_Spine_2_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -4.2368721935960929 4 -0.22987333628116058 
		8 16.239636355364091 18 16.239636355364091 25 1.3078681598390505 30 1.3078681598390505 
		36 5.8708763227491234 45 2.675985216845111 51 2.675985216845111 58 3.0798781125917638 
		65 0.29669923013931726 75 -4.2368721935960929;
createNode animCurveTA -n "hom_Spine_2_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 8.7398866450636881 4 26.281517094583208 
		8 29.263965758680598 18 29.263965758680598 25 2.73285067076857 30 2.73285067076857 
		36 -33.521839592738637 45 -35.828817955989564 51 -18.687569862353236 58 -3.4539951540313796 
		65 11.512399454356819 75 8.7398866450636881;
createNode animCurveTA -n "hom_Neck_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 0 18 0 25 0 30 0 36 0 
		45 0 51 0 58 0 65 0 75 0;
createNode animCurveTA -n "hom_Neck_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 0 18 0 25 0 30 0 36 0 
		45 0 51 0 58 0 65 0 75 0;
createNode animCurveTA -n "hom_Neck_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 0 18 0 25 0 30 0 36 0 
		45 0 51 0 58 0 65 0 75 0;
createNode animCurveTA -n "hom_Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 4.8714700432790456 4 -9.9813515715244154 
		8 -13.734816388055162 18 4.4213341238378208 25 -8.9488571730042938 30 -8.9488571730042938 
		36 0.3322071733597593 45 -5.4736325615369728 51 0.15020568499032383 58 0.3329264019363134 
		65 -0.28948781302485938 75 4.8714700432790456;
createNode animCurveTA -n "hom_Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 11.783606204137085 4 -17.447828657999437 
		8 -43.113916975519871 18 -59.881783128857151 25 -6.6306146383064348 30 -6.6306146383064348 
		36 6.265328079328242 45 5.6138102405776875 51 6.5175369810788872 58 -3.2107838732556382 
		65 -2.1351251615798605 75 11.783606204137085;
createNode animCurveTA -n "hom_Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 7.5423825101935913 4 -12.289296248021541 
		8 -28.075441287578485 18 -61.4587017601852 25 39.15555503756574 30 39.15555503756574 
		36 23.038318879144473 45 7.6098101453659366 51 34.36591017659547 58 -31.137808648042483 
		65 25.514392580150375 75 7.5423825101935913;
	setAttr -s 12 ".kit[4:11]"  1 9 1 9 9 9 9 
		9;
	setAttr -s 12 ".kot[4:11]"  1 9 1 9 9 9 9 
		9;
	setAttr -s 12 ".kix[4:11]"  0.39201122522354126 0.79341018199920654 
		0.39590147137641907 0.92994207143783569 0.53951138257980347 0.94933271408081055 
		0.64291626214981079 0.72825968265533447;
	setAttr -s 12 ".kiy[4:11]"  0.91996043920516968 -0.60868734121322632 
		-0.91829299926757813 0.36770609021186829 -0.84197831153869629 -0.31427279114723206 
		0.76593643426895142 -0.68530124425888062;
	setAttr -s 12 ".kox[4:11]"  0.39201134443283081 0.79341018199920654 
		0.39590147137641907 0.92994207143783569 0.53951138257980347 0.94933271408081055 
		0.64291626214981079 0.72825968265533447;
	setAttr -s 12 ".koy[4:11]"  0.9199603796005249 -0.60868734121322632 
		-0.91829299926757813 0.36770609021186829 -0.84197831153869629 -0.31427279114723206 
		0.76593643426895142 -0.68530124425888062;
createNode animCurveTA -n "hom_Spine_1_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -1.8903601258661931 4 -1.8903601258661931 
		8 -1.8903601258661931 18 -5.034800604019833 25 -5.034800604019833 30 -5.034800604019833 
		36 -5.034800604019833 45 -5.034800604019833 51 -5.034800604019833 58 -3.5300939155915683 
		65 -2.771191804976759 75 -1.8903601258661931;
createNode animCurveTA -n "hom_Spine_1_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 2.5597289571479034 4 2.5597289571479034 
		8 2.5597289571479034 18 5.9466719593083761 25 5.9466719593083761 30 5.9466719593083761 
		36 5.9466719593083761 45 5.9466719593083761 51 5.9466719593083761 58 6.9440994897628423 
		65 5.4216322934008874 75 2.5597289571479034;
createNode animCurveTA -n "hom_Spine_1_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 2.016811087403604 4 2.016811087403604 
		8 2.016811087403604 18 7.9972880378973858 25 7.9972880378973858 30 7.9972880378973858 
		36 7.9972880378973858 45 7.9972880378973858 51 7.9972880378973858 58 21.341139919020609 
		65 15.533811232776401 75 2.016811087403604;
createNode animCurveTA -n "hom_Middle_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 0 18 0 25 0 30 0 36 0 
		45 0 51 0 58 0 65 0 75 0;
createNode animCurveTA -n "hom_Middle_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 0 18 0 25 0 30 0 36 0 
		45 0 51 0 58 0 65 0 75 0;
createNode animCurveTA -n "hom_Middle_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 33.429092416277157 4 33.429092416277157 
		8 33.429092416277157 18 33.429092416277157 25 33.429092416277157 30 33.429092416277157 
		36 33.429092416277157 45 33.429092416277157 51 33.429092416277157 58 33.429092416277157 
		65 33.429092416277157 75 33.429092416277157;
createNode animCurveTA -n "hom_Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 8.2533422302317216 4 8.2533422302317216 
		8 8.2533422302317216 18 8.2533422302317216 25 8.2533422302317216 30 8.2533422302317216 
		36 8.2533422302317216 45 8.2533422302317216 51 8.2533422302317216 58 8.2533422302317216 
		65 8.2533422302317216 75 8.2533422302317216;
createNode animCurveTA -n "hom_Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 23.263402056531085 4 23.263402056531085 
		8 23.263402056531085 18 23.263402056531085 25 23.263402056531085 30 23.263402056531085 
		36 23.263402056531085 45 23.263402056531085 51 23.263402056531085 58 23.263402056531085 
		65 23.263402056531085 75 23.263402056531085;
createNode animCurveTA -n "hom_Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 20.166277752815617 4 20.166277752815617 
		8 20.166277752815617 18 20.166277752815617 25 20.166277752815617 30 20.166277752815617 
		36 20.166277752815617 45 20.166277752815617 51 20.166277752815617 58 20.166277752815617 
		65 20.166277752815617 75 20.166277752815617;
createNode animCurveTA -n "hom_Middle_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 0 18 0 25 0 30 0 36 0 
		45 0 51 0 58 0 65 0 75 0;
createNode animCurveTA -n "hom_Middle_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 8 0 18 0 25 0 30 0 36 0 
		45 0 51 0 58 0 65 0 75 0;
createNode animCurveTA -n "hom_Middle_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 17.254116939558369 4 17.254116939558369 
		8 46.200209860831549 18 46.200209860831549 25 46.200209860831549 30 46.200209860831549 
		36 46.200209860831549 45 46.200209860831549 51 46.200209860831549 58 46.200209860831549 
		65 35.484126347730431 75 17.254116939558369;
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
	setAttr ".o" 75;
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
connectAttr "hom_balenceSource.st" "clipLibrary1.st[0]";
connectAttr "hom_balenceSource.du" "clipLibrary1.du[0]";
connectAttr "hom_Extra_Attributes_translateX.a" "clipLibrary1.cel[0].cev[0].cevr"
		;
connectAttr "hom_Extra_Attributes_translateY.a" "clipLibrary1.cel[0].cev[1].cevr"
		;
connectAttr "hom_Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "hom_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "hom_Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "hom_Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr"
		;
connectAttr "hom_Hoop_Root_IK_FK_RFoot.a" "clipLibrary1.cel[0].cev[6].cevr"
		;
connectAttr "hom_Hoop_Root_IK_FK_LFoot.a" "clipLibrary1.cel[0].cev[7].cevr"
		;
connectAttr "hom_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary1.cel[0].cev[8].cevr"
		;
connectAttr "hom_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary1.cel[0].cev[9].cevr"
		;
connectAttr "hom_Hoop_Root_IK_FK_RArm.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "hom_Hoop_Root_IK_FK_LArm.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "hom_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "hom_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "hom_Hoop_Root_rotateX.a" "clipLibrary1.cel[0].cev[14].cevr"
		;
connectAttr "hom_Hoop_Root_rotateY.a" "clipLibrary1.cel[0].cev[15].cevr"
		;
connectAttr "hom_Hoop_Root_rotateZ.a" "clipLibrary1.cel[0].cev[16].cevr"
		;
connectAttr "hom_Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "hom_Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "hom_Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
connectAttr "hom_Right_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[20].cevr"
		;
connectAttr "hom_Right_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[21].cevr"
		;
connectAttr "hom_Right_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[22].cevr"
		;
connectAttr "hom_Right_Foot_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[23].cevr"
		;
connectAttr "hom_Right_Foot_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[24].cevr"
		;
connectAttr "hom_Right_Foot_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[25].cevr"
		;
connectAttr "hom_Left_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[26].cevr"
		;
connectAttr "hom_Left_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[27].cevr"
		;
connectAttr "hom_Left_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[28].cevr"
		;
connectAttr "hom_Left_Foot_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[29].cevr"
		;
connectAttr "hom_Left_Foot_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[30].cevr"
		;
connectAttr "hom_Left_Foot_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[31].cevr"
		;
connectAttr "hom_Right_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[32].cevr"
		;
connectAttr "hom_Right_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[33].cevr"
		;
connectAttr "hom_Right_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[34].cevr"
		;
connectAttr "hom_Left_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[35].cevr"
		;
connectAttr "hom_Left_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[36].cevr"
		;
connectAttr "hom_Left_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[37].cevr"
		;
connectAttr "hom_Right_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[38].cevr"
		;
connectAttr "hom_Right_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[39].cevr"
		;
connectAttr "hom_Right_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[40].cevr"
		;
connectAttr "hom_Left_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[41].cevr"
		;
connectAttr "hom_Left_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[42].cevr"
		;
connectAttr "hom_Left_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[43].cevr"
		;
connectAttr "hom_Character_Hoop_translateX.a" "clipLibrary1.cel[0].cev[44].cevr"
		;
connectAttr "hom_Character_Hoop_translateY.a" "clipLibrary1.cel[0].cev[45].cevr"
		;
connectAttr "hom_Character_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[46].cevr"
		;
connectAttr "hom_Character_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[47].cevr"
		;
connectAttr "hom_Character_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[48].cevr"
		;
connectAttr "hom_Character_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[49].cevr"
		;
connectAttr "hom_R_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "hom_R_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "hom_R_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "hom_R_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[53].cevr"
		;
connectAttr "hom_R_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[54].cevr"
		;
connectAttr "hom_R_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[55].cevr"
		;
connectAttr "hom_R_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[56].cevr"
		;
connectAttr "hom_R_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[57].cevr"
		;
connectAttr "hom_R_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[58].cevr"
		;
connectAttr "hom_R_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[59].cevr"
		;
connectAttr "hom_L_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "hom_L_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "hom_L_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "hom_L_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[63].cevr"
		;
connectAttr "hom_L_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[64].cevr"
		;
connectAttr "hom_L_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[65].cevr"
		;
connectAttr "hom_L_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[66].cevr"
		;
connectAttr "hom_L_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[67].cevr"
		;
connectAttr "hom_L_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[68].cevr"
		;
connectAttr "hom_L_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[69].cevr"
		;
connectAttr "hom_R_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[70].cevr"
		;
connectAttr "hom_R_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[71].cevr"
		;
connectAttr "hom_R_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[72].cevr"
		;
connectAttr "hom_L_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[73].cevr"
		;
connectAttr "hom_L_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[74].cevr"
		;
connectAttr "hom_L_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[75].cevr"
		;
connectAttr "hom_Right_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[76].cevr"
		;
connectAttr "hom_Right_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[77].cevr"
		;
connectAttr "hom_Right_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[78].cevr"
		;
connectAttr "hom_Right_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[79].cevr"
		;
connectAttr "hom_Right_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[80].cevr"
		;
connectAttr "hom_Right_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[81].cevr"
		;
connectAttr "hom_Left_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "hom_Left_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "hom_Left_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "hom_Left_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "hom_Left_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "hom_Left_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "hom_Right_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "hom_Right_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "hom_Right_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "hom_Right_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "hom_Right_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "hom_Right_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "hom_Left_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[94].cevr"
		;
connectAttr "hom_Left_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[95].cevr"
		;
connectAttr "hom_Left_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[96].cevr"
		;
connectAttr "hom_Left_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[97].cevr"
		;
connectAttr "hom_Left_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[98].cevr"
		;
connectAttr "hom_Left_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[99].cevr"
		;
connectAttr "hom_Left_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[100].cevr"
		;
connectAttr "hom_Left_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[101].cevr"
		;
connectAttr "hom_Left_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[102].cevr"
		;
connectAttr "hom_Right_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[103].cevr"
		;
connectAttr "hom_Right_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[104].cevr"
		;
connectAttr "hom_Right_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[105].cevr"
		;
connectAttr "hom_R_FK_Shoulder_rotateX.a" "clipLibrary1.cel[0].cev[106].cevr"
		;
connectAttr "hom_R_FK_Shoulder_rotateY.a" "clipLibrary1.cel[0].cev[107].cevr"
		;
connectAttr "hom_R_FK_Shoulder_rotateZ.a" "clipLibrary1.cel[0].cev[108].cevr"
		;
connectAttr "hom_L_FK_Shoulder_rotateX.a" "clipLibrary1.cel[0].cev[109].cevr"
		;
connectAttr "hom_L_FK_Shoulder_rotateY.a" "clipLibrary1.cel[0].cev[110].cevr"
		;
connectAttr "hom_L_FK_Shoulder_rotateZ.a" "clipLibrary1.cel[0].cev[111].cevr"
		;
connectAttr "hom_R_FK_Elbow_rotateZ.a" "clipLibrary1.cel[0].cev[112].cevr"
		;
connectAttr "hom_L_FK_Elbow_rotateZ.a" "clipLibrary1.cel[0].cev[113].cevr"
		;
connectAttr "hom_R_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[114].cevr"
		;
connectAttr "hom_R_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[115].cevr"
		;
connectAttr "hom_R_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[116].cevr"
		;
connectAttr "hom_L_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[117].cevr"
		;
connectAttr "hom_L_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[118].cevr"
		;
connectAttr "hom_L_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[119].cevr"
		;
connectAttr "hom_Thumb_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[120].cevr"
		;
connectAttr "hom_Thumb_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[121].cevr"
		;
connectAttr "hom_Thumb_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[122].cevr"
		;
connectAttr "hom_Middle_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[123].cevr"
		;
connectAttr "hom_Middle_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[124].cevr"
		;
connectAttr "hom_Middle_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[125].cevr"
		;
connectAttr "hom_Pelvis_rotateX.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "hom_Pelvis_rotateY.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "hom_Pelvis_rotateZ.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "hom_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "hom_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "hom_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "hom_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "hom_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "hom_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "hom_Middle_R_rotateX.a" "clipLibrary1.cel[0].cev[135].cevr"
		;
connectAttr "hom_Middle_R_rotateY.a" "clipLibrary1.cel[0].cev[136].cevr"
		;
connectAttr "hom_Middle_R_rotateZ.a" "clipLibrary1.cel[0].cev[137].cevr"
		;
connectAttr "hom_Jaw_rotateX.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "hom_Jaw_rotateY.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "hom_Jaw_rotateZ.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "hom_Spine_2_rotateX.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "hom_Spine_2_rotateY.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "hom_Spine_2_rotateZ.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "hom_Neck_rotateX.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "hom_Neck_rotateY.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "hom_Neck_rotateZ.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "hom_Head_rotateX.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "hom_Head_rotateY.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "hom_Head_rotateZ.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "hom_Spine_1_rotateX.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "hom_Spine_1_rotateY.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "hom_Spine_1_rotateZ.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "hom_Middle_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[153].cevr"
		;
connectAttr "hom_Middle_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[154].cevr"
		;
connectAttr "hom_Middle_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[155].cevr"
		;
connectAttr "hom_Thumb_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[156].cevr"
		;
connectAttr "hom_Thumb_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[157].cevr"
		;
connectAttr "hom_Thumb_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[158].cevr"
		;
connectAttr "hom_Middle_L_rotateX.a" "clipLibrary1.cel[0].cev[159].cevr"
		;
connectAttr "hom_Middle_L_rotateY.a" "clipLibrary1.cel[0].cev[160].cevr"
		;
connectAttr "hom_Middle_L_rotateZ.a" "clipLibrary1.cel[0].cev[161].cevr"
		;
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[2].olnk";
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
// End of hom_balence.ma
