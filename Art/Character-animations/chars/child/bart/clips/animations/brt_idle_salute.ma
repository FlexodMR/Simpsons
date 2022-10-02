//Maya ASCII 4.0 scene
//Name: brt_idle_salute.ma
//Last modified: Tue, May 27, 2003 01:49:14 PM
requires maya "4.0";
requires "p3dDeformer" "2.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_idle_saluteSource";
	setAttr ".ihi" 0;
	setAttr ".du" 90;
	setAttr ".ci" no;
createNode animCurveTL -n "brt_Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTL -n "brt_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTL -n "Motion_Root_translateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 91 ".ktv[0:90]"  0 -0.033880036066693167 1 -0.0056578659711654785 
		2 0.022914500174321457 3 0.023600206427681156 4 0.024255822720683301 5 0.02488027392885369 
		6 0.025472484927718107 7 0.026031380592802359 8 0.026555885799632237 9 0.027044925423733535 
		10 0.027497424340632043 11 0.027912307425853568 12 0.0282884995549239 13 
		0.028624925603368837 14 0.028920510446714162 15 0.02917417896048569 16 0.0293848560202092 
		17 0.029551466501410491 18 0.029672935279615367 19 0.029748187230349603 20 
		0.02977614722913902 21 0.029755740151509395 22 0.02968589087298653 23 0.029565524269096224 
		24 0.029393565215364261 25 0.029168938587316444 26 0.028890569260478571 27 
		0.028557382110376426 28 0.028168302012535812 29 0.027722253842482534 30 0.027218162475742366 
		31 0.026654952787841121 32 0.026031549654304584 33 0.025346877950658552 34 
		0.024599862552428825 35 0.023789428335141197 36 0.022914500174321457 37 0.021634228080706277 
		38 0.019675793153394083 39 0.017140166900453356 40 0.014128320829952565 41 
		0.010741226449960185 42 0.0070798552685446747 43 0.0032451787937745071 44 
		-0.00066183146628184017 45 -0.0045402040035559107 46 -0.0082889673099792224 
		47 -0.011807149877483315 48 -0.014993780197999702 49 -0.017747886763459942 
		50 -0.019968498065795533 51 -0.021554642596938029 52 -0.02266072167940112 
		53 -0.023522521629573384 54 -0.0241611484301987 55 -0.024597708064020934 
		56 -0.024853306513783958 57 -0.02494904976223164 58 -0.024906043792107861 
		59 -0.024745394586156478 60 -0.024488208127121366 61 -0.024155590397746396 
		62 -0.023768647380775443 63 -0.023348485058952369 64 -0.022916209415021049 
		65 -0.02249292643172535 66 -0.022099742091809142 67 -0.021757762378016302 
		68 -0.021488093273090699 69 -0.021311840759776195 70 -0.021250110820816674 
		71 -0.021324009438955991 72 -0.021554642596938029 73 -0.021910507956074795 
		74 -0.022341480567750118 75 -0.022840732499815584 76 -0.023401435820122777 
		77 -0.024016762596523293 78 -0.0246798848968687 79 -0.0253839747890106 80 
		-0.026122204340800564 81 -0.026887745620090192 82 -0.027673770694731065 83 
		-0.028473451632574767 84 -0.029279960501472888 85 -0.030086469369277009 86 
		-0.030886150303838723 87 -0.031672175373009606 88 -0.032437716644641248 89 
		-0.033175946186585245 90 -0.033880036066693167;
createNode animCurveTL -n "animCurveTL86";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 39 0 75 0 90 0;
createNode animCurveTL -n "Motion_Root_translateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 91 ".ktv[0:90]"  0 0 1 0.039872678232483839 2 0.079958671715701146 
		3 0.080376670523315971 4 0.080776931098460014 5 0.081158741407202306 6 0.081521389415611892 
		7 0.08186416308975783 8 0.082186350395709193 9 0.082487239299535026 10 0.082766117767304373 
		11 0.083022273765086294 12 0.083254995258949832 13 0.083463570214964061 14 
		0.083647286599198026 15 0.08380543237772077 16 0.083937295516601354 17 0.084042163981908807 
		18 0.084119325739712231 19 0.084168068756080641 20 0.084187680997083111 21 
		0.084177450428788686 22 0.084136665017266424 23 0.084064612728585356 24 0.083960581528814568 
		25 0.083823859384023106 26 0.083653734260279985 27 0.083449494123654322 28 
		0.083210426940215104 29 0.082935820676031446 30 0.08262496329717238 31 0.082277142769706921 
		32 0.08189164705970417 33 0.081467764133233159 34 0.081004781956362959 35 
		0.080501988495162602 36 0.079958671715701146 37 0.078831074495380071 38 0.076681956474066434 
		39 0.073670379264672251 40 0.069955404480109604 41 0.065696093733290564 42 
		0.061051508637127161 43 0.056180710804531443 44 0.051242761848415509 45 0.046396723381691381 
		46 0.041801657017271128 47 0.037616624368066807 48 0.034000687046990483 49 
		0.03111290666695421 50 0.029112344840870028 51 0.028158063181650018 52 0.027829022598905153 
		53 0.027591927016514195 54 0.027437454180464598 55 0.027356281836743827 56 
		0.027339087731339334 57 0.027376549610238592 58 0.027459345219429054 59 0.027578152304898185 
		60 0.027723648612633437 61 0.027886511888622279 62 0.028057419878852172 63 
		0.028227050329310565 64 0.028386080985984937 65 0.028525189594862731 66 0.028635053901931419 
		67 0.028706351653178457 68 0.028729760594591307 69 0.028695958472157425 70 
		0.028595623031864276 71 0.028419432019699317 72 0.028158063181650018 73 0.027715181453454422 
		74 0.027016188855435691 75 0.02608436819520267 76 0.024943002280364186 77 
		0.023615373918529078 78 0.022124765917306183 79 0.020494461084304333 80 0.018747742227132366 
		81 0.016907892153399114 82 0.014998193670713419 83 0.013041929586684107 84 
		0.011062382708920022 85 0.0090828358450299983 86 0.00712657180262287 87 0.0052168733893074668 
		88 0.0033770234126926386 89 0.0016303046803872023 90 0;
createNode animCurveTA -n "animCurveTA239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 39 0 75 0 90 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 75 1 90 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 75 1 90 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 1;
createNode animCurveTU -n "brt_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 1;
createNode animCurveTA -n "brt_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTL -n "brt_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTL -n "brt_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTL -n "brt_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTL -n "animCurveTL91";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.26454016861507795 6 -0.067412746544994115 
		40 -0.067412746544994115 44 -0.17066996790044647 48 -0.26454016861507795 
		55 -0.26454016861507795 90 -0.26454016861507795;
	setAttr -s 7 ".kit[3:6]"  9 3 3 3;
	setAttr -s 7 ".kot[3:6]"  9 3 3 3;
createNode animCurveTL -n "animCurveTL92";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.2145489688158761 6 0.3285106497598958 
		11 0.3285106497598958 14 0.2145489688158761 40 0.2145489688158761 44 0.28665838024792933 
		48 0.2145489688158761 55 0.2145489688158761 90 0.2145489688158761;
	setAttr -s 9 ".kit[1:8]"  1 1 3 3 9 3 3 
		3;
	setAttr -s 9 ".kot[1:8]"  1 1 3 3 9 3 3 
		3;
	setAttr -s 9 ".kix[1:8]"  0.023678286001086235 0.029788095504045486 
		1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0.99971961975097656 -0.99955624341964722 
		0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  0.02367890439927578 0.029787773266434669 
		1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0.99971961975097656 -0.99955624341964722 
		0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL93";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.064904406754016042 6 -0.02586978501094709 
		40 -0.02586978501094709 44 -0.046316491665288305 48 -0.064904406754016042 
		55 -0.064904406754016042 90 -0.064904406754016042;
	setAttr -s 7 ".kit[3:6]"  9 3 3 3;
	setAttr -s 7 ".kot[3:6]"  9 3 3 3;
createNode animCurveTA -n "animCurveTA243";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 9.1165044857749447 11 9.1165044857749447 
		14 0 40 0 44 11.776212779211161 48 0 55 0 90 0;
	setAttr -s 9 ".kit[1:8]"  1 1 3 3 9 3 9 
		3;
	setAttr -s 9 ".kot[1:8]"  1 1 3 3 9 3 9 
		3;
	setAttr -s 9 ".kix[1:8]"  0.92257142066955566 0.92531466484069824 
		1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0.38582640886306763 -0.37920019030570984 
		0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  0.92257124185562134 0.92531478404998779 
		1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0.3858267068862915 -0.37919992208480835 
		0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA244";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -25.948901905116401 6 -26.564398221047387 
		40 -26.564398221047387 44 -25.875817584681112 48 -25.948901905116401 55 -25.948901905116401 
		90 -25.948901905116401;
	setAttr -s 7 ".kit[1:6]"  1 3 3 3 9 3;
	setAttr -s 7 ".kot[1:6]"  1 3 3 3 9 3;
	setAttr -s 7 ".kix[1:6]"  0.99999946355819702 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  -0.0010167489526793361 0 0 0 0 
		0;
	setAttr -s 7 ".kox[1:6]"  0.99999946355819702 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  -0.0010167489526793361 0 0 0 0 
		0;
createNode animCurveTA -n "animCurveTA245";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 40 0 44 -1.1157329785602927 
		48 0 55 0 90 0;
	setAttr -s 6 ".kit[2:5]"  9 3 9 3;
	setAttr -s 6 ".kot[2:5]"  9 3 9 3;
createNode animCurveTL -n "animCurveTL94";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.21594587158542247 5 0.21594587158542247 
		39 0.21594587158542247 54 0.21594587158542247 75 0.21594587158542247 90 0.21594587158542247;
	setAttr -s 6 ".kit[5]"  9;
	setAttr -s 6 ".kot[5]"  9;
createNode animCurveTL -n "animCurveTL95";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.21454861014623702 5 0.21454861014623702 
		39 0.21454861014623702 54 0.21454861014623702 75 0.21454861014623702 90 0.21454861014623702;
	setAttr -s 6 ".kit[5]"  9;
	setAttr -s 6 ".kot[5]"  9;
createNode animCurveTL -n "animCurveTL96";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.00078430246903575811 5 0.00078430246903575811 
		39 0.00078430246903575811 54 0.00078430246903575811 75 0.00078430246903575811 
		90 0.00078430246903575811;
	setAttr -s 6 ".kit[5]"  9;
	setAttr -s 6 ".kot[5]"  9;
createNode animCurveTA -n "animCurveTA246";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 39 0 54 0 75 0 90 0;
	setAttr -s 6 ".kit[5]"  9;
	setAttr -s 6 ".kot[5]"  9;
createNode animCurveTA -n "animCurveTA247";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 39 0 54 0 75 0 90 0;
	setAttr -s 6 ".kit[5]"  9;
	setAttr -s 6 ".kot[5]"  9;
createNode animCurveTA -n "animCurveTA248";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 39 0 54 0 75 0 90 0;
	setAttr -s 6 ".kit[5]"  9;
	setAttr -s 6 ".kot[5]"  9;
createNode animCurveTA -n "brt_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_Right_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_Right_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_Right_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_Left_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_Left_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_Left_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTL -n "animCurveTL97";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 39 0 75 0 90 0;
createNode animCurveTL -n "animCurveTL98";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 39 0 75 0 90 0;
createNode animCurveTL -n "animCurveTL99";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 5 1 39 1 75 1 90 1;
createNode animCurveTL -n "animCurveTL100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 39 0 75 0 90 0;
createNode animCurveTL -n "animCurveTL101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 39 0 75 0 90 0;
createNode animCurveTL -n "animCurveTL102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 5 1 39 1 75 1 90 1;
createNode animCurveTL -n "animCurveTL103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.076472881617957691 2 0.051721841609497173 
		36 0.051721841609497173 51 -0.048652416673590493 72 -0.048652416673590493 
		90 -0.076472881617957691;
	setAttr -s 6 ".kit[0:5]"  3 1 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  3 1 9 9 9 9;
	setAttr -s 6 ".kix[1:5]"  0.20631389319896698 0.16061177849769592 
		0.11870723962783813 0.42334309220314026 0.21082134544849396;
	setAttr -s 6 ".kiy[1:5]"  0.97848588228225708 -0.98701763153076172 
		-0.99292927980422974 -0.90596944093704224 -0.97752463817596436;
	setAttr -s 6 ".kox[1:5]"  0.20631366968154907 0.16061177849769592 
		0.11870723962783813 0.42334309220314026 0.21082134544849396;
	setAttr -s 6 ".koy[1:5]"  0.97848588228225708 -0.98701763153076172 
		-0.99292927980422974 -0.90596944093704224 -0.97752463817596436;
createNode animCurveTL -n "animCurveTL104";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.96624786942537044 2 0.96277119124265387 
		36 0.96277119124265387 51 0.98724156607821889 72 0.98724156607821889 90 0.96624786942537044;
	setAttr -s 6 ".kit[0:5]"  3 1 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  3 1 1 1 1 9;
	setAttr -s 6 ".kix[1:5]"  0.9588349461555481 0.92722928524017334 
		0.97002363204956055 0.99965745210647583 0.27479737997055054;
	setAttr -s 6 ".kiy[1:5]"  -0.28396397829055786 0.37449407577514648 
		0.24301058053970337 -0.026171106845140457 -0.96150213479995728;
	setAttr -s 6 ".kox[1:5]"  0.95883464813232422 0.92722916603088379 
		0.97002363204956055 0.99965745210647583 0.27479737997055054;
	setAttr -s 6 ".koy[1:5]"  -0.28396508097648621 0.37449443340301514 
		0.24301069974899292 -0.026171106845140457 -0.96150213479995728;
createNode animCurveTL -n "animCurveTL105";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 2 0.18048003326818102 36 0.18048003326818102 
		51 0.063557436244827126 72 0.063557436244827126 90 0;
	setAttr -s 6 ".kit[0:5]"  3 1 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  3 1 1 1 1 9;
	setAttr -s 6 ".kix[1:5]"  0.32710659503936768 0.2533782422542572 
		0.36379548907279968 0.43341431021690369 0.093984946608543396;
	setAttr -s 6 ".kiy[1:5]"  0.94498747587203979 -0.96736729145050049 
		-0.93147885799407959 -0.90119475126266479 -0.99557363986968994;
	setAttr -s 6 ".kox[1:5]"  0.3271065354347229 0.25337803363800049 
		0.3637959361076355 0.43341410160064697 0.093984946608543396;
	setAttr -s 6 ".koy[1:5]"  0.94498747587203979 -0.96736735105514526 
		-0.93147867918014526 -0.90119487047195435 -0.99557363986968994;
createNode animCurveTA -n "animCurveTA261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.62843630316474508 2 3.3487146532831349 
		7 4.1070128466154756 10 0.01355259831790466 72 0 90 -0.62843630316474508;
	setAttr -s 6 ".kit[0:5]"  3 9 3 1 9 9;
	setAttr -s 6 ".kot[0:5]"  3 9 3 1 9 9;
	setAttr -s 6 ".kix[3:5]"  0.9999125599861145 0.99999117851257324 
		0.99983292818069458;
	setAttr -s 6 ".kiy[3:5]"  -0.01322399266064167 -0.004201770294457674 
		-0.018277417868375778;
	setAttr -s 6 ".kox[3:5]"  0.9999125599861145 0.99999117851257324 
		0.99983292818069458;
	setAttr -s 6 ".koy[3:5]"  -0.013223993591964245 -0.004201770294457674 
		-0.018277417868375778;
createNode animCurveTA -n "animCurveTA262";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -5.8284402688137158 2 -6.0176241834076194 
		36 -6.0233499911221591 72 -6.0176241834076194 90 -5.8284402688137158;
	setAttr -s 5 ".kit[0:4]"  3 1 9 1 9;
	setAttr -s 5 ".kot[0:4]"  3 1 9 1 9;
	setAttr -s 5 ".kix[1:4]"  0.99999994039535522 1 0.99999994039535522 
		0.99998486042022705;
	setAttr -s 5 ".kiy[1:4]"  -0.00037686052382923663 0 0.00026358989998698235 
		0.0055030533112585545;
	setAttr -s 5 ".kox[1:4]"  0.99999994039535522 1 0.99999994039535522 
		0.99998486042022705;
	setAttr -s 5 ".koy[1:4]"  -0.00037686029099859297 0 0.00026358981267549098 
		0.0055030533112585545;
createNode animCurveTA -n "animCurveTA263";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.2956360193097458 2 0 36 0.021785275695934248 
		72 0 90 -1.2956360193097458;
	setAttr -s 5 ".kit[0:4]"  3 1 9 1 9;
	setAttr -s 5 ".kot[0:4]"  3 1 9 1 9;
	setAttr -s 5 ".kix[1:4]"  0.99999940395355225 1 0.9999992847442627 
		0.99929052591323853;
	setAttr -s 5 ".kiy[1:4]"  0.0010835318826138973 0 -0.0011886021820828319 
		-0.037661783397197723;
	setAttr -s 5 ".kox[1:4]"  0.99999940395355225 1 0.9999992847442627 
		0.99929052591323853;
	setAttr -s 5 ".koy[1:4]"  0.0010835311841219664 0 -0.0011886026477441192 
		-0.037661783397197723;
createNode animCurveTA -n "brt_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "animCurveTA287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 39 0 75 0 90 0;
createNode animCurveTA -n "animCurveTA288";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 39 0 75 0 90 0;
createNode animCurveTA -n "animCurveTA289";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 39 0 75 0 90 0;
createNode animCurveTL -n "brt_Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 -0.43524234076486068;
createNode animCurveTL -n "brt_Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 -0.82665738350180629;
createNode animCurveTL -n "brt_Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0.27773886459742925;
createNode animCurveTA -n "brt_Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 -1.4207596382280686e-015;
createNode animCurveTA -n "brt_Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 28.652637602052774;
createNode animCurveTA -n "brt_Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 64.676908227303443;
createNode animCurveTL -n "brt_Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0.5198069948790518;
createNode animCurveTL -n "brt_Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 -0.72394202659893114;
createNode animCurveTL -n "brt_Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0.36439499068905612;
createNode animCurveTA -n "brt_Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 7.7976222737965299;
createNode animCurveTA -n "brt_Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 -30.409274105849079;
createNode animCurveTA -n "brt_Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 -64.859940280210878;
createNode animCurveTL -n "animCurveTL112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.8448236677023373 5 -0.8448236677023373 
		39 -0.8448236677023373 75 -0.8448236677023373 90 -0.8448236677023373;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "brt_Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 1.0269179155097397;
createNode animCurveTL -n "animCurveTL114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.097994651149805143 5 -0.097994651149805143 
		39 -0.097994651149805143 75 -0.097994651149805143 90 -0.097994651149805143;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 5.4739599453216474 5 5.4739599453216474 
		39 5.4739599453216474 75 5.4739599453216474 90 5.4739599453216474;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.5874521608419823 5 8.5874521608419823 
		39 8.5874521608419823 75 8.5874521608419823 90 8.5874521608419823;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 74.754744621954103 5 74.754744621954103 
		39 74.754744621954103 75 74.754744621954103 90 74.754744621954103;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.61083301393139333 5 0.61083301393139333 
		39 0.61083301393139333 75 0.61083301393139333 90 0.61083301393139333;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.0176944705789435 5 1.0176944705789435 
		39 1.0176944705789435 75 1.0176944705789435 90 1.0176944705789435;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.14314299916678522 5 0.14314299916678522 
		39 0.14314299916678522 75 0.14314299916678522 90 0.14314299916678522;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.226511010665405 5 16.226511010665405 
		39 16.226511010665405 75 16.226511010665405 90 16.226511010665405;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -8.513966085499284 5 -8.513966085499284 
		39 -8.513966085499284 75 -8.513966085499284 90 -8.513966085499284;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -68.213989601412422 5 -68.213989601412422 
		39 -68.213989601412422 75 -68.213989601412422 90 -68.213989601412422;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "brt_Left_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTL -n "brt_Left_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTL -n "brt_Left_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 -1;
createNode animCurveTL -n "brt_Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 -0.10167917362943303;
createNode animCurveTL -n "brt_Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 -0.40762644910266188;
createNode animCurveTL -n "brt_Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 -0.93129112588482243;
createNode animCurveTA -n "animCurveTA302";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 12.253734489678925 6 17.952385083942943 
		11 5.4542968904609763 14 -47.659706965470363 40 -47.659706965470363 55 179.82989862934852 
		76 179.82989862934852 90 12.253734489678925;
	setAttr -s 8 ".kit[0:7]"  3 9 1 1 1 1 1 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 1 1 1 1 1 
		9;
	setAttr -s 8 ".kix[2:7]"  0.30967602133750916 0.95531511306762695 
		0.99133211374282837 0.99017226696014404 0.98120415210723877 0.15756441652774811;
	setAttr -s 8 ".kiy[2:7]"  -0.95084214210510254 -0.29558929800987244 
		0.1313798576593399 0.13985303044319153 -0.19297255575656891 -0.98750871419906616;
	setAttr -s 8 ".kox[2:7]"  0.30967614054679871 0.95531505346298218 
		0.99133211374282837 0.99017220735549927 0.98120415210723877 0.15756441652774811;
	setAttr -s 8 ".koy[2:7]"  -0.95084208250045776 -0.29558956623077393 
		0.13137994706630707 0.13985338807106018 -0.19297249615192413 -0.98750871419906616;
createNode animCurveTA -n "animCurveTA303";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -65.746751280844961 6 -18.293731402846856 
		11 -5.4404717296323009 14 22.700382531399551 40 22.700382531399551 55 -31.812659581727221 
		76 -31.812659581727221 90 -65.746751280844961;
	setAttr -s 8 ".kit[7]"  9;
	setAttr -s 8 ".kot[7]"  9;
	setAttr -s 8 ".kix[0:7]"  0.98871290683746338 0.51883965730667114 
		0.34949862957000732 0.98970669507980347 0.99186170101165771 0.99957960844039917 
		0.99738490581512451 0.61890196800231934;
	setAttr -s 8 ".kiy[0:7]"  0.14982253313064575 0.85487157106399536 
		0.93693685531616211 0.14311054348945618 -0.12731993198394775 -0.028993319720029831 
		-0.07227257639169693 -0.78546822071075439;
	setAttr -s 8 ".kox[0:7]"  0.98871290683746338 0.51883965730667114 
		0.34949862957000732 0.98970669507980347 0.99186170101165771 0.99957960844039917 
		0.99738490581512451 0.61890196800231934;
	setAttr -s 8 ".koy[0:7]"  0.14982253313064575 0.85487157106399536 
		0.93693685531616211 0.14311084151268005 -0.12731993198394775 -0.028993396088480949 
		-0.072272583842277527 -0.78546822071075439;
createNode animCurveTA -n "animCurveTA304";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 6 12.258629841031491 11 21.444382618454437 
		14 58.704410243670637 40 58.704410243670637 55 -62.741162768370977 76 -62.741162768370977 
		90 0;
	setAttr -s 8 ".kit[0:7]"  3 9 1 1 1 1 1 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 1 1 1 1 1 
		9;
	setAttr -s 8 ".kix[2:7]"  0.58013099431991577 0.99712938070297241 
		0.99039125442504883 0.99639201164245605 0.99119305610656738 0.39204755425453186;
	setAttr -s 8 ".kiy[2:7]"  0.81452316045761108 0.075716361403465271 
		-0.13829372823238373 -0.084870480000972748 0.13242501020431519 0.91994494199752808;
	setAttr -s 8 ".kox[2:7]"  0.58013111352920532 0.99712938070297241 
		0.99039125442504883 0.99639201164245605 0.99119305610656738 0.39204755425453186;
	setAttr -s 8 ".koy[2:7]"  0.81452310085296631 0.075716495513916016 
		-0.13829381763935089 -0.084870509803295135 0.13242501020431519 0.91994494199752808;
createNode animCurveTA -n "animCurveTA305";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.061808866237337522 4 59.125415580460604 
		38 59.125415580460604 53 155.88511190839768 74 155.88511190839768 90 -0.061808866237337522;
	setAttr -s 6 ".kit[0:5]"  3 1 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  3 1 1 1 1 9;
	setAttr -s 6 ".kix[1:5]"  0.9797096848487854 0.98178589344024658 
		0.99048817157745361 0.98632806539535522 0.19229279458522797;
	setAttr -s 6 ".kiy[1:5]"  0.20042191445827484 0.18999062478542328 
		0.13759773969650269 -0.1647937148809433 -0.98133760690689087;
	setAttr -s 6 ".kox[1:5]"  0.9797096848487854 0.98178589344024658 
		0.99048817157745361 0.98632800579071045 0.19229279458522797;
	setAttr -s 6 ".koy[1:5]"  0.20042194426059723 0.18999063968658447 
		0.13759778439998627 -0.16479386389255524 -0.98133760690689087;
createNode animCurveTA -n "animCurveTA306";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -59.058178941076754 4 -34.229098773548557 
		38 -34.229098773548557 45 -15.764328073338868 53 -21.549665585076337 74 -21.549665585076337 
		90 -59.058178941076754;
	setAttr -s 7 ".kit[0:6]"  3 1 1 9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  3 1 1 9 1 1 9;
	setAttr -s 7 ".kix[1:6]"  0.99891531467437744 0.99961972236633301 
		0.91443789005279541 0.99948477745056152 0.99948650598526001 0.63161402940750122;
	setAttr -s 7 ".kiy[1:6]"  0.046563446521759033 0.027575025334954262 
		0.4047262966632843 0.032096009701490402 -0.032041836529970169 -0.77528297901153564;
	setAttr -s 7 ".kox[1:6]"  0.99891531467437744 0.99961972236633301 
		0.91443789005279541 0.99948477745056152 0.99948650598526001 0.63161402940750122;
	setAttr -s 7 ".koy[1:6]"  0.046563386917114258 0.027575025334954262 
		0.4047262966632843 0.032096013426780701 -0.032041862607002258 -0.77528297901153564;
createNode animCurveTA -n "animCurveTA307";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 16.579147429757843 4 -47.282067883653504 
		38 -47.282067883653504 53 -71.937524340490299 74 -71.937524340490299 90 16.579147429757843;
	setAttr -s 6 ".kit[0:5]"  3 1 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  3 1 1 1 1 9;
	setAttr -s 6 ".kix[1:5]"  0.99080955982208252 0.99996286630630493 
		0.99964553117752075 0.995533287525177 0.32632243633270264;
	setAttr -s 6 ".kiy[1:5]"  -0.13526424765586853 0.0086197406053543091 
		-0.026622815057635307 0.094410926103591919 0.9452584981918335;
	setAttr -s 6 ".kox[1:5]"  0.99080955982208252 0.99996286630630493 
		0.99964553117752075 0.995533287525177 0.32632243633270264;
	setAttr -s 6 ".koy[1:5]"  -0.13526427745819092 0.0086197881028056145 
		-0.026622815057635307 0.094411030411720276 0.9452584981918335;
createNode animCurveTA -n "animCurveTA308";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.5572674112203622 5 33.909854877389812 
		39 33.909854877389812 54 55.840424266742943 75 55.840424266742943 90 8.5572674112203622;
	setAttr -s 6 ".kit[0:5]"  3 1 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  3 1 1 1 1 9;
	setAttr -s 6 ".kix[1:5]"  0.99994540214538574 0.99978798627853394 
		0.99916702508926392 0.99954527616500854 0.51818835735321045;
	setAttr -s 6 ".kiy[1:5]"  0.010447703301906586 0.020591143518686295 
		0.040807038545608521 -0.030153380706906319 -0.8552665114402771;
	setAttr -s 6 ".kox[1:5]"  0.99994540214538574 0.99978798627853394 
		0.99916702508926392 0.99954527616500854 0.51818835735321045;
	setAttr -s 6 ".koy[1:5]"  0.010447765700519085 0.020591162145137787 
		0.040807038545608521 -0.030153382569551468 -0.8552665114402771;
createNode animCurveTA -n "animCurveTA309";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 15.711328223519057 5 22.669936532521717 
		39 22.669936532521717 54 59.216717289520766 75 59.216717289520766 90 15.711328223519057;
	setAttr -s 6 ".kit[0:5]"  3 1 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  3 1 1 1 1 9;
	setAttr -s 6 ".kix[1:5]"  0.99944841861724854 0.99763405323028564 
		0.99884212017059326 0.99961411952972412 0.54996377229690552;
	setAttr -s 6 ".kiy[1:5]"  0.033208664506673813 0.068747714161872864 
		0.048107806593179703 -0.027777230367064476 -0.83518850803375244;
	setAttr -s 6 ".kox[1:5]"  0.99944841861724854 0.99763405323028564 
		0.99884212017059326 0.99961411952972412 0.54996377229690552;
	setAttr -s 6 ".koy[1:5]"  0.03320867195725441 0.068747721612453461 
		0.048107799142599106 -0.027777202427387238 -0.83518850803375244;
createNode animCurveTA -n "animCurveTA310";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 -47.111914678482584 75 -47.111914678482584 
		90 0;
	setAttr -s 4 ".kit[0:3]"  3 1 1 9;
	setAttr -s 4 ".kot[0:3]"  3 1 1 9;
	setAttr -s 4 ".kix[1:3]"  0.9992561936378479 0.99997252225875854 
		0.51956409215927124;
	setAttr -s 4 ".kiy[1:3]"  -0.038562264293432236 -0.0074159852229058743 
		0.85443150997161865;
	setAttr -s 4 ".kox[1:3]"  0.9992561936378479 0.99997252225875854 
		0.51956409215927124;
	setAttr -s 4 ".koy[1:3]"  -0.038562308996915817 -0.0074159656651318073 
		0.85443150997161865;
createNode animCurveTA -n "animCurveTA311";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 -14.613992342970471 75 -14.613992342970471 
		90 0;
	setAttr -s 4 ".kit[0:3]"  3 1 1 9;
	setAttr -s 4 ".kot[0:3]"  3 1 1 9;
	setAttr -s 4 ".kix[1:3]"  0.99992835521697998 0.99995344877243042 
		0.89079052209854126;
	setAttr -s 4 ".kiy[1:3]"  -0.011969865299761295 0.0096513843163847923 
		0.45441412925720215;
	setAttr -s 4 ".kox[1:3]"  0.99992835521697998 0.99995344877243042 
		0.89079052209854126;
	setAttr -s 4 ".koy[1:3]"  -0.011969906277954578 0.0096513815224170685 
		0.45441412925720215;
createNode animCurveTA -n "animCurveTA312";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 16.041959237595602 75 16.041959237595602 
		90 0;
	setAttr -s 4 ".kit[0:3]"  3 1 1 9;
	setAttr -s 4 ".kot[0:3]"  3 1 1 9;
	setAttr -s 4 ".kix[1:3]"  0.99998480081558228 0.99999618530273438 
		0.8725171685218811;
	setAttr -s 4 ".kiy[1:3]"  0.0055122175253927708 -0.0027671554125845432 
		-0.48858344554901123;
	setAttr -s 4 ".kox[1:3]"  0.99998480081558228 0.99999618530273438 
		0.8725171685218811;
	setAttr -s 4 ".koy[1:3]"  0.0055122273042798042 -0.002767158905044198 
		-0.48858344554901123;
createNode animCurveTA -n "animCurveTA313";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 24.01551548505519 75 24.01551548505519 
		90 0;
	setAttr -s 4 ".kit[0:3]"  3 1 1 9;
	setAttr -s 4 ".kot[0:3]"  3 1 1 9;
	setAttr -s 4 ".kix[1:3]"  0.99973595142364502 0.99992519617080688 
		0.76634621620178223;
	setAttr -s 4 ".kiy[1:3]"  0.022979326546192169 -0.012230162508785725 
		-0.64242774248123169;
	setAttr -s 4 ".kox[1:3]"  0.99973595142364502 0.99992519617080688 
		0.76634621620178223;
	setAttr -s 4 ".koy[1:3]"  0.022979220375418663 -0.012230166234076023 
		-0.64242774248123169;
createNode animCurveTA -n "animCurveTA314";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 -13.128749329943769 75 -13.128749329943769 
		90 0;
	setAttr -s 4 ".kit[0:3]"  3 1 1 9;
	setAttr -s 4 ".kot[0:3]"  3 1 1 9;
	setAttr -s 4 ".kix[1:3]"  0.99997943639755249 0.99996381998062134 
		0.90908324718475342;
	setAttr -s 4 ".kiy[1:3]"  -0.0064163617789745331 0.0085077118128538132 
		0.41661450266838074;
	setAttr -s 4 ".kox[1:3]"  0.99997943639755249 0.99996381998062134 
		0.90908324718475342;
	setAttr -s 4 ".koy[1:3]"  -0.0064163552597165108 0.0085077174007892609 
		0.41661450266838074;
createNode animCurveTA -n "animCurveTA315";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 -1.1601800433404343 75 -1.1601800433404343 
		90 0;
	setAttr -s 4 ".kit[0:3]"  3 1 1 9;
	setAttr -s 4 ".kot[0:3]"  3 1 1 9;
	setAttr -s 4 ".kix[1:3]"  0.99999982118606567 0.99999946355819702 
		0.99918097257614136;
	setAttr -s 4 ".kiy[1:3]"  -0.00056702259462326765 0.0010172044858336449 
		0.040464755147695541;
	setAttr -s 4 ".kox[1:3]"  0.99999982118606567 0.99999946355819702 
		0.99918097257614136;
	setAttr -s 4 ".koy[1:3]"  -0.00056702201254665852 0.0010172047186642885 
		0.040464755147695541;
createNode animCurveTA -n "animCurveTA316";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 210.60557314878687 5 210.60557314878687 
		39 210.60557314878687 75 210.60557314878687 90 210.60557314878687;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA317";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.722848255843903 5 27.722848255843903 
		39 27.722848255843903 75 27.722848255843903 90 27.722848255843903;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 21.576484776388227 5 21.576484776388227 
		39 21.576484776388227 75 21.576484776388227 90 21.576484776388227;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 39 0 75 0 90 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 39 0 75 0 90 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.080064458283051 5 27.080064458283051 
		39 27.080064458283051 75 27.080064458283051 90 27.080064458283051;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "brt_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 13.994403295754109;
createNode animCurveTA -n "brt_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTA -n "brt_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 13.994403295754109;
createNode animCurveTA -n "animCurveTA331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 39 0 75 0 90 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 39 0 75 0 90 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA333";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.911632519594587 5 8.0351228682589664 
		39 8.0351228682589664 75 8.0351228682589664 90 27.911632519594587;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA334";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 39 0 75 0 90 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA335";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 39 0 75 0 90 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA336";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 39 0 75 0 90 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.65073001024951671 5 2.4931814557479939 
		10 2.5256024164992352 39 2.0255375507194926 54 2.5457218387550293 75 2.5457218387550293 
		90 -0.65073001024951671;
	setAttr -s 7 ".kit[0:6]"  3 1 9 9 9 1 9;
	setAttr -s 7 ".kot[0:6]"  3 1 9 9 9 1 9;
	setAttr -s 7 ".kix[1:6]"  0.99978715181350708 0.99997407197952271 
		1 0.99997138977050781 0.99998307228088379 0.99383276700973511;
	setAttr -s 7 ".kiy[1:6]"  0.020630359649658203 -0.0072015128098428249 
		0.00023942056577652693 0.0075655574910342693 -0.0058134221471846104 -0.11088909953832626;
	setAttr -s 7 ".kox[1:6]"  0.99978715181350708 0.99997407197952271 
		1 0.99997138977050781 0.99998307228088379 0.99383276700973511;
	setAttr -s 7 ".koy[1:6]"  0.020630361512303352 -0.0072015128098428249 
		0.00023942056577652693 0.0075655574910342693 -0.005813423078507185 -0.11088909953832626;
createNode animCurveTA -n "animCurveTA338";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -4.2368721935960929 5 1.4376161429693779 
		10 1.379838787877613 39 2.0445852158784157 54 0 75 0 90 -4.2368721935960929;
	setAttr -s 7 ".kit[0:6]"  3 1 9 9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  3 1 9 9 1 1 9;
	setAttr -s 7 ".kix[1:6]"  0.99984157085418701 0.99995630979537964 
		0.99986523389816284 0.99988138675689697 0.99959546327590942 0.98923975229263306;
	setAttr -s 7 ".kiy[1:6]"  0.017801256850361824 0.0093468939885497093 
		-0.016417831182479858 -0.015400828793644905 -0.028441745787858963 -0.14630335569381714;
	setAttr -s 7 ".kox[1:6]"  0.99984157085418701 0.99995630979537964 
		0.99986523389816284 0.99988138675689697 0.99959546327590942 0.98923975229263306;
	setAttr -s 7 ".koy[1:6]"  0.017801275476813316 0.0093468939885497093 
		-0.016417831182479858 -0.01540082786232233 -0.028441749513149261 -0.14630335569381714;
createNode animCurveTA -n "animCurveTA339";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.6995264082587447 5 -32.484827158299197 
		10 -31.166126956203708 13 -48.832158306233893 39 -47.784626917240303 54 -30.319124875664475 
		75 -30.319124875664475 90 2.6995264082587447;
	setAttr -s 8 ".kit[0:7]"  3 1 1 1 9 1 1 
		9;
	setAttr -s 8 ".kot[0:7]"  3 1 1 1 9 1 1 
		9;
	setAttr -s 8 ".kix[1:7]"  0.99623280763626099 1 0.98843485116958618 
		0.97317135334014893 0.99405473470687866 0.99082118272781372 0.65534490346908569;
	setAttr -s 8 ".kiy[1:7]"  -0.086718864738941193 0.00017553416546434164 
		-0.15164598822593689 0.23008148372173309 0.10888130217790604 0.13517925143241882 
		0.75532978773117065;
	setAttr -s 8 ".kox[1:7]"  0.99623280763626099 1 0.98843485116958618 
		0.97317135334014893 0.99405473470687866 0.99082118272781372 0.65534490346908569;
	setAttr -s 8 ".koy[1:7]"  -0.086718916893005371 0.00017536908853799105 
		-0.15164601802825928 0.23008148372173309 0.10888127982616425 0.13517925143241882 
		0.75532978773117065;
createNode animCurveTA -n "animCurveTA340";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 -0.45033592325219829 10 -0.50105139129288223 
		39 -0.20731775432168639 54 0.06800252582673838 75 0.06800252582673838 90 
		0;
	setAttr -s 7 ".kit[0:6]"  3 1 3 9 1 9 9;
	setAttr -s 7 ".kot[0:6]"  3 1 3 9 1 9 9;
	setAttr -s 7 ".kix[1:6]"  0.99994742870330811 1 0.99997705221176147 
		0.99999982118606567 0.9999995231628418 0.99999719858169556;
	setAttr -s 7 ".kiy[1:6]"  -0.010254132561385632 0 0.0067715710029006004 
		0.00056843564379960299 -0.00098905619233846664 -0.0023737291339784861;
	setAttr -s 7 ".kox[1:6]"  0.99994742870330811 1 0.99997705221176147 
		0.99999982118606567 0.9999995231628418 0.99999719858169556;
	setAttr -s 7 ".koy[1:6]"  -0.010254132561385632 0 0.0067715710029006004 
		0.0005684352945536375 -0.00098905619233846664 -0.0023737291339784861;
createNode animCurveTA -n "animCurveTA341";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 -2.2742080587021074 39 -2.3542719921140205 
		75 -2.3173468450854844 90 0;
	setAttr -s 5 ".kit[0:4]"  3 1 9 1 9;
	setAttr -s 5 ".kot[0:4]"  3 1 9 1 9;
	setAttr -s 5 ".kix[1:4]"  0.99999099969863892 0.99999994039535522 
		0.99999487400054932 0.99674433469772339;
	setAttr -s 5 ".kiy[1:4]"  -0.0042380895465612411 -0.00032267734059132636 
		0.0032073438633233309 0.080627307295799255;
	setAttr -s 5 ".kox[1:4]"  0.99999099969863892 0.99999994039535522 
		0.99999487400054932 0.99674433469772339;
	setAttr -s 5 ".koy[1:4]"  -0.0042380779050290585 -0.00032267734059132636 
		0.0032073415350168943 0.080627307295799255;
createNode animCurveTA -n "animCurveTA342";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 28.501041054758879 10 29.782026702614903 
		13 22.7103101861208 39 22.429124870212235 54 15.61588632302796 75 15.61588632302796 
		90 0;
	setAttr -s 8 ".kit[0:7]"  3 1 3 9 9 9 1 
		9;
	setAttr -s 8 ".kot[0:7]"  3 1 3 9 9 9 1 
		9;
	setAttr -s 8 ".kix[1:7]"  0.93939179182052612 1 0.991302490234375 
		0.99592083692550659 0.99512600898742676 0.99752461910247803 0.87802737951278687;
	setAttr -s 8 ".kiy[1:7]"  0.34284552931785583 0 -0.131602942943573 
		-0.09023120254278183 -0.098611555993556976 -0.070317752659320831 -0.47861036658287048;
	setAttr -s 8 ".kox[1:7]"  0.93939179182052612 1 0.991302490234375 
		0.99592083692550659 0.99512600898742676 0.99752461910247803 0.87802737951278687;
	setAttr -s 8 ".koy[1:7]"  0.34284549951553345 0 -0.131602942943573 
		-0.09023120254278183 -0.098611555993556976 -0.070317752659320831 -0.47861036658287048;
createNode animCurveTA -n "animCurveTA343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 39 0 75 0 90 0;
createNode animCurveTA -n "animCurveTA344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 39 0 75 0 90 0;
createNode animCurveTA -n "animCurveTA345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 6.6786334979782902 5 6.6786334979782902 
		39 6.6786334979782902 75 6.6786334979782902 90 6.6786334979782902;
createNode animCurveTA -n "animCurveTA346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.8903601258661931 5 -1.7056776172831623 
		10 -1.6418898771988881 39 -1.8084469585087437 54 -2.0041214833124159 75 -2.0041214833124159 
		90 -1.8903601258661931;
	setAttr -s 7 ".kit[0:6]"  3 9 3 9 1 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 3 9 1 9 9;
	setAttr -s 7 ".kix[4:6]"  0.99999779462814331 0.99999862909317017 
		0.99999213218688965;
	setAttr -s 7 ".kiy[4:6]"  -0.0020943351555615664 0.0016545896651223302 
		0.0039709894917905331;
	setAttr -s 7 ".kox[4:6]"  0.99999779462814331 0.99999862909317017 
		0.99999213218688965;
	setAttr -s 7 ".koy[4:6]"  -0.0020943332929164171 0.0016545896651223302 
		0.0039709894917905331;
createNode animCurveTA -n "animCurveTA347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.5597289571479034 5 1.4175105380910689 
		10 1.4909341972064571 39 1.2838012273960706 54 0.94970710115351165 75 0.94970710115351165 
		90 2.5597289571479034;
	setAttr -s 7 ".kit[0:6]"  3 3 9 9 9 1 9;
	setAttr -s 7 ".kot[0:6]"  3 3 9 9 9 1 9;
	setAttr -s 7 ".kix[5:6]"  0.99999570846557617 0.9984244704246521;
	setAttr -s 7 ".kiy[5:6]"  0.0029282032046467066 0.05611182376742363;
	setAttr -s 7 ".kox[5:6]"  0.99999570846557617 0.9984244704246521;
	setAttr -s 7 ".koy[5:6]"  0.0029282053001224995 0.05611182376742363;
createNode animCurveTA -n "animCurveTA348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.016811087403604 5 18.529387293123737 
		10 21.042465357957362 13 14.734813574803612 39 14.171539067398646 54 4.1573023859476121 
		75 4.1573023859476121 90 2.016811087403604;
	setAttr -s 8 ".kit[0:7]"  3 9 1 9 9 1 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 1 9 9 1 9 
		9;
	setAttr -s 8 ".kix[2:7]"  0.99996012449264526 0.99239283800125122 
		0.99099940061569214 0.99906229972839355 0.99951577186584473 0.99722027778625488;
	setAttr -s 8 ".kiy[2:7]"  -0.0089332573115825653 -0.12311175465583801 
		-0.13386641442775726 -0.043296042829751968 -0.031117107719182968 -0.074509546160697937;
	setAttr -s 8 ".kox[2:7]"  0.99996012449264526 0.99239283800125122 
		0.99099940061569214 0.99906229972839355 0.99951577186584473 0.99722027778625488;
	setAttr -s 8 ".koy[2:7]"  -0.0089332591742277145 -0.12311175465583801 
		-0.13386641442775726 -0.043296020478010178 -0.031117107719182968 -0.074509546160697937;
createNode animCurveTA -n "animCurveTA349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 39 0 75 0 90 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 39 0 75 0 90 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 33.429092416277157 5 9.310724908012622 
		39 9.310724908012622 75 9.310724908012622 90 33.429092416277157;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 208.43516041205012 5 208.43516041205012 
		39 208.43516041205012 75 208.43516041205012 90 208.43516041205012;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 23.263402056531085 5 23.263402056531085 
		39 23.263402056531085 75 23.263402056531085 90 23.263402056531085;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 20.166277752815617 5 20.166277752815617 
		39 20.166277752815617 75 20.166277752815617 90 20.166277752815617;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 39 0 75 0 90 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 39 0 75 0 90 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.254116939558369 5 17.254116939558369 
		39 17.254116939558369 75 17.254116939558369 90 17.254116939558369;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
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
	setAttr ".o" 5;
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
	setAttr -s 4 ".tx";
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
	setAttr -s 654 ".gn";
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
	setAttr ".w" 640;
	setAttr ".h" 480;
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
connectAttr "brt_idle_saluteSource.st" "clipLibrary2.st[0]";
connectAttr "brt_idle_saluteSource.du" "clipLibrary2.du[0]";
connectAttr "brt_Extra_Attributes_translateX.a" "clipLibrary2.cel[0].cev[0].cevr"
		;
connectAttr "brt_Extra_Attributes_translateY.a" "clipLibrary2.cel[0].cev[1].cevr"
		;
connectAttr "Motion_Root_translateX1.a" "clipLibrary2.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL86.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ1.a" "clipLibrary2.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA239.a" "clipLibrary2.cel[0].cev[5].cevr";
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
connectAttr "animCurveTL91.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL92.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL93.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA243.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA244.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA245.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL94.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL95.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL96.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA246.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA247.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA248.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "brt_Right_Ball_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[32].cevr"
		;
connectAttr "brt_Right_Ball_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[33].cevr"
		;
connectAttr "brt_Right_Ball_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[34].cevr"
		;
connectAttr "brt_Left_Ball_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[35].cevr"
		;
connectAttr "brt_Left_Ball_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[36].cevr"
		;
connectAttr "brt_Left_Ball_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[37].cevr"
		;
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
connectAttr "animCurveTL97.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL98.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL99.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTL100.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTL101.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTL102.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTL103.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL104.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL105.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA261.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA262.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA263.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "brt_R_Hip_Fk_rotateX.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "brt_R_Hip_Fk_rotateY.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "brt_R_Hip_Fk_rotateZ.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "brt_R_Knee_Fk_rotateZ.a" "clipLibrary2.cel[0].cev[59].cevr"
		;
connectAttr "brt_R_Ankle_Fk_rotateX.a" "clipLibrary2.cel[0].cev[60].cevr"
		;
connectAttr "brt_R_Ankle_Fk_rotateY.a" "clipLibrary2.cel[0].cev[61].cevr"
		;
connectAttr "brt_R_Ankle_Fk_rotateZ.a" "clipLibrary2.cel[0].cev[62].cevr"
		;
connectAttr "brt_R_Ball_Fk_rotateX.a" "clipLibrary2.cel[0].cev[63].cevr"
		;
connectAttr "brt_R_Ball_Fk_rotateY.a" "clipLibrary2.cel[0].cev[64].cevr"
		;
connectAttr "brt_R_Ball_Fk_rotateZ.a" "clipLibrary2.cel[0].cev[65].cevr"
		;
connectAttr "brt_L_Hip_Fk_rotateX.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "brt_L_Hip_Fk_rotateY.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "brt_L_Hip_Fk_rotateZ.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "brt_L_Knee_Fk_rotateZ.a" "clipLibrary2.cel[0].cev[69].cevr"
		;
connectAttr "brt_L_Ankle_Fk_rotateX.a" "clipLibrary2.cel[0].cev[70].cevr"
		;
connectAttr "brt_L_Ankle_Fk_rotateY.a" "clipLibrary2.cel[0].cev[71].cevr"
		;
connectAttr "brt_L_Ankle_Fk_rotateZ.a" "clipLibrary2.cel[0].cev[72].cevr"
		;
connectAttr "brt_L_Ball_Fk_rotateX.a" "clipLibrary2.cel[0].cev[73].cevr"
		;
connectAttr "brt_L_Ball_Fk_rotateY.a" "clipLibrary2.cel[0].cev[74].cevr"
		;
connectAttr "brt_L_Ball_Fk_rotateZ.a" "clipLibrary2.cel[0].cev[75].cevr"
		;
connectAttr "brt_R_Ball_IK_Fk_rotateX.a" "clipLibrary2.cel[0].cev[76].cevr"
		;
connectAttr "brt_R_Ball_IK_Fk_rotateY.a" "clipLibrary2.cel[0].cev[77].cevr"
		;
connectAttr "brt_R_Ball_IK_Fk_rotateZ.a" "clipLibrary2.cel[0].cev[78].cevr"
		;
connectAttr "animCurveTA287.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA288.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA289.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "brt_Right_Arm_Hoop_translateX.a" "clipLibrary2.cel[0].cev[82].cevr"
		;
connectAttr "brt_Right_Arm_Hoop_translateY.a" "clipLibrary2.cel[0].cev[83].cevr"
		;
connectAttr "brt_Right_Arm_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[84].cevr"
		;
connectAttr "brt_Right_Arm_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[85].cevr"
		;
connectAttr "brt_Right_Arm_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[86].cevr"
		;
connectAttr "brt_Right_Arm_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[87].cevr"
		;
connectAttr "brt_Left_Arm_Hoop_translateX.a" "clipLibrary2.cel[0].cev[88].cevr"
		;
connectAttr "brt_Left_Arm_Hoop_translateY.a" "clipLibrary2.cel[0].cev[89].cevr"
		;
connectAttr "brt_Left_Arm_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[90].cevr"
		;
connectAttr "brt_Left_Arm_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[91].cevr"
		;
connectAttr "brt_Left_Arm_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[92].cevr"
		;
connectAttr "brt_Left_Arm_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[93].cevr"
		;
connectAttr "animCurveTL112.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "brt_Right_Arm_World_translateY.a" "clipLibrary2.cel[0].cev[95].cevr"
		;
connectAttr "animCurveTL114.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA296.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA297.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA298.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL115.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL116.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL117.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTA299.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTA300.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTA301.a" "clipLibrary2.cel[0].cev[105].cevr";
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
connectAttr "brt_Pelvis_rotateX.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "brt_Pelvis_rotateY.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "brt_Pelvis_rotateZ.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "brt_Thumb_R_rotateX.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "brt_Thumb_R_rotateY.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "brt_Thumb_R_rotateZ.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "brt_Thumb_L_rotateX.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "brt_Thumb_L_rotateY.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "brt_Thumb_L_rotateZ.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA331.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA332.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA333.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA334.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA335.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA336.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA337.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA338.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA339.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA340.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA341.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA342.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA343.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA344.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA345.a" "clipLibrary2.cel[0].cev[155].cevr";
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
// End of brt_idle_salute.ma
