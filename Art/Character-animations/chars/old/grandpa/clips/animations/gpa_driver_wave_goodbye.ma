//Maya ASCII 4.0 scene
//Name: gpa_driver_wave_goodbye.ma
//Last modified: Tue, Aug 13, 2002 10:24:55 AM
requires maya "4.0";
requires "p3dmayaexp" "18.2";
requires "p3dSimpleShader" "18.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "gpa_driver_wave_goodbyeSource";
	setAttr ".ihi" 0;
	setAttr ".du" 35;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL83";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL84";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 -1.1229683308553271 1 -1.1229683308553271 
		2 -1.1229683308553271 3 -1.1229683308553271 4 -1.1229683308553271 5 -1.1229683308553271 
		6 -1.1229683308553271 7 -1.1229683308553271 8 -1.1229683308553271 9 -1.1229683308553271 
		10 -1.1229683308553271 11 -1.1229683308553271 12 -1.1229683308553271 13 -1.1229683308553271 
		14 -1.1229683308553271 15 -1.1229683308553271 16 -1.1229683308553271 17 -1.1229683308553271 
		18 -1.1229683308553271 19 -1.1229683308553271 20 -1.1229683308553271 21 -1.1229683308553271 
		22 -1.1229683308553271 23 -1.1229683308553271 24 -1.1229683308553271 25 -1.1229683308553271 
		26 -1.1229683308553271 27 -1.1229683308553271 28 -1.1229683308553271 29 -1.1229683308553271 
		30 -1.1229683308553271 31 -1.1229683308553271 32 -1.1229683308553271 33 -1.1229683308553271 
		34 -1.1229683308553271 35 -1.1229683308553271;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0.88021938078782869 1 0.88021938078782869 
		2 0.88021938078782869 3 0.88021938078782869 4 0.88021938078782869 5 0.88021938078782869 
		6 0.88021938078782869 7 0.88021938078782869 8 0.88021938078782869 9 0.88021938078782869 
		10 0.88021938078782869 11 0.88021938078782869 12 0.88021938078782869 13 0.88021938078782869 
		14 0.88021938078782869 15 0.88021938078782869 16 0.88021938078782869 17 0.88021938078782869 
		18 0.88021938078782869 19 0.88021938078782869 20 0.88021938078782869 21 0.88021938078782869 
		22 0.88021938078782869 23 0.88021938078782869 24 0.88021938078782869 25 0.88021938078782869 
		26 0.88021938078782869 27 0.88021938078782869 28 0.88021938078782869 29 0.88021938078782869 
		30 0.88021938078782869 31 0.88021938078782869 32 0.88021938078782869 33 0.88021938078782869 
		34 0.88021938078782869 35 0.88021938078782869;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "gpa_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTU -n "gpa_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "animCurveTA240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL88";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL89";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL90";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL91";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.7084450118300396 9 -1.7084450118300396 
		14 -1.7084450118300396 19 -1.7084450118300396 25 -1.7084450118300396 38 -1.7084450118300396;
createNode animCurveTL -n "animCurveTL92";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.82121446776202978 9 0.82121446776202978 
		14 0.82121446776202978 19 0.82121446776202978 25 0.82121446776202978 38 0.82121446776202978;
createNode animCurveTL -n "animCurveTL93";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.6495856783017808 9 1.6495856783017808 
		14 1.6495856783017808 19 1.6495856783017808 25 1.6495856783017808 38 1.6495856783017808;
createNode animCurveTA -n "animCurveTA243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 14 0 19 0 25 0 38 0;
createNode animCurveTA -n "animCurveTA244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 14 0 19 0 25 0 38 0;
createNode animCurveTA -n "animCurveTA245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 14 0 19 0 25 0 38 0;
createNode animCurveTL -n "animCurveTL94";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.2504784321605431 9 -1.2504784321605431 
		14 -1.2504784321605431 19 -1.2504784321605431 25 -1.2504784321605431 38 -1.2504784321605431;
createNode animCurveTL -n "animCurveTL95";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.82533069850741669 9 0.82533069850741669 
		14 0.82533069850741669 19 0.82533069850741669 25 0.82533069850741669 38 0.82533069850741669;
createNode animCurveTL -n "animCurveTL96";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.6270503750293122 9 1.6270503750293122 
		14 1.6270503750293122 19 1.6270503750293122 25 1.6270503750293122 38 1.6270503750293122;
createNode animCurveTA -n "animCurveTA246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 14 0 19 0 25 0 38 0;
createNode animCurveTA -n "animCurveTA247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 14 0 19 0 25 0 38 0;
createNode animCurveTA -n "animCurveTA248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 14 0 19 0 25 0 38 0;
createNode animCurveTA -n "animCurveTA249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA251";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA252";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA253";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA254";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL97";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL98";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL99";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "animCurveTL100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "animCurveTL103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.4786421250535617 9 -1.4786421250535617 
		14 -1.4786421250535617 19 -1.4786421250535617 25 -1.4786421250535617 38 -1.4786421250535617;
createNode animCurveTL -n "animCurveTL104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.013846891275328 9 1.013846891275328 
		14 1.013846891275328 19 1.013846891275328 25 1.013846891275328 38 1.013846891275328;
createNode animCurveTL -n "animCurveTL105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.2853416563090898 9 1.2853416563090898 
		14 1.2853416563090898 19 1.2853416563090898 25 1.2853416563090898 38 1.2853416563090898;
createNode animCurveTA -n "animCurveTA261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -25.655237914214105 9 -25.655237914214105 
		14 -25.655237914214105 19 -25.655237914214105 25 -25.655237914214105 38 -25.655237914214105;
createNode animCurveTA -n "animCurveTA262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.0975263990809512 9 2.0975263990809512 
		14 2.0975263990809512 19 2.0975263990809512 25 2.0975263990809512 38 2.0975263990809512;
createNode animCurveTA -n "animCurveTA263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.53932213336905666 9 -0.53932213336905666 
		14 -0.53932213336905666 19 -0.53932213336905666 25 -0.53932213336905666 38 
		-0.53932213336905666;
createNode animCurveTA -n "animCurveTA264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA265";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA270";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA271";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA272";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA273";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA274";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA275";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA276";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA277";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA279";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA280";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA281";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA282";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA283";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA285";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA286";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA288";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA289";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 -0.20830475395957365 1 -0.12483205158053692 
		2 -0.069234563361584942 3 -0.04949013403941592 4 -0.068320867224136925 5 
		-0.12242652486673479 6 -0.20279920651044619 7 -0.29605084272277654 8 -0.38639808619891286 
		9 -0.39104515169860832 10 -0.31126247725073825 11 -0.27226660661502278 12 
		-0.30726219854872638 13 -0.35673826260323382 14 -0.40602869034697819 15 -0.44494805439700741 
		16 -0.46708328798955906 17 -0.46528667434806209 18 -0.4115739254090619 19 
		-0.31632624595656667 20 -0.22869854162715086 21 -0.19472239883177253 22 -0.23028734322753422 
		23 -0.30282247521262662 24 -0.38573117260767109 25 -0.45178518689757369 26 
		-0.47889649068450185 27 -0.45235165927020321 28 -0.38519851821951251 29 -0.31689173954593769 
		30 -0.25998758707818354 31 -0.2066637604738247 32 -0.14141326300429341 33 
		-0.071623982253148602 34 -0.013199868296087516 35 0.014756505483009051;
createNode animCurveTL -n "Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 -0.315356723980111 1 -0.1535296425574055 
		2 0.013774271784061511 3 0.17702338411746829 4 0.32690757646220592 5 0.45513852518139902 
		6 0.55524241293039667 7 0.62314466187604522 8 0.65738112465250309 9 0.67782636489552806 
		10 0.70745875671247505 11 0.72517128474894477 12 0.71611937213990917 13 0.69428672986651851 
		14 0.66385207066340346 15 0.63278572408956935 16 0.61114928292745663 17 0.6056676889167697 
		18 0.62786540719303963 19 0.67122865280401356 20 0.71461086318007372 21 0.739264720886325 
		22 0.73641781902750414 23 0.71494322900181451 24 0.68476152336544927 25 0.65823074408837901 
		26 0.63878822320079476 27 0.6199704539232106 28 0.52472357090043564 29 0.32954800839058379 
		30 0.11156546279098266 31 -0.04966482292028758 32 -0.12752001615250025 33 
		-0.17020408477727308 34 -0.20780626685729517 35 -0.26724117583841833;
createNode animCurveTL -n "Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0.8609217719625899 1 0.81505453080953372 
		2 0.7482457681736443 3 0.6683321006162386 4 0.58561593675216039 5 0.5107857949286928 
		6 0.45270213309680657 7 0.41661904921335863 8 0.40331807784415419 9 0.46320147575215431 
		10 0.55806157127870737 11 0.59570890079473937 12 0.56707594941714146 13 0.52050151731948402 
		14 0.47638725151199512 15 0.44721284296266617 16 0.433443367583493 17 0.43975951442544531 
		18 0.48282473639357082 19 0.55135284463385037 20 0.61447348784685574 21 0.64101487058256346 
		22 0.61914171315588473 23 0.56899966311308847 24 0.50177742496067879 25 0.4264677612810121 
		26 0.36225081962115269 27 0.33914994652964225 28 0.37927398912516114 29 0.46352279283313863 
		30 0.56223781662705274 31 0.65403530305547264 32 0.7357954806881033 33 0.81887580674732119 
		34 0.90666306454508272 35 0.99259642510498913;
createNode animCurveTA -n "Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 46.056537368045547 1 59.359379349957393 
		2 103.48869983706415 3 57.478797281769374 4 -107.93824207329654 5 -99.648156110988339 
		6 -94.492821996436547 7 -92.297203994909708 8 -93.005065451722771 9 -94.667225957530832 
		10 -94.554089496091223 11 -93.949565134181441 12 -93.014281105586235 13 -92.531925316131506 
		14 -93.319102734998481 15 -95.151993232023059 16 -96.884081404541689 17 -97.857446895917406 
		18 -97.182149091507867 19 -95.696114366105547 20 -95.159498593198592 21 -95.868049505531729 
		22 -96.40039797626315 23 -96.23263195747181 24 -95.866387958060386 25 -95.190399910142958 
		26 -94.173669044452595 27 -92.976301967248986 28 -92.375431005025703 29 -91.821703720382104 
		30 -90.792241027077878 31 -91.27182359096966 32 -96.935992736097703 33 -116.01434795079204 
		34 87.467261918928443 35 68.964098122942218;
createNode animCurveTA -n "Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 56.887629293648409 1 69.909123203527045 
		2 85.339474184920888 3 105.96938984547376 4 53.746873976163172 5 33.161182967497851 
		6 13.698118612425755 7 -3.3574202104645781 8 -16.945474653199721 9 -20.36122760949414 
		10 -15.679809855011674 11 -12.620903630940944 12 -14.304595454618568 13 -16.888215222678173 
		14 -19.66818857178496 15 -21.834760804374298 16 -22.962497109739282 17 -22.791004292839901 
		18 -20.064225963528223 19 -15.036180345686489 20 -9.9913094188331346 21 -7.6358847034123949 
		22 -9.2850549667898594 23 -13.324106038198 24 -18.009634754220919 25 -21.72163812754798 
		26 -22.961675819040092 27 -20.180076390437989 28 -10.052482044212976 29 5.7038420833538659 
		30 22.244046434907411 31 37.746885283533224 32 55.983001413749655 33 78.648849569611301 
		34 74.878513447725098 35 50.421664100244499;
createNode animCurveTA -n "Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 125.113681161797 1 119.32026306082811 
		2 146.23319987793192 3 85.914493570549524 4 -90.21883574801744 5 -88.510669898973049 
		6 -85.267617573031401 7 -79.888375600871555 8 -72.546096675557067 9 -71.62003980287821 
		10 -79.534498016466245 11 -84.452846831188978 12 -82.777122603282621 13 -79.333192044102447 
		14 -74.624685518013109 15 -69.669881814585793 16 -66.017162115497783 17 -64.902486058259115 
		18 -69.137838131111053 19 -77.349055440441347 20 -84.660257949776238 21 -87.188825257320843 
		22 -85.010964334975185 23 -81.173348600686879 24 -76.745462876931995 25 -72.985014259278501 
		26 -70.405778189261639 27 -68.786404417293795 28 -64.121442199405777 29 -54.119066932134587 
		30 -41.362558971965591 31 -31.537557845673469 32 -31.192010481216286 33 -46.570277893611234 
		34 160.20270780531573 35 147.81510755123495;
createNode animCurveTL -n "Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0.026488370059533681 1 0.12363042612876228 
		2 0.21554837001064442 3 0.29732796902391129 4 0.36507038702058081 5 0.41631081055317337 
		6 0.45026743992328933 7 0.46786937013606578 8 0.47155756651758013 9 0.46489589812995602 
		10 0.45293819283816095 11 0.44185536193854036 12 0.43317147500516257 13 0.42633876764759948 
		14 0.42095990104619402 15 0.41798304760741389 16 0.41769906755405173 17 0.41886009221706261 
		18 0.42025995992794279 19 0.4207411880667199 20 0.41823311087547654 21 0.41295900217223774 
		22 0.4074672784039291 23 0.40473597059029087 24 0.40762788189055743 25 0.41755444978433931 
		26 0.42942561152204989 27 0.43754800673854077 28 0.4402114308458499 29 0.43591293021223776 
		30 0.42345288130456793 31 0.40201673763431955 32 0.37123435088616902 33 0.33121036352535643 
		34 0.28252197169878146 35 0.22618392033533583;
createNode animCurveTL -n "Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 -0.24963234162316172 1 -0.20710386954339605 
		2 -0.15966271368933246 3 -0.108116794843117 4 -0.053727066111716515 5 0.0019059146603606081 
		6 0.057001480579976803 7 0.10977347776395896 8 0.15858585390852853 9 0.20205974873960622 
		10 0.23509223907697965 11 0.25609409130571792 12 0.2690432775452492 13 0.27769653274054423 
		14 0.2856454274717074 15 0.29179913869339841 16 0.29386536642184807 17 0.29351093235252323 
		18 0.29238068309746923 19 0.29211921893016629 20 0.29667736267138806 21 0.30572994640745849 
		22 0.31456139770063019 23 0.31857044010846641 24 0.3131822132303374 25 0.29359219796171121 
		26 0.26292322651766059 27 0.22801255612005605 28 0.18932541420946991 29 0.14743123583406254 
		30 0.10299948678769517 31 0.056783892716729199 32 0.0095967902715916164 33 
		-0.037723656396316654 34 -0.084349889383176058 35 -0.12950122542522799;
createNode animCurveTL -n "Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0.93276732714778565 1 0.87539686796046667 
		2 0.80324741382523912 3 0.71812804366154293 4 0.62323534390294621 5 0.52283045833560415 
		6 0.42177753449327088 7 0.32503418568369113 8 0.23719426320994544 9 0.16216952246687441 
		10 0.1171786665186383 11 0.10663979593968775 12 0.11507822469178422 13 0.12770973168981073 
		14 0.1302619893418813 15 0.12191321608304435 16 0.11228233763985429 17 0.10296406217690361 
		18 0.09558911969150416 19 0.09184758718264846 20 0.085677814315560291 21 
		0.074485395981623695 22 0.065111947482295707 23 0.06425623927774439 24 0.078623644155124739 
		25 0.11530661318523812 26 0.16929535856368547 27 0.22993090093882657 28 0.29618462964613967 
		29 0.3667752707983547 30 0.4401941692315896 31 0.51476029341489538 32 0.5886999884278391 
		33 0.66024362728325203 34 0.7277292772390308 35 0.78970266269508449;
createNode animCurveTA -n "Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 40.751331981187327 1 28.893958813875386 
		2 14.386967838084129 3 -1.1328606482534942 4 -15.272581831792111 5 -26.55169970233327 
		6 -34.862296922386321 7 -40.754765883021548 8 -44.852522856245763 9 -47.660831189706613 
		10 -49.339229486437539 11 -50.258033192058136 12 -50.836927068671955 13 -51.284383589366676 
		14 -51.713070525924806 15 -52.032593833306692 16 -52.159683634796799 17 -52.175458909175802 
		18 -52.15334551087043 19 -52.156775876101264 20 -52.328543649065637 21 -52.643957391440303 
		22 -52.931118321833019 23 -53.052411448993567 24 -52.867561710385139 25 -52.137352880667059 
		26 -50.757201412185545 27 -48.795731174498172 28 -46.0706308291658 29 -42.351402847051794 
		30 -37.356172125226472 31 -30.773113400097241 32 -22.344686168141394 33 -12.057199624962484 
		34 -0.3872738790433789 35 11.656480918657618;
createNode animCurveTA -n "Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 -58.592439569848452 1 -61.611588202668571 
		2 -63.245885424295359 3 -63.025495487465264 4 -60.949813335286045 5 -57.478810762904232 
		6 -53.224581472600761 7 -48.725949922213907 8 -44.400759688591336 9 -40.571103800878106 
		10 -38.357387211468435 11 -38.14513986664214 12 -39.054035105258542 13 -40.173116278656899 
		14 -40.579010663492028 15 -40.173020821408748 16 -39.578430477405099 17 -38.947294072339268 
		18 -38.4296669873697 19 -38.175095172090053 20 -37.845855328990822 21 -37.252547735790337 
		22 -36.769924604671999 23 -36.777459312702021 24 -37.655375442885173 25 -39.774305731995575 
		26 -42.786854918117129 27 -46.060661304293902 28 -49.505181711223379 29 -53.007341592869146 
		30 -56.423112664290564 31 -59.567985244047399 32 -62.211919548314015 33 -64.093741655212568 
		34 -64.976410784261276 35 -64.739667236758706;
createNode animCurveTA -n "Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 -107.17105054330278 1 -95.203344217125903 
		2 -80.35948882864075 3 -64.26034116362176 4 -49.294237901445165 5 -36.949501945706231 
		6 -27.356223149519888 7 -20.003023539831851 8 -14.324879779995754 9 -9.895920575021881 
		10 -6.8270072550345819 11 -4.9579186651228442 12 -3.7946315457464639 13 -2.97986355617829 
		14 -2.2116760312188912 15 -1.6177026606608924 16 -1.4057353659567682 17 -1.4193448333472731 
		18 -1.5066201833454942 19 -1.5217635738148585 20 -1.1185923815486414 21 -0.32966623564283926 
		22 0.4323247273188342 23 0.77468530619976483 24 0.30286921214000445 25 -1.4371287590554465 
		26 -4.2818396348528767 27 -7.7557113261641861 28 -11.989222578788075 29 -17.167792208872239 
		30 -23.535425229224057 31 -31.373297362918187 32 -40.915249089131095 33 -52.157807734858295 
		34 -64.613282657444529 35 -77.267689171005799;
createNode animCurveTL -n "Right_Arm_World_translateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -3.1000000000000001 8 -3.0697714661066016 
		17 -3.0717829140143933 27 -3.0697714661066016 31 -3.3240313008367974 35 -3.1000000000000001;
createNode animCurveTL -n "Right_Arm_World_translateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.5 8 3.4369335286965077 17 3.4711989058596511 
		27 3.4369335286965077 31 2.6840806659550509 35 2.5;
createNode animCurveTL -n "Right_Arm_World_translateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.8000000000000003 8 1.7006530329836802 
		11 1.931309700480472 17 1.7210767130917897 21 2.0728387468751057 27 1.7006530329836802 
		35 2.8000000000000003;
createNode animCurveTA -n "Right_Arm_World_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 71.400000000000006 8 137.63481901534388 
		11 140.3083986519807 17 141.11214708196678 21 138.63482015376911 27 137.63481901534388 
		31 105.64466648985932 35 71.400000000000006;
createNode animCurveTA -n "Right_Arm_World_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 64.900000000000006 8 197.58034473489445 
		11 178.9697564917015 17 197.36425685421884 21 170.15154770213238 27 197.58034473489445 
		31 169.09097891650615 35 64.900000000000006;
createNode animCurveTA -n "Right_Arm_World_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 143.5 8 73.551837211232581 11 
		66.569386182428403 17 68.633264618228552 21 68.562402151489735 27 73.551837211232581 
		31 143.42802380345103 35 143.5;
createNode animCurveTL -n "Left_Arm_World_translateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2;
createNode animCurveTL -n "Left_Arm_World_translateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.5;
createNode animCurveTL -n "Left_Arm_World_translateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.8000000000000003;
createNode animCurveTA -n "Left_Arm_World_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 45.9;
createNode animCurveTA -n "Left_Arm_World_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -73;
createNode animCurveTA -n "Left_Arm_World_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -115.8;
createNode animCurveTL -n "animCurveTL106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.80217394619293847 9 0.80217394619293847 
		14 0.80217394619293847 19 0.80217394619293847 25 0.80217394619293847 38 0.80217394619293847;
createNode animCurveTL -n "animCurveTL107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.44299574108883399 9 -0.44299574108883399 
		14 -0.44299574108883399 19 -0.44299574108883399 25 -0.44299574108883399 38 
		-0.44299574108883399;
createNode animCurveTL -n "animCurveTL108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.5412845761155356 9 -0.5412845761155356 
		14 -0.5412845761155356 19 -0.5412845761155356 25 -0.5412845761155356 38 -0.5412845761155356;
createNode animCurveTL -n "animCurveTL109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.49484451559913972 9 -0.19516176813588421 
		14 -0.19516176813588421 19 -0.17974951236232733 25 -0.19010654827009041 38 
		-0.49484451559913972;
createNode animCurveTL -n "animCurveTL110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.71931626134224813 9 -0.073811265484396038 
		14 -0.073811265484396038 19 -0.040613866496226385 25 -0.062922518542312122 
		38 -0.71931626134224813;
createNode animCurveTL -n "animCurveTL111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.66067307131502628 9 0.23271987694283078 
		14 0.23271987694283078 19 0.27866579734772645 25 0.24779013836188329 38 -0.66067307131502628;
createNode animCurveTA -n "animCurveTA290";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.061808866237340665;
createNode animCurveTA -n "animCurveTA291";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -59.058178941076754;
createNode animCurveTA -n "animCurveTA292";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 16.57914742975785;
createNode animCurveTA -n "animCurveTA293";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 12.253734489678925;
createNode animCurveTA -n "animCurveTA294";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -65.746751280844975;
createNode animCurveTA -n "animCurveTA295";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 15.711328223519061;
createNode animCurveTA -n "animCurveTA297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 8.5572674112203657;
createNode animCurveTA -n "animCurveTA298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA303";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA304";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.2533422302317216 9 8.2533422302317216 
		14 8.2533422302317216 19 8.2533422302317216 25 8.2533422302317216 38 8.2533422302317216;
createNode animCurveTA -n "animCurveTA305";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 23.263402056531085 9 23.263402056531085 
		14 23.263402056531085 19 23.263402056531085 25 23.263402056531085 38 23.263402056531085;
createNode animCurveTA -n "animCurveTA306";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 20.166277752815617 9 20.166277752815617 
		14 20.166277752815617 19 20.166277752815617 25 20.166277752815617 38 20.166277752815617;
createNode animCurveTA -n "animCurveTA307";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 14 0 19 0 25 0 38 0;
createNode animCurveTA -n "animCurveTA308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 14 0 19 0 25 0 38 0;
createNode animCurveTA -n "animCurveTA309";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 79.802705892979176 9 79.802705892979176 
		14 79.802705892979176 19 79.802705892979176 25 79.802705892979176 38 79.802705892979176;
createNode animCurveTA -n "animCurveTA310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA311";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA312";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA313";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 14 0 19 0 25 0 38 0;
createNode animCurveTA -n "animCurveTA314";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 14 0 19 0 25 0 38 0;
createNode animCurveTA -n "animCurveTA315";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 13.994403295754109 9 13.994403295754109 
		14 13.994403295754109 19 13.994403295754109 25 13.994403295754109 38 13.994403295754109;
createNode animCurveTA -n "animCurveTA316";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 14 0 19 0 25 0 38 0;
createNode animCurveTA -n "animCurveTA317";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 14 0 19 0 25 0 38 0;
createNode animCurveTA -n "animCurveTA318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 13.994403295754109 9 13.994403295754109 
		14 13.994403295754109 19 13.994403295754109 25 13.994403295754109 38 13.994403295754109;
createNode animCurveTA -n "animCurveTA319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 14 0 19 0 25 0 38 0;
createNode animCurveTA -n "animCurveTA320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 14 0 19 0 25 0 38 0;
createNode animCurveTA -n "animCurveTA321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 71.026803426671577 9 0.68535901154259415 
		14 0.68535901154259415 19 -2.9322012479446768 25 -0.50120074071992549 38 
		71.026803426671577;
createNode animCurveTA -n "animCurveTA322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 14 0 19 0 25 0 38 0;
createNode animCurveTA -n "animCurveTA323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 14 0 19 0 25 0 38 0;
createNode animCurveTA -n "animCurveTA324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 14 0 19 0 25 0 38 0;
createNode animCurveTA -n "animCurveTA325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 -57.335242538060669 14 -58.829373406851637 
		19 -61.263143506871494 25 -59.735227414115506 38 0;
createNode animCurveTA -n "animCurveTA326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.5886647225957985 9 4.2529466442296293 
		14 4.3780248660504153 19 4.7996497908886928 25 4.5253234670481604 38 -0.5886647225957985;
createNode animCurveTA -n "animCurveTA327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.50586949574986 9 13.242872015447595 
		14 18.84996314915519 19 18.647409290496878 25 19.187236046502221 38 -2.50586949574986;
createNode animCurveTA -n "animCurveTA328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 14 0 19 0 25 0 38 0;
createNode animCurveTA -n "animCurveTA329";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 14 0 19 0 25 0 38 0;
createNode animCurveTA -n "animCurveTA330";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 14 0 19 0 25 0 38 0;
createNode animCurveTA -n "animCurveTA331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 25.027649180668327 9 11.972108104586738 
		14 19.57566068630921 19 9.7859014008336267 25 16.912075547505321 38 0;
createNode animCurveTA -n "animCurveTA332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 35.821944039572287 9 26.58368500233227 
		14 20.538931951778224 19 24.987047078784077 25 22.905101769454792 38 0;
	setAttr -s 7 ".kit[2:6]"  1 9 9 9 9;
	setAttr -s 7 ".kot[2:6]"  1 9 9 9 9;
	setAttr -s 7 ".kix[2:6]"  0.64882713556289673 0.99652373790740967 
		0.9937170147895813 0.82362306118011475 0.73499828577041626;
	setAttr -s 7 ".kiy[2:6]"  -0.76093584299087524 -0.083309151232242584 
		0.1119217723608017 -0.56713759899139404 -0.67806893587112427;
	setAttr -s 7 ".kox[2:6]"  0.64882707595825195 0.99652373790740967 
		0.9937170147895813 0.82362306118011475 0.73499828577041626;
	setAttr -s 7 ".koy[2:6]"  -0.76093584299087524 -0.083309151232242584 
		0.1119217723608017 -0.56713759899139404 -0.67806893587112427;
createNode animCurveTA -n "animCurveTA333";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 18.603314785497371 5 20.437481131560805 
		9 15.70708898301433 14 12.401734439697835 19 15.366242483217251 25 13.136107522297381 
		38 18.603314785497371;
createNode animCurveTA -n "animCurveTA334";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.5315117770142568 9 1.5315117770142568 
		14 1.5315117770142568 19 1.5315117770142568 25 1.5315117770142568 38 1.5315117770142568;
createNode animCurveTA -n "animCurveTA335";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.7891971390395636 9 -2.7891971390395636 
		14 -2.7891971390395636 19 -2.7891971390395636 25 -2.7891971390395636 38 -2.7891971390395636;
createNode animCurveTA -n "animCurveTA336";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 14 9 14 14 14 19 14 25 14 38 
		14;
createNode animCurveTA -n "animCurveTA337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.90377949588789308 9 5.5083953255812865 
		14 5.5083953255812865 19 5.7452041301061438 25 5.5860686149487302 38 0.90377949588789308;
createNode animCurveTA -n "animCurveTA338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -7.8984463198172383 9 -5.7407611753850389 
		14 -5.7407611753850389 19 -5.6297945091869233 25 -5.7043641097635813 38 -7.8984463198172383;
createNode animCurveTA -n "animCurveTA339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 80.26632241086908 9 42.862130715575667 
		14 42.862130715575667 19 40.938486629386063 25 42.23117546852091 38 80.26632241086908;
createNode animCurveTA -n "animCurveTA340";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 10.423754966968488 9 10.423754966968488 
		14 10.423754966968488 19 10.423754966968488 25 10.423754966968488 38 10.423754966968488;
createNode animCurveTA -n "animCurveTA341";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.7228482558439 9 27.7228482558439 
		14 27.7228482558439 19 27.7228482558439 25 27.7228482558439 38 27.7228482558439;
createNode animCurveTA -n "animCurveTA342";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 21.576484776388224 9 21.576484776388224 
		14 21.576484776388224 19 21.576484776388224 25 21.576484776388224 38 21.576484776388224;
createNode animCurveTA -n "animCurveTA343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 14 0 19 0 25 0 38 0;
createNode animCurveTA -n "animCurveTA344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 14 0 19 0 25 0 38 0;
createNode animCurveTA -n "animCurveTA345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.911632519594587 9 27.911632519594587 
		14 27.911632519594587 19 27.911632519594587 25 27.911632519594587 38 27.911632519594587;
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
select -ne :time1;
	setAttr ".o" 15;
select -ne :renderPartition;
	setAttr -s 86 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 86 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 50 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 50 ".tx";
select -ne :initialShadingGroup;
	setAttr -k on ".nds";
	setAttr ".ro" yes;
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
connectAttr "gpa_driver_wave_goodbyeSource.st" "clipLibrary2.st[0]";
connectAttr "gpa_driver_wave_goodbyeSource.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL83.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL84.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary2.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary2.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary2.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU9.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "gpa_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary2.cel[0].cev[12].cevr"
		;
connectAttr "gpa_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary2.cel[0].cev[13].cevr"
		;
connectAttr "animCurveTA240.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA241.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA242.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL88.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL89.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL90.a" "clipLibrary2.cel[0].cev[19].cevr";
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
connectAttr "animCurveTA249.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA250.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA251.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA252.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA253.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA254.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTA255.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTA256.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTA257.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTA258.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTA259.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTA260.a" "clipLibrary2.cel[0].cev[43].cevr";
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
connectAttr "animCurveTA264.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA265.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA266.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA267.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA268.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA269.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA270.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA271.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA272.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA273.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA274.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA275.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA276.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA277.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA278.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA279.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA280.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA281.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA282.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA283.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTA284.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA285.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA286.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA287.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA288.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA289.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "Right_Arm_Hoop_translateX.a" "clipLibrary2.cel[0].cev[82].cevr"
		;
connectAttr "Right_Arm_Hoop_translateY.a" "clipLibrary2.cel[0].cev[83].cevr"
		;
connectAttr "Right_Arm_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[84].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[85].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[86].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[87].cevr"
		;
connectAttr "Left_Arm_Hoop_translateX.a" "clipLibrary2.cel[0].cev[88].cevr"
		;
connectAttr "Left_Arm_Hoop_translateY.a" "clipLibrary2.cel[0].cev[89].cevr"
		;
connectAttr "Left_Arm_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[90].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[91].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[92].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[93].cevr"
		;
connectAttr "Right_Arm_World_translateX1.a" "clipLibrary2.cel[0].cev[94].cevr"
		;
connectAttr "Right_Arm_World_translateY1.a" "clipLibrary2.cel[0].cev[95].cevr"
		;
connectAttr "Right_Arm_World_translateZ1.a" "clipLibrary2.cel[0].cev[96].cevr"
		;
connectAttr "Right_Arm_World_rotateX1.a" "clipLibrary2.cel[0].cev[97].cevr"
		;
connectAttr "Right_Arm_World_rotateY1.a" "clipLibrary2.cel[0].cev[98].cevr"
		;
connectAttr "Right_Arm_World_rotateZ1.a" "clipLibrary2.cel[0].cev[99].cevr"
		;
connectAttr "Left_Arm_World_translateX1.a" "clipLibrary2.cel[0].cev[100].cevr"
		;
connectAttr "Left_Arm_World_translateY1.a" "clipLibrary2.cel[0].cev[101].cevr"
		;
connectAttr "Left_Arm_World_translateZ1.a" "clipLibrary2.cel[0].cev[102].cevr"
		;
connectAttr "Left_Arm_World_rotateX1.a" "clipLibrary2.cel[0].cev[103].cevr"
		;
connectAttr "Left_Arm_World_rotateY1.a" "clipLibrary2.cel[0].cev[104].cevr"
		;
connectAttr "Left_Arm_World_rotateZ1.a" "clipLibrary2.cel[0].cev[105].cevr"
		;
connectAttr "animCurveTL106.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTL107.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTL108.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTL109.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTL110.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTL111.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA290.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA291.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA292.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA293.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA294.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA295.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA296.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA297.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA298.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA299.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA300.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA301.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA302.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA303.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA304.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA305.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA306.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA307.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA308.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA309.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA310.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA311.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA312.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA313.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA314.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA315.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA316.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA317.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA318.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA319.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA320.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA321.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA322.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA323.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA324.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA325.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA326.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA327.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA328.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA329.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA330.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA331.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA332.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA333.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA334.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA335.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA336.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA337.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA338.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA339.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA340.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA341.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA342.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA343.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA344.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA345.a" "clipLibrary2.cel[0].cev[167].cevr";
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
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[68].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[69].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[70].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[71].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[72].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[73].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[74].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[75].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[76].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[77].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[78].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[79].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[80].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[81].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[82].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[83].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[84].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[85].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[85].olnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of gpa_driver_wave_goodbye.ma
