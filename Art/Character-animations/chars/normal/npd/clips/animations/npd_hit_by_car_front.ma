//Maya ASCII 4.0 scene
//Name: npd_hit_by_car_front.ma
//Last modified: Wed, Oct 09, 2002 11:01:55 AM
requires maya "4.0";
requires "p3dmayaexp" "18.5";
requires "p3dSimpleShader" "18.5";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "npd_hit_by_car_frontSource";
	setAttr ".ihi" 0;
	setAttr ".du" 27;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "animCurveTL43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Motion_Root_translateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0.021611233900292327 1 0.022029725572579834 
		2 0.022448217244867334 3 0.021611233900292327 4 0.018263300421850721 5 0.013659891840710958 
		6 0.010311958362269356 7 0.0097745269531088353 8 0.010492570560810821 9 0.010311958362269356 
		10 0.0087018750728730179 11 0.0066873059210496638 12 0.0044478208532522561 
		13 0.0021629898159337643 14 1.2382755547152306e-005 15 -0.0018244303814546107 
		16 -0.0031678796486185601 17 -0.0038879565121098026 18 -0.0040895780338873504 
		19 -0.0039455626611891014 20 -0.0036287288412529561 21 -0.0033118950213168099 
		22 -0.0031678796486185601 23 -0.0031678796486185601 24 -0.0031678796486185601 
		25 -0.0031678796486185601 26 -0.0031678796486185601 27 -0.0031678796486185601 
		28 -0.0031678796486185601 29 -0.0031678796486185601 30 -0.0031678796486185601 
		31 -0.0031678796486185601 32 -0.0031678796486185601 33 -0.0031678796486185601 
		34 -0.0031678796486185601 35 -0.0031678796486185601;
createNode animCurveTL -n "apu_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0;
createNode animCurveTL -n "Motion_Root_translateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0.14556937628024244 1 0.19643135532686642 
		2 0.24729333534515502 3 0.24651991771692369 4 0.16053503627445662 5 0.022914758307234707 
		6 -0.11724811461713064 7 -0.22874157908712459 8 -0.34277764336535443 9 -0.50389952339539246 
		10 -0.77498451143207048 11 -1.0931553197662562 12 -1.3143232943955756 13 
		-1.3923716758942621 14 -1.4029849139642425 15 -1.3847761682946833 16 -1.3763585985747511 
		17 -1.3862604973384691 18 -1.3962782552300408 19 -1.4049271791039031 20 -1.4107225758144923 
		21 -1.4121797522162456 22 -1.4078140151635996 23 -1.3818254762591482 24 -1.3384840556473951 
		25 -1.3064097729956425 26 -1.2988983476107594 27 -1.3026540603032009 28 -1.3064097729956425 
		29 -1.3064097729956425 30 -1.3064097729956425 31 -1.3064097729956425 32 -1.3064097729956425 
		33 -1.3064097729956425 34 -1.3064097729956425 35 -1.3064097729956425;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 1 60.000000630515075 2 119.99999936948493 
		3 180 4 180 5 180 6 180 7 180 8 180 9 180 10 180 11 180 12 180 13 180 14 
		180 15 180 16 180 17 180 18 180 19 180 20 180 21 180 22 180 23 180 24 180 
		25 180 26 180 27 180 28 180 29 180 30 180 31 180 32 180 33 180 34 180 35 
		180;
createNode animCurveTU -n "npd_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "npd_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "npd_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "npd_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "npd_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "npd_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "npd_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "npd_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "npd_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "npd_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "npd_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.13256050696689195 3 -0.13256050696689195 
		6 -0.097619405421433963 9 0.13319670588552451 12 0.18526122888958149 16 0.339003307854151 
		22 0.339003307854151 25 0.339003307854151 28 0.339003307854151;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTL -n "animCurveTL51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.16494285180908641 3 0.12807315167559055 
		6 0.21524655879601653 9 0.21524655879601653 12 0.76496779645999369 16 1.4405168033832556 
		22 1.4405168033832556 25 0.78631243885543745 28 0.36146987378746731;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 1 1 
		9 9;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 1 1 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0.020280661061406136 0.039727114140987396 
		0.022936740890145302 0.0036381834652274847 0.0019043382490053773 0.02132701501250267 
		0.020918894559144974 0.0018534841947257519 0.0023538069799542427;
	setAttr -s 9 ".kiy[0:8]"  -0.99979430437088013 0.99921059608459473 
		0.99973690509796143 0.99999338388442993 0.99999821186065674 0.99977254867553711 
		-0.99978119134902954 -0.99999827146530151 -0.99999725818634033;
	setAttr -s 9 ".kox[0:8]"  0.020280636847019196 0.039727114140987396 
		0.022936740890145302 0.0036381834652274847 0.0019043382490053773 0.021327167749404907 
		0.020919283851981163 0.0018534841947257519 0.0023538069799542427;
	setAttr -s 9 ".koy[0:8]"  -0.99979430437088013 0.99921059608459473 
		0.99973690509796143 0.99999338388442993 0.99999821186065674 0.99977254867553711 
		-0.99978119134902954 -0.99999827146530151 -0.99999725818634033;
createNode animCurveTL -n "animCurveTL52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.5840630460795303 3 0.68577193441101358 
		6 0.33408886323565368 9 0.035667659514092967 12 -1.1189373685281845 16 -1.8684001225646381 
		22 -1.866385018612456 25 -1.1964874446038933 28 -1.0391383464305708;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0.1866861879825592 0.0080005703493952751 
		0.0030764148104935884 0.0013764363247901201 0.0012254456523805857 0.0044595766812562943 
		0.0044648214243352413 0.0024176514707505703 0.0063551678322255611;
	setAttr -s 9 ".kiy[0:8]"  -0.98241961002349854 -0.99996799230575562 
		-0.99999529123306274 -0.99999904632568359 -0.99999922513961792 -0.99999004602432251 
		0.99999004602432251 0.99999707937240601 0.99997979402542114;
	setAttr -s 9 ".kox[0:8]"  0.1866861879825592 0.0080005703493952751 
		0.0030764148104935884 0.0013764363247901201 0.0012254456523805857 0.0044595766812562943 
		0.0044648214243352413 0.0024176514707505703 0.0063551678322255611;
	setAttr -s 9 ".koy[0:8]"  -0.98241961002349854 -0.99996799230575562 
		-0.99999529123306274 -0.99999904632568359 -0.99999922513961792 -0.99999004602432251 
		0.99999004602432251 0.99999707937240601 0.99997979402542114;
createNode animCurveTA -n "animCurveTA118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -30.072192405388275 3 -0.044551582642609347 
		6 -17.038095538834781 9 -13.058060338550643 12 -36.993240180545619 16 50.059381682710658 
		22 50.059381682710658 25 -1.6238661312579596 28 -66.228196415822737;
	setAttr -s 9 ".kit[5:8]"  1 1 9 9;
	setAttr -s 9 ".kot[5:8]"  1 1 9 9;
	setAttr -s 9 ".kix[5:8]"  0.5123753547668457 0.57143700122833252 
		0.098066546022891998 0.088340491056442261;
	setAttr -s 9 ".kiy[5:8]"  0.85876160860061646 -0.82064592838287354 
		-0.99517983198165894 -0.9960903525352478;
	setAttr -s 9 ".kox[5:8]"  0.51237529516220093 0.57143670320510864 
		0.098066546022891998 0.088340491056442261;
	setAttr -s 9 ".koy[5:8]"  0.85876160860061646 -0.82064616680145264 
		-0.99517983198165894 -0.9960903525352478;
createNode animCurveTA -n "animCurveTA119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 40.449668604279324 6 30.730688822920264 
		9 32.470518691162361 12 -9.2861696236141889 16 9.253999594224533 22 9.253999594224533 
		25 -4.7575518255074174 28 -15.78571355557014;
	setAttr -s 9 ".kit[5:8]"  1 1 9 9;
	setAttr -s 9 ".kot[5:8]"  1 1 9 9;
	setAttr -s 9 ".kix[5:8]"  0.88121044635772705 0.85582458972930908 
		0.41613307595252991 0.46103188395500183;
	setAttr -s 9 ".kiy[5:8]"  0.47272419929504395 -0.51726609468460083 
		-0.90930372476577759 -0.88738358020782471;
	setAttr -s 9 ".kox[5:8]"  0.88122421503067017 0.85582500696182251 
		0.41613307595252991 0.46103188395500183;
	setAttr -s 9 ".koy[5:8]"  0.47269850969314575 -0.5172654390335083 
		-0.90930372476577759 -0.88738358020782471;
createNode animCurveTA -n "animCurveTA120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 -31.219589055909918 9 
		-23.632951992478738 12 -193.02650768714349 16 -193.04918305164935 22 -193.04918305164935 
		25 -195.24243263647855 28 -182.31890664851687;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 1 1 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 1 1 
		9 9;
	setAttr -s 9 ".kix[5:8]"  0.76743060350418091 0.95545327663421631 
		0.72994017601013184 0.40529888868331909;
	setAttr -s 9 ".kiy[5:8]"  0.64113205671310425 -0.29514232277870178 
		0.68351107835769653 0.91418421268463135;
	setAttr -s 9 ".kox[5:8]"  0.76743060350418091 0.95545327663421631 
		0.72994017601013184 0.40529888868331909;
	setAttr -s 9 ".koy[5:8]"  0.64113199710845947 -0.29514235258102417 
		0.68351107835769653 0.91418421268463135;
createNode animCurveTL -n "animCurveTL53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.18579966735506592 3 0.33367557910089912 
		6 -0.0049098473085244978 9 -0.30995785927023323 12 -0.24075543777854175 16 
		-0.31561849285091476 22 -0.31561849285091476 25 -0.31561849285091476 28 -0.31561849285091476;
createNode animCurveTL -n "animCurveTL54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.4788651046679378 3 0.28941901182879498 
		6 0.45397922773223853 9 0.13752677358818791 12 0.79307726828213454 16 1.3131708737854855 
		22 1.3131708737854855 25 0.36828076304176754 28 0.36828076304176754;
	setAttr -s 9 ".kit[5:8]"  1 1 9 9;
	setAttr -s 9 ".kot[5:8]"  1 1 9 9;
	setAttr -s 9 ".kix[5:8]"  0.0074086543172597885 0.01012299582362175 
		0.0021166433580219746 1;
	setAttr -s 9 ".kiy[5:8]"  0.99997258186340332 -0.99994874000549316 
		-0.99999773502349854 0;
	setAttr -s 9 ".kox[5:8]"  0.0074086403474211693 0.010123016312718391 
		0.0021166433580219746 1;
	setAttr -s 9 ".koy[5:8]"  0.99997258186340332 -0.99994874000549316 
		-0.99999773502349854 0;
createNode animCurveTL -n "animCurveTL55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.45404353022539112 3 0.24492691690161891 
		6 -0.3960355881343805 9 -0.61737802251739571 12 -1.1234479315733328 16 -2.1456515653882828 
		22 -2.1436364614361008 25 -1.0956801840459687 28 -1.0956801840459687;
createNode animCurveTA -n "animCurveTA121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 99.963052812293768 3 49.608899356619894 
		6 105.83194960605877 9 18.277812281101642 12 140.64454552998416 16 267.30929806187652 
		22 267.30929806187652 25 113.77170281146043 28 113.77170281146043;
	setAttr -s 9 ".kit[4:8]"  1 1 1 9 9;
	setAttr -s 9 ".kot[4:8]"  1 1 1 9 9;
	setAttr -s 9 ".kix[4:8]"  0.039156489074230194 0.62361067533493042 
		0.27766606211662292 0.074427202343940735 1;
	setAttr -s 9 ".kiy[4:8]"  0.99923306703567505 0.78173506259918213 
		-0.96067768335342407 -0.99722647666931152 0;
	setAttr -s 9 ".kox[4:8]"  0.039156481623649597 0.62360978126525879 
		0.27766641974449158 0.074427202343940735 1;
	setAttr -s 9 ".koy[4:8]"  0.99923306703567505 0.78173577785491943 
		-0.96067756414413452 -0.99722647666931152 0;
createNode animCurveTA -n "animCurveTA122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 51.778284936432193 6 76.224445358293934 
		9 57.117747709393683 12 159.32275873512734 16 174.31635191991302 22 174.31635191991302 
		25 182.79778690246883 28 182.79778690246883;
	setAttr -s 9 ".kit[3:8]"  1 9 1 1 9 9;
	setAttr -s 9 ".kot[3:8]"  1 9 1 1 9 9;
	setAttr -s 9 ".kix[3:8]"  0.050590578466653824 0.11333644390106201 
		0.81437569856643677 0.99991738796234131 0.80378621816635132 1;
	setAttr -s 9 ".kiy[3:8]"  0.99871945381164551 0.9935566782951355 
		0.58033806085586548 -0.0128520168364048 0.59491825103759766 0;
	setAttr -s 9 ".kox[3:8]"  0.050590559840202332 0.11333644390106201 
		0.81437569856643677 0.99991738796234131 0.80378621816635132 1;
	setAttr -s 9 ".koy[3:8]"  0.99871945381164551 0.9935566782951355 
		0.5803380012512207 -0.012852408923208714 0.59491825103759766 0;
createNode animCurveTA -n "animCurveTA123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 32.959229727400178 6 -9.9319480926531689 
		9 -129.61666045657159 12 2.8179931904906996 16 5.1332425606771928 22 5.1332425606771928 
		25 -7.1260295763570793 28 -7.1260295763570793;
	setAttr -s 9 ".kit[4:8]"  1 9 9 9 9;
	setAttr -s 9 ".kot[4:8]"  1 9 9 9 9;
	setAttr -s 9 ".kix[4:8]"  0.10818717628717422 0.99273210763931274 
		0.81414538621902466 0.68286484479904175 1;
	setAttr -s 9 ".kiy[4:8]"  0.99413055181503296 0.12034511566162109 
		-0.5806611180305481 -0.73054474592208862 0;
	setAttr -s 9 ".kox[4:8]"  0.10818719863891602 0.99273210763931274 
		0.81414538621902466 0.68286484479904175 1;
	setAttr -s 9 ".koy[4:8]"  0.99413055181503296 0.12034511566162109 
		-0.5806611180305481 -0.73054474592208862 0;
createNode animCurveTA -n "npd_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0.0014346992010005586 
		9 0.0014346992010005586 16 -0.035867482413503939 22 -0.035867482413503939 
		25 -0.035867482413503939 28 -0.035867482413503939;
createNode animCurveTL -n "animCurveTL57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.24354617521346231 3 0.24354617521346231 
		6 0.21991749252665835 9 0.21991749252665835 12 0.63735756554115941 16 0.76709832678765255 
		22 0.76709832678765255 25 0.76709832678765255 28 0.76709832678765255;
createNode animCurveTL -n "animCurveTL58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.73266363114951272 3 0.73266363114951272 
		6 0.74879807893123718 9 0.74879807893123718 12 0.46375615769942391 16 0.35006314642593667 
		22 0.35006314642593667 25 0.35006314642593667 28 0.35006314642593667;
createNode animCurveTL -n "animCurveTL59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0.076860420270969745 
		9 0.35661075022359162 16 0.11207829940385489 22 0.11207829940385489 25 0.11207829940385489 
		28 0.11207829940385489;
createNode animCurveTL -n "animCurveTL60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.72172207365063845 3 0.72172207365063845 
		6 0.7651356929481774 9 0.7160915076436446 12 0.82129459502276647 16 0.62506246260902221 
		22 0.62506246260902221 25 0.62506246260902221 28 0.62506246260902221;
createNode animCurveTL -n "animCurveTL61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.39818034372871203 3 0.39818034372871203 
		6 0.44117324426501958 9 0.48911912135015784 12 0.49678791637045833 16 0.69199723535194924 
		22 0.69199723535194924 25 0.69199723535194924 28 0.69199723535194924;
createNode animCurveTL -n "animCurveTL62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.03056236763751306 3 0.03056236763751306 
		6 0.014583057311046921 9 0.014583057311046921 16 -0.0044799803148290619 22 
		-0.0044799803148290619 25 -0.0044799803148290619 28 -0.0044799803148290619;
createNode animCurveTL -n "animCurveTL63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.95976092787099887 3 0.90511531977609494 
		6 0.90730941048428071 9 0.66540735269932083 12 0.39559553393743441 16 0.64744724560504907 
		22 0.63872868203187572 25 0.39193824071112943 28 0.39193824071112943;
createNode animCurveTL -n "animCurveTL64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.20586259975558652 3 0.34862573742872577 
		6 -0.1658109851694097 9 -0.7126091253016924 12 -1.8587014468119534 16 -1.9464310869415373 
		22 -1.9909149887129447 25 -1.8475102324903681 28 -1.8475102324903681;
createNode animCurveTA -n "animCurveTA130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 10.244833886622574 3 38.072912681666971 
		6 -9.0724908325983389 9 -116.23143147246843 12 -89.356596306169507 16 -28.707212804633635 
		22 -28.707212804633635 25 -81.080554482442054 28 -81.080554482442054;
createNode animCurveTA -n "animCurveTA131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 17.11704137357674 3 75.627298630128223 
		6 80.5055715517165 9 49.428787830282751 12 2.2198511473621578 16 -0.43738809327223782 
		22 -0.43738809327223782 25 2.797043526322569 28 2.797043526322569;
createNode animCurveTA -n "animCurveTA132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.5759503100798002 3 35.649767873920126 
		6 -4.4559763063687763 9 -124.88542008873101 12 -176.80451924165047 16 -176.13442014364796 
		22 -176.13442014364796 25 -177.29517344093998 28 -177.29517344093998;
createNode animCurveTA -n "npd_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.040709616517141577;
createNode animCurveTA -n "npd_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.8313983219776933;
createNode animCurveTA -n "npd_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.7337164321498379;
createNode animCurveTA -n "npd_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.5673169553733395;
createNode animCurveTA -n "npd_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.938383166068367;
createNode animCurveTA -n "npd_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00040252039393782536;
createNode animCurveTA -n "npd_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.1571952141288733;
createNode animCurveTA -n "npd_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.0034456079181433771;
createNode animCurveTA -n "npd_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.040473860579884585;
createNode animCurveTA -n "npd_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.8313984519406281;
createNode animCurveTA -n "npd_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.7337164553688731;
createNode animCurveTA -n "npd_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.5673170049738836;
createNode animCurveTA -n "npd_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.9383298724540099;
createNode animCurveTA -n "npd_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00017158844849065358;
createNode animCurveTA -n "npd_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.1571951880326767;
createNode animCurveTA -n "npd_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.0034456079182833216;
createNode animCurveTA -n "animCurveTA153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 9 0 12 0 16 0 22 0 
		25 0 28 0;
createNode animCurveTA -n "animCurveTA154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 9 0 12 0 16 0 22 0 
		25 0 28 0;
createNode animCurveTA -n "animCurveTA155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.0034456079181433771 3 0.0034456079181433771 
		6 0.0034456079181433771 9 0.0034456079181433771 12 0.0034456079181433771 
		16 0.0034456079181433771 22 0.0034456079181433771 25 0.0034456079181433771 
		28 0.0034456079181433771;
createNode animCurveTA -n "animCurveTA156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.15553530681976535 3 0.15553530681976535 
		6 0.15553530681976535 9 0.15553530681976535 12 0.15553530681976535 16 0.15553530681976535 
		22 0.15553530681976535 25 0.15553530681976535 28 0.15553530681976535;
createNode animCurveTA -n "animCurveTA157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.36354176124207516 3 -0.36354176124207516 
		6 -0.36354176124207516 9 -0.36354176124207516 12 -0.36354176124207516 16 
		-0.36354176124207516 22 -0.36354176124207516 25 -0.36354176124207516 28 -0.36354176124207516;
createNode animCurveTA -n "animCurveTA158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 5.3250602596476986 3 5.3250602596476986 
		6 5.3250602596476986 9 5.3250602596476986 12 5.3250602596476986 16 5.3250602596476986 
		22 5.3250602596476986 25 5.3250602596476986 28 5.3250602596476986;
createNode animCurveTL -n "animCurveTL65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.98872819052200589;
createNode animCurveTL -n "animCurveTL66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.019519870042852914;
createNode animCurveTL -n "animCurveTL67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.020013375596438072;
createNode animCurveTA -n "animCurveTA159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 9.541664044390555e-015;
createNode animCurveTA -n "animCurveTA160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.6324864122366681e-015;
createNode animCurveTA -n "animCurveTA161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.4064602393618892e-014;
createNode animCurveTL -n "animCurveTL68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.98872754407817198;
createNode animCurveTL -n "animCurveTL69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.019514335421655121;
createNode animCurveTL -n "animCurveTL70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.020013361448308328;
createNode animCurveTA -n "animCurveTA162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 9.541664044390555e-015;
createNode animCurveTA -n "animCurveTA163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.6324864122366681e-015;
createNode animCurveTA -n "animCurveTA164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.4064602393618892e-014;
createNode animCurveTL -n "npd_Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.3848817703086196;
createNode animCurveTL -n "npd_Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.3971606112795563;
createNode animCurveTL -n "npd_Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.14844372651139698;
createNode animCurveTA -n "npd_Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "npd_Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.3848820121487373;
createNode animCurveTL -n "npd_Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.397161655727015;
createNode animCurveTL -n "npd_Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.14844368205557412;
createNode animCurveTA -n "npd_Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
createNode animCurveTL -n "animCurveTL80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
createNode animCurveTA -n "animCurveTA171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 62.960170940606567 3 -53.60389195094465 
		6 -48.160119543503292 9 -31.484620720305251 12 -94.402790586579883 16 -94.402790586579883 
		22 -94.402790586579883 25 -94.402790586579883 28 -94.402790586579883;
createNode animCurveTA -n "animCurveTA172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -19.447616965174127 3 20.397789504477718 
		6 -6.7682562165365177 9 -20.511180457898291 12 24.779153471754636 16 24.779153471754636 
		22 24.779153471754636 25 24.779153471754636 28 24.779153471754636;
createNode animCurveTA -n "animCurveTA173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -69.946882873152816 3 78.7380235148037 
		6 60.486977378193863 9 50.596302178704249 12 51.61889850375109 16 51.61889850375109 
		22 51.61889850375109 25 51.61889850375109 28 51.61889850375109;
createNode animCurveTA -n "animCurveTA174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -56.725330507545323 3 -38.514306822233685 
		6 -43.786954049871525 9 -35.661157902756429 12 -45.425173571493602 16 -45.425173571493602 
		22 -45.425173571493602 25 -45.425173571493602 28 -45.425173571493602;
createNode animCurveTA -n "animCurveTA175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -22.950753025535782 3 -6.3785222013791207 
		6 -21.614819715348844 9 -32.981438958319465 12 47.765651337635774 16 47.765651337635774 
		22 47.765651337635774 25 47.765651337635774 28 47.765651337635774;
createNode animCurveTA -n "animCurveTA176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 60.585329838143075 3 80.015481621500115 
		6 68.805471701026818 9 24.03110364770971 12 30.054330796099176 16 30.054330796099176 
		22 30.054330796099176 25 30.054330796099176 28 30.054330796099176;
createNode animCurveTA -n "animCurveTA177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 26.470453106824781 3 52.116969482167768 
		6 76.155138744763235 9 29.784351790446426 12 42.503513712662915 16 42.503513712662915 
		22 42.503513712662915 25 42.503513712662915 28 42.503513712662915;
createNode animCurveTA -n "animCurveTA178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 90.634950435315986 3 12.493711856809163 
		6 53.758807532623848 9 -11.840815764581459 12 17.778757042934444 16 17.778757042934444 
		22 17.778757042934444 25 17.778757042934444 28 17.778757042934444;
createNode animCurveTA -n "animCurveTA179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 14.849434068729675 3 89.026690503274992 
		6 44.327707688273883 9 44.327707688273883 12 50.245906333366761 16 50.245906333366761 
		22 50.245906333366761 25 50.245906333366761 28 50.245906333366761;
createNode animCurveTA -n "animCurveTA180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.051608316401883209 3 14.085654795764759 
		6 16.155960333356528 9 16.155960333356528 12 18.533801400338721 16 18.533801400338721 
		22 18.533801400338721 25 18.533801400338721 28 18.533801400338721;
createNode animCurveTA -n "animCurveTA181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.8225462689462448 3 11.231836934818185 
		6 35.70489299551059 9 35.70489299551059 12 4.535457217051662 16 4.535457217051662 
		22 4.535457217051662 25 4.535457217051662 28 4.535457217051662;
createNode animCurveTA -n "animCurveTA182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 14.859570486861982 3 21.188708713539071 
		6 44.508861846458501 9 71.482424811471773 12 -14.611623946627713 16 -14.611623946627713 
		22 -14.611623946627713 25 -14.611623946627713 28 -14.611623946627713;
createNode animCurveTA -n "animCurveTA183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.052172032759606073 3 44.803850236366607 
		6 20.210867434811487 9 28.967007348130515 12 20.082044386065053 16 20.082044386065053 
		22 20.082044386065053 25 20.082044386065053 28 20.082044386065053;
createNode animCurveTA -n "animCurveTA184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.8225558374727127 3 17.087351151777831 
		6 39.552479202454769 9 49.710402813774394 12 -7.1280060451449101 16 -7.1280060451449101 
		22 -7.1280060451449101 25 -7.1280060451449101 28 -7.1280060451449101;
createNode animCurveTA -n "animCurveTA185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -60.679962459776895 3 -60.679962459776895 
		6 -60.679962459776895 9 -60.679962459776895 12 -60.679962459776895 16 -60.679962459776895 
		22 -60.679962459776895 25 -60.679962459776895 28 -60.679962459776895;
createNode animCurveTA -n "animCurveTA186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 12.355514613247321 3 12.355514613247321 
		6 12.355514613247321 9 12.355514613247321 12 12.355514613247321 16 12.355514613247321 
		22 12.355514613247321 25 12.355514613247321 28 12.355514613247321;
createNode animCurveTA -n "animCurveTA187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 13.110465504305042 3 13.110465504305042 
		6 13.110465504305042 9 13.110465504305042 12 13.110465504305042 16 13.110465504305042 
		22 13.110465504305042 25 13.110465504305042 28 13.110465504305042;
createNode animCurveTA -n "animCurveTA188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -20.551139383726671 3 -20.551139383726671 
		6 -20.551139383726671 9 -20.551139383726671 12 -20.551139383726671 16 -20.551139383726671 
		22 -20.551139383726671 25 -20.551139383726671 28 -20.551139383726671;
createNode animCurveTA -n "animCurveTA189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 3.0722483700821352 3 3.0722483700821352 
		6 3.0722483700821352 9 3.0722483700821352 12 3.0722483700821352 16 3.0722483700821352 
		22 3.0722483700821352 25 3.0722483700821352 28 3.0722483700821352;
createNode animCurveTA -n "animCurveTA190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 19.857676546395723 3 19.857676546395723 
		6 19.857676546395723 9 19.857676546395723 12 19.857676546395723 16 19.857676546395723 
		22 19.857676546395723 25 19.857676546395723 28 19.857676546395723;
createNode animCurveTA -n "npd_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 12.085861696683486;
createNode animCurveTA -n "npd_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 12.085861696683486;
createNode animCurveTA -n "animCurveTA200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 9 0 12 0 16 0 22 0 
		25 0 28 0;
createNode animCurveTA -n "animCurveTA201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 9 0 12 0 16 0 22 0 
		25 0 28 0;
createNode animCurveTA -n "animCurveTA202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.43065494947832267 3 -0.43065494947832267 
		6 -0.43065494947832267 9 -0.43065494947832267 12 -0.43065494947832267 16 
		-0.43065494947832267 22 -0.43065494947832267 25 -0.43065494947832267 28 -0.43065494947832267;
createNode animCurveTA -n "animCurveTA203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 9 0 12 0 16 0 22 0 
		25 0 28 0;
createNode animCurveTA -n "animCurveTA204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 9 0 12 0 16 0 22 0 
		25 0 28 0;
createNode animCurveTA -n "animCurveTA205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 9 0 12 0 16 0 22 0 
		25 0 28 0;
createNode animCurveTA -n "animCurveTA206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -34.436570627353341 3 25.2228710607375 
		6 -16.365869100086353 9 -18.022581161679089 12 3.6600986750295279 16 8.5814372723490866 
		22 8.5814372723490866 25 2.5950449982341266 28 2.5950449982341266;
createNode animCurveTA -n "animCurveTA207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 12.578671015845821 3 12.578671015845813 
		6 5.2572630044073998 9 7.4640318384348516 12 -3.6313907926881459 16 2.560390446389591 
		22 2.560390446389591 25 -4.1146928200640938 28 -4.1146928200640938;
createNode animCurveTA -n "animCurveTA208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -3.7943623819848562 3 -3.7943623819848584 
		6 -11.257570784951772 9 -13.641262878519932 12 -19.50415019488355 16 -66.739457295251469 
		22 -66.739457295251469 25 -12.667798130223519 28 -12.667798130223519;
createNode animCurveTA -n "animCurveTA209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 13.44722672283352 3 26.163252928250486 
		6 51.879995082197311 9 36.688076119137435 12 -2.0912329228773174 16 -2.0912329228773174 
		22 -2.0912329228773174 25 -1.9460649707113857 28 -1.9460649707113857;
createNode animCurveTA -n "animCurveTA210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -2.3998587564717182 3 -24.562250435234127 
		6 -10.377057796540962 9 -6.4850673384516684 12 1.4916189342858892 16 1.4916189342858892 
		22 1.4916189342858892 25 1.5878275615789421 28 1.5878275615789421;
createNode animCurveTA -n "animCurveTA211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.1510007110886771 3 9.3146682550069322 
		6 16.077498970822365 9 23.144705790353981 12 -5.4334269131835891 16 -5.4334269131835891 
		22 -5.4334269131835891 25 -7.3748106830794597 28 -7.3748106830794597;
createNode animCurveTA -n "animCurveTA212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 9 0 12 0 16 0 22 0 
		25 0 28 0;
createNode animCurveTA -n "animCurveTA213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 9 0 12 0 16 0 22 0 
		25 0 28 0;
createNode animCurveTA -n "animCurveTA214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 9 0 12 0 16 0 22 0 
		25 0 28 0;
createNode animCurveTA -n "animCurveTA215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 3.0573637994901306 3 -2.8024798220534217 
		6 3.7698443323413735 9 -0.81408460828386475 12 -3.6258748289115141 16 -2.5165682681934141 
		22 -2.5165682681934141 25 -2.7476082930145038 28 -2.7476082930145038;
createNode animCurveTA -n "animCurveTA216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.75065117256362812 3 -10.164757522473892 
		6 2.4289528499599755 9 6.0188554707975372 12 4.7171663190717021 16 5.5573757285515137 
		22 5.5573757285515137 25 5.3267514935298337 28 5.3267514935298337;
createNode animCurveTA -n "animCurveTA217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 3.2883345540401034 3 3.8194663098746688 
		6 8.1304435101460104 9 -0.33046576951166923 12 16.216768085405803 16 -4.2061646428859856 
		22 -4.2061646428859856 25 0.56307709534310335 28 0.56307709534310335;
createNode animCurveTA -n "animCurveTA218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -20.551139383726671 3 -20.551139383726671 
		6 -20.551139383726671 9 -20.551139383726671 12 -20.551139383726671 16 -20.551139383726671 
		22 -20.551139383726671 25 -20.551139383726671 28 -20.551139383726671;
createNode animCurveTA -n "animCurveTA219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 3.0722483700821352 3 3.0722483700821352 
		6 3.0722483700821352 9 3.0722483700821352 12 3.0722483700821352 16 3.0722483700821352 
		22 3.0722483700821352 25 3.0722483700821352 28 3.0722483700821352;
createNode animCurveTA -n "animCurveTA220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 19.857676546395723 3 19.857676546395723 
		6 19.857676546395723 9 19.857676546395723 12 19.857676546395723 16 19.857676546395723 
		22 19.857676546395723 25 19.857676546395723 28 19.857676546395723;
createNode animCurveTA -n "animCurveTA221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -60.679962459776895 3 -60.679962459776895 
		6 -60.679962459776895 9 -60.679962459776895 12 -60.679962459776895 16 -60.679962459776895 
		22 -60.679962459776895 25 -60.679962459776895 28 -60.679962459776895;
createNode animCurveTA -n "animCurveTA222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 12.355514613247321 3 12.355514613247321 
		6 12.355514613247321 9 12.355514613247321 12 12.355514613247321 16 12.355514613247321 
		22 12.355514613247321 25 12.355514613247321 28 12.355514613247321;
createNode animCurveTA -n "animCurveTA223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 13.110465504305042 3 13.110465504305042 
		6 13.110465504305042 9 13.110465504305042 12 13.110465504305042 16 13.110465504305042 
		22 13.110465504305042 25 13.110465504305042 28 13.110465504305042;
createNode animCurveTA -n "animCurveTA224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 9 0 12 0 16 0 22 0 
		25 0 28 0;
createNode animCurveTA -n "animCurveTA225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 9 0 12 0 16 0 22 0 
		25 0 28 0;
createNode animCurveTA -n "animCurveTA226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.43065494947832267 3 -0.43065494947832267 
		6 -0.43065494947832267 9 -0.43065494947832267 12 -0.43065494947832267 16 
		-0.43065494947832267 22 -0.43065494947832267 25 -0.43065494947832267 28 -0.43065494947832267;
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
connectAttr "npd_hit_by_car_frontSource.st" "clipLibrary1.st[0]";
connectAttr "npd_hit_by_car_frontSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL42.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL43.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX1.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "apu_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ1.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "npd_Hoop_Root_IK_FK_RFoot.a" "clipLibrary1.cel[0].cev[6].cevr"
		;
connectAttr "npd_Hoop_Root_IK_FK_LFoot.a" "clipLibrary1.cel[0].cev[7].cevr"
		;
connectAttr "npd_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary1.cel[0].cev[8].cevr"
		;
connectAttr "npd_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary1.cel[0].cev[9].cevr"
		;
connectAttr "npd_Hoop_Root_IK_FK_RArm.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "npd_Hoop_Root_IK_FK_LArm.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "npd_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "npd_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "npd_Hoop_Root_rotateX.a" "clipLibrary1.cel[0].cev[14].cevr"
		;
connectAttr "npd_Hoop_Root_rotateY.a" "clipLibrary1.cel[0].cev[15].cevr"
		;
connectAttr "npd_Hoop_Root_rotateZ.a" "clipLibrary1.cel[0].cev[16].cevr"
		;
connectAttr "npd_Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "npd_Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "npd_Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
connectAttr "animCurveTL50.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL51.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL52.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA118.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA119.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA120.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL53.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL54.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL55.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA121.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA122.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA123.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "npd_Right_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[32].cevr"
		;
connectAttr "npd_Right_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[33].cevr"
		;
connectAttr "npd_Right_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[34].cevr"
		;
connectAttr "npd_Left_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[35].cevr"
		;
connectAttr "npd_Left_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[36].cevr"
		;
connectAttr "npd_Left_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[37].cevr"
		;
connectAttr "animCurveTL56.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL57.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL58.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL59.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL60.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL61.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL62.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL63.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL64.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA130.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA131.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA132.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "npd_R_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "npd_R_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "npd_R_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "npd_R_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[53].cevr"
		;
connectAttr "npd_R_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[54].cevr"
		;
connectAttr "npd_R_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[55].cevr"
		;
connectAttr "npd_R_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[56].cevr"
		;
connectAttr "npd_R_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[57].cevr"
		;
connectAttr "npd_R_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[58].cevr"
		;
connectAttr "npd_R_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[59].cevr"
		;
connectAttr "npd_L_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "npd_L_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "npd_L_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "npd_L_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[63].cevr"
		;
connectAttr "npd_L_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[64].cevr"
		;
connectAttr "npd_L_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[65].cevr"
		;
connectAttr "npd_L_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[66].cevr"
		;
connectAttr "npd_L_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[67].cevr"
		;
connectAttr "npd_L_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[68].cevr"
		;
connectAttr "npd_L_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[69].cevr"
		;
connectAttr "animCurveTA153.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA154.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA155.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA156.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA157.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA158.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTL65.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTL66.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTL67.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA159.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA160.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA161.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL68.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL69.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL70.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA162.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA163.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA164.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "npd_Right_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "npd_Right_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "npd_Right_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "npd_Right_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "npd_Right_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "npd_Right_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "npd_Left_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[94].cevr"
		;
connectAttr "npd_Left_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[95].cevr"
		;
connectAttr "npd_Left_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[96].cevr"
		;
connectAttr "npd_Left_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[97].cevr"
		;
connectAttr "npd_Left_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[98].cevr"
		;
connectAttr "npd_Left_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[99].cevr"
		;
connectAttr "animCurveTL77.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL78.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL79.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL80.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL81.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL82.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA171.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA172.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA173.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA174.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA175.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA176.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA177.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA178.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA179.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA180.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA181.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA182.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA183.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA184.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA185.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA186.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA187.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA188.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA189.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA190.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "npd_Pelvis_rotateX.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "npd_Pelvis_rotateY.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "npd_Pelvis_rotateZ.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "npd_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "npd_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "npd_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "npd_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "npd_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "npd_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA200.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA201.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA202.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA203.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA204.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA205.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA206.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA207.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA208.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA209.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA210.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA211.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA212.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA213.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA214.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA215.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA216.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA217.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA218.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA219.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA220.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA221.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA222.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA223.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA224.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA225.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA226.a" "clipLibrary1.cel[0].cev[161].cevr";
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
// End of npd_hit_by_car_front.ma
