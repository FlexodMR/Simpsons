//Maya ASCII 4.0 scene
//Name: apu_hit_switch.ma
//Last modified: Wed, Oct 09, 2002 02:46:00 PM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "apu_hit_switchSource";
	setAttr ".ihi" 0;
	setAttr ".du" 30;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL1";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "animCurveTL2";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "apu_Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 -0.060083816922849878;
createNode animCurveTL -n "apu_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTL -n "apu_Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "apu_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTU -n "animCurveTU1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "animCurveTA2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.26454016861507795 4 -0.26454016861507795 
		6 -0.26454016861507795 8 -0.26454016861507795 13 -0.26454016861507795 18 
		-0.26454016861507795 22 -0.26454016861507795 26 -0.26454016861507795 30 -0.26454016861507795;
createNode animCurveTL -n "animCurveTL10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.13806192026723146 4 0.13806192026723146 
		6 0.13806192026723146 8 0.13806192026723146 13 0.13806192026723146 18 0.13806192026723146 
		22 0.13806192026723146 26 0.13806192026723146 30 0.13806192026723146;
createNode animCurveTL -n "animCurveTL11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.064904406754016042 4 -0.064904406754016042 
		6 -0.064904406754016042 8 -0.064904406754016042 13 -0.064904406754016042 
		18 -0.064904406754016042 22 -0.064904406754016042 26 -0.064904406754016042 
		30 -0.064904406754016042;
createNode animCurveTA -n "animCurveTA5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTA -n "animCurveTA6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -25.948901905116401 4 -25.948901905116401 
		6 -25.948901905116401 8 -25.948901905116401 13 -25.948901905116401 18 -25.948901905116401 
		22 -25.948901905116401 26 -25.948901905116401 30 -25.948901905116401;
createNode animCurveTA -n "animCurveTA7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTL -n "animCurveTL12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.21594587158542247 4 0.21594587158542247 
		6 0.21594587158542247 8 0.21594587158542247 13 0.21594587158542247 18 0.21594587158542247 
		22 0.21594587158542247 26 0.21594587158542247 30 0.21594587158542247;
createNode animCurveTL -n "animCurveTL13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.1380615615975922 4 0.1380615615975922 
		6 0.1380615615975922 8 0.1380615615975922 13 0.1380615615975922 18 0.1380615615975922 
		22 0.1380615615975922 26 0.1380615615975922 30 0.1380615615975922;
createNode animCurveTL -n "animCurveTL14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.00078430246903575811 4 0.00078430246903575811 
		6 0.00078430246903575811 8 0.00078430246903575811 13 0.00078430246903575811 
		18 0.00078430246903575811 22 0.00078430246903575811 26 0.00078430246903575811 
		30 0.00078430246903575811;
createNode animCurveTA -n "animCurveTA8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTA -n "animCurveTA9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTA -n "animCurveTA10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTA -n "animCurveTA11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTL -n "animCurveTL16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTL -n "animCurveTL17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 4 1 6 1 8 1 13 1 18 1 22 1 
		26 1 30 1;
createNode animCurveTL -n "animCurveTL18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTL -n "animCurveTL19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTL -n "animCurveTL20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 4 1 6 1 8 1 13 1 18 1 22 1 
		26 1 30 1;
createNode animCurveTL -n "animCurveTL21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.076472881617957691 4 -0.076472881617957691 
		6 -0.076472881617957691 8 -0.076472881617957691 13 -0.076472881617957691 
		18 -0.076472881617957691 22 -0.076472881617957691 26 -0.076472881617957691 
		30 -0.076472881617957691;
createNode animCurveTL -n "animCurveTL22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.99296149630440855 4 0.99296149630440855 
		6 0.99296149630440855 8 0.99296149630440855 13 0.99296149630440855 18 0.99296149630440855 
		22 0.99296149630440855 26 0.99296149630440855 30 0.99296149630440855;
createNode animCurveTL -n "animCurveTL23";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0.0021659694631387537 6 0.003206732531471464 
		8 0.00395194419818374 13 0.00395194419818374 18 0.00395194419818374 22 0.00395194419818374 
		26 0.0021406363708091208 30 0;
createNode animCurveTA -n "animCurveTA17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.62843630316474508 4 0.87602420324909391 
		6 2.1078680417217321 8 3.4131876571940687 13 3.4131876571940687 18 9.5115652427121216 
		22 7.1195354915621785 26 3.3690459257115357 30 -0.62843630316474508;
createNode animCurveTA -n "animCurveTA18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -5.8284402688137158 4 1.3945957250306338 
		6 6.8655379644755481 8 11.374810277956477 13 11.374810277956477 18 12.670022453139582 
		22 12.670022453139588 26 4.1915602454924867 30 -5.8284402688137158;
createNode animCurveTA -n "animCurveTA19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1.2956360193097458 4 -0.74147926290600008 
		6 -0.31853760149160604 8 0.040133985594029385 13 0.040133985594029385 18 
		-0.085648245976996606 22 -0.085648245976996107 26 -0.64022598633463645 30 
		-1.2956360193097458;
createNode animCurveTA -n "animCurveTA20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA23";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA24";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA27";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA28";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA31";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA33";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA35";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA38";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA39";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTA -n "animCurveTA41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTA -n "animCurveTA42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTA -n "animCurveTA43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTA -n "animCurveTA44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTA -n "animCurveTA45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTL -n "animCurveTL24";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.43524234076486068 4 -0.43524234076486068 
		6 -0.43524234076486068 8 -0.43524234076486068 13 -0.43524234076486068 18 
		-0.43524234076486068 22 -0.43524234076486068 26 -0.43524234076486068 30 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.82665738350180629 4 -0.82665738350180629 
		6 -0.82665738350180629 8 -0.82665738350180629 13 -0.82665738350180629 18 
		-0.82665738350180629 22 -0.82665738350180629 26 -0.82665738350180629 30 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.27773886459742925 4 0.27773886459742925 
		6 0.27773886459742925 8 0.27773886459742925 13 0.27773886459742925 18 0.27773886459742925 
		22 0.27773886459742925 26 0.27773886459742925 30 0.27773886459742925;
createNode animCurveTA -n "animCurveTA46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1.8121934161072303e-015 4 -9.0609670805361496e-016 
		6 -4.5304835402680758e-016 8 0 13 0 18 0 22 0 26 0 30 0;
createNode animCurveTA -n "animCurveTA47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 28.652637602052774 4 28.652637602052774 
		6 28.652637602052774 8 28.652637602052774 13 28.652637602052774 18 28.652637602052774 
		22 28.652637602052774 26 28.652637602052774 30 28.652637602052774;
createNode animCurveTA -n "animCurveTA48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 64.676908227303443 4 64.676908227303443 
		6 64.676908227303443 8 64.676908227303443 13 64.676908227303443 18 64.676908227303443 
		22 64.676908227303443 26 64.676908227303443 30 64.676908227303443;
createNode animCurveTL -n "animCurveTL27";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.5198069948790518 4 0.5198069948790518 
		6 0.5198069948790518 8 0.5198069948790518 13 0.5198069948790518 18 0.5198069948790518 
		22 0.5198069948790518 26 0.5198069948790518 30 0.5198069948790518;
createNode animCurveTL -n "animCurveTL28";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.72394202659893114 4 -0.72394202659893114 
		6 -0.72394202659893114 8 -0.72394202659893114 13 -0.72394202659893114 18 
		-0.72394202659893114 22 -0.72394202659893114 26 -0.72394202659893114 30 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.36439499068905612 4 0.36439499068905612 
		6 0.36439499068905612 8 0.36439499068905612 13 0.36439499068905612 18 0.36439499068905612 
		22 0.36439499068905612 26 0.36439499068905612 30 0.36439499068905612;
createNode animCurveTA -n "animCurveTA49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 7.7976222737965299 4 7.7976222737965299 
		6 7.7976222737965299 8 7.7976222737965299 13 7.7976222737965299 18 7.7976222737965299 
		22 7.7976222737965299 26 7.7976222737965299 30 7.7976222737965299;
createNode animCurveTA -n "animCurveTA50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -30.409274105849079 4 -30.409274105849079 
		6 -30.409274105849079 8 -30.409274105849079 13 -30.409274105849079 18 -30.409274105849079 
		22 -30.409274105849079 26 -30.409274105849079 30 -30.409274105849079;
createNode animCurveTA -n "animCurveTA51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -64.859940280210878 4 -64.859940280210878 
		6 -64.859940280210878 8 -64.859940280210878 13 -64.859940280210878 18 -64.859940280210878 
		22 -64.859940280210878 26 -64.859940280210878 30 -64.859940280210878;
createNode animCurveTL -n "animCurveTL30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.8448236677023373 4 -0.8398767310281906 
		6 -0.49590443171344478 8 -0.16196592681219751 13 -0.16196592681219751 18 
		-0.16196592681219751 22 -0.16196592681219751 26 -0.82306479276745281 30 -0.8448236677023373;
	setAttr -s 9 ".kit[3:8]"  3 3 3 3 9 9;
	setAttr -s 9 ".kot[3:8]"  3 3 3 3 9 9;
createNode animCurveTL -n "animCurveTL31";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.5117481219250299 4 1.7267306451735125 
		6 1.8386375037417253 8 1.9209737251024817 13 1.9209737251024817 18 1.9209737251024817 
		22 1.9209737251024817 26 1.7334119875028104 30 1.5117481219250299;
	setAttr -s 9 ".kit[3:8]"  3 3 3 3 9 9;
	setAttr -s 9 ".kot[3:8]"  3 3 3 3 9 9;
createNode animCurveTL -n "animCurveTL32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.097994651149805143 4 0.54756038623384151 
		6 0.77066302175350876 8 0.90806428576736509 13 0.90806428576736509 18 1.028950427740033 
		22 1.028950427740033 26 0.63208644414303561 30 -0.097994651149805143;
createNode animCurveTA -n "animCurveTA52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 5.4739599453216474 4 57.631548562055748 
		6 -99.39701561354002 8 -121.96882292593851 13 -121.96882292593851 18 -121.96882292593851 
		22 -121.96882292593851 26 27.750158940515153 30 5.4739599453216474;
	setAttr -s 9 ".kit[3:8]"  3 3 3 3 9 9;
	setAttr -s 9 ".kot[3:8]"  3 3 3 3 9 9;
createNode animCurveTA -n "animCurveTA53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.5874521608419823 4 36.360943697907906 
		6 64.669598336712554 8 11.264953983926121 13 11.264953983926121 18 11.264953983926121 
		22 11.264953983926121 26 72.874925572544598 30 8.5874521608419823;
	setAttr -s 9 ".kit[3:8]"  3 3 3 3 9 9;
	setAttr -s 9 ".kot[3:8]"  3 3 3 3 9 9;
createNode animCurveTA -n "animCurveTA54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 74.754744621954103 4 119.02377849034241 
		6 -43.502728383513649 8 -114.31034019452231 13 -114.31034019452231 18 -114.31034019452231 
		22 -114.31034019452231 26 90.687126437481339 30 74.754744621954103;
	setAttr -s 9 ".kit[3:8]"  3 3 3 3 9 9;
	setAttr -s 9 ".kot[3:8]"  3 3 3 3 9 9;
createNode animCurveTL -n "animCurveTL33";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.61083301393139333 4 0.66801138267842974 
		6 0.69545985473760097 8 0.72201100500160365 13 0.7683696236079558 18 0.73716723891496361 
		26 0.66026559126777418 30 0.61083301393139333;
createNode animCurveTL -n "animCurveTL34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.4644416293758407 4 1.5560699894299685 
		6 1.599944971032194 8 1.6422945176552548 13 1.7141358674034328 18 1.6512140471853662 
		26 1.5122439522237188 30 1.4644416293758407;
createNode animCurveTL -n "animCurveTL35";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.14314299916678522 4 -0.055816328441190638 
		6 -0.15111304451689839 8 -0.24311932118938914 13 -0.39972517269800606 18 
		-0.26632534175227834 26 0.031500527830550629 30 0.14314299916678522;
createNode animCurveTA -n "animCurveTA55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 16.226511010665405 4 9.1997328953307029 
		6 5.7995082611269266 8 2.4883020656299801 13 -3.8037019088419557 18 -3.1083957824372077 
		26 2.5189773743412101 30 16.226511010665405;
createNode animCurveTA -n "animCurveTA56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -8.513966085499284 4 -3.8886915969117983 
		6 -1.7241322013107068 8 0.32394448000799569 13 2.8454016089353789 18 -6.1618666128758379 
		26 -20.278500989630047 30 -8.513966085499284;
createNode animCurveTA -n "animCurveTA57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -68.213989601412422 4 -58.217467750771895 
		6 -53.448181788799999 8 -48.859015228021043 13 -41.404564009216045 18 -50.292108914302098 
		26 -67.917180988210703 30 -68.213989601412422;
createNode animCurveTL -n "animCurveTL36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0.58042038634657389 
		13 0.58042038634657389 18 0 22 0 26 0 30 0;
createNode animCurveTL -n "animCurveTL37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 -0.63436259142424889 
		13 -0.63436259142424889 18 0 22 0 26 0 30 0;
createNode animCurveTL -n "animCurveTL38";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1 4 -1 6 -1 8 -0.95531942263400693 
		13 -0.95531942263400693 18 -1 22 -1 26 -1 30 -1;
createNode animCurveTL -n "animCurveTL39";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.10167917362943303 4 -0.58873247939721984 
		6 -0.82276490750784037 8 -0.99033782439426166 13 -0.99033782439426166 18 
		-0.99033782439426166 22 -0.99033782439426166 26 -0.58303593917285823 30 -0.10167917362943303;
createNode animCurveTL -n "animCurveTL40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.40762644910266188 4 -0.62828259742991521 
		6 -0.73430938040094884 8 -0.81022713528990098 13 -0.81022713528990098 18 
		-0.81022713528990098 22 -0.81022713528990098 26 -0.62570181598938956 30 -0.40762644910266188;
createNode animCurveTL -n "animCurveTL41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.93129112588482243 4 -0.65742681322027186 
		6 -0.52583314405620907 8 -0.43160887194067504 13 -0.43160887194067504 18 
		-0.43160887194067504 22 -0.43160887194067504 26 -0.66062990746481831 30 -0.93129112588482243;
createNode animCurveTA -n "animCurveTA58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 12.253734489678925 4 12.253734489678925 
		6 12.253734489678925 8 12.253734489678925 13 12.253734489678925 18 12.253734489678925 
		22 12.253734489678925 26 12.253734489678925 30 12.253734489678925;
createNode animCurveTA -n "animCurveTA59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -65.746751280844961 4 -65.746751280844961 
		6 -65.746751280844961 8 -65.746751280844961 13 -65.746751280844961 18 -65.746751280844961 
		22 -65.746751280844961 26 -65.746751280844961 30 -65.746751280844961;
createNode animCurveTA -n "animCurveTA60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 3.871449260799477e-015 4 1.9357246303997385e-015 
		6 9.6786231519986924e-016 8 0 13 0 18 0 22 0 26 0 30 0;
createNode animCurveTA -n "animCurveTA61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.061808866237337522 4 -0.061808866237337522 
		6 -0.061808866237337522 8 -0.061808866237337522 13 -0.061808866237337522 
		18 -0.061808866237337522 22 -0.061808866237337522 26 -0.061808866237337522 
		30 -0.061808866237337522;
createNode animCurveTA -n "animCurveTA62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -59.058178941076754 4 -59.058178941076754 
		6 -59.058178941076754 8 -59.058178941076754 13 -59.058178941076754 18 -59.058178941076754 
		22 -59.058178941076754 26 -59.058178941076754 30 -59.058178941076754;
createNode animCurveTA -n "animCurveTA63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 16.579147429757843 4 16.579147429757843 
		6 16.579147429757843 8 16.579147429757843 13 16.579147429757843 18 16.579147429757843 
		22 16.579147429757843 26 16.579147429757843 30 16.579147429757843;
createNode animCurveTA -n "animCurveTA64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.5572674112203622 4 8.5572674112203622 
		6 8.5572674112203622 8 8.5572674112203622 13 8.5572674112203622 18 8.5572674112203622 
		22 8.5572674112203622 26 8.5572674112203622 30 8.5572674112203622;
createNode animCurveTA -n "animCurveTA65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 15.711328223519057 4 15.711328223519057 
		6 15.711328223519057 8 15.711328223519057 13 15.711328223519057 18 15.711328223519057 
		22 15.711328223519057 26 15.711328223519057 30 15.711328223519057;
createNode animCurveTA -n "animCurveTA66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTA -n "animCurveTA67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTA -n "animCurveTA68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTA -n "animCurveTA69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTA -n "animCurveTA70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTA -n "animCurveTA71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTA -n "animCurveTA72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 10.423754966968488 4 10.423754966968488 
		6 10.423754966968488 8 10.423754966968488 13 10.423754966968488 18 10.423754966968488 
		22 10.423754966968488 26 10.423754966968488 30 10.423754966968488;
createNode animCurveTA -n "animCurveTA73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 27.722848255843903 4 27.722848255843903 
		6 27.722848255843903 8 27.722848255843903 13 27.722848255843903 18 27.722848255843903 
		22 27.722848255843903 26 27.722848255843903 30 27.722848255843903;
createNode animCurveTA -n "animCurveTA74";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 21.576484776388227 4 21.576484776388227 
		6 21.576484776388227 8 21.576484776388227 13 21.576484776388227 18 21.576484776388227 
		22 21.576484776388227 26 21.576484776388227 30 21.576484776388227;
createNode animCurveTA -n "animCurveTA75";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTA -n "animCurveTA76";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTA -n "animCurveTA77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 27.080064458283051 4 27.080064458283051 
		6 27.080064458283051 8 27.080064458283051 13 27.080064458283051 18 27.080064458283051 
		22 27.080064458283051 26 27.080064458283051 30 27.080064458283051;
createNode animCurveTA -n "animCurveTA78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA83";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA84";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA85";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA86";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA87";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTA -n "animCurveTA88";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTA -n "animCurveTA89";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 27.911632519594587 4 27.911632519594587 
		6 27.911632519594587 8 27.911632519594587 13 27.911632519594587 18 27.911632519594587 
		22 27.911632519594587 26 27.911632519594587 30 27.911632519594587;
createNode animCurveTA -n "animCurveTA90";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTA -n "animCurveTA91";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTA -n "animCurveTA92";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTA -n "animCurveTA93";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.65073001024951671 4 -1.7246995014191575 
		6 -2.4564098070986411 8 -2.8027129082645179 13 -2.8027129082645179 18 0.72644961674870612 
		22 0.7774571042386762 26 0.12712195442469668 30 -0.65073001024951671;
createNode animCurveTA -n "animCurveTA94";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -4.2368721935960929 4 -4.2368721935960956 
		6 -4.2368721935960973 8 -4.2368721935960991 13 -4.2368721935960991 18 -3.2453784480183576 
		22 -3.2335503893431139 26 -3.6924205479230934 30 -4.2368721935960929;
createNode animCurveTA -n "animCurveTA95";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.7398866450636881 4 8.7398866450636934 
		6 8.7398866450636952 8 8.7398866450636969 13 8.7398866450636969 18 11.707984334636647 
		22 10.805362565584687 26 9.7834676119814308 30 8.7398866450636881;
createNode animCurveTA -n "animCurveTA96";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTA -n "animCurveTA97";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTA -n "animCurveTA98";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -15.452965173287611 4 -15.452965173287611 
		6 -15.452965173287611 8 -15.452965173287611 13 -15.452965173287611 18 -15.452965173287611 
		22 -15.452965173287611 26 -15.452965173287611 30 -15.452965173287611;
createNode animCurveTA -n "animCurveTA99";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 4.8714700432790456 4 4.8714700432790456 
		6 4.8714700432790456 8 4.8714700432790456 13 4.8714700432790456 18 4.8714700432790456 
		22 4.8714700432790456 26 4.8714700432790456 30 4.8714700432790456;
createNode animCurveTA -n "animCurveTA100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 11.783606204137085 4 11.783606204137085 
		6 11.783606204137085 8 11.783606204137085 13 11.783606204137085 18 11.783606204137085 
		22 11.783606204137085 26 11.783606204137085 30 11.783606204137085;
createNode animCurveTA -n "animCurveTA101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 7.5423825101935913 4 7.5423825101935913 
		6 7.5423825101935913 8 7.5423825101935913 13 7.5423825101935913 18 7.5423825101935913 
		22 7.5423825101935913 26 7.5423825101935913 30 7.5423825101935913;
createNode animCurveTA -n "animCurveTA102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1.8903601258661931 4 -0.84133869621207558 
		6 -0.04871861804757089 8 0.59848238576551116 13 0.59848238576551116 18 1.8013321120062815 
		22 1.7551568258223771 26 0.080446939897424782 30 -1.8903601258661931;
createNode animCurveTA -n "animCurveTA103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.5597289571479034 4 2.5606939823852093 
		6 2.560962044906236 8 2.5597289571479038 13 2.5597289571479038 18 1.2416409333096283 
		22 1.3061086376884561 26 1.8860569413366401 30 2.5597289571479034;
createNode animCurveTA -n "animCurveTA104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.016811087403604 4 1.9281434836747644 
		6 1.9035135999637538 8 2.0168110874036049 13 2.0168110874036049 18 7.5218038278311976 
		22 5.4450086385812284 26 3.7006851138830292 30 2.016811087403604;
createNode animCurveTA -n "animCurveTA105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTA -n "animCurveTA106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTA -n "animCurveTA107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 33.429092416277157 4 23.729877160648961 
		6 16.418726123166373 8 10.503674516569561 13 10.503674516569561 18 -5.0023745552894194 
		22 -5.0023745552894194 26 12.612048142317434 30 33.429092416277157;
createNode animCurveTA -n "animCurveTA108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.2533422302317216 4 3.8402448025816081 
		6 0.51370550776630586 8 -2.1776153292697678 13 -2.1776153292697678 18 -2.1776153292697678 
		22 -2.1776153292697678 26 2.6032402965456263 30 8.2533422302317216;
createNode animCurveTA -n "animCurveTA109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 23.263402056531085 4 38.095074921081952 
		6 49.275010603659098 8 58.320084049787106 13 58.320084049787106 18 58.320084049787106 
		22 58.320084049787106 26 42.252437826113784 30 23.263402056531085;
createNode animCurveTA -n "animCurveTA110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 20.166277752815617 4 9.2015773071466569 
		6 0.93651896893637354 8 -5.750287244234304 13 -5.750287244234304 18 -5.750287244234304 
		22 -5.750287244234304 26 6.1281386202950499 30 20.166277752815617;
createNode animCurveTA -n "animCurveTA111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTA -n "animCurveTA112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 13 0 18 0 22 0 
		26 0 30 0;
createNode animCurveTA -n "animCurveTA113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 17.254116939558369 4 17.254116939558369 
		6 17.254116939558369 8 17.254116939558369 13 17.254116939558369 18 17.254116939558369 
		22 17.254116939558369 26 17.254116939558369 30 17.254116939558369;
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
	setAttr ".o" 30;
select -ne :renderPartition;
	setAttr -s 25 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 25 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 6 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 6 ".tx";
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
connectAttr "apu_hit_switchSource.st" "clipLibrary1.st[0]";
connectAttr "apu_hit_switchSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL1.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL2.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "apu_Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "apu_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "apu_Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "apu_Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr"
		;
connectAttr "animCurveTU1.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU2.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU3.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU4.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU5.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU6.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU7.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU8.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA2.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA3.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA4.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL6.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL7.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL8.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL9.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL10.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL11.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA5.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA6.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA7.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL12.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL13.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL14.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA8.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA9.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA10.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA11.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA12.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA13.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA14.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA15.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA16.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL15.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL16.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL17.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL18.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL19.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL20.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL21.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL22.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL23.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA17.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA18.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA19.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA20.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA21.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA22.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA23.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA24.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA25.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA26.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA27.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA28.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA29.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA30.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA31.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA32.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA33.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA34.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA35.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA36.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA37.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA38.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA39.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA40.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA41.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA42.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA43.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA44.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA45.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTL24.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTL25.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTL26.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA46.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA47.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA48.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL27.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL28.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL29.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA49.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA50.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA51.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL30.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL31.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL32.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA52.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA53.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA54.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL33.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL34.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL35.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA55.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA56.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA57.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL36.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL37.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL38.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL39.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL40.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL41.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA58.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA59.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA60.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA61.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA62.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA63.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA64.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA65.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA66.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA67.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA68.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA69.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA70.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA71.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA72.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA73.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA74.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA75.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA76.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA77.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA78.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA79.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA80.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA81.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA82.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA83.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA84.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA85.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA86.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA87.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA88.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA89.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA90.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA91.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA92.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA93.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA94.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA95.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA96.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA97.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA98.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA99.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA100.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA101.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA102.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA103.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA104.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA105.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA106.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA107.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA108.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA109.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA110.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA111.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA112.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA113.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
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
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[21].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[22].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[23].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[24].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[24].olnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of apu_hit_switch.ma
