//Maya ASCII 4.0 scene
//Name: apu_scratch_head.ma
//Last modified: Wed, Feb 19, 2003 02:06:16 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "apu_scratch_headSource";
	setAttr ".ihi" 0;
	setAttr ".du" 60;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL122";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 60 1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL123";
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
	setAttr -s 61 ".ktv[0:60]"  0 -0.054075435230564878 1 -0.052887166863169063 
		2 -0.051532134416259368 3 -0.050081808204947523 4 -0.048607658544345275 5 
		-0.047181155749564344 6 -0.045873770135716495 7 -0.044756972017913448 8 -0.043902231711266941 
		9 -0.043381019530888722 10 -0.043264805791890515 11 -0.043353786542304741 
		12 -0.043401057333456471 13 -0.043407437896686822 14 -0.043373747963336852 
		15 -0.043300807264747637 16 -0.043189435532260262 17 -0.043040452497215796 
		18 -0.042854677890955338 19 -0.042632931444819944 20 -0.042376032890150718 
		21 -0.042084801958288703 22 -0.041760058380575005 23 -0.041402621888350692 
		24 -0.041013312212956843 25 -0.040592949085734527 26 -0.040142352238024842 
		27 -0.039662341401168859 28 -0.039153736306507647 29 -0.038617356685382298 
		30 -0.038054022269133875 31 -0.037464552789103461 32 -0.036849767976632142 
		33 -0.036210487563060993 34 -0.035547531279731086 35 -0.034861718857983504 
		36 -0.034153870029159331 37 -0.033424804524599637 38 -0.0326753420756455 
		39 -0.031906302413638003 40 -0.031118505269918217 41 -0.030511211507060043 
		42 -0.030263697196058498 43 -0.030346791029339078 44 -0.030731321699327251 
		45 -0.031388117898448503 46 -0.032288008319128328 47 -0.033401821653792192 
		48 -0.034700386594865573 49 -0.036154531834773983 50 -0.037735086065942877 
		51 -0.039412877980797734 52 -0.041158736271764057 53 -0.042943489631267311 
		54 -0.044737966751732985 55 -0.046512996325586572 56 -0.048239407045253542 
		57 -0.049888027603159364 58 -0.051429686691729523 59 -0.052835213003389531 
		60 -0.054075435230564878;
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
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 -2.31743827171826e-005 2 
		-8.2397805216649235e-005 3 -0.00016222067902027821 4 -0.00024719341564994772 
		5 -0.00032186642662753611 6 -0.0003707901234749216 7 -0.00037851491771398243 
		8 -0.0003295912208665971 9 -0.00020856944445464328 10 0 11 0.00036428199529767239 
		12 0.00093204135314922654 13 0.0016881308946713064 14 0.0026174034409805562 
		15 0.0037047118131936212 16 0.0049349088324271454 17 0.0062928473197977706 
		18 0.0077633800964221457 19 0.0093313599834169113 20 0.010981639801898714 
		21 0.012699072372984194 22 0.014468510517790004 23 0.01627480705743278 24 
		0.01810281481302917 25 0.019937386605695814 26 0.021763375256549363 27 0.02356563358670646 
		28 0.025329014417283743 29 0.027038370569397865 30 0.028678554864165456 31 
		0.030234420122703179 32 0.031690819166127676 33 0.033032604815555575 34 0.034244629892103522 
		35 0.035311747216888192 36 0.036218809611026193 37 0.036950669895634176 38 
		0.037492180891828805 39 0.037828195420726705 40 0.037943566303444531 41 0.037758591418278392 
		42 0.03722263854581314 43 0.036364165360598513 44 0.035211629537184271 45 
		0.03379348875012015 46 0.03213820067395589 47 0.030274222983241252 48 0.028230013352525968 
		49 0.026034029456359794 50 0.023714728969292467 51 0.021300569565873732 52 
		0.018820008920653341 53 0.016301504708181039 54 0.013773514603006572 55 0.011264496279679679 
		56 0.0088029074127501106 57 0.0064172056767676155 58 0.0041358487462819313 
		59 0.0019872942958428174 60 0;
createNode animCurveTA -n "animCurveTA340";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "animCurveTU35";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 1 40 1 60 0;
createNode animCurveTU -n "animCurveTU36";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 1 40 1 60 0;
createNode animCurveTU -n "animCurveTU37";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU38";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA341";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA342";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA343";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
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
createNode animCurveTL -n "animCurveTL128";
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
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.26454016861507795 60 -0.26454016861507795;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.13806192026723146 60 0.13806192026723146;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.064904406754016042 60 -0.064904406754016042;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -25.948901905116401 60 -25.948901905116401;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.21594587158542247 60 0.21594587158542247;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.1380615615975922 60 0.1380615615975922;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.00078430246903575811 60 0.00078430246903575811;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA350";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA351";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA352";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA353";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA354";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA355";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL136";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL137";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL138";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 60 1;
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
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL141";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 60 1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL142";
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
createNode animCurveTL -n "animCurveTL143";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.99296149630440855 10 0.9912550528809112 
		60 0.99296149630440855;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99479931592941284;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.10185413062572479;
	setAttr -s 3 ".kox[1:2]"  1 0.99479931592941284;
	setAttr -s 3 ".koy[1:2]"  0 0.10185413062572479;
createNode animCurveTL -n "animCurveTL144";
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
createNode animCurveTA -n "animCurveTA356";
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
createNode animCurveTA -n "animCurveTA357";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -5.8284402688137167 10 0 60 -5.8284402688137167;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.9981425404548645;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.060921914875507355;
	setAttr -s 3 ".kox[1:2]"  1 0.9981425404548645;
	setAttr -s 3 ".koy[1:2]"  0 -0.060921914875507355;
createNode animCurveTA -n "animCurveTA358";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.295636019309746 10 0 60 -1.295636019309746;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.9999079704284668;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.013566619716584682;
	setAttr -s 3 ".kox[1:2]"  1 0.9999079704284668;
	setAttr -s 3 ".koy[1:2]"  0 -0.013566619716584682;
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
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA363";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA364";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA365";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA366";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA367";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA368";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA369";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA370";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
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
createNode animCurveTL -n "animCurveTL145";
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
createNode animCurveTL -n "animCurveTL146";
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
createNode animCurveTL -n "animCurveTL147";
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
createNode animCurveTA -n "animCurveTA385";
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
createNode animCurveTA -n "animCurveTA386";
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
createNode animCurveTA -n "animCurveTA387";
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
createNode animCurveTL -n "animCurveTL148";
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
createNode animCurveTL -n "animCurveTL149";
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
createNode animCurveTL -n "animCurveTL150";
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
createNode animCurveTA -n "animCurveTA388";
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
createNode animCurveTA -n "animCurveTA389";
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
createNode animCurveTA -n "animCurveTA390";
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
createNode animCurveTL -n "animCurveTL151";
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
createNode animCurveTL -n "animCurveTL152";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.5117481219250299 10 1.5117481219250299 
		60 1.5117481219250299;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL153";
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
createNode animCurveTA -n "animCurveTA391";
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
createNode animCurveTA -n "animCurveTA392";
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
createNode animCurveTA -n "animCurveTA393";
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
createNode animCurveTL -n "animCurveTL154";
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
createNode animCurveTL -n "animCurveTL155";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.4644416293758407 10 1.4644416293758407 
		60 1.4644416293758407;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL156";
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
createNode animCurveTA -n "animCurveTA394";
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
createNode animCurveTA -n "animCurveTA395";
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
createNode animCurveTA -n "animCurveTA396";
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
createNode animCurveTL -n "animCurveTL157";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL158";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL159";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 10 -1 60 -1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL160";
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
createNode animCurveTL -n "animCurveTL161";
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
createNode animCurveTL -n "animCurveTL162";
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
createNode animCurveTA -n "animCurveTA397";
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
createNode animCurveTA -n "animCurveTA398";
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
createNode animCurveTA -n "animCurveTA399";
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
createNode animCurveTA -n "animCurveTA400";
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
createNode animCurveTA -n "animCurveTA401";
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
createNode animCurveTA -n "animCurveTA402";
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
createNode animCurveTA -n "animCurveTA403";
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
createNode animCurveTA -n "animCurveTA404";
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
createNode animCurveTA -n "animCurveTA405";
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
createNode animCurveTA -n "animCurveTA406";
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
createNode animCurveTA -n "animCurveTA407";
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
createNode animCurveTA -n "animCurveTA408";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA411";
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
createNode animCurveTA -n "animCurveTA412";
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
createNode animCurveTA -n "animCurveTA413";
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
createNode animCurveTA -n "animCurveTA414";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA415";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA416";
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
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
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
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 10 13.994403295754109 
		60 13.994403295754109;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA423";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA424";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA425";
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
createNode animCurveTA -n "animCurveTA426";
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
createNode animCurveTA -n "animCurveTA427";
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
createNode animCurveTA -n "animCurveTA428";
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
	setAttr -s 3 ".ktv[0:2]"  0 -0.6507300102495166 10 0 60 -0.6507300102495166;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.9999767541885376;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.0068142707459628582;
	setAttr -s 3 ".kox[1:2]"  1 0.9999767541885376;
	setAttr -s 3 ".koy[1:2]"  0 -0.0068142707459628582;
createNode animCurveTA -n "animCurveTA433";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -4.2368721935960929 10 0 60 -4.2368721935960929;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99901717901229858;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.044324815273284912;
	setAttr -s 3 ".kox[1:2]"  1 0.99901717901229858;
	setAttr -s 3 ".koy[1:2]"  0 -0.044324815273284912;
createNode animCurveTA -n "animCurveTA434";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.7398866450636863 10 0 60 8.7398866450636863;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99583780765533447;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.091142944991588593;
	setAttr -s 3 ".kox[1:2]"  1 0.99583780765533447;
	setAttr -s 3 ".koy[1:2]"  0 0.091142944991588593;
createNode animCurveTA -n "animCurveTA435";
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
createNode animCurveTA -n "animCurveTA436";
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
createNode animCurveTA -n "animCurveTA437";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -15.452965173287607 10 26.895392240767496 
		40 26.895392240767496 60 -15.452965173287607;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99728846549987793 0.98903733491897583 
		0.66977483034133911;
	setAttr -s 4 ".kiy[0:3]"  0 0.073591403663158417 -0.14766550064086914 
		-0.74256426095962524;
	setAttr -s 4 ".kox[1:3]"  0.99728846549987793 0.98903733491897583 
		0.66977483034133911;
	setAttr -s 4 ".koy[1:3]"  0.073591411113739014 -0.14766548573970795 
		-0.74256426095962524;
createNode animCurveTA -n "animCurveTA438";
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
createNode animCurveTA -n "animCurveTA439";
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
createNode animCurveTA -n "animCurveTA440";
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
createNode animCurveTA -n "animCurveTA441";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.8903601258661931 10 0 60 -1.8903601258661931;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99980413913726807;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.019791927188634872;
	setAttr -s 3 ".kox[1:2]"  1 0.99980413913726807;
	setAttr -s 3 ".koy[1:2]"  0 -0.019791927188634872;
createNode animCurveTA -n "animCurveTA442";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.5597289571479034 10 0 60 2.5597289571479034;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99964094161987305;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.026795793324708939;
	setAttr -s 3 ".kox[1:2]"  1 0.99964094161987305;
	setAttr -s 3 ".koy[1:2]"  0 0.026795793324708939;
createNode animCurveTA -n "animCurveTA443";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.0168110874036045 10 0 60 2.0168110874036045;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99977701902389526;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.021115286275744438;
	setAttr -s 3 ".kox[1:2]"  1 0.99977701902389526;
	setAttr -s 3 ".koy[1:2]"  0 0.021115286275744438;
createNode animCurveTA -n "animCurveTA444";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA445";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA446";
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
createNode animCurveTA -n "animCurveTA447";
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
createNode animCurveTA -n "animCurveTA448";
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
createNode animCurveTA -n "animCurveTA449";
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
createNode animCurveTA -n "animCurveTA450";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA451";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 60 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA452";
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
	setAttr ".o" 60;
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
connectAttr "apu_scratch_headSource.st" "clipLibrary2.st[0]";
connectAttr "apu_scratch_headSource.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL122.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL123.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary2.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL125.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary2.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA340.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "apu_Hoop_Root_IK_FK_RFoot.a" "clipLibrary2.cel[0].cev[6].cevr"
		;
connectAttr "apu_Hoop_Root_IK_FK_LFoot.a" "clipLibrary2.cel[0].cev[7].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary2.cel[0].cev[8].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary2.cel[0].cev[9].cevr"
		;
connectAttr "animCurveTU35.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU36.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU37.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU38.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA341.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA342.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA343.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL127.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL128.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL129.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL130.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL131.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL132.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA344.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA345.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA346.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL133.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL134.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL135.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA347.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA348.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA349.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA350.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA351.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA352.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA353.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA354.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA355.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTL136.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTL137.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTL138.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTL139.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTL140.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTL141.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL142.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL143.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL144.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTA356.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTA357.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTA358.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTA359.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTA360.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTA361.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA362.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA363.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA364.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA365.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA366.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA367.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA368.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA369.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA370.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA371.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA372.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA373.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA374.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA375.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA376.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA377.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA378.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA379.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA380.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA381.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA382.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA383.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA384.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTL145.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTL146.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTL147.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA385.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA386.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA387.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL148.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL149.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL150.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA388.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA389.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA390.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL151.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL152.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL153.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA391.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA392.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA393.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL154.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL155.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL156.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA394.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA395.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA396.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL157.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL158.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL159.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTL160.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTL161.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTL162.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTA397.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTA398.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTA399.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTA400.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTA401.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTA402.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA403.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA404.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA405.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA406.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA407.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA408.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA409.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA410.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA411.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA412.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA413.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA414.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA415.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA416.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA417.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA418.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA419.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA420.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA421.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA422.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA423.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA424.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA425.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA426.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA427.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA428.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA429.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA430.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA431.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA432.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA433.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA434.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA435.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA436.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA437.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA438.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA439.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA440.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA441.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA442.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA443.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA444.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA445.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA446.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA447.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA448.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA449.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA450.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA451.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA452.a" "clipLibrary2.cel[0].cev[161].cevr";
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
// End of apu_scratch_head.ma
