//Maya ASCII 4.0 scene
//Name: hom_jump_dash_land.ma
//Last modified: Thu, Oct 10, 2002 10:46:00 AM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_jump_dash_landSource";
	setAttr ".ihi" 0;
	setAttr ".du" 21;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL516";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTL -n "animCurveTL517";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0.0049724331358399713 1 0.0080627394645407437 
		2 0.013809128157703677 3 0.020439645043585943 4 0.02618233595044472 5 0.029265246706537171 
		6 0.029840331896820924 7 0.029411431168815214 8 0.028234417944619623 9 0.026565165646333759 
		10 0.024659547696057223 11 0.022773437515889602 12 0.021162708527930493 13 
		0.020083234154279497 14 0.021418053460856928 15 0.024407920001473477 16 0.025345278930064309 
		17 0.020522575400564586 18 0.0076253039865692811 19 -0.010927231311039174 
		20 -0.031741871197394411 21 -0.051425456377630012;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 13.351318877310129 1 13.395882789509324 
		2 13.4225755072673 3 13.436274619286069 4 13.441857714267636 5 13.444202380914007 
		6 13.444432218310272 7 13.44111621974454 8 13.435300102327735 9 13.428029583170781 
		10 13.420350379384599 11 13.413308208080116 12 13.40794878636826 13 13.405317831359953 
		14 13.407493703546125 15 13.414360536273779 16 13.42367270593792 17 13.433184588933559 
		18 13.443203808501863 19 13.453723850364121 20 13.462028076613299 21 13.465399849342363;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0;
createNode animCurveTU -n "animCurveTU105";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTU -n "animCurveTU106";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTU -n "animCurveTU107";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTU -n "animCurveTU108";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTU -n "animCurveTU109";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTU -n "animCurveTU110";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTU -n "animCurveTU111";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 1;
createNode animCurveTU -n "animCurveTU112";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 1;
createNode animCurveTA -n "animCurveTA1459";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1460";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1461";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTL -n "animCurveTL521";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTL -n "animCurveTL522";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTL -n "animCurveTL523";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTL -n "animCurveTL524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.26454016861507795 5 -0.26454016861507795 
		13 -0.26454016861507795 17 -0.26454016861507795 21 -0.26454016861507795;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL525";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.1347866815895771 5 0.1347866815895771 
		13 0.1347866815895771 17 0.1347866815895771 21 0.1347866815895771;
	setAttr -s 5 ".kit[2:4]"  9 9 3;
	setAttr -s 5 ".kot[2:4]"  9 9 3;
createNode animCurveTL -n "animCurveTL526";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 20.008544597490086 5 20.008544597490086 
		13 20.008544597490086 17 20.008544597490086 21 20.008544597490086;
	setAttr -s 5 ".kit[2:4]"  9 9 3;
	setAttr -s 5 ".kot[2:4]"  9 9 3;
createNode animCurveTA -n "animCurveTA1462";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.046970470069375145 5 0.046970470069375145 
		13 0.046970470069375145 17 0.046970470069375145 21 0.046970470069375145;
	setAttr -s 5 ".kit[2:4]"  9 9 3;
	setAttr -s 5 ".kot[2:4]"  9 9 3;
createNode animCurveTA -n "animCurveTA1463";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -25.808720031699725 5 -25.808720031699725 
		13 -25.808720031699725 17 -25.808720031699725 21 -25.808720031699725;
	setAttr -s 5 ".kit[2:4]"  9 9 3;
	setAttr -s 5 ".kot[2:4]"  9 9 3;
createNode animCurveTA -n "animCurveTA1464";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -5.3565685210931813 5 -5.3565685210931813 
		13 -5.3565685210931813 17 -5.3565685210931813 21 -5.3565685210931813;
	setAttr -s 5 ".kit[3:4]"  9 3;
	setAttr -s 5 ".kot[3:4]"  9 3;
createNode animCurveTL -n "animCurveTL527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.21594587158542247 5 0.21594587158542247 
		8 0.21594587158542247 13 0.21594587158542247 17 0.21594587158542247 21 0.21594587158542247;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTL -n "animCurveTL528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.13367084710518631 5 0.25139237232154021 
		8 0.2910286520163699 13 0.206359932870221 17 0.1380615615975922 21 0.1380615615975922;
	setAttr -s 6 ".kit[4:5]"  3 3;
	setAttr -s 6 ".kot[4:5]"  3 3;
createNode animCurveTL -n "animCurveTL529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 19.3005867044103 5 19.312000000000001 
		8 19.402549458173524 13 19.834352346751761 17 20.024679103821899 21 20.024679103821899;
	setAttr -s 6 ".kit[4:5]"  3 3;
	setAttr -s 6 ".kot[4:5]"  3 3;
createNode animCurveTA -n "animCurveTA1465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 11.335349074913273 5 38.47667662004352 
		8 64.612503947985857 13 1.4496796256192399 17 0 21 0;
	setAttr -s 6 ".kit[3:5]"  1 3 3;
	setAttr -s 6 ".kot[3:5]"  1 3 3;
	setAttr -s 6 ".kix[3:5]"  0.62508368492126465 1 1;
	setAttr -s 6 ".kiy[3:5]"  -0.78055775165557861 0 0;
	setAttr -s 6 ".kox[3:5]"  0.62508362531661987 1 1;
	setAttr -s 6 ".koy[3:5]"  -0.78055775165557861 0 0;
createNode animCurveTA -n "animCurveTA1466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 8 0 13 0 17 0 21 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 8 0 13 0 17 0 21 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1468";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1469";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1470";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1471";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1472";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1473";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTL -n "animCurveTL530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 13 0 17 0 21 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 13 0 17 0 21 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 5 1 13 1 17 1 21 1;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 13 0 17 0 21 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL534";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 13 0 17 0 21 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL535";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 5 1 13 1 17 1 21 1;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL536";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.0073943201934462775 5 0.016663748806451904 
		13 0.029865029815350771 17 0.03051835782609956 21 -0.076472881617957691;
createNode animCurveTL -n "animCurveTL537";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.53023224680672054 5 0.46344068104647074 
		13 0.83690528666426089 17 0.87019400927827184 21 0.93105416142265018;
createNode animCurveTL -n "animCurveTL538";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 19.854249235059402 5 19.99237283523129 
		13 19.934549069254782 17 19.975988686967735 21 20.023894801352863;
	setAttr -s 5 ".kit[1:4]"  1 9 1 3;
	setAttr -s 5 ".kot[1:4]"  1 9 1 3;
	setAttr -s 5 ".kix[1:4]"  0.094901703298091888 0.23717255890369415 
		0.02528250589966774 1;
	setAttr -s 5 ".kiy[1:4]"  0.99548667669296265 -0.97146755456924438 
		0.99968034029006958 0;
	setAttr -s 5 ".kox[1:4]"  0.094901204109191895 0.23717255890369415 
		0.025282323360443115 1;
	setAttr -s 5 ".koy[1:4]"  0.99548667669296265 -0.97146755456924438 
		0.99968034029006958 0;
createNode animCurveTA -n "animCurveTA1474";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.399441531283248 5 31.949755000064517 
		13 6.2086773277084095 17 4.2879578639203162 21 -0.62843630316474508;
createNode animCurveTA -n "animCurveTA1475";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 13 0 17 0 21 -5.8284402688137167;
createNode animCurveTA -n "animCurveTA1476";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 13 0 17 0 21 -1.295636019309746;
createNode animCurveTA -n "animCurveTA1477";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1478";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1479";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1480";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1481";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1482";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1483";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1484";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1485";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1486";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1487";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1488";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1489";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1490";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1491";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1492";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1493";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1494";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1495";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1496";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1497";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1498";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1499";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1500";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1501";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1502";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTL -n "animCurveTL539";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL540";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL541";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0.27773886459742925;
createNode animCurveTA -n "animCurveTA1503";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1504";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 28.652637602052774;
createNode animCurveTA -n "animCurveTA1505";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 64.676908227303443;
createNode animCurveTL -n "animCurveTL542";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0.5198069948790518;
createNode animCurveTL -n "animCurveTL543";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL544";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0.36439499068905612;
createNode animCurveTA -n "animCurveTA1506";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 7.7976222737965317;
createNode animCurveTA -n "animCurveTA1507";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 -30.409274105849079;
createNode animCurveTA -n "animCurveTA1508";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 -64.859940280210893;
createNode animCurveTL -n "animCurveTL545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.98679383832662004 5 -0.73344113549514722 
		13 -0.77747979061591921 17 -0.92351070311151673 21 -0.98071836797454492;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.83859801727317429 5 0.38085263198617902 
		13 1.4626157625181395 17 1.581797208787785 21 1.6432964864655397;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 33.547182777402121 5 33.562970327599039 
		13 32.925306979673536 17 32.87648787049546 21 32.7082432951917;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1509";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 28.225785794196455 5 36.544612146434964 
		13 -3.0287076910635311 17 -5.5743040511915494 21 5.4739599453216465;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1510";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 35.233046230154493 5 53.50949091569872 
		13 22.908592233274504 17 10.372651949258985 21 8.5874521608419823;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1511";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 64.547620931239493 5 52.717788796502937 
		13 42.498478212366322 17 59.905291881262031 21 74.754744621954103;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.97273719388999158 5 1.1373319137137661 
		13 0.90458947228580255 17 1.0114825562766701 21 0.76309120872911718;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL549";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.80903642577252888 5 0.58277196633494854 
		13 1.4156442759868575 17 1.513050295669379 21 1.6150490657878991;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL550";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 33.286963860010488 5 33.356322103228102 
		13 32.965153507524811 17 32.840905690078237 21 32.949380945508295;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1512";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 14.16202633897549 5 10.87315618106248 
		13 10.87315618106248 17 10.755212759880145 21 16.226511010665412;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1513";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -7.0298563396059315 5 -12.988841042314068 
		13 -12.988841042314068 17 -7.7552277882317924 21 -8.5139660854992858;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1514";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -68.250300829550369 5 -60.973102305894095 
		13 -60.973102305894095 17 -51.019240278551599 21 -68.213989601412422;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.48568686101717434 5 0.48366398332572585 
		13 0.48366398332572585 17 0.73594207240871823 21 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL552";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.4700479323255695 5 -1.4833917316357403 
		13 -1.4833917316357403 17 -1.129016370418422 21 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.79788935933312277 5 -0.78274181248683317 
		13 -0.78274181248683317 17 -0.73879469132870823 21 -1;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.56862158553413067 5 -0.56618904341516374 
		13 -0.56618904341516374 17 -0.60109552806707733 21 -0.10167917362943303;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.91217836532596974 5 -0.92122226625675641 
		13 -0.92122226625675641 17 -0.73870360200276663 21 -0.40762644910266188;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTL -n "animCurveTL556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.41178374977372761 5 -0.40373806915834437 
		13 -0.40373806915834437 17 -0.63530583861194034 21 -0.93129112588482243;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1515";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -22.78039507191296 5 -22.78039507191296 
		13 -22.78039507191296 17 -22.78039507191296 21 12.253734489678925;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1516";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -59.78589307060367 5 -59.78589307060367 
		13 -59.78589307060367 17 -59.78589307060367 21 -65.746751280844975;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1517";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 34.574435665981952 5 34.574435665981952 
		13 34.574435665981952 17 34.574435665981952 21 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1518";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.3077020824181265 5 -4.3077020824181265 
		13 -4.3077020824181265 17 -4.3077020824181265 21 -0.061808866237340665;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1519";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -49.658336589859132 5 -49.658336589859132 
		13 -49.658336589859132 17 -49.658336589859132 21 -59.058178941076754;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1520";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 45.957278122761899 5 45.957278122761899 
		13 45.957278122761899 17 45.957278122761899 21 16.57914742975785;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1521";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 64.255341242982553 5 64.255341242982553 
		13 64.255341242982553 17 64.255341242982553 21 8.5572674112203639;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 72.208811687058059 5 72.208811687058059 
		13 72.208811687058059 17 72.208811687058059 21 15.711328223519061;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1523";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 72.79493678537078 5 72.79493678537078 
		13 72.79493678537078 17 72.79493678537078 21 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 35.224795679311441 5 35.224795679311441 
		13 35.224795679311441 17 35.224795679311441 21 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 56.771965155298119 5 56.771965155298119 
		13 56.771965155298119 17 56.771965155298119 21 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 59.556508727470074 5 59.556508727470074 
		13 59.556508727470074 17 59.556508727470074 21 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 36.028288837490415 5 36.028288837490415 
		13 36.028288837490415 17 36.028288837490415 21 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.094680882304901 5 13.094680882304901 
		13 13.094680882304901 17 13.094680882304901 21 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.967667985987509 5 10.967667985987509 
		13 10.967667985987509 17 10.967667985987509 21 10.423754966968488;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 53.910048648242878 5 53.910048648242878 
		13 53.910048648242878 17 53.910048648242878 21 27.7228482558439;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 43.127820754253513 5 43.127820754253513 
		13 43.127820754253513 17 43.127820754253513 21 21.576484776388224;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 13 0 17 0 21 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 13 0 17 0 21 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1534";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 59.219502482153104 5 59.219502482153104 
		13 59.219502482153104 17 59.219502482153104 21 27.080064458283051;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1535";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1536";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1537";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1538";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1539";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1540";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 13.994403295754109;
createNode animCurveTA -n "animCurveTA1541";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1542";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA1543";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 13.994403295754109;
createNode animCurveTA -n "animCurveTA1544";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 13 0 17 0 21 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 13 0 17 0 21 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 66.672206829852314 5 66.672206829852314 
		13 66.672206829852314 17 66.672206829852314 21 27.911632519594587;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 13 0 17 0 21 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 13 0 17 0 21 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1549";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 13 0 17 0 21 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1550";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.7624495121284474 5 -1.4907363756876946 
		13 -1.4907363756876946 17 -0.94114741113395939 21 -0.65073001024951671;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.3818983326385355 5 -1.7180394229632661 
		13 -1.7180394229632661 17 -2.1377276682586865 21 -4.2368721935960938;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1552";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 30.557812349910169 5 20.203568568015044 
		13 20.203568568015044 17 7.3931737502751229 21 8.7398866450636881;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 13 0 17 0 21 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 13 0 17 0 21 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 14.508952910281577 5 14.508952910281577 
		13 14.508952910281577 17 14.508952910281577 21 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 3.7348422483758985 5 5.6854586968061778 
		13 5.0201590931731328 17 4.7674144325872385 21 4.8714700432790465;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1557";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 4.4972443470765757 5 2.7403731499485353 
		13 2.9584690837182457 17 3.944173909114455 21 11.783606204137087;
	setAttr -s 5 ".kit[3:4]"  1 3;
	setAttr -s 5 ".kot[3:4]"  1 3;
	setAttr -s 5 ".kix[3:4]"  0.98599702119827271 1;
	setAttr -s 5 ".kiy[3:4]"  0.1667628288269043 0;
	setAttr -s 5 ".kox[3:4]"  0.98599702119827271 1;
	setAttr -s 5 ".koy[3:4]"  0.16676279902458191 0;
createNode animCurveTA -n "animCurveTA1558";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.610413291953241 5 25.842531765951637 
		13 17.306221539055485 17 10.668563948783047 21 7.5423825101935931;
	setAttr -s 5 ".kit[2:4]"  1 9 3;
	setAttr -s 5 ".kot[2:4]"  1 9 3;
	setAttr -s 5 ".kix[2:4]"  0.74583035707473755 0.84263777732849121 
		1;
	setAttr -s 5 ".kiy[2:4]"  -0.66613596677780151 -0.53848075866699219 
		0;
	setAttr -s 5 ".kox[2:4]"  0.74583029747009277 0.84263777732849121 
		1;
	setAttr -s 5 ".koy[2:4]"  -0.66613602638244629 -0.53848075866699219 
		0;
createNode animCurveTA -n "animCurveTA1559";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.25608676395159663 5 -0.25236334058040388 
		13 -0.25236334058040388 17 -0.61318596649726087 21 -1.8903601258661935;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1560";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.4601277182379901 5 1.4564560807154638 
		13 1.4564560807154638 17 1.3173685649593379 21 2.5597289571479038;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1561";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 29.944365413543018 5 30.421612357009703 
		13 30.421612357009703 17 17.656834282696867 21 2.0168110874036049;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1562";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 13 0 17 0 21 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1563";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 13 0 17 0 21 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1564";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 61.824373247854581 5 61.824373247854581 
		13 61.824373247854581 17 61.824373247854581 21 33.429092416277157;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1565";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 22.82773238350271 5 22.82773238350271 
		13 22.82773238350271 17 22.82773238350271 21 8.2533422302317216;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1566";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 38.578337509358107 5 38.578337509358107 
		13 38.578337509358107 17 38.578337509358107 21 23.263402056531085;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1567";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 45.467643381850564 5 45.467643381850564 
		13 45.467643381850564 17 45.467643381850564 21 20.166277752815617;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1568";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 13 0 17 0 21 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1569";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 13 0 17 0 21 0;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1570";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 50.17101925731437 5 50.17101925731437 
		13 50.17101925731437 17 50.17101925731437 21 17.254116939558369;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
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
connectAttr "hom_jump_dash_landSource.st" "clipLibrary1.st[0]";
connectAttr "hom_jump_dash_landSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL516.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL517.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU105.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU106.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU107.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU108.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU109.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU110.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU111.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU112.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1459.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1460.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1461.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL521.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL522.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL523.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL524.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL525.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL526.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1462.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1463.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1464.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL527.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL528.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL529.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1465.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1466.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1467.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1468.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1469.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1470.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1471.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1472.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1473.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL530.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL531.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL532.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL533.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL534.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL535.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL536.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL537.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL538.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA1474.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA1475.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA1476.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA1477.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA1478.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA1479.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1480.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1481.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1482.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1483.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1484.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1485.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1486.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1487.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1488.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1489.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1490.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1491.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1492.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1493.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1494.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1495.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1496.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1497.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1498.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1499.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1500.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1501.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1502.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTL539.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTL540.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTL541.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1503.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1504.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1505.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL542.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL543.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL544.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA1506.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1507.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1508.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL545.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL546.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL547.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1509.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1510.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1511.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL548.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL549.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL550.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1512.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1513.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1514.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL551.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL552.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL553.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL554.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL555.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL556.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA1515.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA1516.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA1517.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA1518.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA1519.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA1520.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1521.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1522.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1523.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1524.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1525.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1526.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1527.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1528.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1529.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1530.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1531.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1532.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1533.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1534.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1535.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1536.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1537.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1538.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1539.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1540.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1541.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1542.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1543.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1544.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1545.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1546.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1547.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1548.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1549.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1550.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1551.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1552.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1553.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1554.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1555.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1556.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1557.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1558.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1559.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1560.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1561.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1562.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1563.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1564.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1565.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1566.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1567.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1568.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1569.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1570.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[2].olnk";
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
// End of hom_jump_dash_land.ma
