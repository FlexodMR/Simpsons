//Maya ASCII 4.0 scene
//Name: hom_loco_enter_car.ma
//Last modified: Wed, Jul 03, 2002 02:10:54 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_loco_enter_carSource";
	setAttr ".ihi" 0;
	setAttr ".du" 50;
	setAttr ".ci" no;
createNode animCurveTL -n "Extra_Attributes_translateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "hom_Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTL -n "hom_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTL -n "hom_Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 1;
createNode animCurveTU -n "hom_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 1;
createNode animCurveTA -n "hom_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTL -n "hom_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTL -n "hom_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTL -n "hom_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTL -n "hom_Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.26454016861507795 5 -0.26454016861507795 
		8 -0.26454016861507795 12 -0.26454016861507795 15 -0.26454016861507795 20 
		-0.26454016861507795 23 -0.22437861733064826 26 -0.12576758233289637 30 -0.12576758233289637 
		34 0.32223765585262037 38 0.95390272013202537 43 0.9977251452360113 50 0.9977251452360113;
createNode animCurveTL -n "hom_Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.13806192026723146 5 0.13806192026723146 
		8 0.13806192026723146 12 0.13806192026723146 15 0.13806192026723146 20 0.21218793707500705 
		23 0.25861102390683555 26 0.18381928724669791 30 0.14857135559247653 34 0.32587863498177722 
		38 0.67000535384055038 43 0.63499928128953953 50 0.63499928128953953;
createNode animCurveTL -n "hom_Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.064904406754016042 5 -0.064904406754016042 
		8 -0.064904406754016042 12 -0.064904406754016042 15 -0.064904406754016042 
		20 -0.064904406754016042 23 0.38761032248211302 26 0.92356787827008124 30 
		0.92356787827008124 34 0.97571382975354892 38 1.6386997186474177 43 1.6386997186474177 
		50 1.6386997186474177;
createNode animCurveTA -n "hom_Right_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 15.829425701546842 
		23 14.331626443463124 26 -10.811641225563552 30 1.5040871012270867 34 49.982162247543414 
		38 -1.1497175013172067 43 -1.1497175013172067 50 -1.1497175013172067;
createNode animCurveTA -n "hom_Right_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -25.948901905116401 5 -25.948901905116401 
		8 -25.948901905116401 12 -25.948901905116401 15 -25.948901905116401 20 -25.948901905116429 
		23 -0.4082319874018141 26 9.0830972443010491 30 9.0830972443010527 34 -26.787234627318476 
		38 -6.734512670826839 43 -6.734512670826839 50 -6.734512670826839;
createNode animCurveTA -n "hom_Right_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 -8.8428853630020704e-016 
		23 0.50956548566278537 26 2.954679702671601 30 2.9546797026715965 34 -35.480451756782045 
		38 13.85301503894679 43 13.85301503894679 50 13.85301503894679;
createNode animCurveTL -n "hom_Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.21594587158542247 5 0.21594587158542247 
		8 0.21594587158542247 12 0.21594587158542247 15 0.21594587158542247 20 0.21594587158542247 
		23 0.21594587158542247 26 0.21284262128680437 30 0.4860932926936149 34 1.1055818418276462 
		38 1.452797170589629 43 1.4819699168028189 50 1.4819699168028189;
createNode animCurveTL -n "hom_Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.1380615615975922 5 0.1380615615975922 
		8 0.1380615615975922 12 0.1380615615975922 15 0.1380615615975922 20 0.1380615615975922 
		23 0.1380615615975922 26 0.18724132113549896 30 0.60518161391939718 34 0.60518161391939718 
		38 0.60518161391939718 43 0.60518161391939718 50 0.60518161391939718;
createNode animCurveTL -n "hom_Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.00078430246903575811 5 0.00078430246903575811 
		8 0.00078430246903575811 12 0.00078430246903575811 15 0.00078430246903575811 
		20 0.00078430246903575811 23 0.00078430246903575811 26 0.062250954386329993 
		30 1.357575367928272 34 1.5854821327376039 38 1.6643148411287962 43 1.6643148411287962 
		50 1.6643148411287962;
createNode animCurveTA -n "hom_Left_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 37.847760558152139 30 0.39825964740717662 34 0.39825964740717662 38 0.39825964740717662 
		43 0.39825964740717662 50 0.39825964740717662;
createNode animCurveTA -n "hom_Left_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 1.6471102606572985 30 1.647110260657298 34 1.647110260657298 38 1.647110260657298 
		43 1.647110260657298 50 1.647110260657298;
createNode animCurveTA -n "hom_Left_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 7.7922141916432395 30 7.792214191643243 34 7.792214191643243 38 7.792214191643243 
		43 7.792214191643243 50 7.792214191643243;
createNode animCurveTA -n "hom_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTL -n "hom_Right_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
createNode animCurveTL -n "hom_Right_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
createNode animCurveTL -n "hom_Right_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 5 1 8 1 12 1 15 1 20 1 23 1 
		26 1 30 1 34 1 38 1 43 1 50 1;
createNode animCurveTL -n "hom_Left_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
createNode animCurveTL -n "hom_Left_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
createNode animCurveTL -n "hom_Left_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 5 1 8 1 12 1 15 1 20 1 23 1 
		26 1 30 1 34 1 38 1 43 1 50 1;
createNode animCurveTL -n "hom_Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.076472881617957691 5 -0.076472881617957691 
		8 -0.018628487836120831 12 -0.066580084407076495 15 -0.1250525306946591 20 
		-0.033034131700396582 23 -0.01216889566532684 26 0.063519521395760351 30 
		0.1422171324228183 34 0.92808980328799406 38 1.2095430178438509 43 1.2095430178438509 
		50 1.282130681419051;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "hom_Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.93105416142265018 5 0.93105416142265018 
		8 0.9177377185523794 12 0.9177377185523794 15 0.9177377185523794 20 0.9224657007074174 
		23 0.88549376342091612 26 0.82947857460020391 30 0.93100447257040675 34 0.93100447257040675 
		38 0.93100447257040675 43 0.93100447257040675 50 0.93100447257040675;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "hom_Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0.18881674669046031 
		23 0.31883914369988964 26 0.5751153059671642 30 0.96542180050073689 34 1.1079338062119637 
		38 1.1079338062119637 43 1.1079338062119637 50 1.1079338062119637;
createNode animCurveTA -n "hom_Character_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.62843630316474508 5 -0.64945777164326313 
		8 3.0455725522002712 12 2.2213518221595017 15 -4.0647210446877668 20 -4.0647210446877668 
		23 -2.935775021023272 26 -3.0762169050940038 30 -6.5591355069755881 34 -20.43782315427989 
		38 -17.992604563025367 43 -6.2033679334091447 50 -9.4305210053831345;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "hom_Character_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -5.8284402688137158 5 15.712784536999756 
		8 23.118437686934161 12 19.301447906299206 15 6.129632983176454 20 6.129632983176454 
		23 13.600868200262255 26 21.932677743389643 30 -3.7197865316961756 34 -25.18292761412831 
		38 -5.7368252068463814 43 9.6045868696985739 50 -2.0975263990809347;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "hom_Character_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -1.2956360193097458 5 -1.5353463816017385 
		8 -2.8980232091229619 12 -1.7971044910279799 15 -1.7490863204697844 20 -1.7490863204697844 
		23 -0.84256151123097234 26 -1.3015925165258879 30 -5.0537228151421463 34 
		-9.3597938026419634 38 9.2902732988315844 43 22.3792082926253 50 0.53932213336905011;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "hom_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_L_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_L_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_L_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTL -n "hom_Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 -0.43524234076486068;
createNode animCurveTL -n "hom_Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 -0.82665738350180629;
createNode animCurveTL -n "hom_Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0.27773886459742925;
createNode animCurveTA -n "hom_Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 -1.8121934161072303e-015;
createNode animCurveTA -n "hom_Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 28.652637602052774;
createNode animCurveTA -n "hom_Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 64.676908227303443;
createNode animCurveTL -n "hom_Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0.5198069948790518;
createNode animCurveTL -n "hom_Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 -0.72394202659893114;
createNode animCurveTL -n "hom_Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0.36439499068905612;
createNode animCurveTA -n "hom_Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 7.7976222737965299;
createNode animCurveTA -n "hom_Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 -30.409274105849079;
createNode animCurveTA -n "hom_Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 -64.859940280210878;
createNode animCurveTL -n "Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -0.8448236677023373 5 -0.097868043675122127 
		8 0.40209674191744299 10 -0.29046687561639284 11 -0.72503963499982771 12 
		-0.82025324498670482 15 -1.0511062572995298 20 -0.91837917750249576 23 -0.89193476617524625 
		26 -0.81646843488806586 30 -0.4751524283260159 34 0.66940167328238531 38 
		0.66940167328238531 43 0.28316225701549508 50 1.1365911147221825;
createNode animCurveTL -n "Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1.272818195449458 5 1.6409997766055862 
		8 1.595934596646839 10 1.5560701476393894 11 1.5413877143028867 12 1.6184040931017163 
		15 1.7658539398757671 20 1.2710208262091869 23 1.2007410291021647 26 1.5828766768376654 
		30 1.6062720832207276 34 1.6412122750533553 38 1.6412122750533553 43 1.4738568354380837 
		50 1.3640539660773257;
createNode animCurveTL -n "Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -0.097994651149805143 5 0.84567637706889831 
		8 0.90558814192862547 10 0.91526711927947235 11 0.91098273447354317 12 0.77648015763759448 
		15 0.64741990264275717 20 0.25669475715425083 23 0.41197391062920852 26 1.4548533078113217 
		30 1.6696844943556712 34 1.8915547725374475 38 1.8915547725374475 43 2.0227579821310453 
		50 1.7496299011825536;
createNode animCurveTA -n "Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 5.4739599453216474 5 71.119159344460144 
		8 27.510925858298908 10 36.054445792927538 11 81.646882540622514 12 -55.339832299472761 
		15 -73.006569263986663 20 -6.8408848116811125 23 -10.826466618605725 26 -64.843697856001924 
		30 -64.843697856001924 34 -19.345874397196617 38 -19.345874397196617 43 -19.345874397196617 
		50 -19.345874397196617;
createNode animCurveTA -n "Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 8.5874521608419823 5 28.587710488537017 
		8 10.514577351016655 10 15.977221752729283 11 59.646537532535312 12 62.610409199778147 
		15 67.681225120692602 20 30.714124774991525 23 2.6182241232448606 26 52.853152326359094 
		30 52.853152326359094 34 47.068687946319812 38 47.068687946319812 43 47.068687946319812 
		50 47.068687946319812;
createNode animCurveTA -n "Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 74.754744621954103 5 145.5137268770755 
		8 148.92609618633051 10 154.76420491767783 11 139.91788366518668 12 -0.33326514007845842 
		15 -28.111117404963213 20 52.637498007569562 23 59.744542346032461 26 -50.290850081783056 
		30 -50.290850081783056 34 -7.3649226411748101 38 -7.3649226411748101 43 -7.3649226411748101 
		50 -7.3649226411748101;
createNode animCurveTL -n "Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.61083301393139333 5 0.57262925149573951 
		8 0.59805198577186836 12 0.62731828370774656 15 0.58391204189897328 20 0.71855072776607709 
		23 0.82172346137553354 26 0.93554133467010203 30 1.4716417147724838 34 2.5344234626922884 
		38 2.4931802139982877 43 2.427099559300947 50 2.5797228153124396;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1.229336924066629 5 1.4163535334556963 
		8 1.5447691581657059 12 1.4481707905924115 15 1.3747541910192174 20 1.3747541910192174 
		23 1.9063829511747798 26 1.6275769178756707 30 1.8457747935181203 34 1.1928088765652711 
		38 1.3179224574420834 43 1.6792239110769844 50 1.3278316618934394;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.14314299916678522 5 -0.37264849786442289 
		8 -0.42317204214440163 12 -0.31931996000989932 15 -0.041027114095808462 20 
		0.388399243822595 23 0.83013864918616787 26 0.97191790066669992 30 1.01136763445311 
		34 1.445463961367873 38 1.2980392059209773 43 1.4645939374237689 50 1.6105068701223564;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 16.226511010665405 5 16.226511010665405 
		8 16.226511010665405 12 16.226511010665405 15 16.226511010665405 20 16.226511010665405 
		23 106.74106883254665 26 52.216382451933519 30 36.020908932246329 34 26.719919114785494 
		38 26.719919114785494 43 26.719919114785494 50 31.059375703629879;
createNode animCurveTA -n "Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -8.513966085499284 5 -8.513966085499284 
		8 -8.513966085499284 12 -8.513966085499284 15 -8.513966085499284 20 -8.513966085499284 
		23 -55.896984739101498 26 -62.385239143362448 30 -26.331229507995829 34 -27.3481632338883 
		38 -27.3481632338883 43 -27.3481632338883 50 -29.447296092665372;
createNode animCurveTA -n "Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -68.213989601412422 5 -68.213989601412422 
		8 -68.213989601412422 12 -68.213989601412422 15 -68.213989601412422 20 -68.213989601412422 
		23 -88.942099254426083 26 -34.697751238872286 30 -12.474571549991943 34 -45.372205371553832 
		38 -45.372205371553832 43 -45.372205371553832 50 -67.63779047342922;
createNode animCurveTL -n "Left_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  5 0.17523930523423681 8 0.17523930523423681 
		12 0.17523930523423681 15 0.17523930523423681 20 0.17523930523423681 23 0.15311553630748009 
		26 0.063331173333856433 30 0.063331173333856433 34 0.063331173333856433 38 
		0.063331173333856433 43 0.063331173333856433 50 0.063331173333856433;
createNode animCurveTL -n "Left_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  5 -0.00072435787012014696 8 -0.00072435787012014696 
		12 -0.00072435787012014696 15 -0.00072435787012014696 20 -0.00072435787012014696 
		23 -0.37298796460009648 26 -0.69960805773293522 30 -0.69960805773293522 34 
		-0.69960805773293522 38 -0.69960805773293522 43 -0.69960805773293522 50 -0.69960805773293522;
createNode animCurveTL -n "Left_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  5 -0.80201435285893019 8 -0.80201435285893019 
		12 -0.80201435285893019 15 -0.80201435285893019 20 -0.80201435285893019 23 
		-0.70922931248881582 26 -0.66762598980258558 30 -0.66762598980258558 34 -0.66762598980258558 
		38 -0.66762598980258558 43 -0.66762598980258558 50 -0.66762598980258558;
createNode animCurveTL -n "Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  5 -0.4001111643408698 8 -0.4001111643408698 
		12 -0.4001111643408698 15 -0.31054502397108613 20 -0.31054502397108613 23 
		-0.31054502397108613 26 -0.31054502397108613 30 -0.31054502397108613 34 -0.31054502397108613 
		38 -0.31054502397108613 43 -0.31054502397108613 50 -0.31054502397108613;
createNode animCurveTL -n "Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  5 -0.32054195494897236 8 -0.32054195494897236 
		12 -0.32054195494897236 15 -0.55640530640609931 20 -0.55640530640609931 23 
		-0.55640530640609931 26 -0.55640530640609931 30 -0.55640530640609931 34 -0.55640530640609931 
		38 -0.55640530640609931 43 -0.55640530640609931 50 -0.55640530640609931;
createNode animCurveTL -n "Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  5 -0.81561019929437761 8 -0.81561019929437761 
		12 -0.81561019929437761 15 -0.57914122395678103 20 -0.57914122395678103 23 
		-0.57914122395678103 26 -0.57914122395678103 30 -0.57914122395678103 34 -0.57914122395678103 
		38 -0.57914122395678103 43 -0.57914122395678103 50 -0.57914122395678103;
createNode animCurveTA -n "hom_R_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 12.253734489678925 5 12.253734489678925 
		8 12.253734489678925 12 12.253734489678925 15 12.253734489678925 20 12.253734489678925 
		23 12.253734489678925 26 12.253734489678925 30 12.253734489678925 34 12.253734489678925 
		38 12.253734489678925 43 12.253734489678925 50 12.253734489678925;
createNode animCurveTA -n "hom_R_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -65.746751280844961 5 -65.746751280844961 
		8 -65.746751280844961 12 -65.746751280844961 15 -65.746751280844961 20 -65.746751280844961 
		23 -65.746751280844961 26 -65.746751280844961 30 -65.746751280844961 34 -65.746751280844961 
		38 -65.746751280844961 43 -65.746751280844961 50 -65.746751280844961;
createNode animCurveTA -n "hom_R_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 3.871449260799477e-015 5 3.871449260799477e-015 
		8 3.871449260799477e-015 12 3.871449260799477e-015 15 3.871449260799477e-015 
		20 3.871449260799477e-015 23 3.871449260799477e-015 26 3.871449260799477e-015 
		30 3.871449260799477e-015 34 3.871449260799477e-015 38 3.871449260799477e-015 
		43 3.871449260799477e-015 50 3.871449260799477e-015;
createNode animCurveTA -n "hom_L_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.061808866237337522 5 -0.061808866237337522 
		8 -0.061808866237337522 12 -0.061808866237337522 15 -0.061808866237337522 
		20 -0.061808866237337522 23 -0.061808866237337522 26 -0.061808866237337522 
		30 -0.061808866237337522 34 -0.061808866237337522 38 -0.061808866237337522 
		43 -0.061808866237337522 50 -0.061808866237337522;
createNode animCurveTA -n "hom_L_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -59.058178941076754 5 -59.058178941076754 
		8 -59.058178941076754 12 -59.058178941076754 15 -59.058178941076754 20 -59.058178941076754 
		23 -59.058178941076754 26 -59.058178941076754 30 -59.058178941076754 34 -59.058178941076754 
		38 -59.058178941076754 43 -59.058178941076754 50 -59.058178941076754;
createNode animCurveTA -n "hom_L_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 16.579147429757843 5 16.579147429757843 
		8 16.579147429757843 12 16.579147429757843 15 16.579147429757843 20 16.579147429757843 
		23 16.579147429757843 26 16.579147429757843 30 16.579147429757843 34 16.579147429757843 
		38 16.579147429757843 43 16.579147429757843 50 16.579147429757843;
createNode animCurveTA -n "hom_R_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 8.5572674112203622 5 8.5572674112203622 
		8 8.5572674112203622 12 8.5572674112203622 15 8.5572674112203622 20 8.5572674112203622 
		23 8.5572674112203622 26 8.5572674112203622 30 8.5572674112203622 34 8.5572674112203622 
		38 8.5572674112203622 43 8.5572674112203622 50 8.5572674112203622;
createNode animCurveTA -n "hom_L_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 15.711328223519057 5 15.711328223519057 
		8 15.711328223519057 12 15.711328223519057 15 15.711328223519057 20 15.711328223519057 
		23 15.711328223519057 26 15.711328223519057 30 15.711328223519057 34 15.711328223519057 
		38 15.711328223519057 43 15.711328223519057 50 15.711328223519057;
createNode animCurveTA -n "hom_R_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
createNode animCurveTA -n "hom_R_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
createNode animCurveTA -n "hom_R_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
createNode animCurveTA -n "hom_L_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
createNode animCurveTA -n "hom_L_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
createNode animCurveTA -n "hom_L_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
createNode animCurveTA -n "hom_Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 10.423754966968488 5 10.423754966968488 
		8 10.423754966968488 12 10.423754966968488 15 10.423754966968488 20 10.423754966968488 
		23 10.423754966968488 26 10.423754966968488 30 10.423754966968488 34 10.423754966968488 
		38 10.423754966968488 43 10.423754966968488 50 10.423754966968488;
createNode animCurveTA -n "hom_Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 27.722848255843903 5 27.722848255843903 
		8 27.722848255843903 12 27.722848255843903 15 27.722848255843903 20 27.722848255843903 
		23 27.722848255843903 26 27.722848255843903 30 27.722848255843903 34 27.722848255843903 
		38 27.722848255843903 43 27.722848255843903 50 27.722848255843903;
createNode animCurveTA -n "hom_Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 21.576484776388227 5 21.576484776388227 
		8 21.576484776388227 12 21.576484776388227 15 21.576484776388227 20 21.576484776388227 
		23 21.576484776388227 26 21.576484776388227 30 21.576484776388227 34 21.576484776388227 
		38 21.576484776388227 43 21.576484776388227 50 21.576484776388227;
createNode animCurveTA -n "hom_Middle_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
createNode animCurveTA -n "hom_Middle_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
createNode animCurveTA -n "hom_Middle_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 27.080064458283051 5 27.080064458283051 
		8 27.080064458283051 12 27.080064458283051 15 27.080064458283051 20 27.080064458283051 
		23 27.080064458283051 26 27.080064458283051 30 27.080064458283051 34 27.080064458283051 
		38 27.080064458283051 43 27.080064458283051 50 27.080064458283051;
createNode animCurveTA -n "hom_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 13.994403295754109;
createNode animCurveTA -n "hom_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 0;
createNode animCurveTA -n "hom_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  34 13.994403295754109;
createNode animCurveTA -n "hom_Middle_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
createNode animCurveTA -n "hom_Middle_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
createNode animCurveTA -n "hom_Middle_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 27.911632519594583 5 27.911632519594583 
		8 27.911632519594583 12 27.911632519594583 15 27.911632519594583 20 27.911632519594583 
		23 27.911632519594583 26 27.911632519594583 30 27.911632519594583 34 27.911632519594583 
		38 27.911632519594583 43 27.911632519594583 50 27.911632519594583;
createNode animCurveTA -n "hom_Jaw_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
createNode animCurveTA -n "hom_Jaw_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
createNode animCurveTA -n "hom_Jaw_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
createNode animCurveTA -n "hom_Spine_2_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.65073001024951671 5 17.865547004487734 
		8 26.344302103719443 12 15.995208714699748 15 12.699252606574687 20 7.8430056866173823 
		23 7.8430056866173823 26 7.8430056866173823 30 18.820843871529618 34 18.820843871529618 
		38 4.2275098834762188 43 4.2275098834762188 50 4.7695333758772662;
createNode animCurveTA -n "hom_Spine_2_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -4.2368721935960929 5 -8.1938064043711503 
		8 -14.600939198760139 12 -10.255568461043122 15 -5.5780160790766704 20 -2.4212113907903019 
		23 -2.4212113907903019 26 -2.4212113907903019 30 -8.442588645585376 34 -8.442588645585376 
		38 -2.4540162253985018 43 -2.4540162253985018 50 -1.066433931190679;
createNode animCurveTA -n "hom_Spine_2_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 8.7398866450636881 5 15.088783978648813 
		8 18.187946831246627 12 13.315807209516004 15 12.426406503189799 20 14.868855041301886 
		23 14.868855041301886 26 14.868855041301886 30 16.699953369662587 34 16.699953369662587 
		38 20.624934038163168 43 20.624934038163168 50 3.1178128563266303;
createNode animCurveTA -n "hom_Neck_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 7.1097278539792699 
		23 7.1097278539792699 26 7.1097278539792699 30 7.1097278539792699 34 7.1097278539792699 
		38 7.1097278539792699 43 7.1097278539792699 50 0;
createNode animCurveTA -n "hom_Neck_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
createNode animCurveTA -n "hom_Neck_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
createNode animCurveTA -n "Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 4.8714700432790456 5 -1.1550608810547045 
		8 -4.6280698493928911 12 4.2668697114412755 15 12.856076819043764 20 -5.8315373789181599 
		23 -5.8315373789181599 26 -5.8315373789181599 30 -36.676233426256914 34 3.7903101035041509 
		38 16.036141909331761 43 65.876868848330801 50 -2.4897402666472845;
createNode animCurveTA -n "Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 11.783606204137085 5 -2.4848103614995831 
		8 1.1028572004337271 12 14.698889146970815 15 28.760469501743163 20 -5.3829029886559372 
		23 -5.3829029886559372 26 -5.3829029886559372 30 -33.508235110336763 34 -7.1873577666484181 
		38 44.945407738006104 43 62.6827219794366 50 -1.7536868701131521;
createNode animCurveTA -n "Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 7.5423825101935913 5 18.991605264237883 
		8 10.480040827973736 12 0.2473340605799195 15 15.950642297069546 20 21.978188033309632 
		23 21.978188033309632 26 21.978188033309632 30 32.725954993364923 34 14.550786262996995 
		38 23.430089823162561 43 60.515989596384557 50 28.113189706373284;
createNode animCurveTA -n "hom_Spine_1_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -1.8903601258661931 5 -1.8903601258661931 
		8 -1.8903601258661931 12 -1.8903601258661931 15 -1.8903601258661931 20 -1.8903601258661931 
		23 -1.8903601258661931 26 -1.8903601258661931 30 -1.8903601258661931 34 -1.8903601258661931 
		38 -1.8903601258661931 43 -1.8903601258661931 50 -2.2794034653486954;
createNode animCurveTA -n "hom_Spine_1_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 2.5597289571479034 5 2.5597289571479034 
		8 2.5597289571479034 12 2.5597289571479034 15 2.5597289571479034 20 2.5597289571479034 
		23 2.5597289571479034 26 2.5597289571479034 30 2.5597289571479034 34 2.5597289571479034 
		38 2.5597289571479034 43 2.5597289571479034 50 2.220409239720234;
createNode animCurveTA -n "hom_Spine_1_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 2.016811087403604 5 2.016811087403604 
		8 2.016811087403604 12 2.016811087403604 15 2.016811087403604 20 2.016811087403604 
		23 2.016811087403604 26 2.016811087403604 30 2.016811087403604 34 2.016811087403604 
		38 2.016811087403604 43 2.016811087403604 50 -7.2916773476568704;
createNode animCurveTA -n "hom_Middle_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
createNode animCurveTA -n "hom_Middle_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
createNode animCurveTA -n "hom_Middle_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 33.429092416277157 5 33.429092416277157 
		8 33.429092416277157 12 33.429092416277157 15 33.429092416277157 20 33.429092416277157 
		23 33.429092416277157 26 33.429092416277157 30 33.429092416277157 34 33.429092416277157 
		38 33.429092416277157 43 33.429092416277157 50 33.429092416277157;
createNode animCurveTA -n "hom_Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 8.2533422302317216 5 8.2533422302317216 
		8 8.2533422302317216 12 8.2533422302317216 15 8.2533422302317216 20 8.2533422302317216 
		23 8.2533422302317216 26 8.2533422302317216 30 8.2533422302317216 34 8.2533422302317216 
		38 8.2533422302317216 43 8.2533422302317216 50 8.2533422302317216;
createNode animCurveTA -n "hom_Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 23.263402056531085 5 23.263402056531085 
		8 23.263402056531085 12 23.263402056531085 15 23.263402056531085 20 23.263402056531085 
		23 23.263402056531085 26 23.263402056531085 30 23.263402056531085 34 23.263402056531085 
		38 23.263402056531085 43 23.263402056531085 50 23.263402056531085;
createNode animCurveTA -n "hom_Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 20.166277752815617 5 20.166277752815617 
		8 20.166277752815617 12 20.166277752815617 15 20.166277752815617 20 20.166277752815617 
		23 20.166277752815617 26 20.166277752815617 30 20.166277752815617 34 20.166277752815617 
		38 20.166277752815617 43 20.166277752815617 50 20.166277752815617;
createNode animCurveTA -n "hom_Middle_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
createNode animCurveTA -n "hom_Middle_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
createNode animCurveTA -n "hom_Middle_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 17.254116939558369 5 17.254116939558369 
		8 17.254116939558369 12 17.254116939558369 15 17.254116939558369 20 17.254116939558369 
		23 17.254116939558369 26 17.254116939558369 30 17.254116939558369 34 17.254116939558369 
		38 17.254116939558369 43 17.254116939558369 50 17.254116939558369;
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
	setAttr ".ihi" 0;
	setAttr -s 68 ".lnk";
select -ne :time1;
	setAttr ".o" 34;
select -ne :renderPartition;
	setAttr -s 68 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 68 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 14 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 14 ".tx";
select -ne :initialShadingGroup;
	setAttr -k on ".nds";
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :shaderGlow1;
	setAttr ".gc" -type "float3" 0.16862746 0.99607843 0.56078434 ;
select -ne :defaultRenderGlobals;
	setAttr ".outf" 19;
	setAttr ".top" 1023;
	setAttr ".rght" 1279;
	setAttr ".an" yes;
	setAttr ".fs" 0;
	setAttr ".ef" 120;
select -ne :defaultRenderQuality;
	setAttr ".eaa" 0;
	setAttr ".mss" 4;
select -ne :defaultResolution;
	setAttr ".w" 1280;
	setAttr ".h" 1024;
	setAttr ".pa" 0.80000001192092896;
	setAttr ".al" yes;
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
connectAttr "hom_loco_enter_carSource.st" "clipLibrary1.st[0]";
connectAttr "hom_loco_enter_carSource.du" "clipLibrary1.du[0]";
connectAttr "Extra_Attributes_translateX.a" "clipLibrary1.cel[0].cev[0].cevr"
		;
connectAttr "Extra_Attributes_translateY.a" "clipLibrary1.cel[0].cev[1].cevr"
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
connectAttr "Right_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "Right_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "Right_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "Right_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "Right_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "Right_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "Left_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[94].cevr"
		;
connectAttr "Left_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[95].cevr"
		;
connectAttr "Left_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[96].cevr"
		;
connectAttr "Left_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[97].cevr"
		;
connectAttr "Left_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[98].cevr"
		;
connectAttr "Left_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[99].cevr"
		;
connectAttr "Left_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[100].cevr"
		;
connectAttr "Left_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[101].cevr"
		;
connectAttr "Left_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[102].cevr"
		;
connectAttr "Right_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[103].cevr"
		;
connectAttr "Right_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[104].cevr"
		;
connectAttr "Right_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[105].cevr"
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
connectAttr "Head_rotateX.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "Head_rotateY.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "Head_rotateZ.a" "clipLibrary1.cel[0].cev[149].cevr";
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
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[52].olnk";
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
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[65].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[66].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[67].llnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of hom_loco_enter_car.ma
