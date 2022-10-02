//Maya ASCII 4.0 scene
//Name: hom_scratch_head.ma
//Last modified: Tue, Feb 18, 2003 12:17:01 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_scratch_headSource";
	setAttr ".ihi" 0;
	setAttr ".du" 60;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL206";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 1 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.016664352267980576;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.99986112117767334;
	setAttr -s 3 ".kox[1:2]"  1 0.016664352267980576;
	setAttr -s 3 ".koy[1:2]"  0 -0.99986112117767334;
createNode animCurveTL -n "animCurveTL207";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 -0.051425456377630012 1 -0.050349249641320676 
		2 -0.049198187116541219 3 -0.048004349851042537 4 -0.04679981889257552 5 
		-0.045616675288891059 6 -0.044487000087740071 7 -0.043442874336873424 8 -0.042516379084042037 
		9 -0.041739595376996785 10 -0.041144604263488579 11 -0.04064590260784838 
		12 -0.040137824814253847 13 -0.039622215365794487 14 -0.039100918745559814 
		15 -0.038575779436639354 16 -0.038048641922122615 17 -0.037521350685099118 
		18 -0.036995750208658369 19 -0.036473684975889896 20 -0.035956999469883219 
		21 -0.035447538173727838 22 -0.034947145570513274 23 -0.034457666143329048 
		24 -0.033980944375264679 25 -0.033518824749409676 26 -0.033073151748853551 
		27 -0.032645769856685831 28 -0.032238523555996032 29 -0.031853257329873652 
		30 -0.031491815661408233 31 -0.031156043033689271 32 -0.030847783929806291 
		33 -0.030568882832848809 34 -0.030321184225906336 35 -0.030106532592068396 
		36 -0.029926772414424496 37 -0.029783748176064162 38 -0.029679304360076895 
		39 -0.02961528544955223 40 -0.02959353592757967 41 -0.029699966543490927 
		42 -0.030008342430217098 43 -0.030502289646246773 44 -0.031165434250068531 
		45 -0.03198140230017097 46 -0.032933819855042679 47 -0.034006312973172255 
		48 -0.035182507713048261 49 -0.036446030133159321 50 -0.037780506291994004 
		51 -0.039169562248040898 52 -0.040596824059788608 53 -0.042045917785725709 
		54 -0.04350046948434079 55 -0.044944105214122454 56 -0.046360451033559277 
		57 -0.047733133001139849 58 -0.049045777175352773 59 -0.05028200961468663 
		60 -0.051425456377630012;
createNode animCurveTL -n "animCurveTL209";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 -2.2038716885395791e-005 
		2 -7.8359882259185034e-005 3 -0.00015427101819777053 4 -0.00023507964677755514 
		5 -0.00030609329007494156 6 -0.00035261947016633271 7 -0.00035996570912813128 
		8 -0.00031343952903674024 9 -0.00019834845196856202 10 0 11 0.00034643027427263081 
		12 0.00088636645723067832 13 0.0016054036608951754 14 0.0024891369972871551 
		15 0.0035231615784276512 16 0.0046930725163376961 17 0.005984464923038323 
		18 0.0073829339105505641 19 0.008874074590895455 20 0.010443482076094029 
		21 0.012076751478167313 22 0.013759477909136349 23 0.015477256481022163 24 
		0.017215682305845796 25 0.018960350495628268 26 0.020696856162390621 27 0.022410794418153891 
		28 0.024087760374939107 29 0.025713349144767302 30 0.027273155839659505 31 
		0.028752775571636757 32 0.030137803452720088 33 0.03141383459493053 34 0.032566464110289114 
		35 0.033581287110816885 36 0.034443898708534863 37 0.035139894015464072 38 
		0.035654868143625569 39 0.035974416205040376 40 0.036084133311729535 41 0.035908223162370405 
		42 0.035398534780836148 43 0.034582131266941422 44 0.03348607572050092 45 
		0.032137431241329291 46 0.030563260929241231 47 0.028790627884051404 48 0.026846595205574492 
		49 0.024758225993625167 50 0.022552583348018095 51 0.020256730368567951 52 
		0.017897730155089425 53 0.015502645807397179 54 0.01309854042530589 55 0.01071247710863023 
		56 0.0083715189571848744 57 0.0061027290707845018 58 0.0039331705492437787 
		59 0.0018899064923773926 60 0;
createNode animCurveTA -n "animCurveTA566";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  10 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  10 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  10 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  10 0;
createNode animCurveTU -n "animCurveTU45";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 1 40 1 60 0;
createNode animCurveTU -n "animCurveTU46";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 1 40 1 60 0;
createNode animCurveTU -n "animCurveTU47";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU48";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA567";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA568";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA569";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL211";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL212";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL213";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.26454016861507795 60 -0.26454016861507795;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.13806192026723146 60 0.13806192026723146;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.064904406754016042 60 -0.064904406754016042;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA570";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA571";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -25.948901905116401 60 -25.948901905116401;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA572";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.21594587158542247 60 0.21594587158542247;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.1380615615975922 60 0.1380615615975922;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.00078430246903575811 60 0.00078430246903575811;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA573";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA574";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA575";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA576";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA577";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA578";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA579";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA580";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL220";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL221";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL222";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 60 1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL223";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL224";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL225";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 60 1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL226";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.076472881617957691 10 -0.061184609193437878 
		40 -0.044007445515467002 60 -0.076472881617957691;
	setAttr -s 4 ".kit[2:3]"  3 9;
	setAttr -s 4 ".kot[0:3]"  9 1 3 9;
	setAttr -s 4 ".kix[0:3]"  0 0.41362291574478149 1 0.20114943385124207;
	setAttr -s 4 ".kiy[0:3]"  0 0.91044831275939941 0 -0.97956055402755737;
	setAttr -s 4 ".kox[1:3]"  0.41362455487251282 1 0.20114943385124207;
	setAttr -s 4 ".koy[1:3]"  0.91044753789901733 0 -0.97956055402755737;
createNode animCurveTL -n "animCurveTL227";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.93105416142265018 10 0.92974752843758979 
		60 0.93105416142265018;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.9969409704208374;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.078158162534236908;
	setAttr -s 3 ".kox[1:2]"  1 0.9969409704208374;
	setAttr -s 3 ".koy[1:2]"  0 0.078158162534236908;
createNode animCurveTL -n "animCurveTL228";
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
createNode animCurveTA -n "animCurveTA582";
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
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -5.8284402688137167 10 0 60 -5.8284402688137167;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.9981425404548645;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.060921914875507355;
	setAttr -s 3 ".kox[1:2]"  1 0.9981425404548645;
	setAttr -s 3 ".koy[1:2]"  0 -0.060921914875507355;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.295636019309746 10 0 60 -1.295636019309746;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.9999079704284668;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.013566619716584682;
	setAttr -s 3 ".kox[1:2]"  1 0.9999079704284668;
	setAttr -s 3 ".koy[1:2]"  0 -0.013566619716584682;
createNode animCurveTA -n "animCurveTA585";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA586";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA587";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA588";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA589";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA590";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA591";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA592";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA593";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA594";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA595";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA596";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA597";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA598";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA599";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA600";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA601";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA602";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA603";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA604";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA605";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA606";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA607";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA608";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA609";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA610";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL229";
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
createNode animCurveTL -n "animCurveTL230";
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
createNode animCurveTL -n "animCurveTL231";
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
createNode animCurveTA -n "animCurveTA611";
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
createNode animCurveTA -n "animCurveTA612";
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
createNode animCurveTA -n "animCurveTA613";
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
createNode animCurveTL -n "animCurveTL232";
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
createNode animCurveTL -n "animCurveTL233";
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
createNode animCurveTL -n "animCurveTL234";
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
createNode animCurveTA -n "animCurveTA614";
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
createNode animCurveTA -n "animCurveTA615";
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
createNode animCurveTA -n "animCurveTA616";
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
createNode animCurveTL -n "animCurveTL235";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.98071836797454492 10 -0.8448236677023373 
		60 -0.98071836797454492;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.12173187732696533;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.99256300926208496;
	setAttr -s 3 ".kox[1:2]"  1 0.12173187732696533;
	setAttr -s 3 ".koy[1:2]"  0 -0.99256300926208496;
createNode animCurveTL -n "animCurveTL236";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6432964864655397 10 1.5117481219250299 
		60 1.6432964864655397;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.12569133937358856;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99206942319869995;
	setAttr -s 3 ".kox[1:2]"  1 0.12569133937358856;
	setAttr -s 3 ".koy[1:2]"  0 0.99206942319869995;
createNode animCurveTL -n "animCurveTL237";
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
createNode animCurveTA -n "animCurveTA617";
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
createNode animCurveTA -n "animCurveTA618";
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
createNode animCurveTA -n "animCurveTA619";
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
createNode animCurveTL -n "animCurveTL238";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.76309120872911718 10 0.61083301393139333 
		60 0.76309120872911718;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.10881321132183075;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99406218528747559;
	setAttr -s 3 ".kox[1:2]"  1 0.10881321132183075;
	setAttr -s 3 ".koy[1:2]"  0 0.99406218528747559;
createNode animCurveTL -n "animCurveTL239";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6150490657878991 10 1.4644416293758407 
		60 1.6150490657878991;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.10999152809381485;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99393254518508911;
	setAttr -s 3 ".kox[1:2]"  1 0.10999152809381485;
	setAttr -s 3 ".koy[1:2]"  0 0.99393254518508911;
createNode animCurveTL -n "animCurveTL240";
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
createNode animCurveTA -n "animCurveTA620";
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
createNode animCurveTA -n "animCurveTA621";
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
createNode animCurveTA -n "animCurveTA622";
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
createNode animCurveTL -n "animCurveTL241";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL242";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL243";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 10 -1 60 -1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL244";
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
createNode animCurveTL -n "animCurveTL245";
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
createNode animCurveTL -n "animCurveTL246";
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
createNode animCurveTA -n "animCurveTA623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 12.253734489678925 10 -75.424000059471751 
		13 -76.114782131355753 16 -75.393856514478742 19 -75.964064406390662 22 -75.454143604464775 
		25 -75.964064406390662 28 -75.424000059471751 40 -76.131960725885378 60 12.253734489678925;
	setAttr -s 10 ".kit[0:9]"  1 1 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[1:9]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 10 ".kix[0:9]"  0 0.99081951379776001 0.99999654293060303 
		0.99991351366043091 0.99998617172241211 1 0.99999654293060303 0.99998283386230469 
		0.57183533906936646 0.39670419692993164;
	setAttr -s 10 ".kiy[0:9]"  0 -0.13519145548343658 0.0026305115316063166 
		0.01315146591514349 -0.0052609685808420181 0 0.0026305115316063166 -0.0058605866506695747 
		0.82036840915679932 0.91794651746749878;
	setAttr -s 10 ".kox[1:9]"  0.99081951379776001 0.99999654293060303 
		0.99991351366043091 0.99998617172241211 1 0.99999654293060303 0.99998283386230469 
		0.57183533906936646 0.39670419692993164;
	setAttr -s 10 ".koy[1:9]"  -0.13519129157066345 0.0026305115316063166 
		0.01315146591514349 -0.0052609685808420181 0 0.0026305115316063166 -0.0058605866506695747 
		0.82036840915679932 0.91794651746749878;
createNode animCurveTA -n "animCurveTA624";
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
createNode animCurveTA -n "animCurveTA625";
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
createNode animCurveTA -n "animCurveTA626";
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
createNode animCurveTA -n "animCurveTA627";
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
createNode animCurveTA -n "animCurveTA628";
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
createNode animCurveTA -n "animCurveTA629";
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
createNode animCurveTA -n "animCurveTA630";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 15.711328223519061 10 15.711328223519057 
		60 15.711328223519061;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA631";
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
createNode animCurveTA -n "animCurveTA632";
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
createNode animCurveTA -n "animCurveTA633";
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
createNode animCurveTA -n "animCurveTA634";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA635";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA636";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA637";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 10.423754966968488 10 10.423754966968488 
		60 10.423754966968488;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA638";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.7228482558439 10 27.722848255843903 
		60 27.7228482558439;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA639";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 21.576484776388224 10 21.576484776388227 
		60 21.576484776388224;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA640";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA641";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA642";
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
createNode animCurveTA -n "animCurveTA643";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA644";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA645";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA646";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA647";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA648";
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
createNode animCurveTA -n "animCurveTA649";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA650";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA651";
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
createNode animCurveTA -n "animCurveTA652";
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
createNode animCurveTA -n "animCurveTA653";
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
createNode animCurveTA -n "animCurveTA654";
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
createNode animCurveTA -n "animCurveTA655";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA656";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA657";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA658";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.6507300102495166 10 0 60 -0.6507300102495166;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.9999767541885376;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.0068142707459628582;
	setAttr -s 3 ".kox[1:2]"  1 0.9999767541885376;
	setAttr -s 3 ".koy[1:2]"  0 -0.0068142707459628582;
createNode animCurveTA -n "animCurveTA659";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -4.2368721935960929 10 0 60 -4.2368721935960929;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99901717901229858;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.044324815273284912;
	setAttr -s 3 ".kox[1:2]"  1 0.99901717901229858;
	setAttr -s 3 ".koy[1:2]"  0 -0.044324815273284912;
createNode animCurveTA -n "animCurveTA660";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.7398866450636863 10 0 60 8.7398866450636863;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99583780765533447;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.091142944991588593;
	setAttr -s 3 ".kox[1:2]"  1 0.99583780765533447;
	setAttr -s 3 ".koy[1:2]"  0 0.091142944991588593;
createNode animCurveTA -n "animCurveTA661";
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
createNode animCurveTA -n "animCurveTA662";
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
createNode animCurveTA -n "animCurveTA663";
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
createNode animCurveTA -n "animCurveTA664";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.8714700432790465 10 -4.9367554394300077 
		60 4.8714700432790465;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99476653337478638;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.10217396169900894;
	setAttr -s 3 ".kox[1:2]"  1 0.99476653337478638;
	setAttr -s 3 ".koy[1:2]"  0 0.10217396169900894;
createNode animCurveTA -n "animCurveTA665";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 11.783606204137087 10 -8.6986303327609935 
		60 11.783606204137087;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.97776156663894653;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.20971956849098206;
	setAttr -s 3 ".kox[1:2]"  1 0.97776156663894653;
	setAttr -s 3 ".koy[1:2]"  0 0.20971956849098206;
createNode animCurveTA -n "animCurveTA666";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.5423825101935931 10 17.455917002855632 
		60 7.5423825101935931;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99465447664260864;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.10325935482978821;
	setAttr -s 3 ".kox[1:2]"  1 0.99465447664260864;
	setAttr -s 3 ".koy[1:2]"  0 -0.10325935482978821;
createNode animCurveTA -n "animCurveTA667";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.8903601258661931 10 0 60 -1.8903601258661931;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99980413913726807;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.019791927188634872;
	setAttr -s 3 ".kox[1:2]"  1 0.99980413913726807;
	setAttr -s 3 ".koy[1:2]"  0 -0.019791927188634872;
createNode animCurveTA -n "animCurveTA668";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.5597289571479034 10 0 60 2.5597289571479034;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99964094161987305;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.026795793324708939;
	setAttr -s 3 ".kox[1:2]"  1 0.99964094161987305;
	setAttr -s 3 ".koy[1:2]"  0 0.026795793324708939;
createNode animCurveTA -n "animCurveTA669";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.0168110874036045 10 0 60 2.0168110874036045;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99977701902389526;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.021115286275744438;
	setAttr -s 3 ".kox[1:2]"  1 0.99977701902389526;
	setAttr -s 3 ".koy[1:2]"  0 0.021115286275744438;
createNode animCurveTA -n "animCurveTA670";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA671";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA672";
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
createNode animCurveTA -n "animCurveTA673";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.2533422302317216 10 8.2533422302317216 
		60 8.2533422302317216;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA674";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 23.263402056531085 10 23.263402056531085 
		60 23.263402056531085;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA675";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20.166277752815617 10 20.166277752815617 
		60 20.166277752815617;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA676";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA677";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA678";
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
	setAttr ".o" 10;
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
select -ne :characterPartition;
select -ne :hyperGraphLayout;
	setAttr ".cch" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".img" -type "string" "";
	setAttr ".ims" 1;
select -ne :ikSystem;
connectAttr "hom_scratch_headSource.st" "clipLibrary2.st[0]";
connectAttr "hom_scratch_headSource.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL206.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL207.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary2.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL209.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary2.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA566.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "hom_Hoop_Root_IK_FK_RFoot.a" "clipLibrary2.cel[0].cev[6].cevr"
		;
connectAttr "hom_Hoop_Root_IK_FK_LFoot.a" "clipLibrary2.cel[0].cev[7].cevr"
		;
connectAttr "hom_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary2.cel[0].cev[8].cevr"
		;
connectAttr "hom_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary2.cel[0].cev[9].cevr"
		;
connectAttr "animCurveTU45.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU46.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU47.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU48.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA567.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA568.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA569.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL211.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL212.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL213.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL214.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL215.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL216.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA570.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA571.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA572.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL217.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL218.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL219.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA573.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA574.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA575.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA576.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA577.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA578.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA579.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA580.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA581.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTL220.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTL221.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTL222.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTL223.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTL224.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTL225.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL226.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL227.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL228.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTA582.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTA583.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTA584.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTA585.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTA586.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTA587.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA588.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA589.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA590.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA591.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA592.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA593.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA594.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA595.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA596.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA597.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA598.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA599.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA600.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA601.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA602.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA603.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA604.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA605.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA606.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA607.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA608.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA609.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA610.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTL229.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTL230.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTL231.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA611.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA612.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA613.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL232.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL233.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL234.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA614.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA615.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA616.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL235.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL236.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL237.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA617.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA618.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA619.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL238.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL239.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL240.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA620.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA621.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA622.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL241.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL242.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL243.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTL244.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTL245.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTL246.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTA623.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTA624.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTA625.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTA626.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTA627.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTA628.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA629.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA630.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA631.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA632.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA633.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA634.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA635.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA636.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA637.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA638.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA639.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA640.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA641.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA642.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA643.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA644.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA645.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA646.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA647.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA648.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA649.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA650.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA651.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA652.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA653.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA654.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA655.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA656.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA657.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA658.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA659.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA660.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA661.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA662.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA663.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA664.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA665.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA666.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA667.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA668.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA669.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA670.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA671.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA672.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA673.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA674.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA675.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA676.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA677.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA678.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[2].olnk";
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
// End of hom_scratch_head.ma
