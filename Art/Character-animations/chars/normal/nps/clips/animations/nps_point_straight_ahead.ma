//Maya ASCII 4.0 scene
//Name: nps_point_straight_ahead.ma
//Last modified: Tue, Jun 17, 2003 03:40:16 PM
requires maya "4.0";
requires "p3dSimpleShader" "2.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "nps_point_straight_aheadSource";
	setAttr ".ihi" 0;
	setAttr ".du" 30;
	setAttr ".ci" no;
createNode animCurveTL -n "apu_Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTL -n "apu_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.995 30 0.995;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.46000000000000002 30 0.46000000000000002;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.72 30 0.72;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "apu_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTL -n "apu_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTL -n "apu_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTL -n "apu_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTL -n "apu_Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.0836749058650765 4 1.0836749058650765 
		8 1.0836749058650765 13 1.0836749058650765 15 1.0836749058650765 17 1.0836749058650765 
		26 1.0836749058650765 30 1.0836749058650765;
createNode animCurveTL -n "apu_Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.79279446241859197 4 0.79279446241859197 
		8 0.79279446241859197 13 0.79279446241859197 15 0.79279446241859197 17 0.79279446241859197 
		26 0.79279446241859197 30 0.79279446241859197;
createNode animCurveTL -n "apu_Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.7068065819859761 4 1.7068065819859761 
		8 1.7068065819859761 13 1.7068065819859761 15 1.7068065819859761 17 1.7068065819859761 
		26 1.7068065819859761 30 1.7068065819859761;
createNode animCurveTA -n "apu_Right_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -22.297768645241412 4 -22.297768645241412 
		8 -22.297768645241412 13 -22.297768645241412 15 -22.297768645241412 17 -22.297768645241412 
		26 -22.297768645241412 30 -22.297768645241412;
createNode animCurveTA -n "apu_Right_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 11.632534303065597 4 11.632534303065597 
		8 11.632534303065597 13 11.632534303065597 15 11.632534303065597 17 11.632534303065597 
		26 11.632534303065597 30 11.632534303065597;
createNode animCurveTA -n "apu_Right_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.0818063674069247 4 -2.0818063674069247 
		8 -2.0818063674069247 13 -2.0818063674069247 15 -2.0818063674069247 17 -2.0818063674069247 
		26 -2.0818063674069247 30 -2.0818063674069247;
createNode animCurveTL -n "apu_Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.5631069085862914 4 1.5631069085862914 
		8 1.5631069085862914 13 1.5631069085862914 15 1.5631069085862914 17 1.5631069085862914 
		26 1.5631069085862914 30 1.5631069085862914;
createNode animCurveTL -n "apu_Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.84361014269386181 4 0.84361014269386181 
		8 0.84361014269386181 13 0.84361014269386181 15 0.84361014269386181 17 0.84361014269386181 
		26 0.84361014269386181 30 0.84361014269386181;
createNode animCurveTL -n "apu_Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.7600134902800444 4 1.7600134902800444 
		8 1.7600134902800444 13 1.7600134902800444 15 1.7600134902800444 17 1.7600134902800444 
		26 1.7600134902800444 30 1.7600134902800444;
createNode animCurveTA -n "apu_Left_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTA -n "apu_Left_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 14.260733409455984 4 14.260733409455984 
		8 14.260733409455984 13 14.260733409455984 15 14.260733409455984 17 14.260733409455984 
		26 14.260733409455984 30 14.260733409455984;
createNode animCurveTA -n "apu_Left_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTA -n "apu_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTL -n "apu_Right_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.011621961304049206 4 -0.011621961304049206 
		8 -0.011621961304049206 13 -0.011621961304049206 15 -0.011621961304049206 
		17 -0.011621961304049206 26 -0.011621961304049206 30 -0.011621961304049206;
createNode animCurveTL -n "apu_Right_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.53592894662340362 4 0.53592894662340362 
		8 0.53592894662340362 13 0.53592894662340362 15 0.53592894662340362 17 0.53592894662340362 
		26 0.53592894662340362 30 0.53592894662340362;
createNode animCurveTL -n "apu_Right_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.1714982742260704 4 1.1714982742260704 
		8 1.1714982742260704 13 1.1714982742260704 15 1.1714982742260704 17 1.1714982742260704 
		26 1.1714982742260704 30 1.1714982742260704;
createNode animCurveTL -n "apu_Left_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.097466557943624466 4 -0.097466557943624466 
		8 -0.097466557943624466 13 -0.097466557943624466 15 -0.097466557943624466 
		17 -0.097466557943624466 26 -0.097466557943624466 30 -0.097466557943624466;
createNode animCurveTL -n "apu_Left_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.89926276112817349 4 0.89926276112817349 
		8 0.89926276112817349 13 0.89926276112817349 15 0.89926276112817349 17 0.89926276112817349 
		26 0.89926276112817349 30 0.89926276112817349;
createNode animCurveTL -n "apu_Left_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.80168990793572048 4 0.80168990793572048 
		8 0.80168990793572048 13 0.80168990793572048 15 0.80168990793572048 17 0.80168990793572048 
		26 0.80168990793572048 30 0.80168990793572048;
createNode animCurveTL -n "apu_Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.4235319221245726 4 1.4235319221245726 
		8 1.4235319221245726 13 1.4235319221245726 15 1.4235319221245726 17 1.4235319221245726 
		26 1.4235319221245726 30 1.4235319221245726;
createNode animCurveTL -n "apu_Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.96452787963755071 4 0.96452787963755071 
		8 0.96452787963755071 13 0.96452787963755071 15 0.96452787963755071 17 0.96452787963755071 
		26 0.96452787963755071 30 0.96452787963755071;
createNode animCurveTL -n "apu_Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.1625963268710435 4 1.1625963268710435 
		8 1.1625963268710435 13 1.1625963268710435 15 1.1625963268710435 17 1.1625963268710435 
		26 1.1625963268710435 30 1.1625963268710435;
createNode animCurveTA -n "apu_Character_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -19.688418588621186 4 -19.688418588621186 
		8 -19.688418588621186 13 -6.7601916806493261 15 -8.3637369812930142 17 -9.040557634000816 
		26 -9.040557634000816 30 -19.688418588621186;
createNode animCurveTA -n "apu_Character_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.6085540494966297 4 -1.6085540494966297 
		8 -1.6085540494966297 13 -1.6085540494966306 15 -1.6085540494966317 17 -2.6843508096301489 
		26 -2.6843508096301489 30 -1.6085540494966297;
createNode animCurveTA -n "apu_Character_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -4.1348769634669011 4 -4.1348769634669011 
		8 -4.1348769634669011 13 -4.1348769634669003 15 -4.1348769634669003 17 -4.5613311935655734 
		26 -4.5613311935655734 30 -4.1348769634669011;
createNode animCurveTA -n "apu_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTA -n "apu_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTA -n "apu_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -37.313732430097119 4 -37.313732430097119 
		8 -37.313732430097119 13 -37.313732430097119 15 -37.313732430097119 17 -37.313732430097119 
		26 -37.313732430097119 30 -37.313732430097119;
createNode animCurveTA -n "apu_L_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTA -n "apu_L_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTA -n "apu_L_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTL -n "Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.053946154130855462 1 -0.1285051659436823 
		2 -0.21432680162152679 3 -0.29145942098024308 4 -0.35170745635220613 5 -0.39464569138674493 
		6 -0.43099180841953272 7 -0.46883870033577607 8 -0.50889508900486802 9 -0.55838732508906963 
		10 -0.60680911277274407 11 -0.63887418321472633 12 -0.6515922464310917 13 
		-0.64815624134884242 14 -0.58286824761457456 15 -0.47466909177000149 16 -0.44804168882069517 
		17 -0.45171099052424835 18 -0.4354590687337756 19 -0.41617512312411181 20 
		-0.3948903495566623 21 -0.37278461098922466 22 -0.3509056845376321 23 -0.32998276992668762 
		24 -0.31035190119992279 25 -0.29200565733994721 26 -0.2747668382551004 27 
		-0.2420238141044993 28 -0.18582777163444406 29 -0.11832538524995272 30 -0.053946154130855462;
createNode animCurveTL -n "Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.67667650405506108 1 -0.48780721826121776 
		2 -0.28810036050732374 3 -0.10476424892115631 4 0.031623314481853529 5 0.10338641913354113 
		6 0.13036235712941138 7 0.13102754525212545 8 0.11835625295618957 9 0.095619885426525858 
		10 0.068590650465346084 11 0.054881272644186192 12 0.06475645276553578 13 
		0.096722668791717453 14 0.13748726209950071 15 0.12230186832643515 16 0.10021617067821616 
		17 0.08746161551174092 18 0.090282535605473793 19 0.099389725032128312 20 
		0.11227288047716796 21 0.12629119394985291 22 0.13891435963895532 23 0.14785140921929413 
		24 0.15106145693717166 25 0.14664169866981544 26 0.13259398312426959 27 0.021969587208780349 
		28 -0.20853958842536402 29 -0.46674565184607575 30 -0.67667650405506108;
createNode animCurveTL -n "Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.55757203721029291 1 0.55904134141892703 
		2 0.59956440114580933 3 0.65796907761533019 4 0.6970147851202676 5 0.68396569685142028 
		6 0.62991160264569912 7 0.55550536765425151 8 0.48175926883615733 9 0.39713482171351511 
		10 0.28891553115550905 11 0.18176220233263468 12 0.10254510524604181 13 0.080089842707392583 
		14 0.32716592201670935 15 0.66150425699500914 16 0.80557019012184572 17 0.86756641848791893 
		18 0.88922348841313548 19 0.90193765902386613 20 0.907674601769069 21 0.90857536632958269 
		22 0.90701497517790375 23 0.90557175024310299 24 0.90692382032007834 25 0.91370487561292291 
		26 0.92834767141708596 27 0.91693348600341784 28 0.84137390679869029 29 0.70862289791289856 
		30 0.55757203721029291;
createNode animCurveTA -n "Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 9.4037209115126323 1 -38.294490608123859 
		2 -90.760396246229035 3 -120.56801476229712 4 -132.73326864355863 5 -133.30957798145403 
		6 -130.90974176363036 7 -131.05797455802968 8 -134.76708423428957 9 -136.82703467479951 
		10 -134.1246490842361 11 -127.63672821026503 12 -121.15785807406975 13 -118.96292749523352 
		14 -133.75342098151762 15 -146.60326900199982 16 -125.08680709051352 17 -103.7925175625211 
		18 -102.00507622063692 19 -102.40490010203558 20 -104.48708460798807 21 -107.60884313100274 
		22 -111.09185297231186 23 -114.32830313706427 24 -116.81658871390387 25 -118.11809445795404 
		26 -117.76458331443254 27 -107.10363209692659 28 -80.365648755354769 29 -38.929549513998055 
		30 9.4037209115126323;
createNode animCurveTA -n "Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 77.316960645134102 1 77.579058242725466 
		2 72.563336008049163 3 60.487219774109235 4 44.367987577563007 5 23.263167184520888 
		6 -0.84034650697389324 7 -21.958432008744367 8 -35.44887751091521 9 -42.964098780327681 
		10 -48.109426535528769 11 -50.049102225586239 12 -48.041854614781855 13 -42.68641784838772 
		14 -23.853493538912677 15 4.3612956772183473 16 34.834074923117981 17 53.923755518280871 
		18 57.965659458235713 19 60.567824453927308 20 61.976151300688009 21 62.427063460258267 
		22 62.18617939297134 23 61.564508349537263 24 60.915024897571371 25 60.616604303732082 
		26 61.048992159648314 27 64.203344037679244 28 70.057246257368305 29 75.445588220524144 
		30 77.316960645134102;
createNode animCurveTA -n "Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 30.60757801954858 1 -10.780297497634418 
		2 -54.05069714084182 3 -73.436955289252737 4 -76.067102354175802 5 -69.267187999366783 
		6 -58.198567534016469 7 -45.327394027332609 8 -35.32824461918473 9 -32.91788245727377 
		10 -36.768888844762195 11 -45.558629094351609 12 -55.29601233873899 13 -61.935035049148375 
		14 -64.166321866256979 15 -60.34019979236912 16 -42.121655347189531 17 -25.749580317394042 
		18 -24.060952223680314 19 -24.335466055669336 20 -26.120597575051047 21 -28.815858830235253 
		22 -31.798245262300664 23 -34.542205547250248 24 -36.660910735904864 25 -37.859035557603036 
		26 -37.824533737312606 27 -34.091457636949187 28 -23.171122241989796 29 -0.77761288773341464 
		30 30.60757801954858;
createNode animCurveTL -n "Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.38197593353053522 1 0.40067476849623662 
		2 0.42394334636271963 3 0.45091675361129546 4 0.47514257317412956 5 0.49394182953450666 
		6 0.50662834248266053 7 0.50771052836442065 8 0.49351208548232933 9 0.46262272832017315 
		10 0.42563513808145587 11 0.39654701657763042 12 0.38200021590188299 13 0.37890325273087855 
		14 0.38302782669159885 15 0.37967266740951433 16 0.33857475085409877 17 0.30312539643860476 
		18 0.30641669861428456 19 0.31392846446014516 20 0.32431375479525487 21 0.33626611548676749 
		22 0.3486255187740312 23 0.36044098578927136 24 0.37098499164004978 25 0.37971480280201064 
		26 0.38617819641580442 27 0.38871168793068561 28 0.38741479839326731 29 0.38430654121177243 
		30 0.38197593353053522;
createNode animCurveTL -n "Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.53328827544008506 1 -0.54148262553536741 
		2 -0.54723928659951515 3 -0.54868189328402472 4 -0.54648412523516288 5 -0.54763218694108629 
		6 -0.55202280043508856 7 -0.54969425853361165 8 -0.53123238393038319 9 -0.49325888999858775 
		10 -0.44928295071840607 11 -0.41425768841433575 12 -0.39548822497257674 13 
		-0.39225560035718843 14 -0.41372808096049069 15 -0.44582432252880372 16 -0.46475778044972943 
		17 -0.47402489111948476 18 -0.47368812823777456 19 -0.47138940674523738 20 
		-0.46782712876867211 21 -0.46368227172887333 22 -0.45958963134894304 23 -0.45612999761089812 
		24 -0.45384530104389326 25 -0.45327905911330862 26 -0.45504347449831872 27 
		-0.46368074319225755 28 -0.48198421306738204 29 -0.50705808084907744 30 -0.53328827544008506;
createNode animCurveTL -n "Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.4628073796737307 1 0.41241568872474638 
		2 0.36823416197743614 3 0.33161138402663637 4 0.3018959575649518 5 0.27452639568602283 
		6 0.24862672871535807 7 0.23137205405110878 8 0.22961791407527671 9 0.24355287580607923 
		10 0.26254735821127995 11 0.2813140586732692 12 0.30155430728988952 13 0.32336293334925637 
		14 0.33172620069697012 15 0.344792619459317 16 0.40851061910332209 17 0.45314939538405219 
		18 0.44814199624625317 19 0.43661341185629299 20 0.42034397548479818 21 0.40114689510636936 
		22 0.38092830712443032 23 0.36170610226739719 24 0.34559479607219501 25 0.33476624186031362 
		26 0.33139378415391746 27 0.34733608831434198 28 0.38363188856287439 29 0.42632494678092536 
		30 0.4628073796737307;
createNode animCurveTA -n "Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 4.6931680813932024 1 -7.5273485095668971 
		2 -15.407691579580362 3 -23.481578413562598 4 -30.235676118603511 5 -33.26586252230701 
		6 -33.536692651778189 7 -33.003666743331316 8 -33.573118523193592 9 -37.748279652427044 
		10 -49.516980178753961 11 -73.911857297784749 12 -104.14816159858704 13 -124.31050010928398 
		14 -124.03738809737733 15 -114.66630781556076 16 -137.0521914745822 17 -163.9389938985706 
		18 -161.42212524118997 19 -155.07045550166796 20 -146.39274421675719 21 -137.09319829808027 
		22 -128.44491074133364 23 -120.96573705280336 24 -114.58881863327747 25 -108.94800333028437 
		26 -103.50220423058491 27 -95.023778485785314 28 -74.432326513954337 29 -29.988354621234514 
		30 4.6931680813932024;
createNode animCurveTA -n "Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -82.169846625535428 1 -76.301721672897301 
		2 -71.750965771374567 3 -68.586165688273766 4 -66.154887624378773 5 -63.748168908495913 
		6 -61.492335102448081 7 -60.30248607546924 8 -61.071149806846442 9 -64.323637874717065 
		10 -68.933553547569232 11 -72.270587698357829 12 -71.434380069252526 13 -68.106142595226032 
		14 -71.020722252815972 15 -77.244137848594377 16 -81.275433864223302 17 -81.752547448414674 
		18 -81.899545075893982 19 -81.84869280305999 20 -81.536897050815071 21 -80.947540784877887 
		22 -80.159290817457816 23 -79.327631202002294 24 -78.642263905619842 25 -78.296921230233878 
		26 -78.474757779316931 27 -80.172904834055515 28 -83.088098042145589 29 -84.319784249358051 
		30 -82.169846625535428;
createNode animCurveTA -n "Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -48.607521818219418 1 -36.74891481752077 
		2 -29.566416116106975 3 -21.93886232275328 4 -15.137560987403019 5 -12.003279421699016 
		6 -11.794241677655995 7 -12.262854312503583 8 -11.111152318109642 9 -5.8005824073922225 
		10 6.9393781632801206 11 31.353886708456184 12 60.42284854487778 13 78.841629417690683 
		14 78.415940960025068 15 69.66770722838281 16 92.025969792520229 17 118.90298344405822 
		18 116.42187780787175 19 110.08306971641284 20 101.41306886722209 21 92.132222924484296 
		22 83.524312384185876 23 76.110585427536819 24 69.820428873269421 25 64.278945726446679 
		26 58.935523602226645 27 50.590371726453384 28 30.171505415828094 29 -14.085007594152339 
		30 -48.607521818219418;
createNode animCurveTL -n "apu_Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.6254521627659528 4 1.076055998523213 
		8 1.0971271390567212 13 1.0932854570560249 15 1.2655956623273448 17 1.4459447944816401 
		26 1.4459447944816401 30 1.6254521627659528;
	setAttr -s 8 ".kit[6:7]"  1 9;
	setAttr -s 8 ".kot[6:7]"  1 9;
	setAttr -s 8 ".kix[6:7]"  0.084641262888908386 0.0074275312945246696;
	setAttr -s 8 ".kiy[6:7]"  0.99641150236129761 0.99997240304946899;
	setAttr -s 8 ".kox[6:7]"  0.084641262888908386 0.0074275312945246696;
	setAttr -s 8 ".koy[6:7]"  0.99641150236129761 0.99997240304946899;
createNode animCurveTL -n "apu_Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.7744259866497851 4 2.4080948775248401 
		8 2.4759516132267914 13 2.4759516132267914 15 2.4463312116376112 17 2.4463312116376112 
		26 2.4463312116376112 30 1.7744259866497851;
	setAttr -s 8 ".kit[6:7]"  1 9;
	setAttr -s 8 ".kot[6:7]"  1 9;
	setAttr -s 8 ".kix[6:7]"  0.058359600603580475 0.0019844030030071735;
	setAttr -s 8 ".kiy[6:7]"  -0.99829560518264771 -0.99999803304672241;
	setAttr -s 8 ".kox[6:7]"  0.058359537273645401 0.0019844030030071735;
	setAttr -s 8 ".koy[6:7]"  -0.99829560518264771 -0.99999803304672241;
createNode animCurveTL -n "apu_Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.0732108715169613 4 1.5941581425869229 
		8 1.2321696213753197 13 1.8928992516932512 15 2.3616407226458227 17 2.6360147813467103 
		26 2.5834676569670738 30 2.0732108715169613;
	setAttr -s 8 ".kit[6:7]"  1 9;
	setAttr -s 8 ".kot[6:7]"  1 9;
	setAttr -s 8 ".kix[6:7]"  0.03255738690495491 0.002613054821267724;
	setAttr -s 8 ".kiy[6:7]"  -0.99946987628936768 -0.9999966025352478;
	setAttr -s 8 ".kox[6:7]"  0.032557301223278046 0.002613054821267724;
	setAttr -s 8 ".koy[6:7]"  -0.99946987628936768 -0.9999966025352478;
createNode animCurveTA -n "apu_Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -39.296899878223357 4 -98.83773482326643 
		8 -91.86825324337822 13 -110.21668886953596 15 -142.71463990339703 17 -105.94937287545477 
		26 -105.94937287545477 30 -39.296899878223357;
	setAttr -s 8 ".kit[6:7]"  1 9;
	setAttr -s 8 ".kot[6:7]"  1 9;
	setAttr -s 8 ".kix[6:7]"  0.96335428953170776 0.11387045681476593;
	setAttr -s 8 ".kiy[6:7]"  0.26823219656944275 0.99349558353424072;
	setAttr -s 8 ".kox[6:7]"  0.96335428953170776 0.11387045681476593;
	setAttr -s 8 ".koy[6:7]"  0.26823213696479797 0.99349558353424072;
createNode animCurveTA -n "apu_Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 77.756094215389751 4 25.067852686596297 
		8 -64.485061978242797 13 -26.962235881809914 15 11.046796941782846 17 62.760304734683672 
		26 62.760304734683672 30 77.756094215389751;
	setAttr -s 8 ".kit[6:7]"  1 9;
	setAttr -s 8 ".kot[6:7]"  1 9;
	setAttr -s 8 ".kix[6:7]"  0.99097776412963867 0.45392924547195435;
	setAttr -s 8 ".kiy[6:7]"  -0.13402654230594635 0.89103776216506958;
	setAttr -s 8 ".kox[6:7]"  0.99097776412963867 0.45392924547195435;
	setAttr -s 8 ".koy[6:7]"  -0.13402652740478516 0.89103776216506958;
createNode animCurveTA -n "apu_Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -22.376629620485513 4 -58.125308845446938 
		8 -72.56399740277412 13 -71.832062626610792 15 -64.751120024861692 17 -32.616352377888845 
		26 -32.616352377888845 30 -22.376629620485513;
	setAttr -s 8 ".kit[6:7]"  1 9;
	setAttr -s 8 ".kot[6:7]"  1 9;
	setAttr -s 8 ".kix[6:7]"  0.99975967407226563 0.59797650575637817;
	setAttr -s 8 ".kiy[6:7]"  0.021922694519162178 0.801513671875;
	setAttr -s 8 ".kox[6:7]"  0.99975967407226563 0.59797650575637817;
	setAttr -s 8 ".koy[6:7]"  0.021922698244452477 0.801513671875;
createNode animCurveTL -n "apu_Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.8614370767228712 4 2.6116050694464046 
		8 2.6116050694464046 13 2.8614370767228712 15 2.8614370767228712 17 2.8614370767228712 
		26 2.8614370767228712 30 2.8614370767228712;
createNode animCurveTL -n "apu_Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.7861655623246184 4 1.786165562324618 
		8 1.786165562324618 13 1.7861655623246184 15 1.7861655623246184 17 1.7861655623246184 
		26 1.7861655623246184 30 1.7861655623246184;
createNode animCurveTL -n "apu_Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.971761516402895 4 2.2002093983881186 
		8 2.2002093983881186 13 1.971761516402895 15 1.971761516402895 17 1.971761516402895 
		26 1.971761516402895 30 1.971761516402895;
createNode animCurveTA -n "apu_Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -88.808544236675544 4 -47.22085032474844 
		8 -47.22085032474844 13 -88.808544236675544 15 -88.808544236675544 17 -88.808544236675544 
		26 -88.808544236675544 30 -88.808544236675544;
createNode animCurveTA -n "apu_Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -83.878009663660919 4 -99.984260410208904 
		8 -99.984260410208904 13 -83.878009663660919 15 -83.878009663660919 17 -83.878009663660919 
		26 -83.878009663660919 30 -83.878009663660919;
createNode animCurveTA -n "apu_Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 39.173779852465344 4 0.44885127404359743 
		8 0.44885127404359743 13 39.173779852465344 15 39.173779852465344 17 39.173779852465344 
		26 39.173779852465344 30 39.173779852465344;
createNode animCurveTL -n "apu_Left_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.35039089098226439 4 0.35039089098226439 
		8 0.35039089098226439 13 0.35039089098226439 15 0.35039089098226439 17 0.35039089098226439 
		26 0.35039089098226439 30 0.35039089098226439;
createNode animCurveTL -n "apu_Left_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.40854033940183732 4 -0.40854033940183732 
		8 -0.40854033940183732 13 -0.40854033940183732 15 -0.40854033940183732 17 
		-0.40854033940183732 26 -0.40854033940183732 30 -0.40854033940183732;
createNode animCurveTL -n "apu_Left_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.82408995422063858 4 -0.82408995422063858 
		8 -0.82408995422063858 13 -0.82408995422063858 15 -0.82408995422063858 17 
		-0.82408995422063858 26 -0.82408995422063858 30 -0.82408995422063858;
createNode animCurveTL -n "apu_Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.77290696453185026 4 -0.77290696453185026 
		8 -0.20450723653405706 13 -0.11813963966250869 15 -0.68984788419704635 17 
		-0.68984788419704635 26 -0.68984788419704635 30 -0.77290696453185026;
createNode animCurveTL -n "apu_Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.71234308293286885 4 -0.71234308293286885 
		8 -2.2538924422637296 13 -1.6485356635480783 15 -1.71709588847092 17 -1.71709588847092 
		26 -1.71709588847092 30 -0.71234308293286885;
createNode animCurveTL -n "apu_Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.35872267288917942 4 -0.35872267288917942 
		8 -0.026600181797039095 13 -0.50055812019672996 15 -0.63901584433226744 17 
		-0.63901584433226744 26 -0.63901584433226744 30 -0.35872267288917942;
createNode animCurveTA -n "apu_R_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 12.253734489678925 4 12.253734489678925 
		8 12.253734489678925 13 12.253734489678925 15 12.253734489678925 17 12.253734489678925 
		26 12.253734489678925 30 12.253734489678925;
createNode animCurveTA -n "apu_R_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -65.746751280844961 4 -65.746751280844961 
		8 -65.746751280844961 13 -65.746751280844961 15 -65.746751280844961 17 -65.746751280844961 
		26 -65.746751280844961 30 -65.746751280844961;
createNode animCurveTA -n "apu_R_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTA -n "apu_L_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.061808866237337522 4 -0.061808866237337522 
		8 -0.061808866237337522 13 -0.061808866237337522 15 -0.061808866237337522 
		17 -0.061808866237337522 26 -0.061808866237337522 30 -0.061808866237337522;
createNode animCurveTA -n "apu_L_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -59.058178941076754 4 -59.058178941076754 
		8 -59.058178941076754 13 -59.058178941076754 15 -59.058178941076754 17 -59.058178941076754 
		26 -59.058178941076754 30 -59.058178941076754;
createNode animCurveTA -n "apu_L_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 16.579147429757843 4 16.579147429757843 
		8 16.579147429757843 13 16.579147429757843 15 16.579147429757843 17 16.579147429757843 
		26 16.579147429757843 30 16.579147429757843;
createNode animCurveTA -n "apu_R_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.5572674112203622 4 8.5572674112203622 
		8 8.5572674112203622 13 8.5572674112203622 15 8.5572674112203622 17 8.5572674112203622 
		26 8.5572674112203622 30 8.5572674112203622;
createNode animCurveTA -n "apu_L_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 15.711328223519057 4 15.711328223519057 
		8 15.711328223519057 13 15.711328223519057 15 15.711328223519057 17 15.711328223519057 
		26 15.711328223519057 30 15.711328223519057;
createNode animCurveTA -n "apu_R_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTA -n "apu_R_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTA -n "apu_R_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTA -n "apu_L_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTA -n "apu_L_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTA -n "apu_L_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTA -n "apu_Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 10.423754966968488 4 10.423754966968488 
		8 10.423754966968488 13 10.423754966968488 15 10.423754966968488 17 10.423754966968488 
		26 10.423754966968488 30 10.423754966968488;
createNode animCurveTA -n "apu_Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 27.722848255843903 4 27.722848255843903 
		8 27.722848255843903 13 27.722848255843903 15 27.722848255843903 17 27.722848255843903 
		26 27.722848255843903 30 27.722848255843903;
createNode animCurveTA -n "apu_Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 21.576484776388227 4 21.576484776388227 
		8 21.576484776388227 13 21.576484776388227 15 21.576484776388227 17 21.576484776388227 
		26 21.576484776388227 30 21.576484776388227;
createNode animCurveTA -n "apu_Middle_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTA -n "apu_Middle_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTA -n "apu_Middle_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 27.080064458283051 4 27.080064458283051 
		8 27.080064458283051 13 27.080064458283051 15 27.080064458283051 17 27.080064458283051 
		26 27.080064458283051 30 27.080064458283051;
createNode animCurveTA -n "apu_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 13.994403295754109;
createNode animCurveTA -n "apu_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 0;
createNode animCurveTA -n "apu_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  14 13.994403295754109;
createNode animCurveTA -n "apu_Middle_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTA -n "apu_Middle_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTA -n "apu_Middle_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 27.911632519594587 4 27.911632519594587 
		8 20.676912208924175 13 -2.8884751571273899 15 -2.8884751571273899 17 -2.8884751571273899 
		26 -2.8884751571273899 30 27.911632519594587;
createNode animCurveTA -n "apu_Jaw_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTA -n "apu_Jaw_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTA -n "apu_Jaw_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTA -n "apu_Spine_2_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.87902215066922906 4 -16.894615241884232 
		8 -17.591866777831331 13 -1.240945565418397 15 -0.83616284987761158 17 4.3853999162080726 
		26 -1.2346070474440054 30 -0.87902215066922906;
createNode animCurveTA -n "apu_Spine_2_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -4.7952631452849266 4 -4.7566152092081317 
		8 -4.8088158427328684 13 -4.714759296236072 15 -4.8029047201253725 17 -5.4727445477999996 
		26 -4.7735702275188796 30 -4.7952631452849266;
createNode animCurveTA -n "apu_Spine_2_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 7.5470594542643701 4 9.8279619584646376 
		8 9.8553435098498969 13 11.910988978322814 15 7.0347711661700796 17 3.816720485183096 
		26 6.1936391284683561 30 7.5470594542643701;
createNode animCurveTA -n "apu_Neck_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.2734920044837068 4 9.415507349861949 
		8 2.8363933851058589 13 0.91124464128766047 15 0.85654945123998183 17 0.91124464128766047 
		26 -0.44745083087250964 30 1.2734920044837068;
createNode animCurveTA -n "apu_Neck_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.71628531942149 4 14.406617532245269 
		8 15.308349980248096 13 3.29264545539586 15 2.6214817057830282 17 3.29264545539586 
		26 3.3868846426253985 30 -1.71628531942149;
createNode animCurveTA -n "apu_Neck_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.62960137906938 4 -20.777985576238102 
		8 -3.8911336671994889 13 19.719841540607099 15 22.504257456010457 17 19.719841540607099 
		26 -18.570226435302946 30 1.62960137906938;
createNode animCurveTA -n "apu_Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 4.8714700432790456 4 1.4589889819003297 
		8 1.4589889819003297 13 1.4589889819003297 15 1.4589889819003297 17 1.4589889819003297 
		26 1.4589889819003297 30 4.8714700432790456;
createNode animCurveTA -n "apu_Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 11.783606204137085 4 0.4655725740268864 
		8 0.4655725740268864 13 0.4655725740268864 15 0.4655725740268864 17 0.4655725740268864 
		26 0.4655725740268864 30 11.783606204137085;
createNode animCurveTA -n "apu_Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 7.5423825101935913 4 7.2469521333106703 
		8 7.2469521333106703 13 7.2469521333106703 15 7.2469521333106703 17 7.2469521333106703 
		26 7.2469521333106703 30 7.5423825101935913;
createNode animCurveTA -n "apu_Spine_1_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.62622119873454107 4 -19.031526715799984 
		8 -23.20539159795284 13 0.073412861668066917 15 -0.13922626851448078 17 4.5253718881326499 
		26 -0.18068309363804 30 -0.62622119873454107;
createNode animCurveTA -n "apu_Spine_1_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 3.8840070108449005 4 3.8840070108448987 
		8 1.8027112087474499 13 3.9334058517002393 15 3.9316293127802138 17 4.1647423754982098 
		26 4.1647423754982063 30 3.8840070108449005;
createNode animCurveTA -n "apu_Spine_1_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.9840981620606046 4 1.9840981620605984 
		8 2.4688623362935638 13 12.220456056676209 15 9.1206770656653564 17 8.5080661745179569 
		26 8.5080661745179498 30 1.9840981620606046;
createNode animCurveTA -n "apu_Middle_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTA -n "apu_Middle_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTA -n "apu_Middle_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 33.429092416277157 4 33.429092416277157 
		8 18.329808518245969 13 18.511944466815123 15 18.511944466815123 17 18.511944466815123 
		26 18.511944466815123 30 33.429092416277157;
createNode animCurveTA -n "apu_Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.2533422302317216 4 8.2533422302317216 
		8 8.2533422302317216 13 8.2533422302317216 15 8.2533422302317216 17 8.2533422302317216 
		26 8.2533422302317216 30 8.2533422302317216;
createNode animCurveTA -n "apu_Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 23.263402056531085 4 23.263402056531085 
		8 23.263402056531085 13 23.263402056531085 15 23.263402056531085 17 23.263402056531085 
		26 23.263402056531085 30 23.263402056531085;
createNode animCurveTA -n "apu_Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 20.166277752815617 4 20.166277752815617 
		8 20.166277752815617 13 20.166277752815617 15 20.166277752815617 17 20.166277752815617 
		26 20.166277752815617 30 20.166277752815617;
createNode animCurveTA -n "apu_Middle_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTA -n "apu_Middle_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTA -n "apu_Middle_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 17.254116939558369 4 17.254116939558369 
		8 17.254116939558369 13 17.254116939558369 15 17.254116939558369 17 17.254116939558369 
		26 17.254116939558369 30 17.254116939558369;
createNode clipLibrary -n "clipLibrary1";
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
	setAttr ".o" 0;
select -ne :renderPartition;
	setAttr -s 34 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 34 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 15 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 15 ".tx";
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
connectAttr "nps_point_straight_aheadSource.st" "clipLibrary1.st[0]";
connectAttr "nps_point_straight_aheadSource.du" "clipLibrary1.du[0]";
connectAttr "apu_Extra_Attributes_translateX.a" "clipLibrary1.cel[0].cev[0].cevr"
		;
connectAttr "apu_Extra_Attributes_translateY.a" "clipLibrary1.cel[0].cev[1].cevr"
		;
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "apu_Hoop_Root_IK_FK_RFoot.a" "clipLibrary1.cel[0].cev[6].cevr"
		;
connectAttr "apu_Hoop_Root_IK_FK_LFoot.a" "clipLibrary1.cel[0].cev[7].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary1.cel[0].cev[8].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary1.cel[0].cev[9].cevr"
		;
connectAttr "apu_Hoop_Root_IK_FK_RArm.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "apu_Hoop_Root_IK_FK_LArm.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "apu_Hoop_Root_rotateX.a" "clipLibrary1.cel[0].cev[14].cevr"
		;
connectAttr "apu_Hoop_Root_rotateY.a" "clipLibrary1.cel[0].cev[15].cevr"
		;
connectAttr "apu_Hoop_Root_rotateZ.a" "clipLibrary1.cel[0].cev[16].cevr"
		;
connectAttr "apu_Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "apu_Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "apu_Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
connectAttr "apu_Right_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[20].cevr"
		;
connectAttr "apu_Right_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[21].cevr"
		;
connectAttr "apu_Right_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[22].cevr"
		;
connectAttr "apu_Right_Foot_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[23].cevr"
		;
connectAttr "apu_Right_Foot_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[24].cevr"
		;
connectAttr "apu_Right_Foot_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[25].cevr"
		;
connectAttr "apu_Left_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[26].cevr"
		;
connectAttr "apu_Left_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[27].cevr"
		;
connectAttr "apu_Left_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[28].cevr"
		;
connectAttr "apu_Left_Foot_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[29].cevr"
		;
connectAttr "apu_Left_Foot_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[30].cevr"
		;
connectAttr "apu_Left_Foot_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[31].cevr"
		;
connectAttr "apu_Right_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[32].cevr"
		;
connectAttr "apu_Right_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[33].cevr"
		;
connectAttr "apu_Right_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[34].cevr"
		;
connectAttr "apu_Left_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[35].cevr"
		;
connectAttr "apu_Left_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[36].cevr"
		;
connectAttr "apu_Left_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[37].cevr"
		;
connectAttr "apu_Right_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[38].cevr"
		;
connectAttr "apu_Right_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[39].cevr"
		;
connectAttr "apu_Right_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[40].cevr"
		;
connectAttr "apu_Left_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[41].cevr"
		;
connectAttr "apu_Left_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[42].cevr"
		;
connectAttr "apu_Left_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[43].cevr"
		;
connectAttr "apu_Character_Hoop_translateX.a" "clipLibrary1.cel[0].cev[44].cevr"
		;
connectAttr "apu_Character_Hoop_translateY.a" "clipLibrary1.cel[0].cev[45].cevr"
		;
connectAttr "apu_Character_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[46].cevr"
		;
connectAttr "apu_Character_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[47].cevr"
		;
connectAttr "apu_Character_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[48].cevr"
		;
connectAttr "apu_Character_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[49].cevr"
		;
connectAttr "apu_R_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "apu_R_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "apu_R_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "apu_R_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[53].cevr"
		;
connectAttr "apu_R_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[54].cevr"
		;
connectAttr "apu_R_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[55].cevr"
		;
connectAttr "apu_R_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[56].cevr"
		;
connectAttr "apu_R_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[57].cevr"
		;
connectAttr "apu_R_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[58].cevr"
		;
connectAttr "apu_R_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[59].cevr"
		;
connectAttr "apu_L_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "apu_L_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "apu_L_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "apu_L_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[63].cevr"
		;
connectAttr "apu_L_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[64].cevr"
		;
connectAttr "apu_L_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[65].cevr"
		;
connectAttr "apu_L_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[66].cevr"
		;
connectAttr "apu_L_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[67].cevr"
		;
connectAttr "apu_L_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[68].cevr"
		;
connectAttr "apu_L_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[69].cevr"
		;
connectAttr "apu_R_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[70].cevr"
		;
connectAttr "apu_R_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[71].cevr"
		;
connectAttr "apu_R_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[72].cevr"
		;
connectAttr "apu_L_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[73].cevr"
		;
connectAttr "apu_L_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[74].cevr"
		;
connectAttr "apu_L_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[75].cevr"
		;
connectAttr "Right_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[76].cevr"
		;
connectAttr "Right_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[77].cevr"
		;
connectAttr "Right_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[78].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[79].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[80].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[81].cevr"
		;
connectAttr "Left_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "Left_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "Left_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "apu_Right_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "apu_Right_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "apu_Right_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "apu_Right_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "apu_Right_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "apu_Right_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "apu_Left_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[94].cevr"
		;
connectAttr "apu_Left_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[95].cevr"
		;
connectAttr "apu_Left_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[96].cevr"
		;
connectAttr "apu_Left_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[97].cevr"
		;
connectAttr "apu_Left_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[98].cevr"
		;
connectAttr "apu_Left_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[99].cevr"
		;
connectAttr "apu_Left_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[100].cevr"
		;
connectAttr "apu_Left_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[101].cevr"
		;
connectAttr "apu_Left_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[102].cevr"
		;
connectAttr "apu_Right_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[103].cevr"
		;
connectAttr "apu_Right_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[104].cevr"
		;
connectAttr "apu_Right_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[105].cevr"
		;
connectAttr "apu_R_FK_Shoulder_rotateX.a" "clipLibrary1.cel[0].cev[106].cevr"
		;
connectAttr "apu_R_FK_Shoulder_rotateY.a" "clipLibrary1.cel[0].cev[107].cevr"
		;
connectAttr "apu_R_FK_Shoulder_rotateZ.a" "clipLibrary1.cel[0].cev[108].cevr"
		;
connectAttr "apu_L_FK_Shoulder_rotateX.a" "clipLibrary1.cel[0].cev[109].cevr"
		;
connectAttr "apu_L_FK_Shoulder_rotateY.a" "clipLibrary1.cel[0].cev[110].cevr"
		;
connectAttr "apu_L_FK_Shoulder_rotateZ.a" "clipLibrary1.cel[0].cev[111].cevr"
		;
connectAttr "apu_R_FK_Elbow_rotateZ.a" "clipLibrary1.cel[0].cev[112].cevr"
		;
connectAttr "apu_L_FK_Elbow_rotateZ.a" "clipLibrary1.cel[0].cev[113].cevr"
		;
connectAttr "apu_R_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[114].cevr"
		;
connectAttr "apu_R_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[115].cevr"
		;
connectAttr "apu_R_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[116].cevr"
		;
connectAttr "apu_L_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[117].cevr"
		;
connectAttr "apu_L_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[118].cevr"
		;
connectAttr "apu_L_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[119].cevr"
		;
connectAttr "apu_Thumb_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[120].cevr"
		;
connectAttr "apu_Thumb_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[121].cevr"
		;
connectAttr "apu_Thumb_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[122].cevr"
		;
connectAttr "apu_Middle_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[123].cevr"
		;
connectAttr "apu_Middle_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[124].cevr"
		;
connectAttr "apu_Middle_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[125].cevr"
		;
connectAttr "apu_Pelvis_rotateX.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "apu_Pelvis_rotateY.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "apu_Pelvis_rotateZ.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "apu_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "apu_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "apu_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "apu_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "apu_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "apu_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "apu_Middle_R_rotateX.a" "clipLibrary1.cel[0].cev[135].cevr"
		;
connectAttr "apu_Middle_R_rotateY.a" "clipLibrary1.cel[0].cev[136].cevr"
		;
connectAttr "apu_Middle_R_rotateZ.a" "clipLibrary1.cel[0].cev[137].cevr"
		;
connectAttr "apu_Jaw_rotateX.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "apu_Jaw_rotateY.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "apu_Jaw_rotateZ.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "apu_Spine_2_rotateX.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "apu_Spine_2_rotateY.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "apu_Spine_2_rotateZ.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "apu_Neck_rotateX.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "apu_Neck_rotateY.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "apu_Neck_rotateZ.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "apu_Head_rotateX.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "apu_Head_rotateY.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "apu_Head_rotateZ.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "apu_Spine_1_rotateX.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "apu_Spine_1_rotateY.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "apu_Spine_1_rotateZ.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "apu_Middle_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[153].cevr"
		;
connectAttr "apu_Middle_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[154].cevr"
		;
connectAttr "apu_Middle_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[155].cevr"
		;
connectAttr "apu_Thumb_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[156].cevr"
		;
connectAttr "apu_Thumb_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[157].cevr"
		;
connectAttr "apu_Thumb_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[158].cevr"
		;
connectAttr "apu_Middle_L_rotateX.a" "clipLibrary1.cel[0].cev[159].cevr"
		;
connectAttr "apu_Middle_L_rotateY.a" "clipLibrary1.cel[0].cev[160].cevr"
		;
connectAttr "apu_Middle_L_rotateZ.a" "clipLibrary1.cel[0].cev[161].cevr"
		;
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
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[31].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[32].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[33].llnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of nps_point_straight_ahead.ma
