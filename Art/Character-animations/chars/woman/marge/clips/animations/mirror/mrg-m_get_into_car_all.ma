//Maya ASCII 4.0 scene
//Name: mrg-m_get_into_car_all.ma
//Last modified: Fri, Sep 13, 2002 04:02:58 PM
requires maya "4.0";
requires "p3dmayaexp" "18.2";
requires "p3dSimpleShader" "18.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_get_into_car_all";
	setAttr ".ihi" 0;
	setAttr ".du" 40;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL165";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kix[0:1]"  1 1.3333332538604736;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0.23333339393138885;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL166";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kix[0:1]"  1 1.3333332538604736;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0.23333339393138885;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "mrg_Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL167";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "mrg_Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA489";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 15 0 16 0 17 0 18 0 19 0 20 
		0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 
		0 36 0 37 0 38 0 39 0 40 0;
	setAttr -s 27 ".kit[26]"  1;
	setAttr -s 27 ".kot[0:26]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 27 ".kix[26]"  1;
	setAttr -s 27 ".kiy[26]"  0;
	setAttr -s 27 ".kox[0:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 27 ".koy[0:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "animCurveTU33";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU34";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU35";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU36";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU37";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU38";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU39";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 40 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU40";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 40 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA490";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA491";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA492";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL168";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL169";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL170";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.063939280413560756 4 -0.06393928041356077 
		6 -0.06393928041356077 10 -0.06393928041356077 13 -0.063939280413560756 15 
		-0.06393928041356077 18 -0.06393928041356077 21 -0.060836030114942652 25 
		-0.42810639701602748 29 -0.91739294931007653 33 -1.3209532433521722 36 -1.2549807197808469 
		40 -1.3209532433521722;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.096366718631329423 4 0.096366718631329423 
		6 0.096366718631329423 10 0.096366718631329423 13 0.096366718631329423 15 
		0.096366718631329423 18 0.096366718631329423 21 0.16774588460111983 25 0.44288331351338073 
		29 0.49929236591446868 33 0.49929236591446868 36 0.49929236591446868 40 0.49929236591446868;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.00078430246903575811 4 0.00078430246903575811 
		6 0.00078430246903575811 10 0.00078430246903575811 13 0.00078430246903575811 
		15 0.00078430246903575811 18 0.00078430246903575811 21 0.06225095438633 25 
		1.1321259845797069 29 1.5494570001921235 33 1.7640779368499853 36 1.7640779368499853 
		40 1.7640779368499853;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 3 
		1 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 3 
		1 9 9 9 9 9;
	setAttr -s 13 ".kix[7:12]"  0.0055326707661151886 0.001793068484403193 
		0.0042196926660835743 0.010871239006519318 1 1;
	setAttr -s 13 ".kiy[7:12]"  0.99998468160629272 0.99999839067459106 
		0.99999111890792847 0.99994093179702759 0 0;
	setAttr -s 13 ".kox[7:12]"  0.0055327103473246098 0.001793068484403193 
		0.0042196926660835743 0.010871239006519318 1 1;
	setAttr -s 13 ".koy[7:12]"  0.99998468160629272 0.99999839067459106 
		0.99999111890792847 0.99994093179702759 0 0;
createNode animCurveTA -n "animCurveTA493";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 0 
		21 22.010234457643321 25 -11.015597041658307 29 -23.806588583135124 33 -24.2048482305423 
		36 -23.806588583135124 40 -24.2048482305423;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA494";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 0 
		21 -1.6471102606573049 25 -41.044255556689905 29 -1.647110260657298 33 0 
		36 -1.647110260657298 40 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA495";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 0 
		21 -7.7922141916432555 25 -8.1273733030172544 29 -7.792214191643243 33 0 
		36 -7.792214191643243 40 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.1566550719173089 4 0.1566550719173089 
		6 0.1566550719173089 10 0.1566550719173089 13 0.1566550719173089 15 0.1566550719173089 
		18 0.1164935206328792 21 0.017882485635127312 25 0.017882485635127312 29 
		-0.32871587092970289 31 -0.59183177896178985 33 -1.0182182727496343 36 -0.92619931052361293 
		40 -1.0182182727496343;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		3 3 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		3 3 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.094731717598746656 4 0.13073580836402163 
		6 0.1101759161330768 10 0.094731717598746656 13 0.094731717598746656 15 0.14636400709895703 
		18 0.16386658739248755 21 0.11478196765528159 25 0.10524115292399172 29 0.26946934365310765 
		31 0.49608096533530072 33 0.51781298511506035 36 0.51781298511506035 40 0.51781298511506035;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		1 1 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		1 1 9 9 9 9 9;
	setAttr -s 14 ".kix[7:13]"  0.046675808727741241 0.097306422889232635 
		0.0051171188242733479 0.0053688269108533859 0.076467201113700867 1 1;
	setAttr -s 14 ".kiy[7:13]"  -0.99891006946563721 0.99525439739227295 
		0.99998688697814941 0.99998557567596436 0.99707210063934326 0 0;
	setAttr -s 14 ".kox[7:13]"  0.046675898134708405 0.097306400537490845 
		0.0051171188242733479 0.0053688269108533859 0.076467201113700867 1 1;
	setAttr -s 14 ".koy[7:13]"  -0.99891006946563721 0.99525439739227295 
		0.99998688697814941 0.99998557567596436 0.99707210063934326 0 0;
createNode animCurveTL -n "animCurveTL176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.064904406754016014 4 -0.064904406754016042 
		6 -0.064904406754016042 10 -0.064904406754016042 13 -0.064904406754016014 
		15 -0.064904406754016042 18 0.38761032248211302 21 0.77693513858164143 25 
		0.77693513858164143 29 1.0307354337114039 31 1.3640374412798904 33 1.725016696635667 
		36 1.725016696635667 40 1.725016696635667;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		3 3 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		3 3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA496";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 4 9.7439728939236048 6 2.7839922554067478 
		10 0 13 0 15 15.829425701546842 18 14.331626443463124 21 -10.811641225563552 
		25 1.5040871012270867 29 7.2345129325716782 31 -16.158061478964488 33 -36.819011955683756 
		36 -37.968729457000954 40 -36.819011955683756;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA497";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 25.948901905116401 4 25.948901905116401 
		6 25.948901905116401 10 25.948901905116401 13 25.948901905116401 15 25.948901905116429 
		18 0.4082319874018141 21 -9.0830972443010491 25 -9.0830972443010527 29 69.701631783905754 
		31 42.70484598509212 33 0 36 6.734512670826839 40 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		3 3 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		3 3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA498";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 4 0 6 0 10 0 13 0 15 0 18 -0.50956548566278548 
		21 -2.954679702671601 25 -2.9546797026715965 29 -4.4294098373784498 31 -9.2988248217141081 
		33 0 36 -13.85301503894679 40 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		3 3 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		3 3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA499";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA500";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA501";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA502";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA503";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA504";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA505";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA506";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA507";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA508";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA509";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA510";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 0 
		21 0 25 0 29 0 33 0 36 0 40 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 0 
		21 0 25 0 29 0 33 0 36 0 40 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 4 1 6 1 10 1 13 1 15 1 18 1 
		21 1 25 1 29 1 33 1 36 1 40 1;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 0 
		21 0 25 0 29 0 33 0 36 0 40 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 0 
		21 0 25 0 29 0 33 0 36 0 40 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 4 1 6 1 10 1 13 1 15 1 18 1 
		21 1 25 1 29 1 33 1 36 1 40 1;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.065562039591274171 4 -0.029454009974151624 
		6 -0.071371056813993111 10 0.055669242380392982 13 0.065562039591274171 15 
		0.022123289673713065 18 0.0012580536386433217 21 -0.074430363422443871 25 
		-0.15312797444950182 29 -0.97549240107174118 33 -1.2031997596013333 36 -0.90993822008277991 
		40 -1.2031997596013333;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.98665907642604678 4 0.98665907642604678 
		6 0.9733426335557761 10 0.9733426335557761 13 0.98665907642604678 15 0.96133874737882707 
		18 0.92825809021196171 21 0.89696705746080796 25 0.89127154391731223 29 0.84774115284419893 
		33 0.74320840376740638 36 0.74267409856230726 40 0.74320840376740638;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0.075228259357065508 6 0 
		10 0 13 0 15 0.18881674669046031 18 0.31883914369988964 21 0.50950192213466194 
		25 0.74783071975095572 29 0.86692665712596562 33 0.95790690250061006 36 1.0182589092355252 
		40 0.95790690250061006;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA511";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.62843630316474508 4 -2.2362608750909985 
		6 3.3088142671952059 10 2.2213518221595017 13 -0.62843630316474508 15 -4.0647210446877668 
		18 -2.935775021023272 21 -3.0762169050940038 25 -6.5591355069755881 29 -16.566395863032415 
		33 -47.088616656908435 36 -5.4513933106138657 40 -47.088616656908435;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA512";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 5.8284402688137167 4 -26.87011774166238 
		6 -32.156418041150552 10 -19.301447906299206 13 5.8284402688137167 15 -6.129632983176454 
		18 -13.600868200262255 21 -21.932677743389643 25 3.7197865316961756 29 36.05299868564056 
		33 2.0975263990809503 36 -0.71074198285418522 40 2.0975263990809503;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA513";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1.295636019309746 4 5.0680510204987241 
		6 2.3323066059741566 10 1.7971044910279799 13 1.295636019309746 15 1.7490863204697844 
		18 0.84256151123097234 21 1.3015925165258879 25 5.0537228151421463 29 19.695463475605692 
		33 -0.53932213336905643 36 -22.697660472141617 40 -0.53932213336905643;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA514";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA515";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA516";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA517";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA518";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA519";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA520";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA521";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA522";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA523";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA524";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA525";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA526";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA527";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA528";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA529";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA530";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA531";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA532";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA533";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA534";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 18 0 21 0 25 0 40 0;
	setAttr -s 5 ".kit[2:4]"  9 1 1;
	setAttr -s 5 ".kot[2:4]"  9 9 5;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA535";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 18 0 21 0 25 0 40 0;
	setAttr -s 5 ".kit[2:4]"  9 1 1;
	setAttr -s 5 ".kot[2:4]"  9 9 5;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA536";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 18 0 21 -24.501661700242042 
		25 0 40 0;
	setAttr -s 5 ".kit[2:4]"  9 1 1;
	setAttr -s 5 ".kot[2:4]"  9 9 5;
	setAttr -s 5 ".kix[3:4]"  0.29765972495079041 1;
	setAttr -s 5 ".kiy[3:4]"  0.95467203855514526 0;
createNode animCurveTA -n "animCurveTA537";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA538";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA539";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL186";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.5198069948790518 40 -0.5198069948790518;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL187";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 40 -0.72394202659893114;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL188";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 40 0.36439499068905612;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA540";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965317 40 7.7976222737965299;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA541";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 30.409274105849079 40 30.409274105849079;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA542";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.859940280210893 40 64.859940280210878;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL189";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.43524234076486068 40 0.43524234076486068;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL190";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 40 -0.82665738350180629;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL191";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 40 0.27773886459742925;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA543";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA544";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -28.652637602052774 40 -28.652637602052774;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA545";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.676908227303443 40 -64.676908227303443;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.31432036959158904 4 -0.27611660715593522 
		6 -0.30306943367117128 10 -0.34985126519584359 13 -0.31432036959158904 15 
		-0.42203808342627286 18 -0.50117599830148207 21 -0.78606055305990008 25 -1.4378619651133846 
		29 -3.196861586353851 33 -3.1112480635238988 36 -2.5110052138231755 40 -3.1112480635238988;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 2.2297686973003263 4 2.329626912350319 
		6 2.3688316761925643 10 2.2903031628445603 13 2.2297686973003263 15 2.5995382158833156 
		18 2.5683839932152712 21 2.5185373193309615 25 2.6277327511662909 29 1.8065373761937127 
		33 1.7424766145627919 36 2.2439371616167576 40 1.7424766145627919;
	setAttr -s 13 ".kit[0:12]"  3 9 9 1 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 1 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kix[3:12]"  0.0099690668284893036 0.0053895651362836361 
		0.0049219466745853424 0.02468356117606163 0.039285272359848022 0.0037452925462275743 
		0.0030122969765216112 0.0053344792686402798 1 0.0026588914915919304;
	setAttr -s 13 ".kiy[3:12]"  -0.99995023012161255 0.9999854564666748 
		0.9999879002571106 -0.9996953010559082 0.99922806024551392 -0.9999929666519165 
		-0.99999547004699707 0.99998575448989868 0 -0.99999648332595825;
	setAttr -s 13 ".kox[3:12]"  0.0099688898772001266 0.0053895651362836361 
		0.0049219466745853424 0.02468356117606163 0.039285272359848022 0.0037452925462275743 
		0.0030122969765216112 0.0053344792686402798 1 0.0026588914915919304;
	setAttr -s 13 ".koy[3:12]"  -0.99995023012161255 0.9999854564666748 
		0.9999879002571106 -0.9996953010559082 0.99922806024551392 -0.9999929666519165 
		-0.99999547004699707 0.99998575448989868 0 -0.99999648332595825;
createNode animCurveTL -n "animCurveTL194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.016524074637843583 4 -0.41226098142694495 
		6 -0.47683283613335631 10 -0.28047718753840001 13 0.016524074637843583 15 
		0.38340846976683873 18 0.70351972465722623 21 1.1754419784072698 25 1.3207303366181031 
		29 1.8490287668331136 33 1.8531126401564211 36 1.8477632277561455 40 1.8531126401564211;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 16.226511010665412 4 16.226511010665405 
		6 16.226511010665405 10 16.226511010665405 13 16.226511010665412 15 55.598837649680043 
		18 30.40552687334386 21 -3.6353685169651868 25 36.020908932246329 29 -2.5322478418320902 
		33 26.27937306915484 36 26.719919114785494 40 26.27937306915484;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 8.5139660854992858 4 8.513966085499284 
		6 8.513966085499284 10 8.513966085499284 13 8.5139660854992858 15 30.973734338623142 
		18 57.071878589129092 21 43.075403304160062 25 26.331229507995829 29 19.318643422490137 
		33 55.316964386970021 36 27.3481632338883 40 55.316964386970021;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 68.213989601412422 4 68.213989601412422 
		6 68.213989601412422 10 68.213989601412422 13 68.213989601412422 15 82.208920420259716 
		18 59.188089930048456 21 1.3704436087665239 25 12.474571549991943 29 51.024861193325769 
		33 77.201572122121519 36 45.372205371553832 40 77.201572122121519;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.65311611999272123 2 0.50567058071632187 
		4 -0.50553612246045976 6 -0.75826257377671979 8 0.13212416502999028 13 0.65311611999272123 
		15 0.74291266125027167 18 0.69270034776330403 21 0.66063460144256558 25 0.28658489752780442 
		29 -1.564473606551771 33 -2.0647721020251719 36 -0.33301913643447956 40 -2.0647721020251719;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 2.2462096125327005 2 2.2912110954199476 
		4 2.4095613538943814 6 2.4545151175300246 8 2.4426005562565085 13 2.2462096125327005 
		15 2.277387261807831 18 2.233229147381159 21 2.308938460808724 25 2.3637869795264534 
		29 2.3662715225099338 33 1.7590071920447805 36 2.211366408225683 40 1.7590071920447805;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.097994651149805143 2 0.31680144314551956 
		4 0.7055516789982974 6 0.89362886141921405 8 0.81681147880284377 13 -0.097994651149805143 
		15 0.051071703262100004 18 0.52246763255256345 21 1.1315535315463634 25 1.6762835910554155 
		29 1.7901668730017459 33 1.9261547314579206 36 2.5619048374060109 40 1.9261547314579206;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA549";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 5.4739599453216465 2 29.254450203918026 
		4 76.788472133756997 6 27.510925858298908 8 61.647256158775171 13 5.4739599453216465 
		15 10.322809514409178 18 -10.826466618605725 21 -3.7025266420285567 25 13.002416091630163 
		29 8.0835096882199675 33 59.00791013189712 36 -19.345874397196617 40 59.00791013189712;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA550";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -8.5874521608419823 2 -19.23546056350569 
		4 -39.165963251035002 6 -10.514577351016655 8 -60.011014819824489 13 -8.5874521608419823 
		15 0.73681522261850785 18 -2.6182241232448606 21 -35.82537573484101 25 -56.855266693823175 
		29 -25.859362406381162 33 -71.601588453715053 36 -47.068687946319812 40 -71.601588453715053;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -74.754744621954103 2 -95.374448486405328 
		4 -145.97629298042523 6 -148.92609618633051 8 -112.83996951421602 13 -74.754744621954103 
		15 -59.158337691873555 18 -59.744542346032461 21 -64.704809934636117 25 -50.691083962809842 
		29 -39.978420994332723 33 -90.779043014820644 36 7.3649226411748101 40 -90.779043014820644;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.10167917362943303 4 0.14758548549312508 
		6 0.15332377447608658 10 0.10167917362943303 13 0.10167917362943303 15 -0.065639786623390803 
		18 0.012113033259649377 21 0.012113033259649377 25 0.012113033259649377 29 
		0.012113033259649377 33 0.017571725225418906 36 0.012113033259649377 40 0.017571725225418906;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.40762644910266188 4 -0.40762644910266188 
		6 -0.40762644910266188 10 -0.40762644910266188 13 -0.40762644910266188 15 
		-0.44393655506819818 18 -0.64348980055978888 21 -0.64348980055978888 25 -0.64348980055978888 
		29 -0.64348980055978888 33 -0.54560785950824164 36 -0.64348980055978888 40 
		-0.54560785950824164;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 1 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kox[1:12]"  1 1 1 0.045852623879909515 0.0070660621859133244 
		0.010021883994340897 1 1 0.027233600616455078 1 1 0.013620594516396523;
	setAttr -s 13 ".koy[1:12]"  0 0 0 -0.99894821643829346 -0.99997502565383911 
		-0.99994975328445435 0 0 0.99962908029556274 0 0 0.99990725517272949;
createNode animCurveTL -n "animCurveTL200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.93129112588482243 4 -0.93129112588482243 
		6 -0.93129112588482243 10 -0.93129112588482243 13 -0.93129112588482243 15 
		-1.1534199623441592 18 -0.69482215054722585 21 -0.69482215054722585 25 -0.69482215054722585 
		29 -0.69482215054722585 33 -0.64724218630287966 36 -0.69482215054722585 40 
		-0.64724218630287966;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 1 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kox[1:12]"  1 1 1 0.0075029423460364342 0.007047965656965971 
		0.004361078143119812 1 1 0.055958177894353867 1 1 0.02801201306283474;
	setAttr -s 13 ".koy[1:12]"  0 0 0 -0.99997186660766602 0.99997514486312866 
		0.99999046325683594 0 0 0.99843311309814453 0 0 0.99960756301879883;
createNode animCurveTL -n "animCurveTL201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 0.022123768926756712 
		21 0.11190813190038036 25 0.11190813190038036 29 0.11190813190038036 33 -0.22996541113775407 
		36 0.11190813190038036 40 -0.22996541113775407;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 -0.37226360672997638 
		21 -0.69888369986281507 25 -0.69888369986281507 29 -0.69888369986281507 33 
		-0.71572892866406468 36 -0.69888369986281507 40 -0.71572892866406468;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -1 4 -1 6 -1 10 -1 13 -1 15 -1 
		18 -0.90721495962988574 21 -0.8656116369436555 25 -0.8656116369436555 29 
		-0.8656116369436555 33 -0.86045149817799893 36 -0.8656116369436555 40 -0.86045149817799893;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA552";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.061808866237340665 4 -0.061808866237337522 
		6 -0.061808866237337522 10 -0.061808866237337522 13 -0.061808866237340665 
		15 -0.061808866237337522 18 -0.061808866237337522 21 -0.061808866237337522 
		25 -0.061808866237337522 29 -0.061808866237337522 33 -0.061808866237337522 
		36 -0.061808866237337522 40 -0.061808866237337522;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -59.058178941076754 4 -59.058178941076754 
		6 -59.058178941076754 10 -59.058178941076754 13 -59.058178941076754 15 -59.058178941076754 
		18 -59.058178941076754 21 -59.058178941076754 25 -59.058178941076754 29 -59.058178941076754 
		33 -59.058178941076754 36 -59.058178941076754 40 -59.058178941076754;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 16.57914742975785 4 16.579147429757843 
		6 16.579147429757843 10 16.579147429757843 13 16.57914742975785 15 16.579147429757843 
		18 16.579147429757843 21 16.579147429757843 25 16.579147429757843 29 16.579147429757843 
		33 16.579147429757843 36 16.579147429757843 40 16.579147429757843;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 12.253734489678925 4 12.253734489678925 
		6 12.253734489678925 10 12.253734489678925 13 12.253734489678925 15 12.253734489678925 
		18 12.253734489678925 21 12.253734489678925 25 12.253734489678925 29 12.253734489678925 
		33 12.253734489678925 36 12.253734489678925 40 12.253734489678925;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -65.746751280844975 4 -65.746751280844961 
		6 -65.746751280844961 10 -65.746751280844961 13 -65.746751280844975 15 -65.746751280844961 
		18 -65.746751280844961 21 -65.746751280844961 25 -65.746751280844961 29 -65.746751280844961 
		33 -65.746751280844961 36 -65.746751280844961 40 -65.746751280844961;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA557";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 0 
		21 0 25 0 29 0 33 0 36 0 40 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA558";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 15.711328223519061 4 15.711328223519057 
		6 15.711328223519057 10 15.711328223519057 13 15.711328223519061 15 15.711328223519057 
		18 15.711328223519057 21 15.711328223519057 25 15.711328223519057 29 15.711328223519057 
		33 15.711328223519057 36 15.711328223519057 40 15.711328223519057;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA559";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 8.5572674112203657 4 8.5572674112203622 
		6 8.5572674112203622 10 8.5572674112203622 13 8.5572674112203657 15 8.5572674112203622 
		18 8.5572674112203622 21 8.5572674112203622 25 8.5572674112203622 29 8.5572674112203622 
		33 8.5572674112203622 36 8.5572674112203622 40 8.5572674112203622;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA560";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 0 
		21 0 25 0 29 0 33 0 36 0 40 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA561";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 0 
		21 0 25 0 29 0 33 0 36 0 40 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA562";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 0 
		21 0 25 0 29 0 33 0 36 0 40 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA563";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 0 
		21 0 25 0 29 0 33 0 36 0 40 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA564";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 0 
		21 0 25 0 29 0 33 0 36 0 40 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA565";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 0 
		21 0 25 0 29 0 33 0 36 0 40 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA566";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 8.2533422302317216 4 8.2533422302317216 
		6 8.2533422302317216 10 8.2533422302317216 13 8.2533422302317216 15 8.2533422302317216 
		18 8.2533422302317216 21 8.2533422302317216 25 8.2533422302317216 29 8.2533422302317216 
		33 8.2533422302317216 36 8.2533422302317216 40 8.2533422302317216;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA567";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 23.263402056531085 4 23.263402056531085 
		6 23.263402056531085 10 23.263402056531085 13 23.263402056531085 15 23.263402056531085 
		18 23.263402056531085 21 23.263402056531085 25 23.263402056531085 29 23.263402056531085 
		33 23.263402056531085 36 23.263402056531085 40 23.263402056531085;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA568";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 20.166277752815617 4 20.166277752815617 
		6 20.166277752815617 10 20.166277752815617 13 20.166277752815617 15 20.166277752815617 
		18 20.166277752815617 21 20.166277752815617 25 20.166277752815617 29 20.166277752815617 
		33 20.166277752815617 36 20.166277752815617 40 20.166277752815617;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA569";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 0 
		21 0 25 0 29 0 33 0 36 0 40 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA570";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 0 
		21 0 25 0 29 0 33 0 36 0 40 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA571";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 33.429092416277157 4 33.429092416277157 
		6 33.429092416277157 10 33.429092416277157 13 33.429092416277157 15 33.429092416277157 
		18 33.429092416277157 21 33.429092416277157 25 33.429092416277157 29 33.429092416277157 
		33 33.429092416277157 36 33.429092416277157 40 33.429092416277157;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA572";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA573";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA574";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA575";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA576";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA577";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 40 13.994403295754109;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA578";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA579";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA580";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 40 13.994403295754109;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 0 
		21 0 25 0 29 0 33 0 36 0 40 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 0 
		21 0 25 0 29 0 33 0 36 0 40 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 17.254116939558369 4 17.254116939558369 
		6 17.254116939558369 10 17.254116939558369 13 17.254116939558369 15 17.254116939558369 
		18 17.254116939558369 21 17.254116939558369 25 17.254116939558369 29 17.254116939558369 
		33 17.254116939558369 36 17.254116939558369 40 17.254116939558369;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 0 
		21 0 25 0 29 0 33 0 36 0 40 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA585";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 0 
		21 0 25 0 29 0 33 0 36 0 40 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA586";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 0 
		21 0 25 0 29 0 33 0 36 0 40 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA587";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.65073001024951682 4 -29.252455350840993 
		6 -55.462601843595593 10 -15.995208714699748 13 0.65073001024951682 15 -7.8430056866173823 
		18 -7.8430056866173823 21 -7.8430056866173823 25 -18.820843871529618 29 -18.820843871529618 
		33 -2.3937906322123035 36 5.9660149388432382 40 -2.3937906322123035;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA588";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 4.2368721935960938 4 13.790444711182607 
		6 25.410316180072332 10 10.255568461043122 13 4.2368721935960938 15 2.4212113907903019 
		18 2.4212113907903019 21 2.4212113907903019 25 8.442588645585376 29 8.442588645585376 
		33 1.7843868968348546 36 4.5116636179203082 40 1.7843868968348546;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA589";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 9.4592235793901782 4 19.640268163788289 
		6 11.66416467777565 10 14.035144143842492 13 9.4592235793901782 15 15.588191975628375 
		18 15.588191975628375 21 15.588191975628375 25 17.419290303989076 29 17.419290303989076 
		33 13.23227595374661 36 3.100515661214426 40 13.23227595374661;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA590";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 -7.1097278539792699 
		18 -7.1097278539792699 21 -7.1097278539792699 25 -7.1097278539792699 29 -7.1097278539792699 
		33 0 36 -7.1097278539792699 40 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA591";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 0 
		21 0 25 0 29 0 33 0 36 0 40 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 0 
		21 0 25 0 29 0 33 0 36 0 40 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA593";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 -9.265812116291686 6 -21.879389740706355 
		10 -12.122979457817195 13 0 15 -4.6281794559944602 18 10.703007422197206 
		21 10.703007422197206 25 41.547703469535961 29 1.0811599397748946 33 -0.71032600031388216 
		36 -10.343335099734212 40 -0.71032600031388216;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA594";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 -5.0784452174403798 6 -29.590740831391127 
		10 -26.257831027797405 13 0 15 -4.9674509542691831 18 17.166509192793022 
		21 17.166509192793022 25 45.291841314473849 29 18.970963970785505 33 -3.6938159239902011 
		36 -39.607073910831495 40 -3.6938159239902011;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA595";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 13.828138835879258 4 4.2165117437109014 
		6 10.399745550738366 10 11.492422095737655 13 13.828138835879258 15 21.069151214168098 
		18 28.2639443589953 21 28.2639443589953 25 39.011711319050598 29 20.836542588682661 
		33 14.57223198295749 36 16.345936932681713 40 14.57223198295749;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA596";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1.890577912487224 4 1.890577912487224 
		6 1.890577912487224 10 1.890577912487224 13 1.890577912487224 15 1.890577912487224 
		18 1.890577912487224 21 1.890577912487224 25 1.890577912487224 29 1.890577912487224 
		33 2.2796212519697265 36 3.7501548384564991 40 2.2796212519697265;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA597";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -2.5602510346124587 4 -2.5602510346124587 
		6 -2.5602510346124587 10 -2.5602510346124587 13 -2.5602510346124587 15 -2.5602510346124587 
		18 -2.5602510346124587 21 -2.5602510346124587 25 -2.5602510346124587 29 -2.5602510346124587 
		33 -2.2209313171847893 36 -11.127067305137468 40 -2.2209313171847893;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA598";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -12.605441061780656 4 -12.605441061780654 
		6 -12.605441061780654 10 -12.605441061780654 13 -12.605441061780656 15 -12.605441061780654 
		18 -12.605441061780654 21 -12.605441061780654 25 -12.605441061780654 29 -12.605441061780654 
		33 8.0401232256568225 36 -11.452816059011486 40 8.0401232256568225;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA599";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 0 
		21 0 25 0 29 0 33 0 36 0 40 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA600";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 0 
		21 0 25 0 29 0 33 0 36 0 40 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA601";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 27.080064458283051 4 27.080064458283051 
		6 27.080064458283051 10 27.080064458283051 13 27.080064458283051 15 27.080064458283051 
		18 27.080064458283051 21 27.080064458283051 25 27.080064458283051 29 27.080064458283051 
		33 27.080064458283051 36 27.080064458283051 40 27.080064458283051;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA602";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 10.423754966968488 4 10.423754966968488 
		6 10.423754966968488 10 10.423754966968488 13 10.423754966968488 15 10.423754966968488 
		18 10.423754966968488 21 10.423754966968488 25 10.423754966968488 29 10.423754966968488 
		33 10.423754966968488 36 10.423754966968488 40 10.423754966968488;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA603";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 27.7228482558439 4 27.722848255843903 
		6 27.722848255843903 10 27.722848255843903 13 27.7228482558439 15 27.722848255843903 
		18 27.722848255843903 21 27.722848255843903 25 27.722848255843903 29 27.722848255843903 
		33 27.722848255843903 36 27.722848255843903 40 27.722848255843903;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA604";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 21.576484776388224 4 21.576484776388227 
		6 21.576484776388227 10 21.576484776388227 13 21.576484776388224 15 21.576484776388227 
		18 21.576484776388227 21 21.576484776388227 25 21.576484776388227 29 21.576484776388227 
		33 21.576484776388227 36 21.576484776388227 40 21.576484776388227;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA605";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 0 
		21 0 25 0 29 0 33 0 36 0 40 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA606";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 6 0 10 0 13 0 15 0 18 0 
		21 0 25 0 29 0 33 0 36 0 40 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA607";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 27.911632519594587 4 27.911632519594587 
		6 27.911632519594587 10 27.911632519594587 13 27.911632519594587 15 27.911632519594587 
		18 27.911632519594587 21 27.911632519594587 25 27.911632519594587 29 27.911632519594587 
		33 27.911632519594587 36 27.911632519594587 40 27.911632519594587;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA608";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 -2.0528781749450236 9 -2.3536949911970266 
		13 0 18 12.2303338634577 27 16.815240750731935 33 2.2130115478761283 36 2.2954640504078498 
		38 2.4270412266177472 40 2.161757884379385;
createNode animCurveTA -n "animCurveTA609";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 -0.63505101181316381 9 7.1418073163724403 
		13 0 18 -10.12292262285356 27 -18.112498161296067 33 12.377050579020098 36 
		-19.662483098835921 38 -25.629045990672612 40 0.78963292686781161;
createNode animCurveTA -n "animCurveTA610";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0.24860248919677252 9 0.25313724567663581 
		13 0 18 1.2806732627904351 27 7.3704085777005366 33 8.5523595055826966 36 
		7.3050468936634978 38 7.0218037952395305 40 8.1075942281935571;
createNode animCurveTA -n "animCurveTA611";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 -2.0528781749450236 9 -2.3536949911970266 
		13 0 18 12.2303338634577 27 16.815240750731935 33 2.2130115478761283 36 2.2954640504078498 
		38 2.4270412266177472 40 2.161757884379385;
createNode animCurveTA -n "animCurveTA612";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 -0.63505101181316381 9 7.1418073163724403 
		13 0 18 -10.12292262285356 27 -18.112498161296067 33 12.377050579020098 36 
		-19.662483098835921 38 -25.629045990672612 40 0.78963292686781161;
createNode animCurveTA -n "animCurveTA613";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0.24860248919677252 9 0.25313724567663581 
		13 0 18 1.2806732627904351 27 7.3704085777005366 33 8.5523595055826966 36 
		7.3050468936634978 38 7.0218037952395305 40 8.1075942281935571;
createNode animCurveTA -n "animCurveTA614";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 -2.0528781749450236 9 -2.3536949911970266 
		13 0 18 12.2303338634577 27 16.815240750731935 33 2.2130115478761283 36 2.2954640504078498 
		38 2.4270412266177472 40 2.161757884379385;
createNode animCurveTA -n "animCurveTA615";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 -0.63505101181316381 9 7.1418073163724403 
		13 0 18 -10.12292262285356 27 -18.112498161296067 33 12.377050579020098 36 
		-19.662483098835921 38 -25.629045990672612 40 0.78963292686781161;
createNode animCurveTA -n "animCurveTA616";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0.24860248919677252 9 0.25313724567663581 
		13 0 18 1.2806732627904351 27 7.3704085777005366 33 8.5523595055826966 36 
		7.3050468936634978 38 7.0218037952395305 40 8.1075942281935571;
createNode clipLibrary -n "clipLibrary2";
	setAttr -s 177 ".cel[0].cev";
	setAttr ".cd[0].cm" -type "characterMapping" 177 "Extra_Attributes.translateX" 
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
		2 118 "Middle_L.rotateZ" 2 119 "hair_1.rotateX" 2 120 "hair_1.rotateY" 
		2 121 "hair_1.rotateZ" 2 122 "hair_2.rotateX" 2 123 "hair_2.rotateY" 
		2 124 "hair_2.rotateZ" 2 125 "hair_3.rotateX" 2 126 "hair_3.rotateY" 
		2 127 "hair_3.rotateZ" 2 128  ;
	setAttr ".cd[0].cim" -type "Int32Array" 177 0 1 2 3
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
		 158 159 160 161 162 163 164 165 166 167 168
		 169 170 171 172 173 174 175 176 ;
createNode lightLinker -n "lightLinker1";
	setAttr ".ihi" 0;
	setAttr -s 22 ".lnk";
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
select -ne :characterPartition;
select -ne :hyperGraphLayout;
	setAttr ".cch" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".img" -type "string" "";
	setAttr ".ims" 1;
select -ne :ikSystem;
connectAttr "mrg_get_into_car_all.st" "clipLibrary2.st[0]";
connectAttr "mrg_get_into_car_all.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL165.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL166.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "mrg_Motion_Root_translateX.a" "clipLibrary2.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL167.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "mrg_Motion_Root_translateZ.a" "clipLibrary2.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA489.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU33.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU34.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU35.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU36.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU37.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU38.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU39.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU40.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA490.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA491.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA492.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL168.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL169.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL170.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL171.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL172.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL173.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA493.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA494.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA495.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL174.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL175.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL176.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA496.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA497.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA498.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA499.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA500.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA501.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA502.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA503.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA504.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTA505.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTA506.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTA507.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTA508.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTA509.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTA510.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL177.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL178.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL179.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTL180.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTL181.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTL182.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTL183.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL184.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL185.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA511.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA512.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA513.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA514.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA515.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA516.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA517.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA518.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA519.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA520.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA521.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA522.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA523.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA524.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA525.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA526.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA527.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA528.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA529.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA530.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA531.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA532.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA533.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTA534.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA535.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA536.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA537.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA538.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA539.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL186.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL187.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL188.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA540.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA541.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA542.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL189.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL190.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL191.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA543.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA544.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA545.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL192.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL193.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL194.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA546.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA547.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA548.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL195.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL196.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL197.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTA549.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTA550.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTA551.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTL198.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTL199.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTL200.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTL201.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTL202.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTL203.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA552.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA553.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA554.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA555.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA556.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA557.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA558.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA559.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA560.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA561.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA562.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA563.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA564.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA565.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA566.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA567.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA568.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA569.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA570.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA571.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA572.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA573.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA574.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA575.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA576.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA577.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA578.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA579.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA580.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA581.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA582.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA583.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA584.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA585.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA586.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA587.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA588.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA589.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA590.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA591.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA592.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA593.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA594.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA595.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA596.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA597.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA598.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA599.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA600.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA601.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA602.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA603.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA604.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA605.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA606.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA607.a" "clipLibrary2.cel[0].cev[167].cevr";
connectAttr "animCurveTA608.a" "clipLibrary2.cel[0].cev[168].cevr";
connectAttr "animCurveTA609.a" "clipLibrary2.cel[0].cev[169].cevr";
connectAttr "animCurveTA610.a" "clipLibrary2.cel[0].cev[170].cevr";
connectAttr "animCurveTA611.a" "clipLibrary2.cel[0].cev[171].cevr";
connectAttr "animCurveTA612.a" "clipLibrary2.cel[0].cev[172].cevr";
connectAttr "animCurveTA613.a" "clipLibrary2.cel[0].cev[173].cevr";
connectAttr "animCurveTA614.a" "clipLibrary2.cel[0].cev[174].cevr";
connectAttr "animCurveTA615.a" "clipLibrary2.cel[0].cev[175].cevr";
connectAttr "animCurveTA616.a" "clipLibrary2.cel[0].cev[176].cevr";
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
// End of mrg-m_get_into_car_all.ma
