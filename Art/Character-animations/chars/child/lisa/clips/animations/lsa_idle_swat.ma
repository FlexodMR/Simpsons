//Maya ASCII 4.0 scene
//Name: lsa_idle_swat.ma
//Last modified: Fri, Oct 11, 2002 02:59:40 PM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_idle_swatSource";
	setAttr ".ihi" 0;
	setAttr ".du" 60;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL42";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL43";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA111";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTU -n "lsa_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 1;
createNode animCurveTU -n "lsa_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 1;
createNode animCurveTA -n "lsa_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTL -n "lsa_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTL -n "lsa_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTL -n "lsa_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTL -n "animCurveTL50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.26454016861507795 10 -0.26454016861507795 
		15 -0.26454016861507795 20 -0.26454016861507795 24 -0.26454016861507795 30 
		-0.26454016861507795 35 -0.26454016861507795 42 -0.26454016861507795 47 -0.26454016861507795 
		53 -0.26454016861507795 60 -0.26454016861507795;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.13806192026723146 10 0.13806192026723146 
		15 0.13806192026723146 20 0.13806192026723146 24 0.13806192026723146 30 0.13806192026723146 
		35 0.13806192026723146 42 0.13806192026723146 47 0.13806192026723146 53 0.13806192026723146 
		60 0.13806192026723146;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.064904406754016042 10 -0.064904406754016042 
		15 -0.064904406754016042 20 -0.064904406754016042 24 -0.064904406754016042 
		30 -0.064904406754016042 35 -0.064904406754016042 42 -0.064904406754016042 
		47 -0.064904406754016042 53 -0.064904406754016042 60 -0.064904406754016042;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 10 0 15 0 20 0 24 0 30 0 35 
		0 42 0 47 0 53 0 60 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -13.717778871715202 10 -13.717778871715202 
		15 -13.717778871715202 20 -13.717778871715202 24 -13.717778871715202 30 -13.717778871715202 
		35 -13.717778871715202 42 -13.717778871715202 47 -13.717778871715202 53 -13.717778871715202 
		60 -13.717778871715202;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 10 0 15 0 20 0 24 0 30 0 35 
		0 42 0 47 0 53 0 60 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.21594587158542247 10 0.21594587158542247 
		15 0.21594587158542247 20 0.21594587158542247 24 0.21594587158542247 30 0.21594587158542247 
		35 0.21594587158542247 42 0.21594587158542247 47 0.21594587158542247 53 0.21594587158542247 
		60 0.21594587158542247;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.1380615615975922 10 0.1380615615975922 
		15 0.1380615615975922 20 0.1380615615975922 24 0.1380615615975922 30 0.1380615615975922 
		35 0.1380615615975922 42 0.1380615615975922 47 0.1380615615975922 53 0.1380615615975922 
		60 0.1380615615975922;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.00078430246903575811 10 0.00078430246903575811 
		15 0.00078430246903575811 20 0.00078430246903575811 24 0.00078430246903575811 
		30 0.00078430246903575811 35 0.00078430246903575811 42 0.00078430246903575811 
		47 0.00078430246903575811 53 0.00078430246903575811 60 0.00078430246903575811;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 10 0 15 0 20 0 24 0 30 0 35 
		0 42 0 47 0 53 0 60 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 10 0 15 0 20 0 24 0 30 0 35 
		0 42 0 47 0 53 0 60 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 10 0 15 0 20 0 24 0 30 0 35 
		0 42 0 47 0 53 0 60 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "lsa_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_Right_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_Right_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_Right_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_Left_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_Left_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_Left_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTL -n "animCurveTL56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 10 0 15 0 20 0 24 0 30 0 35 
		0 42 0 47 0 53 0 60 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 10 0 15 0 20 0 24 0 30 0 35 
		0 42 0 47 0 53 0 60 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 10 1 15 1 20 1 24 1 30 1 35 
		1 42 1 47 1 53 1 60 1;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 10 0 15 0 20 0 24 0 30 0 35 
		0 42 0 47 0 53 0 60 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 10 0 15 0 20 0 24 0 30 0 35 
		0 42 0 47 0 53 0 60 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 10 1 15 1 20 1 24 1 30 1 35 
		1 42 1 47 1 53 1 60 1;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.076472881617957691 10 -0.12280083100119754 
		15 -0.12280083100119754 20 -0.12280083100119754 24 -0.020041827330483666 
		30 -0.020041827330483666 35 -0.06995865831720964 42 -0.066822119252224088 
		47 -0.066822119252224088 53 -0.066822119252224088 60 -0.076472881617957691;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.96147551361829786 10 0.96147551361829786 
		15 0.96147551361829786 20 0.96147551361829786 24 0.89436600613893347 30 0.85828877122893588 
		35 0.85828877122893588 42 0.87320607934551298 47 0.87320607934551298 53 0.96156425685224522 
		60 0.96147551361829786;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 10 0 15 0.086075917487109896 
		20 0.086075917487109896 24 -0.035233361338883863 30 -0.13909178847965648 
		35 -0.13909178847965648 42 -0.072014545265906504 47 -0.072014545265906504 
		53 -0.072014545265906504 60 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.62843630316474508 10 -3.3760847156886977 
		15 -18.151928005139602 20 -24.149207262691949 24 -28.92469973543562 30 -37.500521570282523 
		35 -31.008737216397943 42 -32.234431990440122 47 -26.523189741106393 53 -14.536251965392625 
		60 -0.62843630316474508;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 1 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 1 3;
	setAttr -s 11 ".kix[9:10]"  0.57660651206970215 1;
	setAttr -s 11 ".kiy[9:10]"  0.81702196598052979 0;
	setAttr -s 11 ".kox[9:10]"  0.57660657167434692 1;
	setAttr -s 11 ".koy[9:10]"  0.81702196598052979 0;
createNode animCurveTA -n "animCurveTA134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -5.8284402688137158 10 -6.5061329757558886 
		15 -6.5061329757559072 20 -14.960776128666819 24 -36.894667844004076 30 -36.931445911582578 
		35 8.8517909650236231 42 18.419569656946187 47 6.2713204059394467 53 -3.5489960551362181 
		60 -5.8284402688137158;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		1 1 1 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		1 1 1 3;
	setAttr -s 11 ".kix[7:10]"  0.89126074314117432 0.68949896097183228 
		0.87550503015518188 1;
	setAttr -s 11 ".kiy[7:10]"  -0.45349118113517761 -0.72428667545318604 
		-0.48320901393890381 0;
	setAttr -s 11 ".kox[7:10]"  0.89126074314117432 0.68949878215789795 
		0.87550503015518188 1;
	setAttr -s 11 ".koy[7:10]"  -0.45349118113517761 -0.72428685426712036 
		-0.4832090437412262 0;
createNode animCurveTA -n "animCurveTA135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.2956360193097458 10 -0.18652023546334184 
		15 -0.18652023546334265 20 1.4864990536441227 24 11.082492293047038 30 11.807902868359957 
		35 -8.6954724109934407 42 -13.055965611106691 47 -5.9800649134644441 53 -2.0528696159961095 
		60 -1.2956360193097458;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 1 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 1 3;
	setAttr -s 11 ".kix[9:10]"  0.99325650930404663 1;
	setAttr -s 11 ".kiy[9:10]"  0.11593738198280334 0;
	setAttr -s 11 ".kox[9:10]"  0.99325650930404663 1;
	setAttr -s 11 ".koy[9:10]"  0.11593739688396454 0;
createNode animCurveTA -n "lsa_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_L_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_L_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_L_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTL -n "lsa_Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 -0.43524234076486068;
createNode animCurveTL -n "lsa_Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 -0.82665738350180629;
createNode animCurveTL -n "lsa_Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0.27773886459742925;
createNode animCurveTA -n "lsa_Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 -1.8121934161072303e-015;
createNode animCurveTA -n "lsa_Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 28.652637602052774;
createNode animCurveTA -n "lsa_Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 64.676908227303443;
createNode animCurveTL -n "lsa_Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0.5198069948790518;
createNode animCurveTL -n "lsa_Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 -0.72394202659893114;
createNode animCurveTL -n "lsa_Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0.36439499068905612;
createNode animCurveTA -n "lsa_Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 7.7976222737965299;
createNode animCurveTA -n "lsa_Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 -30.409274105849079;
createNode animCurveTA -n "lsa_Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 -64.859940280210878;
createNode animCurveTL -n "animCurveTL71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.97384023505055983 10 -0.96996193081607995 
		15 -1.0327619345049937 20 -1.0313838369404948 24 -0.58698095660438576 30 
		-0.38720300919316575 35 -0.804270041753955 42 -0.93539944826538024 47 -0.92167704361299074 
		53 -0.90469345789199107 60 -0.97384023505055983;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		1 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		1 9 9 3;
	setAttr -s 11 ".kix[7:10]"  0.095940545201301575 0.11856973171234131 
		0.082787454128265381 1;
	setAttr -s 11 ".kiy[7:10]"  -0.99538707733154297 0.99294573068618774 
		-0.9965672492980957 0;
	setAttr -s 11 ".kox[7:10]"  0.095940709114074707 0.11856973171234131 
		0.082787454128265381 1;
	setAttr -s 11 ".koy[7:10]"  -0.99538707733154297 0.99294573068618774 
		-0.9965672492980957 0;
createNode animCurveTL -n "animCurveTL72";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  -0.015 1.2525748803373358 0 1.2525965505547216 
		10 1.2176185908134032 15 1.264673593973181 20 1.2898335372887788 24 1.0944784295466836 
		30 0.89843522258257413 35 1.0925020577866997 42 1.2596461796822229 47 1.1740977206487544 
		53 1.1973852627225829 60 1.2525965505547216;
	setAttr -s 12 ".kit[0:11]"  3 3 9 1 1 1 9 
		1 1 9 9 3;
	setAttr -s 12 ".kot[0:11]"  3 3 9 1 1 1 9 
		1 1 9 9 3;
	setAttr -s 12 ".kix[3:11]"  0.024806488305330276 0.027902178466320038 
		0.0062844571657478809 0.88026928901672363 0.0069838310591876507 0.036408800631761551 
		0.058790087699890137 0.055118605494499207 1;
	setAttr -s 12 ".kiy[3:11]"  0.99969226121902466 -0.99961066246032715 
		-0.99998027086257935 -0.47447437047958374 0.99997562170028687 -0.99933695793151855 
		-0.99827039241790771 0.99847984313964844 0;
	setAttr -s 12 ".kox[3:11]"  0.024806378409266472 0.027902163565158844 
		0.0062846117652952671 0.88026928901672363 0.0069839730858802795 0.036409109830856323 
		0.058790087699890137 0.055118605494499207 1;
	setAttr -s 12 ".koy[3:11]"  0.99969226121902466 -0.99961066246032715 
		-0.99998027086257935 -0.47447437047958374 0.99997562170028687 -0.99933695793151855 
		-0.99827039241790771 0.99847984313964844 0;
createNode animCurveTL -n "animCurveTL73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.097994651149805143 10 -0.20822362030139285 
		15 -0.25136306204235243 20 -0.31892400325600279 24 -0.92961521698332183 30 
		-1.0414880744512431 35 -0.5110258845876231 42 -0.065407332460053619 47 -0.19039270395452612 
		53 -0.41751226257547608 60 -0.097994651149805143;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 1 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 1 9 3;
	setAttr -s 11 ".kix[8:10]"  0.0052333837375044823 0.046847041696310043 
		1;
	setAttr -s 11 ".kiy[8:10]"  -0.99998629093170166 0.9989020824432373 
		0;
	setAttr -s 11 ".kox[8:10]"  0.0052333734929561615 0.046847041696310043 
		1;
	setAttr -s 11 ".koy[8:10]"  -0.99998629093170166 0.9989020824432373 
		0;
createNode animCurveTA -n "animCurveTA168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -12.222987645962959 10 -12.222987645962959 
		15 -12.222987645962959 20 -12.222987645962959 24 -42.551037409625401 30 -42.551037409625401 
		35 -42.004449412879019 42 -58.021770349687081 47 -24.360805083130074 53 -24.360805083130074 
		60 -12.222987645962959;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -19.681044208515026 10 -19.681044208515026 
		15 -19.681044208515026 20 -19.681044208515026 24 -37.527570251676046 30 -37.527570251676046 
		35 -11.091393120594114 42 61.568362381195037 47 10.921600192049748 53 10.921600192049748 
		60 -19.681044208515026;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 65.119655550709041 10 65.119655550709041 
		15 65.119655550709041 20 65.119655550709041 24 56.262900866560358 30 56.262900866560358 
		35 49.119509442836005 42 0.61479118174425762 47 62.365346567710823 53 62.365346567710823 
		60 65.119655550709041;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL74";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.75854111686822778 10 0.70512547600350095 
		15 0.68913424522125299 20 0.79030035044746683 23 -0.32295415358078844 30 
		-0.52892910407076832 33 0.64421636604990806 39 1.0179852212545648 50 0.80058120908929531 
		60 0.75854111686822778;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 1 1 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 1 1 9 
		9 9 3;
	setAttr -s 10 ".kix[4:9]"  0.0055267782881855965 0.031243903562426567 
		0.0019393409602344036 0.036216255277395248 0.026970949023962021 1;
	setAttr -s 10 ".kiy[4:9]"  -0.9999847412109375 0.99951177835464478 
		0.99999809265136719 0.99934399127960205 -0.99963623285293579 0;
	setAttr -s 10 ".kox[4:9]"  0.0055268271826207638 0.031243834644556046 
		0.0019393409602344036 0.036216255277395248 0.026970949023962021 1;
	setAttr -s 10 ".koy[4:9]"  -0.9999847412109375 0.99951177835464478 
		0.99999809265136719 0.99934399127960205 -0.99963623285293579 0;
createNode animCurveTL -n "animCurveTL75";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.1932952672205326 10 1.2747384995259645 
		15 2.4381432700145802 20 2.4381432700145802 23 2.4046316391721105 30 2.4961257238932841 
		33 2.5440645647689584 39 2.4340549072274813 50 1.5853764395001715 60 1.1932952672205326;
	setAttr -s 10 ".kit[0:9]"  3 1 1 9 9 9 9 
		9 1 3;
	setAttr -s 10 ".kot[0:9]"  3 1 1 9 9 9 9 
		9 1 3;
	setAttr -s 10 ".kix[1:9]"  0.010934324003756046 0.043598338961601257 
		0.079323612153530121 0.057393889874219894 0.02389952726662159 0.04827553778886795 
		0.0059107518754899502 0.0042937649413943291 1;
	setAttr -s 10 ".kiy[1:9]"  0.99994021654129028 0.99904912710189819 
		-0.9968489408493042 0.99835163354873657 0.99971437454223633 -0.99883407354354858 
		-0.99998253583908081 -0.99999076128005981 0;
	setAttr -s 10 ".kox[1:9]"  0.010934342630207539 0.043598346412181854 
		0.079323612153530121 0.057393889874219894 0.02389952726662159 0.04827553778886795 
		0.0059107518754899502 0.0042937616817653179 1;
	setAttr -s 10 ".koy[1:9]"  0.99994021654129028 0.99904912710189819 
		-0.9968489408493042 0.99835163354873657 0.99971437454223633 -0.99883407354354858 
		-0.99998253583908081 -0.99999076128005981 0;
createNode animCurveTL -n "animCurveTL76";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.14314299916678522 10 0.29193219970796536 
		15 0.54775203639109404 20 0.54775203639109404 23 0.2465850759250463 30 -0.13614374279606023 
		33 0.090307117303502923 39 -0.55177989865611687 50 -0.014284422674476931 
		60 0.14314299916678522;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -5.7993291745893352 10 -5.7993291745893352 
		15 22.076057091390684 20 32.976014638245765 23 -52.783540501657775 30 -48.494790122796886 
		33 4.5519342617851901 39 35.238260386738872 50 -23.912773740416092 60 -5.7993291745893352;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1.228264010471275 10 -34.155049321483801 
		15 -148.02428766002453 20 -166.3273750097905 23 -173.99340846385036 30 -201.97897733358229 
		33 -129.42102856390423 39 -202.09610221453804 50 -44.054239561829334 60 -1.228264010471275;
	setAttr -s 10 ".kit[0:9]"  3 1 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 1 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kix[1:9]"  0.14460159838199615 0.14301235973834991 
		0.5070921778678894 0.47221219539642334 0.3938521146774292 0.99997681379318237 
		0.35548782348632813 0.19580385088920593 1;
	setAttr -s 10 ".kiy[1:9]"  -0.98948997259140015 -0.98972088098526001 
		-0.86189186573028564 -0.88148492574691772 0.91917383670806885 -0.0068138912320137024 
		0.93468093872070313 0.98064309358596802 0;
	setAttr -s 10 ".kox[1:9]"  0.14460159838199615 0.14301235973834991 
		0.5070921778678894 0.47221219539642334 0.3938521146774292 0.99997681379318237 
		0.35548782348632813 0.19580385088920593 1;
	setAttr -s 10 ".koy[1:9]"  -0.98948997259140015 -0.98972088098526001 
		-0.86189186573028564 -0.88148492574691772 0.91917383670806885 -0.0068138912320137024 
		0.93468093872070313 0.98064309358596802 0;
createNode animCurveTA -n "animCurveTA173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -60.456694896838378 10 -60.456694896838378 
		15 -123.09064090396866 20 -142.17755546377853 23 -23.811102601280581 30 8.6035313023083564 
		33 -63.939546626751991 39 -158.74796176608396 50 -46.131901595353746 60 -60.456694896838378;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTL -n "Left_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  10 0 15 0.012353587761082335 20 
		0.012353587761082335 24 1.0022702210074463 30 1.2965596657303515 35 1.5399603031330553 
		42 1.5253179555201419 47 1.468230966336054 53 0.85249763583987559 60 0;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "Left_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  10 0 15 -1.0993363925295969 20 
		-1.0993363925295969 24 -0.6691313722499983 30 -0.36691293228307742 35 -0.67967197649076005 
		42 -1.1840561369104499 47 -0.9068205543640866 53 -0.53180267981979856 60 
		0;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "Left_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  10 -1 15 -1.0196684555226827 20 
		-1.0196684555226827 24 -1.2083509389558151 30 -1.0537570456559271 35 -0.81634179035172183 
		42 -0.95155171174804909 47 -1.1616777567916263 53 -2.4951316470311791 60 
		-1;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  10 -0.10167917362943303 15 -0.10167917362943303 
		20 -0.10167917362943303 24 -0.10167917362943303 30 -0.10167917362943303 35 
		-0.10167917362943303 42 -0.10167917362943303 47 -0.10167917362943303 53 -0.10167917362943303 
		60 -0.10167917362943303;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  10 -0.40762644910266188 15 -0.40762644910266188 
		20 -0.40762644910266188 24 -0.40762644910266188 30 -0.40762644910266188 35 
		-0.40762644910266188 42 -0.40762644910266188 47 -0.40762644910266188 53 -0.40762644910266188 
		60 -0.40762644910266188;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  10 -0.93129112588482243 15 -0.93129112588482243 
		20 -0.93129112588482243 24 -0.93129112588482243 30 -0.93129112588482243 35 
		-0.93129112588482243 42 -0.93129112588482243 47 -0.93129112588482243 53 -0.93129112588482243 
		60 -0.93129112588482243;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA174";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 12.253734489678925;
createNode animCurveTA -n "animCurveTA175";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -65.746751280844961;
createNode animCurveTA -n "animCurveTA176";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.871449260799477e-015;
createNode animCurveTA -n "animCurveTA177";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.061808866237337522;
createNode animCurveTA -n "animCurveTA178";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -59.058178941076754;
createNode animCurveTA -n "animCurveTA179";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 16.579147429757843;
createNode animCurveTA -n "animCurveTA180";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 8.5572674112203622;
createNode animCurveTA -n "animCurveTA181";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 15.711328223519057;
createNode animCurveTA -n "animCurveTA182";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA183";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA184";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA185";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA186";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA187";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA188";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 10.423754966968488;
createNode animCurveTA -n "animCurveTA189";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 27.722848255843903;
createNode animCurveTA -n "animCurveTA190";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 21.576484776388227;
createNode animCurveTA -n "animCurveTA191";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA192";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA193";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 27.080064458283051;
createNode animCurveTA -n "lsa_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 13.994403295754109;
createNode animCurveTA -n "lsa_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "lsa_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 13.994403295754109;
createNode animCurveTA -n "animCurveTA203";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA204";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA205";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 27.911632519594587;
createNode animCurveTA -n "animCurveTA206";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA207";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA208";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.65073001024951671 10 -0.2847789250418436 
		15 6.5330197934696734 20 11.976906544468534 25 -15.384406574080694 30 -29.391197608578945 
		35 -12.318872710722149 45 -3.3277322754227669 52 -1.6259568120047536 60 -0.65073001024951671;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -4.2368721935960929 10 -4.2770100609966626 
		15 -5.63083137365137 20 -7.4290098001162228 25 -5.2405782376589514 30 -2.0258125333380694 
		35 1.5264563677701959 45 -2.4557231333349927 52 -3.7442091732716469 60 -4.2368721935960929;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 2.6995264082587447 10 -2.2274601263324389 
		15 -3.4586733174150113 20 -5.852289595606881 25 -4.2986027419288355 30 -5.5181159766809733 
		35 -9.5986461728528845 45 -8.4409137541224144 52 -2.3990382065423526 60 2.6995264082587447;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 1 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 1 3;
	setAttr -s 10 ".kix[8:9]"  0.82394260168075562 1;
	setAttr -s 10 ".kiy[8:9]"  0.56667321920394897 0;
	setAttr -s 10 ".kox[8:9]"  0.82394260168075562 1;
	setAttr -s 10 ".koy[8:9]"  0.56667327880859375 0;
createNode animCurveTA -n "animCurveTA212";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA213";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA214";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 -4.0198472869728343 1 -2.9721351128027669 
		2 -1.9860465276281138 3 -1.0464235980321588 4 -0.13931751315986776 5 0.74785015596287729 
		6 1.6254287363720499 7 2.4998383534610351 8 3.3719648058280258 9 4.2073235372862037 
		10 4.9949141062103299 11 5.9181318248750552 12 7.1417475980769671 13 8.7427080281280745 
		14 10.816719987744104 15 13.103857590215851 16 15.794547816083002 17 18.904491539432197 
		18 21.326513530784926 19 21.669802861519226 20 18.879026616343399 21 12.76013861401821 
		22 6.8521156542736641 23 2.7339859606816095 24 -1.7391361861469623 25 -9.254151185992205 
		26 -20.120520873079773 27 -32.963326629257679 28 -44.973305791013104 29 -52.480054395390489 
		30 -52.82102839464271 31 -44.124996311160487 32 -30.269652152055695 33 -17.664269572154254 
		34 -8.5924986426058911 35 -3.5753781127753688 36 -1.2176459551366612 37 0.31370569870826487 
		38 1.2528406736290545 39 1.7708120649149859 40 1.9994535956203801 41 2.0055815469808316 
		42 1.8531942372397097 43 1.1521358046516292 44 -0.30165860494698871 45 -2.1361061058350117 
		46 -3.9741747849637012 47 -5.386633039342489 48 -6.3762294429963706 49 -7.2268001211874662 
		50 -7.9008665515493668 51 -8.331757063855191 52 -8.5249711480744956 53 -8.5122936841445149 
		54 -8.3083123270790118 55 -7.8757026910220116 56 -7.1498234464468098 57 -6.182371353897163 
		58 -5.1576212011770854 59 -4.3441662997162371 60 -4.0198472869728343;
createNode animCurveTA -n "Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 -9.1335573833666714 1 -7.9200636228729637 
		2 -6.8374256668979863 3 -5.8092717310297131 4 -4.7632796080290678 5 -3.6322237728405651 
		6 -2.3557714929932461 7 -0.88315498680128679 8 0.7306301560983699 9 2.3663341774027535 
		10 4.0467721829024068 11 6.2710076271170303 12 9.3672055675038841 13 13.246934178012634 
		14 17.982951662244201 15 23.322866477450948 16 29.574614156450455 17 36.591998973783262 
		18 43.145721200132797 19 47.939315775998253 20 49.501217987818343 21 45.296088720475986 
		22 35.394126464911139 23 22.893976707838714 24 9.9956180679682074 25 -3.0665721717264862 
		26 -16.988146615970333 27 -30.606536874425469 28 -41.829903186004131 29 -49.218209986909919 
		30 -51.681022667241578 31 -48.511478607989908 32 -40.258875319682453 33 -28.711863850954856 
		34 -17.091729715865416 35 -9.0951907827878777 36 -4.6858768384289968 37 -1.3472734536697644 
		38 0.99438438189985479 39 2.4636935170525622 40 3.2194148552037056 41 3.3320549604206193 
		42 2.8335448882763501 43 1.4826427554524499 44 -0.741787596848964 45 -3.371592891361114 
		46 -6.0678528206191436 47 -8.4992268921986422 48 -10.67716530956829 49 -12.859155592129808 
		50 -14.946229005906375 51 -16.875646974528184 52 -18.421300379182288 53 -19.276188465593407 
		54 -19.202460464521334 55 -18.123038261150086 56 -16.218946914209862 57 -13.861745258474439 
		58 -11.546490318565347 59 -9.8063642206470938 60 -9.1335573833666714;
createNode animCurveTA -n "Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 -2.2752136084710033 1 -2.2093810284420918 
		2 -2.0086346431958297 3 -1.6949770660985068 4 -1.296315441793932 5 -0.84650116901668937 
		6 -0.3855541938030615 7 0.040088045737684812 8 0.037949737359798036 9 -0.44236320631254766 
		10 -0.9421794507222816 11 -0.38321118556833289 12 1.8865546773409769 13 5.6394378540539911 
		14 10.120326329874423 15 13.971484701349357 16 16.807045684339663 17 18.852244803669688 
		18 19.56524621042341 19 18.125737890997669 20 14.001904926449724 21 7.301731233871247 
		22 1.5849188660506668 23 -0.55585169044295923 24 2.8303097347240302 25 11.269192407225331 
		26 22.171485600762189 27 34.023176080146506 28 44.939822815757267 29 51.966386920316801 
		30 52.888953590844196 31 46.638084360286705 32 36.614280076543999 33 28.045874506300098 
		34 22.224451340780735 35 18.906497068479805 36 17.234950831359793 37 16.292708130808663 
		38 15.81298164758193 39 15.563708019731036 40 15.333822672294696 41 14.973821087836086 
		42 14.348257256605057 43 13.450609712676181 44 12.368459687508228 45 11.088494518682857 
		46 9.596842342065889 47 7.8915743113907544 48 6.0920684701964642 49 4.292295536690613 
		50 2.4816141074811715 51 0.91835041904634163 52 -0.20887935075052239 53 -0.92913626089733858 
		54 -1.2611096313486851 55 -1.3485362104539758 56 -1.4181791040284175 57 -1.6007404768688631 
		58 -1.8872482452054307 59 -2.1605185868108068 60 -2.2752136084710033;
createNode animCurveTA -n "animCurveTA218";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.8903601258661931;
createNode animCurveTA -n "animCurveTA219";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.5597289571479034;
createNode animCurveTA -n "animCurveTA220";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.016811087403604;
createNode animCurveTA -n "animCurveTA221";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA222";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA223";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 33.429092416277157;
createNode animCurveTA -n "animCurveTA224";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 8.2533422302317216;
createNode animCurveTA -n "animCurveTA225";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 23.263402056531085;
createNode animCurveTA -n "animCurveTA226";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 20.166277752815617;
createNode animCurveTA -n "animCurveTA227";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA228";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA229";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 17.254116939558369;
createNode clipLibrary -n "clipLibrary1";
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
connectAttr "lsa_idle_swatSource.st" "clipLibrary1.st[0]";
connectAttr "lsa_idle_swatSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL42.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL43.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA111.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "lsa_Hoop_Root_IK_FK_RFoot.a" "clipLibrary1.cel[0].cev[6].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_FK_LFoot.a" "clipLibrary1.cel[0].cev[7].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary1.cel[0].cev[8].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary1.cel[0].cev[9].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_FK_RArm.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_FK_LArm.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "lsa_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "lsa_Hoop_Root_rotateX.a" "clipLibrary1.cel[0].cev[14].cevr"
		;
connectAttr "lsa_Hoop_Root_rotateY.a" "clipLibrary1.cel[0].cev[15].cevr"
		;
connectAttr "lsa_Hoop_Root_rotateZ.a" "clipLibrary1.cel[0].cev[16].cevr"
		;
connectAttr "lsa_Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "lsa_Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "lsa_Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
connectAttr "animCurveTL50.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL51.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL52.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA115.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA116.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA117.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL53.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL54.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL55.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA118.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA119.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA120.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "lsa_Right_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[32].cevr"
		;
connectAttr "lsa_Right_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[33].cevr"
		;
connectAttr "lsa_Right_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[34].cevr"
		;
connectAttr "lsa_Left_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[35].cevr"
		;
connectAttr "lsa_Left_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[36].cevr"
		;
connectAttr "lsa_Left_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[37].cevr"
		;
connectAttr "lsa_Right_Toe_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[38].cevr"
		;
connectAttr "lsa_Right_Toe_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[39].cevr"
		;
connectAttr "lsa_Right_Toe_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[40].cevr"
		;
connectAttr "lsa_Left_Toe_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[41].cevr"
		;
connectAttr "lsa_Left_Toe_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[42].cevr"
		;
connectAttr "lsa_Left_Toe_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[43].cevr"
		;
connectAttr "animCurveTL56.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL57.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL58.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL59.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL60.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL61.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL62.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL63.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL64.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA133.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA134.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA135.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "lsa_R_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "lsa_R_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "lsa_R_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "lsa_R_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[59].cevr"
		;
connectAttr "lsa_R_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[60].cevr"
		;
connectAttr "lsa_R_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[61].cevr"
		;
connectAttr "lsa_R_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[62].cevr"
		;
connectAttr "lsa_R_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[63].cevr"
		;
connectAttr "lsa_R_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[64].cevr"
		;
connectAttr "lsa_R_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[65].cevr"
		;
connectAttr "lsa_L_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "lsa_L_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "lsa_L_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "lsa_L_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[69].cevr"
		;
connectAttr "lsa_L_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[70].cevr"
		;
connectAttr "lsa_L_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[71].cevr"
		;
connectAttr "lsa_L_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[72].cevr"
		;
connectAttr "lsa_L_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[73].cevr"
		;
connectAttr "lsa_L_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[74].cevr"
		;
connectAttr "lsa_L_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[75].cevr"
		;
connectAttr "lsa_R_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[76].cevr"
		;
connectAttr "lsa_R_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[77].cevr"
		;
connectAttr "lsa_R_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[78].cevr"
		;
connectAttr "lsa_L_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[79].cevr"
		;
connectAttr "lsa_L_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[80].cevr"
		;
connectAttr "lsa_L_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[81].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "animCurveTL71.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL72.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL73.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA168.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA169.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA170.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL74.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL75.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL76.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA171.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA172.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA173.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "Left_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[106].cevr"
		;
connectAttr "Left_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[107].cevr"
		;
connectAttr "Left_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[108].cevr"
		;
connectAttr "Right_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[109].cevr"
		;
connectAttr "Right_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[110].cevr"
		;
connectAttr "Right_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[111].cevr"
		;
connectAttr "animCurveTA174.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA175.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA176.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA177.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA178.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA179.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA180.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA181.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA182.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA183.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA184.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA185.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA186.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA187.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA188.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA189.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA190.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA191.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA192.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA193.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "lsa_Pelvis_rotateX.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "lsa_Pelvis_rotateY.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "lsa_Pelvis_rotateZ.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "lsa_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "lsa_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "lsa_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "lsa_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "lsa_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "lsa_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA203.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA204.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA205.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA206.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA207.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA208.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA209.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA210.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA211.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA212.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA213.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA214.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "Head_rotateX.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "Head_rotateY.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "Head_rotateZ.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA218.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA219.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA220.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA221.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA222.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA223.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA224.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA225.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA226.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA227.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA228.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA229.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of lsa_idle_swat.ma
