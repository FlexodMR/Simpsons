//Maya ASCII 4.0 scene
//Name: apu_run_into_person.ma
//Last modified: Wed, Oct 09, 2002 02:50:43 PM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "apu_run_into_personSource";
	setAttr ".ihi" 0;
	setAttr ".du" 23;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "animCurveTL2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0.021611233900292327 1 0.011029440065790024 
		2 -0.00015702748660985274 3 -0.010134147117040205 4 -0.017087897185633943 
		5 -0.02071195600299422 6 -0.021914662624208298 7 -0.020703986526135188 8 
		-0.017087897185633943 9 -0.0069198657320212291 10 0.011808937574039249 11 
		0.045173719222357682 12 0.070662832609474355 13 0.066945698272249124 14 0.052899407717835689 
		15 0.042740669587890329 16 0.040317171466478958 17 0.040053212918442396 18 
		0.042030420556599231 19 0.046330420993768051 20 0.053827662484134321 21 0.064194383740660901 
		22 0.075708897064332495 23 0.086649514756133805;
createNode animCurveTL -n "apu_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0.14556937628024244 1 0.22888898743144354 
		2 0.31736540457330226 3 0.39552820681405904 4 0.44790697326195433 5 0.46872625531487822 
		6 0.46678694446518726 7 0.44848312996282241 8 0.42020890105772452 9 0.35552215395888859 
		10 0.26113853382249297 11 0.16232777237318793 12 0.058121641529759245 13 
		-0.0498378386401074 14 -0.15771025552980755 15 -0.24542424736904245 16 -0.30801985210385024 
		17 -0.35749023615823489 18 -0.39919373047885737 19 -0.43848866601237874 20 
		-0.47469509567360102 21 -0.50565818734531676 22 -0.53452394442617357 23 -0.56443837031481847;
createNode animCurveTA -n "apu_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0;
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
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
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
createNode animCurveTL -n "animCurveTL9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.133 4 -0.133 8 -0.133 10 -0.1370599083257866 
		12 -0.068219527347208556 15 -0.062482828487859403 19 -0.068219527347208556 
		23 -0.068219527347208556;
	setAttr -s 8 ".kit[0:7]"  3 3 3 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 3 3 9 9 9 9 
		9;
createNode animCurveTL -n "animCurveTL10";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.16494285180908641 4 0.1309709882402223 
		8 0.1309709882402223 10 0.14648038935392585 12 0.39869597853667715 15 0.26852730609810244 
		19 0.13380112269555375 23 0.13380112269555375;
	setAttr -s 8 ".kit[0:7]"  9 3 3 1 9 1 1 
		3;
	setAttr -s 8 ".kot[0:7]"  9 3 3 1 9 1 3 
		3;
	setAttr -s 8 ".ktl[5:7]" no no yes;
	setAttr -s 8 ".kix[3:7]"  0.024862408638000488 0.013654677197337151 
		0.0071372808888554573 0.01337028294801712 1;
	setAttr -s 8 ".kiy[3:7]"  0.99969089031219482 0.99990677833557129 
		-0.99997454881668091 -0.99991059303283691 0;
	setAttr -s 8 ".kox[3:7]"  0.02486291341483593 0.013654677197337151 
		0.008899378590285778 1 1;
	setAttr -s 8 ".koy[3:7]"  0.99969089031219482 0.99990677833557129 
		-0.99996042251586914 0 0;
createNode animCurveTL -n "animCurveTL11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.5840630460795303 4 0.66677714868198235 
		8 0.66677714868198235 10 0.64336552575796846 12 0.29128379978667518 15 -0.7551542929502939 
		19 -0.834 23 -0.82768566139442468;
	setAttr -s 8 ".kit[1:7]"  3 3 3 9 1 9 9;
	setAttr -s 8 ".kot[1:7]"  3 3 3 9 1 9 9;
	setAttr -s 8 ".kix[5:7]"  0.0065546021796762943 0.036740880459547043 
		0.20660378038883209;
	setAttr -s 8 ".kiy[5:7]"  -0.99997854232788086 -0.99932479858398438 
		0.97842466831207275;
	setAttr -s 8 ".kox[5:7]"  0.0065545565448701382 0.036740880459547043 
		0.20660378038883209;
	setAttr -s 8 ".koy[5:7]"  -0.99997854232788086 -0.99932479858398438 
		0.97842466831207275;
createNode animCurveTA -n "animCurveTA5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -30.072192405388275 4 -0.0069056069846333877 
		8 -0.0069056069846333877 10 -9.9612124259059218 12 20.387156135777527 15 
		27.518001027382638 19 -0.18443853534156204 23 -0.18443853534156204;
	setAttr -s 8 ".kit[1:7]"  3 3 9 9 9 9 9;
	setAttr -s 8 ".kot[1:7]"  3 3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
	setAttr -s 8 ".kit[1:7]"  3 3 9 9 9 9 9;
	setAttr -s 8 ".kot[1:7]"  3 3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
	setAttr -s 8 ".kit[1:7]"  3 3 9 9 9 9 9;
	setAttr -s 8 ".kot[1:7]"  3 3 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.18579966735506592 4 0.18579966735506592 
		8 0.18579966735506592 10 0.18579966735506592 12 0.18579966735506592 15 0.18579966735506592 
		19 0.18579966735506592 23 0.3260932817938943;
createNode animCurveTL -n "animCurveTL13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.4788651046679378 4 0.39166318327257371 
		8 0.34102576553491903 10 0.29006017007731688 12 0.13857373053926192 15 0.15863758393340849 
		19 0.39968995884685493 23 0.12738972873182339;
	setAttr -s 8 ".kit[3:7]"  1 9 1 9 9;
	setAttr -s 8 ".kot[3:7]"  1 9 1 9 9;
	setAttr -s 8 ".kix[3:7]"  0.0085249012336134911 0.012680716812610626 
		0.019505098462104797 0.085030123591423035 0.0048964973539113998;
	setAttr -s 8 ".kiy[3:7]"  -0.99996364116668701 -0.999919593334198 
		0.99980974197387695 -0.99637836217880249 -0.99998801946640015;
	setAttr -s 8 ".kox[3:7]"  0.0085250679403543472 0.012680716812610626 
		0.01950506865978241 0.085030123591423035 0.0048964973539113998;
	setAttr -s 8 ".koy[3:7]"  -0.99996364116668701 -0.999919593334198 
		0.99980974197387695 -0.99637836217880249 -0.99998801946640015;
createNode animCurveTL -n "animCurveTL14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.45404353022539112 4 0.42087290336686023 
		8 0.65068887617621685 10 0.041397428945883573 12 -0.083009036466156302 15 
		-0.11858325071010718 19 -0.4815053774915839 23 -0.82431116052572551;
	setAttr -s 8 ".kit[3:7]"  1 9 1 9 9;
	setAttr -s 8 ".kot[3:7]"  1 9 1 9 9;
	setAttr -s 8 ".kix[3:7]"  0.003016933798789978 0.010417358949780464 
		0.03876151517033577 0.0037785773165524006 0.0038894419558346272;
	setAttr -s 8 ".kiy[3:7]"  -0.99999547004699707 -0.99994575977325439 
		-0.99924850463867188 -0.99999284744262695 -0.99999243021011353;
	setAttr -s 8 ".kox[3:7]"  0.0030169100500643253 0.010417358949780464 
		0.03876151517033577 0.0037785773165524006 0.0038894419558346272;
	setAttr -s 8 ".koy[3:7]"  -0.99999547004699707 -0.99994575977325439 
		-0.99924850463867188 -0.99999284744262695 -0.99999243021011353;
createNode animCurveTA -n "animCurveTA8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 99.963052812293768 4 23.133939059660332 
		8 20.796495460467899 10 33.42968784327055 12 -0.25235172207598688 15 -16.619246050102227 
		19 21.253114861035481 23 0.33264551143739807;
createNode animCurveTA -n "animCurveTA9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
createNode animCurveTA -n "animCurveTA10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
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
createNode animCurveTL -n "animCurveTL15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 -0.0044994013588946355 
		10 -0.0047806139448591869 12 -0.0044994013588946355 15 -0.0044759669751249414 
		19 -0.0044994013588946355 23 -0.0044994013588946355;
createNode animCurveTL -n "animCurveTL16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.24354617521346231 4 0.24354617521346231 
		8 0.24354617521346231 10 0.24354617521346231 12 0.24354617521346231 15 0.24354617521346231 
		19 0.24354617521346231 23 0.24354617521346231;
createNode animCurveTL -n "animCurveTL17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.73266363114951272 4 0.73266363114951272 
		8 0.73266363114951272 10 0.73266363114951272 12 0.73266363114951272 15 0.73266363114951272 
		19 0.73266363114951272 23 0.73266363114951272;
createNode animCurveTL -n "animCurveTL18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 -0.0044994013588946355 
		10 -0.0047806139448591869 12 -0.0044994013588946355 15 -0.0044759669751249414 
		19 -0.0044994013588946355 23 -0.0044994013588946355;
createNode animCurveTL -n "animCurveTL19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.72172207365063845 4 0.72172207365063845 
		8 0.72172207365063845 10 0.53331773916206648 12 0.34491340467349363 15 0.32921304239196358 
		19 0.34491340467349363 23 0.34491340467349363;
createNode animCurveTL -n "animCurveTL20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.39818034372871203 4 0.39818034372871203 
		8 0.39818034372871203 10 0.60263277866457332 12 0.8070852136004335 15 0.82412291609376431 
		19 0.8070852136004335 23 0.8070852136004335;
createNode animCurveTL -n "animCurveTL21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.03056236763751306 4 -0.02416551495156901 
		8 -0.02416551495156901 10 0.016700068733296491 12 0.099930595285889198 15 
		0.060443381578545986 19 0.065519968260263892 23 0.12253878412529016;
createNode animCurveTL -n "animCurveTL22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.95976092787099887 4 0.98316085014489174 
		8 0.989473183601566 10 0.9535086994703158 12 0.98001678429926731 15 0.9882142699201899 
		19 0.95220249019932013 23 0.9872783171151831;
createNode animCurveTL -n "animCurveTL23";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.20586259975558652 4 0.63342508102012685 
		8 0.59425477406488159 10 0.36929922242413987 12 0.082194981754568894 15 -0.34707625255729441 
		19 -0.62010581521547092 23 -0.79822249214779339;
createNode animCurveTA -n "animCurveTA17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 10.244833886622574 4 7.4270482565119345 
		8 -8.1216836957253697 10 -4.6564729043373587 12 6.2427171502608152 15 8.9047437778449705 
		19 4.9202326513784627 23 0.10755922551738085;
createNode animCurveTA -n "animCurveTA18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 17.11704137357674 4 1.3364981738498682 
		8 0.044190796092383987 10 -0.48550573163554445 12 -0.604391353200188 15 -0.31669361512944999 
		19 -0.24201983215816036 23 0.28181333203542547;
createNode animCurveTA -n "animCurveTA19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.5759503100798002 4 -3.7415203908742303 
		8 -2.1785388719066909 10 1.391801787055619 12 0.21971984834623945 15 0.76749133995808938 
		19 -1.0886190604591788 23 0.43549314527941207;
createNode animCurveTA -n "apu_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.040709616517141577;
createNode animCurveTA -n "apu_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.8313983219776933;
createNode animCurveTA -n "apu_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.7337164321498379;
createNode animCurveTA -n "apu_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.5673169553733395;
createNode animCurveTA -n "apu_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.938383166068367;
createNode animCurveTA -n "apu_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00040252039393782536;
createNode animCurveTA -n "apu_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.1571952141288733;
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
	setAttr ".ktv[0]"  0 0.0034456079181433771;
createNode animCurveTA -n "apu_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.040473860579884585;
createNode animCurveTA -n "apu_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.8313984519406281;
createNode animCurveTA -n "apu_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.7337164553688731;
createNode animCurveTA -n "apu_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.5673170049738836;
createNode animCurveTA -n "apu_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.9383298724540099;
createNode animCurveTA -n "apu_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00017158844849065358;
createNode animCurveTA -n "apu_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.1571951880326767;
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
	setAttr ".ktv[0]"  0 0.0034456079182833216;
createNode animCurveTA -n "animCurveTA40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 -1.0688154100447387 
		19 0 23 0;
createNode animCurveTA -n "animCurveTA41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 1.3839409164573595 
		19 0 23 0;
createNode animCurveTA -n "animCurveTA42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.0034456079181433771 4 0.0034456079181433771 
		8 0.0034456079181433771 10 0.0034456079181433771 12 0.0034456079181433771 
		15 -23.705958539350203 19 0.0034456079181433771 23 0.0034456079181433771;
createNode animCurveTA -n "animCurveTA43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.15553530681976535 4 0.15553530681976535 
		8 0.15553530681976535 10 -1.570635518649105 12 0.15553530681976535 15 0.25578578262200319 
		19 0.15553530681976535 23 -0.084109660715359913;
createNode animCurveTA -n "animCurveTA44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.36354176124207516 4 -0.36354176124207516 
		8 -0.36354176124207516 10 1.7520338761191119 12 -0.36354176124207516 15 -0.15278634554238701 
		19 -0.36354176124207516 23 0.16459650261511499;
createNode animCurveTA -n "animCurveTA45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 5.3250602596476986 4 5.3250602596476986 
		8 5.3250602596476986 10 -32.098642723119255 12 5.3250602596476986 15 3.6141774619765399 
		19 5.3250602596476986 23 -2.483849569907115;
createNode animCurveTL -n "animCurveTL24";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.98872819052200589 4 -0.98872819052200589 
		8 -0.99534210588473215 10 -0.99575547555492239 12 -0.99534210588473215 15 
		-0.99530765841133173 19 -0.99534210588473215 23 -0.99534210588473215;
createNode animCurveTL -n "animCurveTL25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.019519870042852914 4 -0.019519870042852914 
		8 -0.019519870042852914 10 -0.019519870042852914 12 -0.019519870042852914 
		15 -0.019519870042852914 19 -0.019519870042852914 23 -0.019519870042852914;
createNode animCurveTL -n "animCurveTL26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.020013375596438072 4 -0.020013375596438072 
		8 -0.020013375596438072 10 -0.020013375596438072 12 -0.020013375596438072 
		15 -0.020013375596438072 19 -0.020013375596438072 23 -0.020013375596438072;
createNode animCurveTA -n "animCurveTA46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 9.541664044390555e-015 4 0 8 
		0 10 0 12 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 6.6324864122366681e-015 4 0 8 
		0 10 0 12 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.4064602393618892e-014 4 0 8 
		0 10 0 12 0 15 0 19 0 23 0;
createNode animCurveTL -n "animCurveTL27";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.98872754407817198 4 0.98872754407817198 
		8 0.98211362871544572 10 0.98170025904525549 12 0.98211362871544572 15 0.98214807618884603 
		19 0.98211362871544572 23 0.98211362871544572;
createNode animCurveTL -n "animCurveTL28";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.019514335421655121 4 -0.019514335421655121 
		8 -0.019514335421655121 10 -0.019514335421655121 12 -0.019514335421655121 
		15 -0.019514335421655121 19 -0.019514335421655121 23 -0.019514335421655121;
createNode animCurveTL -n "animCurveTL29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.020013361448308328 4 -0.020013361448308328 
		8 -0.020013361448308328 10 -0.020013361448308328 12 -0.020013361448308328 
		15 -0.020013361448308328 19 -0.020013361448308328 23 -0.020013361448308328;
createNode animCurveTA -n "animCurveTA49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 9.541664044390555e-015 4 0 8 
		0 10 0 12 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 6.6324864122366681e-015 4 0 8 
		0 10 0 12 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.4064602393618892e-014 4 0 8 
		0 10 0 12 0 15 0 19 0 23 0;
createNode animCurveTL -n "apu_Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  4 -1.3848817703086196 8 -1.3914956856713461 
		10 -1.3919090553415361 12 -1.3914956856713461 15 -1.3914612381979456 19 -1.3914956856713461 
		23 -1.3914956856713461;
createNode animCurveTL -n "apu_Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  4 2.3971606112795563 8 2.3971606112795563 
		10 2.3971606112795563 12 2.3971606112795563 15 2.3971606112795563 19 2.3971606112795563 
		23 2.3971606112795563;
createNode animCurveTL -n "apu_Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  4 -0.14844372651139698 8 -0.14844372651139698 
		10 -0.14844372651139698 12 -0.14844372651139698 15 -0.14844372651139698 19 
		-0.14844372651139698 23 -0.14844372651139698;
createNode animCurveTA -n "apu_Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  4 0 8 0 10 0 12 0 15 0 19 0 23 
		0;
createNode animCurveTA -n "apu_Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  4 0 8 0 10 0 12 0 15 0 19 0 23 
		0;
createNode animCurveTA -n "apu_Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  4 0 8 0 10 0 12 0 15 0 19 0 23 
		0;
createNode animCurveTL -n "apu_Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  4 1.3848820121487373 8 1.3848820121487373 
		10 1.3848820121487373 12 1.3848820121487373 15 1.3848820121487373 19 1.3848820121487373 
		23 1.3848820121487373;
createNode animCurveTL -n "apu_Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  4 2.397161655727015 8 2.397161655727015 
		10 2.397161655727015 12 2.397161655727015 15 2.397161655727015 19 2.397161655727015 
		23 2.397161655727015;
createNode animCurveTL -n "apu_Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  4 -0.14844368205557412 8 -0.14844368205557412 
		10 -0.14844368205557412 12 -0.14844368205557412 15 -0.14844368205557412 19 
		-0.14844368205557412 23 -0.14844368205557412;
createNode animCurveTA -n "apu_Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  4 0 8 0 10 0 12 0 15 0 19 0 23 
		0;
createNode animCurveTA -n "apu_Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  4 0 8 0 10 0 12 0 15 0 19 0 23 
		0;
createNode animCurveTA -n "apu_Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  4 0 8 0 10 0 12 0 15 0 19 0 23 
		0;
createNode animCurveTL -n "animCurveTL36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 -0.0066139153627263235 
		10 -0.0070272850329165595 12 -0.0066139153627263235 15 -0.0065794678893258615 
		19 -0.0066139153627263235 23 -0.0066139153627263235;
createNode animCurveTL -n "animCurveTL37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
createNode animCurveTL -n "animCurveTL38";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1 4 -1 8 -1 10 -1 12 -1 15 -1 
		19 -1 23 -1;
createNode animCurveTL -n "animCurveTL39";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 -0.0066139153627263235 
		10 -0.0070272850329165595 12 -0.0066139153627263235 15 -0.0065794678893258615 
		19 -0.0066139153627263235 23 -0.0066139153627263235;
createNode animCurveTL -n "animCurveTL40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
createNode animCurveTL -n "animCurveTL41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1 4 -1 8 -1 10 -1 12 -1 15 -1 
		19 -1 23 -1;
createNode animCurveTA -n "animCurveTA58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 62.960170940606567 4 -57.264245342963584 
		8 -39.525915601851388 10 -32.337925274638707 12 -22.754148804013028 15 -7.6292157274786092 
		19 12.558817730414805 23 32.836440578526755;
createNode animCurveTA -n "animCurveTA59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -19.447616965174127 4 -26.889981415962271 
		8 -32.594637710745673 10 -19.378093923379534 12 -23.441608134645872 15 -34.941123705410185 
		19 -50.428564546684591 23 -66.562180006639721;
createNode animCurveTA -n "animCurveTA60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -69.946882873152816 4 47.629222075089743 
		8 60.872444031608069 10 50.201436609240773 12 37.877250104180305 15 18.873946699701385 
		19 -6.4785970903890009 23 -31.892960856010397;
createNode animCurveTA -n "animCurveTA61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -56.725330507545323 4 -60.215903318635057 
		8 -46.10666556636734 10 -17.060554182296066 12 -7.3485594452777745 15 1.1727928598204216 
		19 12.36144699660986 23 22.827117636695395;
createNode animCurveTA -n "animCurveTA62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -22.950753025535782 4 -39.072479849286125 
		8 -33.734154971158212 10 -18.084132648717848 12 -21.117202959562505 15 -31.50984394297986 
		19 -45.534017374927686 23 -60.256829896536928;
createNode animCurveTA -n "animCurveTA63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 60.585329838143075 4 88.472973640244831 
		8 92.730341876845287 10 61.141201082691587 12 45.686611373606212 15 27.550718990727038 
		19 3.5140234448939012 23 -19.919332511374147;
createNode animCurveTA -n "animCurveTA64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 26.470453106824781 4 91.25303407844369 
		8 41.824285719662143 10 8.6648392509778862 12 5.4499711303819334 15 9.9926731810902076 
		19 16.317781087003407 23 23.76264257288523;
createNode animCurveTA -n "animCurveTA65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 90.634950435315986 4 55.695631793369252 
		8 43.507857333484758 10 31.833287341184118 12 26.480325808965201 15 20.427932309439846 
		19 12.414688884391866 23 4.6378364807982244;
createNode animCurveTA -n "animCurveTA66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 14.849434068729675 4 107.27919686325654 
		8 98.925129174693183 10 98.925129174693183 12 90.782867407184895 15 76.023026955470883 
		19 56.270320427870708 23 36.213139312898406;
createNode animCurveTA -n "animCurveTA67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.051608316401883209 4 23.283654770185553 
		8 -0.86093934987586707 10 -0.86093934987586707 12 -0.86093934987586718 15 
		-0.8609393498758674 19 -0.86093934987586762 23 -0.86093934987586807;
createNode animCurveTA -n "animCurveTA68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.8225462689462448 4 42.311581493708729 
		8 7.6149077694032314 10 7.6149077694032314 12 7.6149077694032314 15 7.6149077694032323 
		19 7.6149077694032341 23 7.6149077694032359;
createNode animCurveTA -n "animCurveTA69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 14.859570486861982 4 97.768182545147312 
		8 101.51591330816498 10 101.51591330816498 12 95.010762118883022 15 83.218584508343554 
		19 67.437422855693711 23 51.413006639041534;
createNode animCurveTA -n "animCurveTA70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.052172032759606073 4 31.752629642849875 
		8 0.14728326224038421 10 0.14728326224038421 12 1.2273791677855634 15 3.1853171568500058 
		19 5.805574172343297 23 8.4662205809265938;
createNode animCurveTA -n "animCurveTA71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.8225558374727127 4 85.237018780648114 
		8 36.72578770416883 10 36.72578770416883 12 34.599781189121842 15 30.74587431782356 
		19 25.588292287828104 23 20.351209611699755;
createNode animCurveTA -n "animCurveTA72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -60.679962459776895 4 -60.679962459776895 
		8 -60.679962459776895 10 -60.679962459776895 12 -60.679962459776895 15 -60.679962459776895 
		19 -60.679962459776895 23 -60.679962459776895;
createNode animCurveTA -n "animCurveTA73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 12.355514613247321 4 12.355514613247321 
		8 12.355514613247321 10 12.355514613247321 12 12.355514613247321 15 12.355514613247321 
		19 12.355514613247321 23 12.355514613247321;
createNode animCurveTA -n "animCurveTA74";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 13.110465504305042 4 13.110465504305042 
		8 13.110465504305042 10 13.110465504305042 12 13.110465504305042 15 13.110465504305042 
		19 13.110465504305042 23 13.110465504305042;
createNode animCurveTA -n "animCurveTA75";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -20.551139383726671 4 -20.551139383726671 
		8 -20.551139383726671 10 -20.551139383726671 12 -20.551139383726671 15 -20.551139383726671 
		19 -20.551139383726671 23 -20.551139383726671;
createNode animCurveTA -n "animCurveTA76";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 3.0722483700821352 4 3.0722483700821352 
		8 3.0722483700821352 10 3.0722483700821352 12 3.0722483700821352 15 3.0722483700821352 
		19 3.0722483700821352 23 3.0722483700821352;
createNode animCurveTA -n "animCurveTA77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 19.857676546395723 4 19.857676546395723 
		8 19.857676546395723 10 19.857676546395723 12 19.857676546395723 15 19.857676546395723 
		19 19.857676546395723 23 19.857676546395723;
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
	setAttr ".ktv[0]"  0 12.085861696683486;
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
	setAttr ".ktv[0]"  0 12.085861696683486;
createNode animCurveTA -n "animCurveTA87";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
createNode animCurveTA -n "animCurveTA88";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
createNode animCurveTA -n "animCurveTA89";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.43065494947832267 4 -0.43065494947832267 
		8 -0.43065494947832267 10 -0.43065494947832267 12 -0.43065494947832267 15 
		-0.43065494947832267 19 -0.43065494947832267 23 -0.43065494947832267;
createNode animCurveTA -n "animCurveTA90";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
createNode animCurveTA -n "animCurveTA91";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
createNode animCurveTA -n "animCurveTA92";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
createNode animCurveTA -n "animCurveTA93";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -34.436570627353341 4 13.510934836893354 
		8 13.082304542474905 10 3.1146197215294786 12 0.86005649808378171 15 -1.8400278747094139 
		19 -8.6841333768057591 23 0.3863757728390485;
createNode animCurveTA -n "animCurveTA94";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 12.578671015845821 4 8.8210100730778933 
		8 8.0117285890322005 10 4.6098243255942961 12 2.8220654946122221 15 3.927072117773946 
		19 5.4794480415574718 23 -0.24242144510456509;
createNode animCurveTA -n "animCurveTA95";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -3.7943623819848562 4 -12.007280114527378 
		8 -14.623733675352382 10 -15.133294281231235 12 -11.099502080588817 15 -15.979335505236323 
		19 -13.869556789442326 23 -18.903846081185787;
createNode animCurveTA -n "animCurveTA96";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 13.44722672283352 4 -3.2789136661526759 
		8 4.5204567638544546 10 -8.9014121297710034 12 -7.3025617176738518 15 -7.365229489771921 
		19 -7.3025617176738518 23 -6.9937034203027908;
createNode animCurveTA -n "animCurveTA97";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.3998587564717182 4 -8.6440419109697348 
		8 -2.2674169308032979 10 -1.2767581350361785 12 -5.7007871835424053 15 -5.8313295885312249 
		19 -5.7007871835424053 23 -3.0133657084847818;
createNode animCurveTA -n "animCurveTA98";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.1510007110886771 4 3.282987321343013 
		8 24.458034815823869 10 17.74094590485986 12 18.307429200920051 15 20.141578990045012 
		19 18.307429200920051 23 14.707308270237847;
createNode animCurveTA -n "animCurveTA99";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
createNode animCurveTA -n "animCurveTA100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 -5.6729228247733179 8 -5.6729228247733179 
		10 -5.6729228247733179 12 -5.6729228247733179 15 -5.6729228247733179 19 -5.6729228247733179 
		23 -5.6729228247733179;
createNode animCurveTA -n "animCurveTA101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
createNode animCurveTA -n "animCurveTA102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 3.0573637994901306 4 17.913607812790744 
		8 17.507593831938411 10 10.818264725513886 12 1.6408790439912488 15 -1.7960581524756651 
		19 4.5270713688494277 23 -0.31055470058008278;
createNode animCurveTA -n "animCurveTA103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.75065117256362812 4 -0.0036290927750949982 
		8 -0.084903324245797801 10 -1.3247758178006825 12 -2.4673788320208341 15 
		-3.2974004624316913 19 0.03024567880500181 23 -1.1431300183645305;
createNode animCurveTA -n "animCurveTA104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 3.2883345540401034 4 12.808999698552435 
		8 8.0200330084821232 10 7.7528622893628265 12 8.4328527896194831 15 10.027776679887152 
		19 14.274286783239003 23 10.668172501779155;
createNode animCurveTA -n "animCurveTA105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -20.551139383726671 4 -20.551139383726671 
		8 -20.551139383726671 10 -20.551139383726671 12 -20.551139383726671 15 -20.551139383726671 
		19 -20.551139383726671 23 -20.551139383726671;
createNode animCurveTA -n "animCurveTA106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 3.0722483700821352 4 3.0722483700821352 
		8 3.0722483700821352 10 3.0722483700821352 12 3.0722483700821352 15 3.0722483700821352 
		19 3.0722483700821352 23 3.0722483700821352;
createNode animCurveTA -n "animCurveTA107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 19.857676546395723 4 19.857676546395723 
		8 19.857676546395723 10 19.857676546395723 12 19.857676546395723 15 19.857676546395723 
		19 19.857676546395723 23 19.857676546395723;
createNode animCurveTA -n "animCurveTA108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -60.679962459776895 4 -60.679962459776895 
		8 -60.679962459776895 10 -60.679962459776895 12 -60.679962459776895 15 -60.679962459776895 
		19 -60.679962459776895 23 -60.679962459776895;
createNode animCurveTA -n "animCurveTA109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 12.355514613247321 4 12.355514613247321 
		8 12.355514613247321 10 12.355514613247321 12 12.355514613247321 15 12.355514613247321 
		19 12.355514613247321 23 12.355514613247321;
createNode animCurveTA -n "animCurveTA110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 13.110465504305042 4 13.110465504305042 
		8 13.110465504305042 10 13.110465504305042 12 13.110465504305042 15 13.110465504305042 
		19 13.110465504305042 23 13.110465504305042;
createNode animCurveTA -n "animCurveTA111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
createNode animCurveTA -n "animCurveTA112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
createNode animCurveTA -n "animCurveTA113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.43065494947832267 4 -0.43065494947832267 
		8 -0.43065494947832267 10 -0.43065494947832267 12 -0.43065494947832267 15 
		-0.43065494947832267 19 -0.43065494947832267 23 -0.43065494947832267;
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
connectAttr "apu_run_into_personSource.st" "clipLibrary1.st[0]";
connectAttr "apu_run_into_personSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL1.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL2.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "apu_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
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
connectAttr "animCurveTL9.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL10.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL11.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA5.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA6.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA7.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL12.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL13.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL14.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA8.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA9.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA10.a" "clipLibrary1.cel[0].cev[31].cevr";
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
connectAttr "animCurveTL15.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL16.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL17.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL18.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL19.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL20.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL21.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL22.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL23.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA17.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA18.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA19.a" "clipLibrary1.cel[0].cev[49].cevr";
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
connectAttr "animCurveTA40.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA41.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA42.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA43.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA44.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA45.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTL24.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTL25.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTL26.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA46.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA47.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA48.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL27.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL28.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL29.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA49.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA50.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA51.a" "clipLibrary1.cel[0].cev[87].cevr";
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
connectAttr "animCurveTL36.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL37.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL38.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL39.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL40.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL41.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA58.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA59.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA60.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA61.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA62.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA63.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA64.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA65.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA66.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA67.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA68.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA69.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA70.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA71.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA72.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA73.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA74.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA75.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA76.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA77.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "apu_Pelvis_rotateX.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "apu_Pelvis_rotateY.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "apu_Pelvis_rotateZ.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "apu_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "apu_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "apu_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "apu_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "apu_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "apu_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA87.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA88.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA89.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA90.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA91.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA92.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA93.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA94.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA95.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA96.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA97.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA98.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA99.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA100.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA101.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA102.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA103.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA104.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA105.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA106.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA107.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA108.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA109.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA110.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA111.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA112.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA113.a" "clipLibrary1.cel[0].cev[161].cevr";
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
// End of apu_run_into_person.ma
