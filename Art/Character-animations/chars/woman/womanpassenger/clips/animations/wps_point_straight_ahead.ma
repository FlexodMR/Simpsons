//Maya ASCII 4.0 scene
//Name: wps_point_straight_ahead.ma
//Last modified: Wed, Aug 14, 2002 11:29:37 AM
requires maya "4.0";
requires "p3dmayaexp" "18.2";
requires "p3dSimpleShader" "18.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "wps_point_straight_aheadSource";
	setAttr ".ihi" 0;
	setAttr ".du" 30;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL247";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL248";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.98752775572053031 30 0.98752775572053031;
createNode animCurveTL -n "animCurveTL250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTL -n "animCurveTL251";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.7862033266438363 30 0.7862033266438363;
createNode animCurveTA -n "animCurveTA730";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTU -n "animCurveTU25";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU26";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU27";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU28";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU29";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU30";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "wps_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTU -n "wps_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA731";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA732";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA733";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL252";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL253";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL254";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.0182182727496343 4 1.0182182727496343 
		8 1.0182182727496343 13 1.0182182727496343 15 1.0182182727496343 17 1.0182182727496343 
		26 1.0182182727496343 30 1.0182182727496343;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.51781298511506035 4 0.51781298511506035 
		8 0.51781298511506035 13 0.51781298511506035 15 0.51781298511506035 17 0.51781298511506035 
		26 0.51781298511506035 30 0.51781298511506035;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.725016696635667 4 1.725016696635667 
		8 1.725016696635667 13 1.725016696635667 15 1.725016696635667 17 1.725016696635667 
		26 1.725016696635667 30 1.725016696635667;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA734";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -36.819011955683756 4 -36.819011955683756 
		8 -36.819011955683756 13 -36.819011955683756 15 -36.819011955683756 17 -36.819011955683756 
		26 -36.819011955683756 30 -36.819011955683756;
createNode animCurveTA -n "animCurveTA735";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTA -n "animCurveTA736";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTL -n "animCurveTL258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.3209532433521722 4 1.3209532433521722 
		8 1.3209532433521722 13 1.3209532433521722 15 1.3209532433521722 17 1.3209532433521722 
		26 1.3209532433521722 30 1.3209532433521722;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.49929236591446868 4 0.49929236591446868 
		8 0.49929236591446868 13 0.49929236591446868 15 0.49929236591446868 17 0.49929236591446868 
		26 0.49929236591446868 30 0.49929236591446868;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.7640779368499853 4 1.7640779368499853 
		8 1.7640779368499853 13 1.7640779368499853 15 1.7640779368499853 17 1.7640779368499853 
		26 1.7640779368499853 30 1.7640779368499853;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA737";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -24.204848230542304 4 -24.204848230542304 
		8 -24.204848230542304 13 -24.204848230542304 15 -24.204848230542304 17 -24.204848230542304 
		26 -24.204848230542304 30 -24.204848230542304;
createNode animCurveTA -n "animCurveTA738";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTA -n "animCurveTA739";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTA -n "animCurveTA740";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA741";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA742";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA743";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA744";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA745";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA746";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA747";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA748";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA749";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA750";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA751";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTL -n "animCurveTL262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTL -n "animCurveTL263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 4 1 8 1 13 1 15 1 17 1 26 1 
		30 1;
createNode animCurveTL -n "animCurveTL264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTL -n "animCurveTL265";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
createNode animCurveTL -n "animCurveTL266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 4 1 8 1 13 1 15 1 17 1 26 1 
		30 1;
createNode animCurveTL -n "animCurveTL267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.2031997596013333 4 1.2031997596013333 
		8 1.2031997596013333 13 1.2031997596013333 15 1.2031997596013333 17 1.2031997596013333 
		26 1.2031997596013333 30 1.2031997596013333;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.74320840376740638 4 0.74320840376740638 
		8 0.74320840376740638 13 0.74320840376740638 15 0.74320840376740638 17 0.74320840376740638 
		26 0.74320840376740638 30 0.74320840376740638;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.95790690250061006 4 0.95790690250061006 
		8 0.95790690250061006 13 0.95790690250061006 15 0.95790690250061006 17 0.95790690250061006 
		26 0.95790690250061006 30 0.95790690250061006;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA752";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -47.088616656908457 4 -40.689146264708782 
		8 -40.689146264708782 13 -27.760919356736924 15 -29.364464657380609 17 -30.041285310088416 
		26 -30.041285310088416 30 -47.088616656908457;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.92236220836639404 0.79918074607849121 
		0.76303613185882568 0.9582211971282959 0.9994814395904541 0.82438337802886963 
		0.40894582867622375;
	setAttr -s 8 ".kiy[0:7]"  0 0.38632622361183167 0.60109084844589233 
		0.64635586738586426 -0.28602826595306396 -0.032199885696172714 -0.56603187322616577 
		-0.91255867481231689;
createNode animCurveTA -n "animCurveTA753";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.0975263990809512 4 -1.9249533464854713 
		8 -1.9249533464854713 13 -1.9249533464854722 15 -1.9249533464854733 17 -2.1669449004366315 
		26 -2.1669449004366315 30 -2.0975263990809512;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.99993622303009033 1 1 0.99949866533279419 
		0.99993366003036499 0.99999606609344482 0.99995869398117065;
	setAttr -s 8 ".kiy[0:7]"  0 0.011294159106910229 0 0 -0.031660739332437515 
		-0.011518007144331932 0.0027959460858255625 0.0090864850208163261;
createNode animCurveTA -n "animCurveTA754";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.53932213336905677 4 -0.34711364429764807 
		8 -0.34711364429764807 13 -0.34711364429764724 15 -0.34711364429764724 17 
		-0.77356787439632069 26 -0.77356787439632069 30 0.53932213336905677;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.99832123517990112 1 1 0.99844557046890259 
		0.99979400634765625 0.99860483407974243 0.98555189371109009;
	setAttr -s 8 ".kiy[0:7]"  0 -0.057919688522815704 0 0 -0.055735956877470016 
		-0.020294992253184319 0.052805270999670029 0.16937388479709625;
createNode animCurveTA -n "animCurveTA755";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA756";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA757";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA758";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA759";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA760";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA761";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA762";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA763";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA764";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA765";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA766";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA767";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA768";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA769";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA770";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA771";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA772";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA773";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA774";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA775";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA776";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA777";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA778";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA779";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA780";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.16261187792304868 1 -0.31401759337411878 
		2 -0.46673372094344556 3 -0.58916968143214921 4 -0.66826191824832193 5 -0.70678371057070111 
		6 -0.72332917885854453 7 -0.73880440105001366 8 -0.76628632966316779 9 -0.81491437454499283 
		10 -0.84527768155606087 11 -0.81477334865286088 12 -0.72720816155618506 13 
		-0.6230313199294506 14 -0.50022404227715644 15 -0.36496941759345758 16 -0.39717694562977929 
		17 -0.45100016299115681 18 -0.44490546818501087 19 -0.43528660422049542 20 
		-0.42161909957293575 21 -0.40377115369087452 22 -0.38206895315519462 23 -0.35725200719045919 
		24 -0.33036803169610013 25 -0.30265551392170126 26 -0.27542873582136368 27 
		-0.24469181279941127 28 -0.21195948121000244 29 -0.18356436183292771 30 -0.16261187792304868;
createNode animCurveTL -n "Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.83267844404058533 1 -0.64472495158422827 
		2 -0.45837924220502296 3 -0.29801411105974568 4 -0.18287408443587794 5 -0.11751013050471838 
		6 -0.084784941823894067 7 -0.07258868489853057 8 -0.07238557390869621 9 -0.082468445865099979 
		10 -0.10606455874313891 11 -0.13830709398210408 12 -0.16679665509704122 13 
		-0.17455561379036852 14 -0.14872871165956497 15 -0.17298946295257808 16 -0.13505566377566047 
		17 -0.084297417946019734 18 -0.068636866454982223 19 -0.04417609000641539 
		20 -0.015534115512768435 21 0.012393762177567913 22 0.034377450350532954 
		23 0.044919466888384892 24 0.038442071185629464 25 0.0095908528715992879 
		26 -0.046334204431812111 27 -0.18790166740750244 28 -0.41489105852094382 
		29 -0.64856598662341147 30 -0.83267844404058533;
createNode animCurveTL -n "Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.090386867528879297 1 0.16651722241323899 
		2 0.30314340752621355 3 0.46720412328851552 4 0.60087514242272277 5 0.67006065250717484 
		6 0.68480504966352418 7 0.64658064284293548 8 0.55932865444878654 9 0.39346040777125962 
		10 0.15459159084797292 11 -0.085571589247728994 12 -0.2492393312136422 13 
		-0.27504737215826253 14 0.18935071627691227 15 0.76040472406333681 16 0.88891871096315811 
		17 0.8843926538359197 18 0.9116610116995344 19 0.94453631087328604 20 0.97863990138721135 
		21 1.0097537672742589 22 1.0339616971398713 23 1.0476809097137438 24 1.047542876995105 
		25 1.0300941285443774 26 0.99131398115589786 27 0.87666347579441817 28 0.65716886333202695 
		29 0.37443085786332475 30 0.090386867528879297;
createNode animCurveTA -n "Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 59.929423292753832 1 42.461423551443438 
		2 11.308434005656991 3 -32.558432799118954 4 -78.093692858838324 5 -94.023828122337974 
		6 -83.790000466106903 7 -66.018504074750282 8 -55.902122502957582 9 -53.869286780967698 
		10 -52.624723999101519 11 -52.272096975626624 12 -53.171204420762898 13 -58.680042935321708 
		14 -85.548013876583823 15 -103.95112180014723 16 -77.983965504437677 17 -63.787282402463042 
		18 -63.720335444323879 19 -67.137223901744122 20 -73.043295681183182 21 -80.322688155544881 
		22 -87.500045611341477 23 -92.734005688383846 24 -94.017281403366994 25 -89.343190632114002 
		26 -76.799366868586262 27 -43.186443144861684 28 1.6404127439476575 29 36.942732442974915 
		30 59.929423292753832;
createNode animCurveTA -n "Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 45.790364280405264 1 34.415030657543888 
		2 36.207630563894838 3 45.313612268358327 4 45.439336086245547 5 32.084431107339775 
		6 13.521288206668709 7 -3.5763404712889781 8 -16.265139965618861 9 -27.377232413280602 
		10 -39.754962468857521 11 -51.040593340209035 12 -57.172582375984234 13 -53.779994156683173 
		14 -2.8511870151237115 15 57.712094716027458 16 63.482550440893682 17 54.732764110766325 
		18 55.25647507189047 19 56.416944549215124 20 57.869477897576516 21 59.264064809387776 
		22 60.357532469248746 23 61.110256275067812 24 61.676852915724545 25 62.22908260734733 
		26 62.618990713291367 27 60.687225131379016 28 53.239111612835849 29 46.326494165996458 
		30 45.790364280405264;
createNode animCurveTA -n "Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 89.927469671622774 1 77.374021957864429 
		2 52.845411748533323 3 19.434241183056649 4 -19.013187129037068 5 -44.7777498555878 
		6 -56.039556299734379 7 -58.155662620850599 8 -56.177819580998239 9 -52.203868283152005 
		10 -48.073932151126073 11 -46.758150928831739 12 -48.864916749570533 13 -51.224420767845494 
		14 -54.252948912624348 15 -53.758539737699415 16 -29.01009015663865 17 -20.650042250318922 
		18 -20.576440802279137 19 -23.47374764230144 20 -28.496205907567873 21 -34.694732284824916 
		22 -40.80041805651517 23 -45.214891402757495 24 -46.195124424643971 25 -42.00209603552981 
		26 -30.965466200673998 27 -1.5758825669137246 28 37.456854810613521 29 69.008511310190443 
		30 89.927469671622774;
createNode animCurveTL -n "Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.20793334527655816 1 0.25904530847772833 
		2 0.34911294322938546 3 0.45669254077585492 4 0.54453027962504597 5 0.5979187593985299 
		6 0.62141874082986737 7 0.60810538127436731 8 0.55398876218155779 9 0.45058849533185652 
		10 0.31351093526393781 11 0.17649142782900926 12 0.066617225741972569 13 
		-0.0040821401949619942 14 -0.01491553521712433 15 -0.0040602114443777284 
		16 -0.018797676535644427 17 -0.031501610184998301 18 -0.032288490013168032 
		19 -0.034178905358300538 20 -0.036309778512440972 21 -0.037807555318327676 
		22 -0.03777574444128106 23 -0.035296971333597188 24 -0.029442459420719731 
		25 -0.019280230746856548 26 -0.003874698331220543 27 0.02972299722569403 
		28 0.084970039710188988 29 0.1487191486065757 30 0.20793334527655816;
createNode animCurveTL -n "Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.84194018189928654 1 -0.80957306044922084 
		2 -0.76656320008124679 3 -0.71685891087099696 4 -0.67285925670673696 5 -0.64742596056398893 
		6 -0.63906385767868923 7 -0.6414996887791844 8 -0.64811748180868933 9 -0.6612633370157045 
		10 -0.68902415312009713 11 -0.73250213639895034 12 -0.78605814025272291 13 
		-0.83663848354173598 14 -0.85088125244700219 15 -0.84686881483191745 16 -0.85302630016636982 
		17 -0.85694999893528634 18 -0.85664688680017598 19 -0.85581664747217023 20 
		-0.85458319172994712 21 -0.85307686430991136 22 -0.85144171335490382 23 -0.84983381841464167 
		24 -0.84841156028513853 25 -0.8473177418638429 26 -0.84665202595423572 27 
		-0.84667521988113315 28 -0.84649724777761803 29 -0.84490013109831752 30 -0.84194018189928654;
createNode animCurveTL -n "Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.00048716197021754227 1 0.070611874592017967 
		2 0.1303439225560426 3 0.15960600722239149 4 0.15827861751462366 5 0.13413194228445349 
		6 0.10096051051967521 7 0.080228126300195587 8 0.08740542759141505 9 0.11749830514576985 
		10 0.13746442852584523 11 0.12768552723067272 12 0.091677524465323762 13 
		0.047075197153246096 14 0.020554539257434855 15 0.015915481647978066 16 0.030399271531965012 
		17 0.044190897613455959 18 0.042567989422189284 19 0.039307614711103014 20 
		0.035033192623242115 21 0.030299347492458998 22 0.025523020708806039 23 0.020959008712283237 
		24 0.016718771315087901 25 0.012830613574467603 26 0.0093398471633816798 
		27 0.006508598073524041 28 0.004183009973896876 29 0.0021278303962934419 
		30 -0.00048716197021754227;
createNode animCurveTA -n "Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 31.546913396341154 1 13.775510033757415 
		2 -1.2245549450526905 3 -9.6321071137469456 4 -12.421829442765192 5 -12.810042103084413 
		6 -12.792400308437287 7 -13.088419757566861 8 -14.382248041318634 9 -17.395822704352753 
		10 -21.887122506244907 11 -27.168559459868835 12 -31.95454018321508 13 -30.419831834350866 
		14 -2.0270350089012248 15 11.392476651744749 16 41.375056477775146 17 58.284602318970201 
		18 57.843089364796867 19 57.030338161509924 20 55.425459995472579 21 52.668523085475833 
		22 48.518254959582492 23 42.810004178718273 24 35.308107207695755 25 25.636570881824042 
		26 13.990385256587112 27 0.33112557422410716 28 0.92766874655083309 29 15.359048872162466 
		30 31.546913396341154;
createNode animCurveTA -n "Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -29.777804226147087 1 -34.445940047193567 
		2 -37.394670596097733 3 -39.045926086711503 4 -39.423162868597878 5 -37.495893183375522 
		6 -34.268149080784077 7 -32.385409758219701 8 -34.558521612401591 9 -42.010708963870194 
		10 -52.753722059994992 11 -64.7193746933157 12 -75.917256211504295 13 -84.454741395588414 
		14 -83.742973980446877 15 -79.223750511419311 16 -77.642774781060865 17 -75.516190473694138 
		18 -75.459905681057535 19 -75.592412410087363 20 -75.858077352437206 21 -76.217242994425803 
		22 -76.644120203820449 23 -77.107342830850769 24 -77.529927961607441 25 -77.694385134271826 
		26 -77.068194808699644 27 -72.862989178300538 28 -60.817145705606364 29 -44.167676625911916 
		30 -29.777804226147087;
createNode animCurveTA -n "Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -82.514492469619711 1 -59.254612059440362 
		2 -38.026192609322159 3 -23.878426661286603 4 -17.210002830792309 5 -14.880294565183865 
		6 -14.218741121718644 7 -14.343631647475487 8 -14.277243557035753 9 -13.590872293174256 
		10 -12.813139330406411 11 -12.125588381817678 12 -12.0402834741992 13 -17.448073369276582 
		14 -46.489469932243715 15 -58.880814990600626 16 -88.457615597870713 17 -105.03012660820642 
		18 -104.56785493367894 19 -103.77648076989809 20 -102.20823885877665 21 -99.486380512865935 
		22 -95.367885625123435 23 -89.696601023285908 24 -82.245491642004367 25 -72.635811069568774 
		26 -61.037416543509295 27 -47.300404609101442 28 -47.576512788544917 29 -62.681609371309719 
		30 -82.514492469619711;
createNode animCurveTL -n "animCurveTL276";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.0647721020251719 4 1.3425321585487207 
		8 1.332224570654442 13 1.5889801968067965 15 1.8385950461457805 17 1.926055793334094 
		26 1.926055793334094 30 2.0647721020251719;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.003640240291133523 0.012172049842774868 
		0.0046079079620540142 0.0039555602706968784 0.041886772960424423 0.031223585829138756 
		0.0096115004271268845;
	setAttr -s 8 ".kiy[0:7]"  0 -0.99999338388442993 0.99992591142654419 
		0.99998939037322998 0.99999219179153442 0.99912238121032715 0.9995124340057373 
		0.99995380640029907;
createNode animCurveTL -n "animCurveTL277";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.7590071920447805 4 2.408094877524841 
		8 2.4759516132267914 13 2.4463312116376112 15 2.6393639837997971 17 2.8464282092800839 
		26 2.8464282092800839 30 1.7590071920447805;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.003719463013112545 0.078219018876552582 
		0.014277349226176739 0.0033325066324323416 0.017705095931887627 0.0039849318563938141 
		0.0012261418160051107;
	setAttr -s 8 ".kiy[0:7]"  0 0.99999308586120605 0.99693620204925537 
		0.99989807605743408 0.99999445676803589 0.99984323978424072 -0.99999207258224487 
		-0.99999922513961792;
createNode animCurveTL -n "animCurveTL278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.9261547314579206 4 1.5265020109225742 
		8 1.2954076590014105 13 1.5711578524908418 15 2.5254349311513802 17 2.6795337007219246 
		26 2.6795337007219246 30 1.9261547314579206;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.004227752797305584 0.067029371857643127 
		0.0018969734665006399 0.0012029604986310005 0.023787528276443481 0.0057517685927450657 
		0.00176980160176754;
	setAttr -s 8 ".kiy[0:7]"  0 -0.99999105930328369 0.99775099754333496 
		0.99999821186065674 0.9999992847442627 0.99971705675125122 -0.99998342990875244 
		-0.99999845027923584;
createNode animCurveTA -n "animCurveTA787";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 59.007910131897077 4 -87.641412077591283 
		8 -23.443385595712048 13 -64.499396160656119 15 -114.12716367974782 17 -96.788187355964041 
		26 -96.788187355964041 30 59.007910131897077;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.18220590054988861 0.59626859426498413 
		0.14584814012050629 0.23024068772792816 0.77124702930450439 0.15737733244895935 
		0.048976004123687744;
	setAttr -s 8 ".kiy[0:7]"  0 -0.9832603931427002 0.80278497934341431 
		-0.9893069863319397 -0.97313368320465088 0.63653594255447388 0.98753851652145386 
		0.99879997968673706;
createNode animCurveTA -n "animCurveTA788";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 71.601588453715053 4 5.8326066138353561 
		8 -53.093624604172518 13 -58.479882904765446 15 45.969385106489256 17 51.449276041778731 
		26 51.449276041778731 30 71.601588453715053;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.12162018567323685 0.25820586085319519 
		0.13374224305152893 0.069326981902122498 0.96762371063232422 0.77642881870269775 
		0.35446995496749878;
	setAttr -s 8 ".kiy[0:7]"  0 -0.9925767183303833 -0.96608990430831909 
		0.99101614952087402 0.99759399890899658 0.25239711999893188 0.63020497560501099 
		0.93506741523742676;
createNode animCurveTA -n "animCurveTA789";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 90.779043014820601 4 -20.78347600452641 
		8 -74.010086306878023 13 -47.901706678177597 15 -63.387145709365747 17 -49.774986085937662 
		26 -49.774986085937662 30 90.779043014820601;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.09232175350189209 0.53536003828048706 
		0.78292912244796753 0.97122687101364136 0.83923375606536865 0.17395192384719849 
		0.054272215813398361;
	setAttr -s 8 ".kiy[0:7]"  0 -0.99572920799255371 -0.84462398290634155 
		0.62211090326309204 -0.23815619945526123 0.54377084970474243 0.98475414514541626 
		0.99852615594863892;
createNode animCurveTL -n "animCurveTL279";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 3.1112480635238988 4 3.1191647124163113 
		8 3.1191647124163113 13 2.8614370767228712 15 2.8614370767228712 17 2.8614370767228712 
		26 2.8614370767228712 30 3.1112480635238988;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.31921949982643127 0.011639406904578209 
		0.0090531138703227043 1 1 0.017343839630484581 0.0053372932597994804;
	setAttr -s 8 ".kiy[0:7]"  0 0.94768083095550537 -0.99993228912353516 
		-0.99995899200439453 0 0 0.99984955787658691 0.99998575448989868;
createNode animCurveTL -n "animCurveTL280";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.7424766145627919 4 2.0843979170574354 
		8 2.0843979170574354 13 1.7861655623246184 15 1.7861655623246184 17 1.7861655623246184 
		26 1.7861655623246184 30 1.7424766145627919;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.0077988281846046448 0.010058761574327946 
		0.0078236376866698265 1 1 0.098701715469360352 0.030504578724503517;
	setAttr -s 8 ".kiy[0:7]"  0 0.99996960163116455 -0.99994939565658569 
		-0.99996942281723022 0 0 -0.99511706829071045 -0.99953460693359375;
createNode animCurveTL -n "animCurveTL281";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.8531126401564211 4 2.3850544720979467 
		8 2.3850544720979467 13 1.971761516402895 15 1.971761516402895 17 1.971761516402895 
		26 1.971761516402895 30 1.8531126401564211;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.005013016052544117 0.0072585828602313995 
		0.0056456229649484158 1 1 0.036497995257377625 0.011236931197345257;
	setAttr -s 8 ".kiy[0:7]"  0 0.99998742341995239 -0.99997365474700928 
		-0.99998408555984497 0 0 -0.99933373928070068 -0.99993687868118286;
createNode animCurveTA -n "animCurveTA790";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 26.27937306915485 4 -56.225518193004731 
		8 -56.225518193004731 13 -88.808544236675544 15 -88.808544236675544 17 -88.808544236675544 
		26 -88.808544236675544 30 26.27937306915485;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.18209145963191986 0.46659165620803833 
		0.37959572672843933 1 1 0.21088077127933502 0.066233381628990173;
	setAttr -s 8 ".kiy[0:7]"  0 -0.98328161239624023 -0.88447284698486328 
		-0.9251524806022644 0 0 0.97751176357269287 0.99780416488647461;
createNode animCurveTA -n "animCurveTA791";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -55.316964386970021 4 -74.52575010197333 
		8 -74.52575010197333 13 -83.878009663660919 15 -83.878009663660919 17 -83.878009663660919 
		26 -83.878009663660919 30 -55.316964386970021;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.62250256538391113 0.87839806079864502 
		0.81940609216690063 1 1 0.65606558322906494 0.25839388370513916;
	setAttr -s 8 ".kiy[0:7]"  0 -0.78261774778366089 -0.4779297411441803 
		-0.57321339845657349 0 0 0.75470387935638428 0.96603965759277344;
createNode animCurveTA -n "animCurveTA792";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -77.201572122121519 4 24.358801800121604 
		8 24.358801800121604 13 39.173779852465344 15 39.173779852465344 17 39.173779852465344 
		26 39.173779852465344 30 -77.201572122121519;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.14876721799373627 0.75747305154800415 
		0.66994798183441162 1 1 0.20864996314048767 0.065503820776939392;
	setAttr -s 8 ".kiy[0:7]"  0 0.988872230052948 0.6528664231300354 
		0.74240803718566895 0 0 -0.97799038887023926 -0.99785232543945313;
createNode animCurveTL -n "animCurveTL282";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.22996541113775407 4 0.35039089098226439 
		8 0.35039089098226439 13 0.35039089098226439 15 0.35039089098226439 17 0.35039089098226439 
		26 0.35039089098226439 30 0.22996541113775407;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.022138280794024467 1 1 1 1 
		0.035960253328084946 0.011071176268160343;
	setAttr -s 8 ".kiy[0:7]"  0 0.99975490570068359 0 0 0 0 -0.99935322999954224 
		-0.9999387264251709;
createNode animCurveTL -n "animCurveTL283";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.71572892866406468 4 -0.40854033940183732 
		8 -0.40854033940183732 13 -0.40854033940183732 15 -0.40854033940183732 17 
		-0.40854033940183732 26 -0.40854033940183732 30 -0.71572892866406468;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.0086805503815412521 1 1 1 1 
		0.014105022884905338 0.0043403985910117626;
	setAttr -s 8 ".kiy[0:7]"  0 0.99996232986450195 0 0 0 0 -0.99990051984786987 
		-0.99999058246612549;
createNode animCurveTL -n "animCurveTL284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.86045149817799893 4 -0.82408995422063858 
		8 -0.82408995422063858 13 -0.82408995422063858 15 -0.82408995422063858 17 
		-0.82408995422063858 26 -0.82408995422063858 30 -0.86045149817799893;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.073141127824783325 1 1 1 1 
		0.11833616346120834 0.036644149571657181;
	setAttr -s 8 ".kiy[0:7]"  0 0.99732160568237305 0 0 0 0 -0.99297356605529785 
		-0.9993283748626709;
createNode animCurveTL -n "animCurveTL285";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.017571725225418906 4 -0.77290696453185026 
		8 -0.20450723653405706 13 -0.11813963966250869 15 -0.68984788419704635 17 
		-0.68984788419704635 26 -0.68984788419704635 30 -0.017571725225418906;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.014263718388974667 0.0045817322097718716 
		0.0048075639642775059 0.0023321856278926134 1 0.0064456299878656864 0.001983308233320713;
	setAttr -s 8 ".kiy[0:7]"  0 -0.99989825487136841 0.99998950958251953 
		-0.99998843669891357 -0.99999725818634033 0 0.99997919797897339 0.99999803304672241;
createNode animCurveTL -n "animCurveTL286";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.54560785950824164 4 -0.71234308293286885 
		8 -2.2538924422637296 13 -1.6485356635480783 15 -1.71709588847092 17 -1.71709588847092 
		26 -1.71709588847092 30 -0.54560785950824164;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.0015610181726515293 0.0032044523395597935 
		0.0043467329815030098 0.019443944096565247 1 0.0036989741493016481 0.0011381529038771987;
	setAttr -s 8 ".kiy[0:7]"  0 -0.99999880790710449 -0.99999487400054932 
		0.99999058246612549 -0.99981093406677246 0 0.99999314546585083 0.99999934434890747;
createNode animCurveTL -n "animCurveTL287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.64724218630287966 4 -0.35872267288917942 
		8 -0.026600181797039095 13 -0.50055812019672996 15 -0.63901584433226744 17 
		-0.63901584433226744 26 -0.63901584433226744 30 -0.64724218630287966;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.0042965863831341267 0.021146541461348534 
		0.0038100206293165684 0.009629448875784874 1 0.46605631709098816 0.15999305248260498;
	setAttr -s 8 ".kiy[0:7]"  0 0.99999076128005981 -0.99977636337280273 
		-0.9999927282333374 -0.99995362758636475 0 -0.88475507497787476 -0.98711812496185303;
createNode animCurveTA -n "animCurveTA793";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 12.253734489678925 4 12.253734489678925 
		8 12.253734489678925 13 12.253734489678925 15 12.253734489678925 17 12.253734489678925 
		26 12.253734489678925 30 12.253734489678925;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA794";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -65.746751280844975 4 -65.746751280844961 
		8 -65.746751280844961 13 -65.746751280844961 15 -65.746751280844961 17 -65.746751280844961 
		26 -65.746751280844961 30 -65.746751280844975;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA795";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA796";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.061808866237340665 4 -0.061808866237337522 
		8 -0.061808866237337522 13 -0.061808866237337522 15 -0.061808866237337522 
		17 -0.061808866237337522 26 -0.061808866237337522 30 -0.061808866237340665;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA797";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -59.058178941076754 4 -59.058178941076754 
		8 -59.058178941076754 13 -59.058178941076754 15 -59.058178941076754 17 -59.058178941076754 
		26 -59.058178941076754 30 -59.058178941076754;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA798";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 16.57914742975785 4 16.579147429757843 
		8 16.579147429757843 13 16.579147429757843 15 16.579147429757843 17 16.579147429757843 
		26 16.579147429757843 30 16.57914742975785;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA799";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.5572674112203639 4 8.5572674112203622 
		8 8.5572674112203622 13 8.5572674112203622 15 8.5572674112203622 17 8.5572674112203622 
		26 8.5572674112203622 30 8.5572674112203639;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA800";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 15.711328223519061 4 15.711328223519057 
		8 15.711328223519057 13 15.711328223519057 15 15.711328223519057 17 15.711328223519057 
		26 15.711328223519057 30 15.711328223519061;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA801";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA802";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA803";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA804";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA805";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA806";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA807";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 10.423754966968488 4 10.423754966968488 
		8 10.423754966968488 13 10.423754966968488 15 10.423754966968488 17 10.423754966968488 
		26 10.423754966968488 30 10.423754966968488;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA808";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 27.7228482558439 4 27.722848255843903 
		8 27.722848255843903 13 27.722848255843903 15 27.722848255843903 17 27.722848255843903 
		26 27.722848255843903 30 27.7228482558439;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA809";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 21.576484776388224 4 21.576484776388227 
		8 21.576484776388227 13 21.576484776388227 15 21.576484776388227 17 21.576484776388227 
		26 21.576484776388227 30 21.576484776388224;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA810";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA811";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA812";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 27.080064458283051 4 27.080064458283051 
		8 27.080064458283051 13 27.080064458283051 15 27.080064458283051 17 27.080064458283051 
		26 27.080064458283051 30 27.080064458283051;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA813";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA814";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA815";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA816";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA817";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA818";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 30 13.994403295754109;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA819";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA820";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA821";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 30 13.994403295754109;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA822";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA823";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA824";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 27.911632519594587 4 27.911632519594587 
		8 20.676912208924175 13 -2.8884751571273899 15 -2.8884751571273899 17 -2.8884751571273899 
		26 -2.8884751571273899 30 27.911632519594587;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.90379828214645386 0.48732241988182068 
		0.49343985319137573 1 1 0.62758970260620117 0.24073821306228638;
	setAttr -s 8 ".kiy[0:7]"  0 -0.42795872688293457 -0.87322211265563965 
		-0.86977994441986084 0 0 0.77854430675506592 0.97059011459350586;
createNode animCurveTA -n "animCurveTA825";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA826";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA827";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA828";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.3937906322123035 4 -16.894615241884235 
		8 -17.591866777831331 13 -1.2409455654183972 15 -0.83616284987761158 17 4.3853999162080726 
		26 -1.2346070474440054 30 2.3937906322123035;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.60734283924102783 0.73935002088546753 
		0.62368333339691162 0.80519241094589233 0.99982017278671265 0.99679815769195557 
		0.90329289436340332;
	setAttr -s 8 ".kiy[0:7]"  0 -0.79443985223770142 0.67332130670547485 
		0.78167712688446045 0.59301364421844482 -0.018962489441037178 -0.079958871006965637 
		0.42902445793151855;
createNode animCurveTA -n "animCurveTA829";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.7843868968348546 4 -4.7566152092081317 
		8 -4.8088158427328684 13 -4.714759296236072 15 -4.8029047201253725 17 -5.4727445477999996 
		26 -4.7735702275188796 30 -1.7843868968348546;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.98096579313278198 0.99999701976776123 
		0.99999988079071045 0.99511373043060303 0.99999904632568359 0.98914498090744019 
		0.93124949932098389;
	setAttr -s 8 ".kiy[0:7]"  0 -0.19418062269687653 0.0024350711610168219 
		0.0004421509220264852 -0.098735220730304718 0.0013963171513751149 0.14694277942180634 
		0.36438223719596863;
createNode animCurveTA -n "animCurveTA830";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 13.23227595374661 4 9.8279619584646376 
		8 9.8553435098498969 13 11.910988978322814 15 7.0347711661700796 17 3.816720485183096 
		26 6.1936391284683561 30 13.23227595374661;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.97643506526947021 0.99273693561553955 
		0.97846055030822754 0.68637895584106445 0.99919945001602173 0.93502283096313477 
		0.73543417453765869;
	setAttr -s 8 ".kiy[0:7]"  0 -0.21581140160560608 0.12030541896820068 
		-0.20643395185470581 -0.72724407911300659 -0.040005739778280258 0.35458749532699585 
		0.67759621143341064;
createNode animCurveTA -n "animCurveTA831";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 9.415507349861949 8 2.8363933851058589 
		13 0.91124464128766047 15 0.85654945123998183 17 0.91124464128766047 26 -0.44745083087250964 
		30 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.98320156335830688 0.89629864692687988 
		0.98921149969100952 1 0.99807918071746826 0.99932718276977539 0.99828910827636719;
	setAttr -s 8 ".kiy[0:7]"  0 0.18252302706241608 -0.44345089793205261 
		-0.1464942991733551 0 -0.061951044946908951 -0.036677349358797073 0.058470968157052994;
createNode animCurveTA -n "animCurveTA832";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 14.406617532245269 8 15.308349980248096 
		13 3.29264545539586 15 2.6214817057830282 17 3.29264545539586 26 3.3868846426253985 
		30 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.70642507076263428 0.8397517204284668 
		0.72537040710449219 1 0.99933695793151855 0.99132066965103149 0.91418516635894775;
	setAttr -s 8 ".kiy[0:7]"  0 0.70778787136077881 -0.54297059774398804 
		-0.68835878372192383 0 0.036408938467502594 -0.13146628439426422 -0.40529680252075195;
createNode animCurveTA -n "animCurveTA833";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 -20.777985576238102 8 -3.8911336671994889 
		13 19.719841540607099 15 22.504257456010457 17 19.719841540607099 26 -18.570226435302946 
		30 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.96906733512878418 0.3907008171081543 
		0.45183971524238586 1 0.4553658664226532 0.78305935859680176 0.38044637441635132;
	setAttr -s 8 ".kiy[0:7]"  0 -0.2467963695526123 0.92051774263381958 
		0.89209914207458496 0 -0.89030438661575317 -0.62194699048995972 0.92480295896530151;
createNode animCurveTA -n "animCurveTA834";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.71032600031388204 4 1.4589889819003297 
		8 1.4589889819003297 13 1.4589889819003297 15 1.4589889819003297 17 1.4589889819003297 
		26 1.4589889819003297 30 0.71032600031388204;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.99880164861679077 1 1 1 1 0.99954569339752197 
		0.99523234367370605;
	setAttr -s 8 ".kiy[0:7]"  0 0.04894116148352623 0 0 0 0 -0.030140072107315063 
		-0.097532518208026886;
createNode animCurveTA -n "animCurveTA835";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 3.6938159239902011 4 0.4655725740268864 
		8 0.4655725740268864 13 0.4655725740268864 15 0.4655725740268864 17 0.4655725740268864 
		26 0.4655725740268864 30 3.6938159239902011;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.97839927673339844 1 1 1 1 0.99165266752243042 
		0.92113274335861206;
	setAttr -s 8 ".kiy[0:7]"  0 -0.20672406256198883 0 0 0 0 
		0.12893804907798767 0.38924863934516907;
createNode animCurveTA -n "animCurveTA836";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 14.572231982957494 4 7.2469521333106703 
		8 7.2469521333106703 13 7.2469521333106703 15 7.2469521333106703 17 7.2469521333106703 
		26 7.2469521333106703 30 14.572231982957494;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.90172052383422852 1 1 1 1 0.95912593603134155 
		0.72179222106933594;
	setAttr -s 8 ".kiy[0:7]"  0 -0.43231949210166931 0 0 0 0 
		0.28297960758209229 0.69210982322692871;
createNode animCurveTA -n "animCurveTA837";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.2796212519697261 4 -19.031526715799984 
		8 -23.20539159795284 13 0.073412861668066917 15 -0.13922626851448078 17 4.5253718881326499 
		26 -0.18068309363804 30 -2.2796212519697261;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.58968859910964966 0.6688418984413147 
		0.50145536661148071 0.86399435997009277 0.99999803304672241 0.96443098783493042 
		0.96426689624786377;
	setAttr -s 8 ".kiy[0:7]"  0 -0.80763071775436401 0.74340468645095825 
		0.86518353223800659 0.50350147485733032 -0.0019733363296836615 -0.26433467864990234 
		-0.26493269205093384;
createNode animCurveTA -n "animCurveTA838";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.2209313171847884 4 3.8840070108448987 
		8 1.8027112087474499 13 3.9334058517002393 15 3.9316293127802138 17 4.1647423754982098 
		26 4.1647423754982063 30 2.2209313171847884;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.999625563621521 0.9999958872795105 
		0.987557053565979 0.99954181909561157 0.99993842840194702 0.99694931507110596 
		0.96912062168121338;
	setAttr -s 8 ".kiy[0:7]"  0 -0.027362193912267685 0.0028738961555063725 
		0.15726125240325928 0.030268006026744843 0.011095473542809486 -0.078051701188087463 
		-0.24658717215061188;
createNode animCurveTA -n "animCurveTA839";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.0401232256568242 4 6.2313246099943047 
		8 6.7160887842272707 13 10.263038650237201 15 9.1206770656653564 17 8.5080661745179569 
		26 8.5080661745179498 30 8.0401232256568242;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.99626624584197998 0.97357720136642456 
		0.98420685529708862 0.97461360692977905 0.99957513809204102 0.99982243776321411 
		0.99812924861907959;
	setAttr -s 8 ".kiy[0:7]"  0 -0.086334288120269775 0.22835800051689148 
		0.17702218890190125 -0.22389346361160278 -0.029147820547223091 -0.018843911588191986 
		-0.061138994991779327;
createNode animCurveTA -n "animCurveTA840";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA841";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA842";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 33.429092416277157 4 33.429092416277157 
		8 18.329808518245969 13 18.511944466815123 15 18.511944466815123 17 18.511944466815123 
		26 18.511944466815123 30 33.429092416277157;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.71127462387084961 0.75524866580963135 
		0.99990719556808472 1 1 0.85718441009521484 0.45582610368728638;
	setAttr -s 8 ".kiy[0:7]"  0 -0.70291423797607422 -0.65543842315673828 
		0.013622472994029522 0 0 0.51500958204269409 0.89006882905960083;
createNode animCurveTA -n "animCurveTA843";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.2533422302317216 4 8.2533422302317216 
		8 8.2533422302317216 13 8.2533422302317216 15 8.2533422302317216 17 8.2533422302317216 
		26 8.2533422302317216 30 8.2533422302317216;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA844";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 23.263402056531085 4 23.263402056531085 
		8 23.263402056531085 13 23.263402056531085 15 23.263402056531085 17 23.263402056531085 
		26 23.263402056531085 30 23.263402056531085;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA845";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 20.166277752815617 4 20.166277752815617 
		8 20.166277752815617 13 20.166277752815617 15 20.166277752815617 17 20.166277752815617 
		26 20.166277752815617 30 20.166277752815617;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA846";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA847";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 13 0 15 0 17 0 26 0 
		30 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA848";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 17.254116939558369 4 17.254116939558369 
		8 17.254116939558369 13 17.254116939558369 15 17.254116939558369 17 17.254116939558369 
		26 17.254116939558369 30 17.254116939558369;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
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
	setAttr ".o" 16;
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
select -ne :characterPartition;
select -ne :hyperGraphLayout;
	setAttr ".cch" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".img" -type "string" "";
	setAttr ".ims" 1;
select -ne :ikSystem;
connectAttr "wps_point_straight_aheadSource.st" "clipLibrary1.st[0]";
connectAttr "wps_point_straight_aheadSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL247.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL248.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL249.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL250.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL251.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA730.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU25.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU26.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU27.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU28.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU29.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU30.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "wps_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "wps_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "animCurveTA731.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA732.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA733.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL252.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL253.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL254.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL255.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL256.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL257.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA734.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA735.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA736.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL258.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL259.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL260.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA737.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA738.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA739.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA740.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA741.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA742.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA743.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA744.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA745.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA746.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA747.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA748.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA749.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA750.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA751.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL261.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL262.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL263.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL264.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL265.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL266.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL267.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL268.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL269.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA752.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA753.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA754.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA755.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA756.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA757.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA758.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA759.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA760.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA761.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA762.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA763.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA764.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA765.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA766.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA767.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA768.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA769.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA770.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA771.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA772.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA773.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA774.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA775.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA776.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA777.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA778.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA779.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA780.a" "clipLibrary1.cel[0].cev[81].cevr";
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
connectAttr "animCurveTL276.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL277.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL278.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA787.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA788.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA789.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL279.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL280.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL281.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA790.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA791.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA792.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL282.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL283.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL284.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL285.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL286.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL287.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA793.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA794.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA795.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA796.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA797.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA798.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA799.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA800.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA801.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA802.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA803.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA804.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA805.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA806.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA807.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA808.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA809.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA810.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA811.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA812.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA813.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA814.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA815.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA816.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA817.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA818.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA819.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA820.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA821.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA822.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA823.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA824.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA825.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA826.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA827.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA828.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA829.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA830.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA831.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA832.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA833.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA834.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA835.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA836.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA837.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA838.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA839.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA840.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA841.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA842.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA843.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA844.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA845.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA846.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA847.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA848.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[8].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[13].llnk";
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
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[32].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[33].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[34].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[35].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[36].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[37].llnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of wps_point_straight_ahead.ma
