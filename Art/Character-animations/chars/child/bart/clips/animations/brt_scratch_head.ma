//Maya ASCII 4.0 scene
//Name: brt_scratch_head.ma
//Last modified: Tue, May 27, 2003 01:53:32 PM
requires maya "4.0";
requires "p3dDeformer" "2.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_scratch_headSource";
	setAttr ".ihi" 0;
	setAttr ".du" 60;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL124";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 1 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.016664352267980576;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.99986112117767334;
	setAttr -s 3 ".kox[1:2]"  1 0.016664352267980576;
	setAttr -s 3 ".koy[1:2]"  0 -0.99986112117767334;
createNode animCurveTL -n "animCurveTL125";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 -0.033880036066693167 1 -0.033135546910524061 
		2 -0.032286574581829951 3 -0.031377897580189433 4 -0.03045429440518109 5 
		-0.029560543556383503 6 -0.028741423533375259 7 -0.028041712835734946 8 -0.027506189963041137 
		9 -0.027179633414872426 10 -0.027106821690807394 11 -0.027162571053164282 
		12 -0.027192187756243848 13 -0.027196185388652139 14 -0.027175077538995174 
		15 -0.027129377795878998 16 -0.027059599747909641 17 -0.026966256983693128 
		18 -0.026849863091835506 19 -0.026710931660942804 20 -0.026549976279621058 
		21 -0.026367510536476294 22 -0.026164048020114551 23 -0.025940102319141862 
		24 -0.025696187022164262 25 -0.025432815717787782 26 -0.025150501994618459 
		27 -0.024849759441262324 28 -0.024531101646325406 29 -0.024195042198413754 
		30 -0.02384209468613338 31 -0.023472772698090335 32 -0.02308758982289065 
		33 -0.022687059649140352 34 -0.022271695765445475 35 -0.021842011760412058 
		36 -0.021398521222646134 37 -0.020941737740753738 38 -0.020472174903340898 
		39 -0.01999034629901365 40 -0.019496765516378026 41 -0.019116276029775 42 
		-0.018961200185299593 43 -0.019013261200739644 44 -0.019254182293882972 45 
		-0.019665686682517416 46 -0.020229497584430808 47 -0.020927338217410978 48 
		-0.021740931799245754 49 -0.022652001547722973 50 -0.023642270680630465 51 
		-0.02469346241575605 52 -0.025787299970887578 53 -0.026905506563812864 54 
		-0.028029805412319756 55 -0.029141919734196071 56 -0.030223572747229643 57 
		-0.031256487669208306 58 -0.032222387717919888 59 -0.033102996111152229 60 
		-0.033880036066693167;
createNode animCurveTL -n "animCurveTL127";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 -1.4519511843664466e-005 
		2 -5.1624930999695874e-005 3 -0.00010163658290565125 4 -0.00015487479299908764 
		5 -0.00020165988671756204 6 -0.00023231218949863148 7 -0.00023715202677985293 
		8 -0.00020649972399878355 9 -0.00013067560659298013 10 0 11 0.00022823463346174105 
		12 0.00058395451697625545 13 0.0010576694455236737 14 0.0016398892140841257 
		15 0.0023211236176377418 16 0.0030918824511646532 17 0.0039426755096449891 
		18 0.0048640125880588794 19 0.0058464034813864576 20 0.0068803579846078503 
		21 0.007956385892703189 22 0.0090649970006526047 23 0.010196701103436227 
		24 0.011342007996034189 25 0.012491427473426615 26 0.01363546933059364 27 
		0.014764643362515395 28 0.015869459364172004 29 0.016940427130543605 30 0.017968056456610326 
		31 0.018942857137352293 32 0.019855338967749644 33 0.020696011742782502 34 
		0.021455385257431001 35 0.022123969306675276 36 0.022692273685495448 37 0.023150808188871642 
		38 0.023490082611784008 39 0.023700606749212667 40 0.023772890396137749 41 
		0.023656997555809408 42 0.023321205479948186 43 0.022783343836239752 44 0.0220612422923698 
		45 0.021172730516024005 46 0.020135638174888053 47 0.018967794936647624 48 
		0.0176870304689884 49 0.016311174439596062 50 0.014858056516156294 51 0.013345506366354776 
		52 0.011791353657877193 53 0.010213428058409229 54 0.0086295592356365591 
		55 0.0070575768572448709 56 0.0055153105909198433 57 0.0040205901043471612 
		58 0.0025912450652125032 59 0.0012451051412015594 60 0;
createNode animCurveTA -n "animCurveTA346";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  4 0;
createNode animCurveTU -n "animCurveTU29";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 1 40 1 60 0;
createNode animCurveTU -n "animCurveTU30";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 40 1 60 0;
createNode animCurveTU -n "animCurveTU31";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU32";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA347";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA348";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA349";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL129";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL130";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL131";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.26454016861507795 60 -0.26454016861507795;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.21854541072049752 60 0.21854541072049752;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.064904406754016042 60 -0.064904406754016042;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -25.948901905116401 60 -25.948901905116401;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.21594587158542247 60 0.21594587158542247;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.21854505205085809 60 0.21854505205085809;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.00078430246903575811 60 0.00078430246903575811;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA356";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA357";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA358";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA359";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA360";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA361";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL138";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL139";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL140";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 60 1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL141";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL142";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL143";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 60 1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL144";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.076472881617957691 10 -0.061184609193437878 
		40 -0.044007445515467002 60 -0.076472881617957691;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.90601718425750732 0.28363150358200073 
		0.20114943385124207;
	setAttr -s 4 ".kiy[0:3]"  0 -0.42324090003967285 0.95893335342407227 
		-0.97956055402755737;
	setAttr -s 4 ".kox[1:3]"  0.90601712465286255 0.28362998366355896 
		0.20114943385124207;
	setAttr -s 4 ".koy[1:3]"  -0.42324107885360718 0.95893377065658569 
		-0.97956055402755737;
createNode animCurveTL -n "animCurveTL145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.95473100313980441 60 0.95473100313980441;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 40 0.053659371241571635 
		60 0;
	setAttr -s 4 ".kit[0:3]"  1 1 9 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.6752123236656189 1 0.12329258024692535;
	setAttr -s 4 ".kiy[0:3]"  0 0.73762345314025879 0 -0.9923703670501709;
	setAttr -s 4 ".kox[1:3]"  0.67521071434020996 1 0.12329258024692535;
	setAttr -s 4 ".koy[1:3]"  0.7376248836517334 0 -0.9923703670501709;
createNode animCurveTA -n "animCurveTA368";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.62843630316474508 10 0 60 
		-0.62843630316474508;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99997836351394653;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.0065808272920548916;
	setAttr -s 3 ".kox[1:2]"  1 0.99997836351394653;
	setAttr -s 3 ".koy[1:2]"  0 -0.0065808272920548916;
createNode animCurveTA -n "animCurveTA369";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -5.8284402688137167 10 0 60 -5.8284402688137167;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.9981425404548645;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.060921914875507355;
	setAttr -s 3 ".kox[1:2]"  1 0.9981425404548645;
	setAttr -s 3 ".koy[1:2]"  0 -0.060921914875507355;
createNode animCurveTA -n "animCurveTA370";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.295636019309746 10 0 60 -1.295636019309746;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.9999079704284668;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.013566619716584682;
	setAttr -s 3 ".kox[1:2]"  1 0.9999079704284668;
	setAttr -s 3 ".koy[1:2]"  0 -0.013566619716584682;
createNode animCurveTA -n "animCurveTA371";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA372";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA373";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA374";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA375";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA376";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA377";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA378";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA379";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA380";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA381";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA382";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA383";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA384";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA385";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA386";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA387";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA388";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA389";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA390";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA391";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA392";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA393";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA394";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA395";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA396";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL147";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.43524234076486068 10 -0.22164053326398034 
		60 -0.43524234076486068;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.077790364623069763;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.99696975946426392;
	setAttr -s 3 ".kox[1:2]"  1 0.077790364623069763;
	setAttr -s 3 ".koy[1:2]"  0 -0.99696975946426392;
createNode animCurveTL -n "animCurveTL148";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.82665738350180629 10 -0.9417076481617882 
		60 -0.82665738350180629;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.14336769282817841;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.98966950178146362;
	setAttr -s 3 ".kox[1:2]"  1 0.14336769282817841;
	setAttr -s 3 ".koy[1:2]"  0 0.98966950178146362;
createNode animCurveTL -n "animCurveTL149";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.27773886459742925 10 0.038362195289875119 
		60 0.27773886459742925;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.069457121193408966;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99758493900299072;
	setAttr -s 3 ".kox[1:2]"  1 0.069457121193408966;
	setAttr -s 3 ".koy[1:2]"  0 0.99758493900299072;
createNode animCurveTA -n "animCurveTA397";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.8121934161072299e-015 10 6.7230119492284173 
		60 1.8121934161072299e-015;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99753087759017944;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.070229381322860718;
	setAttr -s 3 ".kox[1:2]"  1 0.99753087759017944;
	setAttr -s 3 ".koy[1:2]"  0 -0.070229381322860718;
createNode animCurveTA -n "animCurveTA398";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 28.652637602052774 10 19.839511008631867 
		60 28.652637602052774;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99576818943023682;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.091900289058685303;
	setAttr -s 3 ".kox[1:2]"  1 0.99576818943023682;
	setAttr -s 3 ".koy[1:2]"  0 0.091900289058685303;
createNode animCurveTA -n "animCurveTA399";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 64.676908227303443 10 76.90743997913691 
		60 64.676908227303443;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.9918975830078125;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.12704008817672729;
	setAttr -s 3 ".kox[1:2]"  1 0.9918975830078125;
	setAttr -s 3 ".koy[1:2]"  0 -0.12704008817672729;
createNode animCurveTL -n "animCurveTL150";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.5198069948790518 10 0.20623790699604494 
		60 0.5198069948790518;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.053076576441526413;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99859046936035156;
	setAttr -s 3 ".kox[1:2]"  1 0.053076576441526413;
	setAttr -s 3 ".koy[1:2]"  0 0.99859046936035156;
createNode animCurveTL -n "animCurveTL151";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.72394202659893114 10 -0.94615818397708606 
		60 -0.72394202659893114;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.074791982769966125;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99719917774200439;
	setAttr -s 3 ".kox[1:2]"  1 0.074791982769966125;
	setAttr -s 3 ".koy[1:2]"  0 0.99719917774200439;
createNode animCurveTL -n "animCurveTL152";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.36439499068905612 10 0.023808763748733922 
		60 0.36439499068905612;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.048876743763685226;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99880480766296387;
	setAttr -s 3 ".kox[1:2]"  1 0.048876743763685226;
	setAttr -s 3 ".koy[1:2]"  0 0.99880480766296387;
createNode animCurveTA -n "animCurveTA400";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.7976222737965317 10 8.1910546202722809 
		60 7.7976222737965317;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99999153614044189;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.0041199792176485062;
	setAttr -s 3 ".kox[1:2]"  1 0.99999153614044189;
	setAttr -s 3 ".koy[1:2]"  0 -0.0041199792176485062;
createNode animCurveTA -n "animCurveTA401";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -30.409274105849079 10 -16.680769289981995 
		60 -30.409274105849079;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.98982334136962891;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.1423015296459198;
	setAttr -s 3 ".kox[1:2]"  1 0.98982334136962891;
	setAttr -s 3 ".koy[1:2]"  0 -0.1423015296459198;
createNode animCurveTA -n "animCurveTA402";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -64.859940280210893 10 -64.609749241846473 
		60 -64.859940280210893;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99999654293060303;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.0026199854910373688;
	setAttr -s 3 ".kox[1:2]"  1 0.99999654293060303;
	setAttr -s 3 ".koy[1:2]"  0 -0.0026199854910373688;
createNode animCurveTL -n "animCurveTL153";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.8448236677023373 10 -0.8448236677023373 
		60 -0.8448236677023373;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL154";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.0304014029588007 10 1.5117481219250299 
		60 1.0304014029588007;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.034604340791702271;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.99940109252929688;
	setAttr -s 3 ".kox[1:2]"  1 0.034604340791702271;
	setAttr -s 3 ".koy[1:2]"  0 -0.99940109252929688;
createNode animCurveTL -n "animCurveTL155";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.097994651149805143 10 -0.097994651149805143 
		60 -0.097994651149805143;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA403";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5.4739599453216465 10 5.4739599453216474 
		60 5.4739599453216465;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA404";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.5874521608419823 10 8.5874521608419823 
		60 8.5874521608419823;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA405";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 74.754744621954103 10 74.754744621954103 
		60 74.754744621954103;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL156";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.61083301393139333 10 0.61083301393139333 
		60 0.61083301393139333;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL157";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.0211562878106184 10 1.4644416293758407 
		60 1.0211562878106184;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.037571508437395096;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.99929392337799072;
	setAttr -s 3 ".kox[1:2]"  1 0.037571508437395096;
	setAttr -s 3 ".koy[1:2]"  0 -0.99929392337799072;
createNode animCurveTL -n "animCurveTL158";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.14314299916678522 10 0.14314299916678522 
		60 0.14314299916678522;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA406";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.226511010665412 10 16.226511010665405 
		60 16.226511010665412;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA407";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -8.5139660854992858 10 -8.513966085499284 
		60 -8.5139660854992858;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA408";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -68.213989601412422 10 -68.213989601412422 
		60 -68.213989601412422;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL159";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL160";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL161";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 10 -1 60 -1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL162";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.10167917362943303 10 -0.10167917362943303 
		60 -0.10167917362943303;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL163";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.40762644910266188 10 -0.40762644910266188 
		60 -0.40762644910266188;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL164";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.93129112588482243 10 -0.93129112588482243 
		60 -0.93129112588482243;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 12.253734489678925 10 -94.403399312650208 
		13 -95.094181384534224 16 -94.373255767657199 19 -94.943463659569133 22 -94.433542857643232 
		25 -94.943463659569133 28 -94.403399312650208 40 -95.111359979063849 60 12.253734489678925;
	setAttr -s 10 ".kit[0:9]"  1 1 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[1:9]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 10 ".kix[0:9]"  0 0.99081951379776001 0.99999654293060303 
		0.99991351366043091 0.99998617172241211 1 0.99999654293060303 0.99998283386230469 
		0.49717229604721069 0.33518829941749573;
	setAttr -s 10 ".kiy[0:9]"  0 -0.13519145548343658 0.0026305115316063166 
		0.01315146591514349 -0.0052609685808420181 0 0.0026305115316063166 -0.0058605866506695747 
		0.86765182018280029 0.94215112924575806;
	setAttr -s 10 ".kox[1:9]"  0.99081951379776001 0.99999654293060303 
		0.99991351366043091 0.99998617172241211 1 0.99999654293060303 0.99998283386230469 
		0.49717229604721069 0.33518829941749573;
	setAttr -s 10 ".koy[1:9]"  -0.13519129157066345 0.0026305115316063166 
		0.01315146591514349 -0.0052609685808420181 0 0.0026305115316063166 -0.0058605866506695747 
		0.86765182018280029 0.94215112924575806;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -65.746751280844975 10 1.5539394738194081 
		13 -12.397111228338572 16 3.6378760165779664 19 -11.382207067904206 22 2.9612732429550483 
		25 -14.261740155530269 28 2.9612732429550483 40 1.4216728960361551 60 -65.746751280844975;
	setAttr -s 10 ".kit[0:9]"  1 1 9 9 9 9 9 
		1 9 9;
	setAttr -s 10 ".kot[1:9]"  1 9 9 9 9 9 1 
		9 9;
	setAttr -s 10 ".kix[0:9]"  0 0.99841839075088501 0.98386305570602417 
		0.99610084295272827 0.99826139211654663 0.9698481559753418 1 0.94822233915328979 
		0.66461712121963501 0.49433526396751404;
	setAttr -s 10 ".kiy[0:9]"  0 0.056220583617687225 0.17892314493656158 
		0.08822176605463028 -0.058942075818777084 -0.24370990693569183 0 0.31760722398757935 
		-0.74718409776687622 -0.86927133798599243;
	setAttr -s 10 ".kox[1:9]"  0.99841839075088501 0.98386305570602417 
		0.99610084295272827 0.99826139211654663 0.9698481559753418 1 0.94822233915328979 
		0.66461712121963501 0.49433526396751404;
	setAttr -s 10 ".koy[1:9]"  0.056220568716526031 0.17892314493656158 
		0.08822176605463028 -0.058942075818777084 -0.24370990693569183 0 0.31760725378990173 
		-0.74718409776687622 -0.86927133798599243;
createNode animCurveTA -n "animCurveTA411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 58.383869577657087 13 60.222019837741108 
		16 58.049206477303521 19 59.971022512475933 22 58.300203802568689 25 60.222019837741108 
		28 58.383869577657087 40 40.029831339824185 60 0;
	setAttr -s 10 ".kit[0:9]"  1 1 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[1:9]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 10 ".kix[0:9]"  0 0.90805763006210327 0.99957382678985596 
		0.9997602105140686 0.9997602105140686 0.9997602105140686 0.9999733567237854 
		0.81736892461776733 0.72308158874511719 0.69035178422927856;
	setAttr -s 10 ".kiy[0:9]"  0 0.41884529590606689 -0.029192419722676277 
		-0.02189839631319046 0.02189839631319046 0.02189839631319046 0.007301021832972765 
		-0.57611459493637085 -0.69076263904571533 -0.72347384691238403;
	setAttr -s 10 ".kox[1:9]"  0.90805763006210327 0.99957382678985596 
		0.9997602105140686 0.9997602105140686 0.9997602105140686 0.9999733567237854 
		0.81736892461776733 0.72308158874511719 0.69035178422927856;
	setAttr -s 10 ".koy[1:9]"  0.41884520649909973 -0.029192419722676277 
		-0.02189839631319046 0.02189839631319046 0.02189839631319046 0.007301021832972765 
		-0.57611459493637085 -0.69076263904571533 -0.72347384691238403;
createNode animCurveTA -n "animCurveTA412";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.061808866237340665 10 -0.061808866237337522 
		60 -0.061808866237340665;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA413";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -59.058178941076754 10 -59.058178941076754 
		60 -59.058178941076754;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA414";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.57914742975785 10 16.579147429757843 
		60 16.57914742975785;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 8.5572674112203639 10 92.890572288783758 
		13 106.8866366107541 16 92.890572288783758 19 106.8866366107541 22 92.890572288783758 
		25 106.8866366107541 28 92.890572288783758 40 72.986421276382544 60 8.5572674112203639;
	setAttr -s 10 ".kit[0:9]"  1 1 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[1:9]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 10 ".kix[0:9]"  0 0.99762004613876343 1 1 1 1 1 
		0.64545750617980957 0.58680301904678345 0.50996983051300049;
	setAttr -s 10 ".kiy[0:9]"  0 0.068951278924942017 0 0 0 0 
		0 -0.76379621028900146 -0.80972975492477417 -0.86019229888916016;
	setAttr -s 10 ".kox[1:9]"  0.99762004613876343 1 1 1 1 1 0.64545750617980957 
		0.58680301904678345 0.50996983051300049;
	setAttr -s 10 ".koy[1:9]"  0.068951211869716644 0 0 0 0 0 
		-0.76379621028900146 -0.80972975492477417 -0.86019229888916016;
createNode animCurveTA -n "animCurveTA416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 39.340891506340085 10 39.340891506340078 
		60 39.340891506340078;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 -14.641 13 -8.223885441597659 
		16 -14.376608227946123 19 -8.223885441597659 22 -14.376608227946123 25 -8.223885441597659 
		28 -14.376608227946123 40 -15.319286316984282 60 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		1 9 9;
	setAttr -s 10 ".kot[7:9]"  1 9 9;
	setAttr -s 10 ".kix[0:9]"  0 0.9492800235748291 0.99973392486572266 
		1 1 1 1 0.99993258714675903 0.97342962026596069 0.92813771963119507;
	setAttr -s 10 ".kiy[0:9]"  0 -0.31443196535110474 0.02306639589369297 
		0 0 0 0 -0.011610336601734161 0.22898638248443604 0.37223702669143677;
	setAttr -s 10 ".kox[7:9]"  0.99993258714675903 0.97342962026596069 
		0.92813771963119507;
	setAttr -s 10 ".koy[7:9]"  -0.011610297486186028 0.22898638248443604 
		0.37223702669143677;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 17.025625321051574 13 12.380428053376002 
		16 17.025625321051574 19 12.380428053376002 22 17.025625321051574 25 12.380428053376002 
		28 17.025625321051574 40 26.023083754396467 60 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		1 9 9;
	setAttr -s 10 ".kot[7:9]"  1 9 9;
	setAttr -s 10 ".kix[0:9]"  0 0.89491194486618042 1 1 1 1 1 
		0.99978715181350708 0.96331804990768433 0.82643324136734009;
	setAttr -s 10 ".kiy[0:9]"  0 0.4462428092956543 0 0 0 0 0 
		0.020632531493902206 -0.26836225390434265 -0.56303471326828003;
	setAttr -s 10 ".kox[7:9]"  0.99978715181350708 0.96331804990768433 
		0.82643324136734009;
	setAttr -s 10 ".koy[7:9]"  0.020632538944482803 -0.26836225390434265 
		-0.56303471326828003;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 -19.041318463876852 13 -8.4579966239639717 
		16 -24.609096988299559 19 -8.4579966239639717 22 -27.120055930686267 25 -8.4579966239639717 
		28 -27.120055930686267 40 -29.681099765133286 60 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		1 9 9;
	setAttr -s 10 ".kot[7:9]"  1 9 9;
	setAttr -s 10 ".kix[0:9]"  0 0.94658178091049194 0.89944946765899658 
		1 0.97682398557662964 1 1 0.9984620213508606 0.91404664516448975 0.78963088989257813;
	setAttr -s 10 ".kiy[0:9]"  0 -0.32246378064155579 -0.4370248019695282 
		0 -0.21404412388801575 0 0 -0.055439487099647522 0.40560901165008545 0.61358213424682617;
	setAttr -s 10 ".kox[7:9]"  0.9984620213508606 0.91404664516448975 
		0.78963088989257813;
	setAttr -s 10 ".koy[7:9]"  -0.055439509451389313 0.40560901165008545 
		0.61358213424682617;
createNode animCurveTA -n "animCurveTA420";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA421";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA422";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA423";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 143.71460997127252 10 10.423754966968488 
		60 143.71460997127252;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.58238941431045532;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.81290996074676514;
	setAttr -s 3 ".kox[1:2]"  1 0.58238941431045532;
	setAttr -s 3 ".koy[1:2]"  0 0.81290996074676514;
createNode animCurveTA -n "animCurveTA424";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.804554996454378 10 27.722848255843903 
		60 27.804554996454378;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99999964237213135;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.00085563067113980651;
	setAttr -s 3 ".kox[1:2]"  1 0.99999964237213135;
	setAttr -s 3 ".koy[1:2]"  0 0.00085563067113980651;
createNode animCurveTA -n "animCurveTA425";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 29.452980944098744 10 21.576484776388227 
		60 29.452980944098744;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99661558866500854;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.082203321158885956;
	setAttr -s 3 ".kox[1:2]"  1 0.99661558866500854;
	setAttr -s 3 ".koy[1:2]"  0 0.082203321158885956;
createNode animCurveTA -n "animCurveTA426";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA427";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA428";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.080064458283051 10 27.080064458283051 
		60 27.080064458283051;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA429";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA430";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA431";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA432";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA433";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA434";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 13.994403295754109 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.98943161964416504;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.14500026404857635;
	setAttr -s 3 ".kox[1:2]"  1 0.98943161964416504;
	setAttr -s 3 ".koy[1:2]"  0 -0.14500026404857635;
createNode animCurveTA -n "animCurveTA435";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA436";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA437";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 10 13.994403295754109 
		60 13.994403295754109;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA438";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 10 0 13 -1.0566759136474175 
		16 0 19 -1.0566759136474175 22 0 25 -1.0566759136474175 28 0 31 0 40 0 60 
		0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[1:10]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 11 ".kix[0:10]"  0 0.99909555912017822 1 1 1 1 1 
		0.99577534198760986 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 -0.042521063238382339 0 0 0 0 
		0 0.091822810471057892 0 0 0;
	setAttr -s 11 ".kox[1:10]"  0.98341566324234009 1 1 1 1 1 0.99577534198760986 
		1 1 1;
	setAttr -s 11 ".koy[1:10]"  -0.18136616051197052 0 0 0 0 0 
		0.091822810471057892 0 0 0;
createNode animCurveTA -n "animCurveTA439";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 10 0 13 0.064341866925491167 
		16 0 19 0.064341866925491167 22 0 25 0.064341866925491167 28 0 31 0 40 0 
		60 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[1:10]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 11 ".kix[0:10]"  0 0.99999666213989258 1 1 1 1 1 
		0.9999842643737793 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0.002591477707028389 0 0 0 0 
		0 -0.00561479851603508 0 0 0;
	setAttr -s 11 ".kox[1:10]"  0.99993693828582764 1 1 1 1 1 0.9999842643737793 
		1 1 1;
	setAttr -s 11 ".koy[1:10]"  0.011229065246880054 0 0 0 0 0 
		-0.00561479851603508 0 0 0;
createNode animCurveTA -n "animCurveTA440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 27.911632519594587 10 27.911632519594587 
		13 38.512817069298855 16 27.911632519594587 19 38.512817069298855 22 27.911632519594587 
		25 38.512817069298855 28 27.911632519594587 31 27.911632519594587 40 27.911632519594587 
		60 27.911632519594587;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kix[0:10]"  0 0.91967344284057617 1 1 1 1 1 
		0.73405265808105469 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0.39268410205841064 0 0 0 0 0 
		-0.67909258604049683 0 0 0;
createNode animCurveTA -n "animCurveTA441";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA442";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA443";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA444";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.65073001024951671 10 0 60 
		-0.65073001024951671;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.9999767541885376;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.0068142707459628582;
	setAttr -s 3 ".kox[1:2]"  1 0.9999767541885376;
	setAttr -s 3 ".koy[1:2]"  0 -0.0068142707459628582;
createNode animCurveTA -n "animCurveTA445";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -4.2368721935960938 10 0 60 -4.2368721935960938;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99901717901229858;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.044324815273284912;
	setAttr -s 3 ".kox[1:2]"  1 0.99901717901229858;
	setAttr -s 3 ".koy[1:2]"  0 -0.044324815273284912;
createNode animCurveTA -n "animCurveTA446";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.6995264082587447 10 0 60 2.6995264082587447;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99960064888000488;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.028258085250854492;
	setAttr -s 3 ".kox[1:2]"  1 0.99960064888000488;
	setAttr -s 3 ".koy[1:2]"  0 0.028258085250854492;
createNode animCurveTA -n "animCurveTA447";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 19.874478172618979 40 19.874478172618979 
		60 0;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.9992707371711731 0.99939239025115967 
		0.88710325956344604;
	setAttr -s 4 ".kiy[0:3]"  0 0.038183487951755524 -0.034855306148529053 
		-0.46157100796699524;
	setAttr -s 4 ".kox[1:3]"  0.9992707371711731 0.99939239025115967 
		0.88710325956344604;
	setAttr -s 4 ".koy[1:3]"  0.03818347305059433 -0.03485531359910965 
		-0.46157100796699524;
createNode animCurveTA -n "animCurveTA448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 22.7519159243489 13 22.586489628460725 
		16 24.389727836871362 19 22.586489628460725 22 24.389727836871362 25 22.586489628460725 
		28 24.389727836871362 40 22.7519159243489 60 0;
	setAttr -s 10 ".kit[0:9]"  1 1 1 9 9 9 9 
		9 1 9;
	setAttr -s 10 ".kot[1:9]"  1 1 9 9 9 9 9 
		1 9;
	setAttr -s 10 ".kix[0:9]"  0 0.99815309047698975 0.99875915050506592 
		1 1 1 1 0.99998331069946289 0.99986302852630615 0.85913968086242676;
	setAttr -s 10 ".kiy[0:9]"  0 0.060748275369405746 0.049800615757703781 
		0 0 0 0 0.0057743708603084087 -0.016551172360777855 -0.51174116134643555;
	setAttr -s 10 ".kox[1:9]"  0.99815309047698975 0.99875915050506592 
		1 1 1 1 0.99998331069946289 0.99986302852630615 0.85913968086242676;
	setAttr -s 10 ".koy[1:9]"  0.060748260468244553 0.049800600856542587 
		0 0 0 0 0.0057743708603084087 -0.016551163047552109 -0.51174116134643555;
createNode animCurveTA -n "animCurveTA449";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 26.895392240767496 40 26.895392240767496 
		60 0;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99728846549987793 0.98903733491897583 
		0.817646324634552;
	setAttr -s 4 ".kiy[0:3]"  0 0.073591403663158417 -0.14766550064086914 
		-0.57572090625762939;
	setAttr -s 4 ".kox[1:3]"  0.99728846549987793 0.98903733491897583 
		0.817646324634552;
	setAttr -s 4 ".koy[1:3]"  0.073591411113739014 -0.14766548573970795 
		-0.57572090625762939;
createNode animCurveTA -n "animCurveTA450";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 -4.9367554394300077 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99866634607315063;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.051628634333610535;
	setAttr -s 3 ".kox[1:2]"  1 0.99866634607315063;
	setAttr -s 3 ".koy[1:2]"  0 0.051628634333610535;
createNode animCurveTA -n "animCurveTA451";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 -8.6986303327609935 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99587678909301758;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.090716250240802765;
	setAttr -s 3 ".kox[1:2]"  1 0.99587678909301758;
	setAttr -s 3 ".koy[1:2]"  0 0.090716250240802765;
createNode animCurveTA -n "animCurveTA452";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 6.6786334979782902 10 17.455917002855632 
		60 6.6786334979782902;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99369156360626221;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.1121474876999855;
	setAttr -s 3 ".kox[1:2]"  1 0.99369156360626221;
	setAttr -s 3 ".koy[1:2]"  0 -0.1121474876999855;
createNode animCurveTA -n "animCurveTA453";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.8903601258661931 10 0 60 -1.8903601258661931;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99980413913726807;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.019791927188634872;
	setAttr -s 3 ".kox[1:2]"  1 0.99980413913726807;
	setAttr -s 3 ".koy[1:2]"  0 -0.019791927188634872;
createNode animCurveTA -n "animCurveTA454";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.5597289571479034 10 0 60 2.5597289571479034;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99964094161987305;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.026795793324708939;
	setAttr -s 3 ".kox[1:2]"  1 0.99964094161987305;
	setAttr -s 3 ".koy[1:2]"  0 0.026795793324708939;
createNode animCurveTA -n "animCurveTA455";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.0168110874036045 10 0 60 2.0168110874036045;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99977701902389526;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.021115286275744438;
	setAttr -s 3 ".kox[1:2]"  1 0.99977701902389526;
	setAttr -s 3 ".koy[1:2]"  0 0.021115286275744438;
createNode animCurveTA -n "animCurveTA456";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA457";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 33.429092416277157 10 33.429092416277157 
		13 36.033014869531556 16 33.429092416277157 19 36.033014869531556 22 33.429092416277157 
		25 36.033014869531556 28 33.429092416277157 31 33.429092416277157 40 33.429092416277157 
		60 33.429092416277157;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kix[0:10]"  0 0.99454528093338013 1 1 1 1 1 
		0.97514081001281738 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0.10430566221475601 0 0 0 0 0 
		-0.22158622741699219 0 0 0;
createNode animCurveTA -n "animCurveTA459";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -121.24398976748977 10 8.2533422302317216 
		60 -121.24398976748977;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.59349662065505981;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.80483651161193848;
	setAttr -s 3 ".kox[1:2]"  1 0.59349662065505981;
	setAttr -s 3 ".koy[1:2]"  0 -0.80483651161193848;
createNode animCurveTA -n "animCurveTA460";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 28.612774017129329 10 23.263402056531085 
		60 28.612774017129329;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99843466281890869;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.055930808186531067;
	setAttr -s 3 ".kox[1:2]"  1 0.99843466281890869;
	setAttr -s 3 ".koy[1:2]"  0 0.055930808186531067;
createNode animCurveTA -n "animCurveTA461";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 17.632837226638049 10 20.166277752815617 
		60 17.632837226638049;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99964827299118042;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.026520796120166779;
	setAttr -s 3 ".kox[1:2]"  1 0.99964827299118042;
	setAttr -s 3 ".koy[1:2]"  0 -0.026520796120166779;
createNode animCurveTA -n "animCurveTA462";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA463";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA464";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 17.254116939558369 10 17.254116939558369 
		60 17.254116939558369;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
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
	setAttr -s 21 ".lnk";
select -ne :time1;
	setAttr ".o" 4;
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
connectAttr "brt_scratch_headSource.st" "clipLibrary2.st[0]";
connectAttr "brt_scratch_headSource.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL124.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL125.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX1.a" "clipLibrary2.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL127.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ1.a" "clipLibrary2.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA346.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "brt_Hoop_Root_IK_FK_RFoot.a" "clipLibrary2.cel[0].cev[6].cevr"
		;
connectAttr "brt_Hoop_Root_IK_FK_LFoot.a" "clipLibrary2.cel[0].cev[7].cevr"
		;
connectAttr "brt_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary2.cel[0].cev[8].cevr"
		;
connectAttr "brt_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary2.cel[0].cev[9].cevr"
		;
connectAttr "animCurveTU29.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU30.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU31.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU32.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA347.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA348.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA349.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL129.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL130.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL131.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL132.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL133.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL134.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA350.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA351.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA352.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL135.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL136.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL137.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA353.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA354.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA355.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA356.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA357.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA358.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA359.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA360.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA361.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTA362.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTA363.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTA364.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTA365.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTA366.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTA367.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL138.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL139.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL140.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTL141.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTL142.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTL143.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTL144.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL145.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL146.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA368.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA369.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA370.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA371.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA372.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA373.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA374.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA375.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA376.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA377.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA378.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA379.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA380.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA381.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA382.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA383.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA384.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA385.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA386.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA387.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA388.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA389.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA390.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTA391.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA392.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA393.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA394.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA395.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA396.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL147.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL148.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL149.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA397.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA398.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA399.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL150.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL151.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL152.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA400.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA401.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA402.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL153.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL154.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL155.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA403.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA404.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA405.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL156.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL157.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL158.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTA406.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTA407.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTA408.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTL159.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTL160.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTL161.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTL162.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTL163.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTL164.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA409.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA410.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA411.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA412.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA413.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA414.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA415.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA416.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA417.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA418.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA419.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA420.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA421.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA422.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA423.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA424.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA425.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA426.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA427.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA428.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA429.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA430.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA431.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA432.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA433.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA434.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA435.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA436.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA437.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA438.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA439.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA440.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA441.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA442.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA443.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA444.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA445.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA446.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA447.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA448.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA449.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA450.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA451.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA452.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA453.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA454.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA455.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA456.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA457.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA458.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA459.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA460.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA461.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA462.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA463.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA464.a" "clipLibrary2.cel[0].cev[167].cevr";
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
// End of brt_scratch_head.ma
