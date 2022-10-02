//Maya ASCII 4.0 scene
//Name: brt_get_out_of_car_close_door_high_driver.ma
//Last modified: Tue, May 27, 2003 01:44:08 PM
requires maya "4.0";
requires "p3dDeformer" "2.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_get_out_of_car_close_door_high_driverSource";
	setAttr ".ihi" 0;
	setAttr ".du" 11;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL534";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTL -n "animCurveTL535";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.1199670047304786 1 0.10474787099642685 
		2 0.084359391282787674 3 0.061070187886067856 4 0.037148883102774255 5 0.014864099229413692 
		6 -0.0082409743290217472 7 -0.031001308016842827 8 -0.045715519311497158 
		9 -0.04625773739938658 10 -0.038753833039172764 11 -0.033880036066693167;
createNode animCurveTL -n "brt_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.10836669042811298 1 0.1154804419582824 
		2 0.12904714523261102 3 0.14276786388675983 4 0.15034366155638984 5 0.14547560187716196 
		6 0.10802442195173124 7 0.04767166951327452 8 0.0028496241432354498 9 -0.0086651370681288427 
		10 -0.0046491934388683672 11 0;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -73.584725781050324 1 -75.951353295131412 
		2 -76.211663207790622 3 -76.651119025756699 4 -79.555184255758704 5 -87.209322404525523 
		6 -72.517510203665182 7 -43.282035735339015 8 -20.087308419971652 9 -9.9479300450965837 
		10 -5.8492996364621721 11 -1.7506672808666837;
createNode animCurveTU -n "animCurveTU105";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTU -n "animCurveTU106";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTU -n "animCurveTU107";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTU -n "animCurveTU108";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTU -n "animCurveTU109";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTU -n "animCurveTU110";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTU -n "animCurveTU111";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 1;
createNode animCurveTU -n "animCurveTU112";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 1;
createNode animCurveTA -n "animCurveTA1525";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1526";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1527";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTL -n "animCurveTL539";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTL -n "animCurveTL540";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTL -n "animCurveTL541";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTL -n "animCurveTL542";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.42471957076167488 5 0.23544064970124495 
		8 -0.21764441145149604 11 -0.26454016861507795;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL543";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.21854541072049752 5 0.25366143527271862 
		8 0.21854541072049752 11 0.21854541072049752;
	setAttr -s 4 ".kit[1:3]"  9 3 3;
	setAttr -s 4 ".kot[1:3]"  9 3 3;
createNode animCurveTL -n "animCurveTL544";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.04295041053611711 5 0.090396430285037979 
		8 -0.064904406754016042 11 -0.064904406754016042;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -3.1220038384960587 5 -40.376349723711272 
		8 -173.73768703833946 11 -176.89714928150025;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  0.58394819498062134 0.87568658590316772;
	setAttr -s 4 ".kiy[2:3]"  -0.81179088354110718 -0.48287993669509888;
	setAttr -s 4 ".kox[2:3]"  0.58394819498062134 0.87568658590316772;
	setAttr -s 4 ".koy[2:3]"  -0.81179094314575195 -0.48287993669509888;
createNode animCurveTA -n "animCurveTA1529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -113.32682153040034 5 -109.38363684393025 
		8 -120.34241176433399 11 -150.3311308704225;
createNode animCurveTA -n "animCurveTA1530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 4.5212018102435731 5 85.920608006910172 
		8 171.36557992801863 11 179.65046251956872;
createNode animCurveTL -n "animCurveTL545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.21594587158542247 5 0.21594587158542247 
		8 0.24702698943208226 11 0.21594587158542247;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.21854505205085809 5 0.21854505205085809 
		8 0.21854505205085809 11 0.21854505205085809;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.48428229143983942 5 0.48428229143983942 
		8 0.37354366008108897 11 0.00078430246903575811;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -171.83932330268107 5 -196.13469811126072 
		8 -345.02472286088141 11 -356.94112113611664;
createNode animCurveTA -n "animCurveTA1532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -68.169561768861598 5 -82.896548172398099 
		8 -41.238383398518884 11 15.541987270667644;
createNode animCurveTA -n "animCurveTA1533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 170.56724895848305 5 199.44322781221274 
		8 352.18104340607545 11 360.979129788188;
createNode animCurveTA -n "animCurveTA1534";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1535";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1536";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1537";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1538";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1539";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1540";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1541";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1542";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1543";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1544";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1545";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTL -n "animCurveTL548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL549";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL550";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 5 1 8 1 11 1;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL552";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 5 1 8 1 11 1;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.27078550131278833 5 0.033550746477687445 
		8 -0.10318753762627872 11 -0.076472881617957691;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.95473100313980441 5 0.91279668011788151 
		8 0.85934527457539023 11 0.95473100313980441;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.2446016607575533 5 0.32836265164398898 
		8 0.0064320760855255035 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -181.18618296711085 5 -196.675683492183 
		8 -185.08061895527479 11 -186.34802900485738;
createNode animCurveTA -n "animCurveTA1547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -73.584725781050324 5 -87.209322404525551 
		8 -159.91269158002834 11 -178.24933271913332;
createNode animCurveTA -n "animCurveTA1548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 178.96129049071283 5 200.29121306815358 
		8 180.76941993100405 11 180.53558616458341;
createNode animCurveTA -n "animCurveTA1549";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1550";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1551";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1552";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1553";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1554";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1555";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1556";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1557";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1558";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1559";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1560";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1561";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1562";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1563";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1564";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1565";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1566";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1567";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1568";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1569";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1570";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1571";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1572";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1573";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1574";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTL -n "animCurveTL557";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL558";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL559";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0.27773886459742925;
createNode animCurveTA -n "animCurveTA1575";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1576";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 28.652637602052774;
createNode animCurveTA -n "animCurveTA1577";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 64.676908227303443;
createNode animCurveTL -n "animCurveTL560";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0.5198069948790518;
createNode animCurveTL -n "animCurveTL561";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL562";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0.36439499068905612;
createNode animCurveTA -n "animCurveTA1578";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 7.7976222737965317;
createNode animCurveTA -n "animCurveTA1579";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 -30.409274105849079;
createNode animCurveTA -n "animCurveTA1580";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 -64.859940280210893;
createNode animCurveTL -n "animCurveTL563";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.61294164802918749 5 0.033678587201424713 
		8 -0.77339373226194341 11 -0.8448236677023373;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL564";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.0207937400109248 5 1.2397763237013613 
		8 1.1481854343615399 11 1.0304014029588007;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL565";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.43766142688412474 5 -0.3430554572345435 
		8 0.15398750308028297 11 -0.097994651149805143;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1581";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 243.64247564816833 5 265.64413658133498 
		8 345.14852186746617 11 362.44484292915598;
createNode animCurveTA -n "animCurveTA1582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -20.532869880126128 5 -39.088385971292958 
		8 -12.868633408077004 11 -3.5099887953847055;
createNode animCurveTA -n "animCurveTA1583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -265.8551275245099 5 -271.83843087496513 
		8 -318.29844264776671 11 -299.83785754885446;
createNode animCurveTL -n "animCurveTL566";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.076245805012821452 5 -0.63789765170330814 
		8 0.97130899359392431 11 0.61083301393139333;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL567";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.0513995175262334 5 2.1617771034587236 
		8 2.0083287341659308 11 1.0211562878106184;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL568";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.0370477783765644 5 1.398658191867155 
		8 0.52246928744813903 11 0.14314299916678522;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 89.903823884388046 5 247.87088285548552 
		8 290.34630916205839 11 352.58352545823101;
createNode animCurveTA -n "animCurveTA1585";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -32.504234509361467 5 -28.684954716085265 
		8 -6.2268131781437734 11 -12.992628881764245;
createNode animCurveTA -n "animCurveTA1586";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -86.65282174900733 5 -246.16035769150534 
		8 -287.74344964740897 11 -428.65763717258778;
createNode animCurveTL -n "animCurveTL569";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.047646009069586132 5 0.11422262436484759 
		8 0.047646009069586132 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL570";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.70977769184901862 5 -0.50446781311246858 
		8 -0.70977769184901862 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL571";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.64237249774344829 5 -1.0973961480223062 
		8 -0.64237249774344829 11 -1;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL572";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.31054502397108613 5 -0.31054502397108613 
		8 -0.31054502397108613 11 -0.10167917362943303;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL573";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.55640530640609931 5 -0.55640530640609931 
		8 -0.55640530640609931 11 -0.40762644910266188;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL574";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.57914122395678103 5 -0.57914122395678103 
		8 -0.57914122395678103 11 -0.93129112588482243;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1587";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 12.253734489678925 5 12.253734489678925 
		8 12.253734489678925 11 12.253734489678925;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1588";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -65.746751280844975 5 -65.746751280844975 
		8 -65.746751280844975 11 -65.746751280844975;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1589";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1590";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.061808866237340665 5 -0.061808866237340665 
		8 -0.061808866237340665 11 -0.061808866237340665;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1591";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -59.058178941076754 5 -59.058178941076754 
		8 -59.058178941076754 11 -59.058178941076754;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 16.57914742975785 5 16.57914742975785 
		8 16.57914742975785 11 16.57914742975785;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1593";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.5572674112203657 5 8.5572674112203657 
		8 8.5572674112203657 11 8.5572674112203657;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1594";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 15.711328223519061 5 15.711328223519061 
		8 15.711328223519061 11 15.711328223519061;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1595";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1596";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1597";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1598";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1599";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1600";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1601";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 -249.6496823120055;
createNode animCurveTA -n "animCurveTA1602";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.804554996454378 5 27.804554996454378 
		8 27.804554996454378 11 27.7228482558439;
createNode animCurveTA -n "animCurveTA1603";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 29.452980944098744 5 29.452980944098744 
		8 29.452980944098744 11 21.576484776388227;
createNode animCurveTA -n "animCurveTA1604";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1605";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1606";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.080064458283051 5 27.080064458283051 
		8 27.080064458283051 11 27.080064458283051;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1607";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1608";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1609";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1610";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1611";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1612";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1613";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1614";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTA -n "animCurveTA1615";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 13.994403295754109;
createNode animCurveTA -n "animCurveTA1616";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.911632519594587 5 27.911632519594587 
		8 27.911632519594587 11 27.911632519594587;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.65073001024951671 5 -9.7624195992479237 
		8 9.5688162172274307 11 -0.65073001024951671;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -4.2368721935960938 5 -3.17079856343662 
		8 -7.0846265600455363 11 -4.2368721935960938;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.6995264082587447 5 -7.5142948618181018 
		8 -8.3067314352119279 11 2.6995264082587447;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 -56.895247087937577 8 -24.22632884962432 
		11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 -36.557848533371633 8 -28.085678372064539 
		11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 6.6786334979782902 5 29.398669348522365 
		8 24.248342033667061 11 6.6786334979782902;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.8903601258661935 5 -1.8903601258661935 
		8 9.8971004586292839 11 -1.8903601258661935;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.5597289571479038 5 2.5597289571479038 
		8 0.40783862799678089 11 2.5597289571479038;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.0168110874036049 5 2.0168110874036049 
		8 2.6909656336528314 11 2.0168110874036049;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 33.429092416277157 5 33.429092416277157 
		8 33.429092416277157 11 33.429092416277157;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 -243.84726150523136;
createNode animCurveTA -n "animCurveTA1638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 28.612774017129329 5 28.612774017129322 
		8 28.612774017129322 11 23.263402056531092;
createNode animCurveTA -n "animCurveTA1639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 17.632837226638049 5 17.632837226638053 
		8 17.632837226638053 11 20.166277752815624;
createNode animCurveTA -n "animCurveTA1640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 17.254116939558369 5 17.254116939558369 
		8 17.254116939558369 11 17.254116939558369;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
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
	setAttr ".o" 11;
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
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -k on ".ra";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -k on ".esr";
	setAttr -k on ".ors";
	setAttr -k on ".outf";
	setAttr -k on ".gama";
	setAttr ".top" 478;
	setAttr -k on ".left";
	setAttr -k on ".bot";
	setAttr ".rght" 638;
	setAttr -k on ".urr";
	setAttr ".fs" 1;
	setAttr ".ef" 10;
	setAttr -k on ".bf";
	setAttr -k on ".bfs";
	setAttr -k on ".be";
	setAttr -k on ".fec";
	setAttr -k on ".sec";
	setAttr -k on ".ofc";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -k on ".sp";
	setAttr -k on ".shs";
	setAttr -k on ".lpr";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".shp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -k on ".mbf";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -k on ".bll";
	setAttr -k on ".bls";
	setAttr -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -k on ".rgpn";
	setAttr -k on ".rlsd";
	setAttr -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
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
connectAttr "brt_get_out_of_car_close_door_high_driverSource.st" "clipLibrary1.st[0]"
		;
connectAttr "brt_get_out_of_car_close_door_high_driverSource.du" "clipLibrary1.du[0]"
		;
connectAttr "animCurveTL534.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL535.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "brt_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
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
connectAttr "animCurveTA1525.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1526.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1527.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL539.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL540.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL541.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL542.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL543.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL544.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1528.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1529.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1530.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL545.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL546.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL547.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1531.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1532.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1533.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1534.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1535.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1536.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1537.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1538.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1539.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA1540.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA1541.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA1542.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA1543.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA1544.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA1545.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL548.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL549.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL550.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL551.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL552.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL553.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL554.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL555.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL556.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1546.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1547.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1548.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1549.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1550.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1551.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1552.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1553.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1554.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1555.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1556.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1557.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1558.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1559.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1560.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1561.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1562.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1563.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1564.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1565.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1566.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1567.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1568.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA1569.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA1570.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA1571.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1572.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1573.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1574.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL557.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL558.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL559.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA1575.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1576.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1577.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL560.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL561.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL562.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1578.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1579.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1580.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL563.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL564.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL565.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1581.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1582.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1583.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL566.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL567.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL568.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1584.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1585.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1586.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL569.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL570.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL571.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL572.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL573.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL574.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1587.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1588.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1589.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1590.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1591.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1592.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1593.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1594.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1595.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1596.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1597.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1598.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1599.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1600.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1601.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1602.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1603.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1604.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1605.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1606.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1607.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1608.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1609.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1610.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1611.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1612.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1613.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1614.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1615.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1616.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1617.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1618.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1619.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1620.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1621.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1622.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1623.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1624.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1625.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1626.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1627.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1628.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1629.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1630.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1631.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1632.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1633.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1634.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1635.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1636.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1637.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1638.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1639.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1640.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1641.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1642.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of brt_get_out_of_car_close_door_high_driver.ma
