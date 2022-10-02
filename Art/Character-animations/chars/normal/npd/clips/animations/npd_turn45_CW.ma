//Maya ASCII 4.0 scene
//Name: npd_turn45_CW.ma
//Last modified: Thu, May 29, 2003 12:28:13 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "npd_turn45_CWSource";
	setAttr ".ihi" 0;
	setAttr ".du" 20;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL329";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL330";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.004 20 -0.028000000000000004;
createNode animCurveTL -n "animCurveTL332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 4 0 4.005 0 6 0 6.005 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0;
	setAttr -s 19 ".kit[3:18]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 1;
	setAttr -s 19 ".kot[3:18]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 5;
	setAttr -s 19 ".kix[18]"  1;
	setAttr -s 19 ".kiy[18]"  0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0.027000000000000003;
createNode animCurveTA -n "animCurveTA905";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 4 0 4.005 0 6 0 6.005 0 7 -1.0847246326011926 
		8 -3.994954322242708 9 -8.2147727566814535 10 -13.228263623674332 11 -18.519510610978251 
		12 -23.572597406350123 13 -27.871607697546846 14 -32.052960455419971 15 -36.600801741230605 
		16 -40.770805878349989 17 -43.81864719014937 18 -45 19 -45 20 -45;
	setAttr -s 19 ".kit[0:18]"  3 9 9 3 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 1;
	setAttr -s 19 ".kot[0:18]"  3 9 9 3 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 5;
	setAttr -s 19 ".kix[18]"  1;
	setAttr -s 19 ".kiy[18]"  0;
createNode animCurveTU -n "animCurveTU65";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU66";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU67";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU68";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU69";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 5 1 15 1 20 1;
	setAttr -s 4 ".kit[0:3]"  9 3 3 1;
	setAttr -s 4 ".kot[0:3]"  9 3 3 5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTU -n "animCurveTU70";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 5 1 15 1 20 1;
	setAttr -s 4 ".kit[0:3]"  9 3 3 1;
	setAttr -s 4 ".kot[0:3]"  9 3 3 5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTU -n "animCurveTU71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 15 0 20 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 1;
	setAttr -s 4 ".kot[0:3]"  3 9 9 5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTU -n "animCurveTU72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 15 0 20 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 1;
	setAttr -s 4 ".kot[0:3]"  3 9 9 5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA906";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA907";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA908";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL334";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL335";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL336";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL337";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.22948570846143723 5 -0.22948570846143723 
		9 -0.19263478657846972 13 -0.19263478657846972 17 -0.19263478657846972 20 
		-0.19263478657846972;
	setAttr -s 6 ".kit[1:5]"  9 3 3 3 1;
	setAttr -s 6 ".kot[1:5]"  9 3 3 3 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTL -n "animCurveTL338";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.13964711708164665 5 0.13964711708164665 
		9 0.14453294020787613 13 0.14453294020787613 17 0.14453294020787613 20 0.14453294020787613;
	setAttr -s 6 ".kit[1:5]"  9 3 3 3 1;
	setAttr -s 6 ".kot[1:5]"  9 3 3 3 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTL -n "animCurveTL339";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.064904406754016042 5 -0.064904406754016042 
		9 -0.079654299887934363 13 -0.079654299887934363 17 -0.079654299887934363 
		20 -0.079654299887934363;
	setAttr -s 6 ".kit[1:5]"  9 3 3 3 1;
	setAttr -s 6 ".kot[1:5]"  9 3 3 3 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA909";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0.097283509020556325 
		13 0.097283509020556325 17 0.097283509020556325 20 0.097283509020556325;
	setAttr -s 6 ".kit[1:5]"  9 3 3 3 1;
	setAttr -s 6 ".kot[1:5]"  9 3 3 3 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA910";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -12.031576538165268 5 -12.031576538165268 
		9 -50.599277909350775 13 -50.599277909350775 17 -50.599277909350775 20 -50.599277909350775;
	setAttr -s 6 ".kit[1:5]"  9 3 3 3 1;
	setAttr -s 6 ".kot[1:5]"  9 3 3 3 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA911";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0.59766188962546818 13 
		0.59766188962546818 17 0.59766188962546818 20 0.59766188962546818;
	setAttr -s 6 ".kit[1:5]"  9 3 3 3 1;
	setAttr -s 6 ".kot[1:5]"  9 3 3 3 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTL -n "animCurveTL340";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.10825868069997467 5 0.10825868069997467 
		9 0.10825868069997467 13 0.16228438085086222 17 0.14245661880627133 20 0.14090762947711713;
	setAttr -s 6 ".kit[0:5]"  3 9 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 9 3 1 1 5;
	setAttr -s 6 ".kix[3:5]"  0.026950595900416374 0.30140122771263123 
		1;
	setAttr -s 6 ".kiy[3:5]"  -0.99963676929473877 -0.95349740982055664 
		0;
	setAttr -s 6 ".kox[3:5]"  0.026950454339385033 0.30140116810798645 
		0;
	setAttr -s 6 ".koy[3:5]"  -0.99963676929473877 -0.95349740982055664 
		0;
createNode animCurveTL -n "animCurveTL341";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.13791212285411131 5 0.13791212285411131 
		9 0.13791212285411131 13 0.2057375857622244 17 0.17843144369511638 20 0.13511441832746246;
	setAttr -s 6 ".kit[1:5]"  9 3 9 1 1;
	setAttr -s 6 ".kot[1:5]"  9 3 9 1 5;
	setAttr -s 6 ".kix[4:5]"  0.017968200147151947 1;
	setAttr -s 6 ".kiy[4:5]"  -0.99983847141265869 0;
	setAttr -s 6 ".kox[4:5]"  0.01796872541308403 0;
	setAttr -s 6 ".koy[4:5]"  -0.99983847141265869 0;
createNode animCurveTL -n "animCurveTL342";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.10454507572235824 5 -0.10454507572235824 
		9 -0.10454507572235824 13 -0.024644046684705823 17 0.097353457667737162 20 
		0.14818009735759105;
	setAttr -s 6 ".kit[0:5]"  3 9 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 9 3 1 1 5;
	setAttr -s 6 ".kix[3:5]"  0.015928095206618309 0.011445129290223122 
		1;
	setAttr -s 6 ".kiy[3:5]"  0.99987316131591797 0.99993449449539185 
		0;
	setAttr -s 6 ".kox[3:5]"  0.015928095206618309 0.011445236392319202 
		0;
	setAttr -s 6 ".koy[3:5]"  0.99987316131591797 0.99993449449539185 
		0;
createNode animCurveTA -n "animCurveTA912";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 15.455066653965995 13 
		16.310568499955281 17 3.7966556002877669 20 1.9860655672794454;
	setAttr -s 6 ".kit[2:5]"  9 9 1 1;
	setAttr -s 6 ".kot[2:5]"  9 9 1 5;
	setAttr -s 6 ".kix[4:5]"  0.76534444093704224 1;
	setAttr -s 6 ".kiy[4:5]"  -0.64362090826034546 0;
	setAttr -s 6 ".kox[4:5]"  0.76534444093704224 0;
	setAttr -s 6 ".koy[4:5]"  -0.64362090826034546 0;
createNode animCurveTA -n "animCurveTA913";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 18.635117457566011 5 18.635117457566011 
		9 25.948901905116411 13 8.1311352826598498 17 -14.064219890064496 20 -21.399434147528503;
	setAttr -s 6 ".kit[0:5]"  3 3 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  3 3 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA914";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0.72672285708801398 13 
		6.4807146401485536 17 3.1577245292226781 20 1.2437319784421585;
	setAttr -s 6 ".kit[2:5]"  1 9 9 1;
	setAttr -s 6 ".kot[2:5]"  1 9 9 5;
	setAttr -s 6 ".kix[2:5]"  0.95875614881515503 0.98757755756378174 
		0.93110966682434082 1;
	setAttr -s 6 ".kiy[2:5]"  0.28422996401786804 0.15713216364383698 
		-0.36473929882049561 0;
	setAttr -s 6 ".kox[2:5]"  0.95875614881515503 0.98757755756378174 
		0.93110966682434082 0;
	setAttr -s 6 ".koy[2:5]"  0.28422999382019043 0.15713216364383698 
		-0.36473929882049561 0;
createNode animCurveTA -n "animCurveTA915";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA916";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA917";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA918";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA919";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA920";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 9 0 13 0 17 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 1 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 9 0 13 0 17 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 1 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 9 1 13 1 17 1 20 1;
	setAttr -s 5 ".kit[0:4]"  3 9 9 1 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 9 0 13 0 17 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 1 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 9 0 13 0 17 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 1 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 9 1 13 1 17 1 20 1;
	setAttr -s 5 ".kit[0:4]"  3 9 9 1 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
createNode animCurveTL -n "animCurveTL349";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.0052529700667724097 5 0.065714814232482266 
		9 0.016514866345593595 13 -0.029370112518350932 17 -0.039610184263062641 
		20 -0.039610184263062641;
	setAttr -s 6 ".kit[0:5]"  3 9 1 1 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 1 1 9 5;
	setAttr -s 6 ".kix[2:5]"  0.018933879211544991 0.063364140689373016 
		0.22216831147670746 1;
	setAttr -s 6 ".kiy[2:5]"  -0.99982070922851563 -0.99799048900604248 
		-0.97500830888748169 0;
	setAttr -s 6 ".kox[2:5]"  0.018934018909931183 0.063363596796989441 
		0.22216831147670746 0;
	setAttr -s 6 ".koy[2:5]"  -0.99982070922851563 -0.99799048900604248 
		-0.97500830888748169 0;
createNode animCurveTL -n "animCurveTL350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.9912550528809112 5 0.97769760992763544 
		9 0.97393581247918937 13 0.97674487407846344 17 0.98661252100429753 20 0.991;
	setAttr -s 6 ".kit[0:5]"  3 9 9 1 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 1 9 5;
	setAttr -s 6 ".kix[3:5]"  0.17808154225349426 0.16153417527675629 
		0.22222241759300232;
	setAttr -s 6 ".kiy[3:5]"  0.98401576280593872 0.98686712980270386 
		0.97499597072601318;
	setAttr -s 6 ".kox[3:5]"  0.17808298766613007 0.16153417527675629 
		0;
	setAttr -s 6 ".koy[3:5]"  0.98401552438735962 0.98686712980270386 
		0;
createNode animCurveTL -n "animCurveTL351";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0.0025722197456121711 9 0.018917037601998175 
		13 0.032480948574189539 17 0.037355885708579756 20 0.037901904444048833;
	setAttr -s 6 ".kit[0:5]"  3 1 1 1 9 1;
	setAttr -s 6 ".kot[0:5]"  3 1 1 1 9 5;
	setAttr -s 6 ".kix[1:5]"  0.24958877265453339 0.07149013876914978 
		0.151372030377388 0.39535981416702271 0.87768739461898804;
	setAttr -s 6 ".kiy[1:5]"  0.96835184097290039 0.99744129180908203 
		0.98847693204879761 0.91852635145187378 0.47923365235328674;
	setAttr -s 6 ".kox[1:5]"  0.24958889186382294 0.071490302681922913 
		0.15137238800525665 0.39535981416702271 0;
	setAttr -s 6 ".koy[1:5]"  0.96835184097290039 0.99744129180908203 
		0.98847681283950806 0.91852635145187378 0;
createNode animCurveTA -n "animCurveTA921";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 -0.45789806388970972 9 -0.63452367371929341 
		13 -0.34660114724159852 17 -0.1904811728479254 20 -0.16267090200953793;
	setAttr -s 6 ".kit[0:5]"  3 1 9 1 9 1;
	setAttr -s 6 ".kot[0:5]"  3 1 9 1 9 5;
	setAttr -s 6 ".kix[1:5]"  0.99841350317001343 0.99997347593307495 
		0.99948453903198242 0.99990534782409668 0.99998819828033447;
	setAttr -s 6 ".kiy[1:5]"  -0.056307490915060043 0.007284172810614109 
		0.032104693353176117 0.013756648637354374 0.0048537496477365494;
	setAttr -s 6 ".kox[1:5]"  0.99841350317001343 0.99997347593307495 
		0.99948453903198242 0.99990534782409668 0;
	setAttr -s 6 ".koy[1:5]"  -0.056307487189769745 0.007284172810614109 
		0.032104738056659698 0.013756648637354374 0;
createNode animCurveTA -n "animCurveTA922";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 8.8160682022097259 9 -9.0016841746005021 
		13 -30.330792905929506 17 -42.315965555474392 20 -45;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 1 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 1 5;
	setAttr -s 6 ".kix[4:5]"  0.75612980127334595 1;
	setAttr -s 6 ".kiy[4:5]"  -0.65442168712615967 0;
	setAttr -s 6 ".kox[4:5]"  0.75612980127334595 0;
	setAttr -s 6 ".koy[4:5]"  -0.65442162752151489 0;
createNode animCurveTA -n "animCurveTA923";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 1.2956360193097458 9 1.4679065213487994 
		13 1.0541097398874615 17 0.27966383070960738 20 0.096463519366417824;
	setAttr -s 6 ".kit[0:5]"  3 9 9 1 9 1;
	setAttr -s 6 ".kot[0:5]"  3 9 9 1 9 5;
	setAttr -s 6 ".kix[3:5]"  0.99579471349716187 0.9974442720413208 
		0.9994891881942749;
	setAttr -s 6 ".kiy[3:5]"  -0.091612733900547028 -0.07144869863986969 
		-0.031958144158124924;
	setAttr -s 6 ".kox[3:5]"  0.99579471349716187 0.9974442720413208 
		0;
	setAttr -s 6 ".koy[3:5]"  -0.091612726449966431 -0.07144869863986969 
		0;
createNode animCurveTA -n "animCurveTA924";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA925";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA926";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA927";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA928";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA929";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA930";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA931";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA932";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA933";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA934";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA935";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA936";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA937";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA938";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA939";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA940";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA941";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA942";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA943";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA944";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA945";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA946";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA947";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA948";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA949";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL352";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.22164053326398034 20 -0.5198069948790518;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL353";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.9417076481617882 20 -0.946;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL354";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.038362195289875119 20 0.36439499068905612;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA950";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 6.7230119492284173 20 8.1910546202722827;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA951";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 19.83951100863187 20 16.680769289981995;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA952";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 76.90743997913691 20 64.609749241846473;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL355";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.20623790699604494 20 0.43524234076486068;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL356";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.94615818397708606 20 -0.9417076481617882;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL357";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.023808763748733922 20 0.27773886459742925;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA953";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.1910546202722827 20 6.7230119492284173;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA954";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -16.680769289981995 20 -19.83951100863187;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA955";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.609749241846473 20 -76.90743997913691;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL358";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.8448236677023373 20 -0.61083301393139333;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL359";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.5117481219250299 20 1.229336924066629;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL360";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.097994651149805143 20 0.14314299916678522;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA956";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 5.4739599453216465 20 16.226511010665405;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA957";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.5874521608419823 20 8.513966085499284;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA958";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 74.754744621954103 20 68.213989601412422;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL361";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.61083301393139333 20 0.8448236677023373;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL362";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.4644416293758407 20 1.272818195449458;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL363";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.14314299916678522 20 -0.097994651149805143;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA959";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 16.226511010665412 20 5.4739599453216474;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA960";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -8.5139660854992858 20 -8.5874521608419823;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA961";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -68.213989601412422 20 -74.754744621954103;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL364";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0.10167917362943303;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL365";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 -0.40762644910266188;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL366";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1 20 -0.93129112588482243;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL367";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.10167917362943303 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL368";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.40762644910266188 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "animCurveTL369";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.93129112588482243 20 -1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA962";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 36.027350717051704 5 19.949442813396637 
		10 13.91293804023268 15 20.216161997439727 20 36.027350717051704;
createNode animCurveTA -n "animCurveTA963";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -73.527281583930133 5 -66.059539934277055 
		10 -61.588274346980775 15 -65.025835416626407 20 -73.527281583930133;
	setAttr -s 5 ".kit[1:4]"  1 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  0.67468678951263428 0.99853849411010742 
		0.84795063734054565 0.74689716100692749;
	setAttr -s 5 ".kiy[1:4]"  0.73810416460037231 0.054045535624027252 
		-0.53007513284683228 -0.66493958234786987;
	setAttr -s 5 ".kox[1:4]"  0.67468678951263428 0.99853849411010742 
		0.84795063734054565 0.74689716100692749;
	setAttr -s 5 ".koy[1:4]"  0.73810416460037231 0.054045535624027252 
		-0.53007513284683228 -0.66493958234786987;
createNode animCurveTA -n "animCurveTA964";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -31.83712907398235 5 -16.790885450170791 
		10 -10.006213348804106 15 -18.883389535827032 20 -31.83712907398235;
createNode animCurveTA -n "animCurveTA965";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 39.946135100597566 5 22.037039561243681 
		10 19.273327480079161 15 24.636205707220718 20 39.946135100597566;
createNode animCurveTA -n "animCurveTA966";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -73.871183237727394 5 -67.302145459108218 
		10 -63.144815037296773 15 -68.378428816250846 20 -73.871183237727394;
	setAttr -s 5 ".kit[1:4]"  1 9 1 9;
	setAttr -s 5 ".kot[1:4]"  1 9 1 9;
	setAttr -s 5 ".kix[1:4]"  0.74116235971450806 0.99841588735580444 
		0.64798611402511597 0.86683142185211182;
	setAttr -s 5 ".kiy[1:4]"  0.67132580280303955 -0.056264791637659073 
		-0.76165217161178589 -0.4986012876033783;
	setAttr -s 5 ".kox[1:4]"  0.74116235971450806 0.99841588735580444 
		0.64798617362976074 0.86683142185211182;
	setAttr -s 5 ".koy[1:4]"  0.67132586240768433 -0.056264791637659073 
		-0.76165199279785156 -0.4986012876033783;
createNode animCurveTA -n "animCurveTA967";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -36.082368514675721 5 -21.558470539973971 
		10 -17.43155057459845 15 -21.123428541674834 20 -36.082368514675721;
	setAttr -s 5 ".kit[1:4]"  1 9 1 9;
	setAttr -s 5 ".kot[1:4]"  1 9 1 9;
	setAttr -s 5 ".kix[1:4]"  0.65958750247955322 0.99974066019058228 
		0.72005331516265869 0.53807699680328369;
	setAttr -s 5 ".kiy[1:4]"  0.75162780284881592 0.022772839292883873 
		-0.69391876459121704 -0.84289568662643433;
	setAttr -s 5 ".kox[1:4]"  0.65958750247955322 0.99974066019058228 
		0.72005325555801392 0.53807699680328369;
	setAttr -s 5 ".koy[1:4]"  0.75162780284881592 0.022772839292883873 
		-0.69391876459121704 -0.84289568662643433;
createNode animCurveTA -n "animCurveTA968";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.975580453407172 5 36.359771961425444 
		10 33.363749485314663 15 25.802359460742274 20 13.975580453407172;
createNode animCurveTA -n "animCurveTA969";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.71272085435489 5 13.116972786795994 
		10 43.140672272072486 15 23.635560538852598 20 13.71272085435489;
createNode animCurveTA -n "animCurveTA970";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 18.95911507313274 5 6.3876354565306093 
		10 6.3876354565306093 15 6.3876354565306093 20 18.95911507313274;
createNode animCurveTA -n "animCurveTA971";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.90812622620329453 5 2.0258412992430621 
		10 2.0258412992430621 15 2.0258412992430621 20 -0.90812622620329453;
createNode animCurveTA -n "animCurveTA972";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.287693868398831 5 -6.6477254433837762 
		10 -6.6477254433837762 15 -6.6477254433837762 20 8.287693868398831;
createNode animCurveTA -n "animCurveTA973";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 24.066389889144563 5 9.3291488420621747 
		10 9.3291488420621747 15 9.3291488420621747 20 18.95911507313274;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[4]"  0.70412641763687134;
	setAttr -s 5 ".kiy[4]"  0.71007460355758667;
createNode animCurveTA -n "animCurveTA974";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 11.893987242563869 5 -6.6514077340403857 
		10 -6.6514077340403857 15 -6.6514077340403857 20 -0.90812622620329453;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[4]"  0.85694992542266846;
	setAttr -s 5 ".kiy[4]"  0.51539963483810425;
createNode animCurveTA -n "animCurveTA975";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 6.41394918609027 5 -0.7727548353978072 
		10 -0.7727548353978072 15 -0.7727548353978072 20 8.287693868398831;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[4]"  0.72543114423751831;
	setAttr -s 5 ".kiy[4]"  0.68829476833343506;
createNode animCurveTA -n "animCurveTA976";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.423754966968488 5 8.2533422302317216 
		10 8.2533422302317216 15 8.2533422302317216 20 8.2533422302317216;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTA -n "animCurveTA977";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.7228482558439 5 23.263402056531085 
		10 23.263402056531085 15 23.263402056531085 20 23.263402056531085;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTA -n "animCurveTA978";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 21.576484776388224 5 20.166277752815617 
		10 20.166277752815617 15 20.166277752815617 20 20.166277752815617;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTA -n "animCurveTA979";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTA -n "animCurveTA980";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTA -n "animCurveTA981";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.080064458283051 5 33.429092416277157 
		10 33.429092416277157 15 33.429092416277157 20 33.429092416277157;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTA -n "animCurveTA982";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA983";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA984";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA985";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA986";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA987";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 20 13.994403295754109;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA988";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA989";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA990";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 20 13.994403295754109;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA991";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTA -n "animCurveTA992";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTA -n "animCurveTA993";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.911632519594587 5 17.254116939558369 
		10 17.254116939558369 15 17.254116939558369 20 17.254116939558369;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTA -n "animCurveTA994";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTA -n "animCurveTA995";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTA -n "animCurveTA996";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTA -n "animCurveTA997";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 4.7616230637930279 10 -5.5501506738970123 
		15 -0.9036778685205652 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTA -n "animCurveTA998";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0.75132303305912507 10 4.4061983740954869 
		15 4.4109208760485776 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 1 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 1 5;
	setAttr -s 5 ".kix[3:4]"  0.9987378716468811 1;
	setAttr -s 5 ".kiy[3:4]"  -0.050225619226694107 0;
	setAttr -s 5 ".kox[3:4]"  0.9987378716468811 0;
	setAttr -s 5 ".koy[3:4]"  -0.050225615501403809 0;
createNode animCurveTA -n "animCurveTA999";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0.17447035004225536 10 0.7186054318041265 
		15 3.7048543692817062 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  3 9 1 1 5;
	setAttr -s 5 ".kix[2:4]"  0.98908919095993042 0.99610865116119385 
		1;
	setAttr -s 5 ".kiy[2:4]"  0.14731790125370026 0.088133670389652252 
		0;
	setAttr -s 5 ".kox[2:4]"  0.98908919095993042 0.99610865116119385 
		0;
	setAttr -s 5 ".koy[2:4]"  0.14731788635253906 0.088133968412876129 
		0;
createNode animCurveTA -n "animCurveTA1000";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 -6.8318802729961208 
		15 -5.5667171846955004 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  0.86392480134963989;
	setAttr -s 5 ".kiy[4]"  0.50362080335617065;
createNode animCurveTA -n "animCurveTA1001";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTA -n "animCurveTA1002";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTA -n "animCurveTA1003";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.9367554394300086 5 31.402804771815635 
		10 9.8851209532562621 15 5.0033349922112906 20 4.9367554394300086;
	setAttr -s 5 ".kit[0:4]"  3 9 1 1 1;
	setAttr -s 5 ".kot[0:4]"  3 9 1 1 5;
	setAttr -s 5 ".kix[2:4]"  0.70743381977081299 0.97446519136428833 
		1;
	setAttr -s 5 ".kiy[2:4]"  -0.7067795991897583 -0.22453851997852325 
		0;
	setAttr -s 5 ".kox[2:4]"  0.70743393898010254 0.97446519136428833 
		0;
	setAttr -s 5 ".koy[2:4]"  -0.70677947998046875 -0.22453851997852325 
		0;
createNode animCurveTA -n "animCurveTA1004";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -8.6986303327609935 5 38.452646213827457 
		10 17.061119366514788 15 9.8367601299935803 20 8.6986303327609935;
	setAttr -s 5 ".kit[0:4]"  3 9 1 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 1 9 5;
	setAttr -s 5 ".kix[2:4]"  0.509022057056427 0.91603654623031616 
		1;
	setAttr -s 5 ".kiy[2:4]"  -0.86075347661972046 -0.40109476447105408 
		0;
	setAttr -s 5 ".kox[2:4]"  0.509022057056427 0.91603654623031616 
		0;
	setAttr -s 5 ".koy[2:4]"  -0.86075347661972046 -0.40109476447105408 
		0;
createNode animCurveTA -n "animCurveTA1005";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.455917002855635 5 22.725179413208338 
		10 14.846437945232971 15 9.7315674949867752 20 17.455917002855635;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTA -n "animCurveTA1006";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 1.8903601258661931 10 1.8903601258661931 
		15 1.8903601258661931 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  0.98096400499343872;
	setAttr -s 5 ".kiy[4]"  -0.19418969750404358;
createNode animCurveTA -n "animCurveTA1007";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 -2.5597289571479034 10 -2.5597289571479034 
		15 -2.5597289571479034 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  0.9659004807472229;
	setAttr -s 5 ".kiy[4]"  0.25891363620758057;
createNode animCurveTA -n "animCurveTA1008";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 2.016811087403604 10 2.016811087403604 
		15 2.016811087403604 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  0.97841674089431763;
	setAttr -s 5 ".kiy[4]"  -0.2066415399312973;
createNode animCurveTA -n "animCurveTA1009";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTA -n "animCurveTA1010";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTA -n "animCurveTA1011";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 33.429092416277157 5 27.080064458283051 
		10 27.080064458283051 15 27.080064458283051 20 27.080064458283051;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTA -n "animCurveTA1012";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.2533422302317216 5 10.423754966968488 
		10 10.423754966968488 15 10.423754966968488 20 10.423754966968488;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTA -n "animCurveTA1013";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 23.263402056531085 5 27.722848255843903 
		10 27.722848255843903 15 27.722848255843903 20 27.7228482558439;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTA -n "animCurveTA1014";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 20.166277752815617 5 21.576484776388227 
		10 21.576484776388227 15 21.576484776388227 20 21.576484776388224;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTA -n "animCurveTA1015";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTA -n "animCurveTA1016";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 10 0 15 0 20 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTA -n "animCurveTA1017";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.254116939558369 5 27.911632519594587 
		10 27.911632519594587 15 27.911632519594587 20 27.911632519594587;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 5;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
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
	setAttr ".ihi" 0;
	setAttr -s 20 ".lnk";
select -ne :time1;
	setAttr ".o" 20;
select -ne :renderPartition;
	setAttr -s 20 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 20 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :lightList1;
select -ne :defaultTextureList1;
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
connectAttr "npd_turn45_CWSource.st" "clipLibrary2.st[0]";
connectAttr "npd_turn45_CWSource.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL329.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL330.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary2.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL332.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary2.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA905.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU65.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU66.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU67.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU68.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU69.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU70.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU71.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU72.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA906.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA907.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA908.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL334.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL335.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL336.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL337.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL338.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL339.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA909.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA910.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA911.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL340.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL341.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL342.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA912.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA913.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA914.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA915.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA916.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA917.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA918.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA919.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA920.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTL343.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTL344.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTL345.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTL346.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTL347.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTL348.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL349.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL350.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL351.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTA921.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTA922.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTA923.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTA924.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTA925.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTA926.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA927.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA928.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA929.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA930.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA931.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA932.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA933.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA934.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA935.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA936.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA937.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA938.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA939.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA940.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA941.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA942.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA943.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA944.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA945.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA946.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA947.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA948.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA949.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTL352.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTL353.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTL354.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA950.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA951.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA952.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL355.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL356.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL357.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA953.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA954.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA955.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL358.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL359.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL360.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA956.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA957.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA958.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL361.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL362.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL363.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA959.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA960.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA961.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL364.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL365.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL366.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTL367.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTL368.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTL369.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTA962.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTA963.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTA964.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTA965.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTA966.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTA967.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA968.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA969.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA970.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA971.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA972.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA973.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA974.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA975.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA976.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA977.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA978.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA979.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA980.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA981.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA982.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA983.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA984.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA985.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA986.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA987.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA988.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA989.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA990.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA991.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA992.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA993.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA994.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA995.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA996.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA997.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA998.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA999.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA1000.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA1001.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA1002.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA1003.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA1004.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA1005.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA1006.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA1007.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA1008.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA1009.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA1010.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA1011.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA1012.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA1013.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA1014.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA1015.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA1016.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA1017.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[40].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[41].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[42].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[43].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[44].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[45].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[46].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[47].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[49].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[50].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[51].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[52].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[53].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[54].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[55].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[56].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[57].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[58].llnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of npd_turn45_CW.ma
