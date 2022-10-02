//Maya ASCII 4.0 scene
//Name: lsa_dialogue_cross_arms.ma
//Last modified: Thu, Feb 20, 2003 03:13:02 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_dialogue_cross_armsSource";
	setAttr ".ihi" 0;
	setAttr ".du" 71;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 1 26 1 55.55 1 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.0086663411930203438 1 1 0.0051499311812222004;
	setAttr -s 5 ".kiy[0:4]"  0 0.9999624490737915 0 0 -0.99998676776885986;
	setAttr -s 5 ".kox[3:4]"  1 0.0051499311812222004;
	setAttr -s 5 ".koy[3:4]"  0 -0.99998676776885986;
createNode animCurveTL -n "animCurveTL119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 72 ".ktv[0:71]"  0 -0.033135114381557439 1 -0.031162959071356276 
		2 -0.029115464316314187 3 -0.027010016144454644 4 -0.024864000583801088 5 
		-0.02269480366237699 6 -0.020519811408205794 7 -0.018356409849310962 8 -0.016221985013715946 
		9 -0.014133922929444209 10 -0.012109609624519197 11 -0.010166431126964373 
		12 -0.0083217734648031901 13 -0.006593022666059112 14 -0.0049975647587555804 
		15 -0.0035527857709160629 16 -0.0022760717305640049 17 -0.0013146938891775998 
		18 -0.00075685736392869783 19 -0.00053134898138126939 20 -0.00056695556809928458 
		21 -0.00079246395064671335 22 -0.0011366609555875245 23 -0.0015283334094856901 
		24 -0.0018962681389051782 25 -0.0021692519704099612 26 -0.0022760717305640049 
		27 -0.0022760717305640049 28 -0.0022760717305640049 29 -0.0022760717305640049 
		30 -0.0022760717305640049 31 -0.0022760717305640049 32 -0.0022760717305640049 
		33 -0.0022760717305640049 34 -0.0022760717305640049 35 -0.0022760717305640049 
		36 -0.0022760717305640049 37 -0.0022760717305640049 38 -0.0022760717305640049 
		39 -0.0022760717305640049 40 -0.0022760717305640049 41 -0.0022760717305640049 
		42 -0.0022760717305640049 43 -0.0022760717305640049 44 -0.0022760717305640049 
		45 -0.0022760717305640049 46 -0.0022760717305640049 47 -0.0022760717305640049 
		48 -0.0022760717305640049 49 -0.0022760717305640049 50 -0.0022760717305640049 
		51 -0.0022760717305640049 52 -0.0022760717305640049 53 -0.0022760717305640049 
		54 -0.0022760717305640049 55 -0.0022760717305640049 56 -0.0023276669288412859 
		57 -0.0027941773063084271 58 -0.0037050032082006469 59 -0.005009939495454376 
		60 -0.0066587810290060431 61 -0.0086013226697920792 62 -0.010787359278748918 
		63 -0.013166685716812987 64 -0.015689096844920716 65 -0.018304387524008533 
		66 -0.020962352615012874 67 -0.023612786978870162 68 -0.02620548547651684 
		69 -0.028690242968889314 70 -0.031016854316924039 71 -0.033135114381557439;
createNode animCurveTL -n "animCurveTL121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 72 ".ktv[0:71]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 
		0 68 0 69 0 70 0 71 0;
createNode animCurveTA -n "animCurveTA343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  71 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  71 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  71 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  71 0;
createNode animCurveTU -n "animCurveTU29";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 71 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU30";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 71 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU31";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 9.6 0 62.4 0 71 1;
createNode animCurveTU -n "animCurveTU32";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 9.6 0 62.4 0 71 1;
createNode animCurveTA -n "animCurveTA344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.26454016861507795 71 -0.26454016861507795;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.13806192026723146 71 0.13806192026723146;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.064904406754016042 71 -0.064904406754016042;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 71 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -13.717778871715204 71 -13.717778871715204;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 71 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.21594587158542247 71 0.21594587158542247;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.1380615615975922 71 0.1380615615975922;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.00078430246903575811 71 0.00078430246903575811;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 71 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 71 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 71 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 71 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 71 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 71 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 71 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 71 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 71 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 16 1 26 1 55.55 1 71 1;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 16 1 26 1 55.55 1 71 1;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.076472881617957691 16 -0.0052529700667724097 
		26 -0.0052529700667724097 55.55 -0.0052529700667724097 71 -0.076472881617957691;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.12079770863056183 1 1 0.072122909128665924;
	setAttr -s 5 ".kiy[0:4]"  0 0.99267715215682983 0 0 -0.99739575386047363;
	setAttr -s 5 ".kox[3:4]"  1 0.072122909128665924;
	setAttr -s 5 ".koy[3:4]"  0 -0.99739575386047363;
createNode animCurveTL -n "animCurveTL139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.96147551361829786 16 0.9912550528809112 
		26 0.9912550528809112 55.55 0.9912550528809112 71 0.96147551361829786;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.27943441271781921 1 1 0.17040805518627167;
	setAttr -s 5 ".kiy[0:4]"  0 0.96016478538513184 0 0 -0.98537355661392212;
	setAttr -s 5 ".kox[3:4]"  1 0.17040805518627167;
	setAttr -s 5 ".koy[3:4]"  -1.0182827281823847e-005 -0.98537355661392212;
createNode animCurveTL -n "animCurveTL140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.62843630316474508 16 0 26 
		0 55.55 0 71 -0.62843630316474508;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99991995096206665 1 1 0.99977326393127441;
	setAttr -s 5 ".kiy[0:4]"  0 0.012654697522521019 0 0 -0.021292811259627342;
	setAttr -s 5 ".kox[3:4]"  1 0.99977326393127441;
	setAttr -s 5 ".koy[3:4]"  0 -0.021292811259627342;
createNode animCurveTA -n "animCurveTA366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -5.8284402688137167 16 0 26 0 
		55.55 0 71 -5.8284402688137167;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99318188428878784 1 1 0.98104476928710938;
	setAttr -s 5 ".kiy[0:4]"  0 0.11657526344060898 0 0 -0.19378109276294708;
	setAttr -s 5 ".kox[3:4]"  1 0.98104476928710938;
	setAttr -s 5 ".koy[3:4]"  0 -0.19378109276294708;
createNode animCurveTA -n "animCurveTA367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.295636019309746 16 0 26 0 
		55.55 0 71 -1.295636019309746;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99965977668762207 1 1 0.99903738498687744;
	setAttr -s 5 ".kiy[0:4]"  0 0.026083178818225861 0 0 -0.043866697698831558;
	setAttr -s 5 ".kox[3:4]"  1 0.99903738498687744;
	setAttr -s 5 ".koy[3:4]"  0 -0.043866697698831558;
createNode animCurveTA -n "animCurveTA368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL141";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.43524234076486068 10 0.13833494034111404 
		16 0.38624201399629987 26 0.38624201399629987 55.55 0.38624201399629987 64 
		-0.12469210812600162 71 -0.43524234076486068;
	setAttr -s 7 ".kit[1:6]"  9 1 9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 9 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.0064921756274998188 0.050375841557979584 
		1 0.88493943214416504 0.0086088003590703011 0.0075133307836949825;
	setAttr -s 7 ".kiy[0:6]"  0 0.99997889995574951 0.99873030185699463 
		0 -0.46570616960525513 -0.99996292591094971 -0.99997174739837646;
	setAttr -s 7 ".kox[2:6]"  0.050375621765851974 1 0.88493949174880981 
		0.0086087975651025772 0.0075133307836949825;
	setAttr -s 7 ".koy[2:6]"  0.9987303614616394 0 -0.46570608019828796 
		-0.99996292591094971 -0.99997174739837646;
createNode animCurveTL -n "animCurveTL142";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.82665738350180629 10 -0.54399753092906356 
		16 -0.21292741776520061 26 -0.21292741776520061 55.55 -0.21292741776520061 
		64 -0.55090300195485564 71 -0.82665738350180629;
	setAttr -s 7 ".kit[1:6]"  9 1 9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 9 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.0086897043511271477 0.042034931480884552 
		1 0.84573709964752197 0.0071807634085416794 0.0084613300859928131;
	setAttr -s 7 ".kiy[0:6]"  0 0.99996227025985718 0.99911612272262573 
		0 -0.53359979391098022 -0.99997419118881226 -0.99996417760848999;
	setAttr -s 7 ".kox[2:6]"  0.042035028338432312 1 0.84573709964752197 
		0.007180764339864254 0.0084613300859928131;
	setAttr -s 7 ".koy[2:6]"  0.99911612272262573 0 -0.53359979391098022 
		-0.99997419118881226 -0.99996417760848999;
createNode animCurveTL -n "animCurveTL143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.27773886459742925 10 0.62473943387091047 
		16 0.47583842480344163 26 0.47583842480344163 55.55 0.47583842480344163 64 
		0.53448591138767676 71 0.27773886459742925;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 1 9;
	setAttr -s 7 ".kot[5:6]"  1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.026912735775113106 0.035795025527477264 
		1 0.21111191809177399 0.011961698532104492 0.0090876836329698563;
	setAttr -s 7 ".kiy[0:6]"  0 0.99963778257369995 -0.999359130859375 
		0 0.97746187448501587 -0.99992847442626953 -0.99995869398117065;
	setAttr -s 7 ".kox[5:6]"  0.01196169201284647 0.0090876836329698563;
	setAttr -s 7 ".koy[5:6]"  -0.99992847442626953 -0.99995869398117065;
createNode animCurveTA -n "animCurveTA394";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.8121934161072299e-015 10 157.94858166048363 
		16 124.48917185828026 26 124.48917185828026 55.55 124.48917185828026 64 62.500228882349951 
		71 1.8121934161072299e-015;
	setAttr -s 7 ".kit[1:6]"  9 1 9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 9 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.23838832974433899 0.68574714660644531 
		1 0.9678768515586853 0.24674071371555328 0.20917162299156189;
	setAttr -s 7 ".kiy[0:6]"  0 0.97116988897323608 -0.72783982753753662 
		0 -0.251424640417099 -0.96908152103424072 -0.97787892818450928;
	setAttr -s 7 ".kox[2:6]"  0.68574714660644531 1 0.96787679195404053 
		0.24674065411090851 0.20917162299156189;
	setAttr -s 7 ".koy[2:6]"  -0.72783982753753662 0 -0.25142484903335571 
		-0.9690815806388855 -0.97787892818450928;
createNode animCurveTA -n "animCurveTA395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 28.652637602052774 10 74.2234434721356 
		16 -14.472289965367391 26 -14.472289965367391 55.55 -14.472289965367391 64 
		52.652538344122405 71 28.652637602052774;
	setAttr -s 7 ".kit[0:6]"  1 9 1 9 9 1 9;
	setAttr -s 7 ".kot[2:6]"  1 9 9 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.57815498113632202 0.87174999713897705 
		1 0.73413336277008057 0.65803176164627075 0.48663651943206787;
	setAttr -s 7 ".kiy[0:6]"  0 -0.81592696905136108 -0.48995092511177063 
		0 0.67900532484054565 0.75299018621444702 -0.87360453605651855;
	setAttr -s 7 ".kox[2:6]"  0.87175005674362183 1 0.73413336277008057 
		0.65803182125091553 0.48663651943206787;
	setAttr -s 7 ".koy[2:6]"  -0.48995086550712585 0 0.67900532484054565 
		0.75299012660980225 -0.87360453605651855;
createNode animCurveTA -n "animCurveTA396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 64.676908227303443 10 236.09492726268138 
		16 203.65715763448463 26 203.65715763448463 55.55 203.65715763448463 64 122.87232646706532 
		71 64.676908227303443;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 1 9;
	setAttr -s 7 ".kot[5:6]"  1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.21474175155162811 0.68569880723953247 
		1 0.66829448938369751 0.23021280765533447 0.22389420866966248;
	setAttr -s 7 ".kiy[0:6]"  0 0.97667086124420166 -0.72788542509078979 
		0 -0.74389684200286865 -0.97314029932022095 -0.97461342811584473;
	setAttr -s 7 ".kox[5:6]"  0.23021277785301208 0.22389420866966248;
	setAttr -s 7 ".koy[5:6]"  -0.97314029932022095 -0.97461342811584473;
createNode animCurveTL -n "animCurveTL144";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.5198069948790518 10 0.15863291519615266 
		16 -0.38663457246249544 26 -0.38663457246249544 55.55 -0.37382666450785762 
		64 0.013437317294548992 71 0.5198069948790518;
	setAttr -s 7 ".kit[1:6]"  9 1 9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 9 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.0058837118558585644 0.027330735698342323 
		0.71724563837051392 0.12710139155387878 0.0090216174721717834 0.0046079135499894619;
	setAttr -s 7 ".kiy[0:6]"  0 -0.99998271465301514 -0.99962645769119263 
		0.69682043790817261 0.99188971519470215 0.99995929002761841 0.99998939037322998;
	setAttr -s 7 ".kox[2:6]"  0.027330609038472176 0.71724563837051392 
		0.12710161507129669 0.0090216156095266342 0.0046079135499894619;
	setAttr -s 7 ".koy[2:6]"  -0.99962645769119263 0.69682043790817261 
		0.99188971519470215 0.99995929002761841 0.99998939037322998;
createNode animCurveTL -n "animCurveTL145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.72394202659893114 10 -0.63007710812111928 
		16 -0.38731637970228755 26 -0.38731637970228755 55.55 -0.41154775065037819 
		64 -0.67012248381637363 71 -0.72394202659893114;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 9;
	setAttr -s 7 ".kot[4:6]"  1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.015841526910662651 0.021964207291603088 
		0.47790813446044922 0.15504944324493408 0.0097885904833674431 0.043314054608345032;
	setAttr -s 7 ".kiy[0:6]"  0 0.9998745322227478 0.99975878000259399 
		-0.87840980291366577 -0.98790669441223145 -0.99995207786560059 -0.99906152486801147;
	setAttr -s 7 ".kox[4:6]"  0.15504927933216095 0.0097885876893997192 
		0.043314054608345032;
	setAttr -s 7 ".koy[4:6]"  -0.98790675401687622 -0.99995207786560059 
		-0.99906152486801147;
createNode animCurveTL -n "animCurveTL146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.36439499068905612 10 0.47141161862857595 
		16 0.49763656936601286 26 0.49763656936601286 55.55 0.49203334242876468 64 
		0.55326539798118979 71 0.36439499068905612;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 9;
	setAttr -s 7 ".kot[4:6]"  1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.039995517581701279 0.19928924739360809 
		0.92032313346862793 0.20474635064601898 0.011176274158060551 0.012353202328085899;
	setAttr -s 7 ".kiy[0:6]"  0 0.99919986724853516 0.97994071245193481 
		-0.39115896821022034 -0.97881507873535156 -0.99993753433227539 -0.9999237060546875;
	setAttr -s 7 ".kox[4:6]"  0.20474623143672943 0.011176268570125103 
		0.012353202328085899;
	setAttr -s 7 ".koy[4:6]"  -0.97881507873535156 -0.99993753433227539 
		-0.9999237060546875;
createNode animCurveTA -n "animCurveTA397";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 7.7976222737965317 10 43.697031189140063 
		16 75.144440687663476 26 75.144440687663476 55.55 72.241343057966887 64 116.67874460189078 
		71 7.7976222737965317;
	setAttr -s 7 ".kit[1:6]"  9 1 9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 9 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.41319277882575989 0.85316163301467896 
		0.99926221370697021 0.99621641635894775 0.42398422956466675 0.12187014520168304;
	setAttr -s 7 ".kiy[0:6]"  0 0.91064357757568359 0.52164661884307861 
		-0.038405481725931168 -0.086907252669334412 -0.90566956996917725 -0.99254608154296875;
	setAttr -s 7 ".kox[2:6]"  0.85316169261932373 0.99926221370697021 
		0.99621641635894775 0.42398422956466675 0.12187014520168304;
	setAttr -s 7 ".koy[2:6]"  0.52164655923843384 -0.038405481725931168 
		-0.086907245218753815 -0.90566956996917725 -0.99254608154296875;
createNode animCurveTA -n "animCurveTA398";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -30.409274105849079 10 -69.85979517127987 
		16 14.973178300838395 26 14.973178300838395 55.55 14.973178300838395 64 -81.820339559398334 
		71 -30.409274105849079;
	setAttr -s 7 ".kit[1:6]"  9 1 9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 9 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.55852562189102173 0.77454465627670288 
		1 0.99990582466125488 0.68770647048950195 0.25167146325111389;
	setAttr -s 7 ".kiy[0:6]"  0 0.82948726415634155 0.63251924514770508 
		0 -0.013723662123084068 -0.72598886489868164 0.96781271696090698;
	setAttr -s 7 ".kox[2:6]"  0.77454477548599243 1 0.99990582466125488 
		0.68770641088485718 0.25167146325111389;
	setAttr -s 7 ".koy[2:6]"  0.63251912593841553 0 -0.013723684474825859 
		-0.72598892450332642 0.96781271696090698;
createNode animCurveTA -n "animCurveTA399";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -64.859940280210893 10 -124.60473178946374 
		16 -193.7934413138284 26 -193.7934413138284 55.55 -193.7934413138284 64 -189.5182200133853 
		71 -64.859940280210893;
	setAttr -s 7 ".kit[1:6]"  9 1 9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 9 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.23061549663543701 0.67452538013458252 
		1 0.98097443580627441 0.22609908878803253 0.10663379728794098;
	setAttr -s 7 ".kiy[0:6]"  0 -0.97304493188858032 -0.73825168609619141 
		0 0.19413687288761139 0.97410428524017334 0.99429833889007568;
	setAttr -s 7 ".kox[2:6]"  0.67452532052993774 1 0.98097443580627441 
		0.22609908878803253 0.10663379728794098;
	setAttr -s 7 ".koy[2:6]"  -0.73825174570083618 0 0.19413687288761139 
		0.97410428524017334 0.99429833889007568;
createNode animCurveTL -n "animCurveTL147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.97384023505055983 16 -0.8448236677023373 
		26 -0.8448236677023373 55.55 -0.8448236677023373 71 -0.97384023505055983;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.067023783922195435 1 1 0.039885584264993668;
	setAttr -s 5 ".kiy[0:4]"  0 0.99775135517120361 0 0 -0.99920427799224854;
	setAttr -s 5 ".kox[3:4]"  1 0.039885584264993668;
	setAttr -s 5 ".koy[3:4]"  0 -0.99920427799224854;
createNode animCurveTL -n "animCurveTL148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.2525965505547216 16 1.5117481219250299 
		26 1.5117481219250299 55.55 1.5117481219250299 71 1.2525965505547216;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.033423777669668198 1 1 0.01986861415207386;
	setAttr -s 5 ".kiy[0:4]"  0 0.99944126605987549 0 0 -0.99980258941650391;
	setAttr -s 5 ".kox[3:4]"  1 0.01986861415207386;
	setAttr -s 5 ".koy[3:4]"  -4.3718464439734817e-005 -0.99980258941650391;
createNode animCurveTL -n "animCurveTL149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.097994651149805143 16 -0.097994651149805143 
		26 -0.097994651149805143 55.55 -0.097994651149805143 71 -0.097994651149805143;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -12.222987645962959 16 5.4739599453216474 
		26 5.4739599453216474 55.55 5.4739599453216474 71 -12.222987645962959;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.94196677207946777 1 1 0.85758835077285767;
	setAttr -s 5 ".kiy[0:4]"  0 0.33570611476898193 0 0 -0.51433664560317993;
	setAttr -s 5 ".kox[3:4]"  1 0.85758835077285767;
	setAttr -s 5 ".koy[3:4]"  0 -0.51433664560317993;
createNode animCurveTA -n "animCurveTA401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -19.681044208515026 16 8.5874521608419823 
		26 8.5874521608419823 55.55 8.5874521608419823 71 -19.681044208515026;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.86904531717300415 1 1 0.72210252285003662;
	setAttr -s 5 ".kiy[0:4]"  0 0.49473246932029724 0 0 -0.69178605079650879;
	setAttr -s 5 ".kox[3:4]"  1 0.72210252285003662;
	setAttr -s 5 ".koy[3:4]"  0 -0.69178605079650879;
createNode animCurveTA -n "animCurveTA402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 65.119655550709027 16 74.754744621954103 
		26 74.754744621954103 55.55 74.754744621954103 71 65.119655550709027;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.98169052600860596 1 1 0.95060503482818604;
	setAttr -s 5 ".kiy[0:4]"  0 0.1904827356338501 0 0 -0.31040310859680176;
	setAttr -s 5 ".kox[3:4]"  1 0.95060503482818604;
	setAttr -s 5 ".koy[3:4]"  0 -0.31040310859680176;
createNode animCurveTL -n "animCurveTL150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.75854111686822778 16 0.61083301393139333 
		26 0.61083301393139333 55.55 0.61083301393139333 71 0.75854111686822778;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.058573540300130844 1 1 0.034844886511564255;
	setAttr -s 5 ".kiy[0:4]"  0 -0.99828308820724487 0 0 0.99939274787902832;
	setAttr -s 5 ".kox[3:4]"  1 0.034844886511564255;
	setAttr -s 5 ".koy[3:4]"  0 0.99939274787902832;
createNode animCurveTL -n "animCurveTL151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.1932952672205326 16 1.4644416293758407 
		26 1.4644416293758407 55.55 1.4644416293758407 71 1.1932952672205326;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.031946741044521332 1 1 0.018990004435181618;
	setAttr -s 5 ".kiy[0:4]"  0 0.99948954582214355 0 0 -0.99981969594955444;
	setAttr -s 5 ".kox[3:4]"  1 0.018990004435181618;
	setAttr -s 5 ".koy[3:4]"  3.0018853067304008e-005 -0.99981969594955444;
createNode animCurveTL -n "animCurveTL152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.14314299916678522 16 0.14314299916678522 
		26 0.14314299916678522 55.55 0.14314299916678522 71 0.14314299916678522;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -5.7993291745893352 16 16.226511010665405 
		26 16.226511010665405 55.55 16.226511010665405 71 -5.7993291745893352;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.91410946846008301 1 1 0.80136215686798096;
	setAttr -s 5 ".kiy[0:4]"  0 0.4054674506187439 0 0 -0.59817945957183838;
	setAttr -s 5 ".kox[3:4]"  1 0.80136215686798096;
	setAttr -s 5 ".koy[3:4]"  0 -0.59817945957183838;
createNode animCurveTA -n "animCurveTA404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.228264010471275 16 -8.513966085499284 
		26 -8.513966085499284 55.55 -8.513966085499284 71 -1.228264010471275;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.9894070029258728 1 1 0.9708438515663147;
	setAttr -s 5 ".kiy[0:4]"  0 -0.14516825973987579 0 0 0.23971268534660339;
	setAttr -s 5 ".kox[3:4]"  1 0.9708438515663147;
	setAttr -s 5 ".koy[3:4]"  0 0.23971268534660339;
createNode animCurveTA -n "animCurveTA405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -60.456694896838378 16 -68.213989601412422 
		26 -68.213989601412422 55.55 -68.213989601412422 71 -60.456694896838378;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.98801660537719727 1 1 0.96713733673095703;
	setAttr -s 5 ".kiy[0:4]"  0 -0.15434758365154266 0 0 0.25425449013710022;
	setAttr -s 5 ".kox[3:4]"  1 0.96713733673095703;
	setAttr -s 5 ".koy[3:4]"  0 0.25425449013710022;
createNode animCurveTL -n "animCurveTL153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0.12768669058257057 16 1.0036345239200479 
		26 1.0036345239200479 55.55 1.0036345239200479 71 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 9;
	setAttr -s 6 ".kot[4:5]"  1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.0053139445371925831 0.0060885297134518623 
		1 0.01502701360732317 0.0051312819123268127;
	setAttr -s 6 ".kiy[0:5]"  0 0.99998587369918823 0.99998146295547485 
		0 -0.99988710880279541 -0.99998682737350464;
	setAttr -s 6 ".kox[4:5]"  0.01502701360732317 0.0051312819123268127;
	setAttr -s 6 ".koy[4:5]"  -0.99988710880279541 -0.99998682737350464;
createNode animCurveTL -n "animCurveTL154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 -0.12086457866932186 16 
		-0.20102776612476853 26 -0.20102776612476853 55.55 -0.20102776612476853 71 
		0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 9;
	setAttr -s 6 ".kot[4:5]"  1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.026520999148488045 0.066384196281433105 
		1 0.074820786714553833 0.025609944015741348;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99964827299118042 -0.99779415130615234 
		0 0.99719697237014771 0.99967199563980103;
	setAttr -s 6 ".kox[4:5]"  0.074820786714553833 0.025609944015741348;
	setAttr -s 6 ".koy[4:5]"  0.99719697237014771 0.99967199563980103;
createNode animCurveTL -n "animCurveTL155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1 10 -0.0794040832083487 16 
		0.54598463983000778 26 0.54598463983000778 55.55 0.54598463983000778 71 -1;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 9;
	setAttr -s 6 ".kot[4:5]"  1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.0034497764427214861 0.0085277194157242775 
		1 0.0097559923306107521 0.0033311913721263409;
	setAttr -s 6 ".kiy[0:5]"  0 0.99999403953552246 0.99996364116668701 
		0 -0.99995243549346924 -0.99999445676803589;
	setAttr -s 6 ".kox[4:5]"  0.0097559913992881775 0.0033311913721263409;
	setAttr -s 6 ".koy[4:5]"  -0.99995243549346924 -0.99999445676803589;
createNode animCurveTL -n "animCurveTL156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.10167917362943303 10 -0.5648841261296399 
		16 -0.63790459913012398 26 -0.63790459913012398 55.55 -0.63790459913012398 
		71 -0.10167917362943303;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 9;
	setAttr -s 6 ".kot[4:5]"  1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.0099455742165446281 0.072844833135604858 
		1 0.028117595240473747 0.0096037257462739944;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99995052814483643 -0.99734330177307129 
		0 0.99960464239120483 0.99995386600494385;
	setAttr -s 6 ".kox[4:5]"  0.028117585927248001 0.0096037257462739944;
	setAttr -s 6 ".koy[4:5]"  0.99960464239120483 0.99995386600494385;
createNode animCurveTL -n "animCurveTL157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.40762644910266188 10 -0.75062710125755649 
		16 -0.89513917484777483 26 -0.89513917484777483 55.55 -0.89513917484777483 
		71 -0.40762644910266188;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 9;
	setAttr -s 6 ".kot[4:5]"  1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.010939230211079121 0.036880690604448318 
		1 0.030924566090106964 0.010563235729932785;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99994015693664551 -0.99931967258453369 
		0 0.99952173233032227 0.99994421005249023;
	setAttr -s 6 ".kox[4:5]"  0.030924571678042412 0.010563235729932785;
	setAttr -s 6 ".koy[4:5]"  0.99952173233032227 0.99994421005249023;
createNode animCurveTL -n "animCurveTL158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.93129112588482243 10 0.30673566905497029 
		16 0.44733829983047019 26 0.44733829983047019 55.55 0.44733829983047019 71 
		-0.93129112588482243;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 9;
	setAttr -s 6 ".kot[4:5]"  1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.0038685475010424852 0.037904702126979828 
		1 0.010940162464976311 0.0037355674430727959;
	setAttr -s 6 ".kiy[0:5]"  0 0.9999924898147583 0.99928134679794312 
		0 -0.99994015693664551 -0.99999302625656128;
	setAttr -s 6 ".kox[4:5]"  0.010940162464976311 0.0037355674430727959;
	setAttr -s 6 ".koy[4:5]"  -0.99994015693664551 -0.99999302625656128;
createNode animCurveTA -n "animCurveTA406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 12.253734489678925 16 12.253734489678925 
		26 12.253734489678925 55.55 12.253734489678925 71 12.253734489678925;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -65.746751280844975 16 -65.746751280844961 
		26 -65.746751280844961 55.55 -65.746751280844961 71 -65.746751280844975;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.061808866237340665 16 -0.061808866237337522 
		26 -0.061808866237337522 55.55 -0.061808866237337522 71 -0.061808866237340665;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -59.058178941076754 16 -59.058178941076754 
		26 -59.058178941076754 55.55 -59.058178941076754 71 -59.058178941076754;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.57914742975785 16 16.579147429757843 
		26 16.579147429757843 55.55 16.579147429757843 71 16.57914742975785;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.5572674112203639 16 8.5572674112203622 
		26 8.5572674112203622 55.55 8.5572674112203622 71 8.5572674112203639;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 15.711328223519061 16 15.711328223519057 
		26 15.711328223519057 55.55 15.711328223519057 71 15.711328223519061;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.423754966968488 16 10.423754966968488 
		26 10.423754966968488 55.55 10.423754966968488 71 10.423754966968488;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.7228482558439 16 27.722848255843903 
		26 27.722848255843903 55.55 27.722848255843903 71 27.7228482558439;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 21.576484776388224 16 21.576484776388227 
		26 21.576484776388227 55.55 21.576484776388227 71 21.576484776388224;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.080064458283051 16 27.080064458283051 
		26 27.080064458283051 55.55 27.080064458283051 64 58.195459674547187 71 27.080064458283051;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 9;
	setAttr -s 6 ".kot[4:5]"  1 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 0.9190901517868042 1 0.39476335048675537;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0.39404737949371338 0 -0.91878283023834229;
	setAttr -s 6 ".kox[4:5]"  1 0.39476335048675537;
	setAttr -s 6 ".koy[4:5]"  0 -0.91878283023834229;
createNode animCurveTA -n "animCurveTA426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.994403295754109 16 13.994403295754109 
		26 13.994403295754109 55.55 13.994403295754109 71 13.994403295754109;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.994403295754109 16 13.994403295754109 
		26 13.994403295754109 55.55 13.994403295754109 71 13.994403295754109;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA435";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA436";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA437";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.911632519594587 16 27.911632519594587 
		26 27.911632519594587 55.55 27.911632519594587 64 -2.8693703597981992 71 
		27.911632519594587;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 9;
	setAttr -s 6 ".kot[4:5]"  1 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 0.92061936855316162 1 0.39837437868118286;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 -0.39046120643615723 0 0.91722291707992554;
	setAttr -s 6 ".kox[4:5]"  1 0.39837437868118286;
	setAttr -s 6 ".koy[4:5]"  0 0.91722291707992554;
createNode animCurveTA -n "animCurveTA438";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA439";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.65073001024951671 16 1.3331712872039234 
		26 1.3331712872039234 55.55 1.3331712872039234 71 -0.65073001024951671;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99920284748077393 1 0.99988102912902832 
		0.99774742126464844;
	setAttr -s 5 ".kiy[0:4]"  0 0.039920780807733536 0 -0.015424614772200584 
		-0.06708274781703949;
	setAttr -s 5 ".kox[3:4]"  0.99988102912902832 0.99774742126464844;
	setAttr -s 5 ".koy[3:4]"  -0.015424610115587711 -0.06708274781703949;
createNode animCurveTA -n "animCurveTA442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.2368721935960938 16 -0.4545107424658496 
		26 -0.4545107424658496 55.55 -0.4545107424658496 71 -4.2368721935960938;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99711155891418457 1 0.99998617172241211 
		0.99188435077667236;
	setAttr -s 5 ".kiy[0:4]"  0 0.075950749218463898 0 0.0052591818384826183 
		-0.12714353203773499;
	setAttr -s 5 ".kox[3:4]"  0.99998617172241211 0.99188435077667236;
	setAttr -s 5 ".koy[3:4]"  0.0052591827698051929 -0.12714353203773499;
createNode animCurveTA -n "animCurveTA443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.6995264082587447 16 -0.65252033916606644 
		26 -0.65252033916606644 55.55 -0.65252033916606644 71 2.6995264082587447;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99772930145263672 1 0.99997150897979736 
		0.99360924959182739;
	setAttr -s 5 ".kiy[0:4]"  0 -0.067351624369621277 0 0.0075502567924559116 
		0.11287451535463333;
	setAttr -s 5 ".kox[3:4]"  0.99997150897979736 0.99360924959182739;
	setAttr -s 5 ".koy[3:4]"  0.0075502553954720497 0.11287451535463333;
createNode animCurveTA -n "animCurveTA444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 16.058439575700767 26 16.058439575700767 
		55.55 16.058439575700767 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.95148295164108276 1 0.98317074775695801 
		0.87835144996643066;
	setAttr -s 5 ".kiy[0:4]"  0 0.30770152807235718 0 -0.18268898129463196 
		-0.47801536321640015;
	setAttr -s 5 ".kox[3:4]"  0.98317074775695801 0.87835144996643066;
	setAttr -s 5 ".koy[3:4]"  -0.18268898129463196 -0.47801536321640015;
createNode animCurveTA -n "animCurveTA447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.0198472869727979 16 -4.9367554394300077 
		26 -4.9367554394300077 55.55 -4.9367554394300077 71 -4.0198472869727979;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99982959032058716 1 1 0.99951756000518799;
	setAttr -s 5 ".kiy[0:4]"  0 -0.018461929634213448 0 0 0.031058927997946739;
	setAttr -s 5 ".kox[3:4]"  1 0.99951756000518799;
	setAttr -s 5 ".koy[3:4]"  0 0.031058927997946739;
createNode animCurveTA -n "animCurveTA448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -9.1335573833666519 16 -8.6986303327609935 
		26 -8.6986303327609935 55.55 -8.6986303327609935 71 -9.1335573833666519;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99996167421340942 1 1 0.99989140033721924;
	setAttr -s 5 ".kiy[0:4]"  0 0.0087584052234888077 0 0 -0.014738030731678009;
	setAttr -s 5 ".kox[3:4]"  1 0.99989140033721924;
	setAttr -s 5 ".koy[3:4]"  0 -0.014738030731678009;
createNode animCurveTA -n "animCurveTA449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.2752136084709536 16 17.455917002855632 
		26 17.455917002855632 55.55 17.455917002855632 71 -2.2752136084709536;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.92932230234146118 1 1 0.83127474784851074;
	setAttr -s 5 ".kiy[0:4]"  0 0.36926963925361633 0 0 -0.5558617115020752;
	setAttr -s 5 ".kox[3:4]"  1 0.83127474784851074;
	setAttr -s 5 ".koy[3:4]"  0 -0.5558617115020752;
createNode animCurveTA -n "animCurveTA450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.8903601258661931 16 0 26 0 
		55.55 0 71 -1.8903601258661931;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99927616119384766 1 1 0.99795418977737427;
	setAttr -s 5 ".kiy[0:4]"  0 0.038041301071643829 0 0 -0.063933037221431732;
	setAttr -s 5 ".kox[3:4]"  1 0.99795418977737427;
	setAttr -s 5 ".koy[3:4]"  0 -0.063933037221431732;
createNode animCurveTA -n "animCurveTA451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.5597289571479034 16 0 26 0 
		55.55 0 71 2.5597289571479034;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99867397546768188 1 1 0.9962584376335144;
	setAttr -s 5 ".kiy[0:4]"  0 -0.051480527967214584 0 0 0.086424358189105988;
	setAttr -s 5 ".kox[3:4]"  1 0.9962584376335144;
	setAttr -s 5 ".koy[3:4]"  0 0.086424358189105988;
createNode animCurveTA -n "animCurveTA452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.0168110874036045 16 -10.954467428984071 
		26 -10.954467428984071 55.55 -10.954467428984071 71 2.0168110874036045;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.96753418445587158 1 0.99206191301345825 
		0.91545158624649048;
	setAttr -s 5 ".kiy[0:4]"  0 -0.25274023413658142 0 0.12575060129165649 
		0.40242817997932434;
	setAttr -s 5 ".kox[3:4]"  0.99206191301345825 0.91545158624649048;
	setAttr -s 5 ".koy[3:4]"  0.12575057148933411 0.40242817997932434;
createNode animCurveTA -n "animCurveTA453";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 33.429092416277157 16 33.429092416277157 
		26 33.429092416277157 55.55 33.429092416277157 71 33.429092416277157;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.2533422302317216 16 8.2533422302317216 
		26 8.2533422302317216 55.55 8.2533422302317216 71 8.2533422302317216;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA457";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 23.263402056531085 16 23.263402056531085 
		26 23.263402056531085 55.55 23.263402056531085 71 23.263402056531085;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 20.166277752815617 16 20.166277752815617 
		26 20.166277752815617 55.55 20.166277752815617 71 20.166277752815617;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 26 0 55.55 0 71 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 17.254116939558369 16 17.254116939558369 
		26 17.254116939558369 55.55 17.254116939558369 64 76.267143673053425 71 17.254116939558369;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 9;
	setAttr -s 6 ".kot[4:5]"  1 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 0.77587264776229858 1 0.22094465792179108;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0.63088959455490112 0 -0.97528636455535889;
	setAttr -s 6 ".kox[4:5]"  1 0.22094465792179108;
	setAttr -s 6 ".koy[4:5]"  0 -0.97528636455535889;
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
	setAttr ".o" 71;
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
connectAttr "lsa_dialogue_cross_armsSource.st" "clipLibrary2.st[0]";
connectAttr "lsa_dialogue_cross_armsSource.du" "clipLibrary2.du[0]";
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
// End of lsa_dialogue_cross_arms.ma
