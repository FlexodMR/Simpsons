//Maya ASCII 4.0 scene
//Name: hom_idle_donut.ma
//Last modified: Wed, Feb 05, 2003 06:05:27 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dDeformer" "2.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_idle_donutSource";
	setAttr ".ihi" 0;
	setAttr ".du" 120;
	setAttr ".ci" no;
createNode animCurveTL -n "hom_Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTL -n "hom_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTL -n "hom_Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 -0.051425456377630012;
createNode animCurveTL -n "hom_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTL -n "hom_Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTU -n "animCurveTU37";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 1 100 1 120 0;
createNode animCurveTU -n "animCurveTU38";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 34 1 100 1 120 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 1;
createNode animCurveTU -n "animCurveTU40";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 10 0 74 0 81 1;
createNode animCurveTA -n "hom_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTL -n "hom_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTL -n "hom_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTL -n "hom_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTL -n "hom_Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 -0.26454016861507795;
createNode animCurveTL -n "hom_Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0.13806192026723146;
createNode animCurveTL -n "hom_Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 -0.064904406754016042;
createNode animCurveTA -n "hom_Right_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_Right_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 -25.948901905116401;
createNode animCurveTA -n "hom_Right_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTL -n "hom_Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0.21594587158542247;
createNode animCurveTL -n "hom_Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0.1380615615975922;
createNode animCurveTL -n "hom_Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0.00078430246903575811;
createNode animCurveTA -n "hom_Left_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_Left_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_Left_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTL -n "hom_Right_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTL -n "hom_Right_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTL -n "hom_Right_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 1;
createNode animCurveTL -n "hom_Left_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTL -n "hom_Left_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTL -n "hom_Left_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 1;
createNode animCurveTL -n "hom_Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 -0.076472881617957691;
createNode animCurveTL -n "hom_Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0.93105416142265018;
createNode animCurveTL -n "hom_Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "animCurveTA469";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.62843630316474508 10 -0.62843630316474508 
		15 -0.55695697333803984 30 0.29712131620218107 34 -0.039583032558917222 40 
		-0.62843630316474508 52 0.44354260758670339 58 0.5382698006911032 65 -1.2949151184989973 
		71 -1.3324883206310143 81 -0.62843630316474508 120 -0.62843630316474508;
	setAttr -s 12 ".kit[0:11]"  9 3 1 1 9 1 1 
		9 1 1 1 9;
	setAttr -s 12 ".kot[0:11]"  9 3 1 1 9 1 1 
		9 1 1 1 9;
	setAttr -s 12 ".kix[2:11]"  0.99979162216186523 0.9999961256980896 
		0.99882775545120239 0.99999773502349854 0.99972838163375854 0.99755758047103882 
		0.99993616342544556 0.99999159574508667 0.99979054927825928 1;
	setAttr -s 12 ".kiy[2:11]"  0.020413767546415329 0.0027732767630368471 
		-0.048405278474092484 0.0021295361220836639 0.023305950686335564 -0.069848552346229553 
		-0.011301037855446339 0.004100065678358078 0.020465929061174393 0;
	setAttr -s 12 ".kox[2:11]"  0.99979162216186523 0.9999961256980896 
		0.99882775545120239 0.99999773502349854 0.99972838163375854 0.99755758047103882 
		0.99993616342544556 0.99999159574508667 0.99979054927825928 1;
	setAttr -s 12 ".koy[2:11]"  0.020413771271705627 0.0027732769958674908 
		-0.048405278474092484 0.0021295356564223766 0.023305946961045265 -0.069848552346229553 
		-0.011301039718091488 0.0041000666096806526 0.020465929061174393 0;
createNode animCurveTA -n "animCurveTA470";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -5.8284402688137158 10 -5.8284402688137158 
		15 -5.8799196491101542 30 -6.5201048687847862 34 -6.5267225418320756 40 -5.8284402688137158 
		52 -1.7140245782390853 58 -1.4854384191873609 65 -1.1269706553392631 71 -1.3147492715823501 
		81 -5.8284402688137158 120 -5.8284402688137158;
	setAttr -s 12 ".kit[0:11]"  9 9 9 9 1 1 1 
		1 1 1 1 9;
	setAttr -s 12 ".kot[0:11]"  9 9 9 9 1 1 1 
		1 1 1 1 9;
	setAttr -s 12 ".kix[4:11]"  0.99986886978149414 0.99417346715927124 
		0.99813979864120483 0.99995720386505127 0.99997764825820923 0.99889439344406128 
		0.99747210741043091 1;
	setAttr -s 12 ".kiy[4:11]"  0.016193216666579247 0.107791967689991 
		0.060966946184635162 -0.0092520164325833321 0.0066838241182267666 -0.047010272741317749 
		-0.071059428155422211 0;
	setAttr -s 12 ".kox[4:11]"  0.99986886978149414 0.99417346715927124 
		0.99813979864120483 0.99995720386505127 0.99997764825820923 0.99889439344406128 
		0.99747210741043091 1;
	setAttr -s 12 ".koy[4:11]"  0.016193216666579247 0.10779202729463577 
		0.060966931283473969 -0.0092520145699381828 0.0066838264465332031 -0.047010265290737152 
		-0.071059420704841614 0;
createNode animCurveTA -n "animCurveTA471";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1.2956360193097458 10 -1.2956360193097458 
		15 -1.6211023458486202 30 -5.3660177183092683 34 -2.402963653256347 40 -1.2956360193097458 
		52 -1.9824215064457142 71 -1.9471470978287304 81 -1.2956360193097458 120 
		-1.2956360193097458;
	setAttr -s 10 ".kit[0:9]"  9 9 1 1 9 9 1 
		1 1 9;
	setAttr -s 10 ".kot[0:9]"  9 9 1 1 9 9 1 
		1 1 9;
	setAttr -s 10 ".kix[2:9]"  0.99702644348144531 0.99989652633666992 
		0.97803443670272827 0.99992519617080688 0.99999767541885376 0.99997913837432861 
		0.99961322546005249 1;
	setAttr -s 10 ".kiy[2:9]"  -0.077060170471668243 0.014383362606167793 
		0.2084432989358902 0.012232160195708275 -0.0021428547333925962 0.0064596855081617832 
		0.02781028114259243 0;
	setAttr -s 10 ".kox[2:9]"  0.99702644348144531 0.99989652633666992 
		0.97803443670272827 0.99992519617080688 0.99999767541885376 0.99997913837432861 
		0.99961322546005249 1;
	setAttr -s 10 ".koy[2:9]"  -0.077060170471668243 0.014383362606167793 
		0.2084432989358902 0.012232160195708275 -0.0021428570616990328 0.0064596878364682198 
		0.027810283005237579 0;
createNode animCurveTA -n "hom_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_L_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_L_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_L_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTL -n "hom_Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 -0.43524234076486068;
createNode animCurveTL -n "hom_Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 -0.82665738350180629;
createNode animCurveTL -n "hom_Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0.27773886459742925;
createNode animCurveTA -n "hom_Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 28.652637602052774;
createNode animCurveTA -n "hom_Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 64.676908227303443;
createNode animCurveTL -n "animCurveTL191";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.5198069948790518 15 0.57916501331683756 
		21 0.69691186713561581 30 0.67958655252223088 32 0.88243103629962261 34 0.61810196633125802 
		90 0.61810196633125802 120 0.61810196633125802;
	setAttr -s 8 ".kit[0:7]"  9 1 1 1 1 1 9 
		9;
	setAttr -s 8 ".kot[0:7]"  9 1 1 1 1 1 9 
		9;
	setAttr -s 8 ".kix[1:7]"  0.063384771347045898 0.39785587787628174 
		0.060040697455406189 0.17779678106307983 0.014821061864495277 1 1;
	setAttr -s 8 ".kiy[1:7]"  0.99798917770385742 0.91744792461395264 
		0.99819594621658325 -0.98406720161437988 -0.99989014863967896 0 0;
	setAttr -s 8 ".kox[1:7]"  0.063384518027305603 0.39785584807395935 
		0.060040153563022614 0.17779675126075745 0.014820796437561512 1 1;
	setAttr -s 8 ".koy[1:7]"  0.99798917770385742 0.91744792461395264 
		0.99819594621658325 -0.98406726121902466 -0.99989014863967896 0 0;
createNode animCurveTL -n "animCurveTL192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.72394202659893114 10 0.7472094563192887 
		15 0.72914071838343009 21 0.49700786628460381 30 0.49600265629375079 34 -0.70136657862465135 
		40 -0.72394202659893114 52 -0.120768200228452 58 -0.085657109251017299 65 
		-0.120768200228452 71 -0.14778007876425192 81 -0.72394202659893114 90 -0.72394202659893114 
		120 -0.72394202659893114;
	setAttr -s 14 ".kit[1:13]"  3 9 9 1 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 14 ".kot[1:13]"  3 9 9 1 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 14 ".kix[4:13]"  0.048560310155153275 0.0027323542162775993 
		0.01033361442387104 0.0093997754156589508 1 0.069585040211677551 0.008841770701110363 
		0.010991616174578667 1 1;
	setAttr -s 14 ".kiy[4:13]"  -0.99882024526596069 -0.99999624490737915 
		0.99994659423828125 0.99995583295822144 0 -0.99757599830627441 -0.99996089935302734 
		-0.99993956089019775 0 0;
	setAttr -s 14 ".kox[4:13]"  0.048560302704572678 0.0027323542162775993 
		0.01033361442387104 0.0093997754156589508 1 0.069585040211677551 0.008841770701110363 
		0.010991616174578667 1 1;
	setAttr -s 14 ".koy[4:13]"  -0.99882024526596069 -0.99999624490737915 
		0.99994659423828125 0.99995583295822144 0 -0.99757599830627441 -0.99996089935302734 
		-0.99993956089019775 0 0;
createNode animCurveTL -n "animCurveTL193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.36439499068905612 10 0.34360428056206777 
		15 0.34984815321669643 21 0.44864691445007326 30 0.52929009843510311 34 0.34570317821658714 
		40 0.36439499068905612 52 0.86825463661813784 58 0.89758459044347061 65 0.86825463661813784 
		71 0.84569033752724376 81 0.36439499068905612 90 0.36439499068905612 120 
		0.36439499068905612;
	setAttr -s 14 ".kit[1:13]"  3 9 1 1 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 14 ".kot[1:13]"  3 9 1 1 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 14 ".kix[3:13]"  0.034050464630126953 0.18865524232387543 
		0.020210741087794304 0.011481366120278835 0.011252319440245628 1 0.083213530480861664 
		0.010584364645183086 0.013157794252038002 1 1;
	setAttr -s 14 ".kiy[3:13]"  0.99942010641098022 -0.98204338550567627 
		-0.99979573488235474 0.99993407726287842 0.99993669986724854 0 -0.99653172492980957 
		-0.99994397163391113 -0.99991345405578613 0 0;
	setAttr -s 14 ".kox[3:13]"  0.034051183611154556 0.18865518271923065 
		0.020210741087794304 0.011481366120278835 0.011252319440245628 1 0.083213530480861664 
		0.010584364645183086 0.013157794252038002 1 1;
	setAttr -s 14 ".koy[3:13]"  0.99942010641098022 -0.98204338550567627 
		-0.99979573488235474 0.99993407726287842 0.99993669986724854 0 -0.99653172492980957 
		-0.99994397163391113 -0.99991345405578613 0 0;
createNode animCurveTA -n "animCurveTA501";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 7.7976222737965299 10 178.22567832786146 
		15 178.05476897617402 21 176.26464085289601 30 178.22567832786146 34 188.25003601964536 
		40 276.0571285205051 52 165.70277947450538 58 159.27899048432894 65 165.70277947450538 
		71 158.63132764921025 81 7.7976222737965299 90 7.7976222737965299 120 7.7976222737965299;
	setAttr -s 14 ".kit[1:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 14 ".kot[1:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA502";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -30.409274105849079 10 -31.068863068714588 
		15 -30.921924898730804 21 -29.382874238986862 30 -31.068863068714588 34 -24.304289547989253 
		40 -56.096350890372285 52 -78.895460828478932 58 -80.222609913010345 65 -78.895460828478932 
		71 -76.72410847334406 81 -30.409274105849079 90 -30.409274105849079 120 -30.409274105849079;
	setAttr -s 14 ".kit[1:13]"  3 9 9 1 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 14 ".kot[1:13]"  3 9 9 1 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 14 ".kix[4:13]"  0.99983334541320801 0.60664659738540649 
		0.5328715443611145 0.81853741407394409 1 0.99021780490875244 0.53318065404891968 
		0.61673963069915771 1 1;
	setAttr -s 14 ".kiy[4:13]"  0.018257584422826767 -0.79497164487838745 
		-0.84619617462158203 -0.57445323467254639 0 0.13953015208244324 0.84600138664245605 
		0.78716719150543213 0 0;
	setAttr -s 14 ".kox[4:13]"  0.99983334541320801 0.60664659738540649 
		0.5328715443611145 0.81853741407394409 1 0.99021780490875244 0.53318065404891968 
		0.61673963069915771 1 1;
	setAttr -s 14 ".koy[4:13]"  0.018257580697536469 -0.79497164487838745 
		-0.84619617462158203 -0.57445323467254639 0 0.13953015208244324 0.84600138664245605 
		0.78716719150543213 0 0;
createNode animCurveTA -n "animCurveTA503";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -64.859940280210878 10 -294.9547597917217 
		15 -294.26800180306611 21 -287.07480390464798 30 -294.9547597917217 34 -420.65310442901773 
		40 -420.90096893455694 52 -328.31946272545724 58 -322.93024121731531 65 -328.31946272545724 
		71 -316.52097995398481 81 -64.859940280210878 90 -64.859940280210878 120 
		-64.859940280210878;
	setAttr -s 14 ".kit[1:13]"  3 9 9 1 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 14 ".kot[1:13]"  3 9 9 1 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 14 ".kix[4:13]"  0.8108375072479248 0.14992688596248627 
		0.34891882538795471 0.33110290765762329 1 0.96825850009918213 0.11521411687135696 
		0.14271530508995056 1 1;
	setAttr -s 14 ".kiy[4:13]"  -0.58527129888534546 -0.9886971116065979 
		0.93715298175811768 0.94359463453292847 0 0.2499508410692215 0.99334067106246948 
		0.98976379632949829 0 0;
	setAttr -s 14 ".kox[4:13]"  0.81083744764328003 0.14992688596248627 
		0.34891882538795471 0.33110290765762329 1 0.96825850009918213 0.11521411687135696 
		0.14271530508995056 1 1;
	setAttr -s 14 ".koy[4:13]"  -0.58527141809463501 -0.9886971116065979 
		0.93715298175811768 0.94359463453292847 0 0.2499508410692215 0.99334067106246948 
		0.98976379632949829 0 0;
createNode animCurveTL -n "hom_Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.11516728567985 100 -1.11516728567985 
		120 -1.11516728567985;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  0.98993080854415894 1;
	setAttr -s 3 ".kiy[1:2]"  -0.14155223965644836 0;
	setAttr -s 3 ".kox[1:2]"  0.98993080854415894 1;
	setAttr -s 3 ".koy[1:2]"  -0.14155212044715881 0;
createNode animCurveTL -n "hom_Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.680120084755256 100 1.680120084755256 
		120 1.680120084755256;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  0.90738463401794434 1;
	setAttr -s 3 ".kiy[1:2]"  0.42030122876167297 0;
	setAttr -s 3 ".kox[1:2]"  0.90738475322723389 1;
	setAttr -s 3 ".koy[1:2]"  0.42030096054077148 0;
createNode animCurveTL -n "hom_Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.12935294465776678 100 -0.12935294465776678 
		120 -0.12935294465776678;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  0.99983888864517212 1;
	setAttr -s 3 ".kiy[1:2]"  -0.017951490357518196 0;
	setAttr -s 3 ".kox[1:2]"  0.99983882904052734 1;
	setAttr -s 3 ".koy[1:2]"  -0.017951510846614838 0;
createNode animCurveTA -n "hom_Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5.4739599453216474 100 5.4739599453216474 
		120 5.4739599453216474;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  0.99999994039535522 1;
	setAttr -s 3 ".kiy[1:2]"  -0.00026981352129951119 0;
	setAttr -s 3 ".kox[1:2]"  0.99999994039535522 1;
	setAttr -s 3 ".koy[1:2]"  -0.00026981794508174062 0;
createNode animCurveTA -n "hom_Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.5874521608419823 100 8.5874521608419823 
		120 8.5874521608419823;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  -0.00018086921772919595 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  -0.00018086332420352846 0;
createNode animCurveTA -n "hom_Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 74.754744621954103 100 74.754744621954103 
		120 74.754744621954103;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  0.99998080730438232 1;
	setAttr -s 3 ".kiy[1:2]"  0.0061925188638269901 0;
	setAttr -s 3 ".kox[1:2]"  0.99998080730438232 1;
	setAttr -s 3 ".koy[1:2]"  0.0061924685724079609 0;
createNode animCurveTL -n "hom_Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.80629961042890586 100 0.80629961042890586 
		120 0.80629961042890586;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  0.93127959966659546 1;
	setAttr -s 3 ".kiy[1:2]"  -0.36430522799491882 0;
	setAttr -s 3 ".kox[1:2]"  0.93127959966659546 1;
	setAttr -s 3 ".koy[1:2]"  -0.36430519819259644 0;
createNode animCurveTL -n "hom_Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6227248042492379 100 1.6227248042492379 
		120 1.6227248042492379;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  0.70328277349472046 1;
	setAttr -s 3 ".kiy[1:2]"  -0.71091020107269287 0;
	setAttr -s 3 ".kox[1:2]"  0.70328271389007568 1;
	setAttr -s 3 ".koy[1:2]"  -0.71091032028198242 0;
createNode animCurveTL -n "hom_Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.1889487664083056 100 0.1889487664083056 
		120 0.1889487664083056;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  0.99452203512191772 1;
	setAttr -s 3 ".kiy[1:2]"  -0.10452725738286972 0;
	setAttr -s 3 ".kox[1:2]"  0.99452197551727295 1;
	setAttr -s 3 ".koy[1:2]"  -0.10452742874622345 0;
createNode animCurveTA -n "hom_Left_Arm_World_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.226511010665405 100 16.226511010665405 
		120 16.226511010665405;
	setAttr -s 3 ".kit[0:2]"  9 1 1;
	setAttr -s 3 ".kot[0:2]"  9 1 1;
	setAttr -s 3 ".kix[1:2]"  0.99999880790710449 0.99999970197677612;
	setAttr -s 3 ".kiy[1:2]"  -0.0015305520500987768 -0.00076929619535803795;
	setAttr -s 3 ".kox[1:2]"  0.99999880790710449 0.99999970197677612;
	setAttr -s 3 ".koy[1:2]"  -0.001530551933683455 -0.00076929636998102069;
createNode animCurveTA -n "hom_Left_Arm_World_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -8.513966085499284 100 -8.513966085499284 
		120 -8.513966085499284;
	setAttr -s 3 ".kit[0:2]"  9 1 1;
	setAttr -s 3 ".kot[0:2]"  9 1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  -1.5973393601598218e-005 -1.9138833522447385e-005;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  -1.5973875633790158e-005 -1.9130882719764486e-005;
createNode animCurveTA -n "hom_Left_Arm_World_rotateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -68.213989601412422 100 -68.213989601412422 
		120 -68.213989601412422;
	setAttr -s 3 ".kit[0:2]"  9 1 1;
	setAttr -s 3 ".kot[0:2]"  9 1 1;
	setAttr -s 3 ".kix[1:2]"  0.99999773502349854 0.99999761581420898;
	setAttr -s 3 ".kiy[1:2]"  -0.0021328262519091368 -0.0021817986853420734;
	setAttr -s 3 ".kox[1:2]"  0.99999773502349854 0.99999761581420898;
	setAttr -s 3 ".koy[1:2]"  -0.0021327829454094172 -0.0021818059030920267;
createNode animCurveTL -n "animCurveTL200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 1.3349461869969848 10 1.4406001238364412 
		15 1.4561164795061334 30 1.4406001238364412 34 0.28460269486750978 40 0 52 
		0.85021687459054851 58 0.89970847896494111 65 0.85021687459054851 71 0.81214169157609573 
		81 0 120 0;
	setAttr -s 13 ".kit[10:12]"  1 9 9;
	setAttr -s 13 ".kot[10:12]"  1 9 9;
	setAttr -s 13 ".kix[10:12]"  0.016141336411237717 0.020107366144657135 
		1;
	setAttr -s 13 ".kiy[10:12]"  -0.999869704246521 -0.99979782104492188 
		0;
	setAttr -s 13 ".kox[10:12]"  0.016141513362526894 0.020107366144657135 
		1;
	setAttr -s 13 ".koy[10:12]"  -0.999869704246521 -0.99979782104492188 
		0;
createNode animCurveTL -n "animCurveTL201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 -0.79276769099970157 10 -0.082800258159780357 
		15 -0.024353868793831605 30 -0.082800258159780357 34 -1.7415340503837544 
		40 0 52 -0.98098627611690281 58 -1.0380900445727383 65 -0.98098627611690281 
		71 -0.93705485673087596 81 0 120 0;
createNode animCurveTL -n "animCurveTL202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -1 5 -0.49734156116978795 10 
		1.4863752444982568 15 1.6226473426061518 30 1.4863752444982568 34 0.45607457510527871 
		40 -1 52 -0.011038167814312091 58 0.046529859210236585 65 -0.011038167814312091 
		71 -0.055326753619398782 81 -1 120 -1;
createNode animCurveTL -n "hom_Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 -0.10167917362943303;
createNode animCurveTL -n "hom_Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 -0.40762644910266188;
createNode animCurveTL -n "hom_Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 -0.93129112588482243;
createNode animCurveTA -n "animCurveTA510";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 12.253734489678925 10 7.6397360052628711 
		15 7.0602495499047162 30 3.9061827185505908 34 10.86362920619702 40 12.253734489678925 
		52 -7.389645872272995 58 -8.5330981371332442 65 -7.389645872272995 71 -6.5099581964847619 
		81 12.253734489678925 90 12.253734489678925 120 12.253734489678925;
	setAttr -s 13 ".kit[5:12]"  1 1 9 9 1 1 9 
		9;
	setAttr -s 13 ".kot[5:12]"  1 1 9 9 1 1 9 
		9;
	setAttr -s 13 ".kix[5:12]"  0.99053061008453369 0.96980607509613037 
		1 0.99669647216796875 0.96828216314315796 0.99892967939376831 1 1;
	setAttr -s 13 ".kiy[5:12]"  -0.13729187846183777 -0.24387742578983307 
		0 0.081216469407081604 0.24985934793949127 0.046254612505435944 0 0;
	setAttr -s 13 ".kox[5:12]"  0.99053061008453369 0.9698060154914856 
		1 0.99669647216796875 0.96828216314315796 0.99892967939376831 1 1;
	setAttr -s 13 ".koy[5:12]"  -0.13729187846183777 -0.24387757480144501 
		0 0.081216469407081604 0.24985937774181366 0.046254720538854599 0 0;
createNode animCurveTA -n "animCurveTA511";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -65.746751280844961 10 -49.020823545301205 
		34 -40.360033908887686 40 -65.746751280844961 52 -64.006089768828588 71 -64.084041649832884 
		81 -65.746751280844961 90 -65.746751280844961 120 -65.746751280844961;
	setAttr -s 9 ".kit[1:8]"  1 1 1 9 9 9 9 
		9;
	setAttr -s 9 ".kot[1:8]"  1 1 1 9 9 9 9 
		9;
	setAttr -s 9 ".kix[1:8]"  0.94069719314575195 0.9973101019859314 
		0.99914693832397461 0.99960589408874512 0.99950653314590454 0.99895191192626953 
		1 1;
	setAttr -s 9 ".kiy[1:8]"  0.33924737572669983 -0.07329811155796051 
		-0.04129665344953537 0.028072569519281387 -0.031412363052368164 -0.045772645622491837 
		0 0;
	setAttr -s 9 ".kox[1:8]"  0.94069719314575195 0.9973101019859314 
		0.99914693832397461 0.99960589408874512 0.99950653314590454 0.99895191192626953 
		1 1;
	setAttr -s 9 ".koy[1:8]"  0.33924740552902222 -0.073298119008541107 
		-0.041296616196632385 0.028072569519281387 -0.031412363052368164 -0.045772645622491837 
		0 0;
createNode animCurveTA -n "animCurveTA512";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 3.871449260799477e-015 10 5.4184972544617853 
		30 6.0332989456820751 34 -10.260201451459011 40 3.871449260799477e-015 52 
		19.48541654228276 58 20.619673638556264 65 19.48541654228276 71 18.612802951046689 
		81 0 90 0 120 0;
	setAttr -s 12 ".kit[2:11]"  1 1 9 1 9 9 1 
		1 9 9;
	setAttr -s 12 ".kot[2:11]"  1 1 9 1 9 9 1 
		1 9 9;
	setAttr -s 12 ".kix[2:11]"  0.99882793426513672 0.99984365701675415 
		0.7562134861946106 0.96334999799728394 1 0.9967491626739502 0.93406671285629272 
		0.9982147216796875 1 1;
	setAttr -s 12 ".kiy[2:11]"  -0.048402491956949234 -0.017683759331703186 
		0.65432500839233398 0.26824772357940674 0 -0.080567620694637299 -0.35709851980209351 
		-0.059727616608142853 0 0;
	setAttr -s 12 ".kox[2:11]"  0.99882793426513672 0.99984365701675415 
		0.7562134861946106 0.96334999799728394 1 0.9967491626739502 0.93406671285629272 
		0.9982147216796875 1 1;
	setAttr -s 12 ".koy[2:11]"  -0.04840247705578804 -0.017683757469058037 
		0.65432500839233398 0.26824763417243958 0 -0.080567620694637299 -0.35709857940673828 
		-0.059727616608142853 0 0;
createNode animCurveTA -n "animCurveTA513";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.061808866237337522 10 -0.061808866237337522 
		15 -0.061808866237337522 30 -0.061808866237337522 34 -80.524019208944779 
		52 -87.225665306561027 58 -84.987526580573373 65 -72.524931359992934 74 -67.991415912531153 
		81 -0.061808866237337522 90 -0.061808866237337522 120 -0.061808866237337522;
	setAttr -s 12 ".kit[4:11]"  1 1 9 9 1 9 9 
		9;
	setAttr -s 12 ".kot[4:11]"  1 1 9 9 1 9 9 
		9;
	setAttr -s 12 ".kix[4:11]"  0.87748533487319946 0.97474056482315063 
		0.8604777455329895 0.87391936779022217 0.81653577089309692 0.41024661064147949 
		1 1;
	setAttr -s 12 ".kiy[4:11]"  -0.47960352897644043 0.22334024310112 
		0.50948798656463623 0.48607087135314941 0.57729488611221313 0.91197460889816284 
		0 0;
	setAttr -s 12 ".kox[4:11]"  0.87748533487319946 0.97474050521850586 
		0.8604777455329895 0.87391936779022217 0.81653594970703125 0.41024661064147949 
		1 1;
	setAttr -s 12 ".koy[4:11]"  -0.47960346937179565 0.22334033250808716 
		0.50948798656463623 0.48607087135314941 0.57729458808898926 0.91197460889816284 
		0 0;
createNode animCurveTA -n "animCurveTA514";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -59.058178941076754 10 -59.058178941076754 
		15 -59.058178941076754 30 -59.058178941076754 34 -39.879532520716644 52 -16.853931747166943 
		58 -10.192992159990098 65 27.156028076073621 74 -22.598204425935123 81 -59.058178941076754 
		90 -59.058178941076754 120 -59.058178941076754;
	setAttr -s 12 ".kit[6:11]"  1 9 9 1 9 9;
	setAttr -s 12 ".kot[6:11]"  1 9 9 1 9 9;
	setAttr -s 12 ".kix[6:11]"  0.64645248651504517 0.92656034231185913 
		0.33407589793205261 0.98031306266784668 1 1;
	setAttr -s 12 ".kiy[6:11]"  0.7629542350769043 -0.3761461079120636 
		-0.94254618883132935 -0.19744955003261566 0 0;
	setAttr -s 12 ".kox[6:11]"  0.64645248651504517 0.92656034231185913 
		0.33407589793205261 0.98031306266784668 1 1;
	setAttr -s 12 ".koy[6:11]"  0.7629542350769043 -0.3761461079120636 
		-0.94254618883132935 -0.19744957983493805 0 0;
createNode animCurveTA -n "animCurveTA515";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 16.579147429757843 10 16.579147429757843 
		15 16.579147429757843 30 16.579147429757843 34 35.053583976860708 52 77.713834798711972 
		58 80.324890039975415 61 82.229784309182307 65 97.888319311660723 74 54.298899194612133 
		81 16.579147429757843 90 16.579147429757843 120 16.579147429757843;
	setAttr -s 13 ".kit[5:12]"  1 9 9 1 9 9 9 
		9;
	setAttr -s 13 ".kot[5:12]"  1 9 9 1 9 9 9 
		9;
	setAttr -s 13 ".kix[5:12]"  0.90327572822570801 0.96717697381973267 
		0.60568070411682129 0.99117773771286011 0.3517976701259613 0.62948083877563477 
		1 1;
	setAttr -s 13 ".kiy[5:12]"  0.42906048893928528 0.25410377979278564 
		0.7957078218460083 -0.13253946602344513 -0.93607604503631592 -0.77701598405838013 
		0 0;
	setAttr -s 13 ".kox[5:12]"  0.90327572822570801 0.96717697381973267 
		0.60568070411682129 0.99117773771286011 0.3517976701259613 0.62948083877563477 
		1 1;
	setAttr -s 13 ".koy[5:12]"  0.42906051874160767 0.25410377979278564 
		0.7957078218460083 -0.13253943622112274 -0.93607604503631592 -0.77701598405838013 
		0 0;
createNode animCurveTA -n "animCurveTA516";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 8.5572674112203622 10 8.5572674112203622 
		15 8.354568173774215 30 5.8364722197412107 34 5.8364722197412107 40 8.5572674112203622 
		52 11.939552642820452 58 12.136437370959241 65 11.939552642820452 71 11.78808408133669 
		81 8.5572674112203622 90 8.5572674112203622 120 8.5572674112203622;
	setAttr -s 13 ".kit[6:12]"  1 9 9 1 1 9 9;
	setAttr -s 13 ".kot[6:12]"  1 9 9 1 1 9 9;
	setAttr -s 13 ".kix[6:12]"  0.9986836314201355 1 0.99990159273147583 
		0.99648284912109375 0.9999542236328125 1 1;
	setAttr -s 13 ".kiy[6:12]"  0.051293622702360153 0 -0.0140291852876544 
		-0.083796679973602295 -0.0095673659816384315 0 0;
	setAttr -s 13 ".kox[6:12]"  0.9986836314201355 1 0.99990159273147583 
		0.99648284912109375 0.9999542236328125 1 1;
	setAttr -s 13 ".koy[6:12]"  0.05129363015294075 0 -0.0140291852876544 
		-0.083796679973602295 -0.0095673352479934692 0 0;
createNode animCurveTA -n "animCurveTA517";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 15.711328223519057 10 15.711328223519057 
		15 15.711328223519057 30 15.711328223519057 34 2.1017466462942425 52 2.1017466462942425 
		58 5.7020271616762477 61 0 65 44.006418247778463 81 15.711328223519057 90 
		15.711328223519057 120 15.711328223519057;
createNode animCurveTA -n "hom_R_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_R_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_R_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "animCurveTA521";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 30 0 34 -81.11299259467286 
		52 -81.11299259467286 65 -84.815292374938593 81 0 90 0 120 0;
	setAttr -s 10 ".kit[4:9]"  1 9 1 9 9 9;
	setAttr -s 10 ".kot[4:9]"  1 9 1 9 9 9;
	setAttr -s 10 ".kix[4:9]"  0.9983026385307312 0.9980505108833313 
		0.99772465229034424 0.49055686593055725 1 1;
	setAttr -s 10 ".kiy[4:9]"  -0.058239232748746872 -0.062410987913608551 
		0.067420430481433868 0.87140917778015137 0 0;
	setAttr -s 10 ".kox[4:9]"  0.9983026385307312 0.9980505108833313 
		0.99772465229034424 0.49055686593055725 1 1;
	setAttr -s 10 ".koy[4:9]"  -0.058239255100488663 -0.062410987913608551 
		0.067420348525047302 0.87140917778015137 0 0;
createNode animCurveTA -n "animCurveTA522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 10 0 15 0 30 0 34 -3.8815150978813779 
		52 -3.8815150978813779 58 -4.9429663060959017 61 -8.2818115469009843 65 -15.658938448118265 
		81 0 90 0 120 0;
createNode animCurveTA -n "animCurveTA523";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 10 0 15 0 30 0 34 -0.60644052417189565 
		52 -0.60644052417189565 58 2.4195158540814545 61 -2.1936428506527581 65 33.821608007949592 
		81 0 90 0 120 0;
	setAttr -s 12 ".kit[7:11]"  1 9 9 9 9;
	setAttr -s 12 ".kot[7:11]"  1 9 9 9 9;
	setAttr -s 12 ".kix[7:11]"  0.93300646543502808 0.99835497140884399 
		0.81601494550704956 1 1;
	setAttr -s 12 ".kiy[7:11]"  0.35985961556434631 0.057334963232278824 
		-0.57803082466125488 0 0;
	setAttr -s 12 ".kox[7:11]"  0.93300646543502808 0.99835497140884399 
		0.81601494550704956 1 1;
	setAttr -s 12 ".koy[7:11]"  0.3598596453666687 0.057334963232278824 
		-0.57803082466125488 0 0;
createNode animCurveTA -n "animCurveTA524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 10.423754966968488 10 10.423754966968488 
		15 10.423754966968488 30 10.423754966968488 34 10.423754966968488 40 10.423754966968488 
		52 24.818213303365138 58 25.656122840499108 65 24.818213303365138 71 24.173587621615575 
		81 10.423754966968488 90 10.423754966968488 120 10.423754966968488;
createNode animCurveTA -n "animCurveTA525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 27.722848255843903 10 27.722848255843903 
		15 27.722848255843903 30 27.722848255843903 34 27.722848255843903 40 27.722848255843903 
		52 40.747785594615422 58 41.505974516199316 65 40.747785594615422 71 40.16449106684238 
		81 27.722848255843903 90 27.722848255843903 120 27.722848255843903;
createNode animCurveTA -n "animCurveTA526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 21.576484776388227 10 21.576484776388227 
		15 21.576484776388227 30 21.576484776388227 34 21.576484776388227 40 21.576484776388227 
		52 46.360407126113074 58 47.803093142398097 65 46.360407126113074 71 45.250511109784284 
		81 21.576484776388227 90 21.576484776388227 120 21.576484776388227;
createNode animCurveTA -n "hom_Middle_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_Middle_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "animCurveTA529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 27.080064458283051 10 41.690524125447141 
		15 42.479488921185897 30 41.690524125447141 34 41.690524125447141 40 27.080064458283051 
		52 46.8997662504364 58 48.053482264790347 65 46.8997662504364 71 46.012182399748923 
		81 27.080064458283051 90 27.080064458283051 120 27.080064458283051;
createNode animCurveTA -n "hom_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 13.994403295754109;
createNode animCurveTA -n "hom_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 13.994403295754109;
createNode animCurveTA -n "hom_Middle_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_Middle_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_Middle_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 27.911632519594587;
createNode animCurveTA -n "hom_Jaw_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_Jaw_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "animCurveTA544";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 61 0 65 43.487888146515196 
		70 0 75 16.35187591970082 80 0 85 15.672109937100819 90 0 95 13.951620326159144 
		99 0 104 10.442681631810386 109 0 114 6.7390505787411925 120 0;
	setAttr -s 14 ".kit[0:13]"  9 1 3 3 3 3 3 
		1 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  9 1 3 3 3 3 3 
		1 3 9 9 9 9 1;
	setAttr -s 14 ".kix[1:13]"  0.99993705749511719 1 1 1 1 1 0.86983799934387207 
		1 0.97979253530502319 1 0.98171144723892212 1 1;
	setAttr -s 14 ".kiy[1:13]"  0.011220145039260387 0 0 0 0 0 
		-0.49333745241165161 0 -0.20001658797264099 0 -0.19037511944770813 0 0;
	setAttr -s 14 ".kox[1:13]"  0.99993705749511719 1 1 1 1 1 0.86983823776245117 
		1 0.97979253530502319 1 0.98171144723892212 1 1;
	setAttr -s 14 ".koy[1:13]"  0.01122015155851841 0 0 0 0 0 -0.49333709478378296 
		0 -0.20001658797264099 0 -0.19037511944770813 0 0;
createNode animCurveTA -n "animCurveTA545";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.65073001024951671 10 -4.5959556732494429 
		15 -4.8979296260821128 30 -5.7645005394384574 34 -5.5144784189139804 40 -0.65073001024951671 
		52 6.1222990678299611 58 6.6600606936614186 65 9.0269604811210797 71 8.6310794089285139 
		81 -0.65073001024951671 120 -0.65073001024951671;
	setAttr -s 12 ".kit[0:11]"  9 1 9 1 1 9 1 
		9 9 1 1 9;
	setAttr -s 12 ".kot[0:11]"  9 1 9 1 1 9 1 
		9 9 1 1 9;
	setAttr -s 12 ".kix[1:11]"  0.99742591381072998 0.99953240156173706 
		0.99995940923690796 0.9940950870513916 0.94720488786697388 0.99754184484481812 
		0.99322605133056641 0.9968637228012085 0.96372407674789429 0.98872768878936768 
		1;
	setAttr -s 12 ".kiy[1:11]"  -0.071704357862472534 -0.0305781289935112 
		-0.0090130241587758064 0.10851263254880905 0.32062897086143494 0.070073194801807404 
		0.11619806289672852 0.079137407243251801 -0.26690047979354858 -0.14972506463527679 
		0;
	setAttr -s 12 ".kox[1:11]"  0.99742591381072998 0.99953240156173706 
		0.99995940923690796 0.9940950870513916 0.94720488786697388 0.99754184484481812 
		0.99322605133056641 0.9968637228012085 0.96372407674789429 0.98872768878936768 
		1;
	setAttr -s 12 ".koy[1:11]"  -0.071704365313053131 -0.0305781289935112 
		-0.0090130260214209557 0.10851263999938965 0.32062897086143494 0.070073202252388 
		0.11619806289672852 0.079137407243251801 -0.26690047979354858 -0.14972509443759918 
		0;
createNode animCurveTA -n "animCurveTA546";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -4.2368721935960929 10 -4.2368721935960982 
		15 -5.3505724935906045 30 -17.159991062430105 34 2.9637359712973925 40 -4.2368721935960929 
		52 -5.3368109397558641 58 -5.0396626346465592 65 -2.0920692825454257 71 -2.1747393846778209 
		81 -4.2368721935960929 120 -4.2368721935960929;
	setAttr -s 12 ".kit[0:11]"  9 9 9 1 1 1 1 
		1 9 1 1 9;
	setAttr -s 12 ".kot[0:11]"  9 9 9 1 1 1 1 
		1 9 1 1 9;
	setAttr -s 12 ".kix[3:11]"  0.9960368275642395 0.99771267175674438 
		0.99184489250183105 0.99999010562896729 0.99533325433731079 0.99340832233428955 
		0.999198317527771 0.9901127815246582 1;
	setAttr -s 12 ".kiy[3:11]"  0.088942103087902069 0.067597858607769012 
		-0.12745082378387451 0.0044505828991532326 0.096497289836406708 0.11462941020727158 
		-0.04003431648015976 -0.14027374982833862 0;
	setAttr -s 12 ".kox[3:11]"  0.9960368275642395 0.99771267175674438 
		0.99184489250183105 0.99999010562896729 0.99533325433731079 0.99340832233428955 
		0.999198317527771 0.9901127815246582 1;
	setAttr -s 12 ".koy[3:11]"  0.088942095637321472 0.0675978884100914 
		-0.12745082378387451 0.0044505828991532326 0.096497289836406708 0.11462941020727158 
		-0.040034309029579163 -0.14027372002601624 0;
createNode animCurveTA -n "animCurveTA547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 8.7398866450636881 10 8.7398866450636952 
		15 8.8326761850608388 30 9.7848446641631703 34 7.7928223811902955 40 8.7398866450636881 
		52 9.7684260132125029 58 6.8741881997524104 65 -15.564251854595115 71 -14.544477633339952 
		81 8.7398866450636881 120 8.7398866450636881;
	setAttr -s 12 ".kit[5:11]"  1 9 1 9 1 1 9;
	setAttr -s 12 ".kot[5:11]"  1 9 1 9 1 1 9;
	setAttr -s 12 ".kix[5:11]"  0.99398565292358398 0.99853056669235229 
		0.88917243480682373 0.75718259811401367 0.98341798782348633 0.94800269603729248 
		1;
	setAttr -s 12 ".kiy[5:11]"  0.10951021313667297 -0.054191220551729202 
		-0.45757231116294861 -0.65320324897766113 0.18135342001914978 0.31826221942901611 
		0;
	setAttr -s 12 ".kox[5:11]"  0.99398565292358398 0.99853056669235229 
		0.88917237520217896 0.75718259811401367 0.98341798782348633 0.94800275564193726 
		1;
	setAttr -s 12 ".koy[5:11]"  0.10951019823551178 -0.054191220551729202 
		-0.45757240056991577 -0.65320324897766113 0.18135349452495575 0.31826218962669373 
		0;
createNode animCurveTA -n "animCurveTA548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 10 -9.5223955667000642 15 -10.071899953320422 
		30 -10.200300975382859 34 -12.228154629873064 40 3.7266678514992302 52 38.370242633954817 
		58 40.811739671887878 65 35.202402205333939 71 33.447679288054907 81 0 100 
		-2.719338102472872 120 0;
	setAttr -s 13 ".kit[1:12]"  1 9 9 1 9 1 9 
		9 1 1 9 9;
	setAttr -s 13 ".kot[1:12]"  1 9 9 1 9 1 9 
		9 1 1 9 9;
	setAttr -s 13 ".kix[1:12]"  0.97101521492004395 0.99984252452850342 
		0.99823921918869019 0.98962295055389404 0.56198084354400635 0.90711206197738647 
		0.9919583797454834 0.95871847867965698 0.85501831769943237 0.97935187816619873 
		1 0.99747544527053833;
	setAttr -s 13 ".kiy[1:12]"  -0.23901775479316711 -0.017744727432727814 
		-0.059317070990800858 0.14368845522403717 0.82715022563934326 0.42088913917541504 
		-0.12656453251838684 -0.28435686230659485 -0.51859784126281738 -0.20216302573680878 
		0 0.07101237028837204;
	setAttr -s 13 ".kox[1:12]"  0.97101521492004395 0.99984252452850342 
		0.99823921918869019 0.98962295055389404 0.56198084354400635 0.9071120023727417 
		0.9919583797454834 0.95871847867965698 0.85501831769943237 0.97935193777084351 
		1 0.99747544527053833;
	setAttr -s 13 ".koy[1:12]"  -0.2390177845954895 -0.017744727432727814 
		-0.059317070990800858 0.14368844032287598 0.82715022563934326 0.42088934779167175 
		-0.12656453251838684 -0.28435686230659485 -0.51859784126281738 -0.20216283202171326 
		0 0.07101237028837204;
createNode animCurveTA -n "animCurveTA549";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 10 -11.417256184165094 15 -13.192810965238177 
		30 -23.696099021649079 34 8.8704548919760438 40 2.1432976039534233 52 -18.606324362032449 
		58 -16.16235744296187 65 20.469320571882054 71 19.800560357043043 81 0 100 
		3.1206054019733203 120 0;
	setAttr -s 13 ".kit[0:12]"  9 9 9 1 1 9 1 
		1 1 1 1 9 9;
	setAttr -s 13 ".kot[0:12]"  9 9 9 1 1 9 1 
		1 1 1 1 9 9;
	setAttr -s 13 ".kix[3:12]"  0.98357272148132324 0.98109441995620728 
		0.78114801645278931 0.94121116399765015 0.77554225921630859 0.9755856990814209 
		0.87020093202590942 0.99922293424606323 1 0.99667936563491821;
	setAttr -s 13 ".kiy[3:12]"  0.1805121898651123 0.19352959096431732 
		-0.62434589862823486 -0.33781889081001282 0.63129562139511108 0.21961916983127594 
		-0.49269703030586243 -0.039415493607521057 0 -0.081425972282886505;
	setAttr -s 13 ".kox[3:12]"  0.98357278108596802 0.98109441995620728 
		0.78114801645278931 0.94121116399765015 0.77554225921630859 0.9755856990814209 
		0.87020093202590942 0.99922293424606323 1 0.99667936563491821;
	setAttr -s 13 ".koy[3:12]"  0.18051214516162872 0.19352960586547852 
		-0.62434589862823486 -0.33781886100769043 0.63129562139511108 0.21961911022663116 
		-0.49269694089889526 -0.039415504783391953 0 -0.081425972282886505;
createNode animCurveTA -n "animCurveTA550";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 10 8.2791650858875183 30 10.513349932262301 
		34 -8.1172427524262041 40 1.1426029369934001 52 21.053384550486349 58 18.053091552260721 
		65 -39.874130150588627 71 -39.039386704681654 81 0 100 -5.1350097035474089 
		120 0;
	setAttr -s 12 ".kit[2:11]"  1 9 9 1 1 9 9 
		1 9 9;
	setAttr -s 12 ".kot[2:11]"  1 9 9 1 1 9 9 
		1 9 9;
	setAttr -s 12 ".kix[2:11]"  0.99957287311553955 0.89775919914245605 
		0.7624887228012085 0.94878876209259033 0.66716122627258301 0.39879843592643738 
		0.60827583074569702 0.99605965614318848 1 0.99108439683914185;
	setAttr -s 12 ".kiy[2:11]"  0.029225010424852371 -0.44048658013343811 
		0.64700150489807129 0.31591120362281799 -0.74491339921951294 -0.91703861951828003 
		0.79372572898864746 0.088685669004917145 0 0.13323566317558289;
	setAttr -s 12 ".kox[2:11]"  0.99957287311553955 0.89775919914245605 
		0.7624887228012085 0.94878876209259033 0.66716110706329346 0.39879843592643738 
		0.60827583074569702 0.99605965614318848 1 0.99108439683914185;
	setAttr -s 12 ".koy[2:11]"  0.02922496385872364 -0.44048658013343811 
		0.64700150489807129 0.31591123342514038 -0.74491345882415771 -0.91703861951828003 
		0.79372572898864746 0.088685691356658936 0 0.13323566317558289;
createNode animCurveTA -n "hom_Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 4.8714700432790456;
createNode animCurveTA -n "hom_Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 11.783606204137085;
createNode animCurveTA -n "hom_Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 7.5423825101935913;
createNode animCurveTA -n "animCurveTA554";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.8903601258661931 15 -1.877271408129058 
		30 -1.7148806373525161 34 -1.7169467904444964 40 -1.8903601258661931 52 0.61994476453668534 
		58 0.68336802106453487 65 1.2818760671901799 71 1.1454489209257717 81 -1.8903601258661931 
		120 -1.8903601258661931;
	setAttr -s 11 ".kit[0:10]"  9 9 9 1 1 1 9 
		1 1 1 9;
	setAttr -s 11 ".kot[0:10]"  9 9 9 1 1 1 9 
		1 1 1 9;
	setAttr -s 11 ".kix[3:10]"  0.99999368190765381 0.9998314380645752 
		0.99996322393417358 0.99964481592178345 0.99994301795959473 0.99934393167495728 
		0.99908602237701416 1;
	setAttr -s 11 ".kiy[3:10]"  -0.0035602229181677103 0.018359458073973656 
		0.0085750110447406769 0.02665102481842041 0.010673010721802711 -0.03621755912899971 
		-0.042744845151901245 0;
	setAttr -s 11 ".kox[3:10]"  0.99999368190765381 0.9998314380645752 
		0.99996322393417358 0.99964481592178345 0.99994301795959473 0.99934393167495728 
		0.99908602237701416 1;
	setAttr -s 11 ".koy[3:10]"  -0.0035602229181677103 0.018359459936618805 
		0.008575020357966423 0.02665102481842041 0.010672984644770622 -0.036217626184225082 
		-0.042744845151901245 0;
createNode animCurveTA -n "animCurveTA555";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 2.5597289571479034 10 2.5597289571479034 
		15 1.8051853224550696 30 -6.2495946424470201 34 6.850275529989351 40 2.5597289571479034 
		52 1.3746338556521589 71 1.6666443149613066 81 2.5597289571479034 120 2.5597289571479034;
	setAttr -s 10 ".kit[0:9]"  9 9 9 1 1 1 1 
		1 1 9;
	setAttr -s 10 ".kot[0:9]"  9 9 9 1 1 1 1 
		1 1 9;
	setAttr -s 10 ".kix[3:9]"  0.99975883960723877 0.99939113855361938 
		0.99088954925537109 0.99992638826370239 0.99880456924438477 0.99923789501190186 
		1;
	setAttr -s 10 ".kiy[3:9]"  0.021959623321890831 0.034890394657850266 
		-0.13467714190483093 -0.012132528237998486 0.048881620168685913 0.039034046232700348 
		0;
	setAttr -s 10 ".kox[3:9]"  0.99975883960723877 0.99939113855361938 
		0.99088954925537109 0.99992638826370239 0.99880456924438477 0.99923789501190186 
		1;
	setAttr -s 10 ".koy[3:9]"  0.02195962518453598 0.034890379756689072 
		-0.13467714190483093 -0.012132531963288784 0.048881620168685913 0.039034042507410049 
		0;
createNode animCurveTA -n "animCurveTA556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 2.016811087403604 10 2.016811087403604 
		15 2.2035027514171301 30 4.4833180504197223 34 4.091731651089316 40 2.016811087403604 
		52 4.4620396664760991 58 4.4894723619591907 65 0.48939676195405829 71 0.45409756762763981 
		81 2.016811087403604 120 2.016811087403604;
	setAttr -s 12 ".kit[3:11]"  1 9 9 9 9 1 9 
		1 9;
	setAttr -s 12 ".kot[3:11]"  1 9 9 9 9 1 9 
		1 9;
	setAttr -s 12 ".kix[3:11]"  0.99996227025985718 0.99176353216171265 
		0.99994200468063354 0.99742323160171509 0.98743981122970581 0.99791622161865234 
		0.9987531304359436 0.99893611669540405 1;
	setAttr -s 12 ".kiy[3:11]"  0.008685489185154438 -0.12808230519294739 
		0.010771199129521847 0.071741469204425812 -0.15799576044082642 -0.064523249864578247 
		0.049922194331884384 0.046115212142467499 0;
	setAttr -s 12 ".kox[3:11]"  0.99996227025985718 0.99176353216171265 
		0.99994200468063354 0.99742323160171509 0.98743981122970581 0.99791622161865234 
		0.9987531304359436 0.99893611669540405 1;
	setAttr -s 12 ".koy[3:11]"  0.0086854910477995872 -0.12808230519294739 
		0.010771199129521847 0.071741469204425812 -0.15799576044082642 -0.064523257315158844 
		0.049922194331884384 0.0461152084171772 0;
createNode animCurveTA -n "hom_Middle_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_Middle_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_Middle_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 33.429092416277157;
createNode animCurveTA -n "hom_Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 8.2533422302317216;
createNode animCurveTA -n "hom_Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 23.263402056531085;
createNode animCurveTA -n "hom_Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 20.166277752815617;
createNode animCurveTA -n "hom_Middle_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "hom_Middle_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  37 0;
createNode animCurveTA -n "animCurveTA565";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 17.254116939558369 10 48.822924679439019 
		15 50.5276402381864 30 48.822924679439019 34 48.822924679439019 40 17.254116939558369 
		52 29.914699188171909 58 30.651678797046408 65 29.914699188171909 71 29.347721534607029 
		81 17.254116939558369 90 17.254116939558369 120 17.254116939558369;
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
	setAttr ".o" 37;
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
connectAttr "hom_idle_donutSource.st" "clipLibrary1.st[0]";
connectAttr "hom_idle_donutSource.du" "clipLibrary1.du[0]";
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
connectAttr "animCurveTU37.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU38.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "hom_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "animCurveTU40.a" "clipLibrary1.cel[0].cev[13].cevr";
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
connectAttr "animCurveTA469.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA470.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA471.a" "clipLibrary1.cel[0].cev[49].cevr";
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
connectAttr "animCurveTL191.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL192.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL193.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA501.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA502.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA503.a" "clipLibrary1.cel[0].cev[87].cevr";
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
connectAttr "animCurveTL200.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL201.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL202.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "hom_Right_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[103].cevr"
		;
connectAttr "hom_Right_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[104].cevr"
		;
connectAttr "hom_Right_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[105].cevr"
		;
connectAttr "animCurveTA510.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA511.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA512.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA513.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA514.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA515.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA516.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA517.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "hom_R_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[114].cevr"
		;
connectAttr "hom_R_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[115].cevr"
		;
connectAttr "hom_R_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[116].cevr"
		;
connectAttr "animCurveTA521.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA522.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA523.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA524.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA525.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA526.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "hom_Middle_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[123].cevr"
		;
connectAttr "hom_Middle_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[124].cevr"
		;
connectAttr "animCurveTA529.a" "clipLibrary1.cel[0].cev[125].cevr";
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
connectAttr "animCurveTA544.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA545.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA546.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA547.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA548.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA549.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA550.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "hom_Head_rotateX.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "hom_Head_rotateY.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "hom_Head_rotateZ.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA554.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA555.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA556.a" "clipLibrary1.cel[0].cev[152].cevr";
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
connectAttr "animCurveTA565.a" "clipLibrary1.cel[0].cev[161].cevr";
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
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[8].olnk";
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
// End of hom_idle_donut.ma
