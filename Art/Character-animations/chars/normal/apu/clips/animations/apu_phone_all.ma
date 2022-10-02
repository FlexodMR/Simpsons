//Maya ASCII 4.0 scene
//Name: apu_phone_all.ma
//Last modified: Wed, Oct 09, 2002 02:49:32 PM
requires maya "4.0";
requires "p3dDeformer" "18.3";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "apu_phone_allSource";
	setAttr ".ihi" 0;
	setAttr ".du" 60;
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
	setAttr -s 2 ".ktv[0:1]"  0 -0.041467085036890783 60 -0.041467085036890783;
createNode animCurveTL -n "apu_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
createNode animCurveTL -n "apu_Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.0088601109075031673 60 -0.0088601109075031673;
createNode animCurveTA -n "apu_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
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
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "apu_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
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
createNode animCurveTL -n "apu_Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.26454016861507795 7 -0.26454016861507795 
		9 -0.26454016861507795 16 -0.26454016861507795 23 -0.26454016861507795 31 
		-0.26454016861507795 42 -0.26454016861507795 51 -0.26454016861507795 53 -0.26454016861507795 
		60 -0.26454016861507795;
createNode animCurveTL -n "apu_Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.13806192026723146 7 0.13806192026723146 
		9 0.13806192026723146 16 0.13806192026723146 23 0.13806192026723146 31 0.13806192026723146 
		42 0.13806192026723146 51 0.13806192026723146 53 0.13806192026723146 60 0.13806192026723146;
createNode animCurveTL -n "apu_Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.064904406754016042 7 -0.064904406754016042 
		9 -0.064904406754016042 16 -0.064904406754016042 23 -0.064904406754016042 
		31 -0.064904406754016042 42 -0.064904406754016042 51 -0.064904406754016042 
		53 -0.064904406754016042 60 -0.064904406754016042;
createNode animCurveTA -n "apu_Right_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTA -n "apu_Right_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -25.948901905116401 7 -25.948901905116401 
		9 -25.948901905116401 16 -25.948901905116401 23 -25.948901905116401 31 -25.948901905116401 
		42 -25.948901905116401 51 -25.948901905116401 53 -25.948901905116401 60 -25.948901905116401;
createNode animCurveTA -n "apu_Right_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTL -n "apu_Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.21594587158542247 7 0.21594587158542247 
		9 0.21594587158542247 16 0.21594587158542247 23 0.21594587158542247 31 0.21594587158542247 
		42 0.21594587158542247 51 0.21594587158542247 53 0.21594587158542247 60 0.21594587158542247;
createNode animCurveTL -n "apu_Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.1380615615975922 7 0.1380615615975922 
		9 0.1380615615975922 16 0.1380615615975922 23 0.1380615615975922 31 0.1380615615975922 
		42 0.1380615615975922 51 0.1380615615975922 53 0.1380615615975922 60 0.1380615615975922;
createNode animCurveTL -n "apu_Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.00078430246903575811 7 0.00078430246903575811 
		9 0.00078430246903575811 16 0.00078430246903575811 23 0.00078430246903575811 
		31 0.00078430246903575811 42 0.00078430246903575811 51 0.00078430246903575811 
		53 0.00078430246903575811 60 0.00078430246903575811;
createNode animCurveTA -n "apu_Left_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTA -n "apu_Left_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTA -n "apu_Left_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
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
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTL -n "apu_Right_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTL -n "apu_Right_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 7 1 9 1 16 1 23 1 31 1 42 1 
		51 1 53 1 60 1;
createNode animCurveTL -n "apu_Left_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTL -n "apu_Left_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTL -n "apu_Left_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 7 1 9 1 16 1 23 1 31 1 42 1 
		51 1 53 1 60 1;
createNode animCurveTL -n "apu_Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.076472881617957691 7 -0.074018842810014682 
		9 -0.068466339775205096 16 -0.056435707938230863 23 -0.048535050726500842 
		31 -0.04433127256419276 42 -0.052778536126803124 51 -0.064175769248306772 
		53 -0.068466339775205096 60 -0.076472881617957691;
	setAttr -s 10 ".kit[0:9]"  3 1 1 1 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 1 1 1 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[1:9]"  0.20426136255264282 0.13776594400405884 
		0.23875294625759125 0.38178247213363647 0.83076071739196777 0.31845533847808838 
		0.22759333252906799 0.23700869083404541 0.27978914976119995;
	setAttr -s 10 ".kiy[1:9]"  0.97891640663146973 0.99046480655670166 
		0.97108036279678345 0.9242522120475769 -0.55662965774536133 -0.94793784618377686 
		-0.97375625371932983 -0.97150754928588867 -0.96006149053573608;
	setAttr -s 10 ".kox[1:9]"  0.20426256954669952 0.13776727020740509 
		0.2387506365776062 0.38178247213363647 0.83076071739196777 0.31845533847808838 
		0.22759333252906799 0.23700869083404541 0.27978914976119995;
	setAttr -s 10 ".koy[1:9]"  0.97891610860824585 0.99046462774276733 
		0.97108089923858643 0.9242522120475769 -0.55662965774536133 -0.94793784618377686 
		-0.97375625371932983 -0.97150754928588867 -0.96006149053573608;
createNode animCurveTL -n "apu_Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.99296149630440855 7 0.99296149630440855 
		9 0.99296149630440855 16 0.99296149630440855 23 0.99296149630440855 31 0.99296149630440855 
		42 0.99296149630440855 51 0.99296149630440855 53 0.99296149630440855 60 0.99296149630440855;
	setAttr -s 10 ".kit[0:9]"  3 9 9 3 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 3 9 9 9 
		9 9 9;
createNode animCurveTL -n "apu_Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 -0.0070855041574971215 9 
		-0.0070855041574971215 16 -0.019062922268039611 23 -0.0055008359985671083 
		31 -0.016418332074362094 42 -0.018243415331901405 51 -0.0070855041574971215 
		53 -0.0070855041574971215 60 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 3 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 3 9 9 9 
		9 9 9;
createNode animCurveTA -n "apu_Character_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.62843630316474508 7 -0.50365580676996613 
		9 -0.62696495833058175 16 -1.0765838613410816 23 -1.0765838613410816 31 -0.22102843077033457 
		42 -0.19170932383089639 51 -0.62696495833058175 53 -0.71338858977219632 60 
		-0.62843630316474508;
	setAttr -s 10 ".kit[0:9]"  3 9 9 1 9 9 1 
		9 1 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 1 9 9 1 
		9 1 3;
	setAttr -s 10 ".kix[3:9]"  0.99961674213409424 0.9995543360710144 
		0.9997028112411499 0.99946099519729614 0.99969184398651123 0.99995899200439453 
		1;
	setAttr -s 10 ".kiy[3:9]"  -0.0276825912296772 0.029851209372282028 
		0.024377975612878799 -0.032829027622938156 -0.024824224412441254 0.00905575230717659 
		0;
	setAttr -s 10 ".kox[3:9]"  0.99961674213409424 0.9995543360710144 
		0.9997028112411499 0.99946099519729614 0.99969184398651123 0.99995899200439453 
		1;
	setAttr -s 10 ".koy[3:9]"  -0.0276825912296772 0.029851209372282028 
		0.024377975612878799 -0.032829023897647858 -0.024824224412441254 0.00905575230717659 
		0;
createNode animCurveTA -n "apu_Character_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -5.8284402688137158 7 -4.3153787250395963 
		9 -4.3153787250395963 16 3.3027346937037811 23 3.3027346937037811 31 1.0690012343481456 
		42 0.51794242780762811 51 -4.3153787250395963 53 -4.3153787250395963 60 -5.8284402688137158;
	setAttr -s 10 ".kit[0:9]"  3 1 9 3 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 1 9 3 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[1:9]"  0.99894845485687256 0.91423201560974121 
		1 0.99697399139404297 0.99706822633743286 0.99021041393280029 0.97454124689102173 
		0.99614804983139038 0.99365639686584473;
	setAttr -s 10 ".kiy[1:9]"  -0.04584677517414093 0.40519115328788757 
		0 -0.077736064791679382 -0.076517842710018158 -0.13958276808261871 -0.22420836985111237 
		-0.087687276303768158 -0.11245878040790558;
	setAttr -s 10 ".kox[1:9]"  0.99894845485687256 0.91423201560974121 
		1 0.99697399139404297 0.99706822633743286 0.99021041393280029 0.97454124689102173 
		0.99614804983139038 0.99365639686584473;
	setAttr -s 10 ".koy[1:9]"  -0.04584677517414093 0.40519115328788757 
		0 -0.077736064791679382 -0.076517842710018158 -0.13958276808261871 -0.22420836985111237 
		-0.087687276303768158 -0.11245878040790558;
createNode animCurveTA -n "apu_Character_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1.2956360193097458 7 -1.3122776195158066 
		9 -1.3122776195158066 16 -0.1170300097108988 23 -0.1170300097108988 31 -0.18451889009795078 
		42 0.16809878661781372 51 -1.3122776195158066 53 -1.3122776195158066 60 -1.2956360193097458;
	setAttr -s 10 ".kit[0:9]"  3 1 9 3 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 1 9 3 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[1:9]"  0.99982500076293945 0.99759107828140259 
		1 0.99999719858169556 0.99996912479400635 0.99956440925598145 0.99752652645111084 
		0.9999995231628418 0.99999922513961792;
	setAttr -s 10 ".kiy[1:9]"  -0.018708260729908943 0.069369174540042877 
		0 -0.0023557997774332762 0.0078572891652584076 -0.029511794447898865 -0.07029145210981369 
		0.00096816860605031252 0.0012447878252714872;
	setAttr -s 10 ".kox[1:9]"  0.99982500076293945 0.99759107828140259 
		1 0.99999719858169556 0.99996912479400635 0.99956440925598145 0.99752652645111084 
		0.9999995231628418 0.99999922513961792;
	setAttr -s 10 ".koy[1:9]"  -0.018708260729908943 0.069369174540042877 
		0 -0.0023557997774332762 0.0078572891652584076 -0.029511794447898865 -0.07029145210981369 
		0.00096816860605031252 0.0012447878252714872;
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
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTA -n "apu_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTA -n "apu_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTA -n "apu_L_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTA -n "apu_L_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTA -n "apu_L_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTL -n "apu_Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.30518757431961813 7 -0.30518757431961813 
		9 -0.30518757431961813 16 -0.30518757431961813 23 -0.30518757431961813 31 
		-0.30518757431961813 42 -0.30518757431961813 51 -0.30518757431961813 53 -0.30518757431961813 
		60 -0.30518757431961813;
createNode animCurveTL -n "apu_Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.89920030065805379 7 -0.89920030065805379 
		9 -0.89920030065805379 16 -0.89920030065805379 23 -0.89920030065805379 31 
		-0.89920030065805379 42 -0.89920030065805379 51 -0.89920030065805379 53 -0.89920030065805379 
		60 -0.89920030065805379;
createNode animCurveTL -n "apu_Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.1271574445384612 7 0.1271574445384612 
		9 0.1271574445384612 16 0.1271574445384612 23 0.1271574445384612 31 0.1271574445384612 
		42 0.1271574445384612 51 0.1271574445384612 53 0.1271574445384612 60 0.1271574445384612;
createNode animCurveTA -n "apu_Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 9.2736340776842194 7 9.2736340776842194 
		9 9.2736340776842194 16 9.2736340776842194 23 9.2736340776842194 31 9.2736340776842194 
		42 9.2736340776842194 51 9.2736340776842194 53 9.2736340776842194 60 9.2736340776842194;
createNode animCurveTA -n "apu_Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 19.949465928602134 7 19.949465928602134 
		9 19.949465928602134 16 19.949465928602134 23 19.949465928602134 31 19.949465928602134 
		42 19.949465928602134 51 19.949465928602134 53 19.949465928602134 60 19.949465928602134;
createNode animCurveTA -n "apu_Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 77.760647383351483 7 77.760647383351483 
		9 77.760647383351483 16 77.760647383351483 23 77.760647383351483 31 77.760647383351483 
		42 77.760647383351483 51 77.760647383351483 53 77.760647383351483 60 77.760647383351483;
createNode animCurveTL -n "apu_Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.37612987317775387 7 0.37612987317775387 
		9 0.37612987317775387 16 0.37612987317775387 23 0.37612987317775387 31 0.37612987317775387 
		42 0.37612987317775387 51 0.37612987317775387 53 0.37612987317775387 60 0.37612987317775387;
createNode animCurveTL -n "apu_Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.86505068976914534 7 -0.86505068976914534 
		9 -0.86505068976914534 16 -0.86505068976914534 23 -0.86505068976914534 31 
		-0.86505068976914534 42 -0.86505068976914534 51 -0.86505068976914534 53 -0.86505068976914534 
		60 -0.86505068976914534;
createNode animCurveTL -n "apu_Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.2082971430621921 7 0.2082971430621921 
		9 0.2082971430621921 16 0.2082971430621921 23 0.2082971430621921 31 0.2082971430621921 
		42 0.2082971430621921 51 0.2082971430621921 53 0.2082971430621921 60 0.2082971430621921;
createNode animCurveTA -n "apu_Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 6.1630847679769332 7 6.1630847679769332 
		9 6.1630847679769332 16 6.1630847679769332 23 6.1630847679769332 31 6.1630847679769332 
		42 6.1630847679769332 51 6.1630847679769332 53 6.1630847679769332 60 6.1630847679769332;
createNode animCurveTA -n "apu_Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -15.27947428748017 7 -15.27947428748017 
		9 -15.27947428748017 16 -15.27947428748017 23 -15.27947428748017 31 -15.27947428748017 
		42 -15.27947428748017 51 -15.27947428748017 53 -15.27947428748017 60 -15.27947428748017;
createNode animCurveTA -n "apu_Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -64.066214390617461 7 -64.066214390617461 
		9 -64.066214390617461 16 -64.066214390617461 23 -64.066214390617461 31 -64.066214390617461 
		42 -64.066214390617461 51 -64.066214390617461 53 -64.066214390617461 60 -64.066214390617461;
createNode animCurveTL -n "apu_Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.8448236677023373 7 -0.2851303266092281 
		9 -0.2851303266092281 16 -0.17896580153804437 23 -0.18679239759195498 31 
		-0.18463466878002735 42 -0.23401996521304952 51 -0.2851303266092281 53 -0.2851303266092281 
		60 -0.8448236677023373;
	setAttr -s 10 ".kit[1:9]"  3 3 9 9 9 9 3 
		3 9;
	setAttr -s 10 ".kot[1:9]"  3 3 9 9 9 9 3 
		3 9;
createNode animCurveTL -n "apu_Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.5117481219250299 7 2.0845868186225998 
		9 2.0845868186225998 16 2.828048951801009 23 2.828048951801009 31 2.828048951801009 
		42 2.828048951801009 51 2.0845868186225998 53 2.0845868186225998 60 1.5117481219250299;
	setAttr -s 10 ".kit[1:9]"  3 3 9 9 9 9 3 
		3 9;
	setAttr -s 10 ".kot[1:9]"  3 3 9 9 9 9 3 
		3 9;
createNode animCurveTL -n "apu_Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.097994651149805143 7 0.78805163425317515 
		9 0.78805163425317515 16 0.53321900486260931 23 0.55227871945756168 31 0.54798690892414004 
		42 0.6431126419224823 51 0.78805163425317515 53 0.78805163425317515 60 -0.097994651149805143;
	setAttr -s 10 ".kit[1:9]"  3 3 9 9 9 9 3 
		3 9;
	setAttr -s 10 ".kot[1:9]"  3 3 9 9 9 9 3 
		3 9;
createNode animCurveTA -n "apu_Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 5.4739599453216474 7 85.420249821996393 
		9 85.420249821996393 16 101.04727203196758 23 101.04727203196758 31 101.04727203196758 
		42 101.04727203196758 51 85.420249821996393 53 85.420249821996393 60 5.4739599453216474;
	setAttr -s 10 ".kit[1:9]"  3 3 9 9 9 9 3 
		3 9;
	setAttr -s 10 ".kot[1:9]"  3 3 9 9 9 9 3 
		3 9;
createNode animCurveTA -n "apu_Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 8.5874521608419823 7 60.91336654028121 
		9 60.91336654028121 16 15.679324249481892 23 15.679324249481892 31 15.679324249481892 
		42 15.679324249481892 51 60.91336654028121 53 60.91336654028121 60 8.5874521608419823;
	setAttr -s 10 ".kit[1:9]"  3 3 9 9 9 9 3 
		3 9;
	setAttr -s 10 ".kot[1:9]"  3 3 9 9 9 9 3 
		3 9;
createNode animCurveTA -n "apu_Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 74.754744621954103 7 177.80010138904785 
		9 177.80010138904785 16 215.58276792494382 23 215.58276792494382 31 215.58276792494382 
		42 215.58276792494382 51 177.80010138904785 53 177.80010138904785 60 74.754744621954103;
	setAttr -s 10 ".kit[1:9]"  3 3 9 9 9 9 3 
		3 9;
	setAttr -s 10 ".kot[1:9]"  3 3 9 9 9 9 3 
		3 9;
createNode animCurveTL -n "apu_Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.61083301393139333 7 0.67225952519001608 
		9 0.67225952519001608 16 0.67007195988618617 23 0.69305376520419015 31 0.75409584994790524 
		42 0.72895730185204766 51 0.67225952519001608 53 0.67225952519001608 60 0.61083301393139333;
createNode animCurveTL -n "apu_Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.4644416293758407 7 1.4816692319567693 
		9 1.4816692319567693 16 1.5077538271694264 23 1.4913882192435921 31 1.5094821432614163 
		42 1.5094821432614152 51 1.4816692319567693 53 1.4816692319567693 60 1.4644416293758407;
createNode animCurveTL -n "apu_Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.14314299916678522 7 0.13319623240357223 
		9 0.13319623240357223 16 -0.21917653272923945 23 -0.18286063918999598 31 
		-0.12241364889564391 42 -0.13037553526888693 51 0.13319623240357223 53 0.13319623240357223 
		60 0.14314299916678522;
createNode animCurveTA -n "apu_Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 16.226511010665405 7 16.378697848556502 
		9 16.378697848556502 16 16.185188874778444 23 15.809108943536501 31 11.290375578459081 
		42 11.290375578459081 51 16.378697848556502 53 16.378697848556502 60 16.226511010665405;
createNode animCurveTA -n "apu_Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -8.513966085499284 7 -11.467206569499051 
		9 -11.467206569499051 16 -7.5034616382943318 23 -8.2812250970732748 31 -9.50412250330095 
		42 -9.50412250330095 51 -11.467206569499051 53 -11.467206569499051 60 -8.513966085499284;
createNode animCurveTA -n "apu_Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -68.213989601412422 7 -69.090908164209793 
		9 -69.090908164209793 16 -67.917410933673025 23 -65.179117541487486 31 -67.852768717086406 
		42 -67.852768717086406 51 -69.090908164209793 53 -69.090908164209793 60 -68.213989601412422;
createNode animCurveTL -n "apu_Left_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0.23274630620528519 9 0.23274630620528519 
		16 0.24733384318756937 23 0.34550194827970632 31 0.44508243056562602 42 0.44508243056562602 
		51 0.23274630620528519 53 0.23274630620528519 60 0;
createNode animCurveTL -n "apu_Left_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 -0.0649407055690263 9 -0.0649407055690263 
		16 -0.99145148536699568 23 -0.98516014883134673 31 -0.97780238509961837 42 
		-0.97780238509961837 51 -0.0649407055690263 53 -0.0649407055690263 60 0;
createNode animCurveTL -n "apu_Left_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1 7 -1.3562218579686316 9 -1.3562218579686316 
		16 -1.124627269071458 23 -1.0946950179782793 31 -1.0643217413848185 42 -1.0643217413848185 
		51 -1.3562218579686316 53 -1.3562218579686316 60 -1;
createNode animCurveTL -n "apu_Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.10167917362943303 7 -0.26337714518173594 
		9 -0.26337714518173594 16 -0.9822579423433484 23 -0.98058080162313899 31 
		-0.96688806758915935 42 -0.96688806758915935 51 -0.26337714518173594 53 -0.26337714518173594 
		60 -0.10167917362943303;
createNode animCurveTL -n "apu_Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.40762644910266188 7 -0.80813200817594766 
		9 -0.80813200817594766 16 -0.80813200817594821 23 -0.82344586232860495 31 
		-0.84522736543005916 42 -0.84522736543005916 51 -0.80813200817594766 53 -0.80813200817594766 
		60 -0.40762644910266188;
createNode animCurveTL -n "apu_Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.93129112588482243 7 1.2730431163768194 
		9 1.2730431163768194 16 1.2730431163768194 23 1.2076699211843129 31 1.1266254210717321 
		42 1.1266254210717321 51 1.2730431163768194 53 1.2730431163768194 60 -0.93129112588482243;
createNode animCurveTA -n "apu_R_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 12.253734489678925 7 12.253734489678925 
		9 12.253734489678925 16 12.253734489678925 23 12.253734489678925 31 12.253734489678925 
		42 12.253734489678925 51 12.253734489678925 53 12.253734489678925 60 12.253734489678925;
createNode animCurveTA -n "apu_R_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -65.746751280844961 7 -65.746751280844961 
		9 -65.746751280844961 16 -65.746751280844961 23 -65.746751280844961 31 -65.746751280844961 
		42 -65.746751280844961 51 -65.746751280844961 53 -65.746751280844961 60 -65.746751280844961;
createNode animCurveTA -n "apu_R_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 3.871449260799477e-015 7 0 9 
		0 16 0 23 0 31 0 42 0 51 0 53 0 60 3.871449260799477e-015;
createNode animCurveTA -n "apu_L_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.061808866237337522 7 -0.061808866237337522 
		9 -0.061808866237337522 16 -0.061808866237337522 23 -0.061808866237337522 
		31 -0.061808866237337522 42 -0.061808866237337522 51 -0.061808866237337522 
		53 -0.061808866237337522 60 -0.061808866237337522;
createNode animCurveTA -n "apu_L_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -59.058178941076754 7 -59.058178941076754 
		9 -59.058178941076754 16 -59.058178941076754 23 -59.058178941076754 31 -59.058178941076754 
		42 -59.058178941076754 51 -59.058178941076754 53 -59.058178941076754 60 -59.058178941076754;
createNode animCurveTA -n "apu_L_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 16.579147429757843 7 16.579147429757843 
		9 16.579147429757843 16 16.579147429757843 23 16.579147429757843 31 16.579147429757843 
		42 16.579147429757843 51 16.579147429757843 53 16.579147429757843 60 16.579147429757843;
createNode animCurveTA -n "apu_R_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 8.5572674112203622 7 8.5572674112203622 
		9 8.5572674112203622 16 8.5572674112203622 23 8.5572674112203622 31 8.5572674112203622 
		42 8.5572674112203622 51 8.5572674112203622 53 8.5572674112203622 60 8.5572674112203622;
createNode animCurveTA -n "apu_L_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 15.711328223519057 7 15.711328223519057 
		9 15.711328223519057 16 15.711328223519057 23 15.711328223519057 31 15.711328223519057 
		42 15.711328223519057 51 15.711328223519057 53 15.711328223519057 60 15.711328223519057;
createNode animCurveTA -n "apu_R_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTA -n "apu_R_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTA -n "apu_R_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTA -n "apu_L_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTA -n "apu_L_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTA -n "apu_L_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTA -n "apu_Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 10.423754966968488 7 10.423754966968488 
		9 10.423754966968488 16 10.423754966968488 23 10.423754966968488 31 10.423754966968488 
		42 10.423754966968488 51 10.423754966968488 53 10.423754966968488 60 10.423754966968488;
createNode animCurveTA -n "apu_Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 27.722848255843903 7 27.722848255843903 
		9 27.722848255843903 16 27.722848255843903 23 27.722848255843903 31 27.722848255843903 
		42 27.722848255843903 51 27.722848255843903 53 27.722848255843903 60 27.722848255843903;
createNode animCurveTA -n "apu_Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 21.576484776388227 7 21.576484776388227 
		9 21.576484776388227 16 21.576484776388227 23 21.576484776388227 31 21.576484776388227 
		42 21.576484776388227 51 21.576484776388227 53 21.576484776388227 60 21.576484776388227;
createNode animCurveTA -n "apu_Middle_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTA -n "apu_Middle_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTA -n "apu_Middle_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 27.080064458283051 7 27.080064458283051 
		9 27.080064458283051 16 39.213868742560869 23 39.213868742560869 31 39.213868742560869 
		42 39.213868742560869 51 27.080064458283051 53 27.080064458283051 60 27.080064458283051;
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
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTA -n "apu_Middle_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTA -n "apu_Middle_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 27.911632519594587 7 56.361387725692225 
		9 56.361387725692225 16 56.361387725692225 23 56.361387725692225 31 56.361387725692225 
		42 56.361387725692225 51 56.361387725692225 53 56.361387725692225 60 27.911632519594587;
createNode animCurveTA -n "apu_Jaw_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTA -n "apu_Jaw_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTA -n "apu_Jaw_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTA -n "apu_Spine_2_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.65073001024951671 7 5.4639135743828096 
		9 5.4639135743828096 16 7.4720993136164706 23 7.0997758269498323 31 7.2698226976097313 
		42 7.0668643582301041 51 5.4639135743828096 53 5.4639135743828096 60 -0.65073001024951671;
createNode animCurveTA -n "apu_Spine_2_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -4.2368721935960929 7 -4.541395176397713 
		9 -4.541395176397713 16 -4.5413951763977138 23 -4.2286036603943966 31 -4.278525259931147 
		42 -4.4653475943654959 51 -4.541395176397713 53 -4.541395176397713 60 -4.2368721935960929;
createNode animCurveTA -n "apu_Spine_2_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 8.7398866450636881 7 9.1084055495602136 
		9 9.1084055495602136 16 9.1084055495602101 23 9.1640745386297322 31 9.1489214214512629 
		42 8.8665528153743409 51 9.1588138330631796 53 9.1588138330631796 60 8.7398866450636881;
createNode animCurveTA -n "apu_Neck_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0.80694149730521481 9 0.80694149730521481 
		16 50.798407220343094 23 49.986337213062427 31 45.468207867219185 42 44.279642123050145 
		51 0.80694149730521481 53 0.80694149730521481 60 0;
createNode animCurveTA -n "apu_Neck_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 -0.22498577182718085 9 -0.22498577182718085 
		16 -0.41047593121886877 23 -1.0179338442254244 31 0.83159078391551378 42 
		0.33327236000034133 51 -0.22498577182718085 53 -0.22498577182718085 60 0;
createNode animCurveTA -n "apu_Neck_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -15.452965173287611 7 -12.299374678835976 
		9 -12.299374678835976 16 -9.3689006336236016 23 -8.5155622186157824 31 -5.5104907840442179 
		42 -5.3880828228557505 51 -12.299374678835976 53 -12.299374678835976 60 -15.452965173287611;
createNode animCurveTA -n "apu_Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 4.8714700432790456 7 4.8714700432790456 
		9 4.8714700432790456 16 4.8714700432790456 23 4.8714700432790456 31 4.8714700432790456 
		42 4.8714700432790456 51 4.8714700432790456 53 4.8714700432790456 60 4.8714700432790456;
createNode animCurveTA -n "apu_Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 11.783606204137085 7 11.783606204137085 
		9 11.783606204137085 16 11.783606204137085 23 11.783606204137085 31 11.783606204137085 
		42 11.783606204137085 51 11.783606204137085 53 11.783606204137085 60 11.783606204137085;
createNode animCurveTA -n "apu_Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 7.5423825101935913 7 7.5423825101935913 
		9 7.5423825101935913 16 7.5423825101935913 23 7.5423825101935913 31 7.5423825101935913 
		42 7.5423825101935913 51 7.5423825101935913 53 7.5423825101935913 60 7.5423825101935913;
createNode animCurveTA -n "apu_Spine_1_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1.8903601258661931 7 -0.28558529352347378 
		9 -0.28558529352347378 16 2.8175179990991097 23 1.7612780694067003 31 1.702762494546356 
		42 1.3088015416577736 51 -0.28558529352347406 53 -0.28558529352347406 60 
		-1.8903601258661931;
createNode animCurveTA -n "apu_Spine_1_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 2.5597289571479034 7 2.0972145004134517 
		9 2.0972145004134517 16 2.0972145004134468 23 1.8429418089272014 31 2.2113740336726524 
		42 1.6314138170071968 51 2.0972145004134517 53 2.0972145004134517 60 2.5597289571479034;
createNode animCurveTA -n "apu_Spine_1_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 2.016811087403604 7 2.8774759602966435 
		9 2.8774759602966435 16 2.8774759602966351 23 3.0931026613340569 31 2.6192912881884123 
		42 2.066667555233543 51 2.8774759602966435 53 2.8774759602966435 60 2.016811087403604;
createNode animCurveTA -n "apu_Middle_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTA -n "apu_Middle_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTA -n "apu_Middle_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 33.429092416277157 7 42.184406713268395 
		9 42.184406713268395 16 42.184406713268395 23 42.184406713268395 31 42.184406713268395 
		42 42.184406713268395 51 42.184406713268395 53 42.184406713268395 60 33.429092416277157;
createNode animCurveTA -n "apu_Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 8.2533422302317216 7 8.2533422302317216 
		9 8.2533422302317216 16 8.2533422302317216 23 8.2533422302317216 31 8.2533422302317216 
		42 8.2533422302317216 51 8.2533422302317216 53 8.2533422302317216 60 8.2533422302317216;
createNode animCurveTA -n "apu_Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 23.263402056531085 7 23.263402056531085 
		9 23.263402056531085 16 23.263402056531085 23 23.263402056531085 31 23.263402056531085 
		42 23.263402056531085 51 23.263402056531085 53 23.263402056531085 60 23.263402056531085;
createNode animCurveTA -n "apu_Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 20.166277752815617 7 20.166277752815617 
		9 20.166277752815617 16 20.166277752815617 23 20.166277752815617 31 20.166277752815617 
		42 20.166277752815617 51 20.166277752815617 53 20.166277752815617 60 20.166277752815617;
createNode animCurveTA -n "apu_Middle_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTA -n "apu_Middle_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 7 0 9 0 16 0 23 0 31 0 42 0 
		51 0 53 0 60 0;
createNode animCurveTA -n "apu_Middle_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 17.254116939558369 7 17.254116939558369 
		9 17.254116939558369 16 35.132459467321247 23 35.132459467321247 31 35.132459467321247 
		42 35.132459467321247 51 17.254116939558369 53 17.254116939558369 60 17.254116939558369;
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
	setAttr ".o" 2;
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
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 654 ".gn";
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
connectAttr "apu_phone_allSource.st" "clipLibrary1.st[0]";
connectAttr "apu_phone_allSource.du" "clipLibrary1.du[0]";
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
connectAttr "apu_Right_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[20].cevr"
		;
connectAttr "apu_Right_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[21].cevr"
		;
connectAttr "apu_Right_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[22].cevr"
		;
connectAttr "apu_Right_Foot_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[23].cevr"
		;
connectAttr "apu_Right_Foot_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[24].cevr"
		;
connectAttr "apu_Right_Foot_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[25].cevr"
		;
connectAttr "apu_Left_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[26].cevr"
		;
connectAttr "apu_Left_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[27].cevr"
		;
connectAttr "apu_Left_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[28].cevr"
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
connectAttr "apu_Character_Hoop_translateX.a" "clipLibrary1.cel[0].cev[44].cevr"
		;
connectAttr "apu_Character_Hoop_translateY.a" "clipLibrary1.cel[0].cev[45].cevr"
		;
connectAttr "apu_Character_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[46].cevr"
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
// End of apu_phone_all.ma
