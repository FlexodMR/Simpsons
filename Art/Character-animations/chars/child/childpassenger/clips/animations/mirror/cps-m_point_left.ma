//Maya ASCII 4.0 scene
//Name: cps-m_point_left.ma
//Last modified: Tue, Jul 16, 2002 05:21:54 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dDeformer" "17.1.1.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "cps_point_left";
	setAttr ".ihi" 0;
	setAttr ".du" 23;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL288";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL289";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL290";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.0008611248067398 23 -1.0008611248067398;
createNode animCurveTL -n "animCurveTL291";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL292";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.81305610463408051 23 0.81305610463408051;
createNode animCurveTA -n "animCurveTA804";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTU -n "animCurveTU55";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU56";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU57";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU58";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU59";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU60";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU61";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU62";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA805";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA806";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA807";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL293";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL294";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL295";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.4790535543793637 3 -2.4790535543793637 
		6 -2.4790535543793637 9 -2.4790535543793637 18 -2.4790535543793637 23 -2.4790535543793637;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.98803500993479365 3 0.98803500993479365 
		6 0.98803500993479365 9 0.98803500993479365 18 0.98803500993479365 23 0.98803500993479365;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.3692681032003731 3 2.3692681032003731 
		6 2.3692681032003731 9 2.3692681032003731 18 2.3692681032003731 23 2.3692681032003731;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA808";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -27.647037481197401 3 -27.647037481197401 
		6 -27.647037481197401 9 -27.647037481197401 18 -27.647037481197401 23 -27.647037481197401;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA809";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.6471102606573034 3 -1.6471102606573034 
		6 -1.6471102606573034 9 -1.6471102606573034 18 -1.6471102606573034 23 -1.6471102606573034;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA810";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -7.7922141916432519 3 -7.7922141916432519 
		6 -7.7922141916432519 9 -7.7922141916432519 18 -7.7922141916432519 23 -7.7922141916432519;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.0407430139147178 3 -2.0407430139147178 
		6 -2.0407430139147178 9 -2.0407430139147178 18 -2.0407430139147178 23 -2.0407430139147178;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.004658375723265 3 1.004658375723265 
		6 1.004658375723265 9 1.004658375723265 18 1.004658375723265 23 1.004658375723265;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.4087040652971967 3 2.4087040652971967 
		6 2.4087040652971967 9 2.4087040652971967 18 2.4087040652971967 23 2.4087040652971967;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA811";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -28.33147073208438 3 -28.33147073208438 
		6 -28.33147073208438 9 -28.33147073208438 18 -28.33147073208438 23 -28.33147073208438;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA812";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 10.113681911874204 3 10.113681911874204 
		6 10.113681911874204 9 10.113681911874204 18 10.113681911874204 23 10.113681911874204;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA813";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -3.6896128937020114 3 -3.6896128937020114 
		6 -3.6896128937020114 9 -3.6896128937020114 18 -3.6896128937020114 23 -3.6896128937020114;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA814";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA815";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA816";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA817";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA818";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA819";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA820";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA821";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA822";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA823";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA824";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA825";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 -0.011621961304049206 6 -0.011621961304049206 
		9 -0.011621961304049206 18 -0.011621961304049206 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.16959509253501892 1 1 0.37262123823165894 
		0.14195439219474792;
	setAttr -s 6 ".kiy[0:5]"  0 -0.98551380634307861 0 0 0.92798352241516113 
		0.98987317085266113;
createNode animCurveTL -n "animCurveTL303";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0.53592894662340362 6 0.53592894662340362 
		9 0.53592894662340362 18 0.53592894662340362 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.003731811884790659 1 1 0.0087072914466261864 
		0.0031098497565835714;
	setAttr -s 6 ".kiy[0:5]"  0 0.99999302625656128 0 0 -0.99996209144592285 
		-0.99999517202377319;
createNode animCurveTL -n "animCurveTL304";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 3 1.1714982742260704 6 1.1714982742260704 
		9 1.1714982742260704 18 1.1714982742260704 23 1;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.011661131866276264 1 1 0.027201090008020401 
		0.0097178108990192413;
	setAttr -s 6 ".kiy[0:5]"  0 0.99993199110031128 0 0 -0.99962997436523438 
		-0.99995279312133789;
createNode animCurveTL -n "animCurveTL305";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 -0.097466557943624466 6 -0.097466557943624466 
		9 -0.097466557943624466 18 -0.097466557943624466 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.02051553875207901 1 1 0.047824885696172714 
		0.017097381874918938;
	setAttr -s 6 ".kiy[0:5]"  0 -0.9997895359992981 0 0 0.99885571002960205 
		0.99985384941101074;
createNode animCurveTL -n "animCurveTL306";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0.89926276112817349 6 0.89926276112817349 
		9 0.89926276112817349 18 0.89926276112817349 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.0022240385878831148 1 1 0.0051893661729991436 
		0.0018533667316660285;
	setAttr -s 6 ".kiy[0:5]"  0 0.99999755620956421 0 0 -0.99998652935028076 
		-0.99999827146530151;
createNode animCurveTL -n "animCurveTL307";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 3 0.80168990793572048 6 0.80168990793572048 
		9 0.80168990793572048 18 0.80168990793572048 23 1;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.010084702633321285 1 1 0.023525655269622803 
		0.0084040490910410881;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99994915723800659 0 0 0.99972325563430786 
		0.99996471405029297;
createNode animCurveTL -n "animCurveTL308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.2591101781206659 3 -2.2591101781206659 
		6 -2.2591101781206659 9 -2.2591101781206659 18 -2.2591101781206659 23 -2.2591101781206659;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL309";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.3485645994757605 3 1.3485645994757605 
		6 1.3485645994757605 9 1.3485645994757605 18 1.3485645994757605 23 1.3485645994757605;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.8352029825483169 3 1.8352029825483169 
		6 1.8352029825483169 9 1.8352029825483169 18 1.8352029825483169 23 1.8352029825483169;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA826";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -26.004389268796515 3 -19.688418588621186 
		6 -19.688418588621186 9 -19.355348401106731 18 -18.400059194436565 23 -26.004389268796515;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.87578195333480835 0.99957787990570068 
		0.99842363595962524 0.97044461965560913 0.78226971626281738;
	setAttr -s 6 ".kiy[0:5]"  0 0.48270687460899353 0.029053587466478348 
		0.056126669049263 -0.24132390320301056 -0.62293988466262817;
createNode animCurveTA -n "animCurveTA827";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 -1.6085540494966297 6 -1.6085540494966297 
		9 -1.1722390370854308 18 0.079169902546744789 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99029099941253662 0.99927592277526855 
		0.99729949235916138 0.99904036521911621 0.9999656081199646;
	setAttr -s 6 ".kiy[0:5]"  0 -0.13900995254516602 0.038048096001148224 
		0.073441982269287109 0.043799564242362976 -0.0082903681322932243;
createNode animCurveTA -n "animCurveTA828";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 -4.1348769634669011 6 -4.1348769634669011 
		9 -3.9227414070193776 18 -3.3143086464046827 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.94063651561737061 0.99982869625091553 
		0.99935966730117798 0.98940873146057129 0.9447171688079834;
	setAttr -s 6 ".kiy[0:5]"  0 -0.33941560983657837 0.018509147688746452 
		0.035781122744083405 0.14515633881092072 0.32788640260696411;
createNode animCurveTA -n "animCurveTA829";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA830";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA831";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA832";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA833";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA834";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA835";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA836";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA837";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA838";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA839";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA840";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA841";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA842";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA843";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA844";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA845";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA846";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA847";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA848";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA849";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA850";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA851";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 -37.313732430097119 6 -37.313732430097119 
		9 -37.313732430097119 18 -37.313732430097119 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.2935711145401001 1 1 0.58246886730194092 
		0.24792882800102234;
	setAttr -s 6 ".kiy[0:5]"  0 -0.95593726634979248 0 0 0.81285297870635986 
		0.96877825260162354;
createNode animCurveTA -n "animCurveTA852";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA853";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA854";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL311";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 -0.31091829247668384 1 -0.24503800394749026 
		2 -0.19151013442048112 3 -0.18343150170282968 4 -0.21707641844622572 5 -0.28249854465434965 
		6 -0.40127652747947085 7 -0.55004059574204978 8 -0.66483076781058004 9 -0.71121457708506686 
		10 -0.71257965827544467 11 -0.71415878260636478 12 -0.71580570678230915 13 
		-0.71728711014661206 14 -0.71829262177844955 15 -0.71846477190992797 16 -0.71744731295111197 
		17 -0.71494986483693601 18 -0.71082741380627568 19 -0.67359474521137774 20 
		-0.59113830024570457 21 -0.49044558317913756 22 -0.39213307095169514 23 -0.31091829247668384;
createNode animCurveTL -n "animCurveTL312";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 -0.77923355716462983 1 -0.68819477722729883 
		2 -0.56736653559751038 3 -0.42847958345979792 4 -0.27927136683316789 5 -0.13948957874984713 
		6 -0.052577105820701818 7 -0.0056741792394572601 8 0.037009979546350991 9 
		0.065751208257924104 10 0.084434636416676909 11 0.10180997882714785 12 0.11695982279181358 
		13 0.12908863178787583 14 0.13753589383909245 15 0.14175375798683362 16 0.14124722733451706 
		17 0.13547934164477299 18 0.12374877629432789 19 0.048588604814325649 20 
		-0.12159966249254023 21 -0.34583627480185303 22 -0.57943642089296177 23 -0.77923355716462983;
createNode animCurveTL -n "animCurveTL313";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0.31578202713845061 1 0.50180706967768685 
		2 0.67557828030102574 3 0.79254174107164188 4 0.85452927072398854 5 0.88527074553005125 
		6 0.86680201840093363 7 0.79745475228992724 8 0.72365560178043331 9 0.68544199415000806 
		10 0.67868239523005292 11 0.67047171702045205 12 0.6613268729000098 13 0.65192365576458833 
		14 0.64304848989795438 15 0.6355327751434291 16 0.63017414048848508 17 0.62764572140082064 
		18 0.62838929455809367 19 0.62351719533502936 20 0.59523026646727206 21 0.5312363650726587 
		22 0.43160489158357496 23 0.31578202713845061;
createNode animCurveTA -n "animCurveTA855";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 -10.02028477019989 1 2.2439608555398318 
		2 15.685897135811166 3 25.748780696411291 4 34.593887109028259 5 41.062921648059756 
		6 37.678772475705308 7 11.571283307856278 8 -35.189408358156548 9 -68.020741396001668 
		10 -77.646656258259185 11 -84.266675693296179 12 -88.210543732157063 13 -89.843694368917753 
		14 -89.518726444342775 15 -87.544503960269324 16 -84.179820904918785 17 -79.660178016164096 
		18 -74.260996668060002 19 -64.603048348172763 20 -49.792100250980354 21 -34.002125419665433 
		22 -20.242774779597276 23 -10.02028477019989;
createNode animCurveTA -n "animCurveTA856";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 -0.84732927928403023 1 19.612178646466152 
		2 42.616318306186592 3 59.781151921108091 4 66.186277169275073 5 64.961245502165411 
		6 60.583539271435058 7 54.614528161686316 8 49.098361581443527 9 44.305773089555906 
		10 42.731550259998947 11 41.879756446623915 12 41.659911415018385 13 41.950558658088589 
		14 42.577922437164446 15 43.309027717126135 16 43.847263782639757 17 43.82725575345561 
		18 42.813491674303407 19 39.796554535582111 20 33.418887523427166 21 23.424373074709816 
		22 11.176811692326437 23 -0.84732927928403023;
createNode animCurveTA -n "animCurveTA857";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 48.672083315317913 1 65.806900325710927 
		2 79.256660225155017 3 87.379561494192956 4 95.532403928837141 5 102.31934241386739 
		6 98.607715049660897 7 70.276398745252664 8 21.944484559363104 9 -10.105724899623914 
		10 -19.0980520911748 11 -25.167230155168866 12 -28.705576853743114 13 -30.080359757187605 
		14 -29.612639809145389 15 -27.570054863432087 16 -24.176235159732517 17 -19.648205284553701 
		18 -14.270717470360186 19 -4.9125556861958746 20 9.0819954305098953 21 23.852990727185354 
		22 37.240840811504739 23 48.672083315317913;
createNode animCurveTL -n "animCurveTL314";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0.36714225438863396 1 0.41223635515282298 
		2 0.44984519774264842 3 0.47950152995211798 4 0.50984979919575124 5 0.53790728961720169 
		6 0.55674034965762764 7 0.56624174898871871 8 0.56930440610821509 9 0.57033437522436348 
		10 0.57307587208871247 11 0.57767986140571514 12 0.58306201442835881 13 0.58815566889224924 
		14 0.59192877671624133 15 0.5933876888185452 16 0.59156104217816219 17 0.58546211054883601 
		18 0.57403793167856942 19 0.5497796767457459 20 0.50985973512964844 21 0.46100619546732591 
		22 0.41094877462042489 23 0.36714225438863396;
createNode animCurveTL -n "animCurveTL315";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 -0.81554175764549264 1 -0.7667455563551101 
		2 -0.6955766672293423 3 -0.63172539133295824 4 -0.6082339055605942 5 -0.61247768349682519 
		6 -0.61603467130429768 7 -0.60986522684505551 8 -0.60350057747777341 9 -0.59767375325744243 
		10 -0.58970386366904171 11 -0.57756908075500091 12 -0.56311165668745389 13 
		-0.54834993196293857 14 -0.53551012838900991 15 -0.52698267408434607 16 -0.52520854755778767 
		17 -0.53249777853873259 18 -0.5507742499997289 19 -0.59282742680737488 20 
		-0.65706244091273891 21 -0.72403122664718311 22 -0.77911136830231442 23 -0.81554175764549264;
createNode animCurveTL -n "animCurveTL316";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0.15070101285416224 1 0.30954289326154028 
		2 0.46468884499304658 3 0.56062884464363671 4 0.56191849006646077 5 0.50900114683953113 
		6 0.46497187782530502 7 0.45385907320920849 8 0.45257823405325837 9 0.45408460747768076 
		10 0.45691565639249293 11 0.46316110226706075 12 0.47110429774159512 13 0.47913083990031996 
		14 0.48575618849963209 15 0.48960684713601643 16 0.48934792590417547 17 0.48355462378897757 
		18 0.47053373411103383 19 0.43996895359432836 20 0.38550767055770552 21 0.31249109754602933 
		22 0.2299995332454878 23 0.15070101285416224;
createNode animCurveTA -n "animCurveTA858";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 -15.218182696168652 1 -31.814736989055312 
		2 -40.339371862660343 3 9.243288471334715 4 31.929004386729819 5 3.6670695889167884 
		6 -15.540393428193466 7 -19.092705734396791 8 -22.093223675542077 9 -24.771753825567561 
		10 -25.912669222136223 11 -24.816779496413098 12 -21.993021659030216 13 -18.309549339568399 
		14 -15.493481126067492 15 -16.063897525244652 16 -22.544207726019057 17 -35.066217377006694 
		18 -48.06013412026924 19 -55.163916732138468 20 -51.180908724175211 21 -40.501847927704702 
		22 -27.595301710644922 23 -15.218182696168652;
createNode animCurveTA -n "animCurveTA859";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 -1.949047094653634 1 -36.676215670514694 
		2 -68.190747270450558 3 -82.616896280736341 4 -81.113403609252046 5 -80.259190296255241 
		6 -78.03353485306603 7 -77.575420325937557 8 -77.669865951617808 9 -77.889609495390658 
		10 -78.325807515985176 11 -79.190348961842517 12 -80.204564490029497 13 -81.13084064689447 
		14 -81.841180463270803 15 -82.298993459378863 16 -82.379045817615108 17 -81.574998686045404 
		18 -79.008160918262419 19 -72.136663945906335 20 -59.415670532230521 21 -42.025812714590145 
		22 -21.869934071769972 23 -1.949047094653634;
createNode animCurveTA -n "animCurveTA860";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 -32.560381950754014 1 -16.307623926547297 
		2 -6.4116989114448586 3 -53.164434723938705 4 -74.666852114669723 5 -46.763992108024794 
		6 -27.892055623881006 7 -24.321135674721024 8 -21.362250756078954 9 -18.735164133816678 
		10 -17.54339706090466 11 -18.440029293817986 12 -20.970742795206881 13 -24.336057335742794 
		14 -26.892368649494372 15 -26.214831684016389 16 -19.878740187828491 17 -7.8473840240204185 
		18 4.2329290940012863 19 9.5615000804523511 20 3.2970832425907459 21 -8.8907353824851931 
		22 -21.704313865185611 23 -32.560381950754014;
createNode animCurveTL -n "animCurveTL317";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -3.6370999456408879 3 -3.4898608926076249 
		6 -3.7734848497462203 9 -4.0690155821931908 18 -4.0690155821931908 23 -3.6370999456408879;
	setAttr -s 6 ".kit[1:5]"  9 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  9 9 1 1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.014662803150713444 0.0020515299402177334 
		0.2720876932144165 0.073465824127197266 0.0038587492890655994;
	setAttr -s 6 ".kiy[0:5]"  0 -0.9998924732208252 -0.99999791383743286 
		-0.96227246522903442 0.99729776382446289 0.99999254941940308;
	setAttr -s 6 ".kox[2:5]"  0.0020514624193310738 0.27208742499351501 
		0.073465891182422638 0.0038587492890655994;
	setAttr -s 6 ".koy[2:5]"  -0.99999791383743286 -0.9622725248336792 
		0.99729770421981812 0.99999254941940308;
createNode animCurveTL -n "animCurveTL318";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.7841255587132463 3 2.1610641371598893 
		6 2.5642038512926728 9 2.6551473487130859 18 2.6551473487130859 23 1.7841255587132463;
	setAttr -s 6 ".kit[1:5]"  9 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  9 9 1 1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.0025638367515057325 0.007636362686753273 
		0.027957586571574211 0.024921918287873268 0.0019134578760713339;
	setAttr -s 6 ".kiy[0:5]"  0 0.99999672174453735 0.99997085332870483 
		0.99960911273956299 -0.99968940019607544 -0.99999815225601196;
	setAttr -s 6 ".kox[2:5]"  0.0076363724656403065 0.027957629412412643 
		0.02492188848555088 0.0019134578760713339;
	setAttr -s 6 ".koy[2:5]"  0.99997085332870483 0.99960911273956299 
		-0.99968940019607544 -0.99999815225601196;
createNode animCurveTL -n "animCurveTL319";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.7027068055413355 3 3.0822283480229453 
		6 2.9988787745613905 9 2.7676603405366418 18 2.7676603405366418 23 2.7027068055413355;
	setAttr -s 6 ".kit[1:5]"  9 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  9 9 1 1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.0067526795901358128 0.0035505408886820078 
		0.093971088528633118 0.99999350309371948 0.025650922209024429;
	setAttr -s 6 ".kiy[0:5]"  0 0.99997717142105103 -0.99999362230300903 
		-0.99557501077651978 -0.003601740812882781 -0.99967098236083984;
	setAttr -s 6 ".kox[2:5]"  0.0035514032933861017 0.093971379101276398 
		0.99999350309371948 0.025650922209024429;
	setAttr -s 6 ".koy[2:5]"  -0.99999362230300903 -0.99557489156723022 
		-0.0036017633974552155 -0.99967098236083984;
createNode animCurveTA -n "animCurveTA861";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -26.203413720634714 3 24.228946758314965 
		6 23.421912323604509 9 -76.444799502970966 18 -76.444799502970966 23 -26.203413720634714;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.22499294579029083 0.11309440433979034 
		0.22367464005947113 0.46980318427085876 0.1867254227399826;
	setAttr -s 6 ".kiy[0:5]"  0 0.97436040639877319 -0.9935842752456665 
		-0.97466385364532471 0.88277119398117065 0.98241215944290161;
createNode animCurveTA -n "animCurveTA862";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 14.791961579779635 3 69.981499395032074 
		6 70.839968665369284 9 35.513497489581809 18 35.513497489581809 23 14.791961579779635;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.20030882954597473 0.31547990441322327 
		0.54425537586212158 0.79042130708694458 0.41853457689285278;
	setAttr -s 6 ".kiy[0:5]"  0 0.97973281145095825 -0.9489322304725647 
		-0.83891957998275757 -0.6125636100769043 -0.90820086002349854;
createNode animCurveTA -n "animCurveTA863";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 45.895436695401962 3 80.676006681755865 
		6 79.961359039157429 9 -21.076969131844898 18 -21.076969131844898 23 45.895436695401962;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.31882700324058533 0.11190997809171677 
		0.22120857238769531 0.37078171968460083 0.1411578357219696;
	setAttr -s 6 ".kiy[0:5]"  0 0.94781291484832764 -0.99371832609176636 
		-0.97522652149200439 0.92872005701065063 0.9899870753288269;
createNode animCurveTL -n "animCurveTL320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.1657315743829622 3 -2.0641250212577225 
		6 -2.0641250212577225 9 -2.0641250212577225 18 -2.0641250212577225 23 -2.1657315743829622;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.019679958000779152 1 1 0.045880429446697235 
		0.016400935128331184;
	setAttr -s 6 ".kiy[0:5]"  0 0.99980634450912476 0 0 -0.99894696474075317 
		-0.99986547231674194;
createNode animCurveTL -n "animCurveTL321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.6749265988332942 3 1.7861655623246184 
		6 1.7861655623246184 9 1.7861655623246184 18 1.7861655623246184 23 1.6749265988332942;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.017976405099034309 1 1 0.041914857923984528 
		0.014981077052652836;
	setAttr -s 6 ".kiy[0:5]"  0 0.99983841180801392 0 0 -0.99912118911743164 
		-0.99988776445388794;
createNode animCurveTL -n "animCurveTL322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.6001625185510933 3 2.8914643149817327 
		6 2.8914643149817327 9 2.8914643149817327 18 2.8914643149817327 23 2.6001625185510933;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.0068655703216791153 1 1 0.016017984598875046 
		0.0057213488034904003;
	setAttr -s 6 ".kiy[0:5]"  0 0.99997645616531372 0 0 -0.99987173080444336 
		-0.99998360872268677;
createNode animCurveTA -n "animCurveTA864";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -33.734888782993906 3 -88.808544236675544 
		6 -88.808544236675544 9 -88.808544236675544 18 -88.808544236675544 23 -33.734888782993906;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.20370681583881378 1 1 0.43674495816230774 
		0.17084223031997681;
	setAttr -s 6 ".kiy[0:5]"  0 -0.97903192043304443 0 0 0.89958536624908447 
		0.98529839515686035;
createNode animCurveTA -n "animCurveTA865";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -14.870586397896902 3 -83.878009663660919 
		6 -83.878009663660919 9 -83.878009663660919 18 -83.878009663660919 23 -14.870586397896902;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.16381365060806274 1 1 0.3612934947013855 
		0.13707450032234192;
	setAttr -s 6 ".kiy[0:5]"  0 -0.98649132251739502 0 0 0.93245214223861694 
		0.99056077003479004;
createNode animCurveTA -n "animCurveTA866";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -30.592169336881899 3 39.173779852465344 
		6 39.173779852465344 9 39.173779852465344 18 39.173779852465344 23 -30.592169336881899;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.16207963228225708 1 1 0.35787084698677063 
		0.13561171293258667;
	setAttr -s 6 ".kiy[0:5]"  0 0.986777663230896 0 0 -0.93377107381820679 
		-0.99076205492019653;
createNode animCurveTL -n "animCurveTL323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.31054502397108613 3 0.35039089098226439 
		6 0.35039089098226439 9 0.35039089098226439 18 0.35039089098226439 23 0.31054502397108613;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.050130303949117661 1 1 0.11632290482521057 
		0.041791297495365143;
	setAttr -s 6 ".kiy[0:5]"  0 0.99874269962310791 0 0 -0.99321144819259644 
		-0.9991263747215271;
createNode animCurveTL -n "animCurveTL324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.55640530640609931 3 -0.40854033940183732 
		6 -0.40854033940183732 9 -0.40854033940183732 18 -0.40854033940183732 23 
		-0.55640530640609931;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.01352461613714695 1 1 0.031544622033834457 
		0.011270828545093536;
	setAttr -s 6 ".kiy[0:5]"  0 0.99990856647491455 0 0 -0.99950236082077026 
		-0.99993646144866943;
createNode animCurveTL -n "animCurveTL325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.57914122395678103 3 -0.82408995422063858 
		6 -0.82408995422063858 9 -0.82408995422063858 18 -0.82408995422063858 23 
		-0.57914122395678103;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.008164701983332634 1 1 0.019048148766160011 
		0.0068039870820939541;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99996668100357056 0 0 0.99981856346130371 
		0.99997687339782715;
createNode animCurveTL -n "animCurveTL326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.063331173333856433 3 -0.77290696453185026 
		6 -0.77290696453185026 9 -0.77290696453185026 18 -0.77290696453185026 23 
		-0.063331173333856433;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.0028185741975903511 1 1 0.0065765571780502796 
		0.0023488146252930164;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99999600648880005 0 0 0.99997836351394653 
		0.99999725818634033;
createNode animCurveTL -n "animCurveTL327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.69960805773293522 3 -0.71234308293286885 
		6 -0.71234308293286885 9 -0.71234308293286885 18 -0.71234308293286885 23 
		-0.69960805773293522;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.15514560043811798 1 1 0.34406989812850952 
		0.12976609170436859;
	setAttr -s 6 ".kiy[0:5]"  0 -0.98789161443710327 0 0 0.93894404172897339 
		0.99154466390609741;
createNode animCurveTL -n "animCurveTL328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.66762598980258558 3 -0.35872267288917942 
		6 -0.35872267288917942 9 -0.35872267288917942 18 -0.35872267288917942 23 
		-0.66762598980258558;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.0064743817783892155 1 1 0.015105484984815121 
		0.005395352840423584;
	setAttr -s 6 ".kiy[0:5]"  0 0.99997901916503906 0 0 -0.9998859167098999 
		-0.9999854564666748;
createNode animCurveTA -n "animCurveTA867";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.061808866237340665 3 12.253734489678925 
		6 12.253734489678925 9 12.253734489678925 18 12.253734489678925 23 -0.061808866237340665;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.68119430541992188 1 1 0.90828335285186768 
		0.61276209354400635;
	setAttr -s 6 ".kiy[0:5]"  0 0.73210269212722778 0 0 -0.4183555543422699 
		-0.7902674674987793;
createNode animCurveTA -n "animCurveTA868";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -59.058178941076754 3 -65.746751280844961 
		6 -65.746751280844961 9 -65.746751280844961 18 -65.746751280844961 23 -59.058178941076754;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.86364555358886719 1 1 0.9701077938079834 
		0.81906807422637939;
	setAttr -s 6 ".kiy[0:5]"  0 -0.50409960746765137 0 0 0.24267442524433136 
		0.5736963152885437;
createNode animCurveTA -n "animCurveTA869";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 16.57914742975785 3 0 6 0 9 0 
		18 0 23 16.57914742975785;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.56858205795288086 1 1 0.84988033771514893 
		0.49911072850227356;
	setAttr -s 6 ".kiy[0:5]"  0 -0.82262653112411499 0 0 0.52697569131851196 
		0.86653822660446167;
createNode animCurveTA -n "animCurveTA870";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 12.253734489678925 3 -0.061808866237337522 
		6 -0.061808866237337522 9 -0.061808866237337522 18 -0.061808866237337522 
		23 12.253734489678925;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.68119430541992188 1 1 0.90828335285186768 
		0.61276209354400635;
	setAttr -s 6 ".kiy[0:5]"  0 -0.73210269212722778 0 0 0.4183555543422699 
		0.7902674674987793;
createNode animCurveTA -n "animCurveTA871";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -65.746751280844975 3 -59.058178941076754 
		6 -59.058178941076754 9 -59.058178941076754 18 -59.058178941076754 23 -65.746751280844975;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.86364555358886719 1 1 0.9701077938079834 
		0.81906807422637939;
	setAttr -s 6 ".kiy[0:5]"  0 0.50409960746765137 0 0 -0.24267442524433136 
		-0.5736963152885437;
createNode animCurveTA -n "animCurveTA872";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 16.579147429757843 6 16.579147429757843 
		9 16.579147429757843 18 16.579147429757843 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.56858205795288086 1 1 0.84988033771514893 
		0.49911072850227356;
	setAttr -s 6 ".kiy[0:5]"  0 0.82262653112411499 0 0 -0.52697569131851196 
		-0.86653822660446167;
createNode animCurveTA -n "animCurveTA873";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 15.711328223519061 3 8.5572674112203622 
		6 8.5572674112203622 9 8.5572674112203622 18 8.5572674112203622 23 15.711328223519061;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.84826141595840454 1 1 0.96601945161819458 
		0.80031812191009521;
	setAttr -s 6 ".kiy[0:5]"  0 -0.52957773208618164 0 0 0.25846937298774719 
		0.59957557916641235;
createNode animCurveTA -n "animCurveTA874";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.5572674112203657 3 15.711328223519057 
		6 15.711328223519057 9 15.711328223519057 18 15.711328223519057 23 8.5572674112203657;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.84826141595840454 1 1 0.96601945161819458 
		0.80031812191009521;
	setAttr -s 6 ".kiy[0:5]"  0 0.52957773208618164 0 0 -0.25846937298774719 
		-0.59957557916641235;
createNode animCurveTA -n "animCurveTA875";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA876";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA877";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA878";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA879";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA880";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA881";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -171.24588681251637 3 10.423754966968488 
		6 10.423754966968488 9 10.423754966968488 18 10.423754966968488 23 -171.24588681251637;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.06295178085565567 1 1 0.14561076462268829 
		0.052491605281829834;
	setAttr -s 6 ".kiy[0:5]"  0 0.9980165958404541 0 0 -0.98934197425842285 
		-0.99862134456634521;
createNode animCurveTA -n "animCurveTA882";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 23.263402056531088 3 27.722848255843903 
		6 27.722848255843903 9 27.722848255843903 18 27.722848255843903 23 23.263402056531088;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.93191927671432495 1 1 0.98637533187866211 
		0.90607011318206787;
	setAttr -s 6 ".kiy[0:5]"  0 0.3626658022403717 0 0 -0.16451053321361542 
		-0.42312762141227722;
createNode animCurveTA -n "animCurveTA883";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 20.166277752815624 3 21.576484776388227 
		6 21.576484776388227 9 21.576484776388227 18 21.576484776388227 23 20.166277752815624;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99251258373260498 1 1 0.99861204624176025 
		0.98927098512649536;
	setAttr -s 6 ".kiy[0:5]"  0 0.12214235216379166 0 0 -0.052668418735265732 
		-0.14609213173389435;
createNode animCurveTA -n "animCurveTA884";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA885";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA886";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 33.429092416277157 3 27.080064458283051 
		6 27.080064458283051 9 27.080064458283051 18 27.080064458283051 23 33.429092416277157;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.87471306324005127 1 1 0.97294682264328003 
		0.8327406644821167;
	setAttr -s 6 ".kiy[0:5]"  0 -0.48464110493659973 0 0 0.23102922737598419 
		0.55366319417953491;
createNode animCurveTA -n "animCurveTA887";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA888";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA889";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA890";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA891";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA892";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 23 13.994403295754109;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA893";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA894";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA895";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 23 13.994403295754109;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA896";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA897";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA898";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 17.254116939558369 3 27.911632519594587 
		6 -11.637041055978866 9 -16.670508338447089 18 -11.637041055978866 23 17.254116939558369;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.3686901330947876 0.24894274771213531 
		1 0.61900842189788818 0.31382831931114197;
	setAttr -s 6 ".kiy[0:5]"  0 -0.92955237627029419 -0.96851819753646851 
		0 0.78538435697555542 0.94947975873947144;
createNode animCurveTA -n "animCurveTA899";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA900";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA901";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA902";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.373100660218926 3 -0.87902215066922906 
		6 -5.022332624408179 9 -6.2496885927925421 18 -7.7301237994454457 23 1.373100660218926;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.87320983409881592 0.90548360347747803 
		0.99309253692626953 0.96168196201324463 0.72381019592285156;
	setAttr -s 6 ".kiy[0:5]"  0 -0.48734438419342041 -0.42438122630119324 
		-0.11733356863260269 0.2741675078868866 0.68999916315078735;
createNode animCurveTA -n "animCurveTA903";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.38374158911587308 3 -4.7952631452849266 
		6 -4.7952631452849248 9 -4.7112308362498689 18 -4.4702150934382727 23 -0.38374158911587308;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.93323218822479248 0.9999731183052063 
		0.99989944696426392 0.98715448379516602 0.91935688257217407;
	setAttr -s 6 ".kiy[0:5]"  0 -0.359273761510849 0.0073330053128302097 
		0.014181471429765224 0.15976870059967041 0.39342457056045532;
createNode animCurveTA -n "animCurveTA904";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.96901743689791298 3 7.5470594542643701 
		6 7.5470594542643692 9 8.1761541624434333 18 9.9804807036581256 23 0.96901743689791298;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.86726492643356323 0.99849647283554077 
		0.99441033601760864 0.96553921699523926 0.7272912859916687;
	setAttr -s 6 ".kiy[0:5]"  0 0.49784687161445618 0.05481632798910141 
		0.1055845320224762 -0.2602575421333313 -0.6863289475440979;
createNode animCurveTA -n "animCurveTA905";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.214467445058347 3 -39.57800299697621 
		6 -30.738610994618611 9 -30.634884899056313 18 -30.738610994618611 23 2.214467445058347;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.32844942808151245 0.78833621740341187 
		1 0.63127404451370239 0.27833366394042969;
	setAttr -s 6 ".kiy[0:5]"  0 -0.94452154636383057 0.61524462699890137 
		0 0.77555984258651733 0.96048444509506226;
createNode animCurveTA -n "animCurveTA906";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 5.3642380392152509 3 -1.691684579094265 
		6 -1.6970076543675521 9 -1.6970701182278491 18 -1.6970076543675521 23 5.3642380392152509;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.8513445258140564 0.99999988079071045 
		1 0.96685183048248291 0.80405253171920776;
	setAttr -s 6 ".kiy[0:5]"  0 -0.52460694313049316 -0.0004699768905993551 
		0 0.25533813238143921 0.5945582389831543;
createNode animCurveTA -n "animCurveTA907";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -3.2584064202075544 3 1.2348355338931729 
		6 1.3202544398601981 9 1.3212567908727153 18 1.3202544398601981 23 -3.2584064202075544;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.92861640453338623 0.99997156858444214 
		1 0.98564678430557251 0.9017072319984436;
	setAttr -s 6 ".kiy[0:5]"  0 0.37104126811027527 0.007541462779045105 
		0 -0.1688205897808075 -0.43234720826148987;
createNode animCurveTA -n "animCurveTA908";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -4.9690701715193732 3 -1.0401230992992929 
		6 0.23901949557682525 9 0.25402963625913255 18 0.23901949557682525 23 -4.9690701715193732;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.91038495302200317 0.9936830997467041 
		1 0.98144972324371338 0.87791943550109863;
	setAttr -s 6 ".kiy[0:5]"  0 0.41376227140426636 0.11222272366285324 
		0 -0.19171980023384094 -0.47880840301513672;
createNode animCurveTA -n "animCurveTA909";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.9904681746768538 3 4.0517911859646656 
		6 5.724790960975926 9 5.7444228292693014 18 5.724790960975926 23 2.9904681746768538;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.97269225120544434 0.98926621675491333 
		1 0.99473756551742554 0.96136552095413208;
	setAttr -s 6 ".kiy[0:5]"  0 0.23209865391254425 0.14612449705600739 
		0 -0.10245564579963684 -0.27527511119842529;
createNode animCurveTA -n "animCurveTA910";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 14.780225156536885 3 6.8838136696578331 
		6 7.0263139187849601 9 7.0279860928066 18 7.0263139187849601 23 14.780225156536885;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.82821196317672729 0.99992084503173828 
		1 0.96044635772705078 0.77630859613418579;
	setAttr -s 6 ".kiy[0:5]"  0 -0.56041496992111206 0.012580421753227711 
		0 0.2784651517868042 0.63035309314727783;
createNode animCurveTA -n "animCurveTA911";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.211833892135727 3 -0.62622119873454107 
		6 -3.0414001046714545 9 -3.3007748352580579 18 -2.8556845808714875 23 -2.211833892135727;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99738985300064087 0.973827064037323 
		0.99996715784072876 0.99917173385620117 0.99773472547531128;
	setAttr -s 6 ".kiy[0:5]"  0 -0.072204358875751495 -0.22729010879993439 
		0.008103102445602417 0.040692564100027084 0.0672711580991745;
createNode animCurveTA -n "animCurveTA912";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.7086730360615547 3 3.8840070108449005 
		6 3.8840070108449005 9 3.919791721648378 18 4.0224269920012885 23 -1.7086730360615547;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.89868038892745972 0.99999511241912842 
		0.99998176097869873 0.97855418920516968 0.85743260383605957;
	setAttr -s 6 ".kiy[0:5]"  0 0.43860405683517456 0.0031227900180965662 
		0.0060396008193492889 -0.20598964393138885 -0.51459628343582153;
createNode animCurveTA -n "animCurveTA913";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.7082804953288213 3 1.9840981620606046 
		6 1.9840981620606035 9 2.680377682842916 18 4.6773992247000358 23 2.7082804953288213;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99800902605056763 0.99815911054611206 
		0.99316555261611938 0.99999946355819702 0.97939443588256836;
	setAttr -s 6 ".kiy[0:5]"  0 -0.063071005046367645 0.060649994760751724 
		0.11671426147222519 0.001043562195263803 -0.20195667445659637;
createNode animCurveTA -n "animCurveTA914";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA915";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA916";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.080064458283051 3 33.429092416277157 
		6 25.192121946801748 9 24.143780240291136 18 25.192121946801748 23 27.080064458283051;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.98669826984405518 0.77695125341415405 
		1 0.99402415752410889 0.98101127147674561;
	setAttr -s 6 ".kiy[0:5]"  0 -0.16256254911422729 -0.62956076860427856 
		0 0.10916052758693695 0.19395071268081665;
createNode animCurveTA -n "animCurveTA917";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -177.04830761929054 3 191.33230892253158 
		6 191.33230892253158 9 191.33230892253158 18 191.33230892253158 23 -177.04830761929054;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.031091798096895218 1 1 0.072392180562019348 
		0.025913657620549202;
	setAttr -s 6 ".kiy[0:5]"  0 0.99951654672622681 0 0 -0.99737626314163208 
		-0.99966418743133545;
createNode animCurveTA -n "animCurveTA918";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.7228482558439 3 37.359105532069044 
		6 37.359105532069044 9 37.359105532069044 18 37.359105532069044 23 27.7228482558439;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.76535719633102417 1 1 0.94076883792877197 
		0.70389449596405029;
	setAttr -s 6 ".kiy[0:5]"  0 0.64360576868057251 0 0 -0.33904856443405151 
		-0.71030455827713013;
createNode animCurveTA -n "animCurveTA919";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 21.576484776388227 3 28.111232871387504 
		6 28.111232871387504 9 28.111232871387504 18 28.111232871387504 23 21.576484776388227;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.86867845058441162 1 1 0.97140920162200928 
		0.82526618242263794;
	setAttr -s 6 ".kiy[0:5]"  0 0.4953763484954834 0 0 -0.23741143941879272 
		-0.56474393606185913;
createNode animCurveTA -n "animCurveTA920";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA921";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 6 0 9 0 18 0 23 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA922";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.911632519594587 3 17.254116939558369 
		6 17.254116939558369 9 17.254116939558369 18 17.254116939558369 23 27.911632519594587;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.73225569725036621 1 1 0.92892760038375854 
		0.66732347011566162;
	setAttr -s 6 ".kiy[0:5]"  0 -0.6810297966003418 0 0 0.37026140093803406 
		0.74476802349090576;
createNode clipLibrary -n "clipLibrary3";
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
createNode clipLibrary -n "clipLibrary4";
	setAttr -s 168 ".cel[0].cev";
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
	setAttr -s 3 ".sol";
connectAttr "cps_point_left.st" "clipLibrary3.st[0]";
connectAttr "cps_point_left.du" "clipLibrary3.du[0]";
connectAttr "animCurveTL288.a" "clipLibrary3.cel[0].cev[0].cevr";
connectAttr "animCurveTL289.a" "clipLibrary3.cel[0].cev[1].cevr";
connectAttr "animCurveTL290.a" "clipLibrary3.cel[0].cev[2].cevr";
connectAttr "animCurveTL291.a" "clipLibrary3.cel[0].cev[3].cevr";
connectAttr "animCurveTL292.a" "clipLibrary3.cel[0].cev[4].cevr";
connectAttr "animCurveTA804.a" "clipLibrary3.cel[0].cev[5].cevr";
connectAttr "animCurveTU55.a" "clipLibrary3.cel[0].cev[6].cevr";
connectAttr "animCurveTU56.a" "clipLibrary3.cel[0].cev[7].cevr";
connectAttr "animCurveTU57.a" "clipLibrary3.cel[0].cev[8].cevr";
connectAttr "animCurveTU58.a" "clipLibrary3.cel[0].cev[9].cevr";
connectAttr "animCurveTU59.a" "clipLibrary3.cel[0].cev[10].cevr";
connectAttr "animCurveTU60.a" "clipLibrary3.cel[0].cev[11].cevr";
connectAttr "animCurveTU61.a" "clipLibrary3.cel[0].cev[12].cevr";
connectAttr "animCurveTU62.a" "clipLibrary3.cel[0].cev[13].cevr";
connectAttr "animCurveTA805.a" "clipLibrary3.cel[0].cev[14].cevr";
connectAttr "animCurveTA806.a" "clipLibrary3.cel[0].cev[15].cevr";
connectAttr "animCurveTA807.a" "clipLibrary3.cel[0].cev[16].cevr";
connectAttr "animCurveTL293.a" "clipLibrary3.cel[0].cev[17].cevr";
connectAttr "animCurveTL294.a" "clipLibrary3.cel[0].cev[18].cevr";
connectAttr "animCurveTL295.a" "clipLibrary3.cel[0].cev[19].cevr";
connectAttr "animCurveTL296.a" "clipLibrary3.cel[0].cev[20].cevr";
connectAttr "animCurveTL297.a" "clipLibrary3.cel[0].cev[21].cevr";
connectAttr "animCurveTL298.a" "clipLibrary3.cel[0].cev[22].cevr";
connectAttr "animCurveTA808.a" "clipLibrary3.cel[0].cev[23].cevr";
connectAttr "animCurveTA809.a" "clipLibrary3.cel[0].cev[24].cevr";
connectAttr "animCurveTA810.a" "clipLibrary3.cel[0].cev[25].cevr";
connectAttr "animCurveTL299.a" "clipLibrary3.cel[0].cev[26].cevr";
connectAttr "animCurveTL300.a" "clipLibrary3.cel[0].cev[27].cevr";
connectAttr "animCurveTL301.a" "clipLibrary3.cel[0].cev[28].cevr";
connectAttr "animCurveTA811.a" "clipLibrary3.cel[0].cev[29].cevr";
connectAttr "animCurveTA812.a" "clipLibrary3.cel[0].cev[30].cevr";
connectAttr "animCurveTA813.a" "clipLibrary3.cel[0].cev[31].cevr";
connectAttr "animCurveTA814.a" "clipLibrary3.cel[0].cev[32].cevr";
connectAttr "animCurveTA815.a" "clipLibrary3.cel[0].cev[33].cevr";
connectAttr "animCurveTA816.a" "clipLibrary3.cel[0].cev[34].cevr";
connectAttr "animCurveTA817.a" "clipLibrary3.cel[0].cev[35].cevr";
connectAttr "animCurveTA818.a" "clipLibrary3.cel[0].cev[36].cevr";
connectAttr "animCurveTA819.a" "clipLibrary3.cel[0].cev[37].cevr";
connectAttr "animCurveTA820.a" "clipLibrary3.cel[0].cev[38].cevr";
connectAttr "animCurveTA821.a" "clipLibrary3.cel[0].cev[39].cevr";
connectAttr "animCurveTA822.a" "clipLibrary3.cel[0].cev[40].cevr";
connectAttr "animCurveTA823.a" "clipLibrary3.cel[0].cev[41].cevr";
connectAttr "animCurveTA824.a" "clipLibrary3.cel[0].cev[42].cevr";
connectAttr "animCurveTA825.a" "clipLibrary3.cel[0].cev[43].cevr";
connectAttr "animCurveTL302.a" "clipLibrary3.cel[0].cev[44].cevr";
connectAttr "animCurveTL303.a" "clipLibrary3.cel[0].cev[45].cevr";
connectAttr "animCurveTL304.a" "clipLibrary3.cel[0].cev[46].cevr";
connectAttr "animCurveTL305.a" "clipLibrary3.cel[0].cev[47].cevr";
connectAttr "animCurveTL306.a" "clipLibrary3.cel[0].cev[48].cevr";
connectAttr "animCurveTL307.a" "clipLibrary3.cel[0].cev[49].cevr";
connectAttr "animCurveTL308.a" "clipLibrary3.cel[0].cev[50].cevr";
connectAttr "animCurveTL309.a" "clipLibrary3.cel[0].cev[51].cevr";
connectAttr "animCurveTL310.a" "clipLibrary3.cel[0].cev[52].cevr";
connectAttr "animCurveTA826.a" "clipLibrary3.cel[0].cev[53].cevr";
connectAttr "animCurveTA827.a" "clipLibrary3.cel[0].cev[54].cevr";
connectAttr "animCurveTA828.a" "clipLibrary3.cel[0].cev[55].cevr";
connectAttr "animCurveTA829.a" "clipLibrary3.cel[0].cev[56].cevr";
connectAttr "animCurveTA830.a" "clipLibrary3.cel[0].cev[57].cevr";
connectAttr "animCurveTA831.a" "clipLibrary3.cel[0].cev[58].cevr";
connectAttr "animCurveTA832.a" "clipLibrary3.cel[0].cev[59].cevr";
connectAttr "animCurveTA833.a" "clipLibrary3.cel[0].cev[60].cevr";
connectAttr "animCurveTA834.a" "clipLibrary3.cel[0].cev[61].cevr";
connectAttr "animCurveTA835.a" "clipLibrary3.cel[0].cev[62].cevr";
connectAttr "animCurveTA836.a" "clipLibrary3.cel[0].cev[63].cevr";
connectAttr "animCurveTA837.a" "clipLibrary3.cel[0].cev[64].cevr";
connectAttr "animCurveTA838.a" "clipLibrary3.cel[0].cev[65].cevr";
connectAttr "animCurveTA839.a" "clipLibrary3.cel[0].cev[66].cevr";
connectAttr "animCurveTA840.a" "clipLibrary3.cel[0].cev[67].cevr";
connectAttr "animCurveTA841.a" "clipLibrary3.cel[0].cev[68].cevr";
connectAttr "animCurveTA842.a" "clipLibrary3.cel[0].cev[69].cevr";
connectAttr "animCurveTA843.a" "clipLibrary3.cel[0].cev[70].cevr";
connectAttr "animCurveTA844.a" "clipLibrary3.cel[0].cev[71].cevr";
connectAttr "animCurveTA845.a" "clipLibrary3.cel[0].cev[72].cevr";
connectAttr "animCurveTA846.a" "clipLibrary3.cel[0].cev[73].cevr";
connectAttr "animCurveTA847.a" "clipLibrary3.cel[0].cev[74].cevr";
connectAttr "animCurveTA848.a" "clipLibrary3.cel[0].cev[75].cevr";
connectAttr "animCurveTA849.a" "clipLibrary3.cel[0].cev[76].cevr";
connectAttr "animCurveTA850.a" "clipLibrary3.cel[0].cev[77].cevr";
connectAttr "animCurveTA851.a" "clipLibrary3.cel[0].cev[78].cevr";
connectAttr "animCurveTA852.a" "clipLibrary3.cel[0].cev[79].cevr";
connectAttr "animCurveTA853.a" "clipLibrary3.cel[0].cev[80].cevr";
connectAttr "animCurveTA854.a" "clipLibrary3.cel[0].cev[81].cevr";
connectAttr "animCurveTL311.a" "clipLibrary3.cel[0].cev[82].cevr";
connectAttr "animCurveTL312.a" "clipLibrary3.cel[0].cev[83].cevr";
connectAttr "animCurveTL313.a" "clipLibrary3.cel[0].cev[84].cevr";
connectAttr "animCurveTA855.a" "clipLibrary3.cel[0].cev[85].cevr";
connectAttr "animCurveTA856.a" "clipLibrary3.cel[0].cev[86].cevr";
connectAttr "animCurveTA857.a" "clipLibrary3.cel[0].cev[87].cevr";
connectAttr "animCurveTL314.a" "clipLibrary3.cel[0].cev[88].cevr";
connectAttr "animCurveTL315.a" "clipLibrary3.cel[0].cev[89].cevr";
connectAttr "animCurveTL316.a" "clipLibrary3.cel[0].cev[90].cevr";
connectAttr "animCurveTA858.a" "clipLibrary3.cel[0].cev[91].cevr";
connectAttr "animCurveTA859.a" "clipLibrary3.cel[0].cev[92].cevr";
connectAttr "animCurveTA860.a" "clipLibrary3.cel[0].cev[93].cevr";
connectAttr "animCurveTL317.a" "clipLibrary3.cel[0].cev[94].cevr";
connectAttr "animCurveTL318.a" "clipLibrary3.cel[0].cev[95].cevr";
connectAttr "animCurveTL319.a" "clipLibrary3.cel[0].cev[96].cevr";
connectAttr "animCurveTA861.a" "clipLibrary3.cel[0].cev[97].cevr";
connectAttr "animCurveTA862.a" "clipLibrary3.cel[0].cev[98].cevr";
connectAttr "animCurveTA863.a" "clipLibrary3.cel[0].cev[99].cevr";
connectAttr "animCurveTL320.a" "clipLibrary3.cel[0].cev[100].cevr";
connectAttr "animCurveTL321.a" "clipLibrary3.cel[0].cev[101].cevr";
connectAttr "animCurveTL322.a" "clipLibrary3.cel[0].cev[102].cevr";
connectAttr "animCurveTA864.a" "clipLibrary3.cel[0].cev[103].cevr";
connectAttr "animCurveTA865.a" "clipLibrary3.cel[0].cev[104].cevr";
connectAttr "animCurveTA866.a" "clipLibrary3.cel[0].cev[105].cevr";
connectAttr "animCurveTL323.a" "clipLibrary3.cel[0].cev[106].cevr";
connectAttr "animCurveTL324.a" "clipLibrary3.cel[0].cev[107].cevr";
connectAttr "animCurveTL325.a" "clipLibrary3.cel[0].cev[108].cevr";
connectAttr "animCurveTL326.a" "clipLibrary3.cel[0].cev[109].cevr";
connectAttr "animCurveTL327.a" "clipLibrary3.cel[0].cev[110].cevr";
connectAttr "animCurveTL328.a" "clipLibrary3.cel[0].cev[111].cevr";
connectAttr "animCurveTA867.a" "clipLibrary3.cel[0].cev[112].cevr";
connectAttr "animCurveTA868.a" "clipLibrary3.cel[0].cev[113].cevr";
connectAttr "animCurveTA869.a" "clipLibrary3.cel[0].cev[114].cevr";
connectAttr "animCurveTA870.a" "clipLibrary3.cel[0].cev[115].cevr";
connectAttr "animCurveTA871.a" "clipLibrary3.cel[0].cev[116].cevr";
connectAttr "animCurveTA872.a" "clipLibrary3.cel[0].cev[117].cevr";
connectAttr "animCurveTA873.a" "clipLibrary3.cel[0].cev[118].cevr";
connectAttr "animCurveTA874.a" "clipLibrary3.cel[0].cev[119].cevr";
connectAttr "animCurveTA875.a" "clipLibrary3.cel[0].cev[120].cevr";
connectAttr "animCurveTA876.a" "clipLibrary3.cel[0].cev[121].cevr";
connectAttr "animCurveTA877.a" "clipLibrary3.cel[0].cev[122].cevr";
connectAttr "animCurveTA878.a" "clipLibrary3.cel[0].cev[123].cevr";
connectAttr "animCurveTA879.a" "clipLibrary3.cel[0].cev[124].cevr";
connectAttr "animCurveTA880.a" "clipLibrary3.cel[0].cev[125].cevr";
connectAttr "animCurveTA881.a" "clipLibrary3.cel[0].cev[126].cevr";
connectAttr "animCurveTA882.a" "clipLibrary3.cel[0].cev[127].cevr";
connectAttr "animCurveTA883.a" "clipLibrary3.cel[0].cev[128].cevr";
connectAttr "animCurveTA884.a" "clipLibrary3.cel[0].cev[129].cevr";
connectAttr "animCurveTA885.a" "clipLibrary3.cel[0].cev[130].cevr";
connectAttr "animCurveTA886.a" "clipLibrary3.cel[0].cev[131].cevr";
connectAttr "animCurveTA887.a" "clipLibrary3.cel[0].cev[132].cevr";
connectAttr "animCurveTA888.a" "clipLibrary3.cel[0].cev[133].cevr";
connectAttr "animCurveTA889.a" "clipLibrary3.cel[0].cev[134].cevr";
connectAttr "animCurveTA890.a" "clipLibrary3.cel[0].cev[135].cevr";
connectAttr "animCurveTA891.a" "clipLibrary3.cel[0].cev[136].cevr";
connectAttr "animCurveTA892.a" "clipLibrary3.cel[0].cev[137].cevr";
connectAttr "animCurveTA893.a" "clipLibrary3.cel[0].cev[138].cevr";
connectAttr "animCurveTA894.a" "clipLibrary3.cel[0].cev[139].cevr";
connectAttr "animCurveTA895.a" "clipLibrary3.cel[0].cev[140].cevr";
connectAttr "animCurveTA896.a" "clipLibrary3.cel[0].cev[141].cevr";
connectAttr "animCurveTA897.a" "clipLibrary3.cel[0].cev[142].cevr";
connectAttr "animCurveTA898.a" "clipLibrary3.cel[0].cev[143].cevr";
connectAttr "animCurveTA899.a" "clipLibrary3.cel[0].cev[144].cevr";
connectAttr "animCurveTA900.a" "clipLibrary3.cel[0].cev[145].cevr";
connectAttr "animCurveTA901.a" "clipLibrary3.cel[0].cev[146].cevr";
connectAttr "animCurveTA902.a" "clipLibrary3.cel[0].cev[147].cevr";
connectAttr "animCurveTA903.a" "clipLibrary3.cel[0].cev[148].cevr";
connectAttr "animCurveTA904.a" "clipLibrary3.cel[0].cev[149].cevr";
connectAttr "animCurveTA905.a" "clipLibrary3.cel[0].cev[150].cevr";
connectAttr "animCurveTA906.a" "clipLibrary3.cel[0].cev[151].cevr";
connectAttr "animCurveTA907.a" "clipLibrary3.cel[0].cev[152].cevr";
connectAttr "animCurveTA908.a" "clipLibrary3.cel[0].cev[153].cevr";
connectAttr "animCurveTA909.a" "clipLibrary3.cel[0].cev[154].cevr";
connectAttr "animCurveTA910.a" "clipLibrary3.cel[0].cev[155].cevr";
connectAttr "animCurveTA911.a" "clipLibrary3.cel[0].cev[156].cevr";
connectAttr "animCurveTA912.a" "clipLibrary3.cel[0].cev[157].cevr";
connectAttr "animCurveTA913.a" "clipLibrary3.cel[0].cev[158].cevr";
connectAttr "animCurveTA914.a" "clipLibrary3.cel[0].cev[159].cevr";
connectAttr "animCurveTA915.a" "clipLibrary3.cel[0].cev[160].cevr";
connectAttr "animCurveTA916.a" "clipLibrary3.cel[0].cev[161].cevr";
connectAttr "animCurveTA917.a" "clipLibrary3.cel[0].cev[162].cevr";
connectAttr "animCurveTA918.a" "clipLibrary3.cel[0].cev[163].cevr";
connectAttr "animCurveTA919.a" "clipLibrary3.cel[0].cev[164].cevr";
connectAttr "animCurveTA920.a" "clipLibrary3.cel[0].cev[165].cevr";
connectAttr "animCurveTA921.a" "clipLibrary3.cel[0].cev[166].cevr";
connectAttr "animCurveTA922.a" "clipLibrary3.cel[0].cev[167].cevr";
connectAttr "cps_point_left.st" "clipLibrary4.st[0]";
connectAttr "cps_point_left.du" "clipLibrary4.du[0]";
connectAttr "animCurveTL288.a" "clipLibrary4.cel[0].cev[0].cevr";
connectAttr "animCurveTL289.a" "clipLibrary4.cel[0].cev[1].cevr";
connectAttr "animCurveTL290.a" "clipLibrary4.cel[0].cev[2].cevr";
connectAttr "animCurveTL291.a" "clipLibrary4.cel[0].cev[3].cevr";
connectAttr "animCurveTL292.a" "clipLibrary4.cel[0].cev[4].cevr";
connectAttr "animCurveTA804.a" "clipLibrary4.cel[0].cev[5].cevr";
connectAttr "animCurveTU55.a" "clipLibrary4.cel[0].cev[6].cevr";
connectAttr "animCurveTU56.a" "clipLibrary4.cel[0].cev[7].cevr";
connectAttr "animCurveTU57.a" "clipLibrary4.cel[0].cev[8].cevr";
connectAttr "animCurveTU58.a" "clipLibrary4.cel[0].cev[9].cevr";
connectAttr "animCurveTU59.a" "clipLibrary4.cel[0].cev[10].cevr";
connectAttr "animCurveTU60.a" "clipLibrary4.cel[0].cev[11].cevr";
connectAttr "animCurveTU61.a" "clipLibrary4.cel[0].cev[12].cevr";
connectAttr "animCurveTU62.a" "clipLibrary4.cel[0].cev[13].cevr";
connectAttr "animCurveTA805.a" "clipLibrary4.cel[0].cev[14].cevr";
connectAttr "animCurveTA806.a" "clipLibrary4.cel[0].cev[15].cevr";
connectAttr "animCurveTA807.a" "clipLibrary4.cel[0].cev[16].cevr";
connectAttr "animCurveTL293.a" "clipLibrary4.cel[0].cev[17].cevr";
connectAttr "animCurveTL294.a" "clipLibrary4.cel[0].cev[18].cevr";
connectAttr "animCurveTL295.a" "clipLibrary4.cel[0].cev[19].cevr";
connectAttr "animCurveTL296.a" "clipLibrary4.cel[0].cev[20].cevr";
connectAttr "animCurveTL297.a" "clipLibrary4.cel[0].cev[21].cevr";
connectAttr "animCurveTL298.a" "clipLibrary4.cel[0].cev[22].cevr";
connectAttr "animCurveTA808.a" "clipLibrary4.cel[0].cev[23].cevr";
connectAttr "animCurveTA809.a" "clipLibrary4.cel[0].cev[24].cevr";
connectAttr "animCurveTA810.a" "clipLibrary4.cel[0].cev[25].cevr";
connectAttr "animCurveTL299.a" "clipLibrary4.cel[0].cev[26].cevr";
connectAttr "animCurveTL300.a" "clipLibrary4.cel[0].cev[27].cevr";
connectAttr "animCurveTL301.a" "clipLibrary4.cel[0].cev[28].cevr";
connectAttr "animCurveTA811.a" "clipLibrary4.cel[0].cev[29].cevr";
connectAttr "animCurveTA812.a" "clipLibrary4.cel[0].cev[30].cevr";
connectAttr "animCurveTA813.a" "clipLibrary4.cel[0].cev[31].cevr";
connectAttr "animCurveTA814.a" "clipLibrary4.cel[0].cev[32].cevr";
connectAttr "animCurveTA815.a" "clipLibrary4.cel[0].cev[33].cevr";
connectAttr "animCurveTA816.a" "clipLibrary4.cel[0].cev[34].cevr";
connectAttr "animCurveTA817.a" "clipLibrary4.cel[0].cev[35].cevr";
connectAttr "animCurveTA818.a" "clipLibrary4.cel[0].cev[36].cevr";
connectAttr "animCurveTA819.a" "clipLibrary4.cel[0].cev[37].cevr";
connectAttr "animCurveTA820.a" "clipLibrary4.cel[0].cev[38].cevr";
connectAttr "animCurveTA821.a" "clipLibrary4.cel[0].cev[39].cevr";
connectAttr "animCurveTA822.a" "clipLibrary4.cel[0].cev[40].cevr";
connectAttr "animCurveTA823.a" "clipLibrary4.cel[0].cev[41].cevr";
connectAttr "animCurveTA824.a" "clipLibrary4.cel[0].cev[42].cevr";
connectAttr "animCurveTA825.a" "clipLibrary4.cel[0].cev[43].cevr";
connectAttr "animCurveTL302.a" "clipLibrary4.cel[0].cev[44].cevr";
connectAttr "animCurveTL303.a" "clipLibrary4.cel[0].cev[45].cevr";
connectAttr "animCurveTL304.a" "clipLibrary4.cel[0].cev[46].cevr";
connectAttr "animCurveTL305.a" "clipLibrary4.cel[0].cev[47].cevr";
connectAttr "animCurveTL306.a" "clipLibrary4.cel[0].cev[48].cevr";
connectAttr "animCurveTL307.a" "clipLibrary4.cel[0].cev[49].cevr";
connectAttr "animCurveTL308.a" "clipLibrary4.cel[0].cev[50].cevr";
connectAttr "animCurveTL309.a" "clipLibrary4.cel[0].cev[51].cevr";
connectAttr "animCurveTL310.a" "clipLibrary4.cel[0].cev[52].cevr";
connectAttr "animCurveTA826.a" "clipLibrary4.cel[0].cev[53].cevr";
connectAttr "animCurveTA827.a" "clipLibrary4.cel[0].cev[54].cevr";
connectAttr "animCurveTA828.a" "clipLibrary4.cel[0].cev[55].cevr";
connectAttr "animCurveTA829.a" "clipLibrary4.cel[0].cev[56].cevr";
connectAttr "animCurveTA830.a" "clipLibrary4.cel[0].cev[57].cevr";
connectAttr "animCurveTA831.a" "clipLibrary4.cel[0].cev[58].cevr";
connectAttr "animCurveTA832.a" "clipLibrary4.cel[0].cev[59].cevr";
connectAttr "animCurveTA833.a" "clipLibrary4.cel[0].cev[60].cevr";
connectAttr "animCurveTA834.a" "clipLibrary4.cel[0].cev[61].cevr";
connectAttr "animCurveTA835.a" "clipLibrary4.cel[0].cev[62].cevr";
connectAttr "animCurveTA836.a" "clipLibrary4.cel[0].cev[63].cevr";
connectAttr "animCurveTA837.a" "clipLibrary4.cel[0].cev[64].cevr";
connectAttr "animCurveTA838.a" "clipLibrary4.cel[0].cev[65].cevr";
connectAttr "animCurveTA839.a" "clipLibrary4.cel[0].cev[66].cevr";
connectAttr "animCurveTA840.a" "clipLibrary4.cel[0].cev[67].cevr";
connectAttr "animCurveTA841.a" "clipLibrary4.cel[0].cev[68].cevr";
connectAttr "animCurveTA842.a" "clipLibrary4.cel[0].cev[69].cevr";
connectAttr "animCurveTA843.a" "clipLibrary4.cel[0].cev[70].cevr";
connectAttr "animCurveTA844.a" "clipLibrary4.cel[0].cev[71].cevr";
connectAttr "animCurveTA845.a" "clipLibrary4.cel[0].cev[72].cevr";
connectAttr "animCurveTA846.a" "clipLibrary4.cel[0].cev[73].cevr";
connectAttr "animCurveTA847.a" "clipLibrary4.cel[0].cev[74].cevr";
connectAttr "animCurveTA848.a" "clipLibrary4.cel[0].cev[75].cevr";
connectAttr "animCurveTA849.a" "clipLibrary4.cel[0].cev[76].cevr";
connectAttr "animCurveTA850.a" "clipLibrary4.cel[0].cev[77].cevr";
connectAttr "animCurveTA851.a" "clipLibrary4.cel[0].cev[78].cevr";
connectAttr "animCurveTA852.a" "clipLibrary4.cel[0].cev[79].cevr";
connectAttr "animCurveTA853.a" "clipLibrary4.cel[0].cev[80].cevr";
connectAttr "animCurveTA854.a" "clipLibrary4.cel[0].cev[81].cevr";
connectAttr "animCurveTL311.a" "clipLibrary4.cel[0].cev[82].cevr";
connectAttr "animCurveTL312.a" "clipLibrary4.cel[0].cev[83].cevr";
connectAttr "animCurveTL313.a" "clipLibrary4.cel[0].cev[84].cevr";
connectAttr "animCurveTA855.a" "clipLibrary4.cel[0].cev[85].cevr";
connectAttr "animCurveTA856.a" "clipLibrary4.cel[0].cev[86].cevr";
connectAttr "animCurveTA857.a" "clipLibrary4.cel[0].cev[87].cevr";
connectAttr "animCurveTL314.a" "clipLibrary4.cel[0].cev[88].cevr";
connectAttr "animCurveTL315.a" "clipLibrary4.cel[0].cev[89].cevr";
connectAttr "animCurveTL316.a" "clipLibrary4.cel[0].cev[90].cevr";
connectAttr "animCurveTA858.a" "clipLibrary4.cel[0].cev[91].cevr";
connectAttr "animCurveTA859.a" "clipLibrary4.cel[0].cev[92].cevr";
connectAttr "animCurveTA860.a" "clipLibrary4.cel[0].cev[93].cevr";
connectAttr "animCurveTL317.a" "clipLibrary4.cel[0].cev[94].cevr";
connectAttr "animCurveTL318.a" "clipLibrary4.cel[0].cev[95].cevr";
connectAttr "animCurveTL319.a" "clipLibrary4.cel[0].cev[96].cevr";
connectAttr "animCurveTA861.a" "clipLibrary4.cel[0].cev[97].cevr";
connectAttr "animCurveTA862.a" "clipLibrary4.cel[0].cev[98].cevr";
connectAttr "animCurveTA863.a" "clipLibrary4.cel[0].cev[99].cevr";
connectAttr "animCurveTL320.a" "clipLibrary4.cel[0].cev[100].cevr";
connectAttr "animCurveTL321.a" "clipLibrary4.cel[0].cev[101].cevr";
connectAttr "animCurveTL322.a" "clipLibrary4.cel[0].cev[102].cevr";
connectAttr "animCurveTA864.a" "clipLibrary4.cel[0].cev[103].cevr";
connectAttr "animCurveTA865.a" "clipLibrary4.cel[0].cev[104].cevr";
connectAttr "animCurveTA866.a" "clipLibrary4.cel[0].cev[105].cevr";
connectAttr "animCurveTL323.a" "clipLibrary4.cel[0].cev[106].cevr";
connectAttr "animCurveTL324.a" "clipLibrary4.cel[0].cev[107].cevr";
connectAttr "animCurveTL325.a" "clipLibrary4.cel[0].cev[108].cevr";
connectAttr "animCurveTL326.a" "clipLibrary4.cel[0].cev[109].cevr";
connectAttr "animCurveTL327.a" "clipLibrary4.cel[0].cev[110].cevr";
connectAttr "animCurveTL328.a" "clipLibrary4.cel[0].cev[111].cevr";
connectAttr "animCurveTA867.a" "clipLibrary4.cel[0].cev[112].cevr";
connectAttr "animCurveTA868.a" "clipLibrary4.cel[0].cev[113].cevr";
connectAttr "animCurveTA869.a" "clipLibrary4.cel[0].cev[114].cevr";
connectAttr "animCurveTA870.a" "clipLibrary4.cel[0].cev[115].cevr";
connectAttr "animCurveTA871.a" "clipLibrary4.cel[0].cev[116].cevr";
connectAttr "animCurveTA872.a" "clipLibrary4.cel[0].cev[117].cevr";
connectAttr "animCurveTA873.a" "clipLibrary4.cel[0].cev[118].cevr";
connectAttr "animCurveTA874.a" "clipLibrary4.cel[0].cev[119].cevr";
connectAttr "animCurveTA875.a" "clipLibrary4.cel[0].cev[120].cevr";
connectAttr "animCurveTA876.a" "clipLibrary4.cel[0].cev[121].cevr";
connectAttr "animCurveTA877.a" "clipLibrary4.cel[0].cev[122].cevr";
connectAttr "animCurveTA878.a" "clipLibrary4.cel[0].cev[123].cevr";
connectAttr "animCurveTA879.a" "clipLibrary4.cel[0].cev[124].cevr";
connectAttr "animCurveTA880.a" "clipLibrary4.cel[0].cev[125].cevr";
connectAttr "animCurveTA881.a" "clipLibrary4.cel[0].cev[126].cevr";
connectAttr "animCurveTA882.a" "clipLibrary4.cel[0].cev[127].cevr";
connectAttr "animCurveTA883.a" "clipLibrary4.cel[0].cev[128].cevr";
connectAttr "animCurveTA884.a" "clipLibrary4.cel[0].cev[129].cevr";
connectAttr "animCurveTA885.a" "clipLibrary4.cel[0].cev[130].cevr";
connectAttr "animCurveTA886.a" "clipLibrary4.cel[0].cev[131].cevr";
connectAttr "animCurveTA887.a" "clipLibrary4.cel[0].cev[132].cevr";
connectAttr "animCurveTA888.a" "clipLibrary4.cel[0].cev[133].cevr";
connectAttr "animCurveTA889.a" "clipLibrary4.cel[0].cev[134].cevr";
connectAttr "animCurveTA890.a" "clipLibrary4.cel[0].cev[135].cevr";
connectAttr "animCurveTA891.a" "clipLibrary4.cel[0].cev[136].cevr";
connectAttr "animCurveTA892.a" "clipLibrary4.cel[0].cev[137].cevr";
connectAttr "animCurveTA893.a" "clipLibrary4.cel[0].cev[138].cevr";
connectAttr "animCurveTA894.a" "clipLibrary4.cel[0].cev[139].cevr";
connectAttr "animCurveTA895.a" "clipLibrary4.cel[0].cev[140].cevr";
connectAttr "animCurveTA896.a" "clipLibrary4.cel[0].cev[141].cevr";
connectAttr "animCurveTA897.a" "clipLibrary4.cel[0].cev[142].cevr";
connectAttr "animCurveTA898.a" "clipLibrary4.cel[0].cev[143].cevr";
connectAttr "animCurveTA899.a" "clipLibrary4.cel[0].cev[144].cevr";
connectAttr "animCurveTA900.a" "clipLibrary4.cel[0].cev[145].cevr";
connectAttr "animCurveTA901.a" "clipLibrary4.cel[0].cev[146].cevr";
connectAttr "animCurveTA902.a" "clipLibrary4.cel[0].cev[147].cevr";
connectAttr "animCurveTA903.a" "clipLibrary4.cel[0].cev[148].cevr";
connectAttr "animCurveTA904.a" "clipLibrary4.cel[0].cev[149].cevr";
connectAttr "animCurveTA905.a" "clipLibrary4.cel[0].cev[150].cevr";
connectAttr "animCurveTA906.a" "clipLibrary4.cel[0].cev[151].cevr";
connectAttr "animCurveTA907.a" "clipLibrary4.cel[0].cev[152].cevr";
connectAttr "animCurveTA908.a" "clipLibrary4.cel[0].cev[153].cevr";
connectAttr "animCurveTA909.a" "clipLibrary4.cel[0].cev[154].cevr";
connectAttr "animCurveTA910.a" "clipLibrary4.cel[0].cev[155].cevr";
connectAttr "animCurveTA911.a" "clipLibrary4.cel[0].cev[156].cevr";
connectAttr "animCurveTA912.a" "clipLibrary4.cel[0].cev[157].cevr";
connectAttr "animCurveTA913.a" "clipLibrary4.cel[0].cev[158].cevr";
connectAttr "animCurveTA914.a" "clipLibrary4.cel[0].cev[159].cevr";
connectAttr "animCurveTA915.a" "clipLibrary4.cel[0].cev[160].cevr";
connectAttr "animCurveTA916.a" "clipLibrary4.cel[0].cev[161].cevr";
connectAttr "animCurveTA917.a" "clipLibrary4.cel[0].cev[162].cevr";
connectAttr "animCurveTA918.a" "clipLibrary4.cel[0].cev[163].cevr";
connectAttr "animCurveTA919.a" "clipLibrary4.cel[0].cev[164].cevr";
connectAttr "animCurveTA920.a" "clipLibrary4.cel[0].cev[165].cevr";
connectAttr "animCurveTA921.a" "clipLibrary4.cel[0].cev[166].cevr";
connectAttr "animCurveTA922.a" "clipLibrary4.cel[0].cev[167].cevr";
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
// End of cps-m_point_left.ma
