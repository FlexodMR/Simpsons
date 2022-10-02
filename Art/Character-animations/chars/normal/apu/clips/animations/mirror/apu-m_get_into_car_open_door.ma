//Maya ASCII 4.0 scene
//Name: apu-m_get_into_car_open_door.ma
//Last modified: Tue, Jul 23, 2002 12:37:20 PM
requires maya "4.0";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dSimpleShader" "17.1";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "apu_get_into_car_open_door";
	setAttr ".ihi" 0;
	setAttr ".du" 22;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kot[0:1]"  5 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 22 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kot[0:1]"  5 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 -0.0018954191607495805 1 -0.0018954191607495805 
		2 -0.0018954191607495805 3 -0.0018954191607495805 4 -0.0018954191607495805 
		5 -0.0018954191607495805 6 -0.0018954191607495805 7 -0.0018954191607495805 
		8 -0.0018954191607495805 9 -0.0019734493603230435 10 -0.002051479559896506 
		11 -0.0018954191607495805 12 -0.0011931473228717806 13 -0.00025678485051647694 
		14 0.0002113963886409349 15 3.4423883455260857e-005 16 -0.00040379374889170776 
		17 -0.00096420668358489085 18 -0.0015077650958092088 19 -0.0018954191607495805 
		20 0.0012359765031566569 21 0.004542940133525142 22 -0.0018954191607495805;
	setAttr -s 23 ".kit[22]"  1;
	setAttr -s 23 ".kot[0:22]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9;
	setAttr -s 23 ".kix[22]"  0.020571961998939514;
	setAttr -s 23 ".kiy[22]"  -0.99978840351104736;
	setAttr -s 23 ".kox[0:22]"  1 1 1 1 1 1 1 1 0.99321979284286499 
		0.97367781400680542 0.99321979284286499 0.61341011524200439 0.37684834003448486 
		0.42879882454872131 0.91638833284378052 0.73491030931472778 0.55522644519805908 
		0.51693612337112427 0.58211374282836914 0.23610749840736389 0.102995365858078 
		0.20823083817958832 0.051703814417123795;
	setAttr -s 23 ".koy[0:22]"  0 0 0 0 0 0 0 0 -0.11625170707702637 
		-0.22792881727218628 0.11625170707702637 0.78976452350616455 0.92627495527267456 
		0.9034000039100647 0.40029042959213257 -0.67816436290740967 -0.8316991925239563 
		-0.85602396726608276 -0.81310737133026123 0.97172695398330688 0.99468183517456055 
		-0.97807973623275757 -0.99866247177124023;
createNode animCurveTL -n "animCurveTL168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
createNode animCurveTL -n "animCurveTL169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 -0.021702124217154065 1 -0.021702124217154065 
		2 -0.021702124217154065 3 -0.021702124217154065 4 -0.021702124217154065 5 
		-0.021702124217154065 6 -0.021702124217154065 7 -0.021702124217154065 8 -0.021702124217154065 
		9 -0.021702124217154065 10 -0.021702124217154065 11 -0.021702124217154065 
		12 -0.021702124217154065 13 -0.021702124217154065 14 -0.021702124217154065 
		15 -0.021702124217154065 16 -0.021702124217154065 17 -0.021702124217154065 
		18 -0.021702124217154065 19 -0.021702124217154065 20 -0.021702124217154065 
		21 -0.021702124217154065 22 -0.021702124217154065;
	setAttr -s 23 ".kit[22]"  1;
	setAttr -s 23 ".kot[0:22]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9;
	setAttr -s 23 ".kix[22]"  0.051824722439050674;
	setAttr -s 23 ".kiy[22]"  -0.99865615367889404;
	setAttr -s 23 ".kox[0:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[0:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA453";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[0:1]"  2 1;
	setAttr -s 2 ".kot[1]"  2;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU33";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU34";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU35";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU36";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU37";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU38";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU39";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 22 1;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU40";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 22 1;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA454";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA455";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA456";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL170";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL171";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL172";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL173";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.29509923398875759 5 -0.29509923398875759 
		8 -0.29509923398875759 11 -0.29509923398875759 14 -0.29509923398875759 19 
		-0.29509923398875759 22 -0.29509923398875759;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 3 3 3 3 3 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL174";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.12805349632774612 5 0.12805349632774612 
		8 0.12805349632774612 11 0.12805349632774612 14 0.12805349632774612 19 0.12805349632774612 
		22 0.12805349632774612;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 3 3 3 3 3 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL175";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.029906601247973442 5 -0.029906601247973442 
		8 -0.029906601247973442 11 -0.029906601247973442 14 -0.029906601247973442 
		19 -0.029906601247973442 22 -0.029906601247973442;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 3 3 3 3 3 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA457";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 3 3 3 3 3 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA458";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 3 3 3 3 3 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA459";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 3 3 3 3 3 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL176";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.1853868062117425 5 0.1853868062117425 
		8 0.1853868062117425 11 0.1853868062117425 14 0.1853868062117425 19 0.1853868062117425 
		22 0.1853868062117425;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 3 3 3 3 3 3;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL177";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.12805385499738539 5 0.12805385499738539 
		8 0.12805385499738539 11 0.12805385499738539 14 0.12805385499738539 19 0.12805385499738539 
		22 0.12805385499738539;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 3 3 3 3 3 3;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL178";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.095595310471025249 5 -0.095595310471025249 
		8 -0.095595310471025249 11 -0.095595310471025249 14 -0.095595310471025249 
		19 -0.095595310471025249 22 -0.095595310471025249;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 3 3 3 3 3 3;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA460";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 3 3 3 3 3 3;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA461";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 25.948901905116401 5 25.948901905116401 
		8 25.948901905116401 11 25.948901905116401 14 25.948901905116401 19 25.948901905116401 
		22 25.948901905116401;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 3 3 3 3 3 3;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA462";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 3 3 3 3 3 3;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA463";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA464";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA465";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA466";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA467";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA468";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 5 1 8 1 11 1 14 1 19 1 22 1;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 5 1 8 1 11 1 14 1 19 1 22 1;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.0026804807853766997 5 -0.0026804807853766997 
		8 -0.0026804807853766997 11 -0.0026804807853766997 14 0.00029895443160232738 
		19 -0.0026804807853766997 22 -0.0026804807853766997;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.01612231507897377;
	setAttr -s 7 ".kiy[6]"  -0.99987000226974487;
	setAttr -s 7 ".kox[0:6]"  1 1 1 0.55734241008758545 1 0.66691374778747559 
		1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0.83028274774551392 0 -0.74513489007949829 
		0;
createNode animCurveTL -n "animCurveTL186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.96427704314795082 5 0.96427704314795082 
		8 0.96427704314795126 11 0.96427704314795082 14 0.96427704314795082 19 0.96427704314795082 
		22 0.96427704314795082;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.030690903717009235 5 -0.030690903717009235 
		8 -0.030690903717009235 11 -0.030690903717009235 14 -0.030690903717009235 
		19 -0.030690903717009235 22 -0.030690903717009235;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.62843630316474508 5 1.4172706358132503 
		8 5.3559938600896526 11 5.3559938600896526 14 5.5887949045481076 19 -0.62843630316474508 
		22 -0.62843630316474508;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.99999290704727173;
	setAttr -s 7 ".kiy[6]"  -0.0037727963645011187;
	setAttr -s 7 ".kox[0:6]"  1 0.93112403154373169 0.94569575786590576 
		0.99979370832443237 0.93112403154373169 0.92625105381011963 1;
	setAttr -s 7 ".koy[0:6]"  0 0.36470270156860352 0.32505306601524353 
		0.020311532542109489 -0.36470270156860352 -0.37690714001655579 0;
createNode animCurveTA -n "animCurveTA470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 5.8284402688137158 5 3.310891698770456 
		8 -23.474724321549342 11 -23.474724321549342 14 -20.756934084050513 19 5.8284402688137158 
		22 5.8284402688137158;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.99999994039535522;
	setAttr -s 7 ".kiy[6]"  -0.00041952726314775646;
	setAttr -s 7 ".kox[0:6]"  1 0.46233448386192322 0.39332783222198486 
		0.97300827503204346 0.46233448386192322 0.49828201532363892 1;
	setAttr -s 7 ".koy[0:6]"  0 -0.88670557737350464 -0.91939830780029297 
		0.23077026009559631 0.88670557737350464 0.86701500415802002 0;
createNode animCurveTA -n "animCurveTA471";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.2956360193097458 5 1.3333736146708783 
		8 0.63689151618975604 11 0.63689151618975404 14 -0.035210834251391099 19 
		1.2956360193097458 22 1.2956360193097458;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.99931001663208008;
	setAttr -s 7 ".kiy[6]"  -0.037141785025596619;
	setAttr -s 7 ".kox[0:6]"  1 0.99907183647155762 0.9981580376625061 
		0.99828439950942993 0.99907183647155762 0.9962279200553894 1;
	setAttr -s 7 ".koy[0:6]"  0 -0.043074712157249451 -0.060667574405670166 
		-0.058551371097564697 0.043074712157249451 0.086775161325931549 0;
createNode animCurveTA -n "animCurveTA472";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA473";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA474";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA475";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA476";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA477";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA478";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA479";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA480";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA481";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA482";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA483";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA484";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA485";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA486";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA487";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA488";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA489";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA490";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA491";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA492";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA493";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA494";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA495";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA496";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA497";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.5198069948790518 5 -0.5198069948790518 
		8 -0.5198069948790518 11 -0.5198069948790518 14 -0.5198069948790518 19 -0.5198069948790518 
		22 -0.5198069948790518;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.72394202659893114 5 -0.72394202659893114 
		8 -0.72394202659893114 11 -0.72394202659893114 14 -0.72394202659893114 19 
		-0.72394202659893114 22 -0.72394202659893114;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.36439499068905612 5 0.36439499068905612 
		8 0.36439499068905612 11 0.36439499068905612 14 0.36439499068905612 19 0.36439499068905612 
		22 0.36439499068905612;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA498";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 7.7976222737965299 5 7.7976222737965299 
		8 7.7976222737965299 11 7.7976222737965299 14 7.7976222737965299 19 7.7976222737965299 
		22 7.7976222737965299;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA499";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 30.409274105849079 5 30.409274105849079 
		8 30.409274105849079 11 30.409274105849079 14 30.409274105849079 19 30.409274105849079 
		22 30.409274105849079;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA500";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 64.859940280210878 5 64.859940280210878 
		8 64.859940280210878 11 64.859940280210878 14 64.859940280210878 19 64.859940280210878 
		22 64.859940280210878;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.43524234076486068 5 0.43524234076486068 
		8 0.43524234076486068 11 0.43524234076486068 14 0.43524234076486068 19 0.43524234076486068 
		22 0.43524234076486068;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.82665738350180629 5 -0.82665738350180629 
		8 -0.82665738350180629 11 -0.82665738350180629 14 -0.82665738350180629 19 
		-0.82665738350180629 22 -0.82665738350180629;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.27773886459742925 5 0.27773886459742925 
		8 0.27773886459742925 11 0.27773886459742925 14 0.27773886459742925 19 0.27773886459742925 
		22 0.27773886459742925;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA501";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA502";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -28.652637602052774 5 -28.652637602052774 
		8 -28.652637602052774 11 -28.652637602052774 14 -28.652637602052774 19 -28.652637602052774 
		22 -28.652637602052774;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA503";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -64.676908227303443 5 -64.676908227303443 
		8 -64.676908227303443 11 -64.676908227303443 14 -64.676908227303443 19 -64.676908227303443 
		22 -64.676908227303443;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.64347170757879468 5 -0.62320497226864835 
		8 -0.69167643018142433 11 -0.69167643018142433 14 -0.69167643018142433 19 
		-0.71704882363486777 22 -0.64347170757879468;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.040496207773685455;
	setAttr -s 7 ".kiy[6]"  0.99917972087860107;
	setAttr -s 7 ".kox[0:6]"  0.08195989578962326 0.055235162377357483 
		0.029196798801422119 1 0.10452538728713989 0.055235162377357483 0.013589929789304733;
	setAttr -s 7 ".koy[0:6]"  0.99663561582565308 -0.99847334623336792 
		-0.99957370758056641 0 -0.99452221393585205 0.99847334623336792 0.99990767240524292;
createNode animCurveTL -n "animCurveTL195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.4310700844976822 5 1.6755253269904316 
		8 1.736680255372699 11 1.736680255372699 14 1.736680255372699 19 1.5541553208776098 
		22 1.4310700844976822;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.0063766851089894772;
	setAttr -s 7 ".kiy[6]"  0.99997967481613159;
	setAttr -s 7 ".kox[0:6]"  0.0068177222274243832 0.0087253814563155174 
		0.032686349004507065 1 0.014608316123485565 0.0087253814563155174 0.0081241857260465622;
	setAttr -s 7 ".koy[0:6]"  0.99997681379318237 0.99996191263198853 
		0.99946564435958862 0 -0.99989330768585205 -0.99996191263198853 -0.99996697902679443;
createNode animCurveTL -n "animCurveTL196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.1323140621875257 5 -0.48510340855155148 
		8 -0.67021093326806336 11 -0.67021093326806336 14 -0.67021093326806336 19 
		0.16673880312036307 22 0.1323140621875257;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.0035761366598308086;
	setAttr -s 7 ".kiy[6]"  0.99999362230300903;
	setAttr -s 7 ".kox[0:6]"  0.0026994063518941402 0.0033228273969143629 
		0.01080390065908432 1 0.0031861569732427597 0.0033228273969143629 0.029036633670330048;
	setAttr -s 7 ".koy[0:6]"  -0.9999963641166687 -0.99999445676803589 
		-0.99994164705276489 0 0.99999493360519409 0.99999445676803589 -0.99957835674285889;
createNode animCurveTA -n "animCurveTA504";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -9.8095199935760213 5 -9.8095199935760213 
		8 -9.8095199935760213 11 -9.8095199935760213 14 -9.8095199935760213 19 -12.190116301634809 
		22 -9.8095199935760213;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.11979132145643234;
	setAttr -s 7 ".kiy[6]"  0.99279910326004028;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 0.98807829618453979 1 0.92346149682998657;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 -0.15395215153694153 0 
		0.38369116187095642;
createNode animCurveTA -n "animCurveTA505";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 6.903921154505233 5 6.903921154505233 
		8 6.903921154505233 11 6.903921154505233 14 6.903921154505233 19 36.773497737324583 
		22 6.903921154505233;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.3794492781162262;
	setAttr -s 7 ".kiy[6]"  0.925212562084198;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 0.45539939403533936 1 0.18838541209697723;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0.89028728008270264 0 -0.98209518194198608;
createNode animCurveTA -n "animCurveTA506";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 65.755594144247468 5 65.755594144247468 
		8 65.755594144247468 11 65.755594144247468 14 65.755594144247468 19 59.577337968631539 
		22 65.755594144247468;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.12444908916950226;
	setAttr -s 7 ".kiy[6]"  0.9922260046005249;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 0.92707443237304688 1 0.67998111248016357;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 -0.37487730383872986 0 
		0.73322963714599609;
createNode animCurveTL -n "animCurveTL197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.59633531426150033 5 0.62774402606703117 
		8 -0.4823018743208084 11 -0.4823018743208084 14 -0.4823018743208084 19 0.88817418035108131 
		22 0.59633531426150033;
	setAttr -s 7 ".kit[4:6]"  1 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 1 9 9;
	setAttr -s 7 ".kix[4:6]"  0.04546814039349556 0.0024722479283809662 
		0.0074000735767185688;
	setAttr -s 7 ".kiy[4:6]"  0.9989657998085022 0.99999696016311646 
		-0.9999726414680481;
	setAttr -s 7 ".kox[0:6]"  0.052989281713962555 0.0024722479283809662 
		0.0018017244292423129 1 0.045468136668205261 0.0024722479283809662 0.0034265290014445782;
	setAttr -s 7 ".koy[0:6]"  0.99859505891799927 -0.99999696016311646 
		-0.99999839067459106 0 0.9989657998085022 0.99999696016311646 -0.99999415874481201;
createNode animCurveTL -n "animCurveTL198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.4073372120339553 5 1.6817317974567199 
		8 2.0564151170517757 11 2.0564151170517757 14 2.0564151170517757 19 2.1150217313802839 
		22 1.4073372120339553;
	setAttr -s 7 ".kit[4:6]"  1 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 1 9 9;
	setAttr -s 7 ".kix[4:6]"  0.46370998024940491 0.0041083577089011669 
		0.0055300635285675526;
	setAttr -s 7 ".kiy[4:6]"  0.88598698377609253 -0.99999153614044189 
		-0.99998468160629272;
	setAttr -s 7 ".kox[0:6]"  0.0060738660395145416 0.0041083577089011669 
		0.0053377649746835232 1 0.46371012926101685 0.0041083577089011669 0.0014130579074844718;
	setAttr -s 7 ".koy[0:6]"  0.99998152256011963 0.99999153614044189 
		0.99998575448989868 0 0.88598698377609253 -0.99999153614044189 -0.99999898672103882;
createNode animCurveTL -n "animCurveTL199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.089888219819601295 5 0.51575693300580783 
		8 0.6695824388499344 11 0.6695824388499344 14 0.6695824388499344 19 0.26224841698776169 
		22 -0.089888219819601295;
	setAttr -s 7 ".kit[4:6]"  1 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 1 9 9;
	setAttr -s 7 ".kix[4:6]"  0.050222642719745636 0.0035111955367028713 
		0.0046951496042311192;
	setAttr -s 7 ".kiy[4:6]"  -0.99873805046081543 -0.99999386072158813 
		-0.99998897314071655;
	setAttr -s 7 ".kox[0:6]"  0.0027518761344254017 0.0035111955367028713 
		0.013000646606087685 1 0.050222612917423248 0.0035111955367028713 0.0028397957794368267;
	setAttr -s 7 ".koy[0:6]"  0.99999618530273438 0.99999386072158813 
		0.9999154806137085 0 -0.99873805046081543 -0.99999386072158813 -0.99999594688415527;
createNode animCurveTA -n "animCurveTA507";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -8.3720838028337159 5 60.105355175326849 
		8 3.6034376717901329 11 3.6034376717901329 14 3.6034376717901329 19 -74.97486221642059 
		22 -8.3720838028337159;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.2603360116481781;
	setAttr -s 7 ".kiy[6]"  0.96551805734634399;
	setAttr -s 7 ".kox[0:6]"  0.13811524212360382 0.78705120086669922 
		0.19876345992088318 1 0.19086678326129913 0.78705120086669922 0.085709564387798309;
	setAttr -s 7 ".koy[0:6]"  0.99041616916656494 0.61688762903213501 
		-0.98004746437072754 0 -0.98161596059799194 -0.61688762903213501 0.99632018804550171;
createNode animCurveTA -n "animCurveTA508";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -7.9878122667209013 5 -57.6756622718286 
		8 -16.013673265538053 11 -16.013673265538053 14 -16.013673265538053 19 -78.085162025408806 
		22 -7.9878122667209013;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.2515052855014801;
	setAttr -s 7 ".kiy[6]"  0.96785593032836914;
	setAttr -s 7 ".kox[0:6]"  0.18873190879821777 0.8852916955947876 
		0.2652018666267395 1 0.23901519179344177 0.8852916955947876 0.081465773284435272;
	setAttr -s 7 ".koy[0:6]"  -0.98202866315841675 -0.46503609418869019 
		0.96419292688369751 0 -0.9710158109664917 0.46503609418869019 0.99667614698410034;
createNode animCurveTA -n "animCurveTA509";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -70.479639319526854 5 -102.06979283138942 
		8 -177.47233113591014 11 -177.47233113591014 14 -177.47233113591014 19 -108.69598856768454 
		22 -70.479639319526854;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.165297731757164;
	setAttr -s 7 ".kiy[6]"  0.98624372482299805;
	setAttr -s 7 ".kox[0:6]"  0.28935578465461731 0.1413688063621521 
		0.15024793148040771 1 0.21686612069606781 0.1413688063621521 0.14826774597167969;
	setAttr -s 7 ".koy[0:6]"  -0.9572216272354126 -0.98995697498321533 
		-0.98864835500717163 0 0.97620135545730591 0.98995697498321533 0.98894727230072021;
createNode animCurveTL -n "animCurveTL200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.1016791736294336 5 1.1099640718648953 
		8 0.43277885085526263 11 0.43277885085526263 14 1.1531151559350343 19 0.28205296994012197 
		22 0.1016791736294336;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.011087404564023018;
	setAttr -s 7 ".kiy[6]"  -0.99993854761123657;
	setAttr -s 7 ".kox[0:6]"  0.0016529696295037866 0.0080537078902125359 
		0.0029533887282013893 0.0027764702681452036 0.01768939383327961 0.0025362058077007532 
		0.0055439583957195282;
	setAttr -s 7 ".koy[0:6]"  0.99999862909317017 0.99996757507324219 
		-0.9999956488609314 0.9999961256980896 -0.9998435378074646 -0.99999678134918213 
		-0.99998462200164795;
createNode animCurveTL -n "animCurveTL201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.40762644910266188 5 -0.4410296440688638 
		8 -1.0665105917635724 11 -1.0665105917635724 14 -0.38483240262525004 19 -0.87920517052667224 
		22 -0.40762644910266188;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.0042410353198647499;
	setAttr -s 7 ".kiy[6]"  0.99999105930328369;
	setAttr -s 7 ".kox[0:6]"  0.049833435565233231 0.0040472135879099369 
		0.0031975230667740107 0.0029339229222387075 0.01423555426299572 0.1161971390247345 
		0.0021205325610935688;
	setAttr -s 7 ".koy[0:6]"  -0.99875748157501221 -0.99999183416366577 
		-0.99999487400054932 0.99999570846557617 0.99989867210388184 -0.99322617053985596 
		0.99999773502349854;
createNode animCurveTL -n "animCurveTL202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.93129112588482243 5 -1.0449130470452248 
		8 -0.56596695006850484 11 -0.56596695006850484 14 0.38422740689155033 19 
		-0.85940030809392287 22 -0.93129112588482243;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.027809206396341324;
	setAttr -s 7 ".kiy[6]"  -0.99961322546005249;
	setAttr -s 7 ".kox[0:6]"  0.01466695312410593 0.0072992583736777306 
		0.0041757989674806595 0.0021048279013484716 0.0090874349698424339 0.0020270799286663532 
		0.01390864048153162;
	setAttr -s 7 ".koy[0:6]"  -0.99989241361618042 0.9999733567237854 
		0.99999129772186279 0.99999779462814331 -0.99995869398117065 -0.99999797344207764 
		-0.99990326166152954;
createNode animCurveTL -n "animCurveTL203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 -0.47879246795359254 
		11 -0.47879246795359254 14 -0.47879246795359254 19 0 22 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 0.0055694803595542908 0.0041771386750042439 
		1 0.0055694803595542908 0.0055694803595542908 1;
	setAttr -s 7 ".koy[0:6]"  0 -0.9999845027923584 -0.99999129772186279 
		0 0.9999845027923584 0.9999845027923584 0;
createNode animCurveTL -n "animCurveTL204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 -0.08835860664206352 
		11 -0.08835860664206352 14 -0.08835860664206352 19 0 22 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 0.030166307464241982 0.022629236802458763 
		1 0.030166307464241982 0.030166307464241982 1;
	setAttr -s 7 ".koy[0:6]"  0 -0.99954491853713989 -0.99974393844604492 
		0 0.99954491853713989 0.99954491853713989 0;
createNode animCurveTL -n "animCurveTL205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1 5 -1 8 -0.39982101962890249 
		11 -0.39982101962890249 14 -0.39982101962890249 19 -1 22 -1;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 0.0044430750422179699 0.0033323206007480621 
		1 0.0044430750422179699 0.0044430750422179699 1;
	setAttr -s 7 ".koy[0:6]"  0 0.99999010562896729 0.99999445676803589 
		0 -0.99999010562896729 -0.99999010562896729 0;
createNode animCurveTA -n "animCurveTA510";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.061808866237337522 5 -0.061808866237337522 
		8 -0.061808866237337522 11 -0.061808866237337522 14 -0.061808866237337522 
		19 -0.061808866237337522 22 -0.061808866237337522;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA511";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -59.058178941076754 5 -59.058178941076754 
		8 -59.058178941076754 11 -59.058178941076754 14 -59.058178941076754 19 -59.058178941076754 
		22 -59.058178941076754;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA512";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.579147429757843 5 16.579147429757843 
		8 16.579147429757843 11 16.579147429757843 14 16.579147429757843 19 16.579147429757843 
		22 16.579147429757843;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA513";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.253734489678925 5 12.253734489678925 
		8 12.253734489678925 11 12.253734489678925 14 12.253734489678925 19 12.253734489678925 
		22 12.253734489678925;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA514";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -65.746751280844961 5 -65.746751280844961 
		8 -65.746751280844961 11 -65.746751280844961 14 -65.746751280844961 19 -65.746751280844961 
		22 -65.746751280844961;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA515";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA516";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.711328223519057 5 15.711328223519057 
		8 15.711328223519057 11 15.711328223519057 14 15.711328223519057 19 15.711328223519057 
		22 15.711328223519057;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA517";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.5572674112203622 5 8.5572674112203622 
		8 8.5572674112203622 11 8.5572674112203622 14 8.5572674112203622 19 8.5572674112203622 
		22 8.5572674112203622;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA518";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA519";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA520";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA521";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA523";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.2533422302317216 5 8.2533422302317216 
		8 8.2533422302317216 11 8.2533422302317216 14 8.2533422302317216 19 8.2533422302317216 
		22 8.2533422302317216;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 23.263402056531085 5 23.263402056531085 
		8 23.263402056531085 11 23.263402056531085 14 23.263402056531085 19 23.263402056531085 
		22 23.263402056531085;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 20.166277752815617 5 20.166277752815617 
		8 20.166277752815617 11 20.166277752815617 14 20.166277752815617 19 20.166277752815617 
		22 20.166277752815617;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 33.429092416277157 5 33.429092416277157 
		8 39.958476539989476 11 39.958476539989476 14 39.958476539989476 19 33.429092416277157 
		22 33.429092416277157;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 0.91955214738845825 0.86885339021682739 
		1 0.91955214738845825 0.91955214738845825 1;
	setAttr -s 7 ".koy[0:6]"  0 0.39296802878379822 0.49506944417953491 
		0 -0.39296802878379822 -0.39296802878379822 0;
createNode animCurveTA -n "animCurveTA530";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA531";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA532";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA533";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA534";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA535";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 22 13.994403295754109;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA536";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA537";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA538";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 22 13.994403295754109;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA539";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA540";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA541";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 17.254116939558369 5 17.254116939558369 
		8 17.254116939558369 11 17.254116939558369 14 17.254116939558369 19 17.254116939558369 
		22 17.254116939558369;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA542";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA543";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA544";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.65073001024951671 5 -3.9568076839401427 
		8 -17.068638286573716 11 -17.068638286573716 14 -19.588638286573751 19 0.65073001024951671 
		22 0.65073001024951671;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0.00019445622456260026;
	setAttr -s 7 ".kox[0:6]"  1 0.65302681922912598 0.65805906057357788 
		0.97666257619857788 0.65302681922912598 0.60250437259674072 1;
	setAttr -s 7 ".koy[0:6]"  0 -0.75733476877212524 -0.75296634435653687 
		-0.2147793173789978 0.75733476877212524 0.79811555147171021 0;
createNode animCurveTA -n "animCurveTA546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 4.2368721935960929 5 4.2368721935960965 
		8 13.425353902454427 11 13.425353902454427 14 13.425353902454402 19 4.2368721935960929 
		22 4.2368721935960929;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.98341244459152222;
	setAttr -s 7 ".kiy[6]"  0.18138337135314941;
	setAttr -s 7 ".kox[0:6]"  1 0.85696893930435181 0.78016567230224609 
		1 0.85696893930435181 0.85696893930435181 1;
	setAttr -s 7 ".koy[0:6]"  0 0.51536804437637329 0.62557297945022583 
		0 -0.51536804437637329 -0.51536804437637329 0;
createNode animCurveTA -n "animCurveTA547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.7398866450636881 5 8.7398866450636916 
		8 7.2436181159875543 11 7.2436181159875543 14 7.2436181159875463 19 8.7398866450636881 
		22 8.7398866450636881;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.99999779462814331;
	setAttr -s 7 ".kiy[6]"  0.0021073287352919579;
	setAttr -s 7 ".kox[0:6]"  1 0.9952390193939209 0.99158269166946411 
		1 0.9952390193939209 0.9952390193939209 1;
	setAttr -s 7 ".koy[0:6]"  0 -0.097464308142662048 -0.12947498261928558 
		0 0.097464308142662048 0.097464308142662048 0;
createNode animCurveTA -n "animCurveTA548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 -65.099346843289041 8 -8.9218180358985339 
		11 -8.9218180358985339 14 39.465670659755219 19 0 22 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.30739530920982361;
	setAttr -s 7 ".kiy[6]"  -0.95158189535140991;
	setAttr -s 7 ".kox[0:6]"  0.14513491094112396 0.86355394124984741 
		0.19986547529697418 0.23044659197330475 0.86355394124984741 0.3610319197177887 
		1;
	setAttr -s 7 ".koy[0:6]"  -0.98941189050674438 -0.5042564868927002 
		0.97982335090637207 0.97308498620986938 0.5042564868927002 -0.93255347013473511 
		0;
createNode animCurveTA -n "animCurveTA549";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 11.733347411067861 8 1.6155955699641837 
		11 1.6155955699641837 14 -8.4110773468270246 19 0 22 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.82315295934677124;
	setAttr -s 7 ".kiy[6]"  0.56781971454620361;
	setAttr -s 7 ".kox[0:6]"  0.63122755289077759 0.99445593357086182 
		0.74961936473846436 0.75257956981658936 0.99445593357086182 0.87602949142456055 
		1;
	setAttr -s 7 ".koy[0:6]"  0.77559769153594971 0.10515425354242325 
		-0.66186922788619995 -0.65850132703781128 -0.10515425354242325 0.48225751519203186 
		0;
createNode animCurveTA -n "animCurveTA550";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -15.452965173287611 5 2.5398046573199404 
		8 8.9932894977754412 11 8.9932894977754412 14 0.81922993329620952 19 -15.452965173287611 
		22 -15.452965173287611;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.51597636938095093;
	setAttr -s 7 ".kiy[6]"  0.85660278797149658;
	setAttr -s 7 ".kox[0:6]"  0.46879675984382629 0.5299980640411377 
		0.87132489681243896 0.81410467624664307 0.5299980640411377 0.68450582027435303 
		1;
	setAttr -s 7 ".koy[0:6]"  0.88330608606338501 0.84799885749816895 
		0.49070650339126587 -0.58071815967559814 -0.84799885749816895 -0.72900736331939697 
		0;
createNode animCurveTA -n "animCurveTA551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -4.8714700432790456 5 -4.8714700432790456 
		8 -4.8714700432790456 11 -4.8714700432790456 14 -4.8714700432790456 19 -4.8714700432790456 
		22 -4.8714700432790456;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA552";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -11.783606204137085 5 -11.783606204137085 
		8 -11.783606204137085 11 -11.783606204137085 14 -11.783606204137085 19 -11.783606204137085 
		22 -11.783606204137085;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 7.5423825101935913 5 7.5423825101935913 
		8 7.5423825101935913 11 7.5423825101935913 14 7.5423825101935913 19 7.5423825101935913 
		22 7.5423825101935913;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.8903601258661931 5 1.1957942388486538 
		8 -3.4800486108535926 11 -3.4800486108535926 14 -2.8124611984170382 19 1.8903601258661931 
		22 1.8903601258661931;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  -5.3161315008765087e-005;
	setAttr -s 7 ".kox[0:6]"  1 0.94341850280761719 0.92588615417480469 
		0.99830728769302368 0.94341850280761719 0.95575034618377686 1;
	setAttr -s 7 ".koy[0:6]"  0 -0.3316044807434082 -0.37780255079269409 
		0.058159381151199341 0.3316044807434082 0.29417896270751953 0;
createNode animCurveTA -n "animCurveTA555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.5597289571479034 5 -2.5789635952751016 
		8 -1.9834659991821482 11 -1.9834659991821482 14 -2.95704996942565 19 -2.5597289571479034 
		22 -2.5597289571479034;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.99921929836273193;
	setAttr -s 7 ".kiy[6]"  0.039507240056991577;
	setAttr -s 7 ".kox[0:6]"  1 0.99928951263427734 0.99865245819091797 
		0.99641019105911255 0.99928951263427734 0.99966204166412354 1;
	setAttr -s 7 ".koy[0:6]"  0 0.037689525634050369 0.051896940916776657 
		-0.084656238555908203 -0.037689525634050369 0.025995811447501183 0;
createNode animCurveTA -n "animCurveTA556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.016811087403604 5 2.9237779855754376 
		8 3.0641521685924453 11 3.0641521685924453 14 2.3319106751928649 19 2.016811087403604 
		22 2.016811087403604;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.99999916553497314;
	setAttr -s 7 ".kiy[6]"  0.0013058221666142344;
	setAttr -s 7 ".kox[0:6]"  1 0.99765878915786743 0.99992495775222778 
		0.99796462059020996 0.99765878915786743 0.99978739023208618 1;
	setAttr -s 7 ".koy[0:6]"  0 0.068387828767299652 0.012249039486050606 
		-0.06377006322145462 -0.068387828767299652 -0.020618835464119911 0;
createNode animCurveTA -n "animCurveTA557";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA558";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA559";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.080064458283051 5 27.080064458283051 
		8 27.080064458283051 11 27.080064458283051 14 27.080064458283051 19 27.080064458283051 
		22 27.080064458283051;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA560";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 10.423754966968488 5 10.423754966968488 
		8 10.423754966968488 11 10.423754966968488 14 10.423754966968488 19 10.423754966968488 
		22 10.423754966968488;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA561";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.722848255843903 5 27.722848255843903 
		8 27.722848255843903 11 27.722848255843903 14 27.722848255843903 19 27.722848255843903 
		22 27.722848255843903;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA562";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 21.576484776388227 5 21.576484776388227 
		8 21.576484776388227 11 21.576484776388227 14 21.576484776388227 19 21.576484776388227 
		22 21.576484776388227;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA563";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA564";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 14 0 19 0 22 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA565";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.911632519594587 5 27.911632519594587 
		8 35.69325681061391 11 35.69325681061391 14 35.69325681061391 19 27.911632519594587 
		22 27.911632519594587;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 0.89108556509017944 0.82728224992752075 
		1 0.89108556509017944 0.89108556509017944 1;
	setAttr -s 7 ".koy[0:6]"  0 0.45383533835411072 0.56178653240203857 
		0 -0.45383533835411072 -0.45383533835411072 0;
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
connectAttr "apu_get_into_car_open_door.st" "clipLibrary2.st[0]";
connectAttr "apu_get_into_car_open_door.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL165.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL166.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL167.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL168.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL169.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA453.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU33.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU34.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU35.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU36.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU37.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU38.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU39.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU40.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA454.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA455.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA456.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL170.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL171.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL172.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL173.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL174.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL175.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA457.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA458.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA459.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL176.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL177.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL178.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA460.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA461.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA462.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA463.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA464.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA465.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA466.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA467.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA468.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTL179.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTL180.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTL181.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTL182.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTL183.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTL184.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL185.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL186.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL187.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTA469.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTA470.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTA471.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTA472.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTA473.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTA474.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA475.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA476.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA477.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA478.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA479.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA480.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA481.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA482.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA483.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA484.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA485.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA486.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA487.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA488.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA489.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA490.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA491.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA492.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA493.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA494.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA495.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA496.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA497.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTL188.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTL189.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTL190.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA498.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA499.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA500.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL191.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL192.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL193.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA501.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA502.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA503.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL194.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL195.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL196.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA504.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA505.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA506.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL197.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL198.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL199.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA507.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA508.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA509.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL200.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL201.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL202.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTL203.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTL204.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTL205.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTA510.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTA511.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTA512.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTA513.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTA514.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTA515.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA516.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA517.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA518.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA519.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA520.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA521.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA522.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA523.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA524.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA525.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA526.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA527.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA528.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA529.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA530.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA531.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA532.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA533.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA534.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA535.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA536.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA537.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA538.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA539.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA540.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA541.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA542.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA543.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA544.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA545.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA546.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA547.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA548.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA549.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA550.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA551.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA552.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA553.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA554.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA555.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA556.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA557.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA558.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA559.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA560.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA561.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA562.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA563.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA564.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA565.a" "clipLibrary2.cel[0].cev[161].cevr";
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
// End of apu-m_get_into_car_open_door.ma
