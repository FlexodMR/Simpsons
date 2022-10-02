//Maya ASCII 4.0 scene
//Name: lsa_idle_skate.ma
//Last modified: Wed, Mar 19, 2003 11:12:10 AM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dDeformer" "2.0";
requires "p3dSimpleShader" "2.0";
requires "p3dBillboardObject" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_idle_skateSource";
	setAttr ".ihi" 0;
	setAttr ".du" 60;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL83";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 10 0 16 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL84";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 10 0 16 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "Motion_Root_translateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 -0.033135114381557439 1 -0.032989906947727549 
		2 -0.032453777664933077 3 -0.031375966061216835 4 -0.029605711664621635 5 
		-0.026992254003190278 6 -0.023384832604965582 7 -0.014662052885721531 8 0.00072216974861923132 
		9 0.019055663603143879 10 0.036626256982939649 11 0.054989945324501799 12 
		0.076332310427010996 13 0.097885560139582425 14 0.11688190231133121 15 0.13055354479137254 
		16 0.13613269542882164 17 0.13672973118245163 18 0.13730028682097759 19 0.13784445785619512 
		20 0.13836233979989992 21 0.13885402816388767 22 0.13931961845995389 23 0.13975920619989435 
		24 0.14017288689550458 25 0.14056075605858032 26 0.14092290920091716 27 0.14125944183431072 
		28 0.14157044947055669 29 0.14185602762145069 30 0.14211627179878839 31 0.14235127751436535 
		32 0.14256114027997732 33 0.14274595560741987 34 0.14290581900848867 35 0.14304082599497936 
		36 0.14315107207868757 37 0.14323665277140898 38 0.14329766358493914 39 0.14333420003107378 
		40 0.14334635762160852 41 0.14007708342475067 42 0.13110021229928884 43 0.1176621714428905 
		44 0.10100938805322322 45 0.082388289327954528 46 0.063045302464751943 47 
		0.044226854661283038 48 0.027179373115215275 49 0.013149285024216249 50 0.0033830175859534527 
		51 -0.0034867682365175481 52 -0.0096550113523063107 53 -0.015116625890942014 
		54 -0.019866525981953841 55 -0.023899625754870965 56 -0.027210839339222581 
		57 -0.029795080864537842 58 -0.031647264460345957 59 -0.032762304256176093 
		60 -0.033135114381557439;
createNode animCurveTL -n "animCurveTL86";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 10 0 16 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "Motion_Root_translateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 -0.0012922741081673687 2 
		-0.0045229593785857895 3 -0.0087228502301297372 4 -0.012922741081673683 5 
		-0.016153426352092104 6 -0.017445700460259474 7 -0.0095715258657193235 8 
		0.011748173883368025 9 0.043059162735202924 10 0.080907204637985702 11 0.13093968813860668 
		12 0.19441980255504043 13 0.26131701299211385 14 0.32160078455465352 15 0.36524058234748652 
		16 0.38220587147543944 17 0.38243206991990369 18 0.3825362305271689 19 0.38251027086800771 
		20 0.38234610851319267 21 0.38203566103349657 22 0.3815708459996921 23 0.38094358098255177 
		24 0.38014578355284834 25 0.37916937128135447 26 0.37800626173884277 27 0.3766483724960859 
		28 0.37508762112385663 29 0.3733159251929275 30 0.37132520227407123 31 0.36910736993806043 
		32 0.3666543457556678 33 0.36395804729766601 34 0.36101039213482772 35 0.35780329783792547 
		36 0.3543286819777321 37 0.3505784621250202 38 0.34654455585056243 39 0.3422188807251314 
		40 0.33759335431949977 41 0.3283357271636097 42 0.31122612516770004 43 0.28792500422912204 
		44 0.26009282024522706 45 0.2293900291133662 46 0.19747708673089065 47 0.16601444899515178 
		48 0.13666257180350061 49 0.11108191105328849 50 0.090932922641866712 51 
		0.074714270584137626 52 0.059869925000188243 53 0.046478300945146336 54 0.034617813474139753 
		55 0.024366877642296305 56 0.015803908504743825 57 0.0090073211166101282 
		58 0.0040555305330230397 59 0.0010269518091103713 60 0;
createNode animCurveTA -n "animCurveTA230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 10 0 16 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 12 1 43 1 48 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 12 1 43 1 48 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 6 1 50 1 60 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 6 1 10 0 43 0 45 1 60 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 1;
createNode animCurveTU -n "lsa_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 1;
createNode animCurveTA -n "lsa_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTL -n "lsa_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTL -n "lsa_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTL -n "lsa_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTL -n "lsa_Right_Foot_Hoop_translateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  28 -0.26454016861507795;
createNode animCurveTL -n "lsa_Right_Foot_Hoop_translateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  6 0.13806192026723146 9 0.13806192026723146 
		11 0.42727738398812826 28 0.13806192026723146 50 0.13806192026723146;
	setAttr -s 5 ".kit[2:4]"  9 3 3;
	setAttr -s 5 ".kot[2:4]"  9 3 3;
createNode animCurveTL -n "lsa_Right_Foot_Hoop_translateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  6 -0.064904406754016042 9 -0.064904406754016042 
		11 -0.35306308348299331 28 -0.064904406754016042 50 -0.064904406754016042;
	setAttr -s 5 ".kit[2:4]"  9 3 3;
	setAttr -s 5 ".kot[2:4]"  9 3 3;
createNode animCurveTA -n "lsa_Right_Foot_Hoop_rotateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  6 0 9 0 11 21.073808852353213 28 
		0 50 0;
	setAttr -s 5 ".kit[2:4]"  9 3 3;
	setAttr -s 5 ".kot[2:4]"  9 3 3;
createNode animCurveTA -n "lsa_Right_Foot_Hoop_rotateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  6 -13.717778871715202 9 -13.717778871715202 
		11 -12.831705349465246 28 -13.717778871715202 50 -13.717778871715202;
	setAttr -s 5 ".kit[2:4]"  9 3 3;
	setAttr -s 5 ".kot[2:4]"  9 3 3;
createNode animCurveTA -n "lsa_Right_Foot_Hoop_rotateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  6 0 9 0 11 -4.8914567142799807 
		28 0 50 0;
	setAttr -s 5 ".kit[2:4]"  9 3 3;
	setAttr -s 5 ".kot[2:4]"  9 3 3;
createNode animCurveTL -n "lsa_Left_Foot_Hoop_translateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  28 0.21594587158542247;
createNode animCurveTL -n "lsa_Left_Foot_Hoop_translateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  6 0.1380615615975922 9 0.1380615615975922 
		11 0.94940304364621297 28 0.1380615615975922 50 0.1380615615975922;
	setAttr -s 5 ".kit[2:4]"  9 3 3;
	setAttr -s 5 ".kot[2:4]"  9 3 3;
createNode animCurveTL -n "lsa_Left_Foot_Hoop_translateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  6 0.00078430246903575811 9 0.00078430246903575811 
		11 -0.46124250526657712 28 0.00078430246903575811 50 0.00078430246903575811;
	setAttr -s 5 ".kit[2:4]"  9 3 3;
	setAttr -s 5 ".kot[2:4]"  9 3 3;
createNode animCurveTA -n "lsa_Left_Foot_Hoop_rotateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  6 0 9 0 11 140.15758883483306 28 
		0 50 0;
	setAttr -s 5 ".kit[2:4]"  9 3 3;
	setAttr -s 5 ".kot[2:4]"  9 3 3;
createNode animCurveTA -n "lsa_Left_Foot_Hoop_rotateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  28 0;
createNode animCurveTA -n "lsa_Left_Foot_Hoop_rotateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  28 0;
createNode animCurveTA -n "lsa_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_Right_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_Right_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_Right_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_Left_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_Left_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_Left_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTL -n "lsa_Right_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTL -n "lsa_Right_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTL -n "lsa_Right_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 1;
createNode animCurveTL -n "lsa_Left_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTL -n "lsa_Left_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTL -n "lsa_Left_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 1;
createNode animCurveTL -n "animCurveTL103";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.076472881617957691 6 -0.053970102980861814 
		10 0.084530126623742458 16 0.31418209039459633 40 0.33083057781336828 50 
		0.0078077021368630449 60 -0.076472881617957691;
	setAttr -s 7 ".kit[0:6]"  3 1 9 1 3 1 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 1 3 1 3;
	setAttr -s 7 ".kix[1:6]"  0.034742601215839386 0.0090538552030920982 
		0.2302917093038559 1 0.020003359764814377 1;
	setAttr -s 7 ".kiy[1:6]"  0.99939626455307007 0.99995899200439453 
		0.97312164306640625 0 -0.99979990720748901 0;
	setAttr -s 7 ".kox[1:6]"  0.034742511808872223 0.0090538552030920982 
		0.23029159009456635 1 0.020003413781523705 1;
	setAttr -s 7 ".koy[1:6]"  0.99939632415771484 0.99995899200439453 
		0.97312164306640625 0 -0.99979990720748901 0;
createNode animCurveTL -n "animCurveTL104";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.96147551361829786 6 0.72459956279183668 
		9 0.93951753860327503 16 1.3057907559491644 40 1.2953095355098174 42 1.1068619537308582 
		44 1.3785590272672077 50 0.70729834778498135 60 0.96147551361829786;
	setAttr -s 9 ".kit[0:8]"  3 1 1 1 1 1 3 
		3 3;
	setAttr -s 9 ".kot[0:8]"  3 1 1 1 1 1 3 
		3 3;
	setAttr -s 9 ".kix[1:8]"  0.054165124893188477 0.066666685044765472 
		0.58250117301940918 0.62199300527572632 0.0087278848513960838 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  -0.9985319972038269 11.617993354797363 
		-0.81282985210418701 0.78302282094955444 0.99996191263198853 0 0 0;
	setAttr -s 9 ".kox[1:8]"  0.05416545644402504 0.066666685044765472 
		0.58250105381011963 0.62199211120605469 0.0087278624996542931 1 1 1;
	setAttr -s 9 ".koy[1:8]"  -0.9985319972038269 11.617976188659668 
		-0.81282997131347656 0.78302353620529175 0.99996191263198853 0 0 0;
createNode animCurveTL -n "animCurveTL105";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 -0.040263116966402501 10 
		0.18672659496730984 16 0.88209698105939727 40 0.77913527995103593 50 0.20986505579219689 
		60 0;
	setAttr -s 7 ".kit[2:6]"  9 1 1 9 3;
	setAttr -s 7 ".kot[2:6]"  9 1 1 9 3;
	setAttr -s 7 ".kix[3:6]"  0.45264393091201782 0.030213568359613419 
		0.0085561815649271011 1;
	setAttr -s 7 ".kiy[3:6]"  0.89169138669967651 -0.99954348802566528 
		-0.99996340274810791 0;
	setAttr -s 7 ".kox[3:6]"  0.45264384150505066 0.03021351620554924 
		0.0085561815649271011 1;
	setAttr -s 7 ".koy[3:6]"  0.89169138669967651 -0.99954348802566528 
		-0.99996340274810791 0;
createNode animCurveTA -n "animCurveTA252";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.62843630316474508 6 7.8367486920403779 
		10 101.19823755646738 16 208.2853114521161 40 208.2853114521161 50 -13.167669150046285 
		60 -0.62843630316474508;
	setAttr -s 7 ".kit[0:6]"  3 1 9 1 1 1 9;
	setAttr -s 7 ".kot[0:6]"  3 1 9 1 1 1 9;
	setAttr -s 7 ".kix[1:6]"  0.39605599641799927 0.094849713146686554 
		0.99694639444351196 0.90851229429244995 0.93476176261901855 0.83593183755874634;
	setAttr -s 7 ".kiy[1:6]"  0.91822636127471924 0.995491623878479 
		0.07808898389339447 -0.41785809397697449 -0.35527524352073669 0.54883325099945068;
	setAttr -s 7 ".kox[1:6]"  0.39605599641799927 0.094849713146686554 
		0.99694639444351196 0.90851229429244995 0.93476176261901855 0.83593183755874634;
	setAttr -s 7 ".koy[1:6]"  0.91822636127471924 0.995491623878479 
		0.078088976442813873 -0.41785812377929688 -0.35527524352073669 0.54883325099945068;
createNode animCurveTA -n "animCurveTA253";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -5.8284402688137158 6 -5.3481933404098632 
		10 -1.2545654969526974 16 1.9639229203484752 40 1.9639229203484752 50 -5.9702253854108998 
		60 -5.8284402688137158;
	setAttr -s 7 ".kit[0:6]"  3 1 9 1 1 1 9;
	setAttr -s 7 ".kot[0:6]"  3 1 9 1 1 1 9;
	setAttr -s 7 ".kix[1:6]"  0.99223154783248901 0.93389332294464111 
		0.99979740381240845 0.99923396110534668 0.99948865175247192 0.99997246265411377;
	setAttr -s 7 ".kiy[1:6]"  0.12440475821495056 0.35755181312561035 
		0.020128399133682251 -0.039134334772825241 -0.031976174563169479 0.0074236467480659485;
	setAttr -s 7 ".kox[1:6]"  0.99223154783248901 0.93389332294464111 
		0.99979740381240845 0.99923396110534668 0.99948865175247192 0.99997246265411377;
	setAttr -s 7 ".koy[1:6]"  0.12440474331378937 0.35755181312561035 
		0.020128397271037102 -0.039134334772825241 -0.031976178288459778 0.0074236467480659485;
createNode animCurveTA -n "animCurveTA254";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.2956360193097458 6 -3.6120194266984704 
		16 -5.9460102227520855 40 -5.9460102227520855 50 -0.0017269714455593517 60 
		-1.2956360193097458;
	setAttr -s 6 ".kit[0:5]"  3 1 1 3 1 9;
	setAttr -s 6 ".kot[0:5]"  3 1 1 3 1 9;
	setAttr -s 6 ".kix[1:5]"  0.98114246129989624 0.99985414743423462 
		1 0.99902653694152832 0.99771291017532349;
	setAttr -s 6 ".kiy[1:5]"  -0.19328609108924866 -0.017079092562198639 
		0 0.044113669544458389 -0.067593969404697418;
	setAttr -s 6 ".kox[1:5]"  0.98114246129989624 0.99985414743423462 
		1 0.99902653694152832 0.99771291017532349;
	setAttr -s 6 ".koy[1:5]"  -0.19328609108924866 -0.01707909069955349 
		0 0.044113662093877792 -0.067593969404697418;
createNode animCurveTA -n "lsa_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 2.4115709061694406 10 8.8942881007247809 
		16 17.788576201449562 40 17.788576201449562 44 11.717763998443131 50 0 60 
		0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "lsa_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0.74263469526192893 10 2.7389644870328969 
		16 5.4779289740657946 40 5.4779289740657946 44 -7.8438360875580111 50 0 60 
		0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "lsa_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 -2.7902494374666049 10 -10.290919794096592 
		16 -20.581839588193183 40 -20.581839588193183 44 3.3918040713787807 50 0 
		60 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "lsa_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 12.401860536424392 10 45.740196028248178 
		16 91.48039205649637 40 91.48039205649637 50 0 60 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "lsa_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 -4.2308679321268716 10 -15.60416886658046 
		16 -31.208337733160921 40 -31.208337733160921 44 16.254089535484834 50 0 
		60 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "lsa_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 1.480158886255561 10 5.4590806716853102 
		16 10.918161343370622 40 10.918161343370622 44 -26.473095366826268 50 0 60 
		0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "lsa_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 0.085562576146132732 10 0.31556949561149494 
		16 0.63113899122298989 40 0.63113899122298989 44 -32.268167255066601 50 0 
		60 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "lsa_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 9.7641406019587755 10 36.011829972409508 
		16 72.023659944819016 40 72.023659944819016 44 28.790122864525788 50 0 60 
		0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "lsa_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 -2.6061429052112937 10 -9.6119037233064173 
		16 -19.223807446612835 40 -19.223807446612835 50 0 60 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "lsa_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_L_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_L_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_L_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTL -n "lsa_Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 -0.43524234076486068;
createNode animCurveTL -n "lsa_Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 -0.82665738350180629;
createNode animCurveTL -n "lsa_Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0.27773886459742925;
createNode animCurveTA -n "lsa_Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 -1.8121934161072303e-015;
createNode animCurveTA -n "lsa_Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 28.652637602052774;
createNode animCurveTA -n "lsa_Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 64.676908227303443;
createNode animCurveTL -n "lsa_Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0.5198069948790518;
createNode animCurveTL -n "lsa_Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 -0.72394202659893114;
createNode animCurveTL -n "lsa_Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0.36439499068905612;
createNode animCurveTA -n "lsa_Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 7.7976222737965299;
createNode animCurveTA -n "lsa_Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 -30.409274105849079;
createNode animCurveTA -n "lsa_Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 -64.859940280210878;
createNode animCurveTL -n "animCurveTL112";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.97384023505055983 60 -0.97384023505055983;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTL -n "animCurveTL113";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -0.015 1.2525748803373358 0 1.2525965505547216 
		60 1.2525965505547216;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[2]"  9;
createNode animCurveTL -n "animCurveTL114";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.097994651149805143 60 -0.097994651149805143;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTA -n "animCurveTA287";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -12.222987645962959 60 -12.222987645962959;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTA -n "animCurveTA288";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -19.681044208515029 60 -19.681044208515029;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTA -n "animCurveTA289";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 65.119655550709041 60 65.119655550709041;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTL -n "animCurveTL115";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.75854111686822778 6 0.68444029065739331 
		10 0.26622309631180097 45 0.26622309631180097 50 0.75854111686822778 60 0.75854111686822778;
	setAttr -s 6 ".kit[1:5]"  1 3 3 1 9;
	setAttr -s 6 ".kot[1:5]"  1 3 3 1 9;
	setAttr -s 6 ".kix[1:5]"  0.010658060200512409 1 1 0.13049726188182831 
		1;
	setAttr -s 6 ".kiy[1:5]"  -0.99994319677352905 0 0 0.99144864082336426 
		0;
	setAttr -s 6 ".kox[1:5]"  0.010658006183803082 1 1 0.13049739599227905 
		1;
	setAttr -s 6 ".koy[1:5]"  -0.99994319677352905 0 0 0.99144864082336426 
		0;
createNode animCurveTL -n "animCurveTL116";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.1932952672205326 6 0.76251564982264708 
		10 0.098795943017015969 45 0.098795943017015969 50 1.1932952672205326 60 
		1.1932952672205326;
	setAttr -s 6 ".kit[1:5]"  9 3 3 1 9;
	setAttr -s 6 ".kot[1:5]"  9 3 3 1 9;
	setAttr -s 6 ".kix[4:5]"  0.036632709205150604 1;
	setAttr -s 6 ".kiy[4:5]"  0.99932879209518433 0;
	setAttr -s 6 ".kox[4:5]"  0.036632727831602097 1;
	setAttr -s 6 ".koy[4:5]"  0.99932879209518433 0;
createNode animCurveTL -n "animCurveTL117";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.14314299916678522 6 0.48429397043305783 
		10 1.009919170606278 45 1.009919170606278 50 0.14314299916678522 60 0.14314299916678522;
	setAttr -s 6 ".kit[1:5]"  1 3 3 1 9;
	setAttr -s 6 ".kot[1:5]"  1 3 3 1 9;
	setAttr -s 6 ".kix[1:5]"  0.0024377636145800352 1 1 0.095755100250244141 
		1;
	setAttr -s 6 ".kiy[1:5]"  0.99999701976776123 0 0 -0.99540489912033081 
		0;
	setAttr -s 6 ".kox[1:5]"  0.0024377300869673491 1 1 0.095755323767662048 
		1;
	setAttr -s 6 ".koy[1:5]"  0.99999701976776123 0 0 -0.99540489912033081 
		0;
createNode animCurveTA -n "animCurveTA290";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -5.7993291745893352 6 -18.846818662698926 
		10 -38.949617281415932 45 -38.949617281415932 50 -5.7993291745893352 60 -5.7993291745893352;
	setAttr -s 6 ".kit[1:5]"  9 3 3 1 9;
	setAttr -s 6 ".kot[1:5]"  9 3 3 1 9;
	setAttr -s 6 ".kix[4:5]"  0.99742788076400757 1;
	setAttr -s 6 ".kiy[4:5]"  0.071676895022392273 0;
	setAttr -s 6 ".kox[4:5]"  0.99742788076400757 1;
	setAttr -s 6 ".koy[4:5]"  0.071676917374134064 0;
createNode animCurveTA -n "animCurveTA291";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.228264010471275 6 -21.664255048764797 
		10 -53.150819018876305 45 -53.150819018876305 50 -1.228264010471275 60 -1.228264010471275;
	setAttr -s 6 ".kit[1:5]"  9 3 3 1 9;
	setAttr -s 6 ".kot[1:5]"  9 3 3 1 9;
	setAttr -s 6 ".kix[4:5]"  0.99369156360626221 1;
	setAttr -s 6 ".kiy[4:5]"  0.11214748024940491 0;
	setAttr -s 6 ".kox[4:5]"  0.99369156360626221 1;
	setAttr -s 6 ".koy[4:5]"  0.11214747279882431 0;
createNode animCurveTA -n "animCurveTA292";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -60.456694896838378 6 -29.214445934307864 
		10 18.921759874628062 45 18.921759874628062 50 -60.456694896838378 60 -60.456694896838378;
	setAttr -s 6 ".kit[1:5]"  1 3 3 1 9;
	setAttr -s 6 ".kot[1:5]"  1 3 3 1 9;
	setAttr -s 6 ".kix[1:5]"  0.18302594125270844 1 1 0.92207479476928711 
		1;
	setAttr -s 6 ".kiy[1:5]"  0.98310810327529907 0 0 -0.38701170682907104 
		0;
	setAttr -s 6 ".kox[1:5]"  0.18302594125270844 1 1 0.92207479476928711 
		1;
	setAttr -s 6 ".koy[1:5]"  0.98310810327529907 0 0 -0.38701167702674866 
		0;
createNode animCurveTL -n "lsa_Left_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0.11255346749825748 10 0.53179391096599593 
		16 1.0635878219319965 40 1.0635878219319965 50 0 60 0;
	setAttr -s 7 ".kit[0:6]"  3 9 1 1 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 1 1 9 9 9;
	setAttr -s 7 ".kix[2:6]"  0.0025311538483947515 0.16769114136695862 
		0.010655151680111885 0.0062679690308868885 1;
	setAttr -s 7 ".kiy[2:6]"  0.99999678134918213 0.9858396053314209 
		-0.99994325637817383 -0.99998033046722412 0;
	setAttr -s 7 ".kox[2:6]"  0.0025311615318059921 0.16769117116928101 
		0.010655151680111885 0.0062679690308868885 1;
	setAttr -s 7 ".koy[2:6]"  0.99999678134918213 0.9858396053314209 
		-0.99994325637817383 -0.99998033046722412 0;
createNode animCurveTL -n "lsa_Left_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 -0.079881404275571541 10 
		-0.35874627120040514 16 -0.71749254240081028 40 -0.71749254240081028 50 0 
		60 0;
	setAttr -s 7 ".kit[0:6]"  3 9 1 1 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 1 1 9 9 9;
	setAttr -s 7 ".kix[2:6]"  0.0039939912967383862 0.058631192892789841 
		0.015793779864907265 0.0092912167310714722 1;
	setAttr -s 7 ".kiy[2:6]"  -0.9999920129776001 -0.99827969074249268 
		0.99987524747848511 0.99995684623718262 0;
	setAttr -s 7 ".kox[2:6]"  0.0039939787238836288 0.058631151914596558 
		0.015793779864907265 0.0092912167310714722 1;
	setAttr -s 7 ".koy[2:6]"  -0.9999920129776001 -0.99827969074249268 
		0.99987524747848511 0.99995684623718262 0;
createNode animCurveTL -n "lsa_Left_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1 6 -0.94171573164329092 10 
		-0.7024488847565491 16 -0.40489776951309991 40 -0.40489776951309991 50 -1 
		60 -1;
	setAttr -s 7 ".kit[0:6]"  3 9 1 1 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 1 1 9 9 9;
	setAttr -s 7 ".kix[2:6]"  0.0041629350744187832 0.04647517204284668 
		0.019040893763303757 0.011201853863894939 1;
	setAttr -s 7 ".kiy[2:6]"  0.99999135732650757 0.99891942739486694 
		-0.99981868267059326 -0.99993723630905151 0;
	setAttr -s 7 ".kox[2:6]"  0.0041628801263868809 0.046475190669298172 
		0.019040893763303757 0.011201853863894939 1;
	setAttr -s 7 ".koy[2:6]"  0.99999135732650757 0.99891942739486694 
		-0.99981868267059326 -0.99993723630905151 0;
createNode animCurveTL -n "lsa_Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.10167917362943303 6 -0.97529805776169043 
		10 -2.3213182644247246 16 -0.10167917362943303 40 -0.10167917362943303 50 
		-0.10167917362943303 60 -0.10167917362943303;
	setAttr -s 7 ".kit[0:6]"  3 9 3 1 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 3 1 9 9 9;
	setAttr -s 7 ".kix[3:6]"  0.094717308878898621 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0.99550420045852661 0 0 0;
	setAttr -s 7 ".kox[3:6]"  0.094717279076576233 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0.99550420045852661 0 0 0;
createNode animCurveTL -n "lsa_Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.40762644910266188 6 -0.036625815592113899 
		10 0.53498997529821202 16 -0.40762644910266188 40 -0.40762644910266188 50 
		-0.40762644910266188 60 -0.40762644910266188;
	setAttr -s 7 ".kit[0:6]"  3 9 3 1 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 3 1 9 9 9;
	setAttr -s 7 ".kix[3:6]"  0.045525550842285156 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  -0.99896317720413208 0 0 0;
	setAttr -s 7 ".kox[3:6]"  0.045525539666414261 1 1 1;
	setAttr -s 7 ".koy[3:6]"  -0.99896317720413208 0 0 0;
createNode animCurveTL -n "lsa_Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.93129112588482243 6 -0.75676619904887477 
		10 -0.4878685339979329 16 -0.93129112588482243 40 -0.93129112588482243 50 
		-0.93129112588482243 60 -0.93129112588482243;
	setAttr -s 7 ".kit[0:6]"  3 9 3 1 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 3 1 9 9 9;
	setAttr -s 7 ".kix[3:6]"  0.14962033927440643 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  -0.98874354362487793 0 0 0;
	setAttr -s 7 ".kox[3:6]"  0.14962038397789001 1 1 1;
	setAttr -s 7 ".koy[3:6]"  -0.98874354362487793 0 0 0;
createNode animCurveTA -n "animCurveTA293";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.253734489678925 6 0.82774404605777463 
		10 -88.071988731119177 16 81.457067823784939 40 81.457067823784939 50 -48.515790307792379 
		60 12.253734489678925;
	setAttr -s 7 ".kit[1:6]"  1 3 9 9 3 9;
	setAttr -s 7 ".kot[1:6]"  1 3 9 9 3 9;
	setAttr -s 7 ".kix[1:6]"  0.34012877941131592 1 0.3201785683631897 
		0.44693157076835632 1 0.29982087016105652;
	setAttr -s 7 ".kiy[1:6]"  -0.94037884473800659 0 0.94735723733901978 
		-0.89456814527511597 0 0.95399552583694458;
	setAttr -s 7 ".kox[1:6]"  0.34012880921363831 1 0.3201785683631897 
		0.44693157076835632 1 0.29982087016105652;
	setAttr -s 7 ".koy[1:6]"  -0.94037884473800659 0 0.94735723733901978 
		-0.89456814527511597 0 0.95399552583694458;
createNode animCurveTA -n "animCurveTA294";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -65.746751280844961 6 -45.941335185610427 
		10 9.1619516695058145 16 0.087834560580113963 40 0.087834560580113963 50 
		-15.670472375508503 60 -65.746751280844961;
	setAttr -s 7 ".kit[0:6]"  3 9 1 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 1 9 9 9 9;
	setAttr -s 7 ".kix[2:6]"  0.89665514230728149 0.9876900315284729 
		0.9717937707901001 0.50184714794158936 0.35635238885879517;
	setAttr -s 7 ".kiy[2:6]"  0.44272962212562561 -0.1564236581325531 
		-0.23583234846591949 -0.8649563193321228 -0.93435162305831909;
	setAttr -s 7 ".kox[2:6]"  0.89665520191192627 0.9876900315284729 
		0.9717937707901001 0.50184714794158936 0.35635238885879517;
	setAttr -s 7 ".koy[2:6]"  0.44272950291633606 -0.1564236581325531 
		-0.23583234846591949 -0.8649563193321228 -0.93435162305831909;
createNode animCurveTA -n "animCurveTA295";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 3.871449260799477e-015 6 -5.9948724739892043 
		10 -23.930788678652277 16 -30.940410170795495 40 -30.940410170795495 50 45.325151786394052 
		60 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 1 3 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 1 3 9;
	setAttr -s 7 ".kix[4:6]"  0.97769242525100708 1 0.38830426335334778;
	setAttr -s 7 ".kiy[4:6]"  0.21004170179367065 0 -0.92153120040893555;
	setAttr -s 7 ".kox[4:6]"  0.97769242525100708 1 0.38830426335334778;
	setAttr -s 7 ".koy[4:6]"  0.21004179120063782 0 -0.92153120040893555;
createNode animCurveTA -n "lsa_L_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 -39.104553453825112;
createNode animCurveTA -n "lsa_L_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 -7.2022396420002917;
createNode animCurveTA -n "lsa_L_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 53.114271979190299;
createNode animCurveTA -n "animCurveTA299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 5.4823428205519953 6 21.945095217321754 
		10 18.590331581686335 16 5.1748503869757103 40 5.1748503869757103 50 12.109774468302406 
		60 5.4823428205519953;
	setAttr -s 7 ".kit[0:6]"  3 3 9 9 9 3 9;
	setAttr -s 7 ".kot[0:6]"  3 3 9 9 9 3 9;
createNode animCurveTA -n "lsa_L_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 30.290540800234773;
createNode animCurveTA -n "animCurveTA301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 22.836147616274715 6 21.942472420503005 
		10 12.720264835899135 16 22.857136534909099 40 22.857136534909099 50 14.510233762377599 
		60 22.836147616274715;
	setAttr -s 7 ".kit[0:6]"  3 1 9 9 9 3 9;
	setAttr -s 7 ".kot[0:6]"  3 1 9 9 9 3 9;
	setAttr -s 7 ".kix[1:6]"  0.96685922145843506 0.99885517358779907 
		0.98470741510391235 0.99183946847915649 1 0.91668039560317993;
	setAttr -s 7 ".kiy[1:6]"  -0.25531002879142761 0.047836873680353165 
		0.17421619594097137 -0.12749303877353668 0 0.39962112903594971;
	setAttr -s 7 ".kox[1:6]"  0.96685922145843506 0.99885517358779907 
		0.98470741510391235 0.99183946847915649 1 0.91668039560317993;
	setAttr -s 7 ".koy[1:6]"  -0.25531005859375 0.047836873680353165 
		0.17421619594097137 -0.12749303877353668 0 0.39962112903594971;
createNode animCurveTA -n "animCurveTA302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -22.210324840310104 6 -5.3828306441194469 
		10 -28.895928110631022 16 -24.513067486286044 40 -24.513067486286044 50 -28.194457368788949 
		60 -22.210324840310104;
	setAttr -s 7 ".kit[0:6]"  3 9 3 9 9 3 9;
	setAttr -s 7 ".kot[0:6]"  3 9 3 9 9 3 9;
createNode animCurveTA -n "animCurveTA303";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -33.814675137933442 6 10.678836864579491 
		10 -10.019544724662305 16 -31.79981085063363 40 -31.79981085063363 50 -14.440832211048896 
		60 -33.814675137933442;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "lsa_L_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_L_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_L_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "animCurveTA307";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 10.423754966968488 6 10.423754966968488 
		10 10.423754966968488 16 10.423754966968488 40 10.423754966968488 50 10.423754966968488 
		60 10.423754966968488;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.722848255843903 6 27.722848255843903 
		10 27.722848255843903 16 27.722848255843903 40 27.722848255843903 50 27.722848255843903 
		60 27.722848255843903;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA309";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 21.576484776388227 6 21.576484776388227 
		10 21.576484776388227 16 21.576484776388227 40 21.576484776388227 50 21.576484776388227 
		60 21.576484776388227;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 10 0 16 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA311";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 10 0 16 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA312";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.080064458283051 6 27.080064458283051 
		10 27.080064458283051 16 27.080064458283051 40 27.080064458283051 50 27.080064458283051 
		60 27.080064458283051;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "lsa_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 13.994403295754109;
createNode animCurveTA -n "lsa_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 13.994403295754109;
createNode animCurveTA -n "animCurveTA322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 10 0 16 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 10 0 16 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.911632519594587 6 27.911632519594587 
		10 27.911632519594587 16 27.911632519594587 40 27.911632519594587 50 27.911632519594587 
		60 27.911632519594587;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "lsa_Jaw_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_Jaw_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "lsa_Jaw_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "animCurveTA328";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.65073001024951671 6 10.234297636692174 
		10 15.160112810228117 16 47.492801557138073 40 47.492801557138073 50 -2.486705494817016 
		60 -0.65073001024951671;
	setAttr -s 7 ".kit[0:6]"  3 1 1 1 1 1 9;
	setAttr -s 7 ".kot[0:6]"  3 1 1 1 1 1 9;
	setAttr -s 7 ".kix[1:6]"  0.81889313459396362 0.6285819411277771 
		0.99932098388671875 0.99699962139129639 0.97811591625213623 0.99541115760803223;
	setAttr -s 7 ".kiy[1:6]"  0.57394599914550781 0.77774333953857422 
		-0.036845166236162186 -0.077406212687492371 -0.20806077122688293 0.095690317451953888;
	setAttr -s 7 ".kox[1:6]"  0.81889313459396362 0.6285819411277771 
		0.99932098388671875 0.99699962139129639 0.97811591625213623 0.99541115760803223;
	setAttr -s 7 ".koy[1:6]"  0.57394599914550781 0.77774339914321899 
		-0.03684515506029129 -0.07740619033575058 -0.20806083083152771 0.095690317451953888;
createNode animCurveTA -n "animCurveTA329";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -4.2368721935960929 6 4.9401684781111195 
		10 8.2543291133180947 16 22.408312254818693 40 22.408312254818693 50 -11.356467286840603 
		60 -4.2368721935960929;
	setAttr -s 7 ".kit[0:6]"  3 1 1 1 1 1 9;
	setAttr -s 7 ".kot[0:6]"  3 1 1 1 1 1 9;
	setAttr -s 7 ".kix[1:6]"  0.93399739265441895 0.81015586853027344 
		0.99751019477844238 0.99436789751052856 0.98570382595062256 0.93701094388961792;
	setAttr -s 7 ".kiy[1:6]"  0.35727989673614502 0.58621448278427124 
		0.070522680878639221 -0.10598369687795639 -0.16848744451999664 0.34929996728897095;
	setAttr -s 7 ".kox[1:6]"  0.93399739265441895 0.81015568971633911 
		0.99751019477844238 0.99436783790588379 0.98570382595062256 0.93701094388961792;
	setAttr -s 7 ".koy[1:6]"  0.35727989673614502 0.58621472120285034 
		0.070522688329219818 -0.10598377883434296 -0.16848739981651306 0.34929996728897095;
createNode animCurveTA -n "animCurveTA330";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.6995264082587447 6 -38.706372877640703 
		10 -20.611751722208613 16 -49.614128314762723 40 -49.614128314762723 50 0.54423378087081042 
		60 2.6995264082587447;
	setAttr -s 7 ".kit[0:6]"  3 1 1 1 1 1 9;
	setAttr -s 7 ".kot[0:6]"  3 1 1 1 1 1 9;
	setAttr -s 7 ".kix[1:6]"  0.91408216953277588 0.95711731910705566 
		0.9608147144317627 0.99609571695327759 0.9549868106842041 0.99369251728057861;
	setAttr -s 7 ".kiy[1:6]"  -0.4055289626121521 -0.28970056772232056 
		-0.27719148993492126 0.088279694318771362 0.2966482937335968 0.11213905364274979;
	setAttr -s 7 ".kox[1:6]"  0.91408216953277588 0.95711737871170044 
		0.9608147144317627 0.99609571695327759 0.9549868106842041 0.99369251728057861;
	setAttr -s 7 ".koy[1:6]"  -0.40552902221679688 -0.28970044851303101 
		-0.27719148993492126 0.088279664516448975 0.29664823412895203 0.11213905364274979;
createNode animCurveTA -n "animCurveTA331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 -3.0910047211121712 10 -7.8534416247516656 
		16 3.2897264747627402 40 3.2897264747627402 50 0.39239215875531847 60 0;
	setAttr -s 7 ".kit[0:6]"  3 9 3 1 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 3 1 9 9 9;
	setAttr -s 7 ".kix[3:6]"  0.99998641014099121 0.99900609254837036 
		0.99631178379058838 0.99978899955749512;
	setAttr -s 7 ".kiy[3:6]"  0.0052179419435560703 -0.044574495404958725 
		-0.085807189345359802 -0.020541269332170486;
	setAttr -s 7 ".kox[3:6]"  0.99998641014099121 0.99900609254837036 
		0.99631178379058838 0.99978899955749512;
	setAttr -s 7 ".koy[3:6]"  0.0052179531194269657 -0.044574495404958725 
		-0.085807189345359802 -0.020541269332170486;
createNode animCurveTA -n "animCurveTA332";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0.46269402806102811 10 4.4512392939903718 
		16 15.699796460801318 40 15.699796460801318 50 -2.2524792326304399 60 0;
	setAttr -s 7 ".kit[0:6]"  3 9 1 1 9 1 9;
	setAttr -s 7 ".kot[0:6]"  3 9 1 1 9 1 9;
	setAttr -s 7 ".kix[2:6]"  0.73636430501937866 0.99903023242950439 
		0.96384364366531372 0.99767041206359863 0.99311685562133789;
	setAttr -s 7 ".kiy[2:6]"  0.67658531665802002 0.044028818607330322 
		-0.26646846532821655 -0.068218335509300232 0.11712773889303207;
	setAttr -s 7 ".kox[2:6]"  0.73636412620544434 0.99903023242950439 
		0.96384364366531372 0.99767041206359863 0.99311685562133789;
	setAttr -s 7 ".koy[2:6]"  0.67658543586730957 0.044028818607330322 
		-0.26646846532821655 -0.068218328058719635 0.11712773889303207;
createNode animCurveTA -n "animCurveTA333";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 6.1857414413360248 10 15.71636529169079 
		16 -9.6553551529239545 40 -9.6553551529239545 50 19.17742025421704 60 0;
	setAttr -s 7 ".kit[1:6]"  9 3 1 1 3 9;
	setAttr -s 7 ".kot[1:6]"  9 3 1 1 3 9;
	setAttr -s 7 ".kix[3:6]"  0.99906933307647705 0.99772953987121582 
		1 0.70564901828765869;
	setAttr -s 7 ".kiy[3:6]"  -0.043132811784744263 0.067348189651966095 
		0 -0.70856153964996338;
	setAttr -s 7 ".kox[3:6]"  0.99906933307647705 0.99772953987121582 
		1 0.70564901828765869;
	setAttr -s 7 ".koy[3:6]"  -0.043132845312356949 0.067348189651966095 
		0 -0.70856153964996338;
createNode animCurveTA -n "lsa_Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 -4.0198472869727979;
createNode animCurveTA -n "lsa_Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 -9.1335573833666519;
createNode animCurveTA -n "lsa_Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 -2.2752136084709536;
createNode animCurveTA -n "animCurveTA337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.8903601258661931 6 -4.4710287125713792 
		10 -9.6607786583938555 16 -2.7869279024738556 40 -2.7869279024738556 50 -1.2195662169172536 
		60 -1.8903601258661931;
	setAttr -s 7 ".kit[0:6]"  3 9 3 1 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 3 1 9 9 9;
	setAttr -s 7 ".kix[3:6]"  0.99993103742599487 0.99970883131027222 
		0.9997246265411377 0.99938374757766724;
	setAttr -s 7 ".kiy[3:6]"  0.01174505241215229 0.024130286648869514 
		0.023465625941753387 -0.035101041197776794;
	setAttr -s 7 ".kox[3:6]"  0.99993103742599487 0.99970883131027222 
		0.9997246265411377 0.99938374757766724;
	setAttr -s 7 ".koy[3:6]"  0.01174505427479744 0.024130286648869514 
		0.023465625941753387 -0.035101041197776794;
createNode animCurveTA -n "animCurveTA338";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.5597289571479034 6 2.9488961750284837 
		10 11.69408294435512 16 23.156086578433811 40 23.156086578433811 50 -0.047428239276683451 
		60 2.5597289571479034;
	setAttr -s 7 ".kit[0:6]"  3 1 1 1 1 1 9;
	setAttr -s 7 ".kot[0:6]"  3 1 1 1 1 1 9;
	setAttr -s 7 ".kix[1:6]"  0.99507373571395874 0.58836972713470459 
		0.99993753433227539 0.99095577001571655 0.98941779136657715 0.99081069231033325;
	setAttr -s 7 ".kiy[1:6]"  0.099137395620346069 0.80859202146530151 
		0.011174596846103668 -0.1341886967420578 -0.14509448409080505 0.13525599241256714;
	setAttr -s 7 ".kox[1:6]"  0.99507373571395874 0.58836978673934937 
		0.99993753433227539 0.99095582962036133 0.98941779136657715 0.99081069231033325;
	setAttr -s 7 ".koy[1:6]"  0.099137410521507263 0.80859196186065674 
		0.011174614541232586 -0.13418866693973541 -0.14509451389312744 0.13525599241256714;
createNode animCurveTA -n "animCurveTA339";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.016811087403604 6 22.51505763350746 
		10 12.635979089993658 16 5.0321903441315863 40 5.0321903441315863 50 1.7499405115850719 
		60 2.016811087403604;
	setAttr -s 7 ".kit[0:6]"  3 9 1 1 1 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 1 1 1 9 9;
	setAttr -s 7 ".kix[2:6]"  0.68760138750076294 0.9988139271736145 
		0.99977391958236694 0.99689853191375732 0.99990236759185791;
	setAttr -s 7 ".kiy[2:6]"  -0.72608840465545654 -0.048689808696508408 
		-0.021263940259814262 -0.078697606921195984 0.013971946202218533;
	setAttr -s 7 ".kox[2:6]"  0.68760144710540771 0.9988139271736145 
		0.99977391958236694 0.99689853191375732 0.99990236759185791;
	setAttr -s 7 ".koy[2:6]"  -0.72608834505081177 -0.048689834773540497 
		-0.021263942122459412 -0.078697606921195984 0.013971946202218533;
createNode animCurveTA -n "animCurveTA340";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 10 0 16 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA341";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 10 0 16 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA342";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 33.429092416277157 6 33.429092416277157 
		10 33.429092416277157 16 33.429092416277157 40 33.429092416277157 50 33.429092416277157 
		60 33.429092416277157;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.2533422302317216 6 8.2533422302317216 
		10 8.2533422302317216 16 8.2533422302317216 40 8.2533422302317216 50 8.2533422302317216 
		60 8.2533422302317216;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 23.263402056531085 6 23.263402056531085 
		10 23.263402056531085 16 23.263402056531085 40 23.263402056531085 50 23.263402056531085 
		60 23.263402056531085;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 20.166277752815617 6 20.166277752815617 
		10 20.166277752815617 16 20.166277752815617 40 20.166277752815617 50 20.166277752815617 
		60 20.166277752815617;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 10 0 16 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 10 0 16 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 17.254116939558369 6 17.254116939558369 
		10 17.254116939558369 16 17.254116939558369 40 17.254116939558369 50 17.254116939558369 
		60 17.254116939558369;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
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
	setAttr -s 22 ".lnk";
select -ne :time1;
	setAttr ".o" 19;
select -ne :renderPartition;
	setAttr -s 22 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 22 ".s";
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
	setAttr -s 11 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 306 ".gn";
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
	setAttr ".top" 479;
	setAttr -k on ".left";
	setAttr -k on ".bot";
	setAttr ".rght" 639;
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
select -ne :defaultRenderQuality;
	setAttr ".eaa" 1;
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
	setAttr -s 10 ".hyp";
	setAttr ".hyp[1].isc" no;
	setAttr ".hyp[1].isf" no;
	setAttr ".hyp[2].isc" no;
	setAttr ".hyp[2].isf" no;
	setAttr ".hyp[3].isc" no;
	setAttr ".hyp[3].isf" no;
	setAttr ".hyp[4].isc" no;
	setAttr ".hyp[4].isf" no;
	setAttr ".hyp[5].isc" no;
	setAttr ".hyp[5].isf" no;
	setAttr ".hyp[6].isc" no;
	setAttr ".hyp[6].isf" no;
	setAttr ".hyp[7].isc" no;
	setAttr ".hyp[7].isf" no;
	setAttr ".hyp[8].isc" no;
	setAttr ".hyp[8].isf" no;
	setAttr ".hyp[9].isc" no;
	setAttr ".hyp[9].isf" no;
	setAttr ".hyp[10].isc" no;
	setAttr ".hyp[10].isf" no;
	setAttr ".img" -type "string" "";
	setAttr ".ims" 1;
select -ne :ikSystem;
connectAttr "lsa_idle_skateSource.st" "clipLibrary2.st[0]";
connectAttr "lsa_idle_skateSource.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL83.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL84.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX1.a" "clipLibrary2.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL86.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ1.a" "clipLibrary2.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA230.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "lsa_Hoop_Root_IK_FK_RFoot.a" "clipLibrary2.cel[0].cev[6].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_FK_LFoot.a" "clipLibrary2.cel[0].cev[7].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary2.cel[0].cev[8].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary2.cel[0].cev[9].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_FK_RArm.a" "clipLibrary2.cel[0].cev[10].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_FK_LArm.a" "clipLibrary2.cel[0].cev[11].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary2.cel[0].cev[12].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary2.cel[0].cev[13].cevr"
		;
connectAttr "lsa_Hoop_Root_rotateX.a" "clipLibrary2.cel[0].cev[14].cevr"
		;
connectAttr "lsa_Hoop_Root_rotateY.a" "clipLibrary2.cel[0].cev[15].cevr"
		;
connectAttr "lsa_Hoop_Root_rotateZ.a" "clipLibrary2.cel[0].cev[16].cevr"
		;
connectAttr "lsa_Hoop_Root_translateX.a" "clipLibrary2.cel[0].cev[17].cevr"
		;
connectAttr "lsa_Hoop_Root_translateY.a" "clipLibrary2.cel[0].cev[18].cevr"
		;
connectAttr "lsa_Hoop_Root_translateZ.a" "clipLibrary2.cel[0].cev[19].cevr"
		;
connectAttr "lsa_Right_Foot_Hoop_translateX.a" "clipLibrary2.cel[0].cev[20].cevr"
		;
connectAttr "lsa_Right_Foot_Hoop_translateY.a" "clipLibrary2.cel[0].cev[21].cevr"
		;
connectAttr "lsa_Right_Foot_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[22].cevr"
		;
connectAttr "lsa_Right_Foot_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[23].cevr"
		;
connectAttr "lsa_Right_Foot_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[24].cevr"
		;
connectAttr "lsa_Right_Foot_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[25].cevr"
		;
connectAttr "lsa_Left_Foot_Hoop_translateX.a" "clipLibrary2.cel[0].cev[26].cevr"
		;
connectAttr "lsa_Left_Foot_Hoop_translateY.a" "clipLibrary2.cel[0].cev[27].cevr"
		;
connectAttr "lsa_Left_Foot_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[28].cevr"
		;
connectAttr "lsa_Left_Foot_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[29].cevr"
		;
connectAttr "lsa_Left_Foot_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[30].cevr"
		;
connectAttr "lsa_Left_Foot_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[31].cevr"
		;
connectAttr "lsa_Right_Ball_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[32].cevr"
		;
connectAttr "lsa_Right_Ball_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[33].cevr"
		;
connectAttr "lsa_Right_Ball_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[34].cevr"
		;
connectAttr "lsa_Left_Ball_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[35].cevr"
		;
connectAttr "lsa_Left_Ball_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[36].cevr"
		;
connectAttr "lsa_Left_Ball_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[37].cevr"
		;
connectAttr "lsa_Right_Toe_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[38].cevr"
		;
connectAttr "lsa_Right_Toe_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[39].cevr"
		;
connectAttr "lsa_Right_Toe_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[40].cevr"
		;
connectAttr "lsa_Left_Toe_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[41].cevr"
		;
connectAttr "lsa_Left_Toe_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[42].cevr"
		;
connectAttr "lsa_Left_Toe_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[43].cevr"
		;
connectAttr "lsa_Right_Knee_Hoop_translateX.a" "clipLibrary2.cel[0].cev[44].cevr"
		;
connectAttr "lsa_Right_Knee_Hoop_translateY.a" "clipLibrary2.cel[0].cev[45].cevr"
		;
connectAttr "lsa_Right_Knee_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[46].cevr"
		;
connectAttr "lsa_Left_Knee_Hoop_translateX.a" "clipLibrary2.cel[0].cev[47].cevr"
		;
connectAttr "lsa_Left_Knee_Hoop_translateY.a" "clipLibrary2.cel[0].cev[48].cevr"
		;
connectAttr "lsa_Left_Knee_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[49].cevr"
		;
connectAttr "animCurveTL103.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL104.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL105.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA252.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA253.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA254.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "lsa_R_Hip_Fk_rotateX.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "lsa_R_Hip_Fk_rotateY.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "lsa_R_Hip_Fk_rotateZ.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "lsa_R_Knee_Fk_rotateZ.a" "clipLibrary2.cel[0].cev[59].cevr"
		;
connectAttr "lsa_R_Ankle_Fk_rotateX.a" "clipLibrary2.cel[0].cev[60].cevr"
		;
connectAttr "lsa_R_Ankle_Fk_rotateY.a" "clipLibrary2.cel[0].cev[61].cevr"
		;
connectAttr "lsa_R_Ankle_Fk_rotateZ.a" "clipLibrary2.cel[0].cev[62].cevr"
		;
connectAttr "lsa_R_Ball_Fk_rotateX.a" "clipLibrary2.cel[0].cev[63].cevr"
		;
connectAttr "lsa_R_Ball_Fk_rotateY.a" "clipLibrary2.cel[0].cev[64].cevr"
		;
connectAttr "lsa_R_Ball_Fk_rotateZ.a" "clipLibrary2.cel[0].cev[65].cevr"
		;
connectAttr "lsa_L_Hip_Fk_rotateX.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "lsa_L_Hip_Fk_rotateY.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "lsa_L_Hip_Fk_rotateZ.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "lsa_L_Knee_Fk_rotateZ.a" "clipLibrary2.cel[0].cev[69].cevr"
		;
connectAttr "lsa_L_Ankle_Fk_rotateX.a" "clipLibrary2.cel[0].cev[70].cevr"
		;
connectAttr "lsa_L_Ankle_Fk_rotateY.a" "clipLibrary2.cel[0].cev[71].cevr"
		;
connectAttr "lsa_L_Ankle_Fk_rotateZ.a" "clipLibrary2.cel[0].cev[72].cevr"
		;
connectAttr "lsa_L_Ball_Fk_rotateX.a" "clipLibrary2.cel[0].cev[73].cevr"
		;
connectAttr "lsa_L_Ball_Fk_rotateY.a" "clipLibrary2.cel[0].cev[74].cevr"
		;
connectAttr "lsa_L_Ball_Fk_rotateZ.a" "clipLibrary2.cel[0].cev[75].cevr"
		;
connectAttr "lsa_R_Ball_IK_Fk_rotateX.a" "clipLibrary2.cel[0].cev[76].cevr"
		;
connectAttr "lsa_R_Ball_IK_Fk_rotateY.a" "clipLibrary2.cel[0].cev[77].cevr"
		;
connectAttr "lsa_R_Ball_IK_Fk_rotateZ.a" "clipLibrary2.cel[0].cev[78].cevr"
		;
connectAttr "lsa_L_Ball_IK_Fk_rotateX.a" "clipLibrary2.cel[0].cev[79].cevr"
		;
connectAttr "lsa_L_Ball_IK_Fk_rotateY.a" "clipLibrary2.cel[0].cev[80].cevr"
		;
connectAttr "lsa_L_Ball_IK_Fk_rotateZ.a" "clipLibrary2.cel[0].cev[81].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_translateX.a" "clipLibrary2.cel[0].cev[82].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_translateY.a" "clipLibrary2.cel[0].cev[83].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[84].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[85].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[86].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[87].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_translateX.a" "clipLibrary2.cel[0].cev[88].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_translateY.a" "clipLibrary2.cel[0].cev[89].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[90].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[91].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[92].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[93].cevr"
		;
connectAttr "animCurveTL112.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL113.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL114.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA287.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA288.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA289.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL115.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL116.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL117.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTA290.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTA291.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTA292.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "lsa_Left_Elbow_Hoop_translateX.a" "clipLibrary2.cel[0].cev[106].cevr"
		;
connectAttr "lsa_Left_Elbow_Hoop_translateY.a" "clipLibrary2.cel[0].cev[107].cevr"
		;
connectAttr "lsa_Left_Elbow_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[108].cevr"
		;
connectAttr "lsa_Right_Elbow_Hoop_translateX.a" "clipLibrary2.cel[0].cev[109].cevr"
		;
connectAttr "lsa_Right_Elbow_Hoop_translateY.a" "clipLibrary2.cel[0].cev[110].cevr"
		;
connectAttr "lsa_Right_Elbow_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[111].cevr"
		;
connectAttr "animCurveTA293.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA294.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA295.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "lsa_L_FK_Shoulder_rotateX.a" "clipLibrary2.cel[0].cev[115].cevr"
		;
connectAttr "lsa_L_FK_Shoulder_rotateY.a" "clipLibrary2.cel[0].cev[116].cevr"
		;
connectAttr "lsa_L_FK_Shoulder_rotateZ.a" "clipLibrary2.cel[0].cev[117].cevr"
		;
connectAttr "animCurveTA299.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "lsa_L_FK_Elbow_rotateZ.a" "clipLibrary2.cel[0].cev[119].cevr"
		;
connectAttr "animCurveTA301.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA302.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA303.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "lsa_L_FK_Wrist_rotateX.a" "clipLibrary2.cel[0].cev[123].cevr"
		;
connectAttr "lsa_L_FK_Wrist_rotateY.a" "clipLibrary2.cel[0].cev[124].cevr"
		;
connectAttr "lsa_L_FK_Wrist_rotateZ.a" "clipLibrary2.cel[0].cev[125].cevr"
		;
connectAttr "animCurveTA307.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA308.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA309.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA310.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA311.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA312.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "lsa_Pelvis_rotateX.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "lsa_Pelvis_rotateY.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "lsa_Pelvis_rotateZ.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "lsa_Thumb_R_rotateX.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "lsa_Thumb_R_rotateY.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "lsa_Thumb_R_rotateZ.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "lsa_Thumb_L_rotateX.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "lsa_Thumb_L_rotateY.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "lsa_Thumb_L_rotateZ.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA322.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA323.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA324.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "lsa_Jaw_rotateX.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "lsa_Jaw_rotateY.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "lsa_Jaw_rotateZ.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA328.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA329.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA330.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA331.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA332.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA333.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "lsa_Head_rotateX.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "lsa_Head_rotateY.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "lsa_Head_rotateZ.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA337.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA338.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA339.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA340.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA341.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA342.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA343.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA344.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA345.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA346.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA347.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA348.a" "clipLibrary2.cel[0].cev[167].cevr";
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
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[10].olnk";
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
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of lsa_idle_skate.ma
