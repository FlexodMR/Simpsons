//Maya ASCII 4.0 scene
//Name: cpd_dodge.ma
//Last modified: Wed, Aug 14, 2002 01:49:56 PM
requires maya "4.0";
requires "p3dDeformer" "18.0.0.0";
requires "p3dmayaexp" "18.2";
requires "p3dSimpleShader" "18.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "cpd_dodgeSource";
	setAttr ".ihi" 0;
	setAttr ".du" 30;
	setAttr ".ci" no;
createNode animCurveTL -n "cpd_Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "cpd_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.033880036066693167 1 -0.058388930524382675 
		2 -0.088874544723234847 3 -0.10740671939865262 4 -0.096055295286038775 5 
		-0.06292103433778666 6 0.11247818335907156 7 0.51929441833634205 8 1.0205698169816015 
		9 1.4879439014828635 10 1.8824068695340057 11 2.2429685384519389 12 2.5582978598592208 
		13 2.7512415129652021 14 2.9326244834347688 15 3.282775627116874 16 3.621556926420352 
		17 3.8262734520520998 18 3.9859272523518285 19 4.1479998949144505 20 4.3534265739940841 
		21 4.5171031973541824 22 4.5838055742872212 23 4.6109779487971405 24 4.6260456108100421 
		25 4.6381503235254389 26 4.6381503235254389 27 4.6260456108100421 28 4.597801280048551 
		29 4.5574522367900432 30 4.5171031973541824;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 -0.0051157049810377003 2 
		-0.010432025509731369 3 -0.015347114210681056 4 -0.019259123708486824 5 -0.021027595723536765 
		6 -0.019259123708486824 7 -0.012532842620719646 8 -0.0040892133161449049 
		9 6.1045134444990943e-005 10 0.0050699781929795119 11 0.005785540397529188 
		12 -0.019259123708486824 13 -0.12069001043276054 14 -0.22534092418952978 
		15 -0.24325096827777773 16 -0.22534092418952972 17 -0.20033284847177787 18 
		-0.16638267182597991 19 -0.12474229038979749 20 -0.057341213463592763 21 
		0 22 0.0110882036415986 23 0.0055441018207993053 24 0 25 0 26 0 27 0 28 0 
		29 0 30 0;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 6 0 9 90 19 90 21 0 30 0;
createNode animCurveTU -n "cpd_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTU -n "cpd_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTU -n "cpd_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTU -n "cpd_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTU -n "cpd_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTU -n "cpd_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTU -n "cpd_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 1;
createNode animCurveTU -n "cpd_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 1;
createNode animCurveTA -n "cpd_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "cpd_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "cpd_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTL -n "cpd_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTL -n "cpd_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTL -n "cpd_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTL -n "cpd_Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.26454016861507795 4 -0.26454016861507795 
		6 -0.26454016861507795 9 2.5732444391352156 12 5.0517376809181904 14 6.1222161478004216 
		16 8.8465762952045104 19 9.7751392643454356 21 10.007786619042733 24 9.7146906711120184 
		27 9.7146906711120184 30 10.007786619042733;
	setAttr -s 12 ".kit[0:11]"  3 3 3 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 12 ".kot[0:11]"  3 3 3 9 9 9 9 
		9 9 9 9 9;
createNode animCurveTL -n "cpd_Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.21854541072049752 4 0.21854541072049752 
		6 0.21854541072049752 9 1.5472357625315665 12 1.4275670288460116 14 1.4350233051702572 
		16 0.99634148276451773 19 0.30511186828228276 21 0.21854541072049752 24 0.60444748344961319 
		27 0.60444748344961319 30 0.21854541072049752;
	setAttr -s 12 ".kit[0:11]"  3 3 3 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 12 ".kot[0:11]"  3 3 3 9 9 9 9 
		9 9 9 9 9;
createNode animCurveTL -n "cpd_Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.064904406754016042 4 -0.064904406754016042 
		6 -0.064904406754016042 9 0.061133466452042096 12 -0.064904406754016042 14 
		-0.39569449027311399 16 -0.39569449027311399 19 -0.064904406754016042 21 
		-0.064904406754016042 24 -0.064904406754016042 27 -0.064904406754016042 30 
		-0.064904406754016042;
	setAttr -s 12 ".kit[0:11]"  3 3 3 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 12 ".kot[0:11]"  3 3 3 9 9 9 9 
		9 9 9 9 9;
createNode animCurveTA -n "cpd_Right_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 49.826608765403421 
		12 64.298252952417187 14 41.509731601419325 16 41.509731601419311 19 7.1112506754197762 
		21 7.1112506754197646 24 52.926820161287537 27 52.926820161287537 30 7.1112506754197646;
	setAttr -s 12 ".kit[0:11]"  3 3 3 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 12 ".kot[0:11]"  3 3 3 9 9 9 9 
		9 9 9 9 9;
createNode animCurveTA -n "cpd_Right_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -25.948901905116401 4 -25.948901905116401 
		6 -25.948901905116401 9 -5.2287676571325612 12 -4.5550526364590196 14 -2.5033640303345148 
		16 -2.5033640303345259 19 -6.6894648651247888 21 -6.6894648651247675 24 1.0167024257867925 
		27 1.0167024257867925 30 -6.6894648651247675;
	setAttr -s 12 ".kit[0:11]"  3 3 3 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 12 ".kot[0:11]"  3 3 3 9 9 9 9 
		9 9 9 9 9;
createNode animCurveTA -n "cpd_Right_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 -73.774597578384771 
		12 -95.177949308291289 14 -125.04950358911476 16 -223.7577032661124 19 -321.18650716910685 
		21 -356.7484537842588 24 -409.32751684050623 27 -409.32751684050623 30 -356.7484537842588;
	setAttr -s 12 ".kit[0:11]"  3 3 3 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 12 ".kot[0:11]"  3 3 3 9 9 9 9 
		9 9 9 9 9;
createNode animCurveTL -n "cpd_Left_Foot_Hoop_translateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.21594587158542247 4 0.21594587158542247 
		6 0.21594587158542247 9 2.756601446092203 12 5.0646040068431653 14 5.9392506195391492 
		16 8.004846553258961 19 10.112095116354798 21 10.488272659243234 24 10.488272659243234 
		27 10.488272659243234 30 10.488272659243234;
	setAttr -s 12 ".kit[3:11]"  9 9 9 9 9 3 3 
		3 3;
	setAttr -s 12 ".kot[3:11]"  9 9 9 9 9 3 3 
		3 3;
createNode animCurveTL -n "cpd_Left_Foot_Hoop_translateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.21854505205085809 4 0.21854505205085809 
		6 0.21854505205085809 9 1.0791215764935944 12 0.88883019965931531 14 1.0639814279373583 
		16 1.530029955767283 19 0.83434192780029781 21 0.21854505205085809 24 0.21854505205085809 
		27 0.21854505205085809 30 0.21854505205085809;
	setAttr -s 12 ".kit[3:11]"  9 9 9 9 9 3 3 
		3 3;
	setAttr -s 12 ".kot[3:11]"  9 9 9 9 9 3 3 
		3 3;
createNode animCurveTL -n "cpd_Left_Foot_Hoop_translateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.00078430246903575811 4 0.00078430246903575811 
		6 0.00078430246903575811 9 0.0035125737064193958 12 0.00078430246903575811 
		14 -0.36758079467201582 16 -0.36758079467201582 19 -0.2031320834977105 21 
		0.00078430246903575811 24 0.00078430246903575811 27 0.00078430246903575811 
		30 0.00078430246903575811;
	setAttr -s 12 ".kit[3:11]"  9 9 9 9 9 3 3 
		3 3;
	setAttr -s 12 ".kot[3:11]"  9 9 9 9 9 3 3 
		3 3;
createNode animCurveTA -n "cpd_Left_Foot_Hoop_rotateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 54.975785064541824 
		12 47.899415579797406 14 14.285021281248783 16 39.080356141866034 19 6.9265759763674355 
		21 0.012540228543409132 24 0.012540228543409132 27 0.012540228543409132 30 
		0.012540228543409132;
	setAttr -s 12 ".kit[3:11]"  9 9 9 9 9 3 3 
		3 3;
	setAttr -s 12 ".kot[3:11]"  9 9 9 9 9 3 3 
		3 3;
createNode animCurveTA -n "cpd_Left_Foot_Hoop_rotateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 6.259898383085174 
		12 0 14 0 16 1.4468513500461722 19 -5.0566052513259141 21 4.5143762842649169 
		24 4.5143762842649169 27 4.5143762842649169 30 4.5143762842649169;
	setAttr -s 12 ".kit[3:11]"  9 9 9 9 9 3 3 
		3 3;
	setAttr -s 12 ".kot[3:11]"  9 9 9 9 9 3 3 
		3 3;
createNode animCurveTA -n "cpd_Left_Foot_Hoop_rotateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 -72.810163056088328 
		12 -89.840758582631182 14 -126.31823086442932 16 -169.43177840605324 19 -283.6693424504208 
		21 -361.8724509176389 24 -361.8724509176389 27 -361.8724509176389 30 -361.8724509176389;
	setAttr -s 12 ".kit[3:11]"  9 9 9 9 9 3 3 
		3 3;
	setAttr -s 12 ".kot[3:11]"  9 9 9 9 9 3 3 
		3 3;
createNode animCurveTA -n "cpd_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_Right_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_Right_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_Right_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_Left_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_Left_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_Left_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "cpd_Right_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 0 12 0 14 0 16 0 
		19 0 21 0 24 0 27 0 30 0;
createNode animCurveTL -n "cpd_Right_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 0 12 0 14 0 16 0 
		19 0 21 0 24 0 27 0 30 0;
createNode animCurveTL -n "cpd_Right_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 4 1 6 1 9 1 12 1 14 1 16 1 
		19 1 21 1 24 1 27 1 30 1;
createNode animCurveTL -n "cpd_Left_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 0 12 0 14 0 16 0 
		19 0 21 0 24 0 27 0 30 0;
	setAttr -s 12 ".kit[1:11]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 12 ".kot[1:11]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTL -n "cpd_Left_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 0 12 0 14 0 16 0 
		19 0 21 0 24 0 27 0 30 0;
	setAttr -s 12 ".kit[1:11]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 12 ".kot[1:11]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTL -n "cpd_Left_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 4 1 6 1 9 1 12 1 14 1 16 1 
		19 1 21 1 24 1 27 1 30 1;
	setAttr -s 12 ".kit[1:11]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 12 ".kot[1:11]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTL -n "cpd_Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.076472881617957691 4 -0.2168127923691486 
		6 0.25388198476793306 9 3.3585370927076235 12 5.7745041650891018 14 6.6194216709262417 
		16 8.1744568855138731 19 9.3627263055642498 21 10.195853906039851 24 10.441755069515139 
		27 10.441755069515139 30 10.195853906039851;
	setAttr -s 12 ".kit[1:11]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 12 ".kot[1:11]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 12 ".kix[1:11]"  0.004576277919113636 0.00046615480096079409 
		0.00036227799137122929 0.00051110866479575634 0.00055556639563292265 0.00060753966681659222 
		0.00082451198250055313 0.0015445970930159092 0.00813307985663414 0.00813307985663414 
		0.0040666414424777031;
	setAttr -s 12 ".kiy[1:11]"  0.99998950958251953 0.99999988079071045 
		0.99999994039535522 0.99999988079071045 0.99999982118606567 0.99999982118606567 
		0.99999964237213135 0.99999880790710449 0.99996691942214966 -0.99996691942214966 
		-0.99999171495437622;
	setAttr -s 12 ".kox[1:11]"  0.0045762821100652218 0.00046615480096079409 
		0.00036227799137122929 0.00051110866479575634 0.00055556639563292265 0.00060753966681659222 
		0.00082451198250055313 0.0015445970930159092 0.00813307985663414 0.00813307985663414 
		0.0040666414424777031;
	setAttr -s 12 ".koy[1:11]"  0.99998950958251953 0.99999988079071045 
		0.99999994039535522 0.99999988079071045 0.99999982118606567 0.99999982118606567 
		0.99999964237213135 0.99999880790710449 0.99996691942214966 -0.99996691942214966 
		-0.99999171495437622;
createNode animCurveTL -n "cpd_Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.95473100313980441 4 0.65998414617826651 
		6 0.85067587640303288 9 1.4908555848268981 12 1.2004403949540849 14 0.80952826706499614 
		16 0.66452687472304373 19 0.71222166561947187 21 0.84120814782585329 24 0.97746375771768823 
		27 0.97746375771768823 30 0.95473100313980441;
createNode animCurveTL -n "cpd_Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 -0.043471048393381083 6 -0.043471048393381083 
		9 0.00013778903099673557 12 -0.043471048393381083 14 -0.50863197976840435 
		16 -0.50863197976840424 19 -0.28156411601668546 21 0 24 0 27 0 30 0;
createNode animCurveTA -n "cpd_Character_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.62843630316474508 4 3.0101423783020542 
		6 3.0101423783020551 9 3.571340630355869 12 3.4800327435822691 14 0 16 -1.0497450206558772 
		19 0.029611693037289014 21 8.022150580433923 24 1.7856161942099753 27 1.7856161942099753 
		30 1.785616194209982;
createNode animCurveTA -n "cpd_Character_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -5.8284402688137158 4 27.654343538027469 
		6 27.654343538027511 9 36.818658091347885 12 38.722503350928974 14 0 16 -1.489193064889885 
		19 -1.0508298841850618 21 -0.48024909003969574 24 -0.24862990668583532 27 
		-0.24862990668583532 30 -0.24862990668583659;
createNode animCurveTA -n "cpd_Character_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -1.2956360193097458 4 -5.216528431829814 
		6 -17.52763675867411 9 -66.142754791144 12 -85.209454901906099 14 -120.43256738516524 
		16 -233.70127063524467 19 -303.376714045293 21 -357.89497543640965 24 -396.31356448406166 
		27 -396.31356448406166 30 -357.85526788044137;
createNode animCurveTA -n "cpd_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 0 12 0 14 0 16 0 
		19 0 21 0 24 0 27 0 30 0;
createNode animCurveTA -n "cpd_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 0 12 0 14 0 16 0 
		19 0 21 0 24 0 27 0 30 0;
createNode animCurveTA -n "cpd_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 0 12 0 14 0 16 0 
		19 0 21 0 24 0 27 0 30 0;
createNode animCurveTA -n "cpd_L_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 0 12 0 14 0 16 0 
		19 0 21 0 24 0 27 0 30 0;
createNode animCurveTA -n "cpd_L_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 0 12 0 14 0 16 0 
		19 0 21 0 24 0 27 0 30 0;
createNode animCurveTA -n "cpd_L_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 0 12 0 14 0 16 0 
		19 0 21 0 24 0 27 0 30 0;
createNode animCurveTL -n "Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  6 -0.047332570993296401 9 -0.047332570993296401 
		12 -0.047332570993296401 21 -0.047332570993296401 24 -0.047332570993296401 
		27 -0.047332570993296401;
createNode animCurveTL -n "Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  6 -0.034131933706018712 9 -0.034131933706018712 
		12 -0.034131933706018712 21 -0.034131933706018712 24 -0.034131933706018712 
		27 -0.034131933706018712;
createNode animCurveTL -n "Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  6 0.817575895853493 9 0.817575895853493 
		12 0.817575895853493 21 0.817575895853493 24 0.817575895853493 27 0.817575895853493;
createNode animCurveTA -n "Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  6 154.94370436260047 9 154.94370436260047 
		12 154.94370436260047 21 154.94370436260047 24 154.94370436260047 27 154.94370436260047;
createNode animCurveTA -n "Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  6 65.54258985896702 9 65.54258985896702 
		12 65.54258985896702 21 65.54258985896702 24 65.54258985896702 27 65.54258985896702;
createNode animCurveTA -n "Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  6 232.42516800884303 9 232.42516800884303 
		12 232.42516800884303 21 232.42516800884303 24 232.42516800884303 27 232.42516800884303;
createNode animCurveTL -n "Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  6 0.35811760206675181 9 0.35811760206675181 
		12 0.35811760206675181 21 0.35811760206675181 24 0.35811760206675181 27 0.35811760206675181;
createNode animCurveTL -n "Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  6 -0.85077863648753338 9 -0.85077863648753338 
		12 -0.85077863648753338 21 -0.85077863648753338 24 -0.85077863648753338 27 
		-0.85077863648753338;
createNode animCurveTL -n "Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  6 0.076377495309297563 9 0.076377495309297563 
		12 0.076377495309297563 21 0.076377495309297563 24 0.076377495309297563 27 
		0.076377495309297563;
createNode animCurveTA -n "Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  6 9.0101360781921489 9 9.0101360781921489 
		12 9.0101360781921489 21 9.0101360781921489 24 9.0101360781921489 27 9.0101360781921489;
createNode animCurveTA -n "Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  6 -9.9020315352997432 9 -9.9020315352997432 
		12 -9.9020315352997432 21 -9.9020315352997432 24 -9.9020315352997432 27 -9.9020315352997432;
createNode animCurveTA -n "Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  6 -64.758891306610181 9 -64.758891306610181 
		12 -64.758891306610181 21 -64.758891306610181 24 -64.758891306610181 27 -64.758891306610181;
createNode animCurveTL -n "cpd_Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.8448236677023373 4 -0.25718650735620474 
		6 1.055669590206975 9 4.6612238021840646 12 7.1015551530335621 14 8.8397839250428962 
		16 11.179631497602921 19 11.179631497602921 21 12.172928196283193 24 12.560359270812301 
		27 12.560359270812301 30 12.436018713063698;
createNode animCurveTL -n "cpd_Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1.0304014029588007 4 1.0997504143421 
		6 1.7880691571562364 9 2.3320053857394565 12 1.1980506704073051 14 1.5809293051838618 
		16 0.1321990680711419 19 0.23837823568970795 21 1.7308803096030427 24 2.1604758980673391 
		27 2.1604758980673391 30 1.0304014029588007;
createNode animCurveTL -n "cpd_Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.097994651149805143 4 0.9851567731675096 
		6 0.99201391083123702 9 1.2123936448513277 12 1.2103266237199559 14 0.030801049109972771 
		16 -0.28984227194429329 19 -0.28984227194429329 21 0.66858839821442251 24 
		0.067124133370453504 27 0.067124133370453504 30 -0.097994651149805143;
createNode animCurveTA -n "cpd_Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 5.4739599453216474 4 70.12972521220307 
		6 98.85705926410904 9 6.9703750778612061 12 -103.02586466082658 14 -170.88281000732562 
		16 -32.816452066991552 19 -124.82532053333199 21 -238.16668027141154 24 -214.74507308628452 
		27 -214.74507308628452 30 -164.09710790754883;
createNode animCurveTA -n "cpd_Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 8.5874521608419823 4 35.786953174996434 
		6 39.456341723618195 9 80.401026969410339 12 124.90026355365011 14 147.52725973691668 
		16 179.79081354045496 19 122.30914142838131 21 108.16911249979078 24 183.95220620676284 
		27 183.95220620676284 30 145.14014246978618;
createNode animCurveTA -n "cpd_Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 74.754744621954103 4 144.26689220021865 
		6 189.76188727330594 9 58.828915631220681 12 -101.86969582781428 14 -215.12479259774 
		16 -340.99470613787179 19 -475.79028879529272 21 -572.92082571502306 24 -551.84178696194124 
		27 -551.84178696194124 30 -469.53702846480002;
	setAttr -s 12 ".kot[6:11]"  1 9 9 9 9 9;
	setAttr -s 12 ".ktl[6:11]" no yes yes yes yes yes;
	setAttr -s 12 ".kox[6:11]"  0.21368816494941711 0.041139017790555954 
		0.12458527833223343 0.4776148796081543 0.13789822161197662 0.06944611668586731;
	setAttr -s 12 ".koy[6:11]"  -0.97690194845199585 -0.99915343523025513 
		-0.99220889806747437 0.87856930494308472 0.99044638872146606 0.9975857138633728;
createNode animCurveTL -n "cpd_Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.61083301393139333 4 0.16405762335852056 
		6 1.8098268835429401 9 5.9000281102628005 12 8.0364158059512043 14 8.0364158059512043 
		16 10.170198265473633 19 12.768340917791619 21 14.154360210105809 24 14.436247105151041 
		27 14.436247105151041 30 13.89167539469743;
	setAttr -s 12 ".kit[5:11]"  3 9 9 9 9 9 9;
	setAttr -s 12 ".kot[5:11]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "cpd_Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1.0211562878106184 4 0.97663132662544672 
		6 1.4982696306053556 9 1.2040608036255138 12 0.12349239412882387 14 0.12349239412882387 
		16 1.7395879288110707 19 2.1062923435629504 21 1.386258719548688 24 0.83402930378774076 
		27 0.83402930378774076 30 1.0211562878106184;
	setAttr -s 12 ".kit[5:11]"  3 9 9 9 9 9 9;
	setAttr -s 12 ".kot[5:11]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "cpd_Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.14314299916678522 4 -0.9142750409399224 
		6 -0.37681909347588194 9 -0.10947418764321172 12 0.31530920827593362 14 0.31530920827593362 
		16 0.017645881381691292 19 0.05240971609781659 21 0.62229227027463274 24 
		0.11594149714944535 27 0.11594149714944535 30 0.14314299916678522;
	setAttr -s 12 ".kit[5:11]"  3 9 9 9 9 9 9;
	setAttr -s 12 ".kot[5:11]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "cpd_Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 16.226511010665405 4 -52.052416287880014 
		6 -79.05337927856786 9 -0.74649560008993421 12 -174.30337052989609 14 -174.30337052989609 
		16 -329.99754004698838 19 -340.04506894974412 21 -359.32230632253538 24 -362.10092132011164 
		27 -362.10092132011164 30 -355.21170246490817;
	setAttr -s 12 ".kit[5:11]"  3 9 9 9 9 9 9;
	setAttr -s 12 ".kot[5:11]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "cpd_Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -8.513966085499284 4 35.039416496603835 
		6 -7.9247901107793126 9 11.152430451630437 12 -65.488983401060921 14 -65.488983401060921 
		16 -47.30962657454387 19 16.246110143154148 21 -46.095823188933913 24 -9.5327469623768248 
		27 -9.5327469623768248 30 -8.5139660854992893;
	setAttr -s 12 ".kit[5:11]"  3 9 9 9 9 9 9;
	setAttr -s 12 ".kot[5:11]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "cpd_Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -68.213989601412422 4 -11.818276385066079 
		6 1.99823146711175 9 -2.7835316769972778 12 154.07985982291714 14 154.07985982291714 
		16 50.206009491707185 19 20.023070471746987 21 -56.778977613356176 24 -12.731422963356357 
		27 -12.731422963356357 30 -68.213989601412422;
	setAttr -s 12 ".kit[5:11]"  3 9 9 9 9 9 9;
	setAttr -s 12 ".kot[5:11]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "cpd_Left_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0.017808933081369813 6 0.34961769713173624 
		9 1.1897989794767918 12 1.0659802218804872 14 0.83538765095230361 16 0.98583428595541511 
		19 0.55647586120929771 21 0.3933273483791726 24 0 27 0 30 0;
createNode animCurveTL -n "cpd_Left_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 -0.24391255784572438 6 -0.95804293736558555 
		9 -0.062418101311071159 12 1.8088426047822639 14 0.20135111399424357 16 0.17997480801632398 
		19 0.098102028352179516 21 -0.77508124406430301 24 0 27 0 30 0;
createNode animCurveTL -n "cpd_Left_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -1 4 -0.93199495442395508 6 -0.57051458977112623 
		9 -0.02252614698743929 12 -0.66420291928795949 14 0.23756003021009597 16 
		-0.89063760399284975 19 -1.0200456494870849 21 -0.85934181066323856 24 -1 
		27 -1 30 -1;
createNode animCurveTL -n "cpd_Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.10167917362943303 4 -0.10167917362943303 
		6 -0.80374940905167636 9 -1.1487558386740691 12 -1.3401764659549196 14 -1.2231224661668192 
		16 -0.65536209945715906 19 -0.39176965792196811 21 -0.92742890103099551 24 
		-0.10167917362943303 27 -0.10167917362943303 30 -0.10167917362943303;
createNode animCurveTL -n "cpd_Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.40762644910266188 4 -0.40762644910266188 
		6 -0.64305766434938971 9 -1.4481946202237512 12 -1.7356910382814397 14 0.78962728334762089 
		16 0.47988750328243229 19 -0.35965779265228215 21 -0.72739992185699631 24 
		-0.40762644910266188 27 -0.40762644910266188 30 -0.40762644910266188;
createNode animCurveTL -n "cpd_Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.93129112588482243 4 -0.93129112588482243 
		6 0.38339563290395945 9 1.1378731714423262 12 1.1983456294978063 14 -1.1883281065279967 
		16 1.2108786545961618 19 -0.895233320021118 21 -0.42969299282857115 24 -0.93129112588482243 
		27 -0.93129112588482243 30 -0.93129112588482243;
createNode animCurveTA -n "cpd_R_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 12.253734489678925 4 12.253734489678925 
		6 12.253734489678925 9 12.253734489678925 12 12.253734489678925 14 12.253734489678925 
		16 12.253734489678925 19 12.253734489678925 21 12.253734489678925 24 12.253734489678925 
		27 12.253734489678925 30 12.253734489678925;
createNode animCurveTA -n "cpd_R_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -65.746751280844961 4 -65.746751280844961 
		6 -65.746751280844961 9 -65.746751280844961 12 -65.746751280844961 14 -65.746751280844961 
		16 -65.746751280844961 19 -65.746751280844961 21 -65.746751280844961 24 -65.746751280844961 
		27 -65.746751280844961 30 -65.746751280844961;
createNode animCurveTA -n "cpd_R_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 3.871449260799477e-015 4 0 6 
		0 9 0 12 0 14 0 16 0 19 0 21 0 24 0 27 0 30 0;
createNode animCurveTA -n "cpd_L_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.061808866237337522 4 -0.061808866237337522 
		6 -0.061808866237337522 9 -0.061808866237337522 12 -0.061808866237337522 
		14 -0.061808866237337522 16 -0.061808866237337522 19 -0.061808866237337522 
		21 -0.061808866237337522 24 -0.061808866237337522 27 -0.061808866237337522 
		30 -0.061808866237337522;
createNode animCurveTA -n "cpd_L_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -59.058178941076754 4 -59.058178941076754 
		6 -59.058178941076754 9 -59.058178941076754 12 -59.058178941076754 14 -59.058178941076754 
		16 -59.058178941076754 19 -59.058178941076754 21 -59.058178941076754 24 -59.058178941076754 
		27 -59.058178941076754 30 -59.058178941076754;
createNode animCurveTA -n "cpd_L_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 16.579147429757843 4 16.579147429757843 
		6 16.579147429757843 9 16.579147429757843 12 16.579147429757843 14 16.579147429757843 
		16 16.579147429757843 19 16.579147429757843 21 16.579147429757843 24 16.579147429757843 
		27 16.579147429757843 30 16.579147429757843;
createNode animCurveTA -n "cpd_R_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 8.5572674112203622 4 8.5572674112203622 
		6 8.5572674112203622 9 8.5572674112203622 12 8.5572674112203622 14 8.5572674112203622 
		16 8.5572674112203622 19 8.5572674112203622 21 8.5572674112203622 24 8.5572674112203622 
		27 8.5572674112203622 30 8.5572674112203622;
createNode animCurveTA -n "cpd_L_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 15.711328223519057 4 15.711328223519057 
		6 15.711328223519057 9 15.711328223519057 12 15.711328223519057 14 15.711328223519057 
		16 15.711328223519057 19 15.711328223519057 21 15.711328223519057 24 15.711328223519057 
		27 15.711328223519057 30 15.711328223519057;
createNode animCurveTA -n "cpd_R_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 0 12 0 14 0 16 0 
		19 0 21 0 24 0 27 0 30 0;
createNode animCurveTA -n "cpd_R_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 0 12 0 14 0 16 0 
		19 0 21 0 24 0 27 0 30 0;
createNode animCurveTA -n "cpd_R_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 0 12 0 14 0 16 0 
		19 0 21 0 24 0 27 0 30 0;
createNode animCurveTA -n "cpd_L_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 0 12 0 14 0 16 0 
		19 0 21 0 24 0 27 0 30 0;
createNode animCurveTA -n "cpd_L_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 0 12 0 14 0 16 0 
		19 0 21 0 24 0 27 0 30 0;
createNode animCurveTA -n "cpd_L_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 0 12 0 14 0 16 0 
		19 0 21 0 24 0 27 0 30 0;
createNode animCurveTA -n "cpd_Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 143.71460997127252 4 143.71460997127252 
		6 143.71460997127252 9 143.71460997127252 12 143.71460997127252 14 143.71460997127252 
		16 143.71460997127252 19 143.71460997127252 21 143.71460997127252 24 143.71460997127252 
		27 143.71460997127252 30 143.71460997127252;
createNode animCurveTA -n "cpd_Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 27.804554996454375 4 27.804554996454375 
		6 27.804554996454375 9 27.804554996454375 12 27.804554996454375 14 27.804554996454375 
		16 27.804554996454375 19 27.804554996454375 21 27.804554996454375 24 27.804554996454375 
		27 27.804554996454375 30 27.804554996454375;
createNode animCurveTA -n "cpd_Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 29.452980944098748 4 29.452980944098748 
		6 29.452980944098748 9 29.452980944098748 12 29.452980944098748 14 29.452980944098748 
		16 29.452980944098748 19 29.452980944098748 21 29.452980944098748 24 29.452980944098748 
		27 29.452980944098748 30 29.452980944098748;
createNode animCurveTA -n "cpd_Middle_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 0 12 0 14 0 16 0 
		19 0 21 0 24 0 27 0 30 0;
createNode animCurveTA -n "cpd_Middle_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 0 12 0 14 0 16 0 
		19 0 21 0 24 0 27 0 30 0;
createNode animCurveTA -n "cpd_Middle_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 27.080064458283051 4 27.080064458283051 
		6 27.080064458283051 9 27.080064458283051 12 27.080064458283051 14 27.080064458283051 
		16 27.080064458283051 19 27.080064458283051 21 27.080064458283051 24 27.080064458283051 
		27 27.080064458283051 30 27.080064458283051;
createNode animCurveTA -n "cpd_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_Thumb_R_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_Thumb_R_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_Thumb_R_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cpd_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "cpd_Middle_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 0 12 0 14 0 16 0 
		19 0 21 0 24 0 27 0 30 0;
createNode animCurveTA -n "cpd_Middle_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 0 12 0 14 0 16 0 
		19 0 21 0 24 0 27 0 30 0;
createNode animCurveTA -n "cpd_Middle_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 27.911632519594587 4 27.911632519594587 
		6 27.911632519594587 9 27.911632519594587 12 27.911632519594587 14 27.911632519594587 
		16 27.911632519594587 19 27.911632519594587 21 27.911632519594587 24 27.911632519594587 
		27 27.911632519594587 30 27.911632519594587;
createNode animCurveTA -n "cpd_Jaw_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 0 12 0 14 0 16 0 
		19 0 21 0 24 0 27 0 30 0;
createNode animCurveTA -n "cpd_Jaw_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 0 12 0 14 0 16 0 
		19 0 21 0 24 0 27 0 30 0;
createNode animCurveTA -n "cpd_Jaw_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 0 12 0 14 0 16 0 
		19 0 21 0 24 0 27 0 30 0;
createNode animCurveTA -n "cpd_Spine_2_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.65073001024951671 4 9.9560837695197435 
		6 9.9560837695197435 9 4.0807772390636101 12 -1.7945292913925253 14 -1.7945292913925253 
		16 -1.7945292913925253 19 -1.2823936862855581 21 -1.0550983787817858 24 7.0508321303452801 
		27 7.0508321303452801 30 -0.65073001024951671;
createNode animCurveTA -n "cpd_Spine_2_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -4.2368721935960929 4 -5.8496281721843939 
		6 -5.8496281721843939 9 -3.7312970670812935 12 -1.6129659619781929 14 -1.6129659619781929 
		16 -1.6129659619781929 19 0.16125700371066204 21 -4.151834219959202 24 1.1916803478620572 
		27 1.1916803478620572 30 -4.2368721935960929;
createNode animCurveTA -n "cpd_Spine_2_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 2.6995264082587447 4 4.1469943022084159 
		6 4.1469943022084159 9 2.9510128749639382 12 1.7550314477194593 14 1.7550314477194593 
		16 1.7550314477194593 19 2.1106925018754508 21 7.2181438176020878 24 2.7453490362500013 
		27 2.7453490362500013 30 2.6995264082587447;
createNode animCurveTA -n "cpd_Neck_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 25.261586657281342 6 25.261586657281342 
		9 15.740100731473502 12 11.714126113308319 14 7.7478867674947258 16 1.4140522019273374 
		19 0.33036210659910181 21 3.8334234630673438 24 2.0083320386737928 27 -1.7615784677642821 
		30 0;
createNode animCurveTA -n "cpd_Neck_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 -7.4087436456304605 6 -7.4087436456304605 
		9 13.827086714664024 12 22.339374470510396 14 5.7542889666729868 16 -6.8788064133882747 
		19 -4.7102745001001294 21 23.443763452032755 24 17.759158234527103 27 -13.91244357960475 
		30 0;
createNode animCurveTA -n "cpd_Neck_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 14.800466287207913 6 14.800466287207913 
		9 -7.2338617648922332 12 9.0899342706210717 14 46.810612115016291 16 44.703773811040712 
		19 24.596242403731878 21 -10.31879569784849 24 -0.61745467109549901 27 0.94338729870621429 
		30 0;
createNode animCurveTA -n "cpd_Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 8.9251701322399404e-015 4 0 6 
		0 9 0 12 0 14 0 16 0 19 0 21 0 24 1.8723763934030315 27 1.8723763934030315 
		30 0;
createNode animCurveTA -n "cpd_Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -7.2005835300832052e-015 4 0 
		6 0 9 0 12 0 14 0 16 0 19 0 21 0 24 -3.4840093268520542 27 -3.4840093268520542 
		30 0;
createNode animCurveTA -n "cpd_Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 6.6786334979782902 4 6.6786334979782902 
		6 6.6786334979782902 9 6.6786334979782902 12 6.6786334979782902 14 6.6786334979782902 
		16 6.6786334979782902 19 6.6786334979782902 21 6.6786334979782902 24 6.4171731163083594 
		27 6.4171731163083594 30 6.6786334979782902;
createNode animCurveTA -n "cpd_Spine_1_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -1.8903601258661931 4 8.7725620488177753 
		6 8.7725620488177753 9 0.70167406090704931 12 -7.3692139270036785 14 -7.3692139270036785 
		16 -7.3692139270036785 19 -4.9001719531605596 21 -1.9730245174210874 24 -2.7037278959523454 
		27 -2.7037278959523454 30 -1.8903601258661931;
createNode animCurveTA -n "cpd_Spine_1_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 2.5597289571479034 4 -1.9473430492670838 
		6 -1.9473430492670838 9 -7.1664242927369131 12 -12.385505536206743 14 -12.385505536206743 
		16 -12.385505536206743 19 -1.364745595972205 21 2.5399816262554862 24 2.4843632332633927 
		27 2.4843632332633927 30 2.5597289571479034;
createNode animCurveTA -n "cpd_Spine_1_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 2.016811087403604 4 4.4725482605005471 
		6 4.4725482605005471 9 18.463471499400264 12 32.454394738299982 14 32.454394738299982 
		16 32.454394738299982 19 18.491845045964983 21 4.2654902436726623 24 2.2495927061802985 
		27 2.2495927061802985 30 2.016811087403604;
createNode animCurveTA -n "cpd_Middle_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 0 12 0 14 0 16 0 
		19 0 21 0 24 0 27 0 30 0;
createNode animCurveTA -n "cpd_Middle_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 0 12 0 14 0 16 0 
		19 0 21 0 24 0 27 0 30 0;
createNode animCurveTA -n "cpd_Middle_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 33.429092416277157 4 33.429092416277157 
		6 33.429092416277157 9 33.429092416277157 12 33.429092416277157 14 33.429092416277157 
		16 33.429092416277157 19 33.429092416277157 21 33.429092416277157 24 33.429092416277157 
		27 33.429092416277157 30 33.429092416277157;
createNode animCurveTA -n "cpd_Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -121.24398976748977 4 -121.24398976748977 
		6 -121.24398976748977 9 -121.24398976748977 12 -121.24398976748977 14 -121.24398976748977 
		16 -121.24398976748977 19 -121.24398976748977 21 -121.24398976748977 24 -121.24398976748977 
		27 -121.24398976748977 30 -121.24398976748977;
createNode animCurveTA -n "cpd_Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 28.612774017129329 4 28.612774017129329 
		6 28.612774017129329 9 28.612774017129329 12 28.612774017129329 14 28.612774017129329 
		16 28.612774017129329 19 28.612774017129329 21 28.612774017129329 24 28.612774017129329 
		27 28.612774017129329 30 28.612774017129329;
createNode animCurveTA -n "cpd_Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 17.632837226638049 4 17.632837226638049 
		6 17.632837226638049 9 17.632837226638049 12 17.632837226638049 14 17.632837226638049 
		16 17.632837226638049 19 17.632837226638049 21 17.632837226638049 24 17.632837226638049 
		27 17.632837226638049 30 17.632837226638049;
createNode animCurveTA -n "cpd_Middle_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 0 12 0 14 0 16 0 
		19 0 21 0 24 0 27 0 30 0;
createNode animCurveTA -n "cpd_Middle_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 4 0 6 0 9 0 12 0 14 0 16 0 
		19 0 21 0 24 0 27 0 30 0;
createNode animCurveTA -n "cpd_Middle_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 17.254116939558369 4 17.254116939558369 
		6 17.254116939558369 9 17.254116939558369 12 17.254116939558369 14 17.254116939558369 
		16 17.254116939558369 19 17.254116939558369 21 17.254116939558369 24 17.254116939558369 
		27 17.254116939558369 30 17.254116939558369;
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
	setAttr -s 654 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".top" 478;
	setAttr ".rght" 638;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
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
connectAttr "cpd_dodgeSource.st" "clipLibrary1.st[0]";
connectAttr "cpd_dodgeSource.du" "clipLibrary1.du[0]";
connectAttr "cpd_Extra_Attributes_translateX.a" "clipLibrary1.cel[0].cev[0].cevr"
		;
connectAttr "cpd_Extra_Attributes_translateY.a" "clipLibrary1.cel[0].cev[1].cevr"
		;
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "cpd_Hoop_Root_IK_FK_RFoot.a" "clipLibrary1.cel[0].cev[6].cevr"
		;
connectAttr "cpd_Hoop_Root_IK_FK_LFoot.a" "clipLibrary1.cel[0].cev[7].cevr"
		;
connectAttr "cpd_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary1.cel[0].cev[8].cevr"
		;
connectAttr "cpd_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary1.cel[0].cev[9].cevr"
		;
connectAttr "cpd_Hoop_Root_IK_FK_RArm.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "cpd_Hoop_Root_IK_FK_LArm.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "cpd_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "cpd_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "cpd_Hoop_Root_rotateX.a" "clipLibrary1.cel[0].cev[14].cevr"
		;
connectAttr "cpd_Hoop_Root_rotateY.a" "clipLibrary1.cel[0].cev[15].cevr"
		;
connectAttr "cpd_Hoop_Root_rotateZ.a" "clipLibrary1.cel[0].cev[16].cevr"
		;
connectAttr "cpd_Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "cpd_Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "cpd_Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
connectAttr "cpd_Right_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[20].cevr"
		;
connectAttr "cpd_Right_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[21].cevr"
		;
connectAttr "cpd_Right_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[22].cevr"
		;
connectAttr "cpd_Right_Foot_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[23].cevr"
		;
connectAttr "cpd_Right_Foot_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[24].cevr"
		;
connectAttr "cpd_Right_Foot_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[25].cevr"
		;
connectAttr "cpd_Left_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[26].cevr"
		;
connectAttr "cpd_Left_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[27].cevr"
		;
connectAttr "cpd_Left_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[28].cevr"
		;
connectAttr "cpd_Left_Foot_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[29].cevr"
		;
connectAttr "cpd_Left_Foot_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[30].cevr"
		;
connectAttr "cpd_Left_Foot_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[31].cevr"
		;
connectAttr "cpd_Right_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[32].cevr"
		;
connectAttr "cpd_Right_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[33].cevr"
		;
connectAttr "cpd_Right_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[34].cevr"
		;
connectAttr "cpd_Left_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[35].cevr"
		;
connectAttr "cpd_Left_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[36].cevr"
		;
connectAttr "cpd_Left_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[37].cevr"
		;
connectAttr "cpd_Right_Toe_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[38].cevr"
		;
connectAttr "cpd_Right_Toe_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[39].cevr"
		;
connectAttr "cpd_Right_Toe_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[40].cevr"
		;
connectAttr "cpd_Left_Toe_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[41].cevr"
		;
connectAttr "cpd_Left_Toe_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[42].cevr"
		;
connectAttr "cpd_Left_Toe_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[43].cevr"
		;
connectAttr "cpd_Right_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[44].cevr"
		;
connectAttr "cpd_Right_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[45].cevr"
		;
connectAttr "cpd_Right_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[46].cevr"
		;
connectAttr "cpd_Left_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[47].cevr"
		;
connectAttr "cpd_Left_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[48].cevr"
		;
connectAttr "cpd_Left_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[49].cevr"
		;
connectAttr "cpd_Character_Hoop_translateX.a" "clipLibrary1.cel[0].cev[50].cevr"
		;
connectAttr "cpd_Character_Hoop_translateY.a" "clipLibrary1.cel[0].cev[51].cevr"
		;
connectAttr "cpd_Character_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[52].cevr"
		;
connectAttr "cpd_Character_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[53].cevr"
		;
connectAttr "cpd_Character_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[54].cevr"
		;
connectAttr "cpd_Character_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[55].cevr"
		;
connectAttr "cpd_R_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "cpd_R_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "cpd_R_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "cpd_R_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[59].cevr"
		;
connectAttr "cpd_R_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[60].cevr"
		;
connectAttr "cpd_R_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[61].cevr"
		;
connectAttr "cpd_R_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[62].cevr"
		;
connectAttr "cpd_R_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[63].cevr"
		;
connectAttr "cpd_R_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[64].cevr"
		;
connectAttr "cpd_R_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[65].cevr"
		;
connectAttr "cpd_L_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "cpd_L_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "cpd_L_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "cpd_L_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[69].cevr"
		;
connectAttr "cpd_L_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[70].cevr"
		;
connectAttr "cpd_L_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[71].cevr"
		;
connectAttr "cpd_L_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[72].cevr"
		;
connectAttr "cpd_L_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[73].cevr"
		;
connectAttr "cpd_L_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[74].cevr"
		;
connectAttr "cpd_L_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[75].cevr"
		;
connectAttr "cpd_R_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[76].cevr"
		;
connectAttr "cpd_R_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[77].cevr"
		;
connectAttr "cpd_R_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[78].cevr"
		;
connectAttr "cpd_L_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[79].cevr"
		;
connectAttr "cpd_L_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[80].cevr"
		;
connectAttr "cpd_L_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[81].cevr"
		;
connectAttr "Right_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "Right_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "Right_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "Left_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "Left_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "Left_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "cpd_Right_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[94].cevr"
		;
connectAttr "cpd_Right_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[95].cevr"
		;
connectAttr "cpd_Right_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[96].cevr"
		;
connectAttr "cpd_Right_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[97].cevr"
		;
connectAttr "cpd_Right_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[98].cevr"
		;
connectAttr "cpd_Right_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[99].cevr"
		;
connectAttr "cpd_Left_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[100].cevr"
		;
connectAttr "cpd_Left_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[101].cevr"
		;
connectAttr "cpd_Left_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[102].cevr"
		;
connectAttr "cpd_Left_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[103].cevr"
		;
connectAttr "cpd_Left_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[104].cevr"
		;
connectAttr "cpd_Left_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[105].cevr"
		;
connectAttr "cpd_Left_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[106].cevr"
		;
connectAttr "cpd_Left_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[107].cevr"
		;
connectAttr "cpd_Left_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[108].cevr"
		;
connectAttr "cpd_Right_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[109].cevr"
		;
connectAttr "cpd_Right_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[110].cevr"
		;
connectAttr "cpd_Right_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[111].cevr"
		;
connectAttr "cpd_R_FK_Shoulder_rotateX.a" "clipLibrary1.cel[0].cev[112].cevr"
		;
connectAttr "cpd_R_FK_Shoulder_rotateY.a" "clipLibrary1.cel[0].cev[113].cevr"
		;
connectAttr "cpd_R_FK_Shoulder_rotateZ.a" "clipLibrary1.cel[0].cev[114].cevr"
		;
connectAttr "cpd_L_FK_Shoulder_rotateX.a" "clipLibrary1.cel[0].cev[115].cevr"
		;
connectAttr "cpd_L_FK_Shoulder_rotateY.a" "clipLibrary1.cel[0].cev[116].cevr"
		;
connectAttr "cpd_L_FK_Shoulder_rotateZ.a" "clipLibrary1.cel[0].cev[117].cevr"
		;
connectAttr "cpd_R_FK_Elbow_rotateZ.a" "clipLibrary1.cel[0].cev[118].cevr"
		;
connectAttr "cpd_L_FK_Elbow_rotateZ.a" "clipLibrary1.cel[0].cev[119].cevr"
		;
connectAttr "cpd_R_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[120].cevr"
		;
connectAttr "cpd_R_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[121].cevr"
		;
connectAttr "cpd_R_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[122].cevr"
		;
connectAttr "cpd_L_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[123].cevr"
		;
connectAttr "cpd_L_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[124].cevr"
		;
connectAttr "cpd_L_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[125].cevr"
		;
connectAttr "cpd_Thumb_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[126].cevr"
		;
connectAttr "cpd_Thumb_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[127].cevr"
		;
connectAttr "cpd_Thumb_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[128].cevr"
		;
connectAttr "cpd_Middle_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[129].cevr"
		;
connectAttr "cpd_Middle_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[130].cevr"
		;
connectAttr "cpd_Middle_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[131].cevr"
		;
connectAttr "cpd_Pelvis_rotateX.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "cpd_Pelvis_rotateY.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "cpd_Pelvis_rotateZ.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "cpd_Thumb_R_rotateX1.a" "clipLibrary1.cel[0].cev[135].cevr"
		;
connectAttr "cpd_Thumb_R_rotateY1.a" "clipLibrary1.cel[0].cev[136].cevr"
		;
connectAttr "cpd_Thumb_R_rotateZ1.a" "clipLibrary1.cel[0].cev[137].cevr"
		;
connectAttr "cpd_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "cpd_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "cpd_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "cpd_Middle_R_rotateX.a" "clipLibrary1.cel[0].cev[141].cevr"
		;
connectAttr "cpd_Middle_R_rotateY.a" "clipLibrary1.cel[0].cev[142].cevr"
		;
connectAttr "cpd_Middle_R_rotateZ.a" "clipLibrary1.cel[0].cev[143].cevr"
		;
connectAttr "cpd_Jaw_rotateX.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "cpd_Jaw_rotateY.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "cpd_Jaw_rotateZ.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "cpd_Spine_2_rotateX.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "cpd_Spine_2_rotateY.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "cpd_Spine_2_rotateZ.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "cpd_Neck_rotateX.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "cpd_Neck_rotateY.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "cpd_Neck_rotateZ.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "cpd_Head_rotateX.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "cpd_Head_rotateY.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "cpd_Head_rotateZ.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "cpd_Spine_1_rotateX.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "cpd_Spine_1_rotateY.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "cpd_Spine_1_rotateZ.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "cpd_Middle_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[159].cevr"
		;
connectAttr "cpd_Middle_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[160].cevr"
		;
connectAttr "cpd_Middle_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[161].cevr"
		;
connectAttr "cpd_Thumb_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[162].cevr"
		;
connectAttr "cpd_Thumb_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[163].cevr"
		;
connectAttr "cpd_Thumb_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[164].cevr"
		;
connectAttr "cpd_Middle_L_rotateX.a" "clipLibrary1.cel[0].cev[165].cevr"
		;
connectAttr "cpd_Middle_L_rotateY.a" "clipLibrary1.cel[0].cev[166].cevr"
		;
connectAttr "cpd_Middle_L_rotateZ.a" "clipLibrary1.cel[0].cev[167].cevr"
		;
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
// End of cpd_dodge.ma
