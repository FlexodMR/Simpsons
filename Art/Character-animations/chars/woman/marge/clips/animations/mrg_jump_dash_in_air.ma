//Maya ASCII 4.0 scene
//Name: mrg_jump_dash_in_air.ma
//Last modified: Tue, Oct 01, 2002 05:20:33 PM
requires maya "4.0";
requires "p3dmayaexp" "18.5";
requires "p3dSimpleShader" "18.5";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_jump_dash_in_airSource";
	setAttr ".ihi" 0;
	setAttr ".du" 12;
	setAttr ".ci" no;
createNode animCurveTL -n "mrg_Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "mrg_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.025084102686805086 1 0.025084102686805086 
		2 0.025084102686805086 3 0.026062624325348952 4 0.027693493722922066 5 0.028019667602436685 
		6 0.025084102686805086 7 0.019039665750767956 8 0.011540551196332308 9 0.0028817071873098888 
		10 -0.0066419181124875645 11 -0.016735376539248323 12 -0.02710371992916065;
createNode animCurveTL -n "mrg_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1.1387181088027776 1 1.3746834768767888 
		2 1.7100610206089411 3 2.2647332636361281 4 2.9023231070436455 5 3.5187020890658589 
		6 4.0097417479371318 7 4.3734949607608771 8 4.6852474496430956 9 4.9567200203220452 
		10 5.199633478535981 11 5.4257086300231592 12 5.6466662805218348;
createNode animCurveTA -n "mrg_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "mrg_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "mrg_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "mrg_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "mrg_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "mrg_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "mrg_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "mrg_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.049117372191673656 1 -0.052570539146246993 
		2 -0.055756169333899035 3 -0.053062135351874026 4 -0.047456532682744634 5 
		-0.046027987670861609 6 -0.05586512666057579 7 -0.079524284336398923 8 -0.11185864177270516 
		9 -0.14840209489863887 10 -0.1846885396433445 11 -0.21625187193596632 12 
		-0.22214356708911839;
createNode animCurveTL -n "Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.21806813582577098 1 0.16062236280387945 
		2 0.15010445350194862 3 0.2058700263408246 4 0.28811726112117092 5 0.36742613267515412 
		6 0.41437661583494317 7 0.40113549903826817 8 0.33773266505406752 9 0.25154273021132406 
		10 0.16994031083901745 11 0.12030002326612885 12 0.10853937891124081;
createNode animCurveTL -n "Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.86041086687988455 1 1.1126483504162907 
		2 1.5731535088658313 3 2.2836368890294745 4 3.0949720082999339 5 3.9074380399192905 
		6 4.6213141571296257 7 5.2224002332239676 8 5.772319603155422 9 6.2850866326562009 
		10 6.7747156874585084 11 7.2552211332945529 12 7.5050047304092633;
createNode animCurveTA -n "animCurveTA728";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 50.024119495848225 1 76.25825721883065 
		2 91.765870245776981 3 87.480534819943244 4 77.150916274583921 5 62.820077812101673 
		6 46.531082634899178 7 27.757447575585022 8 5.9526933140376119 9 -16.87011117643571 
		10 -38.69789692252759 11 -57.517594950930636 12 -53.336704851844473;
createNode animCurveTA -n "animCurveTA729";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0;
createNode animCurveTA -n "animCurveTA730";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0;
createNode animCurveTL -n "Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.18579966735506592 1 0.19594972726223284 
		2 0.19961575648113566 3 0.18557761247276283 4 0.16578638474762411 5 0.14518476219122248 
		6 0.12871543368906102 7 0.11566063443938113 8 0.1026885481897087 9 0.090820786649473947 
		10 0.081078961528106994 11 0.074484684535038051 12 0.072059567379697237;
createNode animCurveTL -n "Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.49193517478611692 1 0.43560437322277962 
		2 0.3999078120373018 3 0.37850802457943489 4 0.36420678729620426 5 0.34967452481127964 
		6 0.32758166174833236 7 0.26344617916445856 8 0.15541798211164265 9 0.045115381205888275 
		10 -0.025843312936802625 11 -0.015839789700426554 12 0.11674426153101904;
createNode animCurveTL -n "Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.80521394842601124 1 1.1031585249757914 
		2 1.6057104121857015 3 2.4977384142189756 4 3.541558961572056 5 4.5458854602962386 
		6 5.3194313164428211 7 5.8974053960080788 8 6.4259842005724526 9 6.8803325895634773 
		10 7.2356154224086895 11 7.466997558535625 12 7.5496438573718159;
createNode animCurveTA -n "animCurveTA731";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 113.21120007869165 1 107.5303015790881 
		2 96.458941847380999 3 73.038470978481129 4 44.978899935861101 5 18.111835107730752 
		6 -1.7311171177000968 7 -14.048414812800631 8 -22.978882521602099 9 -29.651463563387818 
		10 -35.195101257441102 11 -40.738738923045268 12 -47.411319879483621;
createNode animCurveTA -n "animCurveTA732";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 1.1439446909577464 2 1.7014789694155465 
		3 1.0009287164675305 4 -0.14740428445728446 5 -1.2797874113254983 6 -1.9324880421037114 
		7 -2.0583197090919438 8 -1.9674147259648769 9 -1.7320186427511057 10 -1.4243770094792243 
		11 -1.1167353761778265 12 -0.88133929287550627;
createNode animCurveTA -n "animCurveTA733";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0.3029971366537077 2 0.54389970145120459 
		3 0.62324384009577538 4 0.63627874074283475 5 0.68879025806817951 6 0.88656424674760648 
		7 1.2370464412645179 8 1.6608623026729834 9 2.133567275504801 10 2.6307168042917684 
		11 3.1278663335656818 12 3.6005713078583419;
createNode animCurveTA -n "mrg_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "mrg_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "mrg_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "mrg_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "mrg_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "mrg_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "mrg_Right_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "mrg_Right_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "mrg_Right_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "mrg_Left_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "mrg_Left_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "mrg_Left_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 12 0.015017241321288224;
createNode animCurveTL -n "animCurveTL259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.24354617521346231 2 0.24354617521346231 
		6 0.24354617521346231 12 0.49949286214571587;
createNode animCurveTL -n "animCurveTL260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.73266363114951272 2 0.73266363114951272 
		6 0.73266363114951272 12 0.50034176497263683;
createNode animCurveTL -n "animCurveTL261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 12 0.11641540109138682;
createNode animCurveTL -n "animCurveTL262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.72172207365063845 2 0.72172207365063845 
		6 0.72172207365063845 12 0.37075848534494549;
createNode animCurveTL -n "animCurveTL263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.39818034372871203 2 0.39818034372871203 
		6 0.39818034372871203 12 0.64196267648156669;
createNode animCurveTL -n "Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.03056236763751306 1 0.03056236763751306 
		2 0.03056236763751306 3 0.03175459438095446 4 0.033741638953356794 5 0.034139047867837266 
		6 0.03056236763751306 7 0.023197850512565076 8 0.014060960154950342 9 0.0035110601954502709 
		10 -0.0080924857351537399 11 -0.020390314006080299 12 -0.03302306098654801;
createNode animCurveTL -n "Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.88942900026958005 1 0.87602664634378136 
		2 0.8626242919419187 3 0.84922193715920447 4 0.83581958209085216 5 0.82241722683207419 
		6 0.80901487147808382 7 0.79561251612409356 8 0.78221016086531536 9 0.76880780579696306 
		10 0.75540545101424894 11 0.74200309661238617 12 0.72860074268658737;
createNode animCurveTL -n "Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1.387409464522358 1 1.6749086993501816 
		2 2.0835313204934085 3 2.7593417021275957 4 3.5361785473385359 5 4.2871721661977125 
		6 4.8854528687766052 7 5.3286482885391688 8 5.7084862399337784 9 6.0392473045085602 
		10 6.3352120638116389 11 6.6106610993911401 12 6.879874992795183;
createNode animCurveTA -n "animCurveTA746";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 17.005118065408293 1 13.610495101554037 
		2 8.3407475718963671 3 -1.3127000847500252 4 -12.638531321168729 5 -23.432283215333907 
		6 -31.489492845219729 7 -36.628094277731329 8 -40.432214838812392 9 -43.346681494994925 
		10 -45.816321212810948 11 -48.285960958792451 12 -51.200427699471433;
createNode animCurveTA -n "animCurveTA747";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 16.71413050451596 1 15.471193073722649 
		2 13.541680570055405 3 9.8700060281643829 4 5.4946070327456757 5 1.496794844136661 
		6 -1.0421192773252748 7 -2.043626129298485 8 -2.3128256463729304 9 -2.093820273608638 
		10 -1.630712456065633 11 -1.1676046388039423 12 -0.94859926688359075;
createNode animCurveTA -n "animCurveTA748";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 4.545042700459728 1 4.2336296456006846 
		2 3.7501979423063525 3 2.8242296012430659 4 1.7179159418273471 5 0.71426495181257499 
		6 0.096284618952130835 7 -0.11583247740246436 8 -0.13372644501931261 9 -0.022138326824473437 
		10 0.15419083425599397 11 0.33051999529602966 12 0.44210811336957534;
createNode animCurveTA -n "mrg_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.040709616517141604;
createNode animCurveTA -n "mrg_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.831398321977693;
createNode animCurveTA -n "mrg_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.7337164321498379;
createNode animCurveTA -n "mrg_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.5673169553733399;
createNode animCurveTA -n "mrg_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.9383831660683679;
createNode animCurveTA -n "mrg_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00040252039393781289;
createNode animCurveTA -n "mrg_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.1571952141288731;
createNode animCurveTA -n "mrg_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "mrg_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "mrg_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.0034456079181433771;
createNode animCurveTA -n "mrg_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.040473860579884571;
createNode animCurveTA -n "mrg_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.8313984519406281;
createNode animCurveTA -n "mrg_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.733716455368874;
createNode animCurveTA -n "mrg_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.5673170049738836;
createNode animCurveTA -n "mrg_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.9383298724540099;
createNode animCurveTA -n "mrg_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00017158844849065349;
createNode animCurveTA -n "mrg_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.157195188032677;
createNode animCurveTA -n "mrg_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "mrg_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "mrg_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.0034456079182833216;
createNode animCurveTA -n "animCurveTA769";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.5801482445824764 2 -2.4438834762883364 
		6 -0.2770852798837723 12 -0.2770852798837723;
createNode animCurveTA -n "animCurveTA770";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.2133692590006788 2 2.6592667151031826 
		6 3.387649532337587 12 3.387649532337587;
createNode animCurveTA -n "animCurveTA771";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -47.102861458702762 2 -44.137031448171832 
		6 -2.379897363697026 12 -2.379897363697026;
createNode animCurveTA -n "animCurveTA772";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.15553530681976535 2 0.15553530681976535 
		6 0.15553530681976535 12 0.15553530681976535;
createNode animCurveTA -n "animCurveTA773";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.36354176124207516 2 -0.36354176124207516 
		6 -0.36354176124207516 12 -0.36354176124207516;
createNode animCurveTA -n "animCurveTA774";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 5.3250602596476986 2 5.3250602596476986 
		6 5.3250602596476986 12 5.3250602596476986;
createNode animCurveTL -n "animCurveTL267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.98872819052200589 2 -0.98872819052200589 
		6 -0.98872819052200589 12 -0.98872819052200589;
createNode animCurveTL -n "animCurveTL268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.019519870042852914 2 -0.019519870042852914 
		6 -0.019519870042852914 12 -0.019519870042852914;
createNode animCurveTL -n "animCurveTL269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.020013375596438072 2 -0.020013375596438072 
		6 -0.020013375596438072 12 -0.020013375596438072;
createNode animCurveTA -n "animCurveTA775";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 12 0;
createNode animCurveTA -n "animCurveTA776";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 12 0;
createNode animCurveTA -n "animCurveTA777";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 12 0;
createNode animCurveTL -n "animCurveTL270";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.98872754407817198 2 0.98872754407817198 
		6 0.98872754407817198 12 0.98872754407817198;
createNode animCurveTL -n "animCurveTL271";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.019514335421655121 2 -0.019514335421655121 
		6 -0.019514335421655121 12 -0.019514335421655121;
createNode animCurveTL -n "animCurveTL272";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.020013361448308328 2 -0.020013361448308328 
		6 -0.020013361448308328 12 -0.020013361448308328;
createNode animCurveTA -n "animCurveTA778";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 12 0;
createNode animCurveTA -n "animCurveTA779";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 12 0;
createNode animCurveTA -n "animCurveTA780";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 12 0;
createNode animCurveTL -n "mrg_Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.2139909955983827;
createNode animCurveTL -n "mrg_Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.6075959259075336;
createNode animCurveTL -n "mrg_Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 16.188314819097791;
createNode animCurveTA -n "mrg_Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.4651808712913121;
createNode animCurveTA -n "mrg_Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 9.1496298294511842;
createNode animCurveTA -n "mrg_Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 15.907745061866969;
createNode animCurveTL -n "mrg_Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0478226883521298;
createNode animCurveTL -n "mrg_Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.4562957799775118;
createNode animCurveTL -n "mrg_Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 17.317421545115735;
createNode animCurveTA -n "mrg_Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.6967238076545499;
createNode animCurveTA -n "mrg_Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -17.905815273786772;
createNode animCurveTA -n "mrg_Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -17.044808664904625;
createNode animCurveTL -n "animCurveTL279";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 12 0;
createNode animCurveTL -n "animCurveTL280";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 12 0;
createNode animCurveTL -n "animCurveTL281";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1 2 -1 6 -1 12 -1;
createNode animCurveTL -n "animCurveTL282";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 12 0;
createNode animCurveTL -n "animCurveTL283";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 12 0;
createNode animCurveTL -n "animCurveTL284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1 2 -1 6 -1 12 -1;
createNode animCurveTA -n "animCurveTA787";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -67.792131539496978 2 -92.762398791111991 
		6 -92.595877449370889 12 -103.58646321742303;
createNode animCurveTA -n "animCurveTA788";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -27.10559385654599 2 62.140006124938203 
		6 22.376001670689305 12 59.900555116451642;
createNode animCurveTA -n "animCurveTA789";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 69.297314869958157 2 65.356218890313173 
		6 -3.4309763204389219 12 -33.811307132468642;
createNode animCurveTA -n "animCurveTA790";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -43.821767397958219 2 -95.437716397796393 
		6 -55.608371841431328 12 -104.7842169990904;
createNode animCurveTA -n "animCurveTA791";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -41.866784192438274 2 55.972564310993548 
		6 15.045218595018964 12 60.701671665603016;
createNode animCurveTA -n "animCurveTA792";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 55.020511381782029 2 59.182821014115724 
		6 10.454068181153136 12 -41.759695376174811;
createNode animCurveTA -n "animCurveTA793";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 59.885923337858159 2 13.07006849586902 
		6 37.37060327344804 12 13.520144119786524;
createNode animCurveTA -n "animCurveTA794";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 50.895849135732625 2 9.0203515410801671 
		6 38.904569403859057 12 19.816098442803629;
createNode animCurveTA -n "animCurveTA795";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 14.849434068729675 2 14.849434068729675 
		6 14.849434068729675 12 14.849434068729675;
createNode animCurveTA -n "animCurveTA796";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.051608316401883209 2 0.051608316401883209 
		6 0.051608316401883209 12 0.051608316401883209;
createNode animCurveTA -n "animCurveTA797";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.8225462689462448 2 1.8225462689462448 
		6 1.8225462689462448 12 1.8225462689462448;
createNode animCurveTA -n "animCurveTA798";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 14.859570486861982 2 14.859570486861982 
		6 14.859570486861982 12 41.73305362505554;
createNode animCurveTA -n "animCurveTA799";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.052172032759606073 2 0.052172032759606073 
		6 0.052172032759606073 12 9.7572732770799497;
createNode animCurveTA -n "animCurveTA800";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.8225558374727127 2 1.8225558374727127 
		6 1.8225558374727127 12 10.373625078774515;
createNode animCurveTA -n "animCurveTA801";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -60.680000000000007 6 -68.646546621500605;
createNode animCurveTA -n "animCurveTA802";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 12.356 6 12.015850196970904;
createNode animCurveTA -n "animCurveTA803";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.110465504305042 6 10.092999771388492;
createNode animCurveTA -n "animCurveTA804";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -20.551139383726671 2 -20.551139383726671 
		6 -20.551139383726671 12 -20.551139383726671;
createNode animCurveTA -n "animCurveTA805";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.0722483700821352 2 3.0722483700821352 
		6 3.0722483700821352 12 3.0722483700821352;
createNode animCurveTA -n "animCurveTA806";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 40.385087435566923 2 40.385087435566923 
		6 40.385087435566923 12 40.385087435566923;
	setAttr -s 4 ".kit[2:3]"  9 3;
	setAttr -s 4 ".kot[2:3]"  9 3;
createNode animCurveTA -n "mrg_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "mrg_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "mrg_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA810";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  6 0;
createNode animCurveTA -n "animCurveTA811";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  6 0;
createNode animCurveTA -n "animCurveTA812";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  6 -9.5337869981145538;
createNode animCurveTA -n "animCurveTA813";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  6 0;
createNode animCurveTA -n "animCurveTA814";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  6 0;
createNode animCurveTA -n "animCurveTA815";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  6 11.458979054182175;
createNode animCurveTA -n "animCurveTA816";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 12 0;
createNode animCurveTA -n "animCurveTA817";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 12 0;
createNode animCurveTA -n "animCurveTA818";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 16.815115114639937 2 16.815115114639937 
		6 16.815115114639937 12 16.815115114639937;
	setAttr -s 4 ".kit[2:3]"  9 3;
	setAttr -s 4 ".kot[2:3]"  9 3;
createNode animCurveTA -n "animCurveTA819";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 12 0;
createNode animCurveTA -n "animCurveTA820";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 12 0;
createNode animCurveTA -n "animCurveTA821";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 12 0;
createNode animCurveTA -n "animCurveTA822";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -7.8488318321418218 2 -6.7542884668359422 
		6 -1.722656132605406 12 -1.5160754208546805;
createNode animCurveTA -n "animCurveTA823";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.28957704637835974 2 0.066607887862941043 
		6 -0.95838463759339543 12 -1.2600215722467143;
createNode animCurveTA -n "animCurveTA824";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.19814059001683229 2 3.4932684931313434 
		6 20.462730686018006 12 9.8218732634003718;
createNode animCurveTA -n "animCurveTA825";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.368371505523315 2 1.4542626308673925 
		6 2.3133856289641028 12 2.7848723431010085;
createNode animCurveTA -n "animCurveTA826";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.3046095840573373 2 2.2465907498595747 
		6 1.835303679842897 12 1.0320883585182181;
createNode animCurveTA -n "animCurveTA827";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -24.335372748829869 2 -21.681719082039709 
		6 10.963497901140434 12 42.006015419987435;
createNode animCurveTA -n "animCurveTA828";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 12 0;
createNode animCurveTA -n "animCurveTA829";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 12 0;
createNode animCurveTA -n "animCurveTA830";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 12 0;
createNode animCurveTA -n "animCurveTA831";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -9.9121571890715732 2 -7.887787193800909 
		6 1.4182719624174749 12 1.32725822696544;
createNode animCurveTA -n "animCurveTA832";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 6.1183128835401304 2 5.0896412973304965 
		6 0.36082243316831419 12 0.61653482414406358;
createNode animCurveTA -n "animCurveTA833";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 20.705857363312237 2 21.203309525495904 
		6 23.490104523738605 12 12.849659235321809;
createNode animCurveTA -n "animCurveTA834";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -20.551139383726671 2 -20.551139383726671 
		6 -20.551139383726671 12 -20.551139383726671;
createNode animCurveTA -n "animCurveTA835";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.0722483700821352 2 3.0722483700821352 
		6 3.0722483700821352 12 3.0722483700821352;
createNode animCurveTA -n "animCurveTA836";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 75.883244218680389 2 75.883244218680389 
		6 75.883483181626644 12 75.883244218680389;
	setAttr -s 4 ".kit[2:3]"  9 3;
	setAttr -s 4 ".kot[2:3]"  9 3;
createNode animCurveTA -n "animCurveTA837";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -60.679962459776895 2 -60.679962459776895 
		6 -60.679962459776895 12 -60.679962459776895;
createNode animCurveTA -n "animCurveTA838";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 12.355514613247321 2 12.355514613247321 
		6 12.355514613247321 12 12.355514613247321;
createNode animCurveTA -n "animCurveTA839";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 13.110465504305042 2 13.110465504305042 
		6 13.110465504305042 12 13.110465504305042;
createNode animCurveTA -n "animCurveTA840";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 12 0;
createNode animCurveTA -n "animCurveTA841";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 12 0;
createNode animCurveTA -n "animCurveTA842";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 17.026486028044062 2 17.026486028044062 
		6 17.026486028044062 12 17.026486028044062;
	setAttr -s 4 ".kit[2:3]"  9 3;
	setAttr -s 4 ".kot[2:3]"  9 3;
createNode animCurveTA -n "animCurveTA843";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.3965921093841194 1 1.5246827226067685 
		6 0.71267184627082159 12 0.67391851610520792;
createNode animCurveTA -n "animCurveTA844";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.2798874529316699 1 2.4056993198888903 
		6 0.56568474759276766 12 0.61133866217104205;
createNode animCurveTA -n "animCurveTA845";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -26.825138106045873 1 -26.255521795947523 
		6 36.926536539247046 12 33.154921915654533;
createNode animCurveTA -n "animCurveTA846";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.6797419716942654 1 -1.7246148637282368 
		6 0.82744191513868348 12 0.4028508836256261;
createNode animCurveTA -n "animCurveTA847";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 6.7524382056152747 1 7.0425273117337879 
		6 0.37846231743247505 12 0.81584681463186515;
createNode animCurveTA -n "animCurveTA848";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -41.322946141081978 2 -52.729892846101755 
		7 36.925751194316234 12 4.5364717448465255;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA849";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -4.6332206710526611 1 -4.8479044990167308 
		6 0.87969678295163023 12 0.48371560388978996;
createNode animCurveTA -n "animCurveTA850";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -3.4383576363288091 1 -3.5590173614152056 
		6 0.23242569982137146 12 0.77066024686484236;
createNode animCurveTA -n "animCurveTA851";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -15.078676163973226 3 -25.118530099954718 
		8 36.924802662595773 12 3.7792306495862502;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode clipLibrary -n "clipLibrary1";
	setAttr -s 177 ".cel[0].cev";
	setAttr ".cd[0].cm" -type "characterMapping" 177 "Extra_Attributes.translateX" 
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
		2 118 "Middle_L.rotateZ" 2 119 "hair_1.rotateX" 2 120 "hair_1.rotateY" 
		2 121 "hair_1.rotateZ" 2 122 "hair_2.rotateX" 2 123 "hair_2.rotateY" 
		2 124 "hair_2.rotateZ" 2 125 "hair_3.rotateX" 2 126 "hair_3.rotateY" 
		2 127 "hair_3.rotateZ" 2 128  ;
	setAttr ".cd[0].cim" -type "Int32Array" 177 0 1 2 3
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
		 158 159 160 161 162 163 164 165 166 167 168
		 169 170 171 172 173 174 175 176 ;
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
select -ne :initialShadingGroup;
	setAttr -k on ".nds";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".outf" 23;
	setAttr ".an" yes;
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
connectAttr "mrg_jump_dash_in_airSource.st" "clipLibrary1.st[0]";
connectAttr "mrg_jump_dash_in_airSource.du" "clipLibrary1.du[0]";
connectAttr "mrg_Extra_Attributes_translateX.a" "clipLibrary1.cel[0].cev[0].cevr"
		;
connectAttr "mrg_Extra_Attributes_translateY.a" "clipLibrary1.cel[0].cev[1].cevr"
		;
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "mrg_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "mrg_Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_FK_RFoot.a" "clipLibrary1.cel[0].cev[6].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_FK_LFoot.a" "clipLibrary1.cel[0].cev[7].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary1.cel[0].cev[8].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary1.cel[0].cev[9].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_FK_RArm.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_FK_LArm.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "mrg_Hoop_Root_rotateX.a" "clipLibrary1.cel[0].cev[14].cevr"
		;
connectAttr "mrg_Hoop_Root_rotateY.a" "clipLibrary1.cel[0].cev[15].cevr"
		;
connectAttr "mrg_Hoop_Root_rotateZ.a" "clipLibrary1.cel[0].cev[16].cevr"
		;
connectAttr "mrg_Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "mrg_Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "mrg_Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
connectAttr "Right_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[20].cevr"
		;
connectAttr "Right_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[21].cevr"
		;
connectAttr "Right_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[22].cevr"
		;
connectAttr "animCurveTA728.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA729.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA730.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "Left_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[26].cevr"
		;
connectAttr "Left_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[27].cevr"
		;
connectAttr "Left_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[28].cevr"
		;
connectAttr "animCurveTA731.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA732.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA733.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "mrg_Right_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[32].cevr"
		;
connectAttr "mrg_Right_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[33].cevr"
		;
connectAttr "mrg_Right_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[34].cevr"
		;
connectAttr "mrg_Left_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[35].cevr"
		;
connectAttr "mrg_Left_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[36].cevr"
		;
connectAttr "mrg_Left_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[37].cevr"
		;
connectAttr "mrg_Right_Toe_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[38].cevr"
		;
connectAttr "mrg_Right_Toe_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[39].cevr"
		;
connectAttr "mrg_Right_Toe_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[40].cevr"
		;
connectAttr "mrg_Left_Toe_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[41].cevr"
		;
connectAttr "mrg_Left_Toe_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[42].cevr"
		;
connectAttr "mrg_Left_Toe_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[43].cevr"
		;
connectAttr "animCurveTL258.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL259.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL260.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL261.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL262.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL263.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "Character_Hoop_translateX.a" "clipLibrary1.cel[0].cev[50].cevr"
		;
connectAttr "Character_Hoop_translateY.a" "clipLibrary1.cel[0].cev[51].cevr"
		;
connectAttr "Character_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[52].cevr"
		;
connectAttr "animCurveTA746.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA747.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA748.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "mrg_R_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "mrg_R_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "mrg_R_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "mrg_R_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[59].cevr"
		;
connectAttr "mrg_R_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[60].cevr"
		;
connectAttr "mrg_R_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[61].cevr"
		;
connectAttr "mrg_R_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[62].cevr"
		;
connectAttr "mrg_R_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[63].cevr"
		;
connectAttr "mrg_R_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[64].cevr"
		;
connectAttr "mrg_R_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[65].cevr"
		;
connectAttr "mrg_L_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "mrg_L_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "mrg_L_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "mrg_L_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[69].cevr"
		;
connectAttr "mrg_L_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[70].cevr"
		;
connectAttr "mrg_L_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[71].cevr"
		;
connectAttr "mrg_L_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[72].cevr"
		;
connectAttr "mrg_L_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[73].cevr"
		;
connectAttr "mrg_L_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[74].cevr"
		;
connectAttr "mrg_L_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[75].cevr"
		;
connectAttr "animCurveTA769.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA770.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA771.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA772.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA773.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA774.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL267.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL268.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL269.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA775.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA776.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA777.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL270.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL271.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL272.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA778.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA779.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA780.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "mrg_Right_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[94].cevr"
		;
connectAttr "mrg_Right_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[95].cevr"
		;
connectAttr "mrg_Right_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[96].cevr"
		;
connectAttr "mrg_Right_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[97].cevr"
		;
connectAttr "mrg_Right_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[98].cevr"
		;
connectAttr "mrg_Right_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[99].cevr"
		;
connectAttr "mrg_Left_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[100].cevr"
		;
connectAttr "mrg_Left_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[101].cevr"
		;
connectAttr "mrg_Left_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[102].cevr"
		;
connectAttr "mrg_Left_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[103].cevr"
		;
connectAttr "mrg_Left_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[104].cevr"
		;
connectAttr "mrg_Left_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[105].cevr"
		;
connectAttr "animCurveTL279.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL280.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL281.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL282.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL283.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL284.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA787.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA788.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA789.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA790.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA791.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA792.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA793.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA794.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA795.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA796.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA797.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA798.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA799.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA800.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA801.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA802.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA803.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA804.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA805.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA806.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "mrg_Pelvis_rotateX.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "mrg_Pelvis_rotateY.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "mrg_Pelvis_rotateZ.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA810.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA811.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA812.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA813.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA814.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA815.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA816.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA817.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA818.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA819.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA820.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA821.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA822.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA823.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA824.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA825.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA826.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA827.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA828.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA829.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA830.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA831.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA832.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA833.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA834.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA835.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA836.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA837.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA838.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA839.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA840.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA841.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA842.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr "animCurveTA843.a" "clipLibrary1.cel[0].cev[168].cevr";
connectAttr "animCurveTA844.a" "clipLibrary1.cel[0].cev[169].cevr";
connectAttr "animCurveTA845.a" "clipLibrary1.cel[0].cev[170].cevr";
connectAttr "animCurveTA846.a" "clipLibrary1.cel[0].cev[171].cevr";
connectAttr "animCurveTA847.a" "clipLibrary1.cel[0].cev[172].cevr";
connectAttr "animCurveTA848.a" "clipLibrary1.cel[0].cev[173].cevr";
connectAttr "animCurveTA849.a" "clipLibrary1.cel[0].cev[174].cevr";
connectAttr "animCurveTA850.a" "clipLibrary1.cel[0].cev[175].cevr";
connectAttr "animCurveTA851.a" "clipLibrary1.cel[0].cev[176].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[8].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[13].llnk";
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
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of mrg_jump_dash_in_air.ma
