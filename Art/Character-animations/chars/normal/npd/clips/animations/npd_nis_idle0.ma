//Maya ASCII 4.0 scene
//Name: npd_nis_idle0.ma
//Last modified: Thu, Jan 09, 2003 04:38:56 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "npd_nis_idle0Source";
	setAttr ".ihi" 0;
	setAttr ".du" 100;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "animCurveTL43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.060083816922849878;
createNode animCurveTL -n "animCurveTL45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.22948570846143723 15 -0.22948570846143723 
		22 -0.22948570846143723 65 -0.22948570846143723 80 -0.22948570846143723 100 
		-0.22948570846143723;
	setAttr -s 6 ".kit[0:5]"  3 3 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  3 3 9 9 9 9;
createNode animCurveTL -n "animCurveTL51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.13964711708164665 15 0.13964711708164665 
		22 0.13964711708164665 65 0.13964711708164665 80 0.13964711708164665 100 
		0.13964711708164665;
	setAttr -s 6 ".kit[0:5]"  3 3 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  3 3 9 9 9 9;
createNode animCurveTL -n "animCurveTL52";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.064904406754016042 15 -0.11996468523816267 
		22 -0.11996468523816267 65 -0.11996468523816267 80 -0.11996468523816267 100 
		-0.064904406754016042;
	setAttr -s 6 ".kit[4:5]"  9 9;
	setAttr -s 6 ".kot[4:5]"  9 9;
createNode animCurveTA -n "animCurveTA118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 15 0 22 0 65 0 80 0 100 0;
	setAttr -s 6 ".kit[0:5]"  3 3 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  3 3 9 9 9 9;
createNode animCurveTA -n "animCurveTA119";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -12.031576538165265 15 -33.107199558818586 
		22 -33.107199558818586 65 -33.107199558818586 80 -33.107199558818586 100 
		-12.031576538165265;
	setAttr -s 6 ".kit[4:5]"  9 9;
	setAttr -s 6 ".kot[4:5]"  9 9;
createNode animCurveTA -n "animCurveTA120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 15 0 22 0 65 0 80 0 100 0;
	setAttr -s 6 ".kit[0:5]"  3 3 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  3 3 9 9 9 9;
createNode animCurveTL -n "animCurveTL53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.10825868069997467 10 0.10825868069997467 
		15 0.10825868069997467 22 0.10825868069997467 65 0.10825868069997467 80 0.10825868069997467 
		100 0.10825868069997467;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.13791212285411131 10 0.13791212285411131 
		15 0.13791212285411131 22 0.13791212285411131 65 0.13791212285411131 80 0.13791212285411131 
		100 0.13791212285411131;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.10454507572235824 10 -0.10454507572235824 
		15 -0.10454507572235824 22 -0.10454507572235824 65 -0.10454507572235824 80 
		-0.10454507572235824 100 -0.10454507572235824;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 18.635117457566011 10 18.635117457566011 
		15 18.635117457566011 22 18.635117457566011 65 18.635117457566011 80 18.635117457566011 
		100 18.635117457566011;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 10 1 15 1 22 1 65 1 80 1 100 
		1;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 10 1 15 1 22 1 65 1 80 1 100 
		1;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.0052529700667724097 10 -0.0052529700667724097 
		15 -0.0052529700667724097 22 0.037711221708875392 65 0.050732862431895946 
		80 -0.030158830768231351 100 -0.0052529700667724097;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.9912550528809112 10 0.9912550528809112 
		15 0.9912550528809112 22 0.98710947149901684 65 0.98710947149901684 80 0.98710947149901684 
		100 0.9912550528809112;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 -2.1541028172196888 15 -3.2151933240692987 
		22 -4.5247233676478791 65 -5.7791002782903309 80 -4.2040447895614603 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 -3.1768493507673559 
		65 -3.1768493507673559 80 -1.2947094159403834 100 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 -0.72014139065673166 
		65 -0.72014139065673133 80 -0.92704204865794793 100 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL65";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.22164053326398034 10 -0.40328435084456876 
		15 -0.40328435084456876 22 -0.18617100895225336 65 -0.18617100895225336 80 
		-0.18617100895225336 100 -0.22164053326398034;
	setAttr -s 7 ".kit[0:6]"  3 1 1 1 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 1 1 1 9 9 9;
	setAttr -s 7 ".kix[1:6]"  0.041186206042766571 0.064223743975162506 
		0.55283677577972412 1 0.31245285272598267 0.18472027778625488;
	setAttr -s 7 ".kiy[1:6]"  -0.99915146827697754 0.99793553352355957 
		0.83328956365585327 0 -0.94993329048156738 -0.98279112577438354;
	setAttr -s 7 ".kox[1:6]"  0.041186206042766571 0.064223803579807281 
		0.55283701419830322 1 0.31245285272598267 0.18472027778625488;
	setAttr -s 7 ".koy[1:6]"  -0.99915146827697754 0.99793553352355957 
		0.83328938484191895 0 -0.94993329048156738 -0.98279112577438354;
createNode animCurveTL -n "animCurveTL66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.9417076481617882 10 -0.64716135459713542 
		15 -0.58944197173851964 22 -0.65331222161211577 65 -0.65331222161211577 80 
		-0.65331222161211577 100 -0.9417076481617882;
	setAttr -s 7 ".kit[0:6]"  3 9 9 1 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 1 9 9 9;
	setAttr -s 7 ".kix[3:6]"  0.99896705150604248 1 0.040420655161142349 
		0.023110233247280121;
	setAttr -s 7 ".kiy[3:6]"  -0.04544009268283844 0 -0.99918276071548462 
		-0.99973291158676147;
	setAttr -s 7 ".kox[3:6]"  0.99896705150604248 1 0.040420655161142349 
		0.023110233247280121;
	setAttr -s 7 ".koy[3:6]"  -0.045440170913934708 0 -0.99918276071548462 
		-0.99973291158676147;
createNode animCurveTL -n "animCurveTL67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.038362195289875119 10 0.041063801943505 
		15 0.053770827932925036 22 -0.13371004606795256 65 -0.13371004606795256 80 
		-0.13371004606795256 100 0.038362195289875119;
	setAttr -s 7 ".kit[0:6]"  3 9 1 1 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 1 1 9 9 9;
	setAttr -s 7 ".kix[2:6]"  0.44077026844024658 0.46294012665748596 
		1 0.06764567643404007 0.038714371621608734;
	setAttr -s 7 ".kiy[2:6]"  -0.89761996269226074 -0.88638955354690552 
		0 0.99770939350128174 0.99925029277801514;
	setAttr -s 7 ".kox[2:6]"  0.44077044725418091 0.46293860673904419 
		1 0.06764567643404007 0.038714371621608734;
	setAttr -s 7 ".koy[2:6]"  -0.89761984348297119 -0.8863903284072876 
		0 0.99770939350128174 0.99925029277801514;
createNode animCurveTA -n "animCurveTA159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 6.7230119492284173 10 18.183181184398418 
		15 20.663881358701719 22 -44.182611764500024 65 -27.955471401067459 80 -27.955471401067459 
		100 6.7230119492284173;
	setAttr -s 7 ".kit[0:6]"  3 9 1 1 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 1 1 9 9 9;
	setAttr -s 7 ".kix[2:6]"  0.80582356452941895 0.99815845489501953 
		0.98943978548049927 0.88765645027160645 0.74038594961166382;
	setAttr -s 7 ".kiy[2:6]"  -0.59215575456619263 0.060660365968942642 
		0.14494459331035614 0.46050629019737244 0.67218202352523804;
	setAttr -s 7 ".kox[2:6]"  0.80582356452941895 0.99815845489501953 
		0.98943978548049927 0.88765645027160645 0.74038594961166382;
	setAttr -s 7 ".koy[2:6]"  -0.59215569496154785 0.060660343617200851 
		0.14494459331035614 0.46050629019737244 0.67218202352523804;
createNode animCurveTA -n "animCurveTA160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 19.839511008631867 10 52.618155214221112 
		15 61.372809648029062 22 79.426458164546204 65 74.168608263026343 80 74.168608263026343 
		100 19.839511008631867;
	setAttr -s 7 ".kit[0:6]"  3 9 9 1 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 1 9 9 9;
	setAttr -s 7 ".kix[3:6]"  0.99786752462387085 0.99887537956237793 
		0.77601468563079834 0.57514691352844238;
	setAttr -s 7 ".kiy[3:6]"  -0.065272144973278046 -0.047412201762199402 
		-0.63071483373641968 -0.81805014610290527;
	setAttr -s 7 ".kox[3:6]"  0.99786752462387085 0.99887537956237793 
		0.77601468563079834 0.57514691352844238;
	setAttr -s 7 ".koy[3:6]"  -0.06527215987443924 -0.047412201762199402 
		-0.63071483373641968 -0.81805014610290527;
createNode animCurveTA -n "animCurveTA161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 76.90743997913691 10 94.383752332104962 
		15 99.008236996277731 22 39.648389459655753 65 56.292679372995572 80 56.292679372995572 
		100 76.90743997913691;
	setAttr -s 7 ".kit[0:6]"  3 9 9 1 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 1 9 9 9;
	setAttr -s 7 ".kix[3:6]"  0.998180091381073 0.98889899253845215 
		0.95558977127075195 0.88001823425292969;
	setAttr -s 7 ".kiy[3:6]"  -0.060303777456283569 0.14858940243721008 
		0.29470014572143555 0.47493988275527954;
	setAttr -s 7 ".kox[3:6]"  0.998180091381073 0.98889899253845215 
		0.95558977127075195 0.88001823425292969;
	setAttr -s 7 ".koy[3:6]"  -0.060303758829832077 0.14858940243721008 
		0.29470014572143555 0.47493988275527954;
createNode animCurveTL -n "animCurveTL68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.20623790699604494 8 0.35761061515560033 
		13 0.35761061515560033 20 0.171471531972755 65 0.171471531972755 77 0.171471531972755 
		90 0.20623790699604494 100 0.20623790699604494;
	setAttr -s 8 ".kit[0:7]"  3 9 9 1 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 1 9 9 9 
		9;
	setAttr -s 8 ".kix[3:7]"  0.50916194915771484 1 0.23309268057346344 
		0.21534572541713715 1;
	setAttr -s 8 ".kiy[3:7]"  -0.86067074537277222 0 0.97245454788208008 
		0.97653788328170776 0;
	setAttr -s 8 ".kox[3:7]"  0.50916236639022827 1 0.23309268057346344 
		0.21534572541713715 1;
	setAttr -s 8 ".koy[3:7]"  -0.86067050695419312 0 0.97245454788208008 
		0.97653788328170776 0;
createNode animCurveTL -n "animCurveTL69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.94615818397708606 8 -0.72912390838090857 
		13 -0.67140452552229268 20 -0.70939097513667049 65 -0.70939097513667049 77 
		-0.70939097513667049 90 -0.94615818397708606 100 -0.94615818397708606;
	setAttr -s 8 ".kit[0:7]"  3 9 9 1 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 1 9 9 9 
		9;
	setAttr -s 8 ".kix[3:7]"  0.67740350961685181 1 0.035174533724784851 
		0.0323636494576931 1;
	setAttr -s 8 ".kiy[3:7]"  -0.73561161756515503 0 -0.99938118457794189 
		-0.99947613477706909 0;
	setAttr -s 8 ".kox[3:7]"  0.67740362882614136 1 0.035174533724784851 
		0.0323636494576931 1;
	setAttr -s 8 ".koy[3:7]"  -0.73561155796051025 0 -0.99938118457794189 
		-0.99947613477706909 0;
createNode animCurveTL -n "animCurveTL70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.023808763748733922 8 0.050647876775718678 
		13 0.063354902765138721 20 -0.20825985681820544 65 -0.20825985681820544 77 
		-0.20825985681820544 90 0.023808763748733922 100 0.023808763748733922;
	setAttr -s 8 ".kit[0:7]"  3 9 9 1 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 1 9 9 9 
		9;
	setAttr -s 8 ".kix[3:7]"  0.26739168167114258 1 0.035885792225599289 
		0.033018190413713455 1;
	setAttr -s 8 ".kiy[3:7]"  -0.96358793973922729 0 0.99935591220855713 
		0.99945473670959473 0;
	setAttr -s 8 ".kox[3:7]"  0.26739192008972168 1 0.035885792225599289 
		0.033018190413713455 1;
	setAttr -s 8 ".koy[3:7]"  -0.96358788013458252 0 0.99935591220855713 
		0.99945473670959473 0;
createNode animCurveTA -n "animCurveTA162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.1910546202722809 8 -2.9042953430594332 
		13 6.1419053943968738 20 -45.179515417019637 65 -33.681660997633813 77 -33.681660997633813 
		90 8.1910546202722809 100 8.1910546202722809;
	setAttr -s 8 ".kit[0:7]"  3 9 9 1 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 1 9 9 9 
		9;
	setAttr -s 8 ".kix[3:7]"  0.99627077579498291 0.9944685697555542 
		0.75183844566345215 0.72382760047912598 1;
	setAttr -s 8 ".kiy[3:7]"  -0.086282052099704742 0.10503441840410233 
		0.65934735536575317 0.68998086452484131 0;
	setAttr -s 8 ".kox[3:7]"  0.99627077579498291 0.9944685697555542 
		0.75183844566345215 0.72382760047912598 1;
	setAttr -s 8 ".koy[3:7]"  -0.086282059550285339 0.10503441840410233 
		0.65934735536575317 0.68998086452484131 0;
createNode animCurveTA -n "animCurveTA163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -16.680769289981995 8 -62.412488435274888 
		13 -80.38073909742576 20 -76.43189643711321 65 -72.538774041073893 77 -72.538774041073893 
		90 -16.680769289981995 100 -16.680769289981995;
	setAttr -s 8 ".kit[0:7]"  3 9 9 1 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 1 9 9 9 
		9;
	setAttr -s 8 ".kix[3:7]"  0.98657822608947754 0.99936115741729736 
		0.6497567892074585 0.61815500259399414 1;
	setAttr -s 8 ".kiy[3:7]"  0.16328929364681244 0.035739153623580933 
		0.76014220714569092 0.78605622053146362 0;
	setAttr -s 8 ".kox[3:7]"  0.98657822608947754 0.99936115741729736 
		0.6497567892074585 0.61815500259399414 1;
	setAttr -s 8 ".koy[3:7]"  0.16328926384449005 0.035739153623580933 
		0.76014220714569092 0.78605622053146362 0;
createNode animCurveTA -n "animCurveTA164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -64.609749241846473 8 -67.774109369402638 
		13 -82.956936688024868 20 -51.834405051752455 65 -63.757148592317854 77 -63.757148592317854 
		90 -64.609749241846473 100 -64.609749241846473;
	setAttr -s 8 ".kit[0:7]"  3 9 9 1 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 1 9 9 9 
		9;
	setAttr -s 8 ".kix[3:7]"  0.99613767862319946 0.99405592679977417 
		0.99984061717987061 0.99981170892715454 1;
	setAttr -s 8 ".kiy[3:7]"  -0.087804920971393585 -0.10887064784765244 
		-0.017853980883955956 -0.019405938684940338 0;
	setAttr -s 8 ".kox[3:7]"  0.99613767862319946 0.99405592679977417 
		0.99984061717987061 0.99981170892715454 1;
	setAttr -s 8 ".koy[3:7]"  -0.087804935872554779 -0.10887064784765244 
		-0.017853980883955956 -0.019405938684940338 0;
createNode animCurveTL -n "animCurveTL71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.8448236677023373 10 -0.8448236677023373 
		15 -0.8448236677023373 22 -0.8448236677023373 65 -0.8448236677023373 80 -0.8448236677023373 
		100 -0.8448236677023373;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.5117481219250299 10 1.5117481219250299 
		15 1.5117481219250299 22 1.5117481219250299 65 1.5117481219250299 80 1.5117481219250299 
		100 1.5117481219250299;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.097994651149805143 10 -0.097994651149805143 
		15 -0.097994651149805143 22 -0.097994651149805143 65 -0.097994651149805143 
		80 -0.097994651149805143 100 -0.097994651149805143;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 5.4739599453216474 10 5.4739599453216474 
		15 5.4739599453216474 22 5.4739599453216474 65 5.4739599453216474 80 5.4739599453216474 
		100 5.4739599453216474;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.5874521608419823 10 8.5874521608419823 
		15 8.5874521608419823 22 8.5874521608419823 65 8.5874521608419823 80 8.5874521608419823 
		100 8.5874521608419823;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 74.754744621954103 10 74.754744621954103 
		15 74.754744621954103 22 74.754744621954103 65 74.754744621954103 80 74.754744621954103 
		100 74.754744621954103;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL74";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.61083301393139333 10 0.61083301393139333 
		15 0.61083301393139333 22 0.61083301393139333 65 0.61083301393139333 80 0.61083301393139333 
		100 0.61083301393139333;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL75";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.4644416293758407 10 1.4644416293758407 
		15 1.4644416293758407 22 1.4644416293758407 65 1.4644416293758407 80 1.4644416293758407 
		100 1.4644416293758407;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL76";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.14314299916678522 10 0.14314299916678522 
		15 0.14314299916678522 22 0.14314299916678522 65 0.14314299916678522 80 0.14314299916678522 
		100 0.14314299916678522;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.226511010665405 10 16.226511010665405 
		15 16.226511010665405 22 16.226511010665405 65 16.226511010665405 80 16.226511010665405 
		100 16.226511010665405;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -8.513966085499284 10 -8.513966085499284 
		15 -8.513966085499284 22 -8.513966085499284 65 -8.513966085499284 80 -8.513966085499284 
		100 -8.513966085499284;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -68.213989601412422 10 -68.213989601412422 
		15 -68.213989601412422 22 -68.213989601412422 65 -68.213989601412422 80 -68.213989601412422 
		100 -68.213989601412422;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0.26590405750715779 15 0.49386456292838121 
		22 0.76185081097603746 65 0.76185081097603746 80 0.76185081097603746 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 -0.079343812410717932 15 
		-0.058998490899410554 22 -0.11495742454572488 65 -0.11495742454572488 80 
		-0.11495742454572488 100 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1 10 -0.98753917812891645 15 
		-0.99974193074355133 22 -0.98039587741663059 65 -0.98039587741663059 80 -0.98039587741663059 
		100 -1;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.10167917362943303 10 -0.43897900390465483 
		15 -0.78590389341101274 22 -1.1170740617794468 65 -1.1170740617794468 80 
		-1.1170740617794468 100 -0.10167917362943303;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.40762644910266188 10 -0.29919640285150545 
		15 -0.29324429007480846 22 -0.45734086104446087 65 -0.45734086104446087 80 
		-0.45734086104446087 100 -0.40762644910266188;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.93129112588482243 10 -1.0677833846493965 
		15 -1.164963853570534 22 -1.1274074699106829 65 -1.1274074699106829 80 -1.1274074699106829 
		100 -0.93129112588482243;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.253734489678925 10 12.253734489678925 
		15 12.253734489678925 22 12.253734489678925 65 12.253734489678925 80 12.253734489678925 
		100 12.253734489678925;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -65.746751280844961 10 -65.746751280844961 
		15 -65.746751280844961 22 -65.746751280844961 65 -65.746751280844961 80 -65.746751280844961 
		100 -65.746751280844961;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 3.871449260799477e-015 10 3.871449260799477e-015 
		15 3.871449260799477e-015 22 0 65 0 80 0 100 3.871449260799477e-015;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.061808866237337522 10 -0.061808866237337522 
		15 -0.061808866237337522 22 -0.061808866237337522 65 -0.061808866237337522 
		80 -0.061808866237337522 100 -0.061808866237337522;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -59.058178941076754 10 -59.058178941076754 
		15 -59.058178941076754 22 -59.058178941076754 65 -59.058178941076754 80 -59.058178941076754 
		100 -59.058178941076754;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.579147429757843 10 16.579147429757843 
		15 16.579147429757843 22 16.579147429757843 65 16.579147429757843 80 16.579147429757843 
		100 16.579147429757843;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.5572674112203622 10 8.5572674112203622 
		15 8.5572674112203622 22 8.5572674112203622 65 8.5572674112203622 80 8.5572674112203622 
		100 8.5572674112203622;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.711328223519057 10 15.711328223519057 
		15 15.711328223519057 22 15.711328223519057 65 15.711328223519057 80 15.711328223519057 
		100 15.711328223519057;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 10.423754966968488 10 10.423754966968488 
		15 10.423754966968488 22 10.423754966968488 65 10.423754966968488 80 10.423754966968488 
		100 10.423754966968488;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.722848255843903 10 27.722848255843903 
		15 27.722848255843903 22 27.722848255843903 65 27.722848255843903 80 27.722848255843903 
		100 27.722848255843903;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 21.576484776388227 10 21.576484776388227 
		15 21.576484776388227 22 21.576484776388227 65 21.576484776388227 80 21.576484776388227 
		100 21.576484776388227;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.080064458283051 10 27.080064458283051 
		15 27.080064458283051 22 27.080064458283051 65 27.080064458283051 80 27.080064458283051 
		100 27.080064458283051;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.911632519594587 10 27.911632519594587 
		15 27.911632519594587 22 27.911632519594587 65 27.911632519594587 80 27.911632519594587 
		100 27.911632519594587;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 -0.042205865939915203 
		80 -0.042205865939915203 100 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 1.5280010774291513 
		65 1.5274182071417117 80 1.5274182071417117 100 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 -5.7466645871985635 15 -7.1398071886670582 
		22 -0.81478631083951847 65 -2.39777744167528 80 -2.39777744167528 100 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 5.8492004979597247 
		65 5.8492004979597247 80 5.8492004979597247 100 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -2.1867554394300113 10 -2.6938483993279716 
		15 -2.6938483993279716 22 -5.0267646085983282 27 -5.7215853052149139 32 -6.7751110330552722 
		37 -7.8495781994958538 43 -9.0598282455617802 50 -9.7262311783895967 55 -8.5045702366491387 
		60 -7.1339917312431149 80 -1.0434152589946328 100 -2.1867554394300113;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 1 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 1 9 9 9 3;
	setAttr -s 13 ".kix[8:12]"  0.99944686889648438 0.99091410636901855 
		0.98800963163375854 0.99790972471237183 1;
	setAttr -s 13 ".kiy[8:12]"  0.033256564289331436 0.13449612259864807 
		0.15439237654209137 0.064623802900314331 0;
	setAttr -s 13 ".kox[8:12]"  0.99944686889648438 0.99091410636901855 
		0.98800963163375854 0.99790972471237183 1;
	setAttr -s 13 ".koy[8:12]"  0.033256549388170242 0.13449612259864807 
		0.15439237654209137 0.064623802900314331 0;
createNode animCurveTA -n "animCurveTA213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -8.9112352175334859 10 -6.1650631280464516 
		15 -6.1650631280464516 22 -3.9282731249293348 27 -4.1120844727912411 32 -3.748169345541656 
		37 -3.3030134510705067 43 -3.0002396757703127 50 -2.9999821347263782 55 -3.4124320899239486 
		60 -3.9052502229973229 80 -6.4218049875985521 100 -8.9112352175334859;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 1 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 9 9 9 1 3;
	setAttr -s 13 ".kix[11:12]"  0.99558115005493164 1;
	setAttr -s 13 ".kiy[11:12]"  -0.09390510618686676 0;
	setAttr -s 13 ".kox[11:12]"  0.99558115005493164 1;
	setAttr -s 13 ".koy[11:12]"  -0.09390510618686676 0;
createNode animCurveTA -n "animCurveTA214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 9.210517948428329 10 17.617739141398044 
		15 17.617739141398044 22 6.8789136522146448 27 -0.23606217545592376 32 6.1321445870908029 
		37 1.2683052086461188 43 8.0615823798109627 50 3.7351584353293505 55 8.1593415554007187 
		60 8.2665836410975775 80 8.5153763559754658 100 9.210517948428329;
	setAttr -s 13 ".kit[0:12]"  3 9 9 1 9 9 9 
		9 1 9 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 9 9 1 9 9 9 
		9 1 9 9 9 3;
	setAttr -s 13 ".kix[3:12]"  0.79910635948181152 0.99923646450042725 
		0.99691212177276611 0.99580907821655273 0.99510031938552856 0.99978893995285034 
		0.97298794984817505 0.99997222423553467 0.99992364645004272 1;
	setAttr -s 13 ".kiy[3:12]"  -0.60118973255157471 -0.039070881903171539 
		0.078525267541408539 0.091456130146980286 0.098870210349559784 0.020543195307254791 
		0.23085586726665497 0.007456568069756031 0.012355128303170204 0;
	setAttr -s 13 ".kox[3:12]"  0.79910635948181152 0.99923646450042725 
		0.99691212177276611 0.99580907821655273 0.99510031938552856 0.99978893995285034 
		0.97298794984817505 0.99997222423553467 0.99992364645004272 1;
	setAttr -s 13 ".koy[3:12]"  -0.60118967294692993 -0.039070881903171539 
		0.078525267541408539 0.091456130146980286 0.098870210349559784 0.020543195307254791 
		0.23085586726665497 0.007456568069756031 0.012355128303170204 0;
createNode animCurveTA -n "animCurveTA215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 33.429092416277157 10 33.429092416277157 
		15 33.429092416277157 22 33.429092416277157 65 33.429092416277157 80 33.429092416277157 
		100 33.429092416277157;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.2533422302317216 10 8.2533422302317216 
		15 8.2533422302317216 22 8.2533422302317216 65 8.2533422302317216 80 8.2533422302317216 
		100 8.2533422302317216;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 23.263402056531085 10 23.263402056531085 
		15 23.263402056531085 22 23.263402056531085 65 23.263402056531085 80 23.263402056531085 
		100 23.263402056531085;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 20.166277752815617 10 20.166277752815617 
		15 20.166277752815617 22 20.166277752815617 65 20.166277752815617 80 20.166277752815617 
		100 20.166277752815617;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 15 0 22 0 65 0 80 0 100 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 17.254116939558369 10 17.254116939558369 
		15 17.254116939558369 22 17.254116939558369 65 17.254116939558369 80 17.254116939558369 
		100 17.254116939558369;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
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
	setAttr ".o" 46;
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
connectAttr "npd_nis_idle0Source.st" "clipLibrary1.st[0]";
connectAttr "npd_nis_idle0Source.du" "clipLibrary1.du[0]";
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
// End of npd_nis_idle0.ma
