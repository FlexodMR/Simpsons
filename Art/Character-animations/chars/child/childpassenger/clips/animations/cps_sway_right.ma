//Maya ASCII 4.0 scene
//Name: cps_sway_right.ma
//Last modified: Wed, Aug 14, 2002 10:32:28 AM
requires maya "4.0";
requires "p3dDeformer" "18.0.0.0";
requires "p3dmayaexp" "18.2";
requires "p3dSimpleShader" "18.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "cps_sway_rightSource";
	setAttr ".ihi" 0;
	setAttr ".du" 32;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL370";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL371";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0011388751932599 32 1.0011388751932599;
createNode animCurveTL -n "animCurveTL373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTL -n "animCurveTL374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.81305610463408051 32 0.81305610463408051;
createNode animCurveTA -n "animCurveTA1060";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTU -n "animCurveTU71";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU72";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU73";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU74";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU75";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU76";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1061";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1062";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1063";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL375";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL376";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL377";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.0409464456206359 3 2.0409464456206359 
		6 2.0409464456206359 10 2.0409464456206359 20 2.0409464456206359 24 2.0409464456206359 
		28 2.0409464456206359 32 2.0409464456206359;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.98803500993479365 3 0.98803500993479365 
		6 0.98803500993479365 10 0.98803500993479365 20 0.98803500993479365 24 0.98803500993479365 
		28 0.98803500993479365 32 0.98803500993479365;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.3692681032003731 3 2.3692681032003731 
		6 2.3692681032003731 10 2.3692681032003731 20 2.3692681032003731 24 2.3692681032003731 
		28 2.3692681032003731 32 2.3692681032003731;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1064";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -27.647037481197401 3 -27.647037481197401 
		6 -27.647037481197401 10 -27.647037481197401 20 -27.647037481197401 24 -27.647037481197401 
		28 -27.647037481197401 32 -27.647037481197401;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1065";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.6471102606573034 3 -1.6471102606573034 
		6 -1.6471102606573034 10 -1.6471102606573034 20 -1.6471102606573034 24 -1.6471102606573034 
		28 -1.6471102606573034 32 -1.6471102606573034;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1066";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -7.7922141916432519 3 -7.7922141916432519 
		6 -7.7922141916432519 10 -7.7922141916432519 20 -7.7922141916432519 24 -7.7922141916432519 
		28 -7.7922141916432519 32 -7.7922141916432519;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.4792569860852818 3 2.4792569860852818 
		6 2.4792569860852818 10 2.4792569860852818 20 2.4792569860852818 24 2.4792569860852818 
		28 2.4792569860852818 32 2.4792569860852818;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.004658375723265 3 1.004658375723265 
		6 1.004658375723265 10 1.004658375723265 20 1.004658375723265 24 1.004658375723265 
		28 1.004658375723265 32 1.004658375723265;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.4087040652971967 3 2.4087040652971967 
		6 2.4087040652971967 10 2.4087040652971967 20 2.4087040652971967 24 2.4087040652971967 
		28 2.4087040652971967 32 2.4087040652971967;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1067";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -28.33147073208438 3 -28.33147073208438 
		6 -28.33147073208438 10 -28.33147073208438 20 -28.33147073208438 24 -28.33147073208438 
		28 -28.33147073208438 32 -28.33147073208438;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1068";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 10.113681911874204 3 10.113681911874204 
		6 10.113681911874204 10 10.113681911874204 20 10.113681911874204 24 10.113681911874204 
		28 10.113681911874204 32 10.113681911874204;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1069";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -3.6896128937020114 3 -3.6896128937020114 
		6 -3.6896128937020114 10 -3.6896128937020114 20 -3.6896128937020114 24 -3.6896128937020114 
		28 -3.6896128937020114 32 -3.6896128937020114;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1070";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1071";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1072";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1073";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1074";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1075";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1076";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1077";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1078";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1079";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1080";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1081";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0.097466557943624466 6 0.097466557943624466 
		10 0.097466557943624466 20 0.097466557943624466 24 0.097466557943624466 28 
		0.097466557943624466 32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.02051553875207901 1 1 1 1 0.027349576354026794 
		0.013678621500730515;
	setAttr -s 8 ".kiy[0:7]"  0 0.9997895359992981 0 0 0 0 -0.99962592124938965 
		-0.99990642070770264;
createNode animCurveTL -n "animCurveTL385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0.89926276112817349 6 0.89926276112817349 
		10 0.89926276112817349 20 0.89926276112817349 24 0.89926276112817349 28 0.89926276112817349 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.0022240385878831148 1 1 1 1 
		0.0029653790406882763 0.0014826938277110457;
	setAttr -s 8 ".kiy[0:7]"  0 0.99999755620956421 0 0 0 0 -0.99999558925628662 
		-0.99999892711639404;
createNode animCurveTL -n "animCurveTL386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 3 0.80168990793572048 6 0.80168990793572048 
		10 0.80168990793572048 20 0.80168990793572048 24 0.80168990793572048 28 0.80168990793572048 
		32 1;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.010084702633321285 1 1 1 1 
		0.013445737771689892 0.0067233224399387836;
	setAttr -s 8 ".kiy[0:7]"  0 -0.99994915723800659 0 0 0 0 
		0.99990957975387573 0.99997740983963013;
createNode animCurveTL -n "animCurveTL387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0.011621961304049206 6 0.011621961304049206 
		10 0.011621961304049206 20 0.011621961304049206 24 0.011621961304049206 28 
		0.011621961304049206 32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.16959509253501892 1 1 1 1 0.22363914549350739 
		0.11397765576839447;
	setAttr -s 8 ".kiy[0:7]"  0 0.98551380634307861 0 0 0 0 -0.97467201948165894 
		-0.99348330497741699;
createNode animCurveTL -n "animCurveTL388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0.53592894662340362 6 0.53592894662340362 
		10 0.53592894662340362 20 0.53592894662340362 24 0.53592894662340362 28 0.53592894662340362 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.003731811884790659 1 1 1 1 
		0.0049757221713662148 0.0024878832045942545;
	setAttr -s 8 ".kiy[0:7]"  0 0.99999302625656128 0 0 0 0 -0.99998760223388672 
		-0.99999690055847168;
createNode animCurveTL -n "animCurveTL389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 3 1.1714982742260704 6 1.1714982742260704 
		10 1.1714982742260704 20 1.1714982742260704 24 1.1714982742260704 28 1.1714982742260704 
		32 1;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.011661131866276264 1 1 1 1 
		0.015547353774309158 0.0077743781730532646;
	setAttr -s 8 ".kiy[0:7]"  0 0.99993199110031128 0 0 0 0 -0.99987912178039551 
		-0.99996978044509888;
createNode animCurveTL -n "animCurveTL390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.2588898218793334 3 2.2588898218793334 
		6 2.2588898218793334 10 2.2588898218793334 20 2.2588898218793334 24 2.2588898218793334 
		28 2.2588898218793334 32 2.2588898218793334;
createNode animCurveTL -n "animCurveTL391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.3485645994757605 3 1.3485645994757605 
		6 1.3485645994757605 10 1.3485645994757605 20 1.3485645994757605 24 1.3485645994757605 
		28 1.3485645994757605 32 1.3485645994757605;
createNode animCurveTL -n "animCurveTL392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.8352029825483169 3 1.8352029825483169 
		6 1.8352029825483169 10 1.8352029825483169 20 1.8352029825483169 24 1.8352029825483169 
		28 1.8352029825483169 32 1.8352029825483169;
createNode animCurveTA -n "animCurveTA1082";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -26.004389268796515 3 -19.68841858862119 
		6 -19.688418588621186 10 -19.397748771017859 20 -19.397748771017859 24 -19.688418588621186 
		28 -19.751370263652689 32 -26.004389268796515;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.87578195333480835 0.99976372718811035 
		0.99994093179702759 0.99994093179702759 0.99973225593566895 0.92415189743041992 
		0.77382957935333252;
	setAttr -s 8 ".kiy[0:7]"  0 0.48270687460899353 0.021736914291977882 
		0.010870383121073246 -0.010870383121073246 -0.023138275370001793 -0.38202527165412903 
		-0.63339388370513916;
createNode animCurveTA -n "animCurveTA1083";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 1.6085540494966299 6 1.6085540494966299 
		10 3.7948068215314001 20 3.7948068215314001 24 1.6085540494966297 28 -0.045498044900976108 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.99029099941253662 0.98689109086990356 
		0.99667388200759888 0.99667388200759888 0.96983426809310913 0.99450373649597168 
		0.99998223781585693;
	setAttr -s 8 ".kiy[0:7]"  0 0.13900995254516602 0.16138762235641479 
		0.08149370551109314 -0.08149370551109314 -0.24376527965068817 -0.1047009751200676 
		0.0059555768966674805;
createNode animCurveTA -n "animCurveTA1084";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 1.0789280880091228 6 -0.49270276222632337 
		10 10.294482049548058 20 10.294482049548058 24 4.1348769634669011 28 -0.47743876760723408 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.9990769624710083 0.8233410120010376 
		0.92737263441085815 0.97447663545608521 0.81729954481124878 0.96527659893035889 
		0.99805277585983276;
	setAttr -s 8 ".kiy[0:7]"  0 -0.042956739664077759 0.56754696369171143 
		0.37413898110389709 -0.22448891401290894 -0.57621300220489502 -0.2612299919128418 
		0.062374919652938843;
createNode animCurveTA -n "animCurveTA1085";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1086";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1087";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1088";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1089";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1090";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1091";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1092";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1093";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1094";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1095";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1096";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1097";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1098";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1099";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1100";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1101";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1102";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1103";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1104";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 -37.313732430097119 6 -37.313732430097119 
		10 -37.313732430097119 20 -37.313732430097119 24 -37.313732430097119 28 -37.313732430097119 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.2935711145401001 1 1 1 1 0.37893378734588623 
		0.20057465136051178;
	setAttr -s 8 ".kiy[0:7]"  0 -0.95593726634979248 0 0 0 0 
		0.92542380094528198 0.97967839241027832;
createNode animCurveTL -n "animCurveTL393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -0.31091829247668384 1 -0.30652068088566409 
		2 -0.30232917570714563 3 -0.30422373701157368 4 -0.30900697592147308 5 -0.31902986203219941 
		6 -0.34850984221967507 7 -0.41610270093842472 8 -0.51428282629539357 9 -0.61076592790668371 
		10 -0.66687594474529588 11 -0.68782994513414453 12 -0.703026337351078 13 
		-0.7129195078717333 14 -0.717907298076359 15 -0.71836492616827685 16 -0.71467547342361737 
		17 -0.70724828055485778 18 -0.69651911488115503 19 -0.68292838560918712 20 
		-0.66687594474529588 21 -0.62820037944667717 22 -0.55917376868638424 23 -0.48178923220451508 
		24 -0.42176055670814777 25 -0.38352303653950742 26 -0.34960889532095335 27 
		-0.31663835220548209 28 -0.29109888705835035 29 -0.28306741984484179 30 -0.28933542042337762 
		31 -0.30152230677932551 32 -0.31091829247668384;
createNode animCurveTL -n "animCurveTL394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -0.77923355716462983 1 -0.76422356155061433 
		2 -0.74476018459116466 3 -0.73298458855214732 4 -0.74306432451172355 5 -0.76649803876784928 
		6 -0.78186586453037143 7 -0.77306125597881836 8 -0.73567958174786985 9 -0.67654589468739235 
		10 -0.63205622498367009 11 -0.61572994026769468 12 -0.6060993582489439 13 
		-0.60239286774005252 14 -0.6035416076788459 15 -0.60825008983158713 16 -0.61506300400706981 
		17 -0.62242819037752783 18 -0.62875524248855985 19 -0.63246885081618875 20 
		-0.63205622498367009 21 -0.61663426519666975 22 -0.58651510863745626 23 -0.55861094887710283 
		24 -0.55402156464445873 25 -0.59104991976032217 26 -0.65413386323180078 27 
		-0.71929580857851394 28 -0.76327698467289562 29 -0.78059383249911507 30 -0.78469329562707857 
		31 -0.78167525856954656 32 -0.77923355716462983;
createNode animCurveTL -n "animCurveTL395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0.31578202713845061 1 0.36024493657915729 
		2 0.40468142816501329 3 0.43094931576961415 4 0.44019487866498863 5 0.43161296704949437 
		6 0.38477357045601734 7 0.27810439327766467 8 0.13500881145178073 9 0.0025497172124454171 
		10 -0.073326195096928767 11 -0.10312810899693148 12 -0.12737766252408139 
		13 -0.14569656261498989 14 -0.15767708475158596 15 -0.16289700938515062 16 
		-0.16093292750844554 17 -0.151371854839847 18 -0.13382104913231946 19 -0.1079159356358886 
		20 -0.073326195096928767 21 0.022380971751849717 22 0.18639082923986536 23 
		0.3530052990926037 24 0.46013059583950139 25 0.48590604045876895 26 0.46731306442966436 
		27 0.43110084613243738 28 0.40206839012572709 29 0.38265210861973104 30 0.36047045446095227 
		31 0.33767900271272738 32 0.31578202713845061;
createNode animCurveTA -n "animCurveTA1111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -10.02028477019989 1 -14.228321785144731 
		2 -18.462168458310671 3 -21.226372132010326 4 -21.279356798231753 5 -19.891970563427343 
		6 -19.124833390178168 7 -19.807121036714751 8 -21.435375238727811 9 -23.651723921492785 
		10 -25.231785857404855 11 -25.803071682506431 12 -26.162111422146218 13 -26.329281303174415 
		14 -26.335095622680786 15 -26.216958164699193 16 -26.016379898051227 17 -25.776536229292589 
		18 -25.540022278651886 19 -25.346720700028737 20 -25.231785857404855 21 -25.184560646935527 
		22 -25.010098889961551 23 -24.584264404714155 24 -24.004223289297329 25 -23.485550212680991 
		26 -22.973543691836269 27 -22.184062122448097 28 -20.814395655588516 29 -18.633915605801683 
		30 -15.849471126840868 31 -12.848962006551483 32 -10.02028477019989;
createNode animCurveTA -n "animCurveTA1112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -0.84732927928403023 1 1.1779115782484864 
		2 3.1851278808374524 3 4.5308429478927366 4 4.9518669098682961 5 4.7285721358773127 
		6 4.0648166830602346 7 3.1054528517735212 8 2.3133204482288963 9 1.98028693087972 
		10 1.8826858274607139 11 1.8202709350478499 12 1.7306997854112709 13 1.6298285033396691 
		14 1.5328401324443168 15 1.4541563219886733 16 1.4081307295035523 17 1.4099980937105419 
		18 1.4766942554943936 19 1.6272675028279946 20 1.8826858274607139 21 2.7270946313721804 
		22 4.2672593723078451 23 5.7968553143129427 24 6.6149987858895258 25 6.6246111364507794 
		26 6.2344392146078071 27 5.5636956528491863 28 4.7451776834939974 29 3.6651631114554268 
		30 2.2464134509602411 31 0.68259810226230022 32 -0.84732927928403023;
createNode animCurveTA -n "animCurveTA1113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 48.672083315317913 1 48.761132756925562 
		2 48.857782907578823 3 49.327162255875393 4 52.781926481602049 5 56.587962220914378 
		6 53.249326267888506 7 37.930199145460563 8 15.87886819748738 9 -5.1533138462909092 
		10 -17.294889037707417 11 -21.728322139621298 12 -24.944964725695797 13 -27.031160997537576 
		14 -28.07375376154426 15 -28.159816912860393 16 -27.376510348884306 17 -25.81103543183541 
		18 -23.550659096616421 19 -20.68276647125359 20 -17.294889037707417 21 -8.9123804324725509 
		22 5.6475865658619719 23 21.368818453726284 24 33.247836918682005 25 40.045374959888825 
		26 44.407524072685561 27 47.185057811703643 28 49.232061343394932 29 50.300206810990716 
		30 50.064781681964391 31 49.263238583297237 32 48.672083315317913;
createNode animCurveTL -n "animCurveTL396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0.36714225438863396 1 0.35646662361176257 
		2 0.33974509360276445 3 0.32490066147641472 4 0.31765179860626491 5 0.3191006859945591 
		6 0.33036061703690506 7 0.35691566549419834 8 0.39900375696371043 9 0.44175257225544584 
		10 0.46675674343396739 11 0.47730756820455783 12 0.48729215355969191 13 0.49610210689500067 
		14 0.50300496116084958 15 0.50724110104709441 16 0.50809647342863007 17 0.50494895494041403 
		18 0.49728491410927661 19 0.48468222412447887 20 0.46675674343396739 21 0.41515828627600543 
		22 0.33037899160008549 23 0.25394020818452562 24 0.22091770313847092 25 0.24527654671461932 
		26 0.29723074108352793 27 0.34573414982230249 28 0.37518213592841448 29 0.38630798035801261 
		30 0.38617587729046449 31 0.37721677005496018 32 0.36714225438863396;
createNode animCurveTL -n "animCurveTL397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -0.81554175764549264 1 -0.71736081429962173 
		2 -0.59467349806837866 3 -0.48878107992474812 4 -0.43651234687470453 5 -0.42294685280056199 
		6 -0.42449243241135248 7 -0.44077720175969609 8 -0.48094223655272439 9 -0.53331964591604097 
		10 -0.56951940958014957 11 -0.58106338273086888 12 -0.58575200688876639 13 
		-0.58500288202552964 14 -0.58032967406775471 15 -0.57336762275443587 16 -0.56588243702433361 
		17 -0.55976004430919801 18 -0.5569777956647084 19 -0.55955975045200845 20 
		-0.56951940958014957 21 -0.61038402509968759 22 -0.68658086482583514 23 -0.76806562073111051 
		24 -0.8163668269449752 25 -0.79865595353161656 26 -0.73346996795560193 27 
		-0.65973719076239623 28 -0.6261199338554243 29 -0.65338336846151579 30 -0.71022763556738555 
		31 -0.77089868227918223 32 -0.81554175764549264;
createNode animCurveTL -n "animCurveTL398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0.15070101285416224 1 0.32778788529872155 
		2 0.4907860236455433 3 0.58916341370383207 4 0.59875683410304004 5 0.56074971502521531 
		6 0.53136001139720479 7 0.52952142708914396 8 0.53380734948236219 9 0.53968237070518787 
		10 0.54301797510276328 11 0.5444633522693727 12 0.54695594676752235 13 0.54999873834228885 
		14 0.55307747778601779 15 0.55566511932630103 16 0.55722905740690698 17 0.55724115516420847 
		18 0.55518999220640242 19 0.55059447366204073 20 0.54301797510276328 21 0.51964042487386675 
		22 0.48147370238332388 23 0.44612501778616981 24 0.4272266389269524 25 0.43848557324464738 
		26 0.46887148274699564 27 0.49360597394402073 28 0.48734143503878885 29 0.4351676702014049 
		30 0.35000497052562446 31 0.24855010200234781 32 0.15070101285416224;
createNode animCurveTA -n "animCurveTA1114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -15.218182696168652 1 -29.40076436492452 
		2 -45.500917965373958 3 -60.558752790426638 4 -71.594443544939722 5 -78.09509870404284 
		6 -79.739832140845365 7 -75.228538708526528 8 -65.963137796912406 9 -56.158373291894705 
		10 -50.370759351791953 11 -48.762562807581169 12 -48.283668707376926 13 -48.657153077648296 
		14 -49.597369182769299 15 -50.808377964629891 16 -51.985394840805114 17 -52.819862758561641 
		18 -53.009219069112511 19 -52.27238266291117 20 -50.370759351791953 21 -44.565630849904991 
		22 -36.267149607888086 23 -29.715424393224176 24 -26.174191002014165 25 -25.015215297136688 
		26 -24.977944234013982 27 -25.258920053303399 28 -24.728538839634123 29 -22.865446814435188 
		30 -20.359616319697622 31 -17.683791076220256 32 -15.218182696168652;
createNode animCurveTA -n "animCurveTA1115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -1.949047094653634 1 -26.775515973237127 
		2 -49.211627005824965 3 -62.21232541488741 4 -64.717084257500005 5 -61.44241368779484 
		6 -56.489289038380285 7 -50.430230053175251 8 -42.557723820667988 9 -35.272520444246176 
		10 -31.058876492393626 11 -29.702507052091132 12 -29.182080245768091 13 -29.292391143815649 
		14 -29.831329861013252 15 -30.601575839374256 16 -31.410101533141169 17 -32.064921085967121 
		18 -32.368852877544292 19 -32.111062697300675 20 -31.058876492393626 21 -27.113265167659662 
		22 -19.768668231690413 23 -12.224335930047276 24 -7.6548570610107962 25 -6.7448545743763404 
		26 -7.7447498483383761 27 -9.1963968730222749 28 -9.6222298853180739 29 -8.4750455455739058 
		30 -6.5304476055329657 31 -4.1934105997276481 32 -1.949047094653634;
createNode animCurveTA -n "animCurveTA1116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -32.560381950754014 1 -14.231930364055227 
		2 6.2743258347169091 3 23.98232453808102 4 31.222795953307354 5 30.374008037831747 
		6 28.30394211260549 7 26.585383333555583 8 23.031925313147273 9 19.140421153651353 
		10 16.766171116673103 11 16.369915772166632 12 16.95298425113895 13 18.190919080708657 
		14 19.755071530923352 15 21.308453272325917 16 22.504504025955871 17 22.989970474622357 
		18 22.413262426141181 19 20.438885851715156 20 16.766171116673103 21 5.4712702488037657 
		22 -13.128694109780849 23 -31.340655222771868 24 -42.466745826749069 25 -43.139319072088476 
		26 -37.701499468717749 27 -30.66084550418492 28 -26.545038193874362 29 -26.607645647401167 
		30 -28.350960402149077 31 -30.679943809373672 32 -32.560381950754014;
createNode animCurveTL -n "animCurveTL399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -3.6370999456408879 3 -3.6198978757955427 
		6 -3.6764447219945686 10 -3.8860284643219756 20 -3.8860284643219756 24 -3.7095359709847138 
		28 -3.6263675761025844 32 -3.6370999456408879;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.050767119973897934 0.0087672881782054901 
		0.022260840982198715 0.026431923732161522 0.010269263759255409 0.036789171397686005 
		0.12328693270683289;
	setAttr -s 8 ".kiy[0:7]"  0 -0.9987105131149292 -0.99996155500411987 
		-0.9997522234916687 0.99965059757232666 0.99994724988937378 0.99932307004928589 
		-0.9923710823059082;
createNode animCurveTL -n "animCurveTL400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.7841255587132463 3 1.7861655623246184 
		6 1.7861655623246184 10 1.4240624167621636 20 1.4240624167621636 24 1.7861655623246184 
		28 1.7861655623246184 32 1.7841255587132463;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.70007079839706421 0.0064437026157975197 
		0.012886602431535721 0.012886602431535721 0.007364184595644474 0.79424458742141724 
		0.54710114002227783;
	setAttr -s 8 ".kiy[0:7]"  0 0.71407341957092285 -0.99997925758361816 
		-0.99991697072982788 0.99991697072982788 0.9999728798866272 -0.60759818553924561 
		-0.83706653118133545;
createNode animCurveTL -n "animCurveTL401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.7027068055413355 3 2.784132801630824 
		6 2.7485114572172757 10 2.3455328458181555 20 2.3455328458181555 24 2.7721402547354779 
		28 2.7471568858210769 32 2.7027068055413355;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.043622121214866638 0.0053198826499283314 
		0.011579656042158604 0.010938365012407303 0.0066395620815455914 0.038377784192562103 
		0.029982700943946838;
	setAttr -s 8 ".kiy[0:7]"  0 0.99904811382293701 -0.99998587369918823 
		-0.99993294477462769 0.99994015693664551 0.99997794628143311 -0.99926328659057617 
		-0.99955040216445923;
createNode animCurveTA -n "animCurveTA1117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -26.203413720634714 3 -27.780308558906277 
		6 -25.029035639006846 10 -35.531951471637228 20 -35.531951471637228 24 -33.032738678714288 
		28 -28.280539998888003 32 -26.203413720634714;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.99478954076766968 0.86509817838668823 
		0.9307669997215271 0.99566006660461426 0.9034162163734436 0.91295099258422852 
		0.96496731042861938;
	setAttr -s 8 ".kiy[0:7]"  0 0.10194983333349228 -0.50160253047943115 
		-0.36561286449432373 0.093064688146114349 0.42876473069190979 0.40806925296783447 
		0.26237007975578308;
createNode animCurveTA -n "animCurveTA1118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 14.791961579779635 3 12.383913390691225 
		6 12.383913390691225 10 3.2330026965921626 20 3.2330026965921626 24 11.802660575463847 
		28 11.802660575463847 32 14.791961579779635;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.9786255955696106 0.82520109415054321 
		0.94612401723861694 0.95228457450866699 0.8721776008605957 0.98139315843582153 
		0.93124455213546753;
	setAttr -s 8 ".kiy[0:7]"  0 -0.20565019547939301 -0.56483900547027588 
		-0.32380455732345581 0.30521145462989807 0.48918941617012024 0.19200888276100159 
		0.36439481377601624;
createNode animCurveTA -n "animCurveTA1119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 45.895436695401962 3 44.823893537839851 
		6 44.823893537839851 10 1.4407044561903248 20 1.4407044561903248 24 41.731954640037202 
		28 41.731954640037202 32 45.895436695401962;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.99565643072128296 0.29449516534805298 
		0.52467632293701172 0.55294078588485718 0.35457280278205872 0.96481966972351074 
		0.87806373834609985;
	setAttr -s 8 ".kiy[0:7]"  0 -0.093103609979152679 -0.95565295219421387 
		-0.85130178928375244 0.83322054147720337 0.93502843379974365 0.26291263103485107 
		0.47854366898536682;
createNode animCurveTL -n "animCurveTL402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.1657315743829622 3 -2.1851028230344571 
		6 -2.1688134152943142 10 -2.0790077577263832 20 -2.0790077577263832 24 -2.2517265057961389 
		28 -2.1623127746854203 32 -2.1657315743829622;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.54437655210494995 0.021987536922097206 
		0.051894042640924454 0.027009019628167152 0.031994488090276718 0.030994679778814316 
		0.36334550380706787;
	setAttr -s 8 ".kiy[0:7]"  0 -0.83884096145629883 0.99975824356079102 
		0.99865257740020752 -0.99963521957397461 -0.99948805570602417 0.99951952695846558 
		-0.93165445327758789;
createNode animCurveTL -n "animCurveTL403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.6749265988332942 3 1.965717773443453 
		6 1.9657177734434539 10 2.2123422949443245 20 2.2123422949443245 24 1.7744259866497851 
		28 1.7744259866497851 32 1.6749265988332942;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.006877625361084938 0.0094606522470712662 
		0.018918763846158981 0.010655920952558517 0.0060893306508660316 0.026791214942932129 
		0.013399208895862103;
	setAttr -s 8 ".kiy[0:7]"  0 0.99997633695602417 0.99995523691177368 
		0.9998210072517395 -0.99994319677352905 -0.99998146295547485 -0.9996410608291626 
		-0.99991023540496826;
createNode animCurveTL -n "animCurveTL404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.6001625185510933 3 2.8898607387536952 
		6 2.8205356567066553 10 2.7951458111986209 20 2.7951458111986209 24 2.7973317879752853 
		28 2.8296656228652672 32 2.6001625185510933;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.0090751424431800842 0.02462785504758358 
		0.18077237904071808 0.90557247400283813 0.077020853757858276 0.013523520901799202 
		0.0058095525018870831;
	setAttr -s 8 ".kiy[0:7]"  0 0.99995881319046021 -0.99969667196273804 
		-0.98352497816085815 0.42419153451919556 0.99702948331832886 -0.99990856647491455 
		-0.99998313188552856;
createNode animCurveTA -n "animCurveTA1120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -33.734888782993906 3 -77.414754191685304 
		6 -93.58702719044409 10 -58.822421424599391 20 -58.822421424599391 24 -33.716479206573474 
		28 -33.716479206573474 32 -33.734888782993906;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.18804232776165009 0.58380234241485596 
		0.60965383052825928 0.72900587320327759 0.51987236738204956 0.9999992847442627 
		0.99999707937240601;
	setAttr -s 8 ".kiy[0:7]"  0 -0.98216092586517334 0.81189578771591187 
		0.79266774654388428 0.68450742959976196 0.8542439341545105 -0.0012049030046910048 
		-0.0024098018184304237;
createNode animCurveTA -n "animCurveTA1121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -14.870586397896902 3 -56.639129972687542 
		6 -50.487225135768632 10 -23.874147367571258 20 -23.874147367571258 24 -14.840743191649212 
		28 -14.840743191649212 32 -14.870586397896902;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.30627444386482239 0.37778928875923157 
		0.70876091718673706 0.94739216566085815 0.86080366373062134 0.99999809265136719 
		0.99999237060546875;
	setAttr -s 8 ".kiy[0:7]"  0 -0.95194327831268311 0.92589157819747925 
		0.70544874668121338 0.32007506489753723 0.50893718004226685 -0.0019532295409590006 
		-0.0039064385928213596;
createNode animCurveTA -n "animCurveTA1122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -30.592169336881899 3 35.00287054369857 
		6 31.88993853692255 10 39.874125149997809 20 39.874125149997809 24 -31.057268738801582 
		28 -31.057268738801582 32 -30.592169336881899;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.18039035797119141 0.93957215547561646 
		0.95819264650344849 0.3527277410030365 0.21057377755641937 0.99953699111938477 
		0.99815183877944946;
	setAttr -s 8 ".kiy[0:7]"  0 0.98359507322311401 0.34235095977783203 
		0.28612387180328369 -0.93572598695755005 -0.97757798433303833 0.030426589772105217 
		0.060768872499465942;
createNode animCurveTL -n "animCurveTL405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.31054502397108613 3 0.77290696453185026 
		6 0.77290696453185026 10 0.77290696453185026 20 0.77290696453185026 24 0.77290696453185026 
		28 0.77290696453185026 32 0.31054502397108613;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.0043255751952528954 1 1 1 1 
		0.0057673915289342403 0.0028837304562330246;
	setAttr -s 8 ".kiy[0:7]"  0 0.99999064207077026 0 0 0 0 -0.99998337030410767 
		-0.99999582767486572;
createNode animCurveTL -n "animCurveTL406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.55640530640609931 3 -0.71234308293286885 
		6 -0.71234308293286885 10 -0.71234308293286885 20 -0.71234308293286885 24 
		-0.71234308293286885 28 -0.71234308293286885 32 -0.55640530640609931;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.012824573554098606 1 1 1 1 
		0.017098339274525642 0.0085501028224825859;
	setAttr -s 8 ".kiy[0:7]"  0 -0.99991774559020996 0 0 0 0 
		0.99985378980636597 0.99996346235275269;
createNode animCurveTL -n "animCurveTL407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.57914122395678103 3 -0.35872267288917942 
		6 -0.35872267288917942 10 -0.35872267288917942 20 -0.35872267288917942 24 
		-0.35872267288917942 28 -0.35872267288917942 32 -0.57914122395678103;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.009073273278772831 1 1 1 1 
		0.012097309343516827 0.0060489848256111145;
	setAttr -s 8 ".kiy[0:7]"  0 0.99995881319046021 0 0 0 0 -0.99992680549621582 
		-0.99998170137405396;
createNode animCurveTL -n "animCurveTL408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.063331173333856433 3 -0.35039089098226439 
		6 -0.35039089098226439 10 -0.35039089098226439 20 -0.35039089098226439 24 
		-0.35039089098226439 28 -0.35039089098226439 32 -0.063331173333856433;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.0069670220836997032 1 1 1 1 
		0.0092891883105039597 0.0046447422355413437;
	setAttr -s 8 ".kiy[0:7]"  0 -0.99997574090957642 0 0 0 0 
		0.99995684623718262 0.99998921155929565;
createNode animCurveTL -n "animCurveTL409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.69960805773293522 3 -0.40854033940183732 
		6 -0.40854033940183732 10 -0.40854033940183732 20 -0.40854033940183732 24 
		-0.40854033940183732 28 -0.40854033940183732 32 -0.69960805773293522;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.0068710912019014359 1 1 1 1 
		0.0091612860560417175 0.0045807855203747749;
	setAttr -s 8 ".kiy[0:7]"  0 0.99997639656066895 0 0 0 0 -0.99995803833007813 
		-0.99998950958251953;
createNode animCurveTL -n "animCurveTL410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.66762598980258558 3 -0.82408995422063858 
		6 -0.82408995422063858 10 -0.82408995422063858 20 -0.82408995422063858 24 
		-0.82408995422063858 28 -0.82408995422063858 32 -0.66762598980258558;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.012781452387571335 1 1 1 1 
		0.017040852457284927 0.0085213510319590569;
	setAttr -s 8 ".kiy[0:7]"  0 -0.99991834163665771 0 0 0 0 
		0.99985480308532715 0.99996370077133179;
createNode animCurveTA -n "animCurveTA1123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.061808866237340665 3 -0.061808866237337522 
		6 -0.061808866237337522 10 -0.061808866237337522 20 -0.061808866237337522 
		24 -0.061808866237337522 28 -0.061808866237337522 32 -0.061808866237340665;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -59.058178941076754 3 -59.058178941076754 
		6 -59.058178941076754 10 -59.058178941076754 20 -59.058178941076754 24 -59.058178941076754 
		28 -59.058178941076754 32 -59.058178941076754;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 16.57914742975785 3 16.579147429757843 
		6 16.579147429757843 10 16.579147429757843 20 16.579147429757843 24 16.579147429757843 
		28 16.579147429757843 32 16.57914742975785;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 12.253734489678925 3 12.253734489678925 
		6 12.253734489678925 10 12.253734489678925 20 12.253734489678925 24 12.253734489678925 
		28 12.253734489678925 32 12.253734489678925;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -65.746751280844975 3 -65.746751280844961 
		6 -65.746751280844961 10 -65.746751280844961 20 -65.746751280844961 24 -65.746751280844961 
		28 -65.746751280844961 32 -65.746751280844975;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 15.711328223519061 3 15.711328223519057 
		6 15.711328223519057 10 15.711328223519057 20 15.711328223519057 24 15.711328223519057 
		28 15.711328223519057 32 15.711328223519061;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.5572674112203657 3 8.5572674112203622 
		6 8.5572674112203622 10 8.5572674112203622 20 8.5572674112203622 24 8.5572674112203622 
		28 8.5572674112203622 32 8.5572674112203657;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -171.24588681251637 3 8.2533422302317216 
		6 8.2533422302317216 10 8.2533422302317216 20 8.2533422302317216 24 8.2533422302317216 
		28 8.2533422302317216 32 -171.24588681251637;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.063709892332553864 1 1 1 1 
		0.084812745451927185 0.042521212249994278;
	setAttr -s 8 ".kiy[0:7]"  0 0.99796843528747559 0 0 0 0 -0.99639689922332764 
		-0.99909555912017822;
createNode animCurveTA -n "animCurveTA1138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 23.263402056531088 3 23.263402056531085 
		6 23.263402056531085 10 23.263402056531085 20 23.263402056531085 24 23.263402056531085 
		28 23.263402056531085 32 23.263402056531088;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 20.166277752815624 3 20.166277752815617 
		6 20.166277752815617 10 20.166277752815617 20 20.166277752815617 24 20.166277752815617 
		28 20.166277752815617 32 20.166277752815624;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 33.429092416277157 3 33.429092416277157 
		6 33.429092416277157 10 33.429092416277157 20 33.429092416277157 24 33.429092416277157 
		28 33.429092416277157 32 33.429092416277157;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1143";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1144";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1145";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1146";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1147";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1148";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 16 13.994403295754109 
		32 13.994403295754109;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1149";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1150";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1151";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 16 13.994403295754109 
		32 13.994403295754109;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 17.254116939558369 3 17.254116939558369 
		6 17.254116939558369 10 17.254116939558369 20 17.254116939558369 24 17.254116939558369 
		28 17.254116939558369 32 17.254116939558369;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.373100660218926 3 0.47169836699590695 
		6 0.3060699065895281 10 1.236975047779568 20 1.236975047779568 24 1.4214016114875909 
		28 0.87616976080293729 32 1.373100660218926;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.9956926703453064 0.99836564064025879 
		0.99939447641372681 0.99997621774673462 0.99972128868103027 0.99999499320983887 
		0.99789106845855713;
	setAttr -s 8 ".kiy[0:7]"  0 -0.09271492063999176 0.0571490079164505 
		0.03479468822479248 0.006897373590618372 -0.023608069866895676 -0.003161274129524827 
		0.064910948276519775;
createNode animCurveTA -n "animCurveTA1159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.38374158911587308 3 1.2768818095243442 
		6 -0.15351191025562338 10 7.7222637653379511 20 7.7222637653379511 24 9.4440669425409904 
		28 -1.2973778944769148 32 -0.38374158911587308;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.9997982382774353 0.90077906847000122 
		0.95925229787826538 0.997933030128479 0.86114329099655151 0.84103631973266602 
		0.99292433261871338;
	setAttr -s 8 ".kiy[0:7]"  0 0.020087277516722679 0.43427768349647522 
		0.28255096077919006 0.064262181520462036 -0.5083622932434082 -0.54097861051559448 
		0.11874855309724808;
createNode animCurveTA -n "animCurveTA1160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.96901743689791298 3 7.555110749961746 
		6 7.5655322219557872 10 7.3353787742734253 20 7.3353787742734253 24 7.5751720837071632 
		28 7.4537320541368777 32 0.96901743689791298;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.86666107177734375 0.99986493587493896 
		0.99996292591094971 0.99995976686477661 0.99997001886367798 0.91787731647491455 
		0.76237273216247559;
	setAttr -s 8 ".kiy[0:7]"  0 0.49889734387397766 -0.016433693468570709 
		-0.008607400581240654 0.0089678885415196419 0.0077459719032049179 -0.39686429500579834 
		-0.64713817834854126;
createNode animCurveTA -n "animCurveTA1161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.2144674450583466 3 -0.74431061807076782 
		6 -0.43048234716517736 10 -18.829269962708576 15 -16.628895002917908 20 -16.628895002917908 
		24 -5.6568770064441845 28 2.310873568438117 32 2.2144674450583466;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.97438132762908936 0.5944448709487915 
		0.72776073217391968 0.99342852830886841 0.84291142225265503 0.62787365913391113 
		0.88896483182907104 0.99992036819458008;
	setAttr -s 9 ".kiy[0:8]"  0 -0.22490222752094269 -0.80413639545440674 
		-0.68583112955093384 0.11445426195859909 0.53805238008499146 0.77831530570983887 
		0.45797541737556458 -0.012618532404303551;
createNode animCurveTA -n "animCurveTA1162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 5.3642380392152509 3 1.6366977224868242 
		6 -3.9084086951295003 10 -28.567668164768961 15 11.905623807122382 20 11.905623807122382 
		24 18.521324118131314 28 -5.7089991278026551 32 5.3642380392152509;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.77737134695053101 0.40474379062652588 
		0.73592251539230347 0.42675423622131348 0.93326103687286377 0.65524566173553467 
		0.75776201486587524 0.56786990165710449;
	setAttr -s 9 ".kiy[0:8]"  0 -0.62904196977615356 -0.91443014144897461 
		0.67706573009490967 0.90436762571334839 0.35919895768165588 -0.75541585683822632 
		-0.65253102779388428 0.82311832904815674;
createNode animCurveTA -n "animCurveTA1163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -3.2584064202075544 3 1.8408738049833242 
		6 1.6930326595131873 10 6.6060424320876807 15 -0.30458770080736486 20 -0.30458770080736486 
		24 0.91626232003423369 28 2.0077625371950685 32 -3.2584064202075544;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.91797000169754028 0.94195330142974854 
		0.99331444501876831 0.94033485651016235 0.99748712778091431 0.98874068260192871 
		0.96464025974273682 0.8233339786529541;
	setAttr -s 9 ".kiy[0:8]"  0 0.39664983749389648 0.33574396371841431 
		-0.11543987691402435 -0.34025052189826965 0.070847697556018829 0.14963895082473755 
		-0.26357004046440125 -0.56755715608596802;
createNode animCurveTA -n "animCurveTA1164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -4.9690701715193732 3 6.3459498001189099 
		6 -4.8714700432790456 10 -11.585389647444966 20 -4.8714700432790456 24 -1.107962030853916 
		28 -4.7871034605416334 32 -4.9690701715193732;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.99996370077133179 0.59772306680679321 
		1 0.93106871843338013 0.9999847412109375 0.96952140331268311 0.99971646070480347;
	setAttr -s 8 ".kiy[0:7]"  0 0.008516908623278141 -0.80170267820358276 
		0 0.36484381556510925 0.0055216955952346325 -0.24500672519207001 -0.023812642320990562;
createNode animCurveTA -n "animCurveTA1165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.9904681746768538 3 1.9963037400559176 
		6 -11.783606204137085 10 -10.333092121253337 20 -11.783606204137085 24 -2.8983658144265312 
		28 5.037822461176523 32 2.9904681746768538;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.6128806471824646 0.73511123657226563 
		1 0.96344822645187378 0.67235147953033447 0.93309277296066284 0.96591401100158691;
	setAttr -s 8 ".kiy[0:7]"  0 -0.79017549753189087 -0.67794650793075562 
		0 0.26789459586143494 0.74023205041885376 0.35963568091392517 -0.2588631808757782;
createNode animCurveTA -n "animCurveTA1166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 14.780225156536885 3 6.3786479652115133 
		6 7.5423825101935913 10 7.4167347966497221 20 7.5423825101935913 24 6.6727974003941704 
		28 6.1239022477803227 32 14.780225156536885;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.84547287225723267 0.99699890613555908 
		1 0.99961316585540771 0.99571806192398071 0.88334256410598755 0.66169476509094238;
	setAttr -s 8 ".kiy[0:7]"  0 -0.53401839733123779 0.077415682375431061 
		0 -0.027812430635094643 -0.092441782355308533 0.46872800588607788 0.74977332353591919;
createNode animCurveTA -n "animCurveTA1167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.211833892135727 3 1.6329203501433724 
		6 2.0923016578577855 10 0.62491185199516064 20 0.62491185199516064 24 0.62622119873454107 
		28 0.62731213752257731 32 -2.211833892135727;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.93614232540130615 0.99716955423355103 
		0.99849748611450195 1 1 0.98318237066268921 0.9373595118522644;
	setAttr -s 8 ".kiy[0:7]"  0 0.35162132978439331 -0.075185447931289673 
		-0.054797790944576263 4.896945392829366e-005 0.00015709831495769322 -0.1826263964176178 
		-0.34836354851722717;
createNode animCurveTA -n "animCurveTA1168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.7086730360615547 3 -5.9572552200413194 
		6 -6.899880481305205 10 1.1641825201681875 20 1.1641825201681875 24 -3.8840070108449005 
		28 -5.1467380795344901 32 -1.7086730360615547;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.91088980436325073 0.88259142637252808 
		0.95740491151809692 0.98263967037200928 0.92425966262817383 0.99001616239547729 
		0.91190725564956665;
	setAttr -s 8 ".kiy[0:7]"  0 -0.41264975070953369 0.47014081478118896 
		0.28874877095222473 -0.18552419543266296 -0.38176435232162476 0.14095382392406464 
		0.41039639711380005;
createNode animCurveTA -n "animCurveTA1169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.7082804953288213 3 1.9624155241830841 
		6 1.9403913422709886 10 2.0392151659083639 20 2.0392151659083639 24 1.9840981620606046 
		28 1.970241689140211 32 2.7082804953288213;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.99776232242584229 0.99998348951339722 
		0.99999314546585083 0.99999785423278809 0.99998980760574341 0.9988785982131958 
		0.99536573886871338;
	setAttr -s 8 ".kiy[0:7]"  0 -0.066861018538475037 0.0057445047423243523 
		0.0036959771532565355 -0.0020613668020814657 -0.0045142574235796928 0.047344472259283066 
		0.096161380410194397;
createNode animCurveTA -n "animCurveTA1170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 27.080064458283051 3 27.080064458283051 
		6 27.080064458283051 10 27.080064458283051 20 27.080064458283051 24 27.080064458283051 
		28 27.080064458283051 32 27.080064458283051;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -177.04830761929054 3 10.423754966968488 
		6 10.423754966968488 10 10.423754966968488 20 10.423754966968488 24 10.423754966968488 
		28 10.423754966968488 32 -177.04830761929054;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.061010736972093582 1 1 1 1 
		0.081230148673057556 0.040715929120779037;
	setAttr -s 8 ".kiy[0:7]"  0 0.99813711643218994 0 0 0 0 -0.99669539928436279 
		-0.99917078018188477;
createNode animCurveTA -n "animCurveTA1174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 27.7228482558439 3 27.722848255843903 
		6 27.722848255843903 10 27.722848255843903 20 27.722848255843903 24 27.722848255843903 
		28 27.722848255843903 32 27.7228482558439;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 21.576484776388227 3 21.576484776388227 
		6 21.576484776388227 10 21.576484776388227 20 21.576484776388227 24 21.576484776388227 
		28 21.576484776388227 32 21.576484776388227;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 10 0 20 0 24 0 28 0 
		32 0;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 27.911632519594587 3 27.911632519594587 
		6 27.911632519594587 10 27.911632519594587 20 27.911632519594587 24 27.911632519594587 
		28 27.911632519594587 32 27.911632519594587;
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
connectAttr "cps_sway_rightSource.st" "clipLibrary1.st[0]";
connectAttr "cps_sway_rightSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL370.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL371.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL372.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL373.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL374.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA1060.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU71.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU72.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU73.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU74.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU75.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU76.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU77.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU78.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1061.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1062.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1063.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL375.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL376.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL377.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL378.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL379.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL380.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1064.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1065.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1066.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL381.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL382.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL383.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1067.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1068.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1069.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1070.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1071.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1072.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1073.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1074.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1075.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA1076.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA1077.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA1078.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA1079.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA1080.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA1081.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL384.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL385.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL386.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL387.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL388.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL389.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL390.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL391.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL392.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1082.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1083.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1084.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1085.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1086.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1087.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1088.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1089.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1090.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1091.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1092.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1093.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1094.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1095.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1096.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1097.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1098.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1099.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1100.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1101.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1102.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1103.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1104.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA1105.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA1106.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA1107.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1108.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1109.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1110.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL393.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL394.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL395.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA1111.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1112.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1113.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL396.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL397.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL398.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1114.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1115.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1116.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL399.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL400.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL401.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1117.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1118.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1119.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL402.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL403.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL404.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1120.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1121.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1122.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL405.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL406.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL407.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL408.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL409.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL410.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1123.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1124.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1125.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1126.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1127.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1128.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1129.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1130.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1131.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1132.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1133.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1134.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1135.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1136.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1137.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1138.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1139.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1140.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1141.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1142.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1143.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1144.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1145.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1146.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1147.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1148.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1149.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1150.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1151.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1152.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1153.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1154.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1155.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1156.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1157.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1158.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1159.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1160.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1161.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1162.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1163.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1164.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1165.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1166.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1167.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1168.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1169.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1170.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1171.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1172.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1173.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1174.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1175.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1176.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1177.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1178.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of cps_sway_right.ma
