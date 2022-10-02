//Maya ASCII 4.0 scene
//Name: mrg-m_get_into_car_all.ma
//Last modified: Wed, Jul 31, 2002 05:06:53 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.9.1.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_get_into_car_all";
	setAttr ".ihi" 0;
	setAttr ".du" 50;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL165";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL166";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  0 0.053810128618612625 15 0.053810128618612625 
		16 0.085477776740653724 17 0.070178417029246487 18 0.051428716124002578 19 
		0.03287353098074404 20 0.018157718555292867 21 0.011505728422300835 22 0.0087689275862586433 
		23 0.0010325491477467792 24 -0.016920483905132847 25 -0.039873094153324441 
		26 -0.06108881684981679 27 -0.064030291116915383 28 -0.056213554709544554 
		29 -0.066982240829621176 30 -0.12567998267906208 31 -0.26294186313048323 
		32 -0.45551457181939004 33 -0.6519091520920024 34 -0.80063664729453987 35 
		-0.891557961963787 36 -0.95093677833179102 37 -0.9818883062876671 38 -0.98752775572053031 
		39 -0.95866945848286889 40 -0.89849889636280766 41 -0.82868800415291588 42 
		-0.77090871664576333 43 -0.74683296863391924 44 -0.75595551078265444 45 -0.78051620147101775 
		46 -0.81630463706224576 47 -0.85911041391957466 48 -0.9047231284062407 49 
		-0.94893237688548038 50 -0.98752775572053031;
createNode animCurveTL -n "animCurveTL168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  0 0 15 0 16 0 17 0 18 0 19 0 20 
		0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 
		0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 
		0;
createNode animCurveTL -n "animCurveTL169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  0 0 15 0 16 0.023281019770618978 
		17 0.05279618376454652 18 0.086167996729268739 19 0.12101896341227177 20 
		0.15497158856104171 21 0.18742866418202084 22 0.22179311364282156 23 0.26168763873268541 
		24 0.31057714128318986 25 0.36499671738825468 26 0.41817436023063309 27 0.47015604386618781 
		28 0.52279356500899288 29 0.57202365082911866 30 0.61378302849663546 31 0.6456417250067914 
		32 0.67021563190276268 33 0.69101027317651731 34 0.71153117282002309 35 0.7327343710001829 
		36 0.75274317729339657 37 0.7708140198058766 38 0.7862033266438363 39 0.8001872976260086 
		40 0.81357578104410533 41 0.82492567771380765 42 0.83279388845079638 43 0.83573731407075247 
		44 0.83385993267485337 45 0.82880544428269531 46 0.82144033258758731 47 0.81263108128283834 
		48 0.80324417406175741 49 0.79414609461765384 50 0.7862033266438363;
	setAttr -s 37 ".kit[1:36]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 37 ".kot[1:36]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA489";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  0 0 15 0 16 0 17 0 18 0 19 0 20 
		0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 
		0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 
		0;
createNode animCurveTU -n "animCurveTU33";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU34";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU35";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU36";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU37";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU38";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU39";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 50 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU40";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 50 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA490";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA491";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA492";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL170";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL171";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL172";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.063939280413560756 5 -0.06393928041356077 
		8 -0.06393928041356077 12 -0.06393928041356077 15 -0.063939280413560756 20 
		-0.06393928041356077 23 -0.06393928041356077 26 -0.060836030114942652 30 
		-0.42810639701602748 34 -0.91739294931007653 38 -1.3209532433521722 43 -1.2549807197808469 
		50 -1.3209532433521722;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.096366718631329423 5 0.096366718631329423 
		8 0.096366718631329423 12 0.096366718631329423 15 0.096366718631329423 20 
		0.096366718631329423 23 0.096366718631329423 26 0.16774588460111983 30 0.44288331351338073 
		34 0.49929236591446868 38 0.49929236591446868 43 0.49929236591446868 50 0.49929236591446868;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.00078430246903575811 5 0.00078430246903575811 
		8 0.00078430246903575811 12 0.00078430246903575811 15 0.00078430246903575811 
		20 0.00078430246903575811 23 0.00078430246903575811 26 0.06225095438633 30 
		1.1321259845797069 34 1.5494570001921235 38 1.7640779368499853 43 1.7640779368499853 
		50 1.7640779368499853;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 3 
		1 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 3 
		1 9 9 9 9 9;
	setAttr -s 13 ".kix[7:12]"  0.0055326707661151886 0.001793068484403193 
		0.0042196926660835743 0.013976767659187317 1 1;
	setAttr -s 13 ".kiy[7:12]"  0.99998468160629272 0.99999839067459106 
		0.99999111890792847 0.99990230798721313 0 0;
	setAttr -s 13 ".kox[7:12]"  0.0055327103473246098 0.001793068484403193 
		0.0042196926660835743 0.013976767659187317 1 1;
	setAttr -s 13 ".koy[7:12]"  0.99998468160629272 0.99999839067459106 
		0.99999111890792847 0.99990230798721313 0 0;
createNode animCurveTA -n "animCurveTA493";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 22.010234457643321 30 -11.015597041658307 34 -23.806588583135124 38 -24.2048482305423 
		43 -23.806588583135124 50 -24.2048482305423;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA494";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 -1.6471102606573049 30 -41.044255556689905 34 -1.647110260657298 38 0 
		43 -1.647110260657298 50 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA495";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 -7.7922141916432555 30 -8.1273733030172544 34 -7.792214191643243 38 0 
		43 -7.792214191643243 50 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.1566550719173089 5 0.1566550719173089 
		8 0.1566550719173089 12 0.1566550719173089 15 0.1566550719173089 20 0.1566550719173089 
		23 0.1164935206328792 26 0.017882485635127312 30 0.017882485635127312 34 
		-0.32871587092970289 36 -0.59183177896178985 38 -1.0182182727496343 43 -0.92619931052361293 
		50 -1.0182182727496343;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		3 3 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		3 3 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.094731717598746656 5 0.13073580836402163 
		8 0.1101759161330768 12 0.094731717598746656 15 0.094731717598746656 20 0.14636400709895703 
		23 0.16386658739248755 26 0.11478196765528159 30 0.10524115292399172 34 0.26946934365310765 
		36 0.49608096533530072 38 0.51781298511506035 43 0.51781298511506035 50 0.51781298511506035;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		1 1 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		1 1 9 9 9 9 9;
	setAttr -s 14 ".kix[7:13]"  0.046675808727741241 0.097306422889232635 
		0.0051171188242733479 0.0053688269108533859 0.10675488412380219 1 1;
	setAttr -s 14 ".kiy[7:13]"  -0.99891006946563721 0.99525439739227295 
		0.99998688697814941 0.99998557567596436 0.99428534507751465 0 0;
	setAttr -s 14 ".kox[7:13]"  0.046675898134708405 0.097306400537490845 
		0.0051171188242733479 0.0053688269108533859 0.10675488412380219 1 1;
	setAttr -s 14 ".koy[7:13]"  -0.99891006946563721 0.99525439739227295 
		0.99998688697814941 0.99998557567596436 0.99428534507751465 0 0;
createNode animCurveTL -n "animCurveTL178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.064904406754016014 5 -0.064904406754016042 
		8 -0.064904406754016042 12 -0.064904406754016042 15 -0.064904406754016014 
		20 -0.064904406754016042 23 0.38761032248211302 26 0.77693513858164143 30 
		0.77693513858164143 34 1.0307354337114039 36 1.3640374412798904 38 1.725016696635667 
		43 1.725016696635667 50 1.725016696635667;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		3 3 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		3 3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA496";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 9.7439728939236048 8 2.7839922554067478 
		12 0 15 0 20 15.829425701546842 23 14.331626443463124 26 -10.811641225563552 
		30 1.5040871012270867 34 7.2345129325716782 36 -16.158061478964488 38 -36.819011955683756 
		43 -37.968729457000954 50 -36.819011955683756;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA497";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 25.948901905116401 5 25.948901905116401 
		8 25.948901905116401 12 25.948901905116401 15 25.948901905116401 20 25.948901905116429 
		23 0.4082319874018141 26 -9.0830972443010491 30 -9.0830972443010527 34 69.701631783905754 
		36 42.70484598509212 38 0 43 6.734512670826839 50 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		3 3 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		3 3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA498";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 8 0 12 0 15 0 20 0 23 -0.50956548566278548 
		26 -2.954679702671601 30 -2.9546797026715965 34 -4.4294098373784498 36 -9.2988248217141081 
		38 0 43 -13.85301503894679 50 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		3 3 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		3 3 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA499";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA500";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA501";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA502";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA503";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA504";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA505";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA506";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA507";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA508";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA509";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA510";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 5 1 8 1 12 1 15 1 20 1 23 1 
		26 1 30 1 34 1 38 1 43 1 50 1;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 5 1 8 1 12 1 15 1 20 1 23 1 
		26 1 30 1 34 1 38 1 43 1 50 1;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.065562039591274171 5 -0.029454009974151624 
		8 -0.071371056813993111 12 0.055669242380392982 15 0.065562039591274171 20 
		0.022123289673713065 23 0.0012580536386433217 26 -0.074430363422443871 30 
		-0.15312797444950182 34 -0.97549240107174118 38 -1.2031997596013333 43 -0.90993822008277991 
		50 -1.2031997596013333;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.98665907642604678 5 0.98665907642604678 
		8 0.9733426335557761 12 0.9733426335557761 15 0.98665907642604678 20 0.96133874737882707 
		23 0.92825809021196171 26 0.89696705746080796 30 0.89127154391731223 34 0.84774115284419893 
		38 0.74320840376740638 43 0.74267409856230726 50 0.74320840376740638;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0.075228259357065508 8 0 
		12 0 15 0 20 0.18881674669046031 23 0.31883914369988964 26 0.50950192213466194 
		30 0.74783071975095572 34 0.86692665712596562 38 0.95790690250061006 43 1.0182589092355252 
		50 0.95790690250061006;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA511";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.62843630316474508 5 -2.2362608750909985 
		8 3.3088142671952059 12 2.2213518221595017 15 -0.62843630316474508 20 -4.0647210446877668 
		23 -2.935775021023272 26 -3.0762169050940038 30 -6.5591355069755881 34 -16.566395863032415 
		38 -47.088616656908435 43 -5.4513933106138657 50 -47.088616656908435;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA512";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 5.8284402688137167 5 -26.87011774166238 
		8 -32.156418041150552 12 -19.301447906299206 15 5.8284402688137167 20 -6.129632983176454 
		23 -13.600868200262255 26 -21.932677743389643 30 3.7197865316961756 34 36.05299868564056 
		38 2.0975263990809503 43 -0.71074198285418522 50 2.0975263990809503;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA513";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1.295636019309746 5 5.0680510204987241 
		8 2.3323066059741566 12 1.7971044910279799 15 1.295636019309746 20 1.7490863204697844 
		23 0.84256151123097234 26 1.3015925165258879 30 5.0537228151421463 34 19.695463475605692 
		38 -0.53932213336905643 43 -22.697660472141617 50 -0.53932213336905643;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA514";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA515";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA516";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA517";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA518";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA519";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA520";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA521";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA522";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA523";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA524";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA525";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA526";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA527";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA528";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA529";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA530";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA531";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA532";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA533";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA534";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 23 0 26 0 30 0 50 0;
	setAttr -s 5 ".kit[2:4]"  9 1 1;
	setAttr -s 5 ".kot[2:4]"  9 9 5;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA535";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 23 0 26 0 30 0 50 0;
	setAttr -s 5 ".kit[2:4]"  9 1 1;
	setAttr -s 5 ".kot[2:4]"  9 9 5;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA536";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 23 0 26 -24.501661700242042 
		30 0 50 0;
	setAttr -s 5 ".kit[2:4]"  9 1 1;
	setAttr -s 5 ".kot[2:4]"  9 9 5;
	setAttr -s 5 ".kix[3:4]"  0.29765972495079041 1;
	setAttr -s 5 ".kiy[3:4]"  0.95467203855514526 0;
createNode animCurveTA -n "animCurveTA537";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA538";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA539";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL188";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.5198069948790518 50 -0.5198069948790518;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL189";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 50 -0.72394202659893114;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL190";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 50 0.36439499068905612;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA540";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965317 50 7.7976222737965299;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA541";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 30.409274105849079 50 30.409274105849079;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA542";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.859940280210893 50 64.859940280210878;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL191";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.43524234076486068 50 0.43524234076486068;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL192";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 50 -0.82665738350180629;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL193";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 50 0.27773886459742925;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA543";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA544";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -28.652637602052774 50 -28.652637602052774;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA545";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.676908227303443 50 -64.676908227303443;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.31432036959158904 5 -0.27611660715593522 
		8 -0.30306943367117128 12 -0.34985126519584359 15 -0.31432036959158904 20 
		-0.42203808342627286 23 -0.50117599830148207 26 -0.78606055305990008 30 -1.4378619651133846 
		34 -3.196861586353851 38 -3.1112480635238988 43 -2.5110052138231755 50 -3.1112480635238988;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 2.2297686973003263 5 2.329626912350319 
		8 2.3688316761925643 12 2.2903031628445603 15 2.2297686973003263 20 2.5995382158833156 
		23 2.5683839932152712 26 2.5185373193309615 30 2.6277327511662909 34 1.8065373761937127 
		38 1.7424766145627919 43 2.2439371616167576 50 1.7424766145627919;
	setAttr -s 13 ".kit[0:12]"  3 9 9 1 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 1 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kix[3:12]"  0.0099690668284893036 0.0086231091991066933 
		0.0078749656677246094 0.02468356117606163 0.039285272359848022 0.0037452925462275743 
		0.0030122969765216112 0.0068585528060793877 1 0.0046530235558748245;
	setAttr -s 13 ".kiy[3:12]"  -0.99995023012161255 0.99996280670166016 
		0.9999690055847168 -0.9996953010559082 0.99922806024551392 -0.9999929666519165 
		-0.99999547004699707 0.99997645616531372 0 -0.99998915195465088;
	setAttr -s 13 ".kox[3:12]"  0.0099688898772001266 0.0086231091991066933 
		0.0078749656677246094 0.02468356117606163 0.039285272359848022 0.0037452925462275743 
		0.0030122969765216112 0.0068585528060793877 1 0.0046530235558748245;
	setAttr -s 13 ".koy[3:12]"  -0.99995023012161255 0.99996280670166016 
		0.9999690055847168 -0.9996953010559082 0.99922806024551392 -0.9999929666519165 
		-0.99999547004699707 0.99997645616531372 0 -0.99998915195465088;
createNode animCurveTL -n "animCurveTL196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.016524074637843583 5 -0.41226098142694495 
		8 -0.47683283613335631 12 -0.28047718753840001 15 0.016524074637843583 20 
		0.38340846976683873 23 0.70351972465722623 26 1.1754419784072698 30 1.3207303366181031 
		34 1.8490287668331136 38 1.8531126401564211 43 1.8477632277561455 50 1.8531126401564211;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 16.226511010665412 5 16.226511010665405 
		8 16.226511010665405 12 16.226511010665405 15 16.226511010665412 20 55.598837649680043 
		23 30.40552687334386 26 -3.6353685169651868 30 36.020908932246329 34 -2.5322478418320902 
		38 26.27937306915484 43 26.719919114785494 50 26.27937306915484;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 8.5139660854992858 5 8.513966085499284 
		8 8.513966085499284 12 8.513966085499284 15 8.5139660854992858 20 30.973734338623142 
		23 57.071878589129092 26 43.075403304160062 30 26.331229507995829 34 19.318643422490137 
		38 55.316964386970021 43 27.3481632338883 50 55.316964386970021;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 68.213989601412422 5 68.213989601412422 
		8 68.213989601412422 12 68.213989601412422 15 68.213989601412422 20 82.208920420259716 
		23 59.188089930048456 26 1.3704436087665239 30 12.474571549991943 34 51.024861193325769 
		38 77.201572122121519 43 45.372205371553832 50 77.201572122121519;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.65311611999272123 2 0.50567058071632187 
		5 -0.50553612246045976 8 -0.75826257377671979 10 0.13212416502999028 15 0.65311611999272123 
		20 0.74291266125027167 23 0.69270034776330403 26 0.66063460144256558 30 0.28658489752780442 
		34 -1.564473606551771 38 -2.0647721020251719 43 -0.33301913643447956 50 -2.0647721020251719;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 2.2462096125327005 2 2.2912110954199476 
		5 2.4095613538943814 8 2.4545151175300246 10 2.4426005562565085 15 2.2462096125327005 
		20 2.277387261807831 23 2.233229147381159 26 2.308938460808724 30 2.3637869795264534 
		34 2.3662715225099338 38 1.7590071920447805 43 2.211366408225683 50 1.7590071920447805;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.097994651149805143 2 0.31680144314551956 
		5 0.7055516789982974 8 0.89362886141921405 10 0.81681147880284377 15 -0.097994651149805143 
		20 0.051071703262100004 23 0.52246763255256345 26 1.1315535315463634 30 1.6762835910554155 
		34 1.7901668730017459 38 1.9261547314579206 43 2.5619048374060109 50 1.9261547314579206;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA549";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 5.4739599453216465 2 29.254450203918026 
		5 76.788472133756997 8 27.510925858298908 10 61.647256158775171 15 5.4739599453216465 
		20 10.322809514409178 23 -10.826466618605725 26 -3.7025266420285567 30 13.002416091630163 
		34 8.0835096882199675 38 59.00791013189712 43 -19.345874397196617 50 59.00791013189712;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA550";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -8.5874521608419823 2 -19.23546056350569 
		5 -39.165963251035002 8 -10.514577351016655 10 -60.011014819824489 15 -8.5874521608419823 
		20 0.73681522261850785 23 -2.6182241232448606 26 -35.82537573484101 30 -56.855266693823175 
		34 -25.859362406381162 38 -71.601588453715053 43 -47.068687946319812 50 -71.601588453715053;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -74.754744621954103 2 -95.374448486405328 
		5 -145.97629298042523 8 -148.92609618633051 10 -112.83996951421602 15 -74.754744621954103 
		20 -59.158337691873555 23 -59.744542346032461 26 -64.704809934636117 30 -50.691083962809842 
		34 -39.978420994332723 38 -90.779043014820644 43 7.3649226411748101 50 -90.779043014820644;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.10167917362943303 5 0.14758548549312508 
		8 0.15332377447608658 12 0.10167917362943303 15 0.10167917362943303 20 -0.065639786623390803 
		23 0.012113033259649377 26 0.012113033259649377 30 0.012113033259649377 34 
		0.012113033259649377 38 0.017571725225418906 43 0.012113033259649377 50 0.017571725225418906;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.40762644910266188 5 -0.40762644910266188 
		8 -0.40762644910266188 12 -0.40762644910266188 15 -0.40762644910266188 20 
		-0.44393655506819818 23 -0.64348980055978888 26 -0.64348980055978888 30 -0.64348980055978888 
		34 -0.64348980055978888 38 -0.54560785950824164 43 -0.64348980055978888 50 
		-0.54560785950824164;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 1 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kox[1:12]"  1 1 1 0.073244184255599976 0.011305258609354496 
		0.010021883994340897 1 1 0.027233600616455078 1 1 0.023831469938158989;
	setAttr -s 13 ".koy[1:12]"  0 0 0 -0.99731403589248657 -0.99993610382080078 
		-0.99994975328445435 0 0 0.99962908029556274 0 0 0.99971598386764526;
createNode animCurveTL -n "animCurveTL202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.93129112588482243 5 -0.93129112588482243 
		8 -0.93129112588482243 12 -0.93129112588482243 15 -0.93129112588482243 20 
		-1.1534199623441592 23 -0.69482215054722585 26 -0.69482215054722585 30 -0.69482215054722585 
		34 -0.69482215054722585 38 -0.64724218630287966 43 -0.69482215054722585 50 
		-0.64724218630287966;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 1 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kox[1:12]"  1 1 1 0.012004179880023003 0.011276308447122574 
		0.004361078143119812 1 1 0.055958177894353867 1 1 0.048981379717588425;
	setAttr -s 13 ".koy[1:12]"  0 0 0 -0.99992793798446655 0.99993640184402466 
		0.99999046325683594 0 0 0.99843311309814453 0 0 0.99879968166351318;
createNode animCurveTL -n "animCurveTL203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0.022123768926756712 
		26 0.11190813190038036 30 0.11190813190038036 34 0.11190813190038036 38 -0.22996541113775407 
		43 0.11190813190038036 50 -0.22996541113775407;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 -0.37226360672997638 
		26 -0.69888369986281507 30 -0.69888369986281507 34 -0.69888369986281507 38 
		-0.71572892866406468 43 -0.69888369986281507 50 -0.71572892866406468;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -1 5 -1 8 -1 12 -1 15 -1 20 -1 
		23 -0.90721495962988574 26 -0.8656116369436555 30 -0.8656116369436555 34 
		-0.8656116369436555 38 -0.86045149817799893 43 -0.8656116369436555 50 -0.86045149817799893;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA552";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.061808866237340665 5 -0.061808866237337522 
		8 -0.061808866237337522 12 -0.061808866237337522 15 -0.061808866237340665 
		20 -0.061808866237337522 23 -0.061808866237337522 26 -0.061808866237337522 
		30 -0.061808866237337522 34 -0.061808866237337522 38 -0.061808866237337522 
		43 -0.061808866237337522 50 -0.061808866237337522;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -59.058178941076754 5 -59.058178941076754 
		8 -59.058178941076754 12 -59.058178941076754 15 -59.058178941076754 20 -59.058178941076754 
		23 -59.058178941076754 26 -59.058178941076754 30 -59.058178941076754 34 -59.058178941076754 
		38 -59.058178941076754 43 -59.058178941076754 50 -59.058178941076754;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 16.57914742975785 5 16.579147429757843 
		8 16.579147429757843 12 16.579147429757843 15 16.57914742975785 20 16.579147429757843 
		23 16.579147429757843 26 16.579147429757843 30 16.579147429757843 34 16.579147429757843 
		38 16.579147429757843 43 16.579147429757843 50 16.579147429757843;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 12.253734489678925 5 12.253734489678925 
		8 12.253734489678925 12 12.253734489678925 15 12.253734489678925 20 12.253734489678925 
		23 12.253734489678925 26 12.253734489678925 30 12.253734489678925 34 12.253734489678925 
		38 12.253734489678925 43 12.253734489678925 50 12.253734489678925;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -65.746751280844975 5 -65.746751280844961 
		8 -65.746751280844961 12 -65.746751280844961 15 -65.746751280844975 20 -65.746751280844961 
		23 -65.746751280844961 26 -65.746751280844961 30 -65.746751280844961 34 -65.746751280844961 
		38 -65.746751280844961 43 -65.746751280844961 50 -65.746751280844961;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA557";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA558";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 15.711328223519061 5 15.711328223519057 
		8 15.711328223519057 12 15.711328223519057 15 15.711328223519061 20 15.711328223519057 
		23 15.711328223519057 26 15.711328223519057 30 15.711328223519057 34 15.711328223519057 
		38 15.711328223519057 43 15.711328223519057 50 15.711328223519057;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA559";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 8.5572674112203657 5 8.5572674112203622 
		8 8.5572674112203622 12 8.5572674112203622 15 8.5572674112203657 20 8.5572674112203622 
		23 8.5572674112203622 26 8.5572674112203622 30 8.5572674112203622 34 8.5572674112203622 
		38 8.5572674112203622 43 8.5572674112203622 50 8.5572674112203622;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA560";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA561";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA562";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA563";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA564";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA565";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA566";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 8.2533422302317216 5 8.2533422302317216 
		8 8.2533422302317216 12 8.2533422302317216 15 8.2533422302317216 20 8.2533422302317216 
		23 8.2533422302317216 26 8.2533422302317216 30 8.2533422302317216 34 8.2533422302317216 
		38 8.2533422302317216 43 8.2533422302317216 50 8.2533422302317216;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA567";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 23.263402056531085 5 23.263402056531085 
		8 23.263402056531085 12 23.263402056531085 15 23.263402056531085 20 23.263402056531085 
		23 23.263402056531085 26 23.263402056531085 30 23.263402056531085 34 23.263402056531085 
		38 23.263402056531085 43 23.263402056531085 50 23.263402056531085;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA568";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 20.166277752815617 5 20.166277752815617 
		8 20.166277752815617 12 20.166277752815617 15 20.166277752815617 20 20.166277752815617 
		23 20.166277752815617 26 20.166277752815617 30 20.166277752815617 34 20.166277752815617 
		38 20.166277752815617 43 20.166277752815617 50 20.166277752815617;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA569";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA570";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA571";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 33.429092416277157 5 33.429092416277157 
		8 33.429092416277157 12 33.429092416277157 15 33.429092416277157 20 33.429092416277157 
		23 33.429092416277157 26 33.429092416277157 30 33.429092416277157 34 33.429092416277157 
		38 33.429092416277157 43 33.429092416277157 50 33.429092416277157;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA572";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA573";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA574";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA575";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA576";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA577";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 50 13.994403295754109;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA578";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA579";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 50 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA580";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 50 13.994403295754109;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 17.254116939558369 5 17.254116939558369 
		8 17.254116939558369 12 17.254116939558369 15 17.254116939558369 20 17.254116939558369 
		23 17.254116939558369 26 17.254116939558369 30 17.254116939558369 34 17.254116939558369 
		38 17.254116939558369 43 17.254116939558369 50 17.254116939558369;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA585";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA586";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA587";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.65073001024951682 5 -29.252455350840993 
		8 -55.462601843595593 12 -15.995208714699748 15 0.65073001024951682 20 -7.8430056866173823 
		23 -7.8430056866173823 26 -7.8430056866173823 30 -18.820843871529618 34 -18.820843871529618 
		38 -2.3937906322123035 43 5.9660149388432382 50 -2.3937906322123035;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA588";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 4.2368721935960938 5 13.790444711182607 
		8 25.410316180072332 12 10.255568461043122 15 4.2368721935960938 20 2.4212113907903019 
		23 2.4212113907903019 26 2.4212113907903019 30 8.442588645585376 34 8.442588645585376 
		38 1.7843868968348546 43 4.5116636179203082 50 1.7843868968348546;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA589";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 9.4592235793901782 5 19.640268163788289 
		8 11.66416467777565 12 14.035144143842492 15 9.4592235793901782 20 15.588191975628375 
		23 15.588191975628375 26 15.588191975628375 30 17.419290303989076 34 17.419290303989076 
		38 13.23227595374661 43 3.100515661214426 50 13.23227595374661;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA590";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 -7.1097278539792699 
		23 -7.1097278539792699 26 -7.1097278539792699 30 -7.1097278539792699 34 -7.1097278539792699 
		38 0 43 -7.1097278539792699 50 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA591";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA593";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 -9.265812116291686 8 -21.879389740706355 
		12 -12.122979457817195 15 0 20 -4.6281794559944602 23 10.703007422197206 
		26 10.703007422197206 30 41.547703469535961 34 1.0811599397748946 38 -0.71032600031388216 
		43 -10.343335099734212 50 -0.71032600031388216;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA594";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 -5.0784452174403798 8 -29.590740831391127 
		12 -26.257831027797405 15 0 20 -4.9674509542691831 23 17.166509192793022 
		26 17.166509192793022 30 45.291841314473849 34 18.970963970785505 38 -3.6938159239902011 
		43 -39.607073910831495 50 -3.6938159239902011;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA595";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 13.828138835879258 5 4.2165117437109014 
		8 10.399745550738366 12 11.492422095737655 15 13.828138835879258 20 21.069151214168098 
		23 28.2639443589953 26 28.2639443589953 30 39.011711319050598 34 20.836542588682661 
		38 14.57223198295749 43 16.345936932681713 50 14.57223198295749;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA596";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1.890577912487224 5 1.890577912487224 
		8 1.890577912487224 12 1.890577912487224 15 1.890577912487224 20 1.890577912487224 
		23 1.890577912487224 26 1.890577912487224 30 1.890577912487224 34 1.890577912487224 
		38 2.2796212519697265 43 3.7501548384564991 50 2.2796212519697265;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA597";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -2.5602510346124587 5 -2.5602510346124587 
		8 -2.5602510346124587 12 -2.5602510346124587 15 -2.5602510346124587 20 -2.5602510346124587 
		23 -2.5602510346124587 26 -2.5602510346124587 30 -2.5602510346124587 34 -2.5602510346124587 
		38 -2.2209313171847893 43 -11.127067305137468 50 -2.2209313171847893;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA598";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -12.605441061780656 5 -12.605441061780654 
		8 -12.605441061780654 12 -12.605441061780654 15 -12.605441061780656 20 -12.605441061780654 
		23 -12.605441061780654 26 -12.605441061780654 30 -12.605441061780654 34 -12.605441061780654 
		38 8.0401232256568225 43 -11.452816059011486 50 8.0401232256568225;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA599";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA600";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA601";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 27.080064458283051 5 27.080064458283051 
		8 27.080064458283051 12 27.080064458283051 15 27.080064458283051 20 27.080064458283051 
		23 27.080064458283051 26 27.080064458283051 30 27.080064458283051 34 27.080064458283051 
		38 27.080064458283051 43 27.080064458283051 50 27.080064458283051;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA602";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 10.423754966968488 5 10.423754966968488 
		8 10.423754966968488 12 10.423754966968488 15 10.423754966968488 20 10.423754966968488 
		23 10.423754966968488 26 10.423754966968488 30 10.423754966968488 34 10.423754966968488 
		38 10.423754966968488 43 10.423754966968488 50 10.423754966968488;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA603";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 27.7228482558439 5 27.722848255843903 
		8 27.722848255843903 12 27.722848255843903 15 27.7228482558439 20 27.722848255843903 
		23 27.722848255843903 26 27.722848255843903 30 27.722848255843903 34 27.722848255843903 
		38 27.722848255843903 43 27.722848255843903 50 27.722848255843903;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA604";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 21.576484776388224 5 21.576484776388227 
		8 21.576484776388227 12 21.576484776388227 15 21.576484776388224 20 21.576484776388227 
		23 21.576484776388227 26 21.576484776388227 30 21.576484776388227 34 21.576484776388227 
		38 21.576484776388227 43 21.576484776388227 50 21.576484776388227;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA605";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA606";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 8 0 12 0 15 0 20 0 23 0 
		26 0 30 0 34 0 38 0 43 0 50 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA607";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 27.911632519594587 5 27.911632519594587 
		8 27.911632519594587 12 27.911632519594587 15 27.911632519594587 20 27.911632519594587 
		23 27.911632519594587 26 27.911632519594587 30 27.911632519594587 34 27.911632519594587 
		38 27.911632519594587 43 27.911632519594587 50 27.911632519594587;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA608";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 11 -3.5741042449073857 25 -8.6520845164762292 
		32 2.274303826249946 38 0 43 14.147283700553537 50 0;
createNode animCurveTA -n "animCurveTA609";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 11 -0.58215068376408585 25 
		-5.5655487527443803 32 -18.112498161296067 38 0 43 18.083848881368453 50 
		0;
createNode animCurveTA -n "animCurveTA610";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 11 0.71969005631383498 25 0.54415604405912121 
		32 7.3704085777005366 38 0 43 13.053843548349843 50 0;
createNode animCurveTA -n "animCurveTA611";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 11 -3.5741042449073857 25 -8.6520845164762292 
		32 2.274303826249946 38 0 43 14.147283700553537 50 0;
createNode animCurveTA -n "animCurveTA612";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 11 -0.58215068376408585 25 
		-5.5655487527443803 32 -18.112498161296067 38 0 43 18.083848881368453 50 
		0;
createNode animCurveTA -n "animCurveTA613";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 11 0.71969005631383498 25 0.54415604405912121 
		32 7.3704085777005366 38 0 43 13.053843548349843 50 0;
createNode animCurveTA -n "animCurveTA614";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 11 -3.5741042449073857 25 -8.6520845164762292 
		32 2.274303826249946 38 0 43 14.147283700553537 50 0;
createNode animCurveTA -n "animCurveTA615";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 11 -0.58215068376408585 25 
		-5.5655487527443803 32 -18.112498161296067 38 0 43 18.083848881368453 50 
		0;
createNode animCurveTA -n "animCurveTA616";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 11 0.71969005631383498 25 0.54415604405912121 
		32 7.3704085777005366 38 0 43 13.053843548349843 50 0;
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
	setAttr ".o" 0;
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
	setAttr -s 3 ".sol";
connectAttr "mrg_get_into_car_all.st" "clipLibrary2.st[0]";
connectAttr "mrg_get_into_car_all.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL165.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL166.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL167.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL168.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL169.a" "clipLibrary2.cel[0].cev[4].cevr";
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
connectAttr "animCurveTL170.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL171.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL172.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL173.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL174.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL175.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA493.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA494.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA495.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL176.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL177.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL178.a" "clipLibrary2.cel[0].cev[28].cevr";
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
connectAttr "animCurveTL179.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL180.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL181.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTL182.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTL183.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTL184.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTL185.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL186.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL187.a" "clipLibrary2.cel[0].cev[52].cevr";
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
connectAttr "animCurveTL188.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL189.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL190.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA540.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA541.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA542.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL191.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL192.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL193.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA543.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA544.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA545.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL194.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL195.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL196.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA546.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA547.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA548.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL197.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL198.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL199.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTA549.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTA550.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTA551.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTL200.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTL201.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTL202.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTL203.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTL204.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTL205.a" "clipLibrary2.cel[0].cev[111].cevr";
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
