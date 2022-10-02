//Maya ASCII 4.0 scene
//Name: apu_jump_idle_in_air.ma
//Last modified: Wed, Oct 09, 2002 02:47:40 PM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "apu_jump_idle_in_airSource";
	setAttr ".ihi" 0;
	setAttr ".st" 14;
	setAttr ".du" 15;
	setAttr ".ci" no;
createNode animCurveTL -n "apu_Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "apu_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "apu_Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  14 -0.054075435230564885 29 -0.054075435230564885;
createNode animCurveTL -n "apu_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  14 0 29 0;
createNode animCurveTL -n "apu_Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  14 0 29 0;
createNode animCurveTA -n "apu_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  29 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "apu_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "apu_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "apu_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  14 -0.26454016861507795 15 -0.26524479402599449 
		16 -0.26688891998479963 17 -0.26876792108057695 18 -0.27017717190240992 19 
		-0.2704120470393821 20 -0.26876792108057695 21 -0.26454016861507795 22 -0.25500271594848739 
		23 -0.24003051393473054 24 -0.22282047398537524 25 -0.20656950751198966 26 
		-0.19447452592614173 27 -0.18973244063939959 28 -0.22713630462723877 29 -0.26454016861507795;
createNode animCurveTL -n "Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  14 0.25700215124336384 15 0.2377999073962086 
		16 0.22590599761879135 17 0.21954730585403961 18 0.21695071604488145 19 0.21634311213424426 
		20 0.21595137806505585 21 0.21400239778024321 22 0.21300328658523751 23 0.21522692888784586 
		24 0.21854886228457399 25 0.22084462437192195 26 0.2199897527463936 27 0.21385978500448924 
		28 0.15649905203604667 29 0.13819718944131132;
createNode animCurveTL -n "Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  14 -0.01603613334732492 15 -0.0077065576434691722 
		16 -0.0044672782030808307 17 -0.0049300324088505827 18 -0.0077065576434691722 
		19 -0.011408591289627276 20 -0.014647870730015618 21 -0.01603613334732492 
		22 -0.013809702958324096 23 -0.0089115561025222712 24 -0.0040134092467204521 
		25 -0.0017869788577196358 26 -0.0049039814023207921 27 -0.01603613334732492 
		28 -0.082527080413698453 29 -0.14427851203426664;
createNode animCurveTA -n "apu_Right_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 34.609247066921718 
		21 63.038174677827172 27 11.538577220876597 29 0 31 0 35 0;
	setAttr -s 10 ".kit[2:9]"  3 3 9 9 9 3 9 
		3;
	setAttr -s 10 ".kot[2:9]"  3 3 9 9 9 3 9 
		3;
createNode animCurveTA -n "apu_Right_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -25.948901905116401 5 -25.948901905116401 
		10 -25.948901905116401 12 -25.948901905116401 14 -21.826965609453882 21 -16.250621816157416 
		27 -8.6876586023756364 29 -25.948901905116401 31 -25.948901905116401 35 -25.948901905116401;
	setAttr -s 10 ".kit[2:9]"  3 3 9 9 9 3 9 
		3;
	setAttr -s 10 ".kot[2:9]"  3 3 9 9 9 3 9 
		3;
createNode animCurveTA -n "apu_Right_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 -14.390493350303316 
		21 -1.731374949197001 27 -5.1673592244708626 29 0 31 0 35 0;
	setAttr -s 10 ".kit[2:9]"  3 3 9 9 9 3 9 
		3;
	setAttr -s 10 ".kot[2:9]"  3 3 9 9 9 3 9 
		3;
createNode animCurveTL -n "Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  14 0.21594587158542247 15 0.21555328801001622 
		16 0.21463725966740163 17 0.21359037013298493 18 0.21280520298217248 19 0.21267434179037037 
		20 0.21359037013298493 21 0.21594587158542247 22 0.22125968395924533 23 0.22960147862844452 
		24 0.23919008951206919 25 0.24824435052916877 26 0.25498309559879245 27 0.2576251586399893 
		28 0.23678551511270596 29 0.21594587158542247;
createNode animCurveTL -n "Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  14 0.27234639516132331 15 0.26055773545933858 
		16 0.27441575319714295 17 0.30346250490292809 18 0.33724004710488603 19 0.36529043633120872 
		20 0.37715572911008766 21 0.36237798196971449 22 0.30725138271146135 23 0.21696119918004961 
		24 0.10938610796870631 25 0.0024047856706536763 26 -0.086104091120884463 
		27 -0.1382618458126858 28 0.027527824510384991 29 0.13819683077167205;
createNode animCurveTL -n "Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  14 0.012362331487542587 15 0.018318067858435025 
		16 0.021937474794460021 17 0.023431202682359546 18 0.023009901908875606 19 
		0.020884222860750135 20 0.01726481592472515 21 0.012362331487542587 22 0.0048690343606251118 
		23 -0.0058991326669961507 24 -0.018796002242166522 25 -0.032675407011731272 
		26 -0.046391179622535708 27 -0.058797152721425112 28 -0.069897915178657913 
		29 -0.078589802811214846;
createNode animCurveTA -n "apu_Left_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 27.666867012273194 
		21 28.445164410357641 27 12.145193834275631 29 0 31 0 35 0;
	setAttr -s 10 ".kit[2:9]"  3 3 9 9 9 3 9 
		3;
	setAttr -s 10 ".kot[2:9]"  3 3 9 9 9 3 9 
		3;
createNode animCurveTA -n "apu_Left_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 0 21 12.881566829148245 
		27 -4.3711303687501557 29 0 31 0 35 0;
	setAttr -s 10 ".kit[2:9]"  3 3 9 9 9 3 9 
		3;
	setAttr -s 10 ".kot[2:9]"  3 3 9 9 9 3 9 
		3;
createNode animCurveTA -n "apu_Left_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 0 21 6.8861776458212978 
		27 -0.93969957683317518 29 0 31 0 35 0;
	setAttr -s 10 ".kit[2:9]"  3 3 9 9 9 3 9 
		3;
	setAttr -s 10 ".kot[2:9]"  3 3 9 9 9 3 9 
		3;
createNode animCurveTA -n "apu_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "apu_Right_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 0 21 0 27 
		0 29 0 31 0 35 0;
createNode animCurveTL -n "apu_Right_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 0 21 0 27 
		0 29 0 31 0 35 0;
createNode animCurveTL -n "apu_Right_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 5 1 10 1 12 1 14 1 21 1 27 
		1 29 1 31 1 35 1;
createNode animCurveTL -n "apu_Left_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 0 21 0.010529835459141436 
		27 0.010529835459141436 29 0.010529835459141436 31 0.010529835459141436 35 
		0;
createNode animCurveTL -n "apu_Left_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 0 21 0 27 
		0 29 0 31 0 35 0;
createNode animCurveTL -n "apu_Left_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 5 1 10 1 12 1 14 1 21 0.93098348614045667 
		27 0.93098348614045667 29 0.93098348614045667 31 0.93098348614045667 35 1;
createNode animCurveTL -n "Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  14 -0.076472881617957705 15 -0.077420581036734687 
		16 -0.079631879680547663 17 -0.082159078130619623 18 -0.084054476968173614 
		19 -0.084370376774432612 20 -0.082159078130619623 21 -0.076472881617957705 
		22 -0.063645302319830496 23 -0.043508153006753279 24 -0.020361180790646527 
		25 0.0014958672165693179 26 0.017763243902973829 27 0.024141202156646537 
		28 -0.019877459434754191 29 -0.076472881617957705;
createNode animCurveTL -n "Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  14 1.1271085732299819 15 1.0965620889401011 
		16 1.0660156061543971 17 1.0354691246414578 18 1.0049226441698718 19 0.97437616450822695 
		20 0.94382968542511236 21 0.91328320668911456 22 0.88273672806882364 23 0.85219024933282583 
		24 0.82164377024971091 25 0.79109729058806677 26 0.76055081011648085 27 0.73000432860354181 
		28 0.69945784581783765 29 0.66891136152795683;
createNode animCurveTL -n "Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  14 0 15 0 16 0 17 0 18 0 19 0 20 
		0 21 0 22 0 23 0 24 -6.2802604228473555e-018 25 -6.2802604228473555e-018 
		26 -6.2802604228473555e-018 27 0 28 0 29 0;
createNode animCurveTA -n "apu_Character_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.62843630316474508 5 7.6818426978412111 
		10 7.6818426978412111 12 7.6818426978412111 14 2.1666820613389937 21 2.1666820613389937 
		27 2.1666820613389937 29 5.061467165496496 31 1.6016765912556101 35 -0.62843630316474508;
createNode animCurveTA -n "apu_Character_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -5.8284402688137158 5 -5.5812281575658389 
		10 -5.5812281575658389 12 -5.5812281575658389 14 -5.8097897311672781 21 -5.8097897311672781 
		27 -5.8097897311672781 29 -5.7935469705177161 31 -5.8112429884246337 35 -5.8284402688137158;
createNode animCurveTA -n "apu_Character_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1.2956360193097458 5 -2.1231473178694875 
		10 -2.1231473178694875 12 -2.1231473178694875 14 -0.17673120016680982 21 
		-0.17673120016680982 27 -0.17673120016680982 29 -0.46941295150306561 31 -0.11953020854849149 
		35 -1.2956360193097458;
createNode animCurveTA -n "apu_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 -16.322312539158524 
		21 -16.322312539158524 27 -13.442294321153456 29 -13.442294321153456 31 -13.442294321153456 
		35 0;
	setAttr -s 10 ".kit[2:9]"  3 3 9 9 9 9 9 
		9;
	setAttr -s 10 ".kot[2:9]"  3 3 9 9 9 9 9 
		9;
createNode animCurveTA -n "apu_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 -1.9963377587376141 
		21 -1.9963377587376141 27 9.5542485140593101 29 9.5542485140593101 31 9.5542485140593101 
		35 0;
	setAttr -s 10 ".kit[2:9]"  3 3 9 9 9 9 9 
		9;
	setAttr -s 10 ".kot[2:9]"  3 3 9 9 9 9 9 
		9;
createNode animCurveTA -n "apu_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 -31.062927517921274 
		21 -31.062927517921274 27 10.498659541206409 29 10.498659541206409 31 10.498659541206409 
		35 0;
	setAttr -s 10 ".kit[2:9]"  3 3 9 9 9 9 9 
		9;
	setAttr -s 10 ".kot[2:9]"  3 3 9 9 9 9 9 
		9;
createNode animCurveTA -n "apu_L_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 -0.90843921607675138 
		21 -0.90843921607675138 27 -0.58177049857557417 29 -0.36734550625034335 31 
		-0.36734550625034335 35 0;
	setAttr -s 10 ".kit[2:9]"  3 3 9 9 9 9 9 
		9;
	setAttr -s 10 ".kot[2:9]"  3 3 9 9 9 9 9 
		9;
createNode animCurveTA -n "apu_L_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 1.2398623870584045 
		21 1.2398623870584045 27 1.42267507667092 29 1.4924742968018065 31 1.4924742968018065 
		35 0;
	setAttr -s 10 ".kit[2:9]"  3 3 9 9 9 9 9 
		9;
	setAttr -s 10 ".kot[2:9]"  3 3 9 9 9 9 9 
		9;
createNode animCurveTA -n "apu_L_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 -20.804895527624904 
		21 -20.804895527624904 27 -6.814219722322072 29 1.6003693938328478 31 1.6003693938328478 
		35 0;
	setAttr -s 10 ".kit[2:9]"  3 3 9 9 9 9 9 
		9;
	setAttr -s 10 ".kot[2:9]"  3 3 9 9 9 9 9 
		9;
createNode animCurveTL -n "apu_Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.30518757431961813 5 -0.3422426501615059 
		10 -0.38291294277668725 12 -0.30089686874416133 14 -0.25423093957672949 21 
		-0.83539504616544435 27 -0.88919178328651793 29 -0.81281698333398467 31 -0.45599872383391904 
		35 -0.30518757431961813;
createNode animCurveTL -n "apu_Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.89920030065805379 5 -0.69935565971116842 
		10 -0.69274852506236684 12 -0.41301071934220157 14 0.78344115268494718 21 
		0.051879037338129333 27 0.0038609471051098956 29 -0.04860978317522973 31 
		-0.87616009378598392 35 -0.89920030065805379;
	setAttr -s 10 ".kit[4:9]"  1 9 9 9 1 3;
	setAttr -s 10 ".kot[4:9]"  1 9 9 9 1 3;
	setAttr -s 10 ".kix[4:9]"  0.00849117711186409 0.0055584614165127277 
		0.026527609676122665 0.001515113515779376 0.017499059438705444 1;
	setAttr -s 10 ".kiy[4:9]"  0.99996393918991089 -0.99998456239700317 
		-0.99964809417724609 -0.99999886751174927 -0.99984687566757202 0;
	setAttr -s 10 ".kox[4:9]"  0.0084911640733480453 0.0055584614165127277 
		0.026527609676122665 0.001515113515779376 0.017499066889286041 1;
	setAttr -s 10 ".koy[4:9]"  0.99996393918991089 -0.99998456239700317 
		-0.99964809417724609 -0.99999886751174927 -0.99984687566757202 0;
createNode animCurveTL -n "apu_Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.1271574445384612 5 -0.14214291443859337 
		10 -0.14161203254552521 12 0.65075480422001875 14 0.44725028090519076 21 
		0.34087399429717508 27 0.12202054260743712 29 -0.0050391386421247868 31 0.082542470539507348 
		35 0.1271574445384612;
createNode animCurveTA -n "apu_Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 9.2736340776842194 5 -7.0935467196156585 
		10 -7.0935467196156585 12 -122.33223993695077 14 -191.4568949246993 21 -55.860651288322956 
		27 -41.817307430499959 29 -41.611441340434581 31 -2.9646115480847341 35 9.2736340776842194;
	setAttr -s 10 ".kit[3:9]"  1 1 9 9 9 9 9;
	setAttr -s 10 ".kot[3:9]"  1 1 9 9 9 9 9;
	setAttr -s 10 ".kix[3:9]"  0.031629864126443863 0.6615033745765686 
		0.16368207335472107 0.7313196063041687 0.19293151795864105 0.21969494223594666 
		0.52952694892883301;
	setAttr -s 10 ".kiy[3:9]"  -0.99949967861175537 -0.74994218349456787 
		0.98651313781738281 0.68203496932983398 0.98121219873428345 0.97556859254837036 
		0.84829312562942505;
	setAttr -s 10 ".kox[3:9]"  0.031629864126443863 0.66150391101837158 
		0.16368207335472107 0.7313196063041687 0.19293151795864105 0.21969494223594666 
		0.52952694892883301;
	setAttr -s 10 ".koy[3:9]"  -0.99949967861175537 -0.74994170665740967 
		0.98651313781738281 0.68203496932983398 0.98121219873428345 0.97556859254837036 
		0.84829312562942505;
createNode animCurveTA -n "apu_Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 19.949465928602134 5 19.863034473321701 
		10 19.863034473321701 12 82.099471698336657 14 -2.1688139616923587 21 25.508564498013317 
		27 26.758090090192724 29 30.035391804479261 31 55.457564418048044 35 19.949465928602134;
	setAttr -s 10 ".kit[4:9]"  1 9 9 9 9 9;
	setAttr -s 10 ".kot[4:9]"  1 9 9 9 9 9;
	setAttr -s 10 ".kix[4:9]"  0.73253941535949707 0.65130054950714111 
		0.95880234241485596 0.25723019242286682 0.75065279006958008 0.21033342182636261;
	setAttr -s 10 ".kiy[4:9]"  -0.6807246208190918 0.75881987810134888 
		0.2840740978717804 0.96635013818740845 -0.66069686412811279 -0.97762972116470337;
	setAttr -s 10 ".kox[4:9]"  0.73253935575485229 0.65130054950714111 
		0.95880234241485596 0.25723019242286682 0.75065279006958008 0.21033342182636261;
	setAttr -s 10 ".koy[4:9]"  -0.68072468042373657 0.75881987810134888 
		0.2840740978717804 0.96635013818740845 -0.66069686412811279 -0.97762972116470337;
createNode animCurveTA -n "apu_Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 77.760647383351483 5 75.071770993337609 
		10 75.071770993337609 12 -45.086767761717859 14 -78.122194063523096 21 -12.300820226883689 
		27 -4.5092098317145037 29 -6.7998353398995652 31 1.1703019711368683 35 77.760647383351483;
	setAttr -s 10 ".kit[4:9]"  1 9 9 9 9 9;
	setAttr -s 10 ".kot[4:9]"  1 9 9 9 9 9;
	setAttr -s 10 ".kix[4:9]"  0.79389971494674683 0.31959131360054016 
		0.9408758282661438 0.80251741409301758 0.13428689539432526 0.099251613020896912;
	setAttr -s 10 ".kiy[4:9]"  -0.60804867744445801 0.94755548238754272 
		0.33875161409378052 0.59662866592407227 0.99094247817993164 0.99506235122680664;
	setAttr -s 10 ".kox[4:9]"  0.79389941692352295 0.31959131360054016 
		0.9408758282661438 0.80251741409301758 0.13428689539432526 0.099251613020896912;
	setAttr -s 10 ".koy[4:9]"  -0.60804909467697144 0.94755548238754272 
		0.33875161409378052 0.59662866592407227 0.99094247817993164 0.99506235122680664;
createNode animCurveTL -n "apu_Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.37612987317775387 5 0.3782751148502746 
		10 0.39014676495826878 12 0.45186305774469765 14 0.36532413059254681 21 0.79663872067971753 
		27 0.87310830264015471 29 0.8505154370507586 31 0.52443825755681872 35 0.37612987317775387;
createNode animCurveTL -n "apu_Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.86505068976914534 5 -0.66491178149043395 
		10 -0.63424443325447777 12 -0.63256173703144802 14 0.47839009571015462 21 
		0.064272400658505313 27 0.010281087194108016 29 -0.064505564988249067 31 
		-0.8086430885352579 35 -0.86505068976914534;
	setAttr -s 10 ".kit[8:9]"  1 3;
	setAttr -s 10 ".kot[8:9]"  1 3;
	setAttr -s 10 ".kix[8:9]"  0.013427958823740482 1;
	setAttr -s 10 ".kiy[8:9]"  -0.99990981817245483 0;
	setAttr -s 10 ".kox[8:9]"  0.013427969999611378 1;
	setAttr -s 10 ".koy[8:9]"  -0.99990981817245483 0;
createNode animCurveTL -n "apu_Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.2082971430621921 5 -0.30106407580749023 
		10 -0.31844812865938704 12 0.22940503461141709 14 0.68095116552850532 21 
		-0.19448555439374546 27 -0.26924618154775209 29 -0.18232225204689609 31 -0.020631662436798516 
		35 0.2082971430621921;
createNode animCurveTA -n "apu_Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 6.1630847679769332 5 -24.338086263488307 
		10 -24.338086263488307 12 -44.3092497004913 14 -173.90363331591487 21 -15.858194123364825 
		27 -0.83421431286771475 29 -7.1969987285095538 31 -3.4645737733712756 35 
		6.1630847679769332;
createNode animCurveTA -n "apu_Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -15.27947428748017 5 -16.872185292915916 
		10 -16.872185292915916 12 -55.626501424357265 14 -15.248578428406377 21 -32.187244196555199 
		27 -32.39956359924102 29 -34.858408497353786 31 -34.394653801076082 35 -15.27947428748017;
createNode animCurveTA -n "apu_Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -64.066214390617461 5 -43.816250389371973 
		10 -43.816250389371973 12 -12.436523525852772 14 91.911827908337187 21 38.866860991254015 
		27 27.902715926605602 29 23.255575409124795 31 -1.8370240223462844 35 -64.066214390617461;
createNode animCurveTL -n "apu_Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.8448236677023373 5 -0.8448236677023373 
		10 -0.8448236677023373 12 -0.8448236677023373 14 -0.8448236677023373 21 -0.8448236677023373 
		27 -0.8448236677023373 29 -0.8448236677023373 31 -0.8448236677023373 35 -0.8448236677023373;
createNode animCurveTL -n "apu_Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.5117481219250299 5 1.5117481219250299 
		10 1.5117481219250299 12 1.5117481219250299 14 1.5117481219250299 21 1.5117481219250299 
		27 1.5117481219250299 29 1.5117481219250299 31 1.5117481219250299 35 1.5117481219250299;
createNode animCurveTL -n "apu_Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.097994651149805143 5 -0.097994651149805143 
		10 -0.097994651149805143 12 -0.097994651149805143 14 -0.097994651149805143 
		21 -0.097994651149805143 27 -0.097994651149805143 29 -0.097994651149805143 
		31 -0.097994651149805143 35 -0.097994651149805143;
createNode animCurveTA -n "apu_Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 5.4739599453216474 5 5.4739599453216474 
		10 5.4739599453216474 12 5.4739599453216474 14 5.4739599453216474 21 5.4739599453216474 
		27 5.4739599453216474 29 5.4739599453216474 31 5.4739599453216474 35 5.4739599453216474;
createNode animCurveTA -n "apu_Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 8.5874521608419823 5 8.5874521608419823 
		10 8.5874521608419823 12 8.5874521608419823 14 8.5874521608419823 21 8.5874521608419823 
		27 8.5874521608419823 29 8.5874521608419823 31 8.5874521608419823 35 8.5874521608419823;
createNode animCurveTA -n "apu_Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 74.754744621954103 5 74.754744621954103 
		10 74.754744621954103 12 74.754744621954103 14 74.754744621954103 21 74.754744621954103 
		27 74.754744621954103 29 74.754744621954103 31 74.754744621954103 35 74.754744621954103;
createNode animCurveTL -n "apu_Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.61083301393139333 5 0.61083301393139333 
		10 0.61083301393139333 12 0.61083301393139333 14 0.61083301393139333 21 0.61083301393139333 
		27 0.61083301393139333 29 0.61083301393139333 31 0.61083301393139333 35 0.61083301393139333;
createNode animCurveTL -n "apu_Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.4644416293758407 5 1.4644416293758407 
		10 1.4644416293758407 12 1.4644416293758407 14 1.4644416293758407 21 1.4644416293758407 
		27 1.4644416293758407 29 1.4644416293758407 31 1.4644416293758407 35 1.4644416293758407;
createNode animCurveTL -n "apu_Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.14314299916678522 5 0.14314299916678522 
		10 0.14314299916678522 12 0.14314299916678522 14 0.14314299916678522 21 0.14314299916678522 
		27 0.14314299916678522 29 0.14314299916678522 31 0.14314299916678522 35 0.14314299916678522;
createNode animCurveTA -n "apu_Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 16.226511010665405 5 16.226511010665405 
		10 16.226511010665405 12 16.226511010665405 14 16.226511010665405 21 16.226511010665405 
		27 16.226511010665405 29 16.226511010665405 31 16.226511010665405 35 16.226511010665405;
createNode animCurveTA -n "apu_Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -8.513966085499284 5 -8.513966085499284 
		10 -8.513966085499284 12 -8.513966085499284 14 -8.513966085499284 21 -8.513966085499284 
		27 -8.513966085499284 29 -8.513966085499284 31 -8.513966085499284 35 -8.513966085499284;
createNode animCurveTA -n "apu_Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -68.213989601412422 5 -68.213989601412422 
		10 -68.213989601412422 12 -68.213989601412422 14 -68.213989601412422 21 -68.213989601412422 
		27 -68.213989601412422 29 -68.213989601412422 31 -68.213989601412422 35 -68.213989601412422;
createNode animCurveTL -n "apu_Left_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 -0.35202235372949908 10 -0.1274658053217097 
		12 -0.1274658053217097 14 0.54200636988152706 21 0.50178030984524891 27 0.50178030984524891 
		29 0.50178030984524891 31 0.50178030984524891 35 0;
createNode animCurveTL -n "apu_Left_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 -0.037916356876787218 10 
		-0.03204949526998109 12 -0.03204949526998109 14 -1.2283451577772562 21 -0.27320087737118187 
		27 -0.27320087737118187 29 -0.27320087737118187 31 -0.27320087737118187 35 
		0;
createNode animCurveTL -n "apu_Left_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1 5 -0.94085460224498574 10 
		-0.96616917696006721 12 -0.96616917696006721 14 1.4055805505918855 21 -0.97341778931420053 
		27 -0.97341778931420053 29 -0.97341778931420053 31 -0.97341778931420053 35 
		-1;
createNode animCurveTL -n "apu_Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.10167917362943303 5 -0.0086801871679448046 
		10 -0.0086801871679448046 12 -0.0086801871679448046 14 -0.25215429987927523 
		21 -0.69956842152140808 27 -0.69956842152140808 29 -0.69956842152140808 31 
		-0.69956842152140808 35 -0.10167917362943303;
createNode animCurveTL -n "apu_Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.40762644910266188 5 -0.17021580127837685 
		10 -0.17021580127837685 12 -0.17021580127837685 14 -1.1941575004221203 21 
		-0.29218591779919634 27 -0.29218591779919634 29 -0.29218591779919634 31 -0.29218591779919634 
		35 -0.40762644910266188;
createNode animCurveTL -n "apu_Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.93129112588482243 5 -1.1010083093938954 
		10 -1.1010083093938954 12 -1.1010083093938954 14 1.6840404225500265 21 -0.62313469638878538 
		27 -0.62313469638878538 29 -0.62313469638878538 31 -0.62313469638878538 35 
		-0.93129112588482243;
createNode animCurveTA -n "apu_R_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 12.253734489678925 5 12.253734489678925 
		10 12.253734489678925 12 12.253734489678925 14 12.253734489678925 21 12.253734489678925 
		27 12.253734489678925 29 12.253734489678925 31 12.253734489678925 35 12.253734489678925;
createNode animCurveTA -n "apu_R_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -65.746751280844961 5 -65.746751280844961 
		10 -65.746751280844961 12 -65.746751280844961 14 -65.746751280844961 21 -65.746751280844961 
		27 -65.746751280844961 29 -65.746751280844961 31 -65.746751280844961 35 -65.746751280844961;
createNode animCurveTA -n "apu_R_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 3.871449260799477e-015 5 3.871449260799477e-015 
		10 3.871449260799477e-015 12 0 14 3.871449260799477e-015 21 0 27 0 29 0 31 
		0 35 0;
createNode animCurveTA -n "apu_L_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.061808866237337522 5 -0.061808866237337522 
		10 -0.061808866237337522 12 -0.061808866237337522 14 -0.061808866237337522 
		21 -0.061808866237337522 27 -0.061808866237337522 29 -0.061808866237337522 
		31 -0.061808866237337522 35 -0.061808866237337522;
createNode animCurveTA -n "apu_L_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -59.058178941076754 5 -59.058178941076754 
		10 -59.058178941076754 12 -59.058178941076754 14 -59.058178941076754 21 -59.058178941076754 
		27 -59.058178941076754 29 -59.058178941076754 31 -59.058178941076754 35 -59.058178941076754;
createNode animCurveTA -n "apu_L_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 16.579147429757843 5 16.579147429757843 
		10 16.579147429757843 12 16.579147429757843 14 16.579147429757843 21 16.579147429757843 
		27 16.579147429757843 29 16.579147429757843 31 16.579147429757843 35 16.579147429757843;
createNode animCurveTA -n "apu_R_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 8.5572674112203622 5 8.5572674112203622 
		10 8.5572674112203622 12 8.5572674112203622 14 8.5572674112203622 21 8.5572674112203622 
		27 8.5572674112203622 29 8.5572674112203622 31 8.5572674112203622 35 8.5572674112203622;
createNode animCurveTA -n "apu_L_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 15.711328223519057 5 15.711328223519057 
		10 15.711328223519057 12 15.711328223519057 14 15.711328223519057 21 15.711328223519057 
		27 15.711328223519057 29 15.711328223519057 31 15.711328223519057 35 15.711328223519057;
createNode animCurveTA -n "apu_R_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 0 21 0 27 
		0 29 0 31 0 35 0;
createNode animCurveTA -n "apu_R_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 0 21 0 27 
		0 29 0 31 0 35 0;
createNode animCurveTA -n "apu_R_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 0 21 0 27 
		0 29 0 31 0 35 0;
createNode animCurveTA -n "apu_L_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 0 21 0 27 
		0 29 0 31 0 35 0;
createNode animCurveTA -n "apu_L_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 0 21 0 27 
		0 29 0 31 0 35 0;
createNode animCurveTA -n "apu_L_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 0 21 0 27 
		0 29 0 31 0 35 0;
createNode animCurveTA -n "apu_Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 10.423754966968488 5 10.423754966968488 
		10 10.423754966968488 12 10.423754966968488 14 10.423754966968488 21 10.423754966968488 
		27 10.423754966968488 29 10.423754966968488 31 -4.8166739438680368 35 10.423754966968488;
createNode animCurveTA -n "apu_Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 27.722848255843903 5 27.722848255843903 
		10 27.722848255843903 12 27.722848255843903 14 27.722848255843903 21 27.722848255843903 
		27 27.722848255843903 29 27.722848255843903 31 29.110316747313373 35 27.722848255843903;
createNode animCurveTA -n "apu_Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 21.576484776388227 5 21.576484776388227 
		10 21.576484776388227 12 21.576484776388227 14 21.576484776388227 21 21.576484776388227 
		27 21.576484776388227 29 21.576484776388227 31 -9.8267056506423369 35 21.576484776388227;
createNode animCurveTA -n "apu_Middle_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 0 21 0 27 
		0 29 0 31 0 35 0;
createNode animCurveTA -n "apu_Middle_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 0 21 0 27 
		0 29 0 31 0 35 0;
createNode animCurveTA -n "apu_Middle_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 27.080064458283051 5 35.964893193534031 
		10 35.964893193534031 12 35.964893193534031 14 66.066672645426195 21 66.066672645426195 
		27 66.066672645426195 29 35.017022206704773 31 35.017022206704773 35 27.080064458283051;
createNode animCurveTA -n "apu_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "apu_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "apu_Middle_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 0 21 0 27 
		0 29 0 31 0 35 0;
createNode animCurveTA -n "apu_Middle_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 0 21 0 27 
		0 29 0 31 0 35 0;
createNode animCurveTA -n "apu_Middle_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 27.911632519594587 5 37.645194141889618 
		10 37.645194141889618 12 37.645194141889618 14 47.833037819555813 21 47.833037819555813 
		27 47.833037819555813 29 28.622849344267411 31 28.622849344267411 35 27.911632519594587;
createNode animCurveTA -n "apu_Jaw_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 0 21 0 27 
		0 29 0 31 0 35 0;
createNode animCurveTA -n "apu_Jaw_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 0 21 0 27 
		0 29 0 31 0 35 0;
createNode animCurveTA -n "apu_Jaw_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 0 21 0 27 
		0 29 0 31 0 35 0;
createNode animCurveTA -n "apu_Spine_2_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.65073001024951671 5 -0.66779030561231101 
		10 -0.81600630537257823 12 0.0098108633527609658 14 0.77432700384660802 21 
		0.77432700384660802 27 -0.50496649353456902 29 -1.382145166584162 31 0.28517349894274396 
		35 -0.65073001024951671;
createNode animCurveTA -n "apu_Spine_2_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -4.2368721935960929 5 -4.2585193273292061 
		10 -4.4399935304640277 12 -3.2421936456434577 14 -2.1318670649131231 21 -2.1318670649131231 
		27 -3.8054271398273349 29 -4.5524749348456881 31 -2.88856990445769 35 -4.2368721935960929;
createNode animCurveTA -n "apu_Spine_2_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 8.7398866450636881 5 8.9489528122490523 
		10 10.726666776378709 12 -0.31877187006079299 14 -10.344359385726664 21 -10.344359385726664 
		27 5.3593703803993842 29 13.948216549237049 31 -3.6502693520635634 35 8.7398866450636881;
createNode animCurveTA -n "apu_Neck_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 5.4310163015049424 10 6.4523529200083969 
		12 5.8530208790749114 14 4.9747075178955695 21 5.4754035493032811 27 6.397109496711713 
		29 6.397109496711713 31 6.0613919255252471 35 0;
createNode animCurveTA -n "apu_Neck_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 3.4442626465028057 10 -0.37421359036150326 
		12 2.5281247108783025 14 3.8656425486199941 21 -3.1149387523233192 27 -1.1902689979322836 
		29 -1.1902689979322836 31 -1.926292770775603 35 0;
createNode animCurveTA -n "apu_Neck_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -15.452965173287611 5 -21.079977912798245 
		10 14.304015421951545 12 -11.540953818788665 14 -25.837663345758983 21 41.46897983923246 
		27 21.818749897329706 29 21.818749897329706 31 29.344540129043388 35 -15.452965173287611;
createNode animCurveTA -n "apu_Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 4.8714700432790456 5 0.10220345920661028 
		10 0.10220345920661028 12 0.10220345920661028 14 0.050728751219648135 21 
		0.050728751219648135 27 0.050728751219648135 29 0.050728751219648135 31 0.050728751219648135 
		35 4.8714700432790456;
createNode animCurveTA -n "apu_Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 11.783606204137085 5 0.00026133360200789486 
		10 0.00026133360200789486 12 0.00026133360200789486 14 -0.25703292325832644 
		21 -0.25703292325832644 27 -0.25703292325832644 29 -0.25703292325832644 31 
		-0.25703292325832644 35 11.783606204137085;
createNode animCurveTA -n "apu_Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 7.5423825101935913 5 6.4668481290299082 
		10 6.4668481290299082 12 6.4668481290299082 14 -6.2582647498963446 21 -6.2582647498963446 
		27 -6.2582647498963446 29 -6.2582647498963446 31 -6.2582647498963446 35 7.5423825101935913;
createNode animCurveTA -n "apu_Spine_1_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1.8903601258661931 5 -1.6510900271268536 
		10 -1.6140424231022366 12 -1.6349888952917802 14 -1.620249971687866 21 -1.620249971687866 
		27 -1.620249971687866 29 -1.6516256347529088 31 -1.6325338524904456 35 -1.8903601258661931;
createNode animCurveTA -n "apu_Spine_1_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 2.5597289571479034 5 1.6534818382520213 
		10 1.4243155432407182 12 1.5606873893203133 14 1.878633622946458 21 1.878633622946458 
		27 1.878633622946458 29 1.3754237227638215 31 1.5953872063891807 35 2.5597289571479034;
createNode animCurveTA -n "apu_Spine_1_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 2.016811087403604 5 10.997196575842729 
		10 13.218088362596662 12 11.898220979763549 14 8.7715540099773257 21 8.7715540099773257 
		27 8.7715540099773257 29 13.725140017554159 31 11.556561096434198 35 2.016811087403604;
createNode animCurveTA -n "apu_Middle_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 0 21 0 27 
		0 29 0 31 0 35 0;
createNode animCurveTA -n "apu_Middle_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 0 21 0 27 
		0 29 0 31 0 35 0;
createNode animCurveTA -n "apu_Middle_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 33.429092416277157 5 40.355549661151656 
		10 40.355549661151656 12 40.355549661151656 14 57.642012140336767 21 57.642012140336767 
		27 57.642012140336767 29 40.035483458610067 31 40.035483458610067 35 33.429092416277157;
createNode animCurveTA -n "apu_Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 8.2533422302317216 5 8.2533422302317216 
		10 8.2533422302317216 12 8.2533422302317216 14 8.2533422302317216 21 8.2533422302317216 
		27 8.2533422302317216 29 -2.947952990100966 31 -2.947952990100966 35 8.2533422302317216;
createNode animCurveTA -n "apu_Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 23.263402056531085 5 23.263402056531085 
		10 23.263402056531085 12 23.263402056531085 14 23.263402056531085 21 23.263402056531085 
		27 23.263402056531085 29 24.440884571120058 31 24.440884571120058 35 23.263402056531085;
createNode animCurveTA -n "apu_Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 20.166277752815617 5 20.166277752815617 
		10 20.166277752815617 12 20.166277752815617 14 20.166277752815617 21 20.166277752815617 
		27 20.166277752815617 29 -7.094699622182973 31 -7.094699622182973 35 20.166277752815617;
createNode animCurveTA -n "apu_Middle_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 0 21 0 27 
		0 29 0 31 0 35 0;
createNode animCurveTA -n "apu_Middle_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 10 0 12 0 14 0 21 0 27 
		0 29 0 31 0 35 0;
createNode animCurveTA -n "apu_Middle_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 17.254116939558369 5 34.137270341825555 
		10 34.137270341825555 12 34.137270341825555 14 58.302436708126315 21 58.302436708126315 
		27 58.302436708126315 29 12.456929812929156 31 12.456929812929156 35 17.254116939558369;
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
	setAttr ".o" 29;
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
connectAttr "apu_jump_idle_in_airSource.st" "clipLibrary1.st[0]";
connectAttr "apu_jump_idle_in_airSource.du" "clipLibrary1.du[0]";
connectAttr "apu_Extra_Attributes_translateX.a" "clipLibrary1.cel[0].cev[0].cevr"
		;
connectAttr "apu_Extra_Attributes_translateY.a" "clipLibrary1.cel[0].cev[1].cevr"
		;
connectAttr "apu_Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "apu_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "apu_Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "apu_Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr"
		;
connectAttr "apu_Hoop_Root_IK_FK_RFoot.a" "clipLibrary1.cel[0].cev[6].cevr"
		;
connectAttr "apu_Hoop_Root_IK_FK_LFoot.a" "clipLibrary1.cel[0].cev[7].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary1.cel[0].cev[8].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary1.cel[0].cev[9].cevr"
		;
connectAttr "apu_Hoop_Root_IK_FK_RArm.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "apu_Hoop_Root_IK_FK_LArm.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "apu_Hoop_Root_rotateX.a" "clipLibrary1.cel[0].cev[14].cevr"
		;
connectAttr "apu_Hoop_Root_rotateY.a" "clipLibrary1.cel[0].cev[15].cevr"
		;
connectAttr "apu_Hoop_Root_rotateZ.a" "clipLibrary1.cel[0].cev[16].cevr"
		;
connectAttr "apu_Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "apu_Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "apu_Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
connectAttr "Right_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[20].cevr"
		;
connectAttr "Right_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[21].cevr"
		;
connectAttr "Right_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[22].cevr"
		;
connectAttr "apu_Right_Foot_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[23].cevr"
		;
connectAttr "apu_Right_Foot_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[24].cevr"
		;
connectAttr "apu_Right_Foot_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[25].cevr"
		;
connectAttr "Left_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[26].cevr"
		;
connectAttr "Left_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[27].cevr"
		;
connectAttr "Left_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[28].cevr"
		;
connectAttr "apu_Left_Foot_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[29].cevr"
		;
connectAttr "apu_Left_Foot_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[30].cevr"
		;
connectAttr "apu_Left_Foot_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[31].cevr"
		;
connectAttr "apu_Right_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[32].cevr"
		;
connectAttr "apu_Right_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[33].cevr"
		;
connectAttr "apu_Right_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[34].cevr"
		;
connectAttr "apu_Left_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[35].cevr"
		;
connectAttr "apu_Left_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[36].cevr"
		;
connectAttr "apu_Left_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[37].cevr"
		;
connectAttr "apu_Right_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[38].cevr"
		;
connectAttr "apu_Right_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[39].cevr"
		;
connectAttr "apu_Right_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[40].cevr"
		;
connectAttr "apu_Left_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[41].cevr"
		;
connectAttr "apu_Left_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[42].cevr"
		;
connectAttr "apu_Left_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[43].cevr"
		;
connectAttr "Character_Hoop_translateX.a" "clipLibrary1.cel[0].cev[44].cevr"
		;
connectAttr "Character_Hoop_translateY.a" "clipLibrary1.cel[0].cev[45].cevr"
		;
connectAttr "Character_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[46].cevr"
		;
connectAttr "apu_Character_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[47].cevr"
		;
connectAttr "apu_Character_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[48].cevr"
		;
connectAttr "apu_Character_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[49].cevr"
		;
connectAttr "apu_R_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "apu_R_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "apu_R_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "apu_R_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[53].cevr"
		;
connectAttr "apu_R_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[54].cevr"
		;
connectAttr "apu_R_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[55].cevr"
		;
connectAttr "apu_R_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[56].cevr"
		;
connectAttr "apu_R_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[57].cevr"
		;
connectAttr "apu_R_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[58].cevr"
		;
connectAttr "apu_R_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[59].cevr"
		;
connectAttr "apu_L_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "apu_L_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "apu_L_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "apu_L_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[63].cevr"
		;
connectAttr "apu_L_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[64].cevr"
		;
connectAttr "apu_L_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[65].cevr"
		;
connectAttr "apu_L_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[66].cevr"
		;
connectAttr "apu_L_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[67].cevr"
		;
connectAttr "apu_L_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[68].cevr"
		;
connectAttr "apu_L_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[69].cevr"
		;
connectAttr "apu_R_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[70].cevr"
		;
connectAttr "apu_R_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[71].cevr"
		;
connectAttr "apu_R_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[72].cevr"
		;
connectAttr "apu_L_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[73].cevr"
		;
connectAttr "apu_L_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[74].cevr"
		;
connectAttr "apu_L_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[75].cevr"
		;
connectAttr "apu_Right_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[76].cevr"
		;
connectAttr "apu_Right_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[77].cevr"
		;
connectAttr "apu_Right_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[78].cevr"
		;
connectAttr "apu_Right_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[79].cevr"
		;
connectAttr "apu_Right_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[80].cevr"
		;
connectAttr "apu_Right_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[81].cevr"
		;
connectAttr "apu_Left_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "apu_Left_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "apu_Left_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "apu_Left_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "apu_Left_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "apu_Left_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "apu_Right_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "apu_Right_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "apu_Right_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "apu_Right_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "apu_Right_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "apu_Right_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "apu_Left_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[94].cevr"
		;
connectAttr "apu_Left_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[95].cevr"
		;
connectAttr "apu_Left_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[96].cevr"
		;
connectAttr "apu_Left_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[97].cevr"
		;
connectAttr "apu_Left_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[98].cevr"
		;
connectAttr "apu_Left_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[99].cevr"
		;
connectAttr "apu_Left_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[100].cevr"
		;
connectAttr "apu_Left_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[101].cevr"
		;
connectAttr "apu_Left_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[102].cevr"
		;
connectAttr "apu_Right_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[103].cevr"
		;
connectAttr "apu_Right_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[104].cevr"
		;
connectAttr "apu_Right_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[105].cevr"
		;
connectAttr "apu_R_FK_Shoulder_rotateX.a" "clipLibrary1.cel[0].cev[106].cevr"
		;
connectAttr "apu_R_FK_Shoulder_rotateY.a" "clipLibrary1.cel[0].cev[107].cevr"
		;
connectAttr "apu_R_FK_Shoulder_rotateZ.a" "clipLibrary1.cel[0].cev[108].cevr"
		;
connectAttr "apu_L_FK_Shoulder_rotateX.a" "clipLibrary1.cel[0].cev[109].cevr"
		;
connectAttr "apu_L_FK_Shoulder_rotateY.a" "clipLibrary1.cel[0].cev[110].cevr"
		;
connectAttr "apu_L_FK_Shoulder_rotateZ.a" "clipLibrary1.cel[0].cev[111].cevr"
		;
connectAttr "apu_R_FK_Elbow_rotateZ.a" "clipLibrary1.cel[0].cev[112].cevr"
		;
connectAttr "apu_L_FK_Elbow_rotateZ.a" "clipLibrary1.cel[0].cev[113].cevr"
		;
connectAttr "apu_R_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[114].cevr"
		;
connectAttr "apu_R_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[115].cevr"
		;
connectAttr "apu_R_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[116].cevr"
		;
connectAttr "apu_L_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[117].cevr"
		;
connectAttr "apu_L_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[118].cevr"
		;
connectAttr "apu_L_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[119].cevr"
		;
connectAttr "apu_Thumb_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[120].cevr"
		;
connectAttr "apu_Thumb_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[121].cevr"
		;
connectAttr "apu_Thumb_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[122].cevr"
		;
connectAttr "apu_Middle_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[123].cevr"
		;
connectAttr "apu_Middle_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[124].cevr"
		;
connectAttr "apu_Middle_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[125].cevr"
		;
connectAttr "apu_Pelvis_rotateX.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "apu_Pelvis_rotateY.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "apu_Pelvis_rotateZ.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "apu_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "apu_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "apu_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "apu_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "apu_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "apu_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "apu_Middle_R_rotateX.a" "clipLibrary1.cel[0].cev[135].cevr"
		;
connectAttr "apu_Middle_R_rotateY.a" "clipLibrary1.cel[0].cev[136].cevr"
		;
connectAttr "apu_Middle_R_rotateZ.a" "clipLibrary1.cel[0].cev[137].cevr"
		;
connectAttr "apu_Jaw_rotateX.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "apu_Jaw_rotateY.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "apu_Jaw_rotateZ.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "apu_Spine_2_rotateX.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "apu_Spine_2_rotateY.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "apu_Spine_2_rotateZ.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "apu_Neck_rotateX.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "apu_Neck_rotateY.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "apu_Neck_rotateZ.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "apu_Head_rotateX.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "apu_Head_rotateY.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "apu_Head_rotateZ.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "apu_Spine_1_rotateX.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "apu_Spine_1_rotateY.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "apu_Spine_1_rotateZ.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "apu_Middle_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[153].cevr"
		;
connectAttr "apu_Middle_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[154].cevr"
		;
connectAttr "apu_Middle_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[155].cevr"
		;
connectAttr "apu_Thumb_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[156].cevr"
		;
connectAttr "apu_Thumb_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[157].cevr"
		;
connectAttr "apu_Thumb_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[158].cevr"
		;
connectAttr "apu_Middle_L_rotateX.a" "clipLibrary1.cel[0].cev[159].cevr"
		;
connectAttr "apu_Middle_L_rotateY.a" "clipLibrary1.cel[0].cev[160].cevr"
		;
connectAttr "apu_Middle_L_rotateZ.a" "clipLibrary1.cel[0].cev[161].cevr"
		;
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
// End of apu_jump_idle_in_air.ma
