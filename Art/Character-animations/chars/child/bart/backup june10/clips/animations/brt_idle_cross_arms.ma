//Maya ASCII 4.0 scene
//Name: brt_idle_cross_arms.ma
//Last modified: Tue, May 28, 2002 03:13:53 PM
requires maya "4.0";
requires "p3dSimpleShader" "16.4";
requires "p3dDeformer" "16.0.0.1";
requires "p3dmayaexp" "16.15";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_idle_cross_armsSource";
	setAttr ".ihi" 0;
	setAttr ".du" 59;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTL -n "animCurveTL2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 60 ".ktv[0:59]"  0 -0.049449375655084442 1 -0.049721760403372554 
		2 -0.050495533851702058 3 -0.051705624805270668 4 -0.05328696206927612 5 
		-0.055174474448916148 6 -0.05730309074938849 7 -0.059607739775890865 8 -0.062023350333620997 
		9 -0.064484851227776641 10 -0.066927171263555504 11 -0.069285239246155345 
		12 -0.071493983980773834 13 -0.073488334272608771 14 -0.075203218926857857 
		15 -0.076573566748718805 16 -0.077685452056153806 17 -0.078674723583876782 
		18 -0.079550971762213082 19 -0.080323787021488041 20 -0.081002759792027035 
		21 -0.081597480504155412 22 -0.082117539588198521 23 -0.082572527474481711 
		24 -0.082972034593330343 25 -0.083325651375069767 26 -0.08364296825002536 
		27 -0.083933575648522427 28 -0.084207064000886372 29 -0.084473023737442518 
		30 -0.084741045288516226 31 -0.085051402189485203 32 -0.085421900760150965 
		33 -0.085828430607474596 34 -0.08624688133841725 35 -0.086653142559939958 
		36 -0.087023103879003916 37 -0.087332654902570167 38 -0.087557685237599867 
		39 -0.087674084491054072 40 -0.087657742269893896 41 -0.087484548181080465 
		42 -0.08713039183157488 43 -0.086571162828338238 44 -0.085782750778331654 
		45 -0.084741045288516226 46 -0.083266637740074145 47 -0.081258933855213086 
		48 -0.078812044752432336 49 -0.076020081550231253 50 -0.072977155367109164 
		51 -0.069777377321565373 52 -0.066514858532099236 53 -0.063283710117210068 
		54 -0.060178043195397192 55 -0.05729196888515993 56 -0.054719598304997633 
		57 -0.052555042573409601 58 -0.050892412808895171 59 -0.049825820129953673;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 60 ".ktv[0:59]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0 56 0 57 0 58 0 59 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 60 ".ktv[0:59]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0 56 0 57 0 58 0 59 0;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 60 ".ktv[0:59]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0 56 0 57 0 58 0 59 0;
createNode animCurveTU -n "animCurveTU1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTU -n "animCurveTU2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTU -n "animCurveTU3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTU -n "animCurveTU4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTU -n "animCurveTU5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  10 0;
createNode animCurveTU -n "animCurveTU6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  10 0;
createNode animCurveTU -n "animCurveTU7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  10 1;
createNode animCurveTU -n "animCurveTU8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  10 1;
createNode animCurveTA -n "animCurveTA2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTL -n "animCurveTL6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTL -n "animCurveTL7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTL -n "animCurveTL8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTL -n "animCurveTL9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.26454016861507795;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.13806192026723146;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.064904406754016042;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -25.948901905116401;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.21594587158542247 60 0.21594587158542247;
createNode animCurveTL -n "Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.1380615615975922 60 0.1380615615975922;
createNode animCurveTL -n "Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.00078430246903575811 60 0.00078430246903575811;
createNode animCurveTA -n "animCurveTA8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 10 0 15 -7.2798940962875394 
		20 0 25 -7.2798940962875394 30 0 35 -7.2798940962875394 40 0 45 -7.2798940962875394 
		50 0 60 0;
	setAttr -s 11 ".kit[1:10]"  3 9 9 9 1 9 1 
		9 3 3;
	setAttr -s 11 ".kot[1:10]"  3 9 9 1 9 1 9 
		1 3 3;
	setAttr -s 11 ".kix[5:10]"  0.79526150226593018 1 0.79526150226593018 
		1 1 1;
	setAttr -s 11 ".kiy[5:10]"  0.60626649856567383 0 0.60626649856567383 
		0 0 0;
	setAttr -s 11 ".kox[4:10]"  1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[4:10]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA9";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 10 2.2610583274718352 15 2.2610583274718352 
		20 2.2610583274718352 25 2.2610583274718352 30 2.2610583274718352 35 2.2610583274718352 
		40 2.2610583274718352 45 2.2610583274718352 50 2.2610583274718352 60 0;
createNode animCurveTA -n "animCurveTA10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 10 0 15 0 20 0 25 0 30 0 35 
		0 40 0 45 0 50 0 60 0;
	setAttr -s 11 ".kit[5:10]"  1 9 1 9 9 3;
	setAttr -s 11 ".kot[4:10]"  1 9 1 9 1 9 3;
	setAttr -s 11 ".kix[5:10]"  1 1 1 1 1 1;
	setAttr -s 11 ".kiy[5:10]"  0 0 0 0 0 0;
	setAttr -s 11 ".kox[4:10]"  1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[4:10]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "brt_Right_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  59 0;
createNode animCurveTA -n "brt_Right_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  59 0;
createNode animCurveTA -n "brt_Right_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  59 0;
createNode animCurveTA -n "brt_Left_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  59 0;
createNode animCurveTA -n "brt_Left_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  59 0;
createNode animCurveTA -n "brt_Left_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  59 0;
createNode animCurveTL -n "animCurveTL15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.076472881617957691 15 -0.11842012618894319 
		30 -0.13105103631099885 45 -0.13105103631099885 60 -0.076472881617957691;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.93105416142265018 15 0.9363308360410727 
		30 0.93752785944497652 45 0.93752785944497652 60 0.93105416142265018;
	setAttr -s 5 ".kit[0:4]"  3 1 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 1 9 9 3;
	setAttr -s 5 ".kix[1:4]"  0.76361232995986938 0.99291175603866577 
		0.83945107460021973 1;
	setAttr -s 5 ".kiy[1:4]"  0.64567500352859497 0.118853859603405 
		-0.54343527555465698 0;
	setAttr -s 5 ".kox[1:4]"  0.76361221075057983 0.99291175603866577 
		0.83945107460021973 1;
	setAttr -s 5 ".koy[1:4]"  0.64567512273788452 0.118853859603405 
		-0.54343527555465698 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL23";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 15 0 30 0 45 0 60 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA17";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.62843630316474508 15 -1.223760251804686 
		30 -3.1262260775670354 45 -3.1262260775670354 60 -0.62843630316474508;
	setAttr -s 5 ".kit[0:4]"  3 9 1 1 3;
	setAttr -s 5 ".kot[0:4]"  3 9 1 1 3;
	setAttr -s 5 ".kix[2:4]"  0.99885684251785278 0.99859750270843506 
		1;
	setAttr -s 5 ".kiy[2:4]"  -0.047802340239286423 0.052943665534257889 
		0;
	setAttr -s 5 ".kox[2:4]"  0.99885684251785278 0.99859750270843506 
		1;
	setAttr -s 5 ".koy[2:4]"  -0.047802343964576721 0.052943669259548187 
		0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -5.8284402688137158 15 6.3155431865299905 
		30 9.5967624665856519 45 7.4576069588812697 60 -5.8284402688137158;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.2956360193097458 15 1.3777581486258552 
		30 0.7006906673623895 45 -0.58305962652720178 60 -1.2956360193097458;
	setAttr -s 5 ".kit[0:4]"  3 9 1 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 1 9 3;
	setAttr -s 5 ".kix[2:4]"  0.99870043992996216 0.99939358234405518 
		1;
	setAttr -s 5 ".kiy[2:4]"  -0.050965134054422379 -0.034821342676877975 
		0;
	setAttr -s 5 ".kox[2:4]"  0.99870043992996216 0.99939358234405518 
		1;
	setAttr -s 5 ".koy[2:4]"  -0.050965119153261185 -0.034821342676877975 
		0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA23";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA24";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA27";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA28";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA31";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA33";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA35";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA38";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA39";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 10 0 15 0 20 0 25 0 30 0 35 
		0 40 0 45 0 50 0 60 0;
	setAttr -s 11 ".kit[5:10]"  1 9 1 9 1 9;
	setAttr -s 11 ".kot[4:10]"  1 9 1 9 1 9 9;
	setAttr -s 11 ".kix[5:10]"  1 1 1 1 1 1;
	setAttr -s 11 ".kiy[5:10]"  0 0 0 0 0 0;
	setAttr -s 11 ".kox[4:10]"  1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[4:10]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 10 0 15 0 20 0 25 0 30 0 35 
		0 40 0 45 0 50 0 60 0;
	setAttr -s 11 ".kit[5:10]"  1 9 1 9 1 9;
	setAttr -s 11 ".kot[4:10]"  1 9 1 9 1 9 9;
	setAttr -s 11 ".kix[5:10]"  1 1 1 1 1 1;
	setAttr -s 11 ".kiy[5:10]"  0 0 0 0 0 0;
	setAttr -s 11 ".kox[4:10]"  1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[4:10]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 10 0 15 -18.791657964758038 
		20 0 25 -18.791657964758038 30 0 35 -18.791657964758038 40 0 45 -18.791657964758038 
		50 0 60 0;
	setAttr -s 11 ".kit[1:10]"  3 9 9 9 1 9 1 
		9 3 9;
	setAttr -s 11 ".kot[1:10]"  3 9 9 1 9 1 9 
		1 3 9;
	setAttr -s 11 ".kix[5:10]"  0.45302867889404297 1 0.45302867889404297 
		1 1 1;
	setAttr -s 11 ".kiy[5:10]"  0.89149594306945801 0 0.89149594306945801 
		0 0 0;
	setAttr -s 11 ".kox[4:10]"  1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[4:10]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL24";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0.27773886459742925;
createNode animCurveTA -n "animCurveTA46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 -1.8121934161072303e-015;
createNode animCurveTA -n "animCurveTA47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 28.652637602052774;
createNode animCurveTA -n "animCurveTA48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 64.676908227303443;
createNode animCurveTL -n "animCurveTL27";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0.5198069948790518;
createNode animCurveTL -n "animCurveTL28";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0.36439499068905612;
createNode animCurveTA -n "animCurveTA49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 7.7976222737965299;
createNode animCurveTA -n "animCurveTA50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 -30.409274105849079;
createNode animCurveTA -n "animCurveTA51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 -64.859940280210878;
createNode animCurveTL -n "animCurveTL30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.8448236677023373 5 -0.84838028772310492 
		10 -0.78757423628342293 15 -0.25998645194602721 21 -0.027206887923790602 
		31 -0.027206887923790602 41 -0.027206887923790602 50 -0.027206887923790602 
		55 -0.84701790067429528 60 -0.8448236677023373;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 1 9 9 
		1 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 1 9 9 
		1 9 3;
	setAttr -s 10 ".kix[4:9]"  0.18217343091964722 1 1 0.043317284435033798 
		0.0040768557228147984 1;
	setAttr -s 10 ".kiy[4:9]"  0.98326641321182251 0 0 -0.99906134605407715 
		-0.99999171495437622 0;
	setAttr -s 10 ".kox[4:9]"  0.18217338621616364 1 1 0.04331737756729126 
		0.0040768557228147984 1;
	setAttr -s 10 ".koy[4:9]"  0.98326641321182251 0 0 -0.99906134605407715 
		-0.99999171495437622 0;
createNode animCurveTL -n "animCurveTL31";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  -0.015 0.90872944911288844 5 1.0102119112446639 
		10 1.6079673012408211 15 1.7637904535066815 21 1.5684015558947173 31 1.602592637190227 
		41 1.5819534137440414 50 1.6230171358116454 55 1.1130766158049077 60 0.9087508731906353;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 1 9 9 
		1 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 1 9 9 
		1 9 3;
	setAttr -s 10 ".kix[4:9]"  0.172037273645401 0.44141659140586853 
		0.29617294669151306 0.079041518270969391 0.0046667428687214851 1;
	setAttr -s 10 ".kiy[4:9]"  0.98509043455123901 0.89730226993560791 
		0.95513433218002319 -0.99687135219573975 -0.9999890923500061 0;
	setAttr -s 10 ".kox[4:9]"  0.17203725874423981 0.44141659140586853 
		0.29617294669151306 0.079041391611099243 0.0046667428687214851 1;
	setAttr -s 10 ".koy[4:9]"  0.98509043455123901 0.89730226993560791 
		0.95513433218002319 -0.99687135219573975 -0.9999890923500061 0;
createNode animCurveTL -n "animCurveTL32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.097994651149805143 5 0.014526639752709044 
		10 0.79426402016119324 15 0.85312877488953354 21 0.64336259536183449 31 0.64336259536183449 
		41 0.64336259536183449 50 0.64336259536183449 55 0.24282853829194814 60 -0.097994651149805143;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 1 9 9 
		1 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 1 9 9 
		1 9 3;
	setAttr -s 10 ".kix[4:9]"  0.11951851844787598 1 1 0.05454263836145401 
		0.0044962121173739433 1;
	setAttr -s 10 ".kiy[4:9]"  -0.99283194541931152 0 0 -0.99851143360137939 
		-0.99998986721038818 0;
	setAttr -s 10 ".kox[4:9]"  0.11951851099729538 1 1 0.054542623460292816 
		0.0044962121173739433 1;
	setAttr -s 10 ".koy[4:9]"  -0.99283194541931152 0 0 -0.99851143360137939 
		-0.99998986721038818 0;
createNode animCurveTA -n "animCurveTA52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 5.4739599453216474 5 32.279700379003529 
		10 180.58276798197898 15 132.76395835411358 21 110.44988134107956 31 110.44988134107956 
		41 110.44988134107956 50 110.44988134107956 55 -2.2927388702499623 60 5.4739599453216474;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 8.5874521608419823 5 16.4262675564473 
		10 56.941659029039315 15 31.769705374226945 21 -11.59397602025189 31 -11.59397602025189 
		41 -11.59397602025189 50 -11.59397602025189 55 30.699352207790149 60 8.5874521608419823;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 74.754744621954103 5 106.41362112712329 
		10 260.62242296365764 15 224.04887650686916 21 212.41945749647491 31 212.41945749647491 
		41 212.41945749647491 50 212.41945749647491 55 65.27202242494738 60 74.754744621954103;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTL -n "animCurveTL33";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.61083301393139333 5 0.62891549121193224 
		10 0.52570014717856695 15 -0.13771873630564049 21 -0.14231908890179057 31 
		-0.14231908890179057 41 -0.14231908890179057 50 -0.079254060815180827 55 
		0.16773636205314049 60 0.61083301393139333;
	setAttr -s 10 ".kit[0:9]"  3 9 9 1 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 1 9 9 9 
		9 9 3;
	setAttr -s 10 ".kix[3:9]"  0.023710936307907104 0.75722378492355347 
		1 0.099922835826873779 0.01504936721175909 0.0048302519135177135 1;
	setAttr -s 10 ".kiy[3:9]"  -0.99971884489059448 -0.65315556526184082 
		0 0.99499517679214478 0.99988675117492676 0.99998831748962402 0;
	setAttr -s 10 ".kox[3:9]"  0.023711027577519417 0.75722378492355347 
		1 0.099922835826873779 0.01504936721175909 0.0048302519135177135 1;
	setAttr -s 10 ".koy[3:9]"  -0.99971884489059448 -0.65315556526184082 
		0 0.99499517679214478 0.99988675117492676 0.99998831748962402 0;
createNode animCurveTL -n "animCurveTL34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.89950600418209226 5 0.94296683240475521 
		10 1.1891680946352812 15 1.6120864642598844 21 1.6405234038554088 31 1.6747144851509186 
		41 1.654075261704733 50 1.695138983772337 55 1.418647312178587 60 0.89950600418209226;
	setAttr -s 10 ".kit[0:9]"  3 9 9 1 9 9 9 
		1 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 1 9 9 9 
		1 9 3;
	setAttr -s 10 ".kix[3:9]"  0.01967453770339489 0.084851779043674469 
		0.44141659140586853 0.29617294669151306 0.12176531553268433 0.0041894996538758278 
		1;
	setAttr -s 10 ".kiy[3:9]"  0.99980646371841431 0.99639356136322021 
		0.89730226993560791 0.95513433218002319 -0.99255889654159546 -0.99999123811721802 
		0;
	setAttr -s 10 ".kox[3:9]"  0.019674500450491905 0.084851779043674469 
		0.44141659140586853 0.29617294669151306 0.12176530063152313 0.0041894996538758278 
		1;
	setAttr -s 10 ".koy[3:9]"  0.99980646371841431 0.99639356136322021 
		0.89730226993560791 0.95513433218002319 -0.99255889654159546 -0.99999123811721802 
		0;
createNode animCurveTL -n "animCurveTL35";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.14314299916678522 5 0.16382014806777453 
		10 0.28636618836408273 15 0.60329161305266032 21 0.4652882288442543 31 0.4652882288442543 
		41 0.4652882288442543 50 0.4652882288442543 55 0.56266645961780914 60 0.14314299916678522;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 1 9 9 
		1 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 1 9 9 
		1 9 3;
	setAttr -s 10 ".kix[4:9]"  0.16831877827644348 1 1 0.37388178706169128 
		0.010346746072173119 1;
	setAttr -s 10 ".kiy[4:9]"  -0.98573261499404907 0 0 0.92747634649276733 
		-0.9999464750289917 0;
	setAttr -s 10 ".kox[4:9]"  0.16831906139850616 1 1 0.37388169765472412 
		0.010346746072173119 1;
	setAttr -s 10 ".koy[4:9]"  -0.9857325553894043 0 0 0.92747640609741211 
		-0.9999464750289917 0;
createNode animCurveTA -n "animCurveTA55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 16.226511010665405 5 24.896880996838096 
		10 61.210300116078706 15 99.521668452979853 21 121.89599856082206 31 121.89599856082206 
		41 121.89599856082206 50 121.89599856082206 55 106.9359668929157 60 16.226511010665405;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -8.513966085499284 5 -14.22382614726861 
		10 -54.98777795777977 15 -0.98507049139631042 21 -12.149108870768639 31 -12.149108870768639 
		41 -12.149108870768639 50 -12.149108870768639 55 -32.814476342145916 60 -8.513966085499284;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -68.213989601412422 5 -76.456444974908621 
		10 -136.48456473419179 15 -206.48524503721305 21 -203.29120036803459 31 -203.29120036803459 
		41 -203.29120036803459 50 -203.29120036803459 55 -166.22490415097107 60 -68.213989601412422;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTL -n "animCurveTL36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  5 0 10 0.31710470074166763 15 1.2256788930971547 
		21 1.5171522511733002 31 1.5572749798749685 41 1.5363943336460724 50 1.5212183008567339 
		55 1.2952217959274686 60 0;
	setAttr -s 9 ".kit[6:8]"  1 9 3;
	setAttr -s 9 ".kot[6:8]"  1 9 3;
	setAttr -s 9 ".kix[6:8]"  0.050438899546861649 0.0021912208758294582 
		1;
	setAttr -s 9 ".kiy[6:8]"  -0.99872714281082153 -0.99999761581420898 
		0;
	setAttr -s 9 ".kox[6:8]"  0.050438880920410156 0.0021912208758294582 
		1;
	setAttr -s 9 ".koy[6:8]"  -0.99872714281082153 -0.99999761581420898 
		0;
createNode animCurveTL -n "animCurveTL37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  5 0 10 0.24464943742684664 15 0.1862680062623677 
		21 0.10695269876113767 31 0.030494779911733442 41 0.025778897945535565 50 
		0.010558093003018989 55 -0.46020695507723786 60 0;
	setAttr -s 9 ".kit[6:8]"  1 9 3;
	setAttr -s 9 ".kot[6:8]"  1 9 3;
	setAttr -s 9 ".kix[6:8]"  0.053113639354705811 0.30106553435325623 
		1;
	setAttr -s 9 ".kiy[6:8]"  -0.99858850240707397 -0.95360344648361206 
		0;
	setAttr -s 9 ".kox[6:8]"  0.053113717585802078 0.30106553435325623 
		1;
	setAttr -s 9 ".koy[6:8]"  -0.9985884428024292 -0.95360344648361206 
		0;
createNode animCurveTL -n "animCurveTL38";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  5 -1 10 -0.96143413746999729 15 
		-0.90773216417899838 21 -0.8333977064549154 31 -0.82096380365450128 41 -0.82596790216054328 
		50 -0.82959972541710425 55 -0.88630243968386679 60 -1;
	setAttr -s 9 ".kit[6:8]"  1 9 3;
	setAttr -s 9 ".kot[6:8]"  1 9 3;
	setAttr -s 9 ".kix[6:8]"  0.28835967183113098 0.019558042287826538 
		1;
	setAttr -s 9 ".kiy[6:8]"  -0.95752215385437012 -0.99980872869491577 
		0;
	setAttr -s 9 ".kox[6:8]"  0.28835940361022949 0.019558042287826538 
		1;
	setAttr -s 9 ".koy[6:8]"  -0.95752227306365967 -0.99980872869491577 
		0;
createNode animCurveTL -n "animCurveTL39";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  5 -0.10167917362943303 10 -0.40877243219549636 
		15 -0.65359418851315265 21 -0.98436559810727331 31 -1.0270564190147833 41 
		-1.0045825283408019 50 -0.98657886387897775 55 -0.48870235713586341 60 -0.10167917362943303;
	setAttr -s 9 ".kit[0:8]"  3 9 9 1 9 9 1 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 1 9 9 1 
		9 3;
	setAttr -s 9 ".kix[3:8]"  0.020270666107535362 0.31316900253295898 
		0.15458452701568604 0.040039025247097015 0.0037668785080313683 1;
	setAttr -s 9 ".kiy[3:8]"  -0.99979454278945923 -0.94969743490219116 
		0.98797959089279175 0.99919813871383667 0.99999290704727173 0;
	setAttr -s 9 ".kox[3:8]"  0.020270658656954765 0.31316900253295898 
		0.15458452701568604 0.040038995444774628 0.0037668785080313683 1;
	setAttr -s 9 ".koy[3:8]"  -0.99979454278945923 -0.94969743490219116 
		0.98797959089279175 0.99919813871383667 0.99999290704727173 0;
createNode animCurveTL -n "animCurveTL40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  5 -0.40762644910266188 10 -0.59940194116858625 
		15 -0.26880155647808318 21 0.038547690004545394 31 0.073998624851055614 41 
		0.10425334407820948 50 0.091017998562394009 55 -0.16035120724676089 60 -0.40762644910266188;
	setAttr -s 9 ".kit[0:8]"  3 9 9 1 9 9 1 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 1 9 9 1 
		9 3;
	setAttr -s 9 ".kix[3:8]"  0.032908625900745392 0.10094434022903442 
		0.3487599790096283 0.10742662847042084 0.0066846404224634171 1;
	setAttr -s 9 ".kiy[3:8]"  0.99945837259292603 0.99489206075668335 
		0.93721204996109009 -0.9942130446434021 -0.99997764825820923 0;
	setAttr -s 9 ".kox[3:8]"  0.032908689230680466 0.10094434022903442 
		0.3487599790096283 0.10742667317390442 0.0066846404224634171 1;
	setAttr -s 9 ".koy[3:8]"  0.99945837259292603 0.99489206075668335 
		0.93721204996109009 -0.99421298503875732 -0.99997764825820923 0;
createNode animCurveTL -n "animCurveTL41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  5 -0.93129112588482243 10 -0.68389243875768391 
		15 -0.80113032230194781 21 -0.86851673906318283 31 -0.87720565895249825 41 
		-0.87450871781833361 50 -0.87058408749397431 55 -1.2331111070605574 60 -0.93129112588482243;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 1 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 1 
		9 3;
	setAttr -s 9 ".kix[6:8]"  0.091279901564121246 0.054825924336910248 
		1;
	setAttr -s 9 ".kiy[6:8]"  -0.99582529067993164 -0.99849593639373779 
		0;
	setAttr -s 9 ".kox[6:8]"  0.091279909014701843 0.054825924336910248 
		1;
	setAttr -s 9 ".koy[6:8]"  -0.99582529067993164 -0.99849593639373779 
		0;
createNode animCurveTA -n "animCurveTA58";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 12.253734489678925 15 2.5080130201733613 
		35 8.9711994505746979 60 12.253734489678925;
	setAttr -s 4 ".kit[1:3]"  9 1 3;
	setAttr -s 4 ".kot[1:3]"  9 1 3;
	setAttr -s 4 ".kix[2:3]"  0.98217999935150146 1;
	setAttr -s 4 ".kiy[2:3]"  0.18794278800487518 0;
	setAttr -s 4 ".kox[2:3]"  0.98217999935150146 1;
	setAttr -s 4 ".koy[2:3]"  0.18794280290603638 0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA59";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -65.746751280844961 15 -66.23189068800383 
		35 -65.911934826160262 60 -65.746751280844961;
	setAttr -s 4 ".kit[0:3]"  3 1 1 3;
	setAttr -s 4 ".kot[0:3]"  3 1 1 3;
	setAttr -s 4 ".kix[1:3]"  0.99999308586120605 0.99996083974838257 
		1;
	setAttr -s 4 ".kiy[1:3]"  -0.0037223771214485168 0.0088514136150479317 
		0;
	setAttr -s 4 ".kox[1:3]"  0.99999308586120605 0.99996083974838257 
		1;
	setAttr -s 4 ".koy[1:3]"  -0.0037223771214485168 0.0088514126837253571 
		0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.871449260799477e-015 15 10.66049297399303 
		35 2.7123737418397913 60 3.871449260799477e-015;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.061808866237337522 15 -1.8696893211112606 
		40 -9.4806490727460329 60 -0.061808866237337522;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA62";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -59.058178941076754 15 -58.016233844005519 
		40 -57.82222388892724 60 -59.058178941076754;
	setAttr -s 4 ".kit[0:3]"  3 1 1 3;
	setAttr -s 4 ".kot[0:3]"  3 1 1 3;
	setAttr -s 4 ".kix[1:3]"  0.9993630051612854 0.99966120719909668 
		1;
	setAttr -s 4 ".kiy[1:3]"  0.035688102245330811 -0.026029288768768311 
		0;
	setAttr -s 4 ".kox[1:3]"  0.9993630051612854 0.99966120719909668 
		1;
	setAttr -s 4 ".koy[1:3]"  0.035688098520040512 -0.026029288768768311 
		0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA63";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 16.579147429757843 15 19.186045316761614 
		40 26.120893869188869 60 16.579147429757843;
	setAttr -s 4 ".kit[1:3]"  1 9 3;
	setAttr -s 4 ".kot[1:3]"  1 9 3;
	setAttr -s 4 ".kix[1:3]"  0.98076349496841431 0.99954026937484741 
		1;
	setAttr -s 4 ".kiy[1:3]"  0.19519966840744019 -0.030318690463900566 
		0;
	setAttr -s 4 ".kox[1:3]"  0.98076349496841431 0.99954026937484741 
		1;
	setAttr -s 4 ".koy[1:3]"  0.19519966840744019 -0.030318690463900566 
		0;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.5572674112203622 15 11.258794193049559 
		35 20.489010807363705 60 8.5572674112203622;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.711328223519057 10 15.711328223519057 
		20 15.711328223519057 30 15.711328223519057 40 15.711328223519057 50 15.711328223519057 
		60 15.711328223519057;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 15.821664458316235 40 14.533232671953092 
		60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 40 -5.5539031469783557 
		60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 15 0 40 -1.4372191713728382 
		60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 10.423754966968488 10 10.423754966968488 
		20 10.423754966968488 30 10.423754966968488 40 10.423754966968488 50 10.423754966968488 
		60 10.423754966968488;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.722848255843903 10 27.722848255843903 
		20 27.722848255843903 30 27.722848255843903 40 27.722848255843903 50 27.722848255843903 
		60 27.722848255843903;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA74";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 21.576484776388227 10 21.576484776388227 
		20 21.576484776388227 30 21.576484776388227 40 21.576484776388227 50 21.576484776388227 
		60 21.576484776388227;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA75";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA76";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.080064458283051 10 27.080064458283051 
		20 27.080064458283051 30 27.080064458283051 40 27.080064458283051 50 27.080064458283051 
		60 27.080064458283051;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA83";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 13.994403295754109;
createNode animCurveTA -n "animCurveTA84";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA85";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 0;
createNode animCurveTA -n "animCurveTA86";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  9 13.994403295754109;
createNode animCurveTA -n "animCurveTA87";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 60 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA88";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 60 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA89";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.911632519594587 20 -0.67634283285596541 
		60 27.911632519594587;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA90";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA91";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA92";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA93";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.65073001024951671 10 -0.56759285525053427 
		20 -0.65719875860049726 30 -0.56759285525053427 40 -0.65719875860049726 50 
		-0.56759285525053427 60 -0.65073001024951671;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA94";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -4.2368721935960929 10 -4.2828905650316926 
		20 -4.1887753598478321 30 -4.2828905650316926 40 -4.1887753598478321 50 -4.2828905650316926 
		60 -4.2368721935960929;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA95";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.6995264082587447 10 0.15684458218149316 
		20 2.98208980282637 30 0.15684458218149316 40 2.98208980282637 50 0.15684458218149316 
		60 2.6995264082587447;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA96";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA97";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA98";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 8.9251701322399404e-015 1 -0.28506669068955542 
		2 -1.0795876976311931 3 -2.2972066713670785 4 -3.8390429419880818 5 -5.5812044553483311 
		6 -7.374702436404192 7 -9.0547532150682883 8 -10.570606218560437 9 -11.963074938175126 
		10 -13.201611303951195 11 -14.256738438744859 12 -15.100205496977802 13 -15.704430203105847 
		14 -16.042697373681893 15 -16.089056178855941 16 -15.75964692665193 17 -14.953605191125822 
		18 -13.989503936548534 19 -13.20976148631444 20 -12.599295920635489 21 -12.142885828505435 
		22 -11.82525489911559 23 -11.631323904800663 24 -11.546038099381613 25 -11.554343035174341 
		26 -11.641167667867977 27 -11.791415018356322 28 -11.989960911635324 29 -12.221661404097986 
		30 -12.47136943390564 31 -12.720359923158627 32 -12.95476175840982 33 -13.166734522937329 
		34 -13.348421777452337 35 -13.49191632444597 36 -13.589234978776044 37 -13.632303341415174 
		38 -13.612950873090341 39 -13.522916490638517 40 -13.35386496327642 41 -13.097555634588861 
		42 -12.745584665768323 43 -11.811911843362198 44 -9.9926107027336322 45 -7.5577907353450096 
		46 -4.8415597030949797 47 -2.1551209551261623 48 0.26501799457900643 49 2.1968058779390236 
		50 3.438028324475046 51 3.9707744290274718 52 3.9913820991716613 53 3.6276321765084987 
		54 3.0015524483261506 55 2.2313210462408848 56 1.4851684307669255 57 0.8677109454462103 
		58 0.40008054339979415 59 0.10364149317824818 60 8.9251701322399404e-015;
createNode animCurveTA -n "Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 -7.2005835300832052e-015 1 -0.47221051975711037 
		2 -1.7261960509306011 3 -3.5243303942643038 4 -5.62040973054786 5 -7.7473263552809479 
		6 -9.6144991446140704 7 -10.912328955458875 8 -11.81871260325617 9 -12.715761603254442 
		10 -13.590466814909524 11 -14.429919699336931 12 -15.222090518991811 13 -15.956047208583835 
		14 -16.622101727309293 15 -17.211820885424508 16 -17.670288278866323 17 -17.927370862296307 
		18 -18.09081258406205 19 -18.284757087988435 20 -18.503570222436508 21 -18.74157643603332 
		22 -18.992946915176024 23 -19.251824570064176 24 -19.512336788620136 25 -19.768574119258592 
		26 -20.014577523263839 27 -20.244334389812156 28 -20.451783485228642 29 -20.630828959840144 
		30 -20.775363469146676 31 -20.877948040708802 32 -20.934861166527767 33 -20.945609354536842 
		34 -20.909709063321497 35 -20.826658706756632 36 -20.695918397353498 37 -20.516898039634228 
		38 -20.288954562432483 39 -20.011399290239261 40 -19.683516711333173 41 -19.304551509918348 
		42 -18.873596584917021 43 -17.865386787655932 44 -15.933473586415126 45 -13.347884419610441 
		46 -10.412523154163564 47 -7.417911102644088 48 -4.6113968443384135 49 -2.2298672302727756 
		50 -0.49502388869809549 51 0.59117418998459204 52 1.2233344406246081 53 1.4841393642678202 
		54 1.45229755027296 55 1.2027823205035308 56 0.86340601547972062 57 0.53792497180657239 
		58 0.26215885507535436 59 0.071285211988364891 60 -7.2005835300832052e-015;
createNode animCurveTA -n "Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 6.6786334979782902 1 6.9632918522749536 
		2 7.7007975279180467 3 8.7039423704373799 4 9.793306151586199 5 10.818628613570651 
		6 11.670250291912504 7 12.281978903839956 8 12.694966323853189 9 12.963059965483156 
		10 13.072537697304172 11 13.022332825028005 12 12.842126038330434 13 12.570156088955084 
		14 12.247542529248932 15 11.917348626092156 16 11.613760799961138 17 11.363865641758183 
		18 11.182311907646007 19 11.073270614090356 20 11.053934967927884 21 11.134397394039039 
		22 11.299249590768873 23 11.527649766861757 24 11.798824689892747 25 12.092035869846312 
		26 12.386550122550977 27 12.661614844735627 28 12.896438461155327 29 13.070176533677472 
		30 13.161923936840518 31 13.15826128077517 32 13.073642613449824 33 12.928900214699349 
		34 12.744778001784949 35 12.541862712333597 36 12.340514237909519 37 12.160795605870405 
		38 12.022402848389611 39 11.944594771933529 40 11.946122453699395 41 12.03962041585185 
		42 12.211416365620325 43 12.465501746492201 44 12.759860752632244 45 13.002252027023498 
		46 13.111410995568514 47 13.022988691947504 48 12.711850213574053 49 12.201884019483568 
		50 11.565064868383409 51 10.875631084051809 52 10.168358069942293 53 9.4795198795803692 
		54 8.8348850308841183 55 8.2504812508182876 56 7.733507314238409 57 7.2989132106988723 
		58 6.9662092698200526 59 6.7535410110553968 60 6.6786334979782902;
createNode animCurveTA -n "animCurveTA99";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.8903601258661931 10 -1.874610877599076 
		20 -1.8970838135102988 30 -1.874610877599076 40 -1.8970838135102988 50 -1.874610877599076 
		60 -1.8903601258661931;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.5597289571479034 10 2.6319880365042492 
		20 2.5247080677125848 30 2.6319880365042492 40 2.5247080677125848 50 2.6319880365042492 
		60 2.5597289571479034;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.016811087403604 10 2.8113975041174442 
		20 1.5705932342953803 30 2.8113975041174442 40 1.5705932342953803 50 2.8113975041174442 
		60 2.016811087403604;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 33.429092416277157 10 33.429092416277157 
		20 33.429092416277157 30 33.429092416277157 40 33.429092416277157 50 33.429092416277157 
		60 33.429092416277157;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.2533422302317216 10 8.2533422302317216 
		20 8.2533422302317216 30 8.2533422302317216 40 8.2533422302317216 50 8.2533422302317216 
		60 8.2533422302317216;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 23.263402056531085 10 23.263402056531085 
		20 23.263402056531085 30 23.263402056531085 40 23.263402056531085 50 23.263402056531085 
		60 23.263402056531085;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 20.166277752815617 10 20.166277752815617 
		20 20.166277752815617 30 20.166277752815617 40 20.166277752815617 50 20.166277752815617 
		60 20.166277752815617;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 20 0 30 0 40 0 50 0 60 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 17.254116939558369 10 17.254116939558369 
		20 17.254116939558369 30 17.254116939558369 40 17.254116939558369 50 17.254116939558369 
		60 17.254116939558369;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode clipLibrary -n "clipLibrary2";
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
	setAttr ".o" 59;
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
	setAttr -s 218 ".gn";
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
connectAttr "brt_idle_cross_armsSource.st" "clipLibrary2.st[0]";
connectAttr "brt_idle_cross_armsSource.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL1.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL2.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary2.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary2.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary2.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU1.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU2.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU3.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU4.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU5.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU6.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU7.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU8.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA2.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA3.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA4.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL6.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL7.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL8.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL9.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL10.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL11.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA5.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA6.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA7.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "Left_Foot_Hoop_translateX.a" "clipLibrary2.cel[0].cev[26].cevr"
		;
connectAttr "Left_Foot_Hoop_translateY.a" "clipLibrary2.cel[0].cev[27].cevr"
		;
connectAttr "Left_Foot_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[28].cevr"
		;
connectAttr "animCurveTA8.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA9.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA10.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA11.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA12.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA13.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA14.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA15.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA16.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "brt_Right_Toe_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[38].cevr"
		;
connectAttr "brt_Right_Toe_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[39].cevr"
		;
connectAttr "brt_Right_Toe_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[40].cevr"
		;
connectAttr "brt_Left_Toe_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[41].cevr"
		;
connectAttr "brt_Left_Toe_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[42].cevr"
		;
connectAttr "brt_Left_Toe_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[43].cevr"
		;
connectAttr "animCurveTL15.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL16.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL17.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTL18.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTL19.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTL20.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTL21.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL22.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL23.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA17.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA18.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA19.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA20.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA21.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA22.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA23.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA24.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA25.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA26.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA27.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA28.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA29.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA30.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA31.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA32.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA33.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA34.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA35.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA36.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA37.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA38.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA39.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTA40.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA41.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA42.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA43.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA44.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA45.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL24.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL25.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL26.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA46.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA47.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA48.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL27.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL28.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL29.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA49.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA50.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA51.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL30.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL31.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL32.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA52.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA53.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA54.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL33.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL34.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL35.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTA55.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTA56.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTA57.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTL36.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTL37.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTL38.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTL39.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTL40.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTL41.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA58.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA59.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA60.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA61.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA62.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA63.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA64.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA65.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA66.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA67.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA68.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA69.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA70.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA71.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA72.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA73.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA74.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA75.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA76.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA77.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA78.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA79.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA80.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA81.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA82.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA83.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA84.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA85.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA86.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA87.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA88.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA89.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA90.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA91.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA92.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA93.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA94.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA95.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA96.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA97.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA98.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "Head_rotateX.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "Head_rotateY.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "Head_rotateZ.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA99.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA100.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA101.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA102.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA103.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA104.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA105.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA106.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA107.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA108.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA109.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA110.a" "clipLibrary2.cel[0].cev[167].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[11].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[11].olnk";
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
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[25].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[26].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[27].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[28].llnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of brt_idle_cross_arms.ma
