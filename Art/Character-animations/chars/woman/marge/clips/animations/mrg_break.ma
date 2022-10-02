//Maya ASCII 4.0 scene
//Name: mrg_break.ma
//Last modified: Tue, Oct 01, 2002 05:14:05 PM
requires maya "4.0";
requires "p3dmayaexp" "18.5";
requires "p3dSimpleShader" "18.5";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_breakSource";
	setAttr ".ihi" 0;
	setAttr ".du" 25;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0.25000000528583716 2 0.50000000000000011 
		3 0.74999999471416301 4 1 4.005 1 29 1;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 0.0013333321548998356 0.0013333321548998356 
		0.0013333321548998356 0.0013333319220691919 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0.99999910593032837 0.99999910593032837 
		0.99999910593032837 0.99999910593032837 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTL -n "animCurveTL207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTL -n "animCurveTL208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.079815982092630827 25 -0.079815982092630827 
		29 -0.054075435230564878;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "animCurveTL209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 25 0 29 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "animCurveTL210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 25 0 29 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 25 0 29 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_FK_RFoot1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_FK_LFoot1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Rev_IK_Sim_RFoot1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Rev_IK_Sim_LFoot1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_FK_RArm1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_FK_LArm1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Body_IK_World_RArm1";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 2 0 20 0 25 1;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Body_IK_World_LArm1";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 2 0 20 0 25 1;
createNode animCurveTA -n "mrg_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mrg_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTA -n "mrg_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTL -n "mrg_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTL -n "mrg_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTL -n "mrg_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  25 0;
createNode animCurveTL -n "animCurveTL214";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.17655026201706334 2 -0.17655026201706334 
		5 -0.17655026201706334 8 -0.17655026201706334 10 -0.17655026201706334 12 
		-0.17655026201706334 15 -0.17655026201706334 20 -0.17655026201706334 25 -0.17655026201706334;
createNode animCurveTL -n "animCurveTL215";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.10676264329452093 2 0.10676264329452093 
		5 0.10676264329452093 8 0.10676264329452093 10 0.10676264329452093 12 0.10676264329452093 
		15 0.10676264329452093 20 0.10676264329452093 25 0.10676264329452093;
createNode animCurveTL -n "animCurveTL216";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.073147264740539078 2 -0.073147264740539078 
		5 -0.073147264740539078 8 -0.073147264740539078 10 -0.073147264740539078 
		12 -0.073147264740539078 15 -0.073147264740539078 20 -0.073147264740539078 
		25 -0.073147264740539078;
createNode animCurveTA -n "animCurveTA630";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 0 8 0 10 0 12 0 15 0 
		20 0 25 0;
createNode animCurveTA -n "animCurveTA631";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -25.948901905116401 2 -25.948901905116401 
		5 -25.948901905116401 8 -25.948901905116401 10 -25.948901905116401 12 -25.948901905116401 
		15 -25.948901905116401 20 -25.948901905116401 25 -25.948901905116401;
createNode animCurveTA -n "animCurveTA632";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 0 8 0 10 0 12 0 15 0 
		20 0 25 0;
createNode animCurveTL -n "animCurveTL217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.072059567379697237 2 0.21594587158542247 
		5 0.1480947611609113 8 0.0039883942422623874 10 0.066129498143452065 12 0.068988551038044729 
		15 0.068988551038044729 20 0.090367071303046845 25 0.072059567379697237;
	setAttr -s 9 ".kit[0:8]"  1 3 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[1:8]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 9 ".kix[0:8]"  0 1 0.0094354348257184029 0.020329615101218224 
		0.020508456975221634 0.50361979007720947 0.12377659231424332 0.73545265197753906 
		0.090662427246570587;
	setAttr -s 9 ".kiy[0:8]"  0 0 -0.99995547533035278 -0.99979335069656372 
		0.99978965520858765 0.86392539739608765 0.99231010675430298 0.67757612466812134 
		-0.99588167667388916;
createNode animCurveTL -n "animCurveTL218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.10860528941614173 2 0.1380615615975922 
		5 0.38306981178406924 8 0.63674604123720446 10 0.42190370260430532 12 0.46039338568493982 
		15 0.46039338568493982 20 0.44769388232700358 25 0.10860528941614173;
	setAttr -s 9 ".kit[0:8]"  1 3 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[1:8]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 9 ".kix[0:8]"  0 1 0.0040105194784700871 0.042878367006778717 
		0.0075603919103741646 0.043261107057332993 0.20550031960010529 0.0094749759882688522 
		0.0049150767736136913;
	setAttr -s 9 ".kiy[0:8]"  0 0 0.99999195337295532 0.99908030033111572 
		-0.99997144937515259 0.99906378984451294 -0.978657066822052 -0.99995511770248413 
		-0.9999879002571106;
createNode animCurveTL -n "animCurveTL219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.00088390886240813306 2 0.00078430246903575811 
		5 -0.24615420801255675 8 -0.48238885548990817 10 -0.272175465409144 12 0.75002021290196641 
		15 0.82564514194832339 20 0.05603617967474081 25 0.00088390886240813306;
	setAttr -s 9 ".kit[0:8]"  1 3 9 9 9 1 3 
		9 9;
	setAttr -s 9 ".kot[1:8]"  3 9 9 9 1 3 9 
		9;
	setAttr -s 9 ".kix[0:8]"  0 1 0.00413926737383008 0.063919216394424438 
		0.0010818912414833903 0.0056392410770058632 1 0.0040415404364466667 0.030205573886632919;
	setAttr -s 9 ".kiy[0:8]"  0 0 -0.99999141693115234 -0.9979550838470459 
		0.99999940395355225 0.99998408555984497 0 -0.99999183416366577 -0.99954372644424438;
	setAttr -s 9 ".kox[5:8]"  0.0056391945108771324 1 0.0040415404364466667 
		0.030205573886632919;
	setAttr -s 9 ".koy[5:8]"  0.99998408555984497 0 -0.99999183416366577 
		-0.99954372644424438;
createNode animCurveTA -n "animCurveTA633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 59.627644219622084 8 
		129.94470579323999 10 95.66797327536716 12 -73.018086131560182 15 -73.018086131560182 
		20 33.733278631536685 25 0;
	setAttr -s 9 ".kit[0:8]"  1 3 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[1:8]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 9 ".kix[0:8]"  0 1 0.087843954563140869 0.25612339377403259 
		0.037612959742546082 0.056519385427236557 0.141681969165802 0.25304701924324036 
		0.27237901091575623;
	setAttr -s 9 ".kiy[0:8]"  0 0 0.99613422155380249 0.96664410829544067 
		-0.99929237365722656 -0.99840152263641357 0.98991221189498901 0.96745395660400391 
		-0.96219003200531006;
createNode animCurveTA -n "animCurveTA634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 18.067901022144856 8 
		0 10 1.9717398102645989 12 -7.541357841911938 15 -7.541357841911938 20 1.6309141206580646 
		25 0;
	setAttr -s 9 ".kit[0:8]"  1 3 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[1:8]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 0.51023060083389282 0.71166038513183594 
		0.70844829082489014 0.85737043619155884 0.93011462688446045 0.98572707176208496;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 -0.86003762483596802 -0.70252370834350586 
		-0.70576274394989014 0.51469987630844116 0.36726933717727661 -0.16835127770900726;
createNode animCurveTA -n "animCurveTA635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 34.418657205406539 8 
		17.020924926105209 10 23.419320643092039 12 21.495646267930905 15 21.495646267930905 
		20 16.743898011808156 25 0;
	setAttr -s 9 ".kit[0:8]"  1 3 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kot[1:8]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 9 ".kix[0:8]"  0 1 0.55846905708312988 0.65557867288589478 
		0.86287379264831543 0.98030698299407959 0.95488655567169189 0.66419583559036255 
		0.49540954828262329;
	setAttr -s 9 ".kiy[0:8]"  0 0 0.82952535152435303 -0.75512689352035522 
		0.50541943311691284 -0.19747962057590485 -0.29697087407112122 -0.74755865335464478 
		-0.86865955591201782;
createNode animCurveTA -n "animCurveTA636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 2 0 3 0 4 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 2 0 3 0 4 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA644";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 2 0 3 0 4 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA645";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 2 0 3 0 4 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA646";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 2 0 3 0 4 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 2 0 3 0 4 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 0 8 0 10 0 12 0 15 0 
		20 0 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 0 8 0 10 0 12 0 15 0 
		20 0 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.1269999742507935 2 1 5 1 8 
		1 10 1 12 1 15 1 20 1 25 1.1269999742507935;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.013122232630848885 1 1 1 1 
		1 0.026237688958644867 0.01312223169952631;
	setAttr -s 9 ".kiy[0:8]"  0 -0.99991387128829956 0 0 0 0 
		0 0.99965572357177734 0.99991387128829956;
createNode animCurveTL -n "animCurveTL223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 -0.045778940552537666 5 0.038174269395218133 
		8 0.38376961521261516 10 0.12025400062861753 12 -0.040475225204494321 15 
		-0.040475225204494321 20 -0.023874275683688256 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.043617874383926392 0.0046560005284845829 
		0.020301273092627525 0.0031428236979991198 0.010368849150836468 0.15860022604465485 
		0.082077041268348694 0.069640651345252991;
	setAttr -s 9 ".kiy[0:8]"  0 0.99904829263687134 0.99998915195465088 
		0.9997938871383667 -0.99999505281448364 -0.9999462366104126 0.98734289407730103 
		0.99662595987319946 0.99757212400436401;
createNode animCurveTL -n "animCurveTL224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0.25675066193450485 5 0.73360821793546738 
		8 1.2130662412233499 10 0.73671986919898047 12 0.25857415696294944 15 0.25857415696294944 
		20 0.15251973811425509 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.0022718696855008602 0.0020913551561534405 
		0.47215771675109863 0.0013969021383672953 0.0034856665879487991 0.025136377662420273 
		0.012890136800706387 0.010926893912255764;
	setAttr -s 9 ".kiy[0:8]"  0 0.99999743700027466 0.99999779462814331 
		0.88151407241821289 -0.99999904632568359 -0.99999392032623291 -0.99968403577804565 
		-0.99991691112518311 -0.99994027614593506;
createNode animCurveTL -n "animCurveTL225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.1269999742507935 2 0.75804224920138896 
		5 0.35138515440628076 8 0.20382702264821484 10 0.36674204109908365 12 0.55973992911493176 
		15 0.55973992911493176 20 0.74031298862007744 25 1.1269999742507935;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.0021488280035555363 0.0036086828913539648 
		0.1078953742980957 0.003746208269149065 0.0086353505030274391 0.014766189269721508 
		0.0058760982938110828 0.0043100779876112938;
	setAttr -s 9 ".kiy[0:8]"  0 -0.99999767541885376 -0.99999350309371948 
		0.99416226148605347 0.9999929666519165 0.99996268749237061 0.99989098310470581 
		0.99998271465301514 0.99999070167541504;
createNode animCurveTL -n "animCurveTL226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.097247464600251146 2 -0.15546872592148803 
		5 -0.21687516145202732 8 -0.28832859624972773 10 -0.2927944356695677 12 -0.2927944356695677 
		15 -0.28832859624972773 20 -0.1880825541587999 25 -0.097247464600251146;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.013930761255323887 0.015051748603582382 
		0.02194785512983799 0.28608417510986328 0.34964737296104431 0.025458451360464096 
		0.017441943287849426 0.0183451808989048;
	setAttr -s 9 ".kiy[0:8]"  0 -0.99990296363830566 -0.99988669157028198 
		-0.99975913763046265 -0.95820450782775879 0.93688136339187622 0.99967586994171143 
		0.9998478889465332 0.99983173608779907;
createNode animCurveTL -n "animCurveTL227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.9825577053607899 2 0.98320758235555217 
		5 0.97432910226251379 8 0.96354127943949563 10 0.95605320571078078 12 0.95605320571078078 
		15 0.94966583418627037 20 0.96945058174718013 25 0.9825577053607899;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.19851444661617279 0.10117495059967041 
		0.090817935764789581 0.17530354857444763 0.25247803330421448 0.19521446526050568 
		0.10082573443651199 0.12614160776138306;
	setAttr -s 9 ".kiy[0:8]"  0 -0.98009794950485229 -0.99486863613128662 
		-0.99586749076843262 -0.98451441526412964 -0.96760261058807373 0.98076057434082031 
		0.99490410089492798 0.99201226234436035;
createNode animCurveTL -n "animCurveTL228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0.03630238878455902 5 0.025824439966035166 
		8 0 10 0.059084359064418418 12 0.059084359064418418 15 0.13364476574287781 
		20 0.077846789928972371 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.064404353499412537 0.055009368807077408 
		0.05004756897687912 0.022560859099030495 0.022347657009959221 0.14071387052536011 
		0.024933988228440285 0.021404668688774109;
	setAttr -s 9 ".kiy[0:8]"  0 0.99792391061782837 -0.99848586320877075 
		0.99874681234359741 0.99974548816680908 0.99975025653839111 0.99005031585693359 
		-0.99968910217285156 -0.9997708797454834;
createNode animCurveTA -n "animCurveTA648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.62843630316474508 2 -0.40022818229458657 
		5 -0.43297190483575532 8 -0.54510006847639658 10 -5.8670788122752286 12 -6.1908177085995577 
		15 -8.3623227714759345 20 -4.9272710105606929 25 -0.62843630316474508;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.99979054927825928 0.9999200701713562 
		0.86912912130355835 0.80421751737594604 0.96751517057418823 0.99659788608551025 
		0.92688769102096558 0.91186249256134033;
	setAttr -s 9 ".kiy[0:8]"  0 0.020464697852730751 -0.01264144666492939 
		-0.49458521604537964 -0.59433501958847046 -0.25281301140785217 0.082417592406272888 
		0.3753388524055481 0.4104958176612854;
createNode animCurveTA -n "animCurveTA649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -5.8284402688137167 2 -5.8483228707506312 
		5 -0.35435553507003259 8 7.9793529774802483 10 -3.845655794979721 12 -18.957423325359628 
		15 -31.487832634365596 20 -20.603158283285701 25 -5.8284402688137167;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.86756354570388794 0.63808190822601318 
		0.93919724225997925 0.27284559607505798 0.32652577757835388 0.99424892663955688 
		0.59707576036453247 0.54281783103942871;
	setAttr -s 9 ".kiy[0:8]"  0 0.4973263144493103 0.76996850967407227 
		-0.34337815642356873 -0.96205782890319824 -0.94518828392028809 -0.10709363967180252 
		0.8021848201751709 0.83985048532485962;
createNode animCurveTA -n "animCurveTA650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1.295636019309746 2 -3.5386563765651489 
		5 -3.2788423892182128 8 -2.270766713226716 10 -2.3056708727283333 12 -0.68233362151616805 
		15 1.1580706776274032 20 0.17895930461225848 25 -1.295636019309746;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.97910779714584351 0.99393457174301147 
		0.99484723806381226 0.97906011343002319 0.94006913900375366 0.99841493368148804 
		0.99184775352478027 0.98828643560409546;
	setAttr -s 9 ".kiy[0:8]"  0 -0.20334196090698242 0.10997314006090164 
		0.10138516873121262 0.20357146859169006 0.34098389744758606 0.056282136589288712 
		-0.12742842733860016 -0.15261046588420868;
createNode animCurveTA -n "animCurveTA651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA657";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA658";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA659";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA660";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA661";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA662";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA663";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA664";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA665";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA666";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA667";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA668";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA669";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA670";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA671";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 0 8 0 10 0 12 0 15 0 
		20 0 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA672";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 0 8 0 10 0 12 0 15 0 
		20 0 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA673";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 0 8 0 10 0 12 0 15 0 
		20 0 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA674";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 0 8 0 10 0 12 0 15 0 
		20 0 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 0 8 0 10 0 12 0 15 0 
		20 0 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA676";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 0 8 0 10 0 12 0 15 0 
		20 0 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.43524234076486068 2 -0.22213686555826967 
		5 -0.44956007846131602 8 -0.60064437693700867 10 -0.71207022535963438 12 
		-0.6444741880703877 15 -0.40530506984244696 20 -0.50115799592794075 25 -0.43524234076486068;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.11562497913837433 0.0052838372066617012 
		0.0063488329760730267 0.030406627804040909 0.0054329573176801205 0.018603656440973282 
		0.11066009104251862 0.025276757776737213;
	setAttr -s 9 ".kiy[0:8]"  0 -0.99329292774200439 -0.99998605251312256 
		-0.99997985363006592 -0.99953758716583252 0.9999852180480957 0.99982690811157227 
		-0.99385833740234375 0.99968051910400391;
createNode animCurveTL -n "animCurveTL230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.82665738350180629 2 -0.74434029493267351 
		5 -0.051079110414555304 8 -0.12237873479057663 10 -0.32368919711336241 12 
		-0.32969153754455344 15 -0.1169773144566932 20 -0.75519803936981222 25 -0.82665738350180629;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.0021489292848855257 0.0032156163360923529 
		0.0061136237345635891 0.0064313719049096107 0.0080624902620911598 0.0062669175677001476 
		0.0046969004906713963 0.023316942155361176;
	setAttr -s 9 ".kiy[0:8]"  0 0.99999767541885376 0.99999481439590454 
		-0.99998128414154053 -0.99997931718826294 0.99996751546859741 -0.9999803900718689 
		-0.99998897314071655 -0.99972814321517944;
createNode animCurveTL -n "animCurveTL231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.27773886459742925 2 0.52402709525502311 
		5 0.73777971735755343 8 -0.44005280963497861 10 -0.23657972932635488 12 -0.54432197855533648 
		15 0.77104028814523806 20 0.24209758346113033 25 0.27773886459742925;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.0036228429526090622 0.0020745124202221632 
		0.0017105230363085866 0.012786371633410454 0.0016540604410693049 0.0033908761106431484 
		0.0067570391111075878 0.046711206436157227;
	setAttr -s 9 ".kiy[0:8]"  0 0.99999344348907471 -0.99999785423278809 
		-0.99999850988388062 -0.99991822242736816 0.99999862909317017 0.99999427795410156 
		-0.99997717142105103 0.99890846014022827;
createNode animCurveTA -n "animCurveTA677";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.8121934161072299e-015 2 39.739920307348818 
		5 -66.79788139616582 8 -32.120140525228145 10 -14.34741433770006 12 -11.951826923382724 
		15 -92.309138665514851 20 29.759997391972885 25 1.8121934161072299e-015;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.14151926338672638 0.15747523307800293 
		0.17911872267723083 0.35422399640083313 0.12157835066318512 0.34394782781600952 
		0.20260712504386902 0.30553305149078369;
	setAttr -s 9 ".kiy[0:8]"  0 -0.98993551731109619 -0.98752295970916748 
		0.98382747173309326 0.93516057729721069 -0.99258184432983398 0.93898874521255493 
		0.97926008701324463 -0.95218145847320557;
createNode animCurveTA -n "animCurveTA678";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 28.652637602052774 2 19.216886473764049 
		5 75.074664523113285 8 11.084040586486518 10 21.435670965376392 12 -5.588983289674724 
		15 78.563571859539763 20 47.567295939662031 25 28.652637602052774;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.20148734748363495 0.81548893451690674 
		0.17527307569980621 0.41654813289642334 0.16486898064613342 0.27624803781509399 
		0.35738235712051392 0.45068255066871643;
	setAttr -s 9 ".kiy[0:8]"  0 0.97949111461639404 -0.57877266407012939 
		-0.9845198392868042 -0.90911364555358887 0.98631548881530762 0.96108639240264893 
		-0.93395817279815674 -0.89268428087234497;
createNode animCurveTA -n "animCurveTA679";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 64.676908227303443 2 91.05171451206283 
		5 -24.378210942764873 8 -2.4232972455298216 10 15.8799678023988 12 26.365066741958827 
		15 -66.750157603830388 20 56.675464269842749 25 64.676908227303443;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.10661786049604416 0.12167966365814209 
		0.2307974100112915 0.25648826360702515 0.11480267345905304 0.45012608170509338 
		0.14380659162998199 0.76649349927902222;
	setAttr -s 9 ".kiy[0:8]"  0 -0.99430006742477417 -0.9925694465637207 
		0.97300183773040771 0.96654736995697021 -0.99338829517364502 0.89296501874923706 
		0.98960578441619873 0.64225202798843384;
createNode animCurveTL -n "animCurveTL232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.5198069948790518 2 0.38507537203551645 
		5 0.37319616607226302 8 0.82556653231636423 10 0.47527512187431692 12 0.38908077691923182 
		15 0.58289965914551378 20 0.40435274563715273 25 0.5198069948790518;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.011367229744791985 0.0045403395779430866 
		0.016325054690241814 0.0030546863563358784 0.015484078787267208 0.17200931906700134 
		0.05275876447558403 0.014434228651225567;
	setAttr -s 9 ".kiy[0:8]"  0 -0.99993538856506348 0.99998968839645386 
		0.99986672401428223 -0.99999535083770752 0.99988013505935669 0.9850953221321106 
		-0.99860727787017822 0.99989581108093262;
createNode animCurveTL -n "animCurveTL233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.72394202659893114 2 -0.81917461890104659 
		5 -0.6567891859023588 8 -0.32211307217624419 10 -0.02977614581757286 12 -0.032000442180528554 
		15 -0.20949324801428845 20 -0.757307896446201 25 -0.72394202659893114;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.024811362847685814 0.0040236138738691807 
		0.0026580959092825651 0.0045958678238093853 0.0092734359204769135 0.0036765770055353642 
		0.0064792907796800137 0.049889039248228073;
	setAttr -s 9 ".kiy[0:8]"  0 0.99969214200973511 0.99999189376831055 
		0.99999648332595825 0.99998944997787476 -0.99995702505111694 -0.99999326467514038 
		-0.99997901916503906 0.99875473976135254;
createNode animCurveTL -n "animCurveTL234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.36439499068905612 2 -0.0059323844201152713 
		5 -0.55978619461274837 8 0.25616021525423238 10 0.64099612388635463 12 0.8130950137287013 
		15 0.30743284139481447 20 0.33172004550744233 25 0.36439499068905612;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.0018033952219411731 0.0076306690461933613 
		0.0013879826292395592 0.0023940494284033775 0.0049964906647801399 0.0055396021343767643 
		0.058418456465005875 0.050941254943609238;
	setAttr -s 9 ".kiy[0:8]"  0 -0.99999839067459106 0.99997091293334961 
		0.99999904632568359 0.99999713897705078 -0.99998754262924194 -0.99998468160629272 
		0.99829220771789551 0.99870163202285767;
createNode animCurveTA -n "animCurveTA680";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 7.7976222737965317 2 -1.0114088281186548 
		5 1.154965014099119 8 5.6973836248252105 10 -35.993622216290568 12 111.57231792831861 
		15 -74.71434069527821 20 10.098125601704218 25 7.7976222737965317;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.82091856002807617 0.86298179626464844 
		0.24896284937858582 0.071968190371990204 0.23944558203220367 0.14889076352119446 
		0.22550259530544281 0.97218656539916992;
	setAttr -s 9 ".kiy[0:8]"  0 -0.57104527950286865 0.50523495674133301 
		-0.96851301193237305 0.99740689992904663 -0.97090977430343628 -0.98885363340377808 
		0.97424256801605225 -0.23420767486095428;
createNode animCurveTA -n "animCurveTA681";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -30.409274105849079 2 -15.635981691465849 
		5 -13.666999558347381 8 -8.4596610269627543 10 -103.90637771529504 12 -77.046367198946115 
		15 -67.130746775562216 20 -58.690796421173346 25 -30.409274105849079;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.49544581770896912 0.84752100706100464 
		0.10523425787687302 0.11069907993078232 0.25132894515991211 0.63975346088409424 
		0.46141791343688965 0.31990742683410645;
	setAttr -s 9 ".kiy[0:8]"  0 0.86863887310028076 0.53076183795928955 
		-0.99444746971130371 -0.99385398626327515 0.96790170669555664 0.76858019828796387 
		0.88718289136886597 0.94744879007339478;
createNode animCurveTA -n "animCurveTA682";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -64.859940280210893 2 -60.07128150816915 
		5 -52.564829010972289 8 -32.96662102996158 10 -10.36244218753019 12 -159.25754728145668 
		15 51.849663154843675 20 -55.855490628280023 25 -64.859940280210893;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.61339741945266724 0.38940361142158508 
		0.22069461643695831 0.060380414128303528 0.15171888470649719 0.14617466926574707 
		0.16149398684501648 0.7275579571723938;
	setAttr -s 9 ".kiy[0:8]"  0 0.78977435827255249 0.92106723785400391 
		0.97534298896789551 -0.99817544221878052 0.98842370510101318 0.98925882577896118 
		-0.98687368631362915 -0.68604624271392822;
createNode animCurveTL -n "animCurveTL235";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.65311611999272123 25 -0.65311611999272123;
createNode animCurveTL -n "animCurveTL236";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.222264083594911 25 2.222264083594911;
createNode animCurveTL -n "animCurveTL237";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.097994651149805143 25 -0.097994651149805143;
createNode animCurveTA -n "animCurveTA683";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 5.4739599453216465 25 5.4739599453216465;
createNode animCurveTA -n "animCurveTA684";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.5874521608419823 25 8.5874521608419823;
createNode animCurveTA -n "animCurveTA685";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 74.754744621954103 25 74.754744621954103;
createNode animCurveTL -n "animCurveTL238";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.25368378509166484 25 0.25368378509166484;
createNode animCurveTL -n "animCurveTL239";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.2026421011163611 25 2.2026421011163611;
createNode animCurveTL -n "animCurveTL240";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.0085295933619701936 25 0.0085295933619701936;
createNode animCurveTA -n "animCurveTA686";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 16.226511010665412 25 16.226511010665412;
createNode animCurveTA -n "animCurveTA687";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -8.5139660854992858 25 -8.5139660854992858;
createNode animCurveTA -n "animCurveTA688";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -68.213989601412422 25 -68.213989601412422;
createNode animCurveTL -n "animCurveTL241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.245189189189189 2 -0.0015581926307076434 
		5 -0.004062430828872832 8 0.73015852092030586 10 0.42253598686955535 12 1.1928793549138215 
		15 1.2160223050332319 20 0.30756185894560523 25 -0.245189189189189;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.0069118286482989788 0.0027332878671586514 
		0.0039068451151251793 0.0028814950492233038 0.0021004306618124247 0.0030120881274342537 
		0.0022812059614807367 0.0030152073595672846;
	setAttr -s 9 ".kiy[0:8]"  0 0.99997609853744507 0.99999624490737915 
		0.99999237060546875 0.99999582767486572 0.99999779462814331 -0.99999547004699707 
		-0.99999737739562988 -0.99999547004699707;
createNode animCurveTL -n "animCurveTL242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 -0.018748313031459483 5 -0.048879530860896976 
		8 -0.18982055638400394 10 -0.15685435032523193 12 -0.04124869323889372 15 
		-0.63223331522409676 20 -0.49882490256977258 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.034077633172273636 0.011690167710185051 
		0.015433860011398792 0.0089739710092544556 0.0035059531219303608 0.0058277100324630737 
		0.0052722417749464512 0.0033411667682230473;
	setAttr -s 9 ".kiy[0:8]"  0 -0.99941921234130859 -0.9999316930770874 
		-0.99988090991973877 0.99995970726013184 -0.99999386072158813 -0.99998301267623901 
		0.99998611211776733 0.99999439716339111;
createNode animCurveTL -n "animCurveTL243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1 2 -1.1064209055532239 5 -1.2774545030058311 
		8 -0.8411222477763427 10 -0.70790369076094972 12 -0.11097702011493407 15 
		-0.10118747153449739 20 -1.2672468408197248 25 -1;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.0060068825259804726 0.0075384587980806828 
		0.0029262700118124485 0.0018261176301166415 0.0027470181230455637 0.002306260634213686 
		0.003708571195602417 0.0062363101169466972;
	setAttr -s 9 ".kiy[0:8]"  0 -0.99998193979263306 0.99997156858444214 
		0.99999570846557617 0.99999833106994629 0.99999624490737915 -0.99999731779098511 
		-0.99999314546585083 0.99998056888580322;
createNode animCurveTL -n "animCurveTL244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.062337280601809833 2 -0.47708589997271617 
		5 -1.0804181413886591 8 -0.31783300757164024 10 -0.97667705560068274 12 0.2343565322918478 
		15 -0.98262430695177305 20 0.096531185217783089 25 0.062337280601809833;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.0014584616292268038 0.012557650916278362 
		0.016063563525676727 0.0024146228097379208 0.26984554529190063 0.019344538450241089 
		0.003189893439412117 0.048683833330869675;
	setAttr -s 9 ".kiy[0:8]"  0 -0.99999892711639404 0.99992114305496216 
		0.99987095594406128 0.99999707937240601 -0.96290361881256104 -0.99981290102005005 
		0.99999493360519409 -0.99881422519683838;
createNode animCurveTL -n "animCurveTL245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.40762644910266188 2 -0.51284362019654484 
		5 -0.68194264830745166 8 -0.4517864690658473 10 -0.56536924680662304 12 -0.43916119735202808 
		15 -0.3504790502083675 20 -0.42622719251520585 25 -0.40762644910266188;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.0060756015591323376 0.032738637179136276 
		0.014295683242380619 0.10502423346042633 0.0077556660398840904 0.20192775130271912 
		0.058229722082614899 0.08924461156129837;
	setAttr -s 9 ".kiy[0:8]"  0 -0.99998152256011963 0.99946397542953491 
		0.99989783763885498 0.99446964263916016 0.99996989965438843 0.9794003963470459 
		-0.99830323457717896 0.99600976705551147;
createNode animCurveTL -n "animCurveTL246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.93129112588482243 2 -0.67853174194361521 
		5 -0.27231129811899407 8 -1.8882710794185755 10 -1.0166420512384873 12 -1.3167850861981389 
		15 -1.0215413715751889 20 -1.1586743970558953 25 -0.93129112588482243;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.0025291538331657648 0.0016532463487237692 
		0.0022391423117369413 0.0023330925032496452 0.32205823063850403 0.016863424330949783 
		0.036909174174070358 0.0073295710608363152;
	setAttr -s 9 ".kiy[0:8]"  0 0.99999678134918213 -0.99999862909317017 
		-0.99999749660491943 0.99999725818634033 -0.94671988487243652 0.99985778331756592 
		0.99931859970092773 0.9999731183052063;
createNode animCurveTA -n "animCurveTA689";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 12.253734489678925 2 12.253734489678925 
		5 12.253734489678925 8 12.253734489678925 10 12.253734489678925 12 12.253734489678925 
		15 12.253734489678925 20 12.253734489678925 25 12.253734489678925;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA690";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -65.746751280844975 2 -65.746751280844961 
		5 -65.746751280844961 8 -65.746751280844961 10 -65.746751280844961 12 -65.746751280844961 
		15 -65.746751280844961 20 -65.746751280844961 25 -65.746751280844975;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA691";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 0 8 0 10 0 12 0 15 0 
		20 0 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA692";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.061808866237340665 2 -0.061808866237337522 
		5 -0.061808866237337522 8 -0.061808866237337522 10 -0.061808866237337522 
		12 -0.061808866237337522 15 -0.061808866237337522 20 -0.061808866237337522 
		25 -0.061808866237340665;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA693";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -59.058178941076754 2 -59.058178941076754 
		5 -59.058178941076754 8 -59.058178941076754 10 -59.058178941076754 12 -59.058178941076754 
		15 -59.058178941076754 20 -59.058178941076754 25 -59.058178941076754;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA694";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 16.57914742975785 2 16.579147429757843 
		5 16.579147429757843 8 16.579147429757843 10 16.579147429757843 12 16.579147429757843 
		15 16.579147429757843 20 16.579147429757843 25 16.57914742975785;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA695";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.5572674112203639 2 8.5572674112203622 
		5 8.5572674112203622 8 8.5572674112203622 10 8.5572674112203622 12 8.5572674112203622 
		15 8.5572674112203622 20 8.5572674112203622 25 8.5572674112203639;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA696";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 15.711328223519061 2 15.711328223519057 
		5 15.711328223519057 8 15.711328223519057 10 15.711328223519057 12 15.711328223519057 
		15 15.711328223519057 20 15.711328223519057 25 15.711328223519061;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA697";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 0 8 0 10 0 12 0 15 0 
		20 0 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA698";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 0 8 0 10 0 12 0 15 0 
		20 0 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA699";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 0 8 0 10 0 12 0 15 0 
		20 0 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA700";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 0 8 0 10 0 12 0 15 0 
		20 0 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA701";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 0 8 0 10 0 12 0 15 0 
		20 0 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA702";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 0 8 0 10 0 12 0 15 0 
		20 0 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA703";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 10.423754966968488 2 10.423754966968488 
		5 10.423754966968488 8 10.423754966968488 10 10.423754966968488 12 10.423754966968488 
		15 10.423754966968488 20 10.423754966968488 25 10.423754966968488;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA704";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 27.7228482558439 2 27.722848255843903 
		5 27.722848255843903 8 27.722848255843903 10 27.722848255843903 12 27.722848255843903 
		15 27.722848255843903 20 27.722848255843903 25 27.7228482558439;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA705";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 21.576484776388224 2 21.576484776388227 
		5 21.576484776388227 8 21.576484776388227 10 21.576484776388227 12 21.576484776388227 
		15 21.576484776388227 20 21.576484776388227 25 21.576484776388224;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA706";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 0 8 0 10 0 12 0 15 0 
		20 0 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA707";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 0 8 0 10 0 12 0 15 0 
		20 0 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA708";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 27.080064458283051 2 27.080064458283051 
		5 27.080064458283051 8 27.080064458283051 10 27.080064458283051 12 27.080064458283051 
		15 27.080064458283051 20 27.080064458283051 25 27.080064458283051;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA709";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA710";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA711";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 4.005 0 29 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[4:6]"  5 1 5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 0 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[5:6]"  0 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "animCurveTA712";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 2 0 3 0 4 0 4.005 0 25 
		0 29 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 1 1 9 
		1;
	setAttr -s 8 ".kot[4:7]"  5 1 9 5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 0 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[5:7]"  0 1 0;
	setAttr -s 8 ".koy[5:7]"  0 0 0;
createNode animCurveTA -n "animCurveTA713";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 2 0 3 0 4 0 4.005 0 25 
		0 29 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 1 1 9 
		1;
	setAttr -s 8 ".kot[4:7]"  5 1 9 5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 0 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[5:7]"  0 1 0;
	setAttr -s 8 ".koy[5:7]"  0 0 0;
createNode animCurveTA -n "animCurveTA714";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 13.994403295754109 1 13.994403295754106 
		2 13.994403295754109 3 13.994403295754108 4 13.994403295754109 4.005 13.994403295754109 
		25 13.994403295754109 29 13.994403295754109;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 1 1 9 
		1;
	setAttr -s 8 ".kot[4:7]"  5 1 9 5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 0 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[5:7]"  0 1 0;
	setAttr -s 8 ".koy[5:7]"  0 0 0;
createNode animCurveTA -n "animCurveTA715";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 2 0 3 0 4 0 4.005 0 25 
		0 29 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 1 1 9 
		1;
	setAttr -s 8 ".kot[4:7]"  5 1 9 5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 0 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[5:7]"  0 1 0;
	setAttr -s 8 ".koy[5:7]"  0 0 0;
createNode animCurveTA -n "animCurveTA716";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 2 0 3 0 4 0 4.005 0 25 
		0 29 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 1 1 9 
		1;
	setAttr -s 8 ".kot[4:7]"  5 1 9 5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 0 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[5:7]"  0 1 0;
	setAttr -s 8 ".koy[5:7]"  0 0 0;
createNode animCurveTA -n "animCurveTA717";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 13.994403295754109 1 13.994403295754106 
		2 13.994403295754109 3 13.994403295754108 4 13.994403295754109 4.005 13.994403295754109 
		25 13.994403295754109 29 13.994403295754109;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 1 1 9 
		1;
	setAttr -s 8 ".kot[4:7]"  5 1 9 5;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 0 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[5:7]"  0 1 0;
	setAttr -s 8 ".koy[5:7]"  0 0 0;
createNode animCurveTA -n "animCurveTA718";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 0 8 0 10 0 12 0 15 0 
		20 0 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA719";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 0 8 0 10 0 12 0 15 0 
		20 0 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA720";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 27.911632519594587 2 27.911632519594587 
		5 27.911632519594587 8 27.911632519594587 10 27.911632519594587 12 27.911632519594587 
		15 27.911632519594587 20 27.911632519594587 25 27.911632519594587;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA721";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 0 8 0 10 0 12 0 15 0 
		20 0 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA722";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 0 8 0 10 0 12 0 15 0 
		20 0 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA723";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 0 8 0 10 0 12 0 15 0 
		20 0 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA724";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.71009266045615993 2 -0.65034243152644589 
		5 -0.64976106343855833 8 1.3316995725792671 10 -30.414355547029565 12 -37.277115132228239 
		15 -26.238406753834301 20 11.731815758268334 25 0.71009266045615993;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.99001228809356689 0.98536890745162964 
		0.30549028515815735 0.19410441815853119 0.91622316837310791 0.29762864112854004 
		0.57822036743164063 0.65481835603713989;
	setAttr -s 9 ".kiy[0:8]"  0 -0.1409812718629837 0.17043511569499969 
		-0.95219516754150391 -0.98098087310791016 0.40066835284233093 0.95468169450759888 
		0.81588059663772583 -0.75578629970550537;
createNode animCurveTA -n "animCurveTA725";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.39065484564574893 2 -3.6862147610340332 
		5 -2.8602286003922353 8 -2.860228600392237 10 -2.2298722974879586 12 -2.2298722974879603 
		15 -2.229872297487963 20 -9.9496668493589659 25 0.39065484564574893;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.94664812088012695 0.99741226434707642 
		0.99782836437225342 0.9966130256652832 1 0.89254158735275269 0.99071753025054932 
		0.67844825983047485;
	setAttr -s 9 ".kiy[0:8]"  0 -0.32226905226707458 0.071894362568855286 
		0.065867409110069275 0.082233980298042297 0 -0.45096504688262939 0.13593682646751404 
		0.73464816808700562;
createNode animCurveTA -n "animCurveTA726";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.1445984161934586 2 8.7336251517509051 
		5 8.7242329117706756 8 8.7242329117706703 10 4.7004432065185107 12 4.7004432065185124 
		15 4.7004432065185133 20 6.0018116912266102 25 8.1445984161934586;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.99816286563873291 0.99999964237213135 
		0.92153066396713257 0.8847733736038208 1 0.99639230966567993 0.98412567377090454 
		0.97573661804199219;
	setAttr -s 9 ".kiy[0:8]"  0 0.060587670654058456 -0.00081962725380435586 
		-0.38830560445785522 -0.46602150797843933 0 0.084867082536220551 0.17747284471988678 
		0.21894760429859161;
createNode animCurveTA -n "animCurveTA727";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 4.2681516953144483 5 10.670379288405979 
		8 -2.5473068990313688 10 12.618237105768685 12 39.581093029896138 15 38.247358651106168 
		20 -0.30703136055990293 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.66687685251235962 0.85947304964065552 
		0.97982370853424072 0.17842710018157959 0.34914731979370117 0.35769975185394287 
		0.44674408435821533 0.99948352575302124;
	setAttr -s 9 ".kiy[0:8]"  0 0.74516791105270386 -0.51118099689483643 
		0.19986365735530853 0.98395311832427979 0.93706786632537842 -0.93383663892745972 
		-0.89466178417205811 0.032135643064975739;
createNode animCurveTA -n "animCurveTA728";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 -2.0309123641541853 5 -5.0772809264594061 
		8 -0.81671312274016816 10 -3.6523983551030574 12 -5.8722118368974927 15 -11.605340117790774 
		20 3.2669640489679028 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.88295412063598633 0.99443316459655762 
		0.98905020952224731 0.83393275737762451 0.76841139793395996 0.85818970203399658 
		0.85459357500076294 0.94616097211837769;
	setAttr -s 9 ".kiy[0:8]"  0 -0.46945929527282715 0.10536901652812958 
		0.14757950603961945 -0.55186605453491211 -0.63995617628097534 0.51333272457122803 
		0.51929742097854614 -0.32369652390480042;
createNode animCurveTA -n "animCurveTA729";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 1.0047141789628427 5 25.691233502325943 
		8 22.114762454524868 10 23.160837154310844 12 14.767727826347256 15 6.7140133876449886 
		20 -4.8410308463809208 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.34840577840805054 0.477073073387146 
		0.96663904190063477 0.72076606750488281 0.50211697816848755 0.61463260650634766 
		0.94340300559997559 0.89193326234817505;
	setAttr -s 9 ".kiy[0:8]"  0 0.93734383583068848 0.8788636326789856 
		-0.25614243745803833 -0.69317841529846191 -0.86479973793029785 -0.78881353139877319 
		-0.33164852857589722 0.45216703414916992;
createNode animCurveTA -n "animCurveTA730";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -2.0270270270270276 2 4.8306807949313404 
		5 4.7694969218404175 8 4.7694969218404175 10 4.7694969218404175 12 4.7694969218404175 
		15 4.7694969218404175 20 4.8113212877062557 25 -2.0270270270270276;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.81471699476242065 0.99998575448989868 
		1 1 1 0.99999624490737915 0.94212257862091064 0.81303131580352783;
	setAttr -s 9 ".kiy[0:8]"  0 0.57985883951187134 -0.0053392243571579456 
		0 0 0 0.002737388014793396 -0.33526861667633057 -0.58222001791000366;
createNode animCurveTA -n "animCurveTA731";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -2.4108692476260059 2 7.5220401665806769 
		5 1.1296910145752699 8 1.1296910145752699 10 1.1296910145752699 12 1.1296910145752699 
		15 1.1296910145752699 20 5.499403833657337 25 -2.4108692476260059;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.93762767314910889 0.87330985069274902 
		1 1 1 0.96145212650299072 0.98324710130691528 0.77010083198547363;
	setAttr -s 9 ".kiy[0:8]"  0 0.34764105081558228 -0.4871651828289032 
		0 0 0 0.27497243881225586 -0.18227760493755341 -0.63792222738265991;
createNode animCurveTA -n "animCurveTA732";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 13.0432985235726 2 7.1812287361112688 
		5 6.6394980673602388 8 6.6394980673602388 10 6.6394980673602388 12 6.6394980673602388 
		15 6.6394980673602388 20 7.0098169169161739 25 13.0432985235726;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.83053779602050781 0.99888443946838379 
		1 1 1 0.99970638751983643 0.94812178611755371 0.84539508819580078;
	setAttr -s 9 ".kiy[0:8]"  0 -0.55696231126785278 -0.047222182154655457 
		0 0 0 0.024230197072029114 0.31790733337402344 0.53414154052734375;
createNode animCurveTA -n "animCurveTA733";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 -1.8912763091058484 5 -1.8926505839749146 
		8 4.9317380250659042 10 -15.42615342480217 12 -26.26865551286734 15 -13.698424704477043 
		20 -6.9263335182415497 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.98091912269592285 0.85922402143478394 
		0.57653146982192993 0.23782537877559662 0.9840238094329834 0.61985969543457031 
		0.81259346008300781 0.8094857931137085;
	setAttr -s 9 ".kiy[0:8]"  0 -0.19441612064838409 0.51159948110580444 
		-0.81707489490509033 -0.97130793333053589 0.17803680896759033 0.78471267223358154 
		0.58283090591430664 0.58713948726654053;
createNode animCurveTA -n "animCurveTA734";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 3.0585324067620516 5 3.806737578406183 
		8 3.8067375784061874 10 3.8088640848423934 12 3.8088640848423925 15 3.8088640848423934 
		20 3.2203292673113793 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.92891150712966919 0.99787521362304688 
		1 0.99999994039535522 1 0.99925893545150757 0.98068773746490479 0.94756919145584106;
	setAttr -s 9 ".kiy[0:8]"  0 0.37030187249183655 0.065154485404491425 
		0.00022268723114393651 0.00027835904620587826 0 -0.038490969687700272 -0.19558016955852509 
		-0.31955075263977051;
createNode animCurveTA -n "animCurveTA735";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -10.382821061592265 2 2.0003129764323395 
		5 1.9755658098269753 8 1.9755658098269744 10 1.8862324120566658 12 1.8862324120566656 
		15 1.8862324120566667 20 1.9477550562152184 25 -10.382821061592265;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.61143279075622559 0.99999767541885376 
		0.99995625019073486 0.99993163347244263 1 0.99999189376831055 0.84135103225708008 
		0.61229521036148071;
	setAttr -s 9 ".kiy[0:8]"  0 0.79129636287689209 -0.0021595926955342293 
		-0.0093545615673065186 -0.011692915111780167 0 0.0040266150608658791 -0.5404890775680542 
		-0.79062926769256592;
createNode animCurveTA -n "animCurveTA736";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 0 8 0 10 0 12 0 15 0 
		20 0 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA737";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 0 8 0 10 0 12 0 15 0 
		20 0 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA738";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 33.429092416277157 2 33.429092416277157 
		5 33.429092416277157 8 33.429092416277157 10 33.429092416277157 12 33.429092416277157 
		15 33.429092416277157 20 33.429092416277157 25 33.429092416277157;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA739";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.2533422302317216 2 8.2533422302317216 
		5 8.2533422302317216 8 8.2533422302317216 10 8.2533422302317216 12 8.2533422302317216 
		15 8.2533422302317216 20 8.2533422302317216 25 8.2533422302317216;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA740";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 23.263402056531085 2 23.263402056531085 
		5 23.263402056531085 8 23.263402056531085 10 23.263402056531085 12 23.263402056531085 
		15 23.263402056531085 20 23.263402056531085 25 23.263402056531085;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA741";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 20.166277752815617 2 20.166277752815617 
		5 20.166277752815617 8 20.166277752815617 10 20.166277752815617 12 20.166277752815617 
		15 20.166277752815617 20 20.166277752815617 25 20.166277752815617;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA742";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 0 8 0 10 0 12 0 15 0 
		20 0 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA743";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 5 0 8 0 10 0 12 0 15 0 
		20 0 25 0;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA744";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 17.254116939558369 2 17.254116939558369 
		5 17.254116939558369 8 17.254116939558369 10 17.254116939558369 12 17.254116939558369 
		15 17.254116939558369 20 17.254116939558369 25 17.254116939558369;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA745";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA746";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA747";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA748";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA749";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA750";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA751";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA752";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA753";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
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
	setAttr ".o" 25;
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
connectAttr "mrg_breakSource.st" "clipLibrary1.st[0]";
connectAttr "mrg_breakSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL206.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL207.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL208.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL209.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL210.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA626.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "mrg_Hoop_Root_IK_FK_RFoot1.a" "clipLibrary1.cel[0].cev[6].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_FK_LFoot1.a" "clipLibrary1.cel[0].cev[7].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_Rev_IK_Sim_RFoot1.a" "clipLibrary1.cel[0].cev[8].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_Rev_IK_Sim_LFoot1.a" "clipLibrary1.cel[0].cev[9].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_FK_RArm1.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_FK_LArm1.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_Body_IK_World_RArm1.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_Body_IK_World_LArm1.a" "clipLibrary1.cel[0].cev[13].cevr"
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
connectAttr "animCurveTL214.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL215.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL216.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA630.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA631.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA632.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL217.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL218.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL219.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA633.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA634.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA635.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA636.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA637.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA638.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA639.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA640.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA641.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA642.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA643.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA644.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA645.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA646.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA647.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL220.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL221.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL222.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL223.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL224.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL225.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL226.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL227.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL228.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA648.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA649.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA650.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA651.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA652.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA653.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA654.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA655.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA656.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA657.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA658.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA659.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA660.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA661.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA662.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA663.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA664.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA665.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA666.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA667.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA668.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA669.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA670.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA671.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA672.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA673.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA674.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA675.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA676.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL229.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL230.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL231.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA677.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA678.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA679.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL232.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL233.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL234.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA680.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA681.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA682.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL235.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL236.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL237.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA683.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA684.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA685.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL238.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL239.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL240.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA686.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA687.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA688.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL241.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL242.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL243.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL244.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL245.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL246.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA689.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA690.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA691.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA692.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA693.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA694.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA695.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA696.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA697.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA698.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA699.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA700.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA701.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA702.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA703.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA704.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA705.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA706.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA707.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA708.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA709.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA710.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA711.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA712.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA713.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA714.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA715.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA716.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA717.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA718.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA719.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA720.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA721.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA722.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA723.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA724.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA725.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA726.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA727.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA728.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA729.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA730.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA731.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA732.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA733.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA734.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA735.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA736.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA737.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA738.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA739.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA740.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA741.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA742.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA743.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA744.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr "animCurveTA745.a" "clipLibrary1.cel[0].cev[168].cevr";
connectAttr "animCurveTA746.a" "clipLibrary1.cel[0].cev[169].cevr";
connectAttr "animCurveTA747.a" "clipLibrary1.cel[0].cev[170].cevr";
connectAttr "animCurveTA748.a" "clipLibrary1.cel[0].cev[171].cevr";
connectAttr "animCurveTA749.a" "clipLibrary1.cel[0].cev[172].cevr";
connectAttr "animCurveTA750.a" "clipLibrary1.cel[0].cev[173].cevr";
connectAttr "animCurveTA751.a" "clipLibrary1.cel[0].cev[174].cevr";
connectAttr "animCurveTA752.a" "clipLibrary1.cel[0].cev[175].cevr";
connectAttr "animCurveTA753.a" "clipLibrary1.cel[0].cev[176].cevr";
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
// End of mrg_break.ma
