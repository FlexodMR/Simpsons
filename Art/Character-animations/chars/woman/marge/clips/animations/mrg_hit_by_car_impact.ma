//Maya ASCII 4.0 scene
//Name: mrg_hit_by_car_impact.ma
//Last modified: Fri, Jun 07, 2002 11:09:33 AM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.3";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_hit_by_car_impactSource";
	setAttr ".ihi" 0;
	setAttr ".du" 8;
	setAttr ".ci" no;
createNode animCurveTL -n "mrg_Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "mrg_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.02822006920967135 1 0.014610734027834211 
		2 0.0010013991112864191 3 -0.0071874631879556066 4 -0.0060455611252836676 
		5 0.0005168136259670155 6 0.006189258290897782 7 0.0079797637234580408 8 
		0.0084325970069749762;
createNode animCurveTL -n "animCurveTL341";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.10300313841677244 1 -0.10051395507015733 
		2 -0.098024771773086883 3 -0.11509925878775507 4 -0.12239455639046369 5 -0.14925352325160832 
		6 -0.30326840722452336 7 -0.84736071575412553 8 -1.3823839068893198;
createNode animCurveTA -n "animCurveTA988";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 1;
createNode animCurveTU -n "mrg_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 1;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA989";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA990";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA991";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "mrg_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "mrg_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "mrg_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL346";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.080085202525975452 3 -0.050325215209307696 
		6 -0.050325215209307696 8 -0.052041671375867023;
	setAttr -s 4 ".kit[0:3]"  9 3 3 1;
	setAttr -s 4 ".kot[0:3]"  9 3 3 1;
	setAttr -s 4 ".kix[3]"  0.20705151557922363;
	setAttr -s 4 ".kiy[3]"  -0.97833001613616943;
	setAttr -s 4 ".kox[3]"  0.20705513656139374;
	setAttr -s 4 ".koy[3]"  -0.97832930088043213;
createNode animCurveTL -n "animCurveTL347";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.36956228769602462 3 0.090873464379081406 
		6 0.090873464379081406 8 1.7477299054448512;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  9 3 3 9;
createNode animCurveTL -n "animCurveTL348";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.50783966139956582 3 -0.15235994436950159 
		6 -0.15235994436950159 8 -0.77792662068783869;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  9 3 3 9;
createNode animCurveTA -n "animCurveTA992";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 68.750149689121017 3 0 6 0 8 
		-33.630440768693376;
	setAttr -s 4 ".kit[2:3]"  3 9;
	setAttr -s 4 ".kot[2:3]"  3 9;
createNode animCurveTA -n "animCurveTA993";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA994";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTL -n "animCurveTL349";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.11054624056798007 3 0.11054624056798007 
		6 0.11054624056798007 8 0.13954290880145034;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[3]"  9;
createNode animCurveTL -n "animCurveTL350";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.096121281988743604 3 0.096121281988743604 
		6 0.096121281988743604 8 1.1109697034832438;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[3]"  9;
createNode animCurveTL -n "animCurveTL351";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.25449932136439507 3 -0.25449932136439507 
		6 -0.25449932136439507 8 -0.96701087909774219;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[3]"  9;
createNode animCurveTA -n "animCurveTA995";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 -3.9320360584068554;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[3]"  9;
createNode animCurveTA -n "animCurveTA996";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[3]"  9;
createNode animCurveTA -n "animCurveTA997";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[3]"  9;
createNode animCurveTA -n "animCurveTA998";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA999";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1000";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1001";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1002";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1003";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1004";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1005";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1006";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1007";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1008";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1009";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTL -n "animCurveTL353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTL -n "animCurveTL354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 3 1 6 1 8 1;
createNode animCurveTL -n "animCurveTL355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTL -n "animCurveTL356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTL -n "animCurveTL357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 3 1 6 1 8 1;
createNode animCurveTL -n "animCurveTL358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.03051835782609956 3 -0.0077728219517184515 
		6 0.0066933216143579997 8 0.009119361506525361;
createNode animCurveTL -n "animCurveTL359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.83223984443990662 3 0.68531953232099319 
		6 0.84649195757100448 8 1.5542323161653797;
createNode animCurveTL -n "animCurveTL360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.11139188256622042 3 -0.12447313077459499 
		6 -0.32796708258452451 8 -1.4949675144322965;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.0013098418712615967;
	setAttr -s 4 ".kiy[3]"  -0.99999916553497314;
	setAttr -s 4 ".kox[3]"  0.0013098439667373896;
	setAttr -s 4 ".koy[3]"  -0.99999916553497314;
createNode animCurveTA -n "animCurveTA1010";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 20.950825280283908 3 23.686988860744673 
		6 -20.451217483196501 8 -65.585535993622102;
createNode animCurveTA -n "animCurveTA1011";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 9.3491547302982809 6 11.948637237067912 
		8 11.948637237067985;
createNode animCurveTA -n "animCurveTA1012";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 -1.4726187357019898 6 -1.4726187357019873 
		8 -1.47261873570199;
createNode animCurveTA -n "animCurveTA1013";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1014";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1015";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1016";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1017";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1018";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1019";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1020";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1021";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1022";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1023";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1024";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1025";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1026";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1027";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1028";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1029";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1030";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1031";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1032";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1033";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1034";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1035";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1036";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1037";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1038";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "mrg_Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 -0.69163884744780491;
createNode animCurveTL -n "mrg_Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0.24376503020897994;
createNode animCurveTL -n "mrg_Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0.44841910314659961;
createNode animCurveTA -n "animCurveTA1039";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1040";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1041";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "mrg_Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0.71012400136723108;
createNode animCurveTL -n "mrg_Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0.47076628974155943;
createNode animCurveTL -n "mrg_Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0.075519476331700294;
createNode animCurveTA -n "animCurveTA1042";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1043";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1044";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.3705977767760478;
createNode animCurveTL -n "animCurveTL368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.1618658070195953;
createNode animCurveTL -n "animCurveTL369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.12044246479037771;
createNode animCurveTA -n "animCurveTA1045";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1046";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1047";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.3705978542308779;
createNode animCurveTL -n "animCurveTL371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.1618621235956237;
createNode animCurveTL -n "animCurveTL372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.12044250833667494;
createNode animCurveTA -n "animCurveTA1048";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1049";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1050";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
createNode animCurveTL -n "animCurveTL376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
createNode animCurveTA -n "animCurveTA1051";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 4.7921462321675188 3 -35.280552173416005 
		6 -55.670009807431882 8 -8.3722158444725991;
createNode animCurveTA -n "animCurveTA1052";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -53.856694228597611 3 2.5816969024663949 
		6 -13.611207391781139 8 -23.977773843939509;
createNode animCurveTA -n "animCurveTA1053";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.098529366997784 3 53.251722291748415 
		6 27.497501682495685 8 33.682233492227084;
createNode animCurveTA -n "animCurveTA1054";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 17.196782419487917 3 -29.573411147573808 
		6 -8.563012295375076 8 -25.419177015304651;
createNode animCurveTA -n "animCurveTA1055";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -60.10188422410716 3 2.3677661369630982 
		6 20.507370224920166 8 -41.133378951685579;
createNode animCurveTA -n "animCurveTA1056";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -21.001041665835174 3 84.877951062747869 
		6 107.09766021769482 8 27.165866266794364;
createNode animCurveTA -n "animCurveTA1057";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 59.468287502559065 3 89.911651693682515 
		6 32.789921414575325 8 39.038962484432531;
createNode animCurveTA -n "animCurveTA1058";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 59.305463658789549 3 60.185649943194235 
		6 3.2573665005240873 8 63.89762232629036;
createNode animCurveTA -n "animCurveTA1059";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 18.476235154862632 3 -25.061733991251923 
		6 22.425089944480888 8 22.425089944480888;
createNode animCurveTA -n "animCurveTA1060";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 10.082003051124275 3 10.082003051124259 
		6 28.721836935985287 8 28.721836935985287;
createNode animCurveTA -n "animCurveTA1061";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -4.720189328892868 3 -4.7201893288928662 
		6 7.6266657808874898 8 7.6266657808874898;
createNode animCurveTA -n "animCurveTA1062";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 20.127263792592359 3 -13.555270109330269 
		6 -18.847227132200882 8 2.0447427744579891;
createNode animCurveTA -n "animCurveTA1063";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 11.615881410206432 3 11.615881410206432 
		6 44.709551992010134 8 5.5429207840541244;
createNode animCurveTA -n "animCurveTA1064";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.3215928107553504 3 0.32159281075535068 
		6 -10.402617814119608 8 34.868956102818473;
createNode animCurveTA -n "animCurveTA1065";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -33.352561559544277 3 11.093319219895511 
		6 -32.123718040735945 8 -32.123718040735945;
createNode animCurveTA -n "animCurveTA1066";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 39.646570824829801 3 59.959644693642325 
		6 19.407819173437478 8 19.407819173437478;
createNode animCurveTA -n "animCurveTA1067";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 11.057385060550727 3 48.106469618696913 
		6 4.4751336445171193 8 4.4751336445171193;
createNode animCurveTA -n "animCurveTA1068";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA1069";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA1070";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 72.57093380156806 3 67.810939637714412 
		6 -11.433734901667266 8 -11.433734901667266;
createNode animCurveTA -n "animCurveTA1071";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1072";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1073";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "mrg_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "mrg_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "mrg_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "mrg_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "mrg_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "mrg_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA1080";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA1081";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA1082";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 72.677699265164733 3 -9.6043099083038648 
		6 -9.6043099083038648 8 -9.6043099083038648;
createNode animCurveTA -n "animCurveTA1083";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.2945941069882385 3 1.2945941069882381 
		6 3.1198943483277444 8 3.1198943483277444;
createNode animCurveTA -n "animCurveTA1084";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.3208811165553156 3 3.3208811165553147 
		6 1.7238169885910806 8 1.7238169885910806;
createNode animCurveTA -n "animCurveTA1085";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -27.52582447785997 3 -27.525824477859967 
		6 12.268388134198538 8 12.268388134198538;
createNode animCurveTA -n "animCurveTA1086";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 6.308963718970988 6 6.9103069920743438 
		8 6.2649641345144982;
createNode animCurveTA -n "animCurveTA1087";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 5.7322064377030788 6 4.9896665793491746 
		8 5.780294047116163;
createNode animCurveTA -n "animCurveTA1088";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.8319513947347925 3 21.713029036968567 
		6 28.142527379210097 8 21.274336518663382;
createNode animCurveTA -n "animCurveTA1089";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA1090";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA1091";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 15.545129367555198;
createNode animCurveTA -n "animCurveTA1092";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 14.794623739018833 6 14.794623739018833 
		8 22.334659718447345;
createNode animCurveTA -n "animCurveTA1093";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 22.395186436807986 6 22.395186436807986 
		8 14.88860504567513;
createNode animCurveTA -n "animCurveTA1094";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -8.5537919350489524 3 -0.5621560964572182 
		6 -0.5621560964572182 8 28.394145862336995;
createNode animCurveTA -n "animCurveTA1095";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 22.078247600383854 6 18.977509968842877 
		8 20.941119161468873;
createNode animCurveTA -n "animCurveTA1096";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 -9.6389434643346714 6 -14.961349670392833 
		8 -11.985276261935251;
createNode animCurveTA -n "animCurveTA1097";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -8.6139304882271457 3 7.1941842949003796 
		6 21.659909015129006 8 13.249280848849958;
createNode animCurveTA -n "animCurveTA1098";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA1099";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA1100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 72.677699265164733 3 21.472939016776969 
		6 21.472939016776969 8 21.472939016776969;
createNode animCurveTA -n "animCurveTA1101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.043585476863095891 3 26.194612819039175 
		6 -15.564086868905925 8 -15.564086868905925;
createNode animCurveTA -n "animCurveTA1102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 28.449471067828945 3 42.116293762219605 
		6 5.9119201843313247 8 5.9119201843313247;
createNode animCurveTA -n "animCurveTA1103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 15.739680343212559 3 51.312599966148291 
		6 -0.89181587725581968 8 -0.89181587725581968;
createNode animCurveTA -n "animCurveTA1104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA1105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA1106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 72.57093380156806 3 55.749331591600708 
		6 21.151890972437133 8 21.151890972437133;
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
	setAttr ".o" 8;
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
	setAttr ".outf" 23;
	setAttr ".an" yes;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
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
connectAttr "mrg_hit_by_car_impactSource.st" "clipLibrary1.st[0]";
connectAttr "mrg_hit_by_car_impactSource.du" "clipLibrary1.du[0]";
connectAttr "mrg_Extra_Attributes_translateX.a" "clipLibrary1.cel[0].cev[0].cevr"
		;
connectAttr "mrg_Extra_Attributes_translateY.a" "clipLibrary1.cel[0].cev[1].cevr"
		;
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL341.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA988.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "mrg_Hoop_Root_IK_FK_RFoot.a" "clipLibrary1.cel[0].cev[6].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_FK_LFoot.a" "clipLibrary1.cel[0].cev[7].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary1.cel[0].cev[8].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary1.cel[0].cev[9].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_FK_RArm.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_FK_LArm.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "animCurveTA989.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA990.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA991.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "mrg_Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "mrg_Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "mrg_Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
connectAttr "animCurveTL346.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL347.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL348.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA992.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA993.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA994.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL349.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL350.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL351.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA995.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA996.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA997.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA998.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA999.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1000.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1001.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1002.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1003.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA1004.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA1005.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA1006.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA1007.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA1008.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA1009.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL352.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL353.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL354.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL355.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL356.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL357.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL358.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL359.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL360.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1010.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1011.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1012.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1013.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1014.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1015.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1016.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1017.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1018.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1019.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1020.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1021.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1022.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1023.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1024.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1025.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1026.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1027.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1028.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1029.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1030.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1031.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1032.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA1033.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA1034.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA1035.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1036.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1037.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1038.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "mrg_Right_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "mrg_Right_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "mrg_Right_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "animCurveTA1039.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1040.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1041.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "mrg_Left_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "mrg_Left_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "mrg_Left_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "animCurveTA1042.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1043.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1044.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL367.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL368.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL369.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1045.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1046.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1047.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL370.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL371.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL372.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1048.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1049.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1050.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL373.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL374.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL375.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL376.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL377.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL378.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1051.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1052.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1053.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1054.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1055.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1056.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1057.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1058.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1059.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1060.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1061.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1062.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1063.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1064.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1065.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1066.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1067.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1068.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1069.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1070.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1071.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1072.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1073.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "mrg_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "mrg_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "mrg_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "mrg_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "mrg_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "mrg_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1080.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1081.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1082.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1083.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1084.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1085.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1086.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1087.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1088.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1089.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1090.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1091.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1092.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1093.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1094.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1095.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1096.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1097.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1098.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1099.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1100.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1101.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1102.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1103.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1104.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1105.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1106.a" "clipLibrary1.cel[0].cev[167].cevr";
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
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[10].olnk";
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
// End of mrg_hit_by_car_impact.ma
