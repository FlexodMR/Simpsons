//Maya ASCII 4.0 scene
//Name: lsa_dialogue_yes.ma
//Last modified: Thu, Feb 20, 2003 03:14:02 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_dialogue_yesSource";
	setAttr ".ihi" 0;
	setAttr ".du" 40;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 1 20 1 32 1 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.0066665187478065491 1 1 0.0026666575577110052;
	setAttr -s 5 ".kiy[0:4]"  0 0.99997776746749878 0 0 -0.99999642372131348;
createNode animCurveTL -n "animCurveTL119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 -0.033135114381557439 1 -0.030887037778766366 
		2 -0.028564737497336849 3 -0.026188456351950704 4 -0.023778437157289733 5 
		-0.021354922728035769 6 -0.01893815587887061 7 -0.016548379424476071 8 -0.014205836179533962 
		9 -0.01193076895872611 10 -0.0097434205767343105 11 -0.0076640338482403883 
		12 -0.0057128515879261545 13 -0.0039101166104734209 14 -0.0022760717305640049 
		15 -0.0012045771290057931 16 -0.00090455864056949379 17 -0.0011188575608811354 
		18 -0.0015903151855667483 19 -0.0020617728102523612 20 -0.0022760717305640049 
		21 -0.0022760717305640049 22 -0.0022760717305640049 23 -0.0022760717305640049 
		24 -0.0022760717305640049 25 -0.0022760717305640049 26 -0.0022760717305640049 
		27 -0.0022760717305640049 28 -0.0022760717305640049 29 -0.0022760717305640049 
		30 -0.0022760717305640049 31 -0.0022760717305640049 32 -0.0022760717305640049 
		33 -0.0043614681093698997 34 -0.0073871009993452079 35 -0.011135992709557832 
		36 -0.015391165549075683 37 -0.019935641826966659 38 -0.024552443852298673 
		39 -0.029024593934139628 40 -0.033135114381557439;
createNode animCurveTL -n "animCurveTL121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0;
createNode animCurveTA -n "animCurveTA343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  40 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  40 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  40 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  40 0;
createNode animCurveTU -n "animCurveTU29";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU30";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU31";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 6 0 36 0 40 1;
createNode animCurveTU -n "animCurveTU32";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 6 0 36 0 40 1;
createNode animCurveTA -n "animCurveTA344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.26454016861507795 40 -0.26454016861507795;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.13806192026723146 40 0.13806192026723146;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.064904406754016042 40 -0.064904406754016042;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -13.717778871715204 40 -13.717778871715204;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.21594587158542247 40 0.21594587158542247;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.1380615615975922 40 0.1380615615975922;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.00078430246903575811 40 0.00078430246903575811;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 14 1 20 1 32 1 40 1;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 14 1 20 1 32 1 40 1;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.076472881617957691 14 -0.0052529700667724097 
		20 -0.0052529700667724097 32 -0.0052529700667724097 40 -0.076472881617957691;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.093199349939823151 1 1 0.037416499108076096;
	setAttr -s 5 ".kiy[0:4]"  0 0.99564749002456665 0 0 -0.99929976463317871;
createNode animCurveTL -n "animCurveTL139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.96147551361829786 14 0.9912550528809112 
		20 0.9912550528809112 32 0.9912550528809112 40 0.96147551361829786;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.21846003830432892 1 1 0.089190080761909485;
	setAttr -s 5 ".kiy[0:4]"  0 0.97584587335586548 0 0 -0.99601459503173828;
createNode animCurveTL -n "animCurveTL140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.62843630316474508 14 0 20 
		0 32 0 40 -0.62843630316474508;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99986469745635986 1 1 0.99915516376495361;
	setAttr -s 5 ".kiy[0:4]"  0 0.016450198367238045 0 0 -0.041096307337284088;
createNode animCurveTA -n "animCurveTA366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -5.8284402688137167 14 0 20 0 
		32 0 40 -5.8284402688137167;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.98855781555175781 1 1 0.93432658910751343;
	setAttr -s 5 ".kiy[0:4]"  0 0.15084227919578552 0 0 -0.35641801357269287;
createNode animCurveTA -n "animCurveTA367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.295636019309746 14 0 20 0 
		32 0 40 -1.295636019309746;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99942523241043091 1 1 0.99642384052276611;
	setAttr -s 5 ".kiy[0:4]"  0 0.033900178968906403 0 0 -0.084495909512042999;
createNode animCurveTA -n "animCurveTA368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.43524234076486068 14 -0.4368334344244888 
		20 -0.4368334344244888 32 -0.4368334344244888 40 -0.43524234076486068;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.97268140316009521 1 1 0.85875570774078369;
	setAttr -s 5 ".kiy[0:4]"  0 -0.23214408755302429 0 0 0.51238518953323364;
createNode animCurveTL -n "animCurveTL142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.82665738350180629 7 -0.85738186791864235 
		14 -0.86920343668090727 20 -0.86377401648593022 32 -0.87419476577674926 40 
		-0.82665738350180629;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.10903116315603256 0.56112933158874512 
		0.76876735687255859 0.51936447620391846 0.056008156388998032;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99403834342956543 -0.82772815227508545 
		-0.63952851295471191 -0.85455280542373657 0.99843031167984009;
createNode animCurveTL -n "animCurveTL143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.27773886459742925 7 0.17432631362497095 
		14 0.17459290450954779 20 0.1744704644187545 32 0.17470546511238177 40 0.27773886459742925;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.045197091996669769 0.99944716691970825 
		0.99982404708862305 0.99931228160858154 0.025872915983200073;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99897807836532593 0.033247176557779312 
		0.018756799399852753 0.037079859524965286 0.99966526031494141;
createNode animCurveTA -n "animCurveTA394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.8121934161072299e-015 14 3.0991742492369156 
		20 3.0991742492369156 32 3.0991742492369156 40 1.8121934161072299e-015;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99672460556030273 1 1 0.98004168272018433;
	setAttr -s 5 ".kiy[0:4]"  0 0.080870434641838074 0 0 -0.19879208505153656;
createNode animCurveTA -n "animCurveTA395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 28.652637602052774 14 24.194091320927786 
		20 24.194091320927786 32 24.194091320927786 40 28.652637602052774;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99325650930404663 1 1 0.95996272563934326;
	setAttr -s 5 ".kiy[0:4]"  0 -0.11593733727931976 0 0 0.28012779355049133;
createNode animCurveTA -n "animCurveTA396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 64.676908227303443 14 71.000559239311499 
		20 71.000559239311499 32 71.000559239311499 40 64.676908227303443;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.9865715503692627 1 1 0.92398786544799805;
	setAttr -s 5 ".kiy[0:4]"  0 0.16332967579364777 0 0 -0.38242185115814209;
createNode animCurveTL -n "animCurveTL144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.5198069948790518 14 0.37736126676894655 
		20 0.37736126676894655 32 0.37736126676894655 40 0.5198069948790518;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.046750277280807495 1 1 0.018717303872108459;
	setAttr -s 5 ".kiy[0:4]"  0 -0.99890661239624023 0 0 0.99982482194900513;
createNode animCurveTL -n "animCurveTL145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.72394202659893114 7 -0.85436367931355761 
		14 -0.86618524807582253 20 -0.86075582788084548 32 -0.87117657717166452 40 
		-0.72394202659893114;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.032790012657642365 0.56112933158874512 
		0.76876735687255859 0.51936447620391846 0.018108723685145378;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99946224689483643 -0.82772815227508545 
		-0.63952851295471191 -0.85455280542373657 0.9998360276222229;
createNode animCurveTL -n "animCurveTL146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.36439499068905612 7 0.16389042036776708 
		14 0.16415701125234397 20 0.16403457116155068 32 0.1642695718551779 40 0.36439499068905612;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.02329927496612072 0.99944716691970825 
		0.99982404708862305 0.99931228160858154 0.013323795981705189;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99972856044769287 0.033247176557779312 
		0.018756799399852753 0.037079859524965286 0.99991124868392944;
createNode animCurveTA -n "animCurveTA397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 7.7976222737965317 14 8.0210232984815821 
		20 8.0210232984815821 32 8.0210232984815821 40 7.7976222737965317;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99998289346694946 1 1 0.99989312887191772;
	setAttr -s 5 ".kiy[0:4]"  0 0.0058485250920057297 0 0 -0.014619997702538967;
createNode animCurveTA -n "animCurveTA398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -30.409274105849079 14 -22.719118935722776 
		20 -22.719118935722776 32 -22.719118935722776 40 -30.409274105849079;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.98032957315444946 1 1 0.89323806762695313;
	setAttr -s 5 ".kiy[0:4]"  0 0.1973675936460495 0 0 -0.44958403706550598;
createNode animCurveTA -n "animCurveTA399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -64.859940280210893 14 -64.729982610322082 
		20 -64.729982610322082 32 -64.729982610322082 40 -64.859940280210893;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99999421834945679 1 1 0.99996381998062134;
	setAttr -s 5 ".kiy[0:4]"  0 0.0034022640902549028 0 0 -0.0085054012015461922;
createNode animCurveTL -n "animCurveTL147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.97384023505055983 14 -0.8448236677023373 
		20 -0.8448236677023373 32 -0.8448236677023373 40 -0.97384023505055983;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.051604099571704865 1 1 0.020664768293499947;
	setAttr -s 5 ".kiy[0:4]"  0 0.99866759777069092 0 0 -0.99978643655776978;
createNode animCurveTL -n "animCurveTL148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.2525965505547216 14 1.5117481219250299 
		20 1.5117481219250299 32 1.5117481219250299 40 1.2525965505547216;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.02571646124124527 1 1 0.010289445519447327;
	setAttr -s 5 ".kiy[0:4]"  0 0.99966925382614136 0 0 -0.99994707107543945;
createNode animCurveTL -n "animCurveTL149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.097994651149805143 14 -0.097994651149805143 
		20 -0.097994651149805143 32 -0.097994651149805143 40 -0.097994651149805143;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -12.222987645962959 14 5.4739599453216474 
		20 5.4739599453216474 32 5.4739599453216474 40 -12.222987645962959;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.90734857320785522 1 1 0.65350103378295898;
	setAttr -s 5 ".kiy[0:4]"  0 0.42037913203239441 0 0 -0.75692564249038696;
createNode animCurveTA -n "animCurveTA401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -19.681044208515026 14 8.5874521608419823 
		20 8.5874521608419823 32 8.5874521608419823 40 -19.681044208515026;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.80381596088409424 1 1 0.47548353672027588;
	setAttr -s 5 ".kiy[0:4]"  0 0.59487807750701904 0 0 -0.87972462177276611;
createNode animCurveTA -n "animCurveTA402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 65.119655550709027 14 74.754744621954103 
		20 74.754744621954103 32 74.754744621954103 40 65.119655550709027;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.96962791681289673 1 1 0.84585684537887573;
	setAttr -s 5 ".kiy[0:4]"  0 0.2445848137140274 0 0 -0.53341001272201538;
createNode animCurveTL -n "animCurveTL150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.75854111686822778 14 0.61083301393139333 
		20 0.61083301393139333 32 0.61083301393139333 40 0.75854111686822778;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.045088160783052444 1 1 0.01805068738758564;
	setAttr -s 5 ".kiy[0:4]"  0 -0.99898302555084229 0 0 0.99983710050582886;
createNode animCurveTL -n "animCurveTL151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.1932952672205326 14 1.4644416293758407 
		20 1.4644416293758407 32 1.4644416293758407 40 1.1932952672205326;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.024579538032412529 1 1 0.0098343128338456154;
	setAttr -s 5 ".kiy[0:4]"  0 0.99969786405563354 0 0 -0.99995166063308716;
createNode animCurveTL -n "animCurveTL152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.14314299916678522 14 0.14314299916678522 
		20 0.14314299916678522 32 0.14314299916678522 40 0.14314299916678522;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -5.7993291745893352 14 16.226511010665405 
		20 16.226511010665405 32 16.226511010665405 40 -5.7993291745893352;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.86629354953765869 1 1 0.56997179985046387;
	setAttr -s 5 ".kiy[0:4]"  0 0.49953532218933105 0 0 -0.82166427373886108;
createNode animCurveTA -n "animCurveTA404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.228264010471275 14 -8.513966085499284 
		20 -8.513966085499284 32 -8.513966085499284 40 -1.228264010471275;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.98229104280471802 1 1 0.9026300311088562;
	setAttr -s 5 ".kiy[0:4]"  0 -0.18736143410205841 0 0 0.43041732907295227;
createNode animCurveTA -n "animCurveTA405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -60.456694896838378 14 -68.213989601412422 
		20 -68.213989601412422 32 -68.213989601412422 40 -60.456694896838378;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.97999489307403564 1 1 0.89165908098220825;
	setAttr -s 5 ".kiy[0:4]"  0 -0.19902274012565613 0 0 0.45270746946334839;
createNode animCurveTL -n "animCurveTL153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1 14 -1 20 -1 32 -1 40 -1;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.10167917362943303 14 -0.10167917362943303 
		20 -0.10167917362943303 32 -0.10167917362943303 40 -0.10167917362943303;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.40762644910266188 14 -0.40762644910266188 
		20 -0.40762644910266188 32 -0.40762644910266188 40 -0.40762644910266188;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.93129112588482243 14 -0.93129112588482243 
		20 -0.93129112588482243 32 -0.93129112588482243 40 -0.93129112588482243;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 12.253734489678925 14 12.253734489678925 
		20 12.253734489678925 32 12.253734489678925 40 12.253734489678925;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -65.746751280844975 14 -65.746751280844961 
		20 -65.746751280844961 32 -65.746751280844961 40 -65.746751280844975;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.061808866237340665 14 -0.061808866237337522 
		20 -0.061808866237337522 32 -0.061808866237337522 40 -0.061808866237340665;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -59.058178941076754 14 -59.058178941076754 
		20 -59.058178941076754 32 -59.058178941076754 40 -59.058178941076754;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.57914742975785 14 16.579147429757843 
		20 16.579147429757843 32 16.579147429757843 40 16.57914742975785;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.5572674112203639 14 8.5572674112203622 
		20 8.5572674112203622 32 8.5572674112203622 40 8.5572674112203639;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 15.711328223519061 14 15.711328223519057 
		20 15.711328223519057 32 15.711328223519057 40 15.711328223519061;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.423754966968488 14 10.423754966968488 
		20 10.423754966968488 32 10.423754966968488 40 10.423754966968488;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.7228482558439 14 27.722848255843903 
		20 27.722848255843903 32 27.722848255843903 40 27.7228482558439;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 21.576484776388224 14 21.576484776388227 
		20 21.576484776388227 32 21.576484776388227 40 21.576484776388224;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.080064458283051 14 27.080064458283051 
		20 27.080064458283051 32 27.080064458283051 40 27.080064458283051;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.994403295754109 14 13.994403295754109 
		20 13.994403295754109 32 13.994403295754109 40 13.994403295754109;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.994403295754109 14 13.994403295754109 
		20 13.994403295754109 32 13.994403295754109 40 13.994403295754109;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA435";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA436";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA437";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.911632519594587 14 27.911632519594587 
		20 27.911632519594587 32 27.911632519594587 40 27.911632519594587;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA438";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA439";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.65073001024951671 14 0 20 
		0 32 0 40 -0.65073001024951671;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.9998549222946167 1 1 0.99909424781799316;
	setAttr -s 5 ".kiy[0:4]"  0 0.017033601179718971 0 0 -0.042551595717668533;
createNode animCurveTA -n "animCurveTA442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.2368721935960938 14 0 20 0 
		32 0 40 -4.2368721935960938;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.9939044713973999 1 1 0.96363592147827148;
	setAttr -s 5 ".kiy[0:4]"  0 0.11024492979049683 0 0 -0.26721873879432678;
createNode animCurveTA -n "animCurveTA443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.6995264082587447 7 1.2918712010013078 
		14 0.38352425973169957 20 0.80071061801954979 32 0 40 2.6995264082587447;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99626964330673218 0.99980437755584717 
		0.99993777275085449 0.99975663423538208 0.98474764823913574;
	setAttr -s 6 ".kiy[0:5]"  0 -0.086295165121555328 -0.019778519868850708 
		-0.011155574582517147 -0.02206047996878624 0.1739887148141861;
createNode animCurveTA -n "animCurveTA444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 7 7.9308011105049889 14 2.7633526172010727 
		20 5.9670144834762038 32 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99470186233520508 0.99688661098480225 
		0.9817434549331665 0.98674821853637695 1;
	setAttr -s 6 ".kiy[0:5]"  0 0.10280159115791321 -0.078848838806152344 
		0.19020979106426239 -0.16225889325141907 0;
	setAttr -s 6 ".kox[3:5]"  0.9817434549331665 0.98801714181900024 
		1;
	setAttr -s 6 ".koy[3:5]"  0.19020974636077881 -0.15434415638446808 
		0;
createNode animCurveTA -n "animCurveTA447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -4.0198472869727979 7 -7.5635700811419921 
		14 -5.7165910429079396 20 -6.5648731616722058 32 -4.9367554394300077 40 -4.0198472869727979;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99799257516860962 0.9991919994354248 
		0.99974280595779419 0.99899494647979736 0.99820417165756226;
	setAttr -s 6 ".kiy[0:5]"  0 -0.063330687582492828 0.040191840380430222 
		0.022678663954138756 0.04482230544090271 0.059903718531131744;
createNode animCurveTA -n "animCurveTA448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -9.1335573833666519 7 -6.5492107333627931 
		14 -8.0605213684330064 20 -7.366405326130681 32 -8.6986303327609935 40 -9.1335573833666519;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99919569492340088 0.99945878982543945 
		0.9998278021812439 0.99932676553726196 0.99959510564804077;
	setAttr -s 6 ".kiy[0:5]"  0 0.04009917750954628 -0.032896194607019424 
		-0.018558641895651817 -0.036688517779111862 -0.028454378247261047;
createNode animCurveTA -n "animCurveTA449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.2752136084709536 7 30.029576388750591 
		14 21.51836273921953 20 25.375422838707482 32 17.455917002855632 40 -2.2752136084709536;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.74704241752624512 0.98288029432296753 
		0.99309003353118896 0.97700303792953491 0.61225241422653198;
	setAttr -s 6 ".kiy[0:5]"  0 0.66477638483047485 -0.18424537777900696 
		-0.11735519021749496 -0.21322546899318695 -0.79066234827041626;
createNode animCurveTA -n "animCurveTA450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.8903601258661931 14 0 20 0 
		32 0 40 -1.8903601258661931;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99877762794494629 1 1 0.99243295192718506;
	setAttr -s 5 ".kiy[0:4]"  0 0.049429018050432205 0 0 -0.12278753519058228;
createNode animCurveTA -n "animCurveTA451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.5597289571479034 14 0 20 0 
		32 0 40 2.5597289571479034;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99776214361190796 1 1 0.98625487089157104;
	setAttr -s 5 ".kiy[0:4]"  0 -0.066863581538200378 0 0 0.16523106396198273;
createNode animCurveTA -n "animCurveTA452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.0168110874036045 14 0 20 0 
		32 0 40 2.0168110874036045;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99860900640487671 1 1 0.99140024185180664;
	setAttr -s 5 ".kiy[0:4]"  0 -0.052726548165082932 0 0 0.13086478412151337;
createNode animCurveTA -n "animCurveTA453";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 33.429092416277157 14 33.429092416277157 
		20 33.429092416277157 32 33.429092416277157 40 33.429092416277157;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.2533422302317216 14 8.2533422302317216 
		20 8.2533422302317216 32 8.2533422302317216 40 8.2533422302317216;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA457";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 23.263402056531085 14 23.263402056531085 
		20 23.263402056531085 32 23.263402056531085 40 23.263402056531085;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 20.166277752815617 14 20.166277752815617 
		20 20.166277752815617 32 20.166277752815617 40 20.166277752815617;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 20 0 32 0 40 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.254116939558369 14 17.254116939558369 
		20 17.254116939558369 32 17.254116939558369 40 17.254116939558369;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
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
	setAttr ".o" 40;
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
connectAttr "lsa_dialogue_yesSource.st" "clipLibrary2.st[0]";
connectAttr "lsa_dialogue_yesSource.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL118.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL119.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary2.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL121.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary2.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA343.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "lsa_Hoop_Root_IK_FK_RFoot.a" "clipLibrary2.cel[0].cev[6].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_FK_LFoot.a" "clipLibrary2.cel[0].cev[7].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary2.cel[0].cev[8].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary2.cel[0].cev[9].cevr"
		;
connectAttr "animCurveTU29.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU30.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU31.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU32.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA344.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA345.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA346.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL123.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL124.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL125.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL126.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL127.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL128.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA347.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA348.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA349.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL129.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL130.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL131.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA350.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA351.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA352.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA353.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA354.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA355.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA356.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA357.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA358.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTA359.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTA360.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTA361.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTA362.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTA363.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTA364.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL132.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL133.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL134.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTL135.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTL136.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTL137.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTL138.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL139.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL140.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA365.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA366.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA367.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA368.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA369.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA370.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA371.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA372.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA373.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA374.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA375.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA376.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA377.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA378.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA379.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA380.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA381.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA382.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA383.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA384.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA385.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA386.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA387.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTA388.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA389.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA390.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA391.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA392.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA393.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL141.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL142.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL143.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA394.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA395.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA396.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL144.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL145.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL146.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA397.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA398.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA399.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL147.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL148.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL149.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA400.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA401.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA402.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL150.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL151.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL152.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTA403.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTA404.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTA405.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTL153.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTL154.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTL155.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTL156.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTL157.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTL158.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA406.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA407.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA408.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA409.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA410.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA411.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA412.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA413.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA414.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA415.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA416.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA417.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA418.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA419.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA420.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA421.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA422.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA423.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA424.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA425.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA426.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA427.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA428.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA429.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA430.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA431.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA432.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA433.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA434.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA435.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA436.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA437.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA438.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA439.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA440.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA441.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA442.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA443.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA444.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA445.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA446.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA447.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA448.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA449.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA450.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA451.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA452.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA453.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA454.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA455.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA456.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA457.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA458.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA459.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA460.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA461.a" "clipLibrary2.cel[0].cev[167].cevr";
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
// End of lsa_dialogue_yes.ma
