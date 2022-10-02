//Maya ASCII 4.0 scene
//Name: lsa_dialogue_open_arm_hand_gesture.ma
//Last modified: Thu, Feb 20, 2003 03:13:33 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_dialogue_open_arm_hand_gestureSource";
	setAttr ".ihi" 0;
	setAttr ".du" 62;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 1 17 1 38 1 48 1 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.0056665753945708275 1 1 0.0079997442662715912 
		0.0046666152775287628;
	setAttr -s 6 ".kiy[0:5]"  0 0.99998396635055542 0 0 -0.99996799230575562 
		-0.9999890923500061;
createNode animCurveTL -n "animCurveTL119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 63 ".ktv[0:62]"  0 -0.033135114381557439 1 -0.029546969462957321 
		2 -0.025719780876496557 3 -0.021773070451453599 4 -0.017826360017106923 5 
		-0.013999171402734985 6 -0.010411026437616263 7 -0.0071814469510292104 8 
		-0.0044299547722523019 9 -0.0022760717305640049 10 -0.00088628024141024307 
		11 -0.00023392913425643688 12 -0.00014883985941028862 13 -0.00046083386717949999 
		14 -0.00099973260787177606 15 -0.0015953575317948167 16 -0.0020775300892563252 
		17 -0.0022760717305640049 18 -0.0022760717305640049 19 -0.0022760717305640049 
		20 -0.0022760717305640049 21 -0.0022760717305640049 22 -0.0022760717305640049 
		23 -0.0022760717305640049 24 -0.0022760717305640049 25 -0.0022760717305640049 
		26 -0.0022760717305640049 27 -0.0022760717305640049 28 -0.0022760717305640049 
		29 -0.0022760717305640049 30 -0.0022760717305640049 31 -0.0022760717305640049 
		32 -0.0022760717305640049 33 -0.0022760717305640049 34 -0.0022760717305640049 
		35 -0.0022760717305640049 36 -0.0022760717305640049 37 -0.0022760717305640049 
		38 -0.0022760717305640049 39 -0.0021603503231334312 40 -0.001864617837477521 
		41 -0.0014660218785499898 42 -0.0010417100513045536 43 -0.00066882996069492771 
		44 -0.00042452921167482783 45 -0.00038595540919797021 46 -0.00063025615821806912 
		47 -0.0012345790636888424 48 -0.0022760717305640049 49 -0.0036883827049665162 
		50 -0.0053349854578608261 51 -0.0071877649814628798 52 -0.0092186062679886268 
		53 -0.011399394309654013 54 -0.013702014098674983 55 -0.016098350627267485 
		56 -0.018560288887647464 57 -0.021059713872030872 58 -0.02356851057263365 
		59 -0.026058563981671754 60 -0.028501759091361115 61 -0.030869980893917695 
		62 -0.033135114381557439;
createNode animCurveTL -n "animCurveTL121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 63 ".ktv[0:62]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0;
createNode animCurveTA -n "animCurveTA343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTU -n "animCurveTU29";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 62 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU30";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 62 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU31";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 7 0 56 0 62 1;
createNode animCurveTU -n "animCurveTU32";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 7 0 56 0 62 1;
createNode animCurveTA -n "animCurveTA344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.26454016861507795 62 -0.26454016861507795;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.13806192026723146 62 0.13806192026723146;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.064904406754016042 62 -0.064904406754016042;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 62 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -13.717778871715204 62 -13.717778871715204;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 62 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.21594587158542247 62 0.21594587158542247;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.1380615615975922 62 0.1380615615975922;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.00078430246903575811 62 0.00078430246903575811;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 62 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 62 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 62 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 62 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 62 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 62 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 62 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 62 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 62 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 9 1 17 1 38 1 48 1 62 1;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 9 1 17 1 38 1 48 1 62 1;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.076472881617957691 9 -0.0052529700667724097 
		17 -0.0052529700667724097 38 -0.0052529700667724097 48 -0.0052529700667724097 
		62 -0.076472881617957691;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.079315096139907837 1 1 0.11162611842155457 
		0.065384522080421448;
	setAttr -s 6 ".kiy[0:5]"  0 0.99684959650039673 0 0 -0.99375027418136597 
		-0.9978601336479187;
createNode animCurveTL -n "animCurveTL139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.96147551361829786 9 0.9912550528809112 
		17 0.9912550528809112 38 0.9912550528809112 48 0.9912550528809112 62 0.96147551361829786;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.1869329959154129 1 1 0.25944221019744873 
		0.15481771528720856;
	setAttr -s 6 ".kiy[0:5]"  0 0.98237264156341553 0 0 -0.96575862169265747 
		-0.98794305324554443;
createNode animCurveTL -n "animCurveTL140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.62843630316474508 9 0 17 0 
		38 0 48 0 62 -0.62843630316474508;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99981272220611572 1 1 0.99990600347518921 
		0.99972391128540039;
	setAttr -s 6 ".kiy[0:5]"  0 0.019352167844772339 0 0 -0.01370906550437212 
		-0.023496976122260094;
createNode animCurveTA -n "animCurveTA366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -5.8284402688137167 9 0 17 0 
		38 0 48 0 62 -5.8284402688137167;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.98426634073257446 1 1 0.99201232194900513 
		0.97705614566802979;
	setAttr -s 6 ".kiy[0:5]"  0 0.17669110000133514 0 0 -0.12614114582538605 
		-0.21298182010650635;
createNode animCurveTA -n "animCurveTA367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.295636019309746 9 0 17 0 38 
		0 48 0 62 -1.295636019309746;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99920475482940674 1 1 0.99960076808929443 
		0.99882805347442627;
	setAttr -s 6 ".kiy[0:5]"  0 0.039873760193586349 0 0 -0.028255106881260872 
		-0.048399887979030609;
createNode animCurveTA -n "animCurveTA368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.43524234076486068 9 -0.44759057328294871 
		17 -0.29288341836214238 38 -0.29288341836214238 48 -0.28012667244268596 55 
		-0.34134079147945867 62 -0.43524234076486068;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 0.039773989468812943 0.062362022697925568 
		0.62943530082702637 0.11614977568387985 0.030071470886468887 0.024841047823429108;
	setAttr -s 7 ".kiy[0:6]"  0 0.99920868873596191 0.99805361032485962 
		0.77705287933349609 -0.99323171377182007 -0.99954777956008911 -0.9996914267539978;
createNode animCurveTL -n "animCurveTL142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.82665738350180629 9 -0.27018311330701772 
		17 0.097530446623879788 38 0.097530446623879788 48 -0.029271546535677605 
		55 -0.4791497836862198 62 -0.82665738350180629;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 9 9;
	setAttr -s 7 ".kot[4:6]"  1 9 9;
	setAttr -s 7 ".kix[0:6]"  0 0.0061313947662711143 0.026279499754309654 
		0.08122263103723526 0.012250012718141079 0.0058523570187389851 0.0067143291234970093;
	setAttr -s 7 ".kiy[0:6]"  0 0.99998122453689575 0.99965465068817139 
		-0.99669599533081055 -0.99992495775222778 -0.99998289346694946 -0.9999774694442749;
	setAttr -s 7 ".kox[4:6]"  0.012249985709786415 0.0058523570187389851 
		0.0067143291234970093;
	setAttr -s 7 ".koy[4:6]"  -0.99992495775222778 -0.99998289346694946 
		-0.9999774694442749;
createNode animCurveTL -n "animCurveTL143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.27773886459742925 9 0.27370585695230654 
		17 0.71531654579684956 38 0.71531654579684956 48 0.64604092429358861 55 0.28819429327967178 
		62 0.27773886459742925;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 0.012948996387422085 0.02188432402908802 
		0.14753040671348572 0.013265915215015411 0.012669742107391357 0.21781140565872192;
	setAttr -s 7 ".kiy[0:6]"  0 0.99991613626480103 0.99976050853729248 
		-0.98905754089355469 -0.99991202354431152 -0.99991971254348755 -0.975990891456604;
createNode animCurveTA -n "animCurveTA394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.8121934161072299e-015 9 19.767828484813627 
		17 115.72574109075084 38 115.72574109075084 48 103.02851862590957 55 -149.17428217621193 
		62 1.8121934161072299e-015;
	setAttr -s 7 ".kit[0:6]"  1 9 1 9 1 9 9;
	setAttr -s 7 ".kot[2:6]"  1 9 1 9 9;
	setAttr -s 7 ".kix[0:6]"  0 0.27012673020362854 0.80393832921981812 
		0.97776752710342407 0.67888998985290527 0.25119924545288086 0.089262343943119049;
	setAttr -s 7 ".kiy[0:6]"  0 0.96282476186752319 0.59471267461776733 
		-0.20969171822071075 -0.73423999547958374 -0.96793538331985474 0.99600815773010254;
	setAttr -s 7 ".kox[2:6]"  0.80393826961517334 0.97776752710342407 
		0.67889004945755005 0.25119924545288086 0.089262343943119049;
	setAttr -s 7 ".koy[2:6]"  0.59471273422241211 -0.20969171822071075 
		-0.73423999547958374 -0.96793538331985474 0.99600815773010254;
createNode animCurveTA -n "animCurveTA395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 28.652637602052774 9 114.43280795973045 
		17 12.444138994439063 38 12.444138994439063 48 16.087193449548487 55 63.10315428436445 
		62 28.652637602052774;
	setAttr -s 7 ".kit[0:6]"  1 9 1 1 9 9 9;
	setAttr -s 7 ".kot[2:6]"  1 1 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 0.89470595121383667 0.93406850099563599 
		0.97133386135101318 0.53959405422210693 0.90504235029220581 0.36177834868431091;
	setAttr -s 7 ".kiy[0:6]"  0 -0.44665566086769104 -0.3570939302444458 
		0.23771950602531433 0.84192532300949097 0.42532148957252502 -0.93226414918899536;
	setAttr -s 7 ".kox[2:6]"  0.93406844139099121 0.97133386135101318 
		0.53959405422210693 0.90504235029220581 0.36177834868431091;
	setAttr -s 7 ".koy[2:6]"  -0.35709404945373535 0.23771955072879791 
		0.84192532300949097 0.42532148957252502 -0.93226414918899536;
createNode animCurveTA -n "animCurveTA396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 64.676908227303443 9 165.97193835658146 
		17 288.41736731906326 38 288.41736731906326 48 253.73363326021624 55 -62.827595649381578 
		62 64.676908227303443;
	setAttr -s 7 ".kit[0:6]"  1 9 1 9 1 9 9;
	setAttr -s 7 ".kot[2:6]"  1 9 1 9 9;
	setAttr -s 7 ".kix[0:6]"  0 0.14360865950584412 0.83413600921630859 
		0.86284428834915161 0.29926633834838867 0.14003504812717438 0.10427964478731155;
	setAttr -s 7 ".kiy[0:6]"  0 0.98963457345962524 0.55155879259109497 
		-0.50546979904174805 -0.9541696310043335 -0.99014651775360107 0.99454802274703979;
	setAttr -s 7 ".kox[2:6]"  0.83413606882095337 0.86284428834915161 
		0.29926630854606628 0.14003504812717438 0.10427964478731155;
	setAttr -s 7 ".koy[2:6]"  0.55155867338180542 -0.50546979904174805 
		-0.9541696310043335 -0.99014651775360107 0.99454802274703979;
createNode animCurveTL -n "animCurveTL144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.5198069948790518 9 0.30460150635680516 
		17 0.27863609900863406 38 0.27863609900863406 48 0.26995570514581108 55 0.22492567910267114 
		62 0.5198069948790518;
	setAttr -s 7 ".kit[0:6]"  1 9 1 9 9 9 9;
	setAttr -s 7 ".kot[2:6]"  1 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 0.023489994928240776 0.5595209002494812 
		0.76569050550460815 0.10492171347141266 0.018674518913030624 0.0079125389456748962;
	setAttr -s 7 ".kiy[0:6]"  0 -0.99972409009933472 -0.82881623506546021 
		-0.64320921897888184 -0.99448049068450928 0.99982559680938721 0.99996870756149292;
	setAttr -s 7 ".kox[2:6]"  0.55952107906341553 0.76569050550460815 
		0.10492171347141266 0.018674518913030624 0.0079125389456748962;
	setAttr -s 7 ".koy[2:6]"  -0.82881611585617065 -0.64320921897888184 
		-0.99448049068450928 0.99982559680938721 0.99996870756149292;
createNode animCurveTL -n "animCurveTL145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.72394202659893114 9 -0.34877625535961559 
		17 0.14892098276952426 38 0.14892098276952426 48 -0.042623361060607552 55 
		-0.39318184183997668 62 -0.72394202659893114;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 0.0064919088035821915 0.019419122487306595 
		0.053869139403104782 0.010452549904584885 0.0068493019789457321 0.0070542795583605766;
	setAttr -s 7 ".kiy[0:6]"  0 0.99997889995574951 0.99981141090393066 
		-0.99854803085327148 -0.99994534254074097 -0.9999765157699585 -0.99997514486312866;
createNode animCurveTL -n "animCurveTL146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.36439499068905612 9 0.27745506372828727 
		17 0.80709954996037792 38 0.80709954996037792 48 0.71778239935726906 55 0.1638756927253803 
		62 0.36439499068905612;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 0.012799059972167015 0.018248196691274643 
		0.11492601782083511 0.0088094472885131836 0.013204374350607395 0.011635662987828255;
	setAttr -s 7 ".kiy[0:6]"  0 0.99991810321807861 0.99983346462249756 
		-0.9933740496635437 -0.99996119737625122 -0.9999127984046936 0.99993228912353516;
createNode animCurveTA -n "animCurveTA397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 7.7976222737965317 9 153.18034714307666 
		17 136.0326435689542 38 136.0326435689542 48 119.31944106009051 55 12.728095979983685 
		62 7.7976222737965317;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 0.24544349312782288 0.95526427030563354 
		0.96238946914672852 0.25463297963142395 0.23314861953258514 0.93822813034057617;
	setAttr -s 7 ".kiy[0:6]"  0 0.96941089630126953 -0.29575365781784058 
		-0.27167361974716187 -0.96703779697418213 -0.97244113683700562 -0.3460172712802887;
createNode animCurveTA -n "animCurveTA398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -30.409274105849079 9 -62.489533222967268 
		17 -5.0291652199186379 38 -5.0291652199186379 48 -7.583750825687428 55 -114.41716656269958 
		62 -30.409274105849079;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 0.78785020112991333 0.69399082660675049 
		0.99907046556472778 0.28454229235649109 0.76055926084518433 0.15716229379177094;
	setAttr -s 7 ".kiy[0:6]"  0 0.61586689949035645 0.71998387575149536 
		-0.043107565492391586 -0.9586634635925293 -0.64926856756210327 0.98757278919219971;
createNode animCurveTA -n "animCurveTA399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -64.859940280210893 9 -276.35648395007837 
		17 -284.28834353897287 38 -284.28834353897287 48 -265.87646264850548 55 -103.83306200785566 
		62 -64.859940280210893;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 9 9;
	setAttr -s 7 ".kot[4:6]"  1 9 9;
	setAttr -s 7 ".kix[0:6]"  0 0.14637087285518646 0.98990041017532349 
		0.95489180088043213 0.42175164818763733 0.13185279071331024 0.32447201013565063;
	setAttr -s 7 ".kiy[0:6]"  0 -0.98922979831695557 -0.14176438748836517 
		0.29695403575897217 0.9067113995552063 0.99126929044723511 0.94589531421661377;
	setAttr -s 7 ".kox[4:6]"  0.42175167798995972 0.13185279071331024 
		0.32447201013565063;
	setAttr -s 7 ".koy[4:6]"  0.9067113995552063 0.99126929044723511 
		0.94589531421661377;
createNode animCurveTL -n "animCurveTL147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.97384023505055983 9 -0.8448236677023373 
		17 -0.8448236677023373 38 -0.8448236677023373 48 -0.8448236677023373 62 -0.97384023505055983;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.043879702687263489 1 1 0.061888672411441803 
		0.036147419363260269;
	setAttr -s 6 ".kiy[0:5]"  0 0.99903684854507446 0 0 -0.99808305501937866 
		-0.99934649467468262;
createNode animCurveTL -n "animCurveTL148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.2525965505547216 9 1.5117481219250299 
		17 1.5117481219250299 38 1.5117481219250299 48 1.5117481219250299 62 1.2525965505547216;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.02186099998652935 1 1 0.030855266377329826 
		0.018004558980464935;
	setAttr -s 6 ".kiy[0:5]"  0 0.99976104497909546 0 0 -0.99952387809753418 
		-0.99983787536621094;
createNode animCurveTL -n "animCurveTL149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.097994651149805143 9 -0.097994651149805143 
		17 -0.097994651149805143 38 -0.097994651149805143 48 -0.097994651149805143 
		62 -0.097994651149805143;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -12.222987645962959 9 5.4739599453216474 
		17 5.4739599453216474 38 5.4739599453216474 48 5.4739599453216474 62 -12.222987645962959;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.87803941965103149 1 1 0.93288469314575195 
		0.83389395475387573;
	setAttr -s 6 ".kiy[0:5]"  0 0.4785882830619812 0 0 -0.36017513275146484 
		-0.55192470550537109;
createNode animCurveTA -n "animCurveTA401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -19.681044208515026 9 8.5874521608419823 
		17 8.5874521608419823 38 8.5874521608419823 48 8.5874521608419823 62 -19.681044208515026;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.75419366359710693 1 1 0.85114943981170654 
		0.68716675043106079;
	setAttr -s 6 ".kiy[0:5]"  0 0.65665203332901001 0 0 -0.52492338418960571 
		-0.72649973630905151;
createNode animCurveTA -n "animCurveTA402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 65.119655550709027 9 74.754744621954103 
		17 74.754744621954103 38 74.754744621954103 48 74.754744621954103 62 65.119655550709027;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.95867693424224854 1 1 0.97861313819885254 
		0.94078195095062256;
	setAttr -s 6 ".kiy[0:5]"  0 0.28449702262878418 0 0 -0.20570939779281616 
		-0.33901223540306091;
createNode animCurveTL -n "animCurveTL150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.75854111686822778 9 0.61083301393139333 
		17 0.61083301393139333 38 0.61083301393139333 48 0.61083301393139333 62 0.75854111686822778;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.038335751742124557 1 1 0.054081611335277557 
		0.031578082591295242;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99926489591598511 0 0 0.99853652715682983 
		0.99950128793716431;
createNode animCurveTL -n "animCurveTL151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.1932952672205326 9 1.4644416293758407 
		17 1.4644416293758407 38 1.4644416293758407 48 1.4644416293758407 62 1.1932952672205326;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.020894359797239304 1 1 0.029491527006030083 
		0.017208326607942581;
	setAttr -s 6 ".kiy[0:5]"  0 0.99978166818618774 0 0 -0.9995650053024292 
		-0.99985194206237793;
createNode animCurveTL -n "animCurveTL152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.14314299916678522 9 0.14314299916678522 
		17 0.14314299916678522 38 0.14314299916678522 48 0.14314299916678522 62 0.14314299916678522;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -5.7993291745893352 9 16.226511010665405 
		17 16.226511010665405 38 16.226511010665405 48 16.226511010665405 62 -5.7993291745893352;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.82754385471343994 1 1 0.90133684873580933 
		0.77184116840362549;
	setAttr -s 6 ".kiy[0:5]"  0 0.56140106916427612 0 0 -0.4331187903881073 
		-0.63581544160842896;
createNode animCurveTA -n "animCurveTA404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.228264010471275 9 -8.513966085499284 
		17 -8.513966085499284 38 -8.513966085499284 48 -8.513966085499284 62 -1.228264010471275;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.97573518753051758 1 1 0.98760199546813965 
		0.96482324600219727;
	setAttr -s 6 ".kiy[0:5]"  0 -0.21895410120487213 0 0 0.15697871148586273 
		0.26289951801300049;
createNode animCurveTA -n "animCurveTA405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -60.456694896838378 9 -68.213989601412422 
		17 -68.213989601412422 38 -68.213989601412422 48 -68.213989601412422 62 -60.456694896838378;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.97262424230575562 1 1 0.98597973585128784 
		0.96039772033691406;
	setAttr -s 6 ".kiy[0:5]"  0 -0.23238338530063629 0 0 0.16686515510082245 
		0.27863267064094543;
createNode animCurveTL -n "animCurveTL153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 9 0.26580543765542464 17 -0.13593135904558537 
		38 -0.13593135904558537 48 -0.13593135904558537 55 0.28045147945985588 62 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 0.041651532053947449 0.024055225774645805 
		1 0.013608010485768318 0.03431084007024765 0.0083196284249424934;
	setAttr -s 7 ".kiy[0:6]"  0 -0.99913221597671509 -0.99971061944961548 
		0 0.99990743398666382 0.99941122531890869 -0.9999653697013855;
createNode animCurveTL -n "animCurveTL154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 9 -0.55982617194351314 17 -0.87523452213708852 
		38 -0.87523452213708852 48 -0.87523452213708852 55 -0.48076369251786438 62 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 0.0064743193797767162 0.030633717775344849 
		1 0.014363753609359264 0.0053318282589316368 0.0048533310182392597;
	setAttr -s 7 ".kiy[0:6]"  0 -0.99997901916503906 -0.99953067302703857 
		0 0.9998968243598938 0.99998581409454346 0.99998819828033447;
createNode animCurveTL -n "animCurveTL155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1 9 -0.38399732298805445 17 
		-0.020136204646250745 38 -0.020136204646250745 48 -0.020136204646250745 55 
		-0.47106042546308857 62 -1;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 0.0057830200530588627 0.026557542383670807 
		1 0.012565790675580502 0.004762512631714344 0.0044112978503108025;
	setAttr -s 7 ".kiy[0:6]"  0 0.99998325109481812 0.99964725971221924 
		0 -0.99992102384567261 -0.99998867511749268 -0.99999028444290161;
createNode animCurveTL -n "animCurveTL156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.10167917362943303 9 -0.12847359769164618 
		17 0.10993378672185154 38 0.10993378672185154 48 0.10993378672185154 55 -0.26343904011548203 
		62 -0.10167917362943303;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 0.026768852025270462 0.040513552725315094 
		1 0.015175218693912029 0.022047478705644608 0.014423170126974583;
	setAttr -s 7 ".kiy[0:6]"  0 0.99964165687561035 0.99917900562286377 
		0 -0.99988484382629395 -0.99975693225860596 0.99989598989486694;
createNode animCurveTL -n "animCurveTL157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.40762644910266188 9 -0.40902788383170702 
		17 -0.40778078019695929 38 -0.40778078019695929 48 -0.40778078019695929 55 
		-0.40962276858418556 62 -0.40762644910266188;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99962931871414185 0.99178057909011841 
		1 0.95101821422576904 0.99945360422134399 0.75984847545623779;
	setAttr -s 7 ".kiy[0:6]"  0 -0.02722480334341526 0.12795032560825348 
		0 -0.30913493037223816 0.033052876591682434 0.6501002311706543;
createNode animCurveTL -n "animCurveTL158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.93129112588482243 9 -0.35519771304159764 
		17 -0.045121326394146122 38 -0.045121326394146122 48 -0.045121326394146122 
		55 -0.43262655701927361 62 -0.93129112588482243;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 0.0063944300636649132 0.031159976497292519 
		1 0.014621894806623459 0.0052660359069705009 0.0046791122294962406;
	setAttr -s 7 ".kiy[0:6]"  0 0.99997955560684204 0.99951440095901489 
		0 -0.99989306926727295 -0.99998611211776733 -0.99998903274536133;
createNode animCurveTA -n "animCurveTA406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 12.253734489678925 9 12.253734489678925 
		17 12.253734489678925 38 12.253734489678925 48 12.253734489678925 62 12.253734489678925;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -65.746751280844975 9 -65.746751280844961 
		17 -65.746751280844961 38 -65.746751280844961 48 -65.746751280844961 62 -65.746751280844975;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.061808866237340665 9 -0.061808866237337522 
		17 -0.061808866237337522 38 -0.061808866237337522 48 -0.061808866237337522 
		62 -0.061808866237340665;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -59.058178941076754 9 -59.058178941076754 
		17 -59.058178941076754 38 -59.058178941076754 48 -59.058178941076754 62 -59.058178941076754;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 16.57914742975785 9 16.579147429757843 
		17 16.579147429757843 38 16.579147429757843 48 16.579147429757843 62 16.57914742975785;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.5572674112203639 9 8.5572674112203622 
		17 8.5572674112203622 38 8.5572674112203622 48 8.5572674112203622 62 8.5572674112203639;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 15.711328223519061 9 15.711328223519057 
		17 15.711328223519057 38 15.711328223519057 48 15.711328223519057 62 15.711328223519061;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 10.423754966968488 9 10.423754966968488 
		17 10.423754966968488 38 10.423754966968488 48 10.423754966968488 62 10.423754966968488;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.7228482558439 9 27.722848255843903 
		17 27.722848255843903 38 27.722848255843903 48 27.722848255843903 62 27.7228482558439;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 21.576484776388224 9 21.576484776388227 
		17 21.576484776388227 38 21.576484776388227 48 21.576484776388227 62 21.576484776388224;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 -9.9396723943764513 17 0 
		38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 0.98427551984786987 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0.17664012312889099 0 0 0;
createNode animCurveTA -n "animCurveTA424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 6.8322763972510501 17 0 38 
		0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 0.9924771785736084 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 -0.12242964655160904 0 0 0;
createNode animCurveTA -n "animCurveTA425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.080064458283051 9 67.663946177921943 
		17 5.8314657859916599 38 5.8314657859916599 48 5.8314657859916599 62 27.080064458283051;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.83673608303070068 0.66721040010452271 
		1 0.90725594758987427 0.78289037942886353;
	setAttr -s 6 ".kiy[0:5]"  0 -0.54760634899139404 -0.74486929178237915 
		0 0.42057892680168152 0.62215971946716309;
createNode animCurveTA -n "animCurveTA426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 13.994403295754109 9 13.994403295754109 
		17 13.994403295754109 38 13.994403295754109 48 13.994403295754109 62 13.994403295754109;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 13.994403295754109 9 13.994403295754109 
		17 13.994403295754109 38 13.994403295754109 48 13.994403295754109 62 13.994403295754109;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA435";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 -2.3999321806630127 17 -3.1387379339399395 
		38 -3.1387379339399395 48 -3.1387379339399395 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99535965919494629 0.99991106986999512 
		1 0.99766367673873901 0.99318039417266846;
	setAttr -s 6 ".kiy[0:5]"  0 -0.096224308013916016 -0.013338048011064529 
		0 0.068316653370857239 0.11658798903226852;
createNode animCurveTA -n "animCurveTA436";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0.15114263497544025 17 -2.0352570978672726 
		38 -2.0352570978672726 48 -2.0352570978672726 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99804103374481201 0.99922174215316772 
		1 0.9990156888961792 0.99711549282073975;
	setAttr -s 6 ".kiy[0:5]"  0 -0.0625629723072052 -0.039445009082555771 
		0 0.044358715415000916 0.075898878276348114;
createNode animCurveTA -n "animCurveTA437";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.911632519594587 9 55.037107603673149 
		17 13.252712793879082 38 13.252712793879082 48 13.252712793879082 62 27.911632519594587;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.9114113450050354 0.79830211400985718 
		1 0.95247721672058105 0.8768659234046936;
	setAttr -s 6 ".kiy[0:5]"  0 -0.41149646043777466 -0.60225725173950195 
		0 0.30460983514785767 0.48073503375053406;
createNode animCurveTA -n "animCurveTA438";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA439";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.65073001024951671 9 0 17 0 
		38 0 48 0 62 -0.65073001024951671;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99979919195175171 1 1 0.99989926815032959 
		0.99970400333404541;
	setAttr -s 6 ".kiy[0:5]"  0 0.020038412883877754 0 0 -0.014195295982062817 
		-0.024330044165253639;
createNode animCurveTA -n "animCurveTA442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -4.2368721935960938 9 5.1586582751770038 
		17 8.0245795212328641 38 8.0245795212328641 48 8.0245795212328641 62 -4.2368721935960938;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.93551105260848999 0.99866390228271484 
		1 0.96603339910507202 0.9089808464050293;
	setAttr -s 6 ".kiy[0:5]"  0 0.35329747200012207 0.051675446331501007 
		0 -0.25841718912124634 -0.41683793067932129;
createNode animCurveTA -n "animCurveTA443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.6995264082587447 9 0 17 0 38 
		0 48 0 62 2.6995264082587447;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99656122922897339 1 1 0.99827021360397339 
		0.99494194984436035;
	setAttr -s 6 ".kiy[0:5]"  0 -0.082859307527542114 0 0 0.058792654424905777 
		0.10045139491558075;
createNode animCurveTA -n "animCurveTA444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 10.68313960501006 17 -1.1807509467863606 
		38 -1.1807509467863606 48 -1.1672493633677192 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99933940172195435 0.97781878709793091 
		1 0.99966835975646973 0.99904847145080566;
	setAttr -s 6 ".kiy[0:5]"  0 -0.03634301945567131 -0.20945277810096741 
		0.00022804556647315621 0.025751447305083275 0.043613489717245102;
createNode animCurveTA -n "animCurveTA445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 -7.2903614516740589 17 8.6808146576118439 
		38 8.6808146576118439 48 -0.38542978379405041 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.96606594324111938 0.96084916591644287 
		0.98847764730453491 0.98253488540649414 0.99989610910415649;
	setAttr -s 6 ".kiy[0:5]"  0 0.25829556584358215 0.27707207202911377 
		-0.15136700868606567 -0.18607835471630096 0.014413544908165932;
createNode animCurveTA -n "animCurveTA446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 5.269287715971414 17 -4.717907272577011 
		38 -4.717907272577011 48 -4.5318189550982551 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.98960661888122559 0.98412835597991943 
		0.99999505281448364 0.99474453926086426 0.98593884706497192;
	setAttr -s 6 ".kiy[0:5]"  0 -0.14380092918872833 -0.17745813727378845 
		0.0031430688686668873 0.10238783806562424 0.16710643470287323;
createNode animCurveTA -n "animCurveTA447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -4.0198472869727979 9 -4.9367554394300077 
		17 -4.9367554394300077 38 -4.9367554394300077 48 -4.9367554394300077 62 -4.0198472869727979;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99960148334503174 1 1 0.99979996681213379 
		0.99941253662109375;
	setAttr -s 6 ".kiy[0:5]"  0 -0.028229450806975365 0 0 0.019999831914901733 
		0.034272145479917526;
createNode animCurveTA -n "animCurveTA448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -9.1335573833666519 9 -8.6986303327609935 
		17 -8.6986303327609935 38 -8.6986303327609935 48 -8.6986303327609935 62 -9.1335573833666519;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99991029500961304 1 1 0.99995499849319458 
		0.99986773729324341;
	setAttr -s 6 ".kiy[0:5]"  0 0.013394520618021488 0 0 -0.0094882091507315636 
		-0.016264084726572037;
createNode animCurveTA -n "animCurveTA449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.2752136084709536 9 17.455917002855632 
		17 17.455917002855632 38 17.455917002855632 48 17.455917002855632 62 -2.2752136084709536;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.85456961393356323 1 1 0.91851359605789185 
		0.80463272333145142;
	setAttr -s 6 ".kiy[0:5]"  0 0.51933681964874268 0 0 -0.39538934826850891 
		-0.59377282857894897;
createNode animCurveTA -n "animCurveTA450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.8903601258661931 9 0 17 0 
		38 0 48 0 62 -1.8903601258661931;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99830931425094604 1 1 0.99915063381195068 
		0.99751013517379761;
	setAttr -s 6 ".kiy[0:5]"  0 0.058124523609876633 0 0 -0.041206233203411102 
		-0.070523276925086975;
createNode animCurveTA -n "animCurveTA451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.5597289571479034 9 -5.4491403441448396 
		17 -8.4764405587060345 38 -8.4764405587060345 48 -8.4764405587060345 62 2.5597289571479034;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.94679778814315796 0.99850958585739136 
		1 0.97221672534942627 0.92435652017593384;
	setAttr -s 6 ".kiy[0:5]"  0 -0.32182908058166504 -0.05457683652639389 
		0 0.23408244550228119 0.38152983784675598;
createNode animCurveTA -n "animCurveTA452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.0168110874036045 9 0 17 0 38 
		0 48 0 62 2.0168110874036045;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99807626008987427 1 1 0.99903339147567749 
		0.99716734886169434;
	setAttr -s 6 ".kiy[0:5]"  0 -0.061998140066862106 0 0 0.043957460671663284 
		0.075214900076389313;
createNode animCurveTA -n "animCurveTA453";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 33.429092416277157 9 76.955850815624842 
		17 26.084448446487318 38 26.084448446487318 48 26.084448446487318 62 33.429092416277157;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.97535544633865356 0.73648494482040405 
		1 0.98740434646606445 0.96428197622299194;
	setAttr -s 6 ".kiy[0:5]"  0 -0.22063955664634705 -0.67645394802093506 
		0 0.15821701288223267 0.26487773656845093;
createNode animCurveTA -n "animCurveTA456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.2533422302317216 9 8.2533422302317216 
		17 8.2533422302317216 38 8.2533422302317216 48 8.2533422302317216 62 8.2533422302317216;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA457";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 23.263402056531085 9 23.263402056531085 
		17 23.263402056531085 38 23.263402056531085 48 23.263402056531085 62 23.263402056531085;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 20.166277752815617 9 20.166277752815617 
		17 20.166277752815617 38 20.166277752815617 48 20.166277752815617 62 20.166277752815617;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 9 0 17 0 38 0 48 0 62 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 17.254116939558369 9 93.891584493868507 
		17 17.574178345566331 38 17.574178345566331 48 17.574178345566331 62 17.254116939558369;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99995142221450806 0.58735537528991699 
		1 0.99997562170028687 0.99992835521697998;
	setAttr -s 6 ".kiy[0:5]"  0 0.0098573900759220123 -0.80932915210723877 
		0 -0.0069824862293899059 -0.011969412676990032;
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
	setAttr ".o" 30;
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
connectAttr "lsa_dialogue_open_arm_hand_gestureSource.st" "clipLibrary2.st[0]"
		;
connectAttr "lsa_dialogue_open_arm_hand_gestureSource.du" "clipLibrary2.du[0]"
		;
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
// End of lsa_dialogue_open_arm_hand_gesture.ma
