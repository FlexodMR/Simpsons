//Maya ASCII 4.0 scene
//Name: npd_nis_idle1.ma
//Last modified: Thu, Jan 09, 2003 04:39:04 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "npd_nis_idle1Source";
	setAttr ".ihi" 0;
	setAttr ".du" 70;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL42";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "animCurveTL43";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL44";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.060083816922849878;
createNode animCurveTL -n "animCurveTL45";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL46";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA114";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA115";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA116";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA117";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL47";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL48";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL49";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.22948570846143723 10 -0.22948570846143723 
		25 -0.22948570846143723 33 -0.22948570846143723 50 -0.22948570846143723 60 
		-0.22948570846143723 70 -0.22948570846143723;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.13964711708164665 10 0.13964711708164665 
		25 0.13964711708164665 33 0.13964711708164665 50 0.13964711708164665 60 0.13964711708164665 
		70 0.13964711708164665;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.064904406754016042 10 -0.064904406754016042 
		25 -0.064904406754016042 33 -0.064904406754016042 50 -0.064904406754016042 
		60 -0.064904406754016042 70 -0.064904406754016042;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -12.031576538165265 10 -12.031576538165265 
		25 -12.031576538165265 33 -12.031576538165265 50 -12.031576538165265 60 -12.031576538165265 
		70 -12.031576538165265;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.10825868069997467 10 0.10825868069997467 
		25 0.10825868069997467 33 0.10825868069997467 50 0.10825868069997467 60 0.10825868069997467 
		70 0.10825868069997467;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.13791212285411131 10 0.13791212285411131 
		25 0.13791212285411131 33 0.13791212285411131 50 0.13791212285411131 60 0.13791212285411131 
		70 0.13791212285411131;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.10454507572235824 10 -0.10454507572235824 
		25 -0.10454507572235824 33 -0.10454507572235824 50 -0.10454507572235824 60 
		-0.10454507572235824 70 -0.10454507572235824;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 18.635117457566011 10 18.635117457566011 
		25 18.635117457566011 33 18.635117457566011 50 18.635117457566011 60 18.635117457566011 
		70 18.635117457566011;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA124";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA125";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA126";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA127";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA128";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA129";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 10 1 25 1 33 1 50 1 60 1 70 
		1;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 10 1 25 1 33 1 50 1 60 1 70 
		1;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.0052529700667724097 10 -0.018239151145691076 
		25 -0.047854110705780065 33 -0.066262635967664338 50 -0.082790183782509422 
		60 -0.018395734481028218 70 -0.0052529700667724097;
	setAttr -s 7 ".kit[0:6]"  3 9 9 1 1 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 1 1 9 3;
	setAttr -s 7 ".kix[3:6]"  0.14037209749221802 0.21237605810165405 
		0.085664160549640656 1;
	setAttr -s 7 ".kiy[3:6]"  -0.99009883403778076 0.97718799114227295 
		0.99632406234741211 0;
	setAttr -s 7 ".kox[3:6]"  0.14037203788757324 0.21237710118293762 
		0.085664160549640656 1;
	setAttr -s 7 ".koy[3:6]"  -0.99009883403778076 0.97718781232833862 
		0.99632406234741211 0;
createNode animCurveTL -n "animCurveTL63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.9912550528809112 10 0.9912550528809112 
		25 0.9912550528809112 33 0.9912550528809112 50 0.9912550528809112 60 0.9912550528809112 
		70 0.9912550528809112;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 -0.066107594034676975 25 
		-0.38523334125833331 33 -0.39160028898576438 50 1.4427376209409679 60 0.16054701408421532 
		70 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 1 9 1 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 1 9 1 3;
	setAttr -s 7 ".kix[3:6]"  0.99988561868667603 0.99994266033172607 
		0.99944627285003662 1;
	setAttr -s 7 ".kiy[3:6]"  0.015124185010790825 0.010706929489970207 
		-0.03327406570315361 0;
	setAttr -s 7 ".kox[3:6]"  0.99988561868667603 0.99994266033172607 
		0.99944627285003662 1;
	setAttr -s 7 ".koy[3:6]"  0.015124179422855377 0.010706929489970207 
		-0.033274073153734207 0;
createNode animCurveTA -n "animCurveTA131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0.10199822000595685 
		33 0.18477407591659073 50 0.63137731144675158 60 0.055543943300354032 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 1 9 1 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 1 9 1 3;
	setAttr -s 7 ".kix[3:6]"  0.99997395277023315 0.9999968409538269 
		0.99993836879730225 1;
	setAttr -s 7 ".kiy[3:6]"  0.0072167124599218369 -0.0025060935877263546 
		-0.011100351810455322 0;
	setAttr -s 7 ".kox[3:6]"  0.99997395277023315 0.9999968409538269 
		0.99993836879730225 1;
	setAttr -s 7 ".koy[3:6]"  0.007216709665954113 -0.0025060935877263546 
		-0.011100349016487598 0;
createNode animCurveTA -n "animCurveTA132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 1.0084874667474892 25 0.77012659987734233 
		33 -1.8694591186110143 50 -2.7265233020826685 60 -0.30781677831646881 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 1 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 1 9 3;
	setAttr -s 7 ".kix[4:6]"  0.99992847442626953 0.99746215343475342 
		1;
	setAttr -s 7 ".kiy[4:6]"  0.011958214454352856 0.07119905948638916 
		0;
	setAttr -s 7 ".kox[4:6]"  0.99992847442626953 0.99746215343475342 
		1;
	setAttr -s 7 ".koy[4:6]"  0.011958213523030281 0.07119905948638916 
		0;
createNode animCurveTA -n "animCurveTA133";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA134";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA135";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA136";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA137";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA138";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA139";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA140";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA141";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA142";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA143";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA144";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA145";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA146";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA147";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA148";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA149";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA150";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA151";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA152";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA153";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA154";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA155";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA156";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA157";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA158";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.22164053326398034 10 -0.22722115672774576 
		25 -0.25953274685395156 33 -0.38160155200839141 50 -0.36538547043978298 60 
		-0.24396302711904191 70 -0.22164053326398034;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 1 1 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 1 1 3;
	setAttr -s 7 ".kix[4:6]"  0.047968517988920212 0.062918752431869507 
		1;
	setAttr -s 7 ".kiy[4:6]"  0.99884885549545288 0.99801868200302124 
		0;
	setAttr -s 7 ".kox[4:6]"  0.047968640923500061 0.06291845440864563 
		1;
	setAttr -s 7 ".koy[4:6]"  0.99884885549545288 0.99801868200302124 
		0;
createNode animCurveTL -n "animCurveTL66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.9417076481617882 10 -0.9417076481617882 
		25 -0.87380465911763172 33 -0.6819431105713446 50 -0.72502547686955132 60 
		-0.90958373886116994 70 -0.9417076481617882;
	setAttr -s 7 ".kit[0:6]"  3 1 9 9 9 1 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 9 9 1 3;
	setAttr -s 7 ".kix[1:6]"  0.9612918496131897 0.029501061886548996 
		0.055923763662576675 0.039505135267972946 0.035343565046787262 1;
	setAttr -s 7 ".kiy[1:6]"  0.27553212642669678 0.9995647668838501 
		0.99843502044677734 -0.99921935796737671 -0.99937522411346436 0;
	setAttr -s 7 ".kox[1:6]"  0.9612918496131897 0.029501061886548996 
		0.055923763662576675 0.039505135267972946 0.035343661904335022 1;
	setAttr -s 7 ".koy[1:6]"  0.27553212642669678 0.9995647668838501 
		0.99843502044677734 -0.99921935796737671 -0.99937522411346436 0;
createNode animCurveTL -n "animCurveTL67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.038362195289875119 10 0.038362195289875119 
		25 0.04027440894045909 33 0.031960342023869402 50 0.013998942532690383 60 
		0.03470892433552443 70 0.038362195289875119;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 1 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 1 3;
	setAttr -s 7 ".kix[5:6]"  0.31837302446365356 1;
	setAttr -s 7 ".kiy[5:6]"  0.94796550273895264 0;
	setAttr -s 7 ".kox[5:6]"  0.31837382912635803 1;
	setAttr -s 7 ".koy[5:6]"  0.94796526432037354 0;
createNode animCurveTA -n "animCurveTA159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 6.7230119492284173 10 2.2759734061469419 
		25 -32.531337301191215 33 -111.73174019285213 50 -111.73174019285213 60 -5.8769305895024262 
		70 6.7230119492284173;
	setAttr -s 7 ".kit[0:6]"  3 1 9 9 9 1 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 9 9 1 3;
	setAttr -s 7 ".kix[1:6]"  0.90771573781967163 0.35953262448310852 
		0.51629346609115601 0.43794134259223938 0.38554966449737549 1;
	setAttr -s 7 ".kiy[1:6]"  -0.41958564519882202 -0.93313252925872803 
		-0.85641175508499146 0.89900356531143188 0.92268705368041992 0;
	setAttr -s 7 ".kox[1:6]"  0.90771579742431641 0.35953262448310852 
		0.51629346609115601 0.43794134259223938 0.38554969429969788 1;
	setAttr -s 7 ".koy[1:6]"  -0.41958549618721008 -0.93313252925872803 
		-0.85641175508499146 0.89900356531143188 0.92268705368041992 0;
createNode animCurveTA -n "animCurveTA160";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 19.839511008631867 10 22.53986201301441 
		25 42.138852378954731 33 34.768720993892344 50 34.768720993892344 60 21.680659420710867 
		70 19.839511008631867;
	setAttr -s 7 ".kit[0:6]"  3 1 9 1 1 1 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 1 1 1 3;
	setAttr -s 7 ".kix[1:6]"  0.93285202980041504 0.96336513757705688 
		0.99369478225708008 0.99820679426193237 0.94871652126312256 1;
	setAttr -s 7 ".kiy[1:6]"  0.3602597713470459 0.26819315552711487 
		-0.11211901903152466 -0.059859387576580048 -0.31612801551818848 0;
	setAttr -s 7 ".kox[1:6]"  0.93285202980041504 0.96336513757705688 
		0.99369478225708008 0.99820679426193237 0.94871652126312256 1;
	setAttr -s 7 ".koy[1:6]"  0.36025968194007874 0.26819315552711487 
		-0.11211901903152466 -0.059859391301870346 -0.31612807512283325 0;
createNode animCurveTA -n "animCurveTA161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 76.90743997913691 10 76.90743997913691 
		25 68.595343641246089 33 46.199410134879344 50 46.199410134879344 60 73.949523869983608 
		70 76.90743997913691;
	setAttr -s 7 ".kit[0:6]"  3 1 9 9 9 1 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 9 9 1 3;
	setAttr -s 7 ".kix[1:6]"  0.99739503860473633 0.81958854198455811 
		0.90535128116607666 0.88058727979660034 0.88413822650909424 1;
	setAttr -s 7 ".kiy[1:6]"  0.072133176028728485 -0.5729525089263916 
		-0.4246634840965271 0.47388401627540588 0.46722543239593506 0;
	setAttr -s 7 ".kox[1:6]"  0.99739503860473633 0.81958854198455811 
		0.90535128116607666 0.88058727979660034 0.88413822650909424 1;
	setAttr -s 7 ".koy[1:6]"  0.072133176028728485 -0.5729525089263916 
		-0.4246634840965271 0.47388401627540588 0.46722540259361267 0;
createNode animCurveTL -n "animCurveTL68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.20623790699604494 10 0.40354582848620968 
		25 0.3298383676750376 33 0.40238203217490098 50 0.40967981195497849 60 0.44735038006508215 
		70 0.20623790699604494;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.94615818397708606 10 -0.51207434018548259 
		25 -0.38395267352184526 33 -0.51792545885177854 50 -0.59886552207630217 60 
		-0.75774175181006143 70 -0.94615818397708606;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.023808763748733922 10 0.35061645451890583 
		25 0.44042501919766269 33 0.42716779946018757 50 0.34745814040118816 60 0.17176672388092504 
		70 0.023808763748733922;
	setAttr -s 7 ".kit[0:6]"  3 1 1 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 1 1 9 9 9 3;
	setAttr -s 7 ".kix[1:6]"  0.032786544412374496 0.47849273681640625 
		0.089279696345329285 0.035216834396123886 0.020594054833054543 1;
	setAttr -s 7 ".kiy[1:6]"  0.99946236610412598 0.87809151411056519 
		-0.99600660800933838 -0.99937969446182251 -0.99978792667388916 0;
	setAttr -s 7 ".kox[1:6]"  0.032786678522825241 0.47849276661872864 
		0.089279696345329285 0.035216834396123886 0.020594054833054543 1;
	setAttr -s 7 ".koy[1:6]"  0.99946236610412598 0.87809151411056519 
		-0.99600660800933838 -0.99937969446182251 -0.99978792667388916 0;
createNode animCurveTA -n "animCurveTA162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.1910546202722809 10 -150.41322323703213 
		25 -174.31443889745913 33 -125.89827593972559 50 -101.58942230955584 60 -51.20198233740048 
		70 8.1910546202722809;
	setAttr -s 7 ".kit[0:6]"  3 9 9 1 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 1 9 9 3;
	setAttr -s 7 ".kix[3:6]"  0.35601025819778442 0.56811749935150146 
		0.32861790060997009 1;
	setAttr -s 7 ".kiy[3:6]"  0.93448203802108765 0.82294744253158569 
		0.94446295499801636 0;
	setAttr -s 7 ".kox[3:6]"  0.35601028800010681 0.56811749935150146 
		0.32861790060997009 1;
	setAttr -s 7 ".koy[3:6]"  0.93448203802108765 0.82294744253158569 
		0.94446295499801636 0;
createNode animCurveTA -n "animCurveTA163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -16.680769289981995 10 -68.375678346899349 
		25 -78.922974044830198 33 -55.241502486571854 50 -46.944382315825017 60 -49.654097457938349 
		70 -16.680769289981995;
	setAttr -s 7 ".kit[0:6]"  3 1 9 1 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 1 9 9 3;
	setAttr -s 7 ".kix[1:6]"  0.53497838973999023 0.95808911323547363 
		0.7504761815071106 0.99418091773986816 0.78380435705184937 1;
	setAttr -s 7 ".kiy[1:6]"  -0.84486573934555054 0.28647023439407349 
		0.66089755296707153 0.10772349685430527 0.62100785970687866 0;
	setAttr -s 7 ".kox[1:6]"  0.53497838973999023 0.95808911323547363 
		0.75047612190246582 0.99418091773986816 0.78380435705184937 1;
	setAttr -s 7 ".koy[1:6]"  -0.84486573934555054 0.28647023439407349 
		0.66089755296707153 0.10772349685430527 0.62100785970687866 0;
createNode animCurveTA -n "animCurveTA164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -64.609749241846473 10 -3.6954260957313596 
		25 19.579516168519476 33 -40.34317444049281 50 -55.275515244616059 60 -68.343149373407613 
		70 -64.609749241846473;
	setAttr -s 7 ".kit[0:6]"  3 9 9 1 3 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 1 3 9 3;
	setAttr -s 7 ".kix[3:6]"  0.49163278937339783 1 0.97141575813293457 
		1;
	setAttr -s 7 ".kiy[3:6]"  -0.87080264091491699 0 -0.23738454282283783 
		0;
	setAttr -s 7 ".kox[3:6]"  0.49163272976875305 1 0.97141575813293457 
		1;
	setAttr -s 7 ".koy[3:6]"  -0.87080264091491699 0 -0.23738454282283783 
		0;
createNode animCurveTL -n "animCurveTL71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.8448236677023373 10 -0.8448236677023373 
		25 -0.8448236677023373 33 -0.8448236677023373 50 -0.8448236677023373 60 -0.8448236677023373 
		70 -0.8448236677023373;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.5117481219250299 10 1.5117481219250299 
		25 1.5117481219250299 33 1.5117481219250299 50 1.5117481219250299 60 1.5117481219250299 
		70 1.5117481219250299;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.097994651149805143 10 -0.097994651149805143 
		25 -0.097994651149805143 33 -0.097994651149805143 50 -0.097994651149805143 
		60 -0.097994651149805143 70 -0.097994651149805143;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 5.4739599453216474 10 5.4739599453216474 
		25 5.4739599453216474 33 5.4739599453216474 50 5.4739599453216474 60 5.4739599453216474 
		70 5.4739599453216474;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.5874521608419823 10 8.5874521608419823 
		25 8.5874521608419823 33 8.5874521608419823 50 8.5874521608419823 60 8.5874521608419823 
		70 8.5874521608419823;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 74.754744621954103 10 74.754744621954103 
		25 74.754744621954103 33 74.754744621954103 50 74.754744621954103 60 74.754744621954103 
		70 74.754744621954103;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL74";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.61083301393139333 10 0.61083301393139333 
		25 0.61083301393139333 33 0.61083301393139333 50 0.61083301393139333 60 0.61083301393139333 
		70 0.61083301393139333;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL75";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.4644416293758407 10 1.4644416293758407 
		25 1.4644416293758407 33 1.4644416293758407 50 1.4644416293758407 60 1.4644416293758407 
		70 1.4644416293758407;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL76";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.14314299916678522 10 0.14314299916678522 
		25 0.14314299916678522 33 0.14314299916678522 50 0.14314299916678522 60 0.14314299916678522 
		70 0.14314299916678522;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.226511010665405 10 16.226511010665405 
		25 16.226511010665405 33 16.226511010665405 50 16.226511010665405 60 16.226511010665405 
		70 16.226511010665405;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -8.513966085499284 10 -8.513966085499284 
		25 -8.513966085499284 33 -8.513966085499284 50 -8.513966085499284 60 -8.513966085499284 
		70 -8.513966085499284;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -68.213989601412422 10 -68.213989601412422 
		25 -68.213989601412422 33 -68.213989601412422 50 -68.213989601412422 60 -68.213989601412422 
		70 -68.213989601412422;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1 10 -1 25 -1 33 -1 50 -1 60 
		-1 70 -1;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.10167917362943303 10 -0.10167917362943303 
		25 -0.10167917362943303 33 0.007568571255682454 50 0.007568571255682454 60 
		-0.10167917362943303 70 -0.10167917362943303;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.40762644910266188 10 -0.40762644910266188 
		25 -0.40762644910266188 33 -0.40712842141271238 50 -0.40712842141271238 60 
		-0.40762644910266188 70 -0.40762644910266188;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.93129112588482243 10 -0.93129112588482243 
		25 -0.93129112588482243 33 -0.93194542123175472 50 -0.93194542123175472 60 
		-0.93129112588482243 70 -0.93129112588482243;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.253734489678925 10 12.253734489678925 
		25 12.253734489678925 33 12.253734489678925 50 12.253734489678925 60 12.253734489678925 
		70 12.253734489678925;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -65.746751280844961 10 -65.746751280844961 
		25 -65.746751280844961 33 -65.746751280844961 50 -65.746751280844961 60 -65.746751280844961 
		70 -65.746751280844961;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 3.871449260799477e-015 10 3.871449260799477e-015 
		25 3.871449260799477e-015 33 3.871449260799477e-015 50 3.871449260799477e-015 
		60 3.871449260799477e-015 70 3.871449260799477e-015;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.061808866237337522 10 -0.061808866237337522 
		25 -0.061808866237337522 33 -0.061808866237337522 50 -0.061808866237337522 
		60 -0.061808866237337522 70 -0.061808866237337522;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -59.058178941076754 10 -59.058178941076754 
		25 -59.058178941076754 33 -59.058178941076754 50 -59.058178941076754 60 -59.058178941076754 
		70 -59.058178941076754;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.579147429757843 10 16.579147429757843 
		25 16.579147429757843 33 16.579147429757843 50 16.579147429757843 60 16.579147429757843 
		70 16.579147429757843;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.5572674112203622 10 8.5572674112203622 
		25 8.5572674112203622 33 8.5572674112203622 50 8.5572674112203622 60 8.5572674112203622 
		70 8.5572674112203622;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.711328223519057 10 15.711328223519057 
		25 15.711328223519057 33 15.711328223519057 50 15.711328223519057 60 15.711328223519057 
		70 15.711328223519057;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 10.423754966968488 10 10.423754966968488 
		25 10.423754966968488 33 16.167746105022349 50 16.167746105022349 60 39.619861088315197 
		70 10.423754966968488;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.722848255843903 10 27.722848255843903 
		25 27.722848255843903 33 4.9644918394438662 50 4.9644918394438662 60 29.92012337750786 
		70 27.722848255843903;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 21.576484776388227 10 21.576484776388227 
		25 21.576484776388227 33 -0.24151421707569409 50 -0.24151421707569409 60 
		34.070404687893898 70 21.576484776388227;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.080064458283051 10 27.080064458283051 
		25 59.776006720265762 33 6.8504987207508714 50 6.8504987207508714 60 35.981551258253354 
		70 27.080064458283051;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
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
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA194";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA195";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA196";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA197";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA198";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA199";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.911632519594587 10 27.911632519594587 
		25 27.911632519594587 33 -0.86240754398499608 50 -0.86240754398499608 60 
		27.911632519594587 70 27.911632519594587;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 -0.46248482203646518 
		60 0 70 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 1.6789801952808447 
		50 2.9028670035554449 60 0 70 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 -0.58460970733259354 
		60 0 70 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.1867554394300113 10 0.63869699452188344 
		25 3.1305424834487456 33 2.4254743240985626 50 1.936308382028479 60 2.9554215227979683 
		70 -2.1867554394300113;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -8.9112352175334859 10 -5.1300327762962503 
		25 -5.5976843563803307 33 -5.9364385423014623 50 -6.1129458645502002 60 -5.6918714068350429 
		70 -8.9112352175334859;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 9.210517948428329 10 12.656310529672554 
		25 8.8383500172830409 33 15.846355034937714 50 20.504440024995542 60 10.618603892683387 
		70 9.210517948428329;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 33.429092416277157 10 33.429092416277157 
		25 33.429092416277157 33 8.626644378530008 50 8.626644378530008 60 33.429092416277157 
		70 33.429092416277157;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.2533422302317216 10 8.2533422302317216 
		25 8.2533422302317216 33 4.325839282214238 50 4.325839282214238 60 8.2533422302317216 
		70 8.2533422302317216;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 23.263402056531085 10 23.263402056531085 
		25 23.263402056531085 33 6.7290226725079414 50 6.7290226725079414 60 23.263402056531085 
		70 23.263402056531085;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 20.166277752815617 10 20.166277752815617 
		25 20.166277752815617 33 -0.32019809549467237 50 -0.32019809549467237 60 
		20.166277752815617 70 20.166277752815617;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 25 0 33 0 50 0 60 0 70 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 17.254116939558369 10 17.254116939558369 
		25 17.254116939558369 33 -10.125221737713369 50 -10.125221737713369 60 10.904238513170366 
		70 17.254116939558369;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
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
	setAttr ".o" 9;
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
connectAttr "npd_nis_idle1Source.st" "clipLibrary1.st[0]";
connectAttr "npd_nis_idle1Source.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL42.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL43.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL44.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL45.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL46.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA114.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU9.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU15.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU16.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA115.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA116.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA117.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL47.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL48.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL49.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL50.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL51.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL52.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA118.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA119.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA120.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL53.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL54.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL55.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA121.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA122.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA123.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA124.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA125.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA126.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA127.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA128.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA129.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL56.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL57.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL58.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL59.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL60.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL61.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL62.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL63.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL64.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA130.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA131.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA132.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA133.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA134.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA135.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA136.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA137.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA138.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA139.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA140.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA141.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA142.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA143.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA144.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA145.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA146.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA147.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA148.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA149.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA150.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA151.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA152.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA153.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA154.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA155.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA156.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA157.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA158.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTL65.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTL66.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTL67.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA159.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA160.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA161.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL68.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL69.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL70.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA162.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA163.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA164.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL71.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL72.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL73.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA165.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA166.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA167.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL74.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL75.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL76.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA168.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA169.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA170.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL77.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL78.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL79.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL80.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL81.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL82.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA171.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA172.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA173.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA174.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA175.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA176.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA177.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA178.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA179.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA180.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA181.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA182.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA183.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA184.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA185.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA186.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA187.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA188.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA189.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA190.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA191.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA192.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA193.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA194.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA195.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA196.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA197.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA198.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA199.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA200.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA201.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA202.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA203.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA204.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA205.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA206.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA207.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA208.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA209.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA210.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA211.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA212.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA213.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA214.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA215.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA216.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA217.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA218.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA219.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA220.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA221.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA222.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA223.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA224.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA225.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA226.a" "clipLibrary1.cel[0].cev[161].cevr";
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
// End of npd_nis_idle1.ma
