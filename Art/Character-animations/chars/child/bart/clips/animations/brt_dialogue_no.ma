//Maya ASCII 4.0 scene
//Name: brt_dialogue_no.ma
//Last modified: Tue, May 27, 2003 01:38:37 PM
requires maya "4.0";
requires "p3dDeformer" "2.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_dialogue_noSource";
	setAttr ".ihi" 0;
	setAttr ".du" 40;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 1 20 1 26 1 34 1 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.0066665187478065491 1 1 0.0046666157431900501 
		0.0019999963697046041;
	setAttr -s 6 ".kiy[0:5]"  0 0.99997776746749878 0 0 -0.9999890923500061 
		-0.99999797344207764;
createNode animCurveTL -n "animCurveTL119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "Motion_Root_translateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 -0.033880036066693167 1 -0.032984276783551439 
		2 -0.032002285119929315 3 -0.030966398221524832 4 -0.029908953234036004 5 
		-0.028862287303160872 6 -0.027858737574597447 7 -0.026930641194043762 8 -0.026110335307197845 
		9 -0.025430157059757721 10 -0.024922443597421417 11 -0.024619532065886955 
		12 -0.024445469274981556 13 -0.02430139493190113 14 -0.02418528552839672 
		15 -0.024095117556219386 16 -0.024028867507120157 17 -0.023984511872850105 
		18 -0.023960027145160254 19 -0.023953389815801668 20 -0.023962576376525387 
		21 -0.023985563319082463 22 -0.024020327135223951 23 -0.024064844316700886 
		24 -0.024117091355264325 25 -0.024175044742665314 26 -0.024236680970654904 
		27 -0.02429997653098414 28 -0.024362907915404068 29 -0.024423451615665743 
		30 -0.02447958412352021 31 -0.02452928193071852 32 -0.024570521529011707 
		33 -0.024601279410150837 34 -0.024619532065886955 35 -0.025098996805964051 
		36 -0.026344507491549415 37 -0.02810071544152903 38 -0.030112271974788874 
		39 -0.032123828410214932 40 -0.033880036066693167;
createNode animCurveTL -n "animCurveTL121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "Motion_Root_translateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0;
createNode animCurveTA -n "animCurveTA352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_FK_RFoot1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_FK_LFoot1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_Rev_IK_Sim_RFoot1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_Rev_IK_Sim_LFoot1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
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
	setAttr -s 4 ".ktv[0:3]"  0 1 6 0 34 0 40 1;
createNode animCurveTU -n "animCurveTU32";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 6 0 34 0 40 1;
createNode animCurveTA -n "animCurveTA353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
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
	setAttr -s 2 ".ktv[0:1]"  0 0.21854541072049752 40 0.21854541072049752;
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
createNode animCurveTA -n "animCurveTA356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -25.948901905116401 40 -25.948901905116401;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA358";
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
	setAttr -s 2 ".ktv[0:1]"  0 0.21854505205085806 40 0.21854505205085806;
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
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 11 1 20 1 26 1 34 1 40 1;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 11 1 20 1 26 1 34 1 40 1;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL138";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.076472881617957691 11 -0.055570382435777853 
		34 -0.055570382435777853 40 -0.076472881617957691;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.61422258615493774 0.99707216024398804 
		0.095247350633144379;
	setAttr -s 4 ".kiy[0:3]"  0 0.78913283348083496 -0.076466351747512817 
		-0.99545365571975708;
	setAttr -s 4 ".kox[1:3]"  0.61422258615493774 0.99707216024398804 
		0.095247350633144379;
	setAttr -s 4 ".koy[1:3]"  0.78913283348083496 -0.076466351747512817 
		-0.99545365571975708;
createNode animCurveTL -n "animCurveTL139";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.95473100313980441 11 0.96837662302285854 
		34 0.96837662302285854 40 0.95473100313980441;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.91302663087844849 0.91125118732452393 
		0.1450178474187851;
	setAttr -s 4 ".kiy[0:3]"  0 0.40789997577667236 -0.41185098886489868 
		-0.9894290566444397;
	setAttr -s 4 ".kox[1:3]"  0.91302680969238281 0.91125106811523438 
		0.1450178474187851;
	setAttr -s 4 ".koy[1:3]"  0.40789961814880371 -0.41185131669044495 
		-0.9894290566444397;
createNode animCurveTL -n "animCurveTL140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.62843630316474508 11 -0.44195838439877011 
		20 -0.38900484525421697 26 -0.38900484525421697 34 -0.44195838439877011 40 
		-0.62843630316474508;
	setAttr -s 6 ".kit[0:5]"  1 1 9 9 1 9;
	setAttr -s 6 ".kot[1:5]"  1 9 9 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99997055530548096 0.99999827146530151 
		0.99999803304672241 0.99996572732925415 0.99986761808395386;
	setAttr -s 6 ".kiy[0:5]"  0 0.0076739476062357426 0.0018484240863472223 
		-0.0019804537296295166 -0.008278287947177887 -0.016271110624074936;
	setAttr -s 6 ".kox[1:5]"  0.99997055530548096 0.99999827146530151 
		0.99999803304672241 0.99996572732925415 0.99986761808395386;
	setAttr -s 6 ".koy[1:5]"  0.007673946674913168 0.0018484240863472223 
		-0.0019804537296295166 -0.0082782888785004616 -0.016271110624074936;
createNode animCurveTA -n "animCurveTA375";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -5.8284402688137167 11 -3.3396041249056361 
		20 -2.4359465381664624 26 -2.4359465381664624 34 -3.3396041249056361 40 -5.8284402688137167;
	setAttr -s 6 ".kit[5]"  9;
	setAttr -s 6 ".kot[0:5]"  9 1 1 1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99501937627792358 0.9999619722366333 
		0.99990928173065186 0.99868816137313843 0.97721678018569946;
	setAttr -s 6 ".kiy[0:5]"  0 0.099681511521339417 0.0087241986766457558 
		-0.013470601290464401 -0.051204506307840347 -0.21224355697631836;
	setAttr -s 6 ".kox[1:5]"  0.99501937627792358 0.9999619722366333 
		0.99990928173065186 0.99868816137313843 0.97721678018569946;
	setAttr -s 6 ".koy[1:5]"  0.099681518971920013 0.0087241968140006065 
		-0.013470601290464401 -0.051204491406679153 -0.21224355697631836;
createNode animCurveTA -n "animCurveTA376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.295636019309746 11 -0.78940747610819717 
		20 -0.70122898143653678 26 -0.70122898143653678 34 -0.78940747610819717 40 
		-1.295636019309746;
	setAttr -s 6 ".kit[0:5]"  1 1 9 9 1 9;
	setAttr -s 6 ".kot[1:5]"  1 9 9 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99997347593307495 0.99999529123306274 
		0.99999457597732544 0.99991220235824585 0.99902564287185669;
	setAttr -s 6 ".kiy[0:5]"  0 0.0072809914126992226 0.0030779954977333546 
		-0.0032978500239551067 -0.013251557014882565 -0.044133719056844711;
	setAttr -s 6 ".kox[1:5]"  0.99997347593307495 0.99999529123306274 
		0.99999457597732544 0.99991220235824585 0.99902564287185669;
	setAttr -s 6 ".koy[1:5]"  0.0072809886187314987 0.0030779954977333546 
		-0.0032978500239551067 -0.013251557014882565 -0.044133719056844711;
createNode animCurveTA -n "animCurveTA377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.43524234076486068 11 -0.25836961521967955 
		20 -0.25836961521967955 40 -0.43524234076486068;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.037665139883756638 0.054571792483329773 
		0.037665139883756638;
	setAttr -s 4 ".kiy[0:3]"  0 0.99929040670394897 -0.99850982427597046 
		-0.99929040670394897;
createNode animCurveTL -n "animCurveTL142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.82665738350180629 11 -0.91449714178056596 
		20 -0.91449714178056596 40 -0.82665738350180629;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.075678125023841858 0.10938847064971924 
		0.075678132474422455;
	setAttr -s 4 ".kiy[0:3]"  0 -0.99713230133056641 0.99399906396865845 
		0.99713230133056641;
createNode animCurveTL -n "animCurveTL143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.27773886459742925 11 0.038362195289875119 
		20 0.038362195289875119 40 0.27773886459742925;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.027839314192533493 0.040349774062633514 
		0.027839316055178642;
	setAttr -s 4 ".kiy[0:3]"  0 -0.99961239099502563 0.99918562173843384 
		0.99961239099502563;
createNode animCurveTA -n "animCurveTA403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.8121934161072299e-015 11 6.7230119492284173 
		20 6.7230119492284173 40 1.8121934161072299e-015;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.98486143350601196 0.99271327257156372 
		0.98486143350601196;
	setAttr -s 4 ".kiy[0:3]"  0 0.17334353923797607 -0.1205003634095192 
		-0.17334352433681488;
createNode animCurveTA -n "animCurveTA404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 28.652637602052774 11 19.839511008631867 
		20 19.839511008631867 40 28.652637602052774;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.97440016269683838 0.98757553100585938 
		0.97440016269683838;
	setAttr -s 4 ".kiy[0:3]"  0 -0.22482055425643921 0.15714514255523682 
		0.22482052445411682;
createNode animCurveTA -n "animCurveTA405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 64.676908227303443 11 76.90743997913691 
		20 76.90743997913691 40 64.676908227303443;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.95237034559249878 0.97647535800933838 
		0.95237034559249878;
	setAttr -s 4 ".kiy[0:3]"  0 0.30494379997253418 -0.21562904119491577 
		-0.30494379997253418;
createNode animCurveTL -n "animCurveTL144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.5198069948790518 11 0.19294723723866039 
		20 0.19294723723866039 40 0.5198069948790518;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.020391864702105522 0.029561428353190422 
		0.020391868427395821;
	setAttr -s 4 ".kiy[0:3]"  0 -0.99979203939437866 0.99956297874450684 
		0.99979203939437866;
createNode animCurveTL -n "animCurveTL145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.72394202659893114 11 -0.91060244765508003 
		20 -0.91060244765508003 40 -0.72394202659893114;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.035692721605300903 0.051718141883611679 
		0.035692725330591202;
	setAttr -s 4 ".kiy[0:3]"  0 -0.99936282634735107 0.99866169691085815 
		0.99936282634735107;
createNode animCurveTL -n "animCurveTL146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.36439499068905612 11 0.023808763748733922 
		20 0.023808763748733922 40 0.36439499068905612;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.019570343196392059 0.028371009975671768 
		0.019570345059037209;
	setAttr -s 4 ".kiy[0:3]"  0 -0.99980849027633667 0.99959748983383179 
		0.99980849027633667;
createNode animCurveTA -n "animCurveTA406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 7.7976222737965317 11 8.1910546202722809 
		20 8.1910546202722809 40 7.7976222737965317;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.9999469518661499 0.99997478723526001 
		0.9999469518661499;
	setAttr -s 4 ".kiy[0:3]"  0 0.010299487970769405 -0.00710329320281744 
		-0.010299487970769405;
createNode animCurveTA -n "animCurveTA407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -30.409274105849079 11 -16.680769289981995 
		20 -16.680769289981995 40 -30.409274105849079;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.94106382131576538 0.97062700986862183 
		0.94106382131576538;
	setAttr -s 4 ".kiy[0:3]"  0 0.33822908997535706 -0.24058926105499268 
		-0.33822908997535706;
createNode animCurveTA -n "animCurveTA408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -64.859940280210893 11 -64.609749241846473 
		20 -64.609749241846473 40 -64.859940280210893;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99997854232788086 0.99998980760574341 
		0.99997854232788086;
	setAttr -s 4 ".kiy[0:3]"  0 0.0065498454496264458 -0.0045171855017542839 
		-0.0065498449839651585;
createNode animCurveTL -n "animCurveTL147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.8448236677023373 40 -0.8448236677023373;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0303797327414146 40 1.0303797327414146;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.097994651149805143 40 -0.097994651149805143;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 5.4739599453216465 40 5.4739599453216465;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.5874521608419823 40 8.5874521608419823;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 74.754744621954103 40 74.754744621954103;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.61083301393139333 40 0.61083301393139333;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0211562878106184 40 1.0211562878106184;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.14314299916678522 40 0.14314299916678522;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 16.226511010665412 40 16.226511010665412;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -8.5139660854992858 40 -8.5139660854992858;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -68.213989601412422 40 -68.213989601412422;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1 11 -1 20 -1 26 -1 34 -1 40 
		-1;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.10167917362943303 11 -0.10167917362943303 
		20 -0.10167917362943303 26 -0.10167917362943303 34 -0.10167917362943303 40 
		-0.10167917362943303;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.40762644910266188 11 -0.40762644910266188 
		20 -0.40762644910266188 26 -0.40762644910266188 34 -0.40762644910266188 40 
		-0.40762644910266188;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.93129112588482243 11 -0.93129112588482243 
		20 -0.93129112588482243 26 -0.93129112588482243 34 -0.93129112588482243 40 
		-0.93129112588482243;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 12.253734489678925 11 12.253734489678925 
		20 12.253734489678925 26 12.253734489678925 34 12.253734489678925 40 12.253734489678925;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -65.746751280844975 11 -65.746751280844961 
		20 -65.746751280844961 26 -65.746751280844961 34 -65.746751280844961 40 -65.746751280844975;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.061808866237340665 11 -0.061808866237337522 
		20 -0.061808866237337522 26 -0.061808866237337522 34 -0.061808866237337522 
		40 -0.061808866237340665;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -59.058178941076754 11 -59.058178941076754 
		20 -59.058178941076754 26 -59.058178941076754 34 -59.058178941076754 40 -59.058178941076754;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 16.57914742975785 11 16.579147429757843 
		20 16.579147429757843 26 16.579147429757843 34 16.579147429757843 40 16.57914742975785;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.5572674112203639 11 8.5572674112203622 
		20 8.5572674112203622 26 8.5572674112203622 34 8.5572674112203622 40 8.5572674112203639;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 15.711328223519061 11 15.711328223519057 
		20 15.711328223519057 26 15.711328223519057 34 15.711328223519057 40 15.711328223519061;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 143.71460997127252 11 10.423754966968488 
		20 10.423754966968488 26 10.423754966968488 34 10.423754966968488 40 143.71460997127252;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.27548173069953918 1 1 0.19668093323707581 
		0.085655122995376587;
	setAttr -s 6 ".kiy[0:5]"  0 -0.96130633354187012 0 0 0.98046755790710449 
		0.99632483720779419;
createNode animCurveTA -n "animCurveTA430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.804554996454378 11 27.722848255843903 
		20 27.722848255843903 26 27.722848255843903 34 27.722848255843903 40 27.804554996454378;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99999773502349854 1 1 0.99999535083770752 
		0.99997460842132568;
	setAttr -s 6 ".kiy[0:5]"  0 -0.0021390726324170828 0 0 0.0030558106955140829 
		0.0071300752460956573;
createNode animCurveTA -n "animCurveTA431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 29.452980944098744 11 21.576484776388227 
		20 21.576484776388227 26 21.576484776388227 34 21.576484776388227 40 29.452980944098744;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.97939437627792358 1 1 0.95924526453018188 
		0.82409816980361938;
	setAttr -s 6 ".kiy[0:5]"  0 -0.20195718109607697 0 0 0.28257474303245544 
		0.56644701957702637;
createNode animCurveTA -n "animCurveTA432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.080064458283051 11 27.080064458283051 
		20 27.080064458283051 26 27.080064458283051 34 27.080064458283051 40 27.080064458283051;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA435";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA436";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA437";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA438";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA439";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 13.994403295754109 20 13.994403295754109 
		26 13.994403295754109 34 13.994403295754109 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.93896549940109253 1 1 0.88598448038101196 
		0.63354218006134033;
	setAttr -s 6 ".kiy[0:5]"  0 0.34401124715805054 0 0 -0.46371492743492126 
		-0.77370816469192505;
createNode animCurveTA -n "animCurveTA441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 13.994403295754109 11 13.994403295754109 
		20 13.994403295754109 26 13.994403295754109 34 13.994403295754109 40 13.994403295754109;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.911632519594587 11 27.911632519594587 
		20 27.911632519594587 26 27.911632519594587 34 27.911632519594587 40 27.911632519594587;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.65073001024951671 11 -3.9571777359042422 
		20 -0.1637517727516227 26 -3.5603477475976764 34 0 40 -0.65073001024951671;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99991875886917114 0.9999040961265564 
		0.99998122453689575 0.99413120746612549 0.99839150905609131;
	setAttr -s 6 ".kiy[0:5]"  0 0.012748025357723236 0.013850650750100613 
		0.0061241867952048779 0.10818081349134445 -0.056695550680160522;
createNode animCurveTA -n "animCurveTA451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -4.2368721935960938 11 0 20 0 
		26 0 34 0 40 -4.2368721935960938;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.9939044713973999 1 1 0.98767703771591187 
		0.93794214725494385;
	setAttr -s 6 ".kiy[0:5]"  0 0.11024492979049683 0 0 -0.15650597214698792 
		-0.34679171442985535;
createNode animCurveTA -n "animCurveTA452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.6995264082587447 11 0 20 0 
		26 0 34 0 40 2.6995264082587447;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99751192331314087 1 1 0.99494194984436035 
		0.97335553169250488;
	setAttr -s 6 ".kiy[0:5]"  0 -0.070497594773769379 0 0 0.10045138001441956 
		0.22930121421813965;
createNode animCurveTA -n "animCurveTA453";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 -11.282525782615652 20 27.520209241562053 
		26 -4.9260773376168787 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.81135064363479614 0.97625738382339478 
		0.69684082269668579 0.98344892263412476 1;
	setAttr -s 6 ".kiy[0:5]"  0 0.58455979824066162 0.21661384403705597 
		-0.71722584962844849 0.18118557333946228 0;
createNode animCurveTA -n "animCurveTA454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 -1.9697106240740936 20 -1.9697106240740936 
		26 -2.1247021423214139 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99867308139801025 0.99998533725738525 
		0.99729758501052856 0.99685764312744141 1;
	setAttr -s 6 ".kiy[0:5]"  0 -0.051498476415872574 -0.0054101455025374889 
		0.073467925190925598 0.07921396940946579 0;
createNode animCurveTA -n "animCurveTA455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 -3.5078467693936166 20 -3.5078467693936166 
		26 -3.7838703286544755 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99580961465835571 0.99995356798171997 
		0.99150371551513672 0.99013447761535645 1;
	setAttr -s 6 ".kiy[0:5]"  0 -0.091450393199920654 -0.0096345925703644753 
		0.1300785094499588 0.14012028276920319 0;
createNode animCurveTA -n "animCurveTA456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 3.1756745427787596 20 -8.0429504468419708 
		26 1.1703761373785557 34 -4.9367554394300077 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.97854238748550415 0.9975590705871582 
		0.99331963062286377 0.99904340505599976 0.91839796304702759;
	setAttr -s 6 ".kiy[0:5]"  0 -0.20604574680328369 -0.069827266037464142 
		0.11539535224437714 -0.043730095028877258 0.39565786719322205;
createNode animCurveTA -n "animCurveTA457";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 6.0809159794441401 20 -18.727320486028507 
		26 0.42599855679405735 34 -8.6986303327609935 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.89789092540740967 0.98106926679611206 
		0.93630695343017578 0.99987310171127319 0.79650795459747314;
	setAttr -s 6 ".kiy[0:5]"  0 -0.44021806120872498 -0.19365705549716949 
		0.35118266940116882 -0.015930287539958954 0.60462802648544312;
createNode animCurveTA -n "animCurveTA458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 6.6786334979782902 11 16.186357871905329 
		20 13.567556852102117 26 15.425446262282536 34 17.455917002855632 40 6.6786334979782902;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.98412293195724487 0.99964743852615356 
		0.98959070444107056 0.95043718814849854 0.72844761610031128;
	setAttr -s 6 ".kiy[0:5]"  0 0.17748814821243286 -0.026551462709903717 
		0.14391057193279266 -0.31091657280921936 -0.68510150909423828;
createNode animCurveTA -n "animCurveTA459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.8903601258661931 11 0 20 0 
		26 0 34 0 40 -1.8903601258661931;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99877762794494629 1 1 0.99751013517379761 
		0.98666483163833618;
	setAttr -s 6 ".kiy[0:5]"  0 0.049429018050432205 0 0 -0.070523269474506378 
		-0.16276516020298004;
createNode animCurveTA -n "animCurveTA460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.5597289571479034 11 0 20 0 
		26 0 34 0 40 2.5597289571479034;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99776214361190796 1 1 0.9954487681388855 
		0.97594749927520752;
	setAttr -s 6 ".kiy[0:5]"  0 -0.066863581538200378 0 0 0.095297940075397491 
		0.21800562739372253;
createNode animCurveTA -n "animCurveTA461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.0168110874036045 11 0 20 0 
		26 0 34 0 40 2.0168110874036045;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99860900640487671 1 1 0.99716734886169434 
		0.9848628044128418;
	setAttr -s 6 ".kiy[0:5]"  0 -0.052726548165082932 0 0 0.075214900076389313 
		0.17333577573299408;
createNode animCurveTA -n "animCurveTA462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 33.429092416277157 11 33.429092416277157 
		20 33.429092416277157 26 33.429092416277157 34 33.429092416277157 40 33.429092416277157;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -121.24398976748977 11 8.2533422302317216 
		20 8.2533422302317216 26 8.2533422302317216 34 8.2533422302317216 40 -121.24398976748977;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.28291431069374084 1 1 0.2022101879119873 
		0.08814510703086853;
	setAttr -s 6 ".kiy[0:5]"  0 0.959145188331604 0 0 -0.97934216260910034 
		-0.99610763788223267;
createNode animCurveTA -n "animCurveTA466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 28.612774017129329 11 23.263402056531085 
		20 23.263402056531085 26 23.263402056531085 34 23.263402056531085 40 28.612774017129329;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99033546447753906 1 1 0.98056823015213013 
		0.90612965822219849;
	setAttr -s 6 ".kiy[0:5]"  0 -0.13869275152683258 0 0 0.19617840647697449 
		0.42300006747245789;
createNode animCurveTA -n "animCurveTA467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 17.632837226638049 11 20.166277752815617 
		20 20.166277752815617 26 20.166277752815617 34 20.166277752815617 40 17.632837226638049;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99780768156051636 1 1 0.99554115533828735 
		0.9764217734336853;
	setAttr -s 6 ".kiy[0:5]"  0 0.066179916262626648 0 0 -0.094327978789806366 
		-0.21587155759334564;
createNode animCurveTA -n "animCurveTA468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 11 0 20 0 26 0 34 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 17.254116939558369 11 17.254116939558369 
		20 17.254116939558369 26 17.254116939558369 34 17.254116939558369 40 17.254116939558369;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
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
	setAttr ".o" 15;
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
connectAttr "brt_dialogue_noSource.st" "clipLibrary2.st[0]";
connectAttr "brt_dialogue_noSource.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL118.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL119.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX1.a" "clipLibrary2.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL121.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ1.a" "clipLibrary2.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA352.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "brt_Hoop_Root_IK_FK_RFoot1.a" "clipLibrary2.cel[0].cev[6].cevr"
		;
connectAttr "brt_Hoop_Root_IK_FK_LFoot1.a" "clipLibrary2.cel[0].cev[7].cevr"
		;
connectAttr "brt_Hoop_Root_IK_Rev_IK_Sim_RFoot1.a" "clipLibrary2.cel[0].cev[8].cevr"
		;
connectAttr "brt_Hoop_Root_IK_Rev_IK_Sim_LFoot1.a" "clipLibrary2.cel[0].cev[9].cevr"
		;
connectAttr "animCurveTU29.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU30.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU31.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU32.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA353.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA354.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA355.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL123.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL124.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL125.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL126.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL127.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL128.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA356.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA357.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA358.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL129.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL130.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL131.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA359.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA360.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA361.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA362.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA363.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA364.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA365.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA366.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA367.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTA368.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTA369.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTA370.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTA371.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTA372.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTA373.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL132.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL133.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL134.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTL135.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTL136.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTL137.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTL138.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL139.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL140.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA374.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA375.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA376.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA377.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA378.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA379.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA380.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA381.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA382.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA383.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA384.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA385.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA386.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA387.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA388.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA389.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA390.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA391.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA392.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA393.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA394.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA395.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA396.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTA397.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA398.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA399.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA400.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA401.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA402.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL141.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL142.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL143.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA403.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA404.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA405.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL144.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL145.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL146.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA406.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA407.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA408.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL147.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL148.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL149.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA409.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA410.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA411.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL150.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL151.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL152.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTA412.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTA413.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTA414.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTL153.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTL154.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTL155.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTL156.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTL157.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTL158.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA415.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA416.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA417.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA418.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA419.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA420.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA421.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA422.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA423.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA424.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA425.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA426.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA427.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA428.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA429.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA430.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA431.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA432.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA433.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA434.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA435.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA436.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA437.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA438.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA439.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA440.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA441.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA442.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA443.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA444.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA445.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA446.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA447.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA448.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA449.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA450.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA451.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA452.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA453.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA454.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA455.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA456.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA457.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA458.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA459.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA460.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA461.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA462.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA463.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA464.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA465.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA466.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA467.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA468.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA469.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA470.a" "clipLibrary2.cel[0].cev[167].cevr";
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
// End of brt_dialogue_no.ma
