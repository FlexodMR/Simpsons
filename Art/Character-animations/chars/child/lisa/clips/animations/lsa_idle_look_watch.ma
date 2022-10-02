//Maya ASCII 4.0 scene
//Name: lsa_idle_look_watch.ma
//Last modified: Thu, Feb 06, 2003 11:47:08 AM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_idle_look_watchSource";
	setAttr ".ihi" 0;
	setAttr ".du" 70;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL42";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL43";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 71 ".ktv[0:70]"  0 -0.033135114381557439 1 -0.033206646836807907 
		2 -0.033436974902067609 3 -0.033849694626598995 4 -0.034468402059664477 5 
		-0.035316693250526499 6 -0.036418164248447508 7 -0.037796411102689921 8 -0.039475029862516199 
		9 -0.041477616577188757 10 -0.043827767295970037 11 -0.047480736534980722 
		12 -0.05283989016756932 13 -0.059100991278839998 14 -0.065459802953896987 
		15 -0.071112088277844446 16 -0.076458379135576696 17 -0.082285745923430284 
		18 -0.088369759493672706 19 -0.094485990698571456 20 -0.10041001039039404 
		21 -0.10591738942140794 22 -0.11078369864388064 23 -0.1147845089100796 24 
		-0.11769539107227237 25 -0.1192919159827264 26 -0.12004287272290251 27 -0.12057505725444152 
		28 -0.12090105074988096 29 -0.1210334343817584 30 -0.12098478932261132 31 
		-0.12076769674497735 32 -0.12039473782139393 33 -0.11987849372439864 34 -0.11923154562652905 
		35 -0.11846647470032264 36 -0.11759586211831698 37 -0.11663228905304961 38 
		-0.11558833667705803 39 -0.11447658616287985 40 -0.11330961868305256 41 -0.11210001541011369 
		42 -0.11086035751660081 43 -0.10960322617505142 44 -0.10834120255800311 45 
		-0.10708686783799337 46 -0.10585280318755975 47 -0.10465158977923981 48 -0.10349580878557108 
		49 -0.10239804137909107 50 -0.10137086873233736 51 -0.10041176904283783 52 
		-0.099467036728868696 53 -0.098472477294089936 54 -0.09736389624216156 55 
		-0.096077099076743555 56 -0.094547891301495893 57 -0.092712078420078559 58 
		-0.090505465936151566 59 -0.087863859353374874 60 -0.08472306417540848 61 
		-0.080515053591964245 62 -0.074990829216357843 63 -0.06856473918765503 64 
		-0.061651131644921517 65 -0.054664354727223065 66 -0.048018756573625407 67 
		-0.042128685323194283 68 -0.037408489114995412 69 -0.034272516088094541 70 
		-0.033135114381557439;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 71 ".ktv[0:70]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 
		0 68 0 69 0 70 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 71 ".ktv[0:70]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 
		0 68 0 69 0 70 0;
createNode animCurveTA -n "animCurveTA111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 71 ".ktv[0:70]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 
		0 68 0 69 0 70 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 1;
createNode animCurveTU -n "lsa_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 1;
createNode animCurveTA -n "lsa_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTL -n "lsa_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTL -n "lsa_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTL -n "lsa_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTL -n "animCurveTL50";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.26454016861507795 10 -0.26454016861507795 
		15 -0.26454016861507795 25 -0.26454016861507795 50 -0.26454016861507795 60 
		-0.26454016861507795 70 -0.26454016861507795;
createNode animCurveTL -n "animCurveTL51";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.13806192026723146 10 0.13806192026723146 
		15 0.13806192026723146 25 0.13806192026723146 50 0.13806192026723146 60 0.13806192026723146 
		70 0.13806192026723146;
createNode animCurveTL -n "animCurveTL52";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.064904406754016042 10 -0.064904406754016042 
		15 -0.064904406754016042 25 -0.064904406754016042 50 -0.064904406754016042 
		60 -0.064904406754016042 70 -0.064904406754016042;
createNode animCurveTA -n "animCurveTA115";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 25 0 50 0 60 0 70 
		0;
createNode animCurveTA -n "animCurveTA116";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -13.717778871715202 10 -13.717778871715202 
		15 -13.717778871715202 25 -10.333013901794658 50 -10.333013901794658 60 -10.333013901794658 
		70 -13.717778871715202;
createNode animCurveTA -n "animCurveTA117";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 25 0 50 0 60 0 70 
		0;
createNode animCurveTL -n "animCurveTL53";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.21594587158542247 10 0.21594587158542247 
		15 0.25164141495208237 21 0.25164141495208237 50 0.25164141495208237 60 0.25164141495208237 
		70 0.21594587158542247;
createNode animCurveTL -n "animCurveTL54";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.1380615615975922 10 0.14017324384547297 
		15 0.14482944301492376 21 0.13800000000000001 50 0.13800000000000001 60 0.13800000000000001 
		70 0.1380615615975922;
createNode animCurveTL -n "animCurveTL55";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.00078430246903575811 10 0.00078430246903575811 
		15 -4.1517381494762737e-005 21 -4.1517381494762737e-005 50 -4.1517381494762737e-005 
		60 -4.1517381494762737e-005 70 0.00078430246903575811;
createNode animCurveTA -n "animCurveTA118";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 8.1158109729762167 
		21 3.5720041895463588 50 3.5720041895463588 60 3.5720041895463588 70 0;
createNode animCurveTA -n "animCurveTA119";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 10.576120144615679 
		21 21.598017419981055 50 21.598017419981055 60 21.598017419981055 70 0;
	setAttr -s 7 ".kit[2:6]"  1 3 3 3 3;
	setAttr -s 7 ".kot[2:6]"  1 3 3 3 3;
	setAttr -s 7 ".kix[2:6]"  0.54193192720413208 1 1 1 1;
	setAttr -s 7 ".kiy[2:6]"  0.84042239189147949 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  0.54193192720413208 1 1 1 1;
	setAttr -s 7 ".koy[2:6]"  0.84042239189147949 0 0 0 0;
createNode animCurveTA -n "animCurveTA120";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 21 0.62063632763917775 
		50 0.62063632763917775 60 0.62063632763917775 70 0;
createNode animCurveTA -n "lsa_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_Right_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_Right_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_Right_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_Left_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_Left_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_Left_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTL -n "animCurveTL56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 25 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 25 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 10 1 15 1 25 1 50 1 60 1 70 
		1;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 25 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 25 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 10 1 15 1 25 1 50 1 60 1 70 
		1;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.076472881617957691 10 -0.10115056859044948 
		15 -0.16412034211972285 25 -0.27531507704720365 50 -0.23395490218655443 60 
		-0.19553325763084672 70 -0.076472881617957691;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.96147551361829786 10 0.96147551361829786 
		15 0.97438712113949677 25 0.93184859559792133 50 0.93332943824138936 60 0.9430113420461802 
		70 0.96147551361829786;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 25 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.62843630316474508 10 -0.62843630316474508 
		15 -0.62843630316474508 25 -0.30435368915731864 50 -0.20106068395215851 60 
		-0.42616433978426732 70 -0.62843630316474508;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -5.8284402688137158 10 -5.8284402688137158 
		15 -5.8284402688137158 25 -5.8542272204848436 50 -5.8586688361788735 60 -5.8466485883107797 
		70 -5.8284402688137158;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.2956360193097458 10 -1.2956360193097458 
		15 -1.2956360193097458 25 -4.4791615535804077 50 -5.4914506747967602 60 -3.284186370101593 
		70 -1.2956360193097458;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "lsa_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_L_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_L_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_L_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTL -n "lsa_Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 -0.43524234076486068;
createNode animCurveTL -n "lsa_Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 -0.82665738350180629;
createNode animCurveTL -n "lsa_Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0.27773886459742925;
createNode animCurveTA -n "lsa_Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 -1.8121934161072303e-015;
createNode animCurveTA -n "lsa_Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 28.652637602052774;
createNode animCurveTA -n "lsa_Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 64.676908227303443;
createNode animCurveTL -n "lsa_Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0.5198069948790518;
createNode animCurveTL -n "lsa_Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 -0.72394202659893114;
createNode animCurveTL -n "lsa_Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0.36439499068905612;
createNode animCurveTA -n "lsa_Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 7.7976222737965299;
createNode animCurveTA -n "lsa_Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 -30.409274105849079;
createNode animCurveTA -n "lsa_Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 -64.859940280210878;
createNode animCurveTL -n "animCurveTL71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.97384023505055983 7 -1.015284552074591 
		12 -1.0850282053578302 22 -0.68608230114273749 52 -0.56995109886141582 60 
		-0.58186127864512394 65 -0.80809597347762363 70 -0.97384023505055983;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 1 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 1 9 
		3;
	setAttr -s 8 ".kix[5:7]"  0.067161381244659424 0.0085035506635904312 
		1;
	setAttr -s 8 ".kiy[5:7]"  -0.99774211645126343 -0.99996381998062134 
		0;
	setAttr -s 8 ".kox[5:7]"  0.067161373794078827 0.0085035506635904312 
		1;
	setAttr -s 8 ".koy[5:7]"  -0.99774211645126343 -0.99996381998062134 
		0;
createNode animCurveTL -n "animCurveTL72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.2525965505547216 7 1.2472913290012608 
		12 1.2995424204015444 22 1.7916276564626521 52 1.9952096528657364 60 1.7824092936027485 
		65 1.4659325697769903 70 1.2525965505547216;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTL -n "animCurveTL73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.097994651149805143 7 -0.1815967442023729 
		12 -0.19150298971142424 22 0.80931251833066997 52 0.80931251833066997 60 
		0.64680429570607023 65 0.38203642170454105 70 -0.097994651149805143;
	setAttr -s 8 ".kit[0:7]"  3 9 1 1 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 1 1 9 9 9 
		3;
	setAttr -s 8 ".kix[2:7]"  0.038110550493001938 0.094451054930686951 
		0.077709071338176727 0.010141242295503616 0.0044754361733794212 1;
	setAttr -s 8 ".kiy[2:7]"  0.99927353858947754 0.99552953243255615 
		-0.99697607755661011 -0.99994856119155884 -0.99998998641967773 0;
	setAttr -s 8 ".kox[2:7]"  0.038110539317131042 0.094451010227203369 
		0.077709071338176727 0.010141242295503616 0.0044754361733794212 1;
	setAttr -s 8 ".koy[2:7]"  0.99927353858947754 0.99552953243255615 
		-0.99697607755661011 -0.99994856119155884 -0.99998998641967773 0;
createNode animCurveTA -n "animCurveTA168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -12.222987645962959 7 -12.222987645962959 
		12 6.9883140073254841 17 87.780341602824535 22 150.93685627435374 52 140.36516617349722 
		60 140.36516617349722 65 51.415425529527127 70 -12.222987645962959;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA169";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -19.681044208515026 7 -19.681044208515026 
		12 -15.821350759297168 17 42.666602410763218 22 45.42166941887286 52 40.228114014405485 
		60 40.228114014405485 65 30.515837596833947 70 -19.681044208515026;
	setAttr -s 9 ".kit[0:8]"  3 9 1 1 1 9 1 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 1 1 1 9 1 
		9 3;
	setAttr -s 9 ".kix[2:8]"  0.74468404054641724 0.78558236360549927 
		0.99718499183654785 0.99744927883148193 0.96916705369949341 0.30373197793960571 
		1;
	setAttr -s 9 ".kiy[2:8]"  0.66741716861724854 0.61875712871551514 
		-0.074980735778808594 -0.071379028260707855 -0.24640454351902008 -0.95275753736495972 
		0;
	setAttr -s 9 ".kox[2:8]"  0.74468421936035156 0.78558248281478882 
		0.99718499183654785 0.99744927883148193 0.96916705369949341 0.30373197793960571 
		1;
	setAttr -s 9 ".koy[2:8]"  0.66741693019866943 0.61875700950622559 
		-0.074980616569519043 -0.071379028260707855 -0.24640452861785889 -0.95275753736495972 
		0;
createNode animCurveTA -n "animCurveTA170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 65.119655550709041 7 65.119655550709041 
		12 77.812079682201286 17 132.89135506583153 22 176.27416959388401 52 151.00234526427647 
		60 151.00234526427647 65 104.5884119856089 70 65.119655550709041;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL74";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.75854111686822778 10 0.72760453133551184 
		15 0.72760453133551184 25 0.44495465992250394 50 0.47071033514426464 60 0.53323490969843768 
		70 0.75854111686822778;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL75";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.1932952672205326 10 1.2318728021911138 
		15 1.2496076108455585 25 1.1457265733355972 50 1.1110869773713505 60 1.1304150713553671 
		70 1.1932952672205326;
	setAttr -s 7 ".kit[0:6]"  3 1 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 9 9 9 3;
	setAttr -s 7 ".kix[1:6]"  0.047891050577163696 0.057943329215049744 
		0.083926171064376831 0.6060681939125061 0.080829478800296783 1;
	setAttr -s 7 ".kiy[1:6]"  0.99885255098342896 -0.99831986427307129 
		-0.99647200107574463 -0.79541271924972534 0.99672794342041016 0;
	setAttr -s 7 ".kox[1:6]"  0.04789101704955101 0.057943329215049744 
		0.083926171064376831 0.6060681939125061 0.080829478800296783 1;
	setAttr -s 7 ".koy[1:6]"  0.99885255098342896 -0.99831986427307129 
		-0.99647200107574463 -0.79541271924972534 0.99672794342041016 0;
createNode animCurveTL -n "animCurveTL76";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.14314299916678522 10 0.14357969811749105 
		15 0.14357969811749105 25 -0.13595842144385634 50 -0.027773738903483482 60 
		-0.038041983871933201 70 0.14314299916678522;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -5.7993291745893352 10 -5.7993291745893352 
		15 -5.7993291745893352 25 -5.7993291745893352 50 -5.7993291745893352 60 -5.7993291745893352 
		70 -5.7993291745893352;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.228264010471275 10 -1.228264010471275 
		15 -1.228264010471275 25 -1.228264010471275 50 -1.228264010471275 60 -1.228264010471275 
		70 -1.228264010471275;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -60.456694896838378 10 -60.456694896838378 
		15 -60.456694896838378 25 -60.456694896838378 50 -60.456694896838378 60 -60.456694896838378 
		70 -60.456694896838378;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "Left_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 25 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "Left_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 25 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "Left_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1 10 -1 15 -1 25 -1 50 -1 60 
		-1 70 -1;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.10167917362943303 10 -0.10167917362943303 
		15 -0.10167917362943303 25 -1.3784561042525654 50 -1.400123076672716 60 -1.3574146852259288 
		70 -0.10167917362943303;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.40762644910266188 10 -0.40762644910266188 
		15 -0.40762644910266188 25 -0.38972301640073648 50 -0.21118630116363052 60 
		-0.56310514677394263 70 -0.40762644910266188;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.93129112588482243 10 -0.93129112588482243 
		15 -0.93129112588482243 25 -1.076188075234807 50 -1.0885378621383308 60 -1.0641948425815435 
		70 -0.93129112588482243;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA174";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 12.253734489678925 70 12.253734489678925;
createNode animCurveTA -n "animCurveTA175";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -65.746751280844961 70 -65.746751280844961;
createNode animCurveTA -n "animCurveTA176";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 3.871449260799477e-015 70 3.871449260799477e-015;
createNode animCurveTA -n "animCurveTA177";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.061808866237337522 70 -0.061808866237337522;
createNode animCurveTA -n "animCurveTA178";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -59.058178941076754 70 -59.058178941076754;
createNode animCurveTA -n "animCurveTA179";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 16.579147429757843 70 16.579147429757843;
createNode animCurveTA -n "animCurveTA180";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.5572674112203622 70 8.5572674112203622;
createNode animCurveTA -n "animCurveTA181";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 15.711328223519057 70 15.711328223519057;
createNode animCurveTA -n "animCurveTA182";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "animCurveTA183";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "animCurveTA184";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "animCurveTA185";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "animCurveTA186";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "animCurveTA187";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "animCurveTA188";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 10.423754966968488 70 10.423754966968488;
createNode animCurveTA -n "animCurveTA189";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 27.722848255843903 70 27.722848255843903;
createNode animCurveTA -n "animCurveTA190";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 21.576484776388227 70 21.576484776388227;
createNode animCurveTA -n "animCurveTA191";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "animCurveTA192";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "animCurveTA193";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 27.080064458283051 70 27.080064458283051;
createNode animCurveTA -n "lsa_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 13.994403295754109;
createNode animCurveTA -n "lsa_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 0;
createNode animCurveTA -n "lsa_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  70 13.994403295754109;
createNode animCurveTA -n "animCurveTA203";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "animCurveTA204";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "animCurveTA205";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 27.911632519594587 70 27.911632519594587;
createNode animCurveTA -n "animCurveTA206";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "animCurveTA207";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "animCurveTA208";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "animCurveTA209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.65073001024951671 10 -1.8240119617442156 
		20 -5.0140977551583852 40 -0.83063786501342385 51 6.1089268051285961 70 -0.65073001024951671;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -4.2368721935960929 10 -3.8589312897483219 
		20 -2.6714589449022674 40 -0.79677481997708721 51 -3.4882689248777283 70 
		-4.2368721935960929;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.6995264082587447 10 2.0061534169390622 
		20 2.6043552643306063 40 -1.9153333048057568 51 -5.9591434201420821 70 2.6995264082587447;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA212";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "animCurveTA213";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "animCurveTA214";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.4324820597801118 10 0.65777947526250147 
		20 1.9146291375029456 30 5.0043684208947834 41 5.4934706928279322 51 -24.614135399357526 
		58 -30.243483506688651 70 -2.4324820597801118;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -6.4750786651405345 10 -1.7926285285247436 
		20 3.9256780887528326 30 5.9499587259221993 41 4.704219424776233 51 -42.125827112417454 
		58 -45.276670109761909 70 -6.4750786651405345;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -4.7165647278190104 10 10.496531134424195 
		20 30.212151652450167 30 33.790110636157976 41 30.959382622269246 51 14.27948458952303 
		58 9.6597114928583139 70 -4.7165647278190104;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA218";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.8903601258661931 70 -1.8903601258661931;
createNode animCurveTA -n "animCurveTA219";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.5597289571479034 70 2.5597289571479034;
createNode animCurveTA -n "animCurveTA220";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.016811087403604 70 2.016811087403604;
createNode animCurveTA -n "animCurveTA221";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "animCurveTA222";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "animCurveTA223";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 33.429092416277157 70 33.429092416277157;
createNode animCurveTA -n "animCurveTA224";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.2533422302317216 70 8.2533422302317216;
createNode animCurveTA -n "animCurveTA225";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 23.263402056531085 70 23.263402056531085;
createNode animCurveTA -n "animCurveTA226";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 20.166277752815617 70 20.166277752815617;
createNode animCurveTA -n "animCurveTA227";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "animCurveTA228";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 70 0;
createNode animCurveTA -n "animCurveTA229";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 17.254116939558369 70 17.254116939558369;
createNode clipLibrary -n "clipLibrary1";
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
	setAttr ".o" 70;
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
	setAttr -s 102 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".top" 479;
	setAttr ".rght" 639;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
select -ne :defaultRenderQuality;
	setAttr ".eaa" 1;
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
connectAttr "lsa_idle_look_watchSource.st" "clipLibrary1.st[0]";
connectAttr "lsa_idle_look_watchSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL42.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL43.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA111.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "lsa_Hoop_Root_IK_FK_RFoot.a" "clipLibrary1.cel[0].cev[6].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_FK_LFoot.a" "clipLibrary1.cel[0].cev[7].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary1.cel[0].cev[8].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary1.cel[0].cev[9].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_FK_RArm.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_FK_LArm.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "lsa_Hoop_Root_rotateX.a" "clipLibrary1.cel[0].cev[14].cevr"
		;
connectAttr "lsa_Hoop_Root_rotateY.a" "clipLibrary1.cel[0].cev[15].cevr"
		;
connectAttr "lsa_Hoop_Root_rotateZ.a" "clipLibrary1.cel[0].cev[16].cevr"
		;
connectAttr "lsa_Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "lsa_Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "lsa_Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
connectAttr "animCurveTL50.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL51.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL52.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA115.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA116.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA117.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL53.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL54.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL55.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA118.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA119.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA120.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "lsa_Right_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[32].cevr"
		;
connectAttr "lsa_Right_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[33].cevr"
		;
connectAttr "lsa_Right_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[34].cevr"
		;
connectAttr "lsa_Left_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[35].cevr"
		;
connectAttr "lsa_Left_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[36].cevr"
		;
connectAttr "lsa_Left_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[37].cevr"
		;
connectAttr "lsa_Right_Toe_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[38].cevr"
		;
connectAttr "lsa_Right_Toe_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[39].cevr"
		;
connectAttr "lsa_Right_Toe_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[40].cevr"
		;
connectAttr "lsa_Left_Toe_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[41].cevr"
		;
connectAttr "lsa_Left_Toe_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[42].cevr"
		;
connectAttr "lsa_Left_Toe_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[43].cevr"
		;
connectAttr "animCurveTL56.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL57.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL58.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL59.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL60.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL61.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL62.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL63.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL64.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA133.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA134.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA135.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "lsa_R_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "lsa_R_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "lsa_R_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "lsa_R_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[59].cevr"
		;
connectAttr "lsa_R_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[60].cevr"
		;
connectAttr "lsa_R_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[61].cevr"
		;
connectAttr "lsa_R_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[62].cevr"
		;
connectAttr "lsa_R_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[63].cevr"
		;
connectAttr "lsa_R_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[64].cevr"
		;
connectAttr "lsa_R_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[65].cevr"
		;
connectAttr "lsa_L_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "lsa_L_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "lsa_L_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "lsa_L_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[69].cevr"
		;
connectAttr "lsa_L_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[70].cevr"
		;
connectAttr "lsa_L_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[71].cevr"
		;
connectAttr "lsa_L_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[72].cevr"
		;
connectAttr "lsa_L_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[73].cevr"
		;
connectAttr "lsa_L_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[74].cevr"
		;
connectAttr "lsa_L_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[75].cevr"
		;
connectAttr "lsa_R_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[76].cevr"
		;
connectAttr "lsa_R_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[77].cevr"
		;
connectAttr "lsa_R_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[78].cevr"
		;
connectAttr "lsa_L_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[79].cevr"
		;
connectAttr "lsa_L_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[80].cevr"
		;
connectAttr "lsa_L_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[81].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "animCurveTL71.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL72.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL73.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA168.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA169.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA170.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL74.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL75.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL76.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA171.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA172.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA173.a" "clipLibrary1.cel[0].cev[105].cevr";
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
connectAttr "animCurveTA174.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA175.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA176.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA177.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA178.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA179.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA180.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA181.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA182.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA183.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA184.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA185.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA186.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA187.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA188.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA189.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA190.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA191.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA192.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA193.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "lsa_Pelvis_rotateX.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "lsa_Pelvis_rotateY.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "lsa_Pelvis_rotateZ.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "lsa_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "lsa_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "lsa_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "lsa_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "lsa_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "lsa_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA203.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA204.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA205.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA206.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA207.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA208.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA209.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA210.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA211.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA212.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA213.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA214.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "Head_rotateX.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "Head_rotateY.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "Head_rotateZ.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA218.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA219.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA220.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA221.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA222.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA223.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA224.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA225.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA226.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA227.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA228.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA229.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[4].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[5].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[5].olnk";
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
// End of lsa_idle_look_watch.ma
