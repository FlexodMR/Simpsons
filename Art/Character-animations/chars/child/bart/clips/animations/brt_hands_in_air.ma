//Maya ASCII 4.0 scene
//Name: brt_hands_in_air.ma
//Last modified: Tue, May 27, 2003 01:46:01 PM
requires maya "4.0";
requires "p3dDeformer" "2.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_hands_in_airSource";
	setAttr ".ihi" 0;
	setAttr ".du" 61;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL411";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 1 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.016331154853105545;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.99986666440963745;
	setAttr -s 3 ".kox[1:2]"  1 0.016331154853105545;
	setAttr -s 3 ".koy[1:2]"  0 -0.99986666440963745;
createNode animCurveTL -n "animCurveTL412";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 62 ".ktv[0:61]"  0 -0.033880036066693167 1 -0.033025341612693201 
		2 -0.032056033590775378 3 -0.031040880146116757 4 -0.030048649423894413 5 
		-0.029148109569285399 6 -0.028408028727466787 7 -0.027897175043615632 8 -0.027684316662909002 
		9 -0.027649278632806733 10 -0.027625815791430877 11 -0.027613590997354578 
		12 -0.027612267109150969 13 -0.027621506985393177 14 -0.02764097348465433 
		15 -0.027670329465507574 16 -0.027709237786526026 17 -0.02775736130628283 
		18 -0.027814362883351117 19 -0.027879905376304009 20 -0.027953651643714647 
		21 -0.028035264544156165 22 -0.028124406936201694 23 -0.028220741678424359 
		24 -0.028323931629397295 25 -0.028433639647693642 26 -0.028549528591886517 
		27 -0.02867126132054907 28 -0.028798500692254422 29 -0.028930909565575709 
		30 -0.029068150799086062 31 -0.029209887251358615 32 -0.029355781780966494 
		33 -0.029505497246482843 34 -0.029658696506480783 35 -0.029815042419533446 
		36 -0.029974197844213974 37 -0.030135825639095497 38 -0.030299588662751138 
		39 -0.030465149773754033 40 -0.030632171830677325 41 -0.030800317692094129 
		42 -0.030969250216577589 43 -0.03113863226270084 44 -0.031308126689037 45 
		-0.031477396354159207 46 -0.031646104116640601 47 -0.031813912835054303 48 
		-0.03198048536797346 49 -0.032145484573971185 50 -0.032308573311620625 51 
		-0.032469414439494908 52 -0.032627670816167166 53 -0.032783005300210534 54 
		-0.032935080750198138 55 -0.033083560024703119 56 -0.033228105982298597 57 
		-0.033368381481557713 58 -0.033504049381053592 59 -0.033634772539359377 60 
		-0.033760213815048193 61 -0.033880036066693167;
createNode animCurveTL -n "brt_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTL -n "Motion_Root_translateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 62 ".ktv[0:61]"  0 0 1 -8.2557159731264396e-007 
		2 -1.7674208660673134e-006 3 -2.7557811980532751e-006 4 -3.7208859850597968e-006 
		5 -4.5929686188761448e-006 6 -5.3022624912915856e-006 7 -5.779000994095387e-006 
		8 -5.953417519076821e-006 9 -5.9492186915397496e-006 10 -5.9367821642653006e-006 
		11 -5.9163478702586167e-006 12 -5.8881557425248415e-006 13 -5.8524457140691176e-006 
		14 -5.8094577178965902e-006 15 -5.7594316870124037e-006 16 -5.7026075544216991e-006 
		17 -5.6392252531296233e-006 18 -5.5695247161413174e-006 19 -5.4937458764619248e-006 
		20 -5.4121286670965924e-006 21 -5.3249130210504605e-006 22 -5.2323388713286741e-006 
		23 -5.1346461509363778e-006 24 -5.0320747928787125e-006 25 -4.9248647301608243e-006 
		26 -4.8132558957878575e-006 27 -4.6974882227649531e-006 28 -4.5778016440972564e-006 
		29 -4.4544360927899109e-006 30 -4.3276315018480609e-006 31 -4.1976278042768492e-006 
		32 -4.0646649330814185e-006 33 -3.9289828212669147e-006 34 -3.7908214018384803e-006 
		35 -3.650420607801259e-006 36 -3.5080203721603941e-006 37 -3.3638606279210298e-006 
		38 -3.2181813080883103e-006 39 -3.0712223456673785e-006 40 -2.923223673663378e-006 
		41 -2.7744252250814528e-006 42 -2.6250669329267463e-006 43 -2.4753887302044031e-006 
		44 -2.3256305499195652e-006 45 -2.1760323250773788e-006 46 -2.0268339886829833e-006 
		47 -1.8782754737415273e-006 48 -1.7305967132581513e-006 49 -1.5840376402379995e-006 
		50 -1.4388381876862172e-006 51 -1.2952382886079463e-006 52 -1.15347787600833e-006 
		53 -1.013796882892514e-006 54 -8.7643524226564089e-007 55 -7.4163288713285415e-007 
		56 -6.0962975049929848e-007 57 -4.8066576537011636e-007 58 -3.5498086475045153e-007 
		59 -2.3281498164544749e-007 60 -1.1440804906024975e-007 61 0;
createNode animCurveTA -n "brt_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  11 0;
createNode animCurveTU -n "animCurveTU81";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 58 0 61 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU82";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 58 0 61 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU83";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 58 0 61 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU84";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 58 0 61 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 0;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU85";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 54 1 61 0;
	setAttr -s 4 ".kit[0:3]"  1 2 2 1;
	setAttr -s 4 ".kot[0:3]"  9 2 2 5;
	setAttr -s 4 ".kix[0:3]"  0 0.16439899802207947 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0.98639392852783203 0 0;
createNode animCurveTU -n "animCurveTU86";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 54 1 61 0;
	setAttr -s 4 ".kit[0:3]"  1 2 2 1;
	setAttr -s 4 ".kot[0:3]"  9 2 2 5;
	setAttr -s 4 ".kix[0:3]"  0 0.16439899802207947 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0.98639392852783203 0 0;
createNode animCurveTU -n "animCurveTU87";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 61 1;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU88";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 61 1;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1138";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1139";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1140";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL416";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL417";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL418";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.26454016861507795 61 -0.26454016861507795;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.21854541072049752 61 0.21854541072049752;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.064904406754016042 61 -0.064904406754016042;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -25.948901905116401 61 -25.948901905116401;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.21594587158542247 61 0.21594587158542247;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.21854505205085809 61 0.21854505205085809;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.00078430246903575811 61 0.00078430246903575811;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1147";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1148";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1149";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1150";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1151";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1152";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL425";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL426";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL427";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 61 1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL428";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL429";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL430";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 61 1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL431";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.076472881617957691 8 -0.0624881114845676 
		61 -0.076472881617957691;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 0.96365845203399658 0.78407478332519531;
	setAttr -s 3 ".kiy[0:2]"  0 0.26713743805885315 -0.62066632509231567;
	setAttr -s 3 ".kox[1:2]"  0.96365845203399658 0.78407478332519531;
	setAttr -s 3 ".koy[1:2]"  0.26713737845420837 -0.62066632509231567;
createNode animCurveTL -n "animCurveTL432";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.95473100313980441 12 0.93887706450668784 
		61 0.95473100313980441;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.71755880117416382;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.69649797677993774;
	setAttr -s 3 ".kox[1:2]"  1 0.71755880117416382;
	setAttr -s 3 ".koy[1:2]"  0 0.69649797677993774;
createNode animCurveTL -n "animCurveTL433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 -1.3437854442138843e-005 
		61 0;
	setAttr -s 3 ".kit[0:2]"  1 3 9;
	setAttr -s 3 ".kot[1:2]"  3 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99999970197677612;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.00076063303276896477;
createNode animCurveTA -n "animCurveTA1159";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.62843630316474508 8 0 61 -0.62843630316474508;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 0.99999964237213135 0.99998074769973755;
	setAttr -s 3 ".kiy[0:2]"  0 0.00082834408385679126 -0.0062083425000309944;
	setAttr -s 3 ".kox[1:2]"  0.99999964237213135 0.99998074769973755;
	setAttr -s 3 ".koy[1:2]"  0.000828344258479774 -0.0062083425000309944;
createNode animCurveTA -n "animCurveTA1160";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -5.8284402688137167 12 -1.4988364009460737 
		61 -5.8284402688137167;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99893152713775635;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.046215370297431946;
	setAttr -s 3 ".kox[1:2]"  1 0.99893152713775635;
	setAttr -s 3 ".koy[1:2]"  0 -0.046215370297431946;
createNode animCurveTA -n "animCurveTA1161";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.295636019309746 12 -0.16644135264068233 
		61 -1.295636019309746;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99992722272872925;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.012065344490110874;
	setAttr -s 3 ".kox[1:2]"  1 0.99992722272872925;
	setAttr -s 3 ".koy[1:2]"  0 -0.012065344490110874;
createNode animCurveTA -n "animCurveTA1162";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1163";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1164";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1165";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1166";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1167";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1168";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1169";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1170";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1171";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1172";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1173";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1174";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1175";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1176";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1177";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1178";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1179";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1180";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1181";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1182";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1183";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1184";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1185";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1186";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1187";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL434";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.43524234076486068 12 -0.22164053326398034 
		61 -0.43524234076486068;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.076243698596954346;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.9970892071723938;
	setAttr -s 3 ".kox[1:2]"  1 0.076243698596954346;
	setAttr -s 3 ".koy[1:2]"  0 -0.9970892071723938;
createNode animCurveTL -n "animCurveTL435";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.82665738350180629 12 -0.9417076481617882 
		61 -0.82665738350180629;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.14055755734443665;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99007248878479004;
	setAttr -s 3 ".kox[1:2]"  1 0.14055755734443665;
	setAttr -s 3 ".koy[1:2]"  0 0.99007248878479004;
createNode animCurveTL -n "animCurveTL436";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.27773886459742925 12 0.038362195289875119 
		61 0.27773886459742925;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.068074487149715424;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99768024682998657;
	setAttr -s 3 ".kox[1:2]"  1 0.068074487149715424;
	setAttr -s 3 ".koy[1:2]"  0 0.99768024682998657;
createNode animCurveTA -n "animCurveTA1188";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.8121934161072299e-015 12 6.7230119492284173 
		61 1.8121934161072299e-015;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99742943048477173;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.071655347943305969;
	setAttr -s 3 ".kox[1:2]"  1 0.99742943048477173;
	setAttr -s 3 ".koy[1:2]"  0 -0.071655347943305969;
createNode animCurveTA -n "animCurveTA1189";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 28.652637602052774 12 19.839511008631867 
		61 28.652637602052774;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99559485912322998;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.093759477138519287;
	setAttr -s 3 ".kox[1:2]"  1 0.99559485912322998;
	setAttr -s 3 ".koy[1:2]"  0 0.093759477138519287;
createNode animCurveTA -n "animCurveTA1190";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 64.676908227303443 12 76.90743997913691 
		61 64.676908227303443;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99156773090362549;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.12958963215351105;
	setAttr -s 3 ".kox[1:2]"  1 0.99156773090362549;
	setAttr -s 3 ".koy[1:2]"  0 -0.12958963215351105;
createNode animCurveTL -n "animCurveTL437";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.5198069948790518 12 0.20623790699604494 
		61 0.5198069948790518;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.052017945796251297;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99864614009857178;
	setAttr -s 3 ".kox[1:2]"  1 0.052017945796251297;
	setAttr -s 3 ".koy[1:2]"  0 0.99864614009857178;
createNode animCurveTL -n "animCurveTL438";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.72394202659893114 12 -0.94615818397708606 
		61 -0.72394202659893114;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.073304258286952972;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99730962514877319;
	setAttr -s 3 ".kox[1:2]"  1 0.073304258286952972;
	setAttr -s 3 ".koy[1:2]"  0 0.99730962514877319;
createNode animCurveTL -n "animCurveTL439";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.36439499068905612 12 0.023808763748733922 
		61 0.36439499068905612;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.047901473939418793;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99885207414627075;
	setAttr -s 3 ".kox[1:2]"  1 0.047901473939418793;
	setAttr -s 3 ".koy[1:2]"  0 0.99885207414627075;
createNode animCurveTA -n "animCurveTA1191";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.7976222737965317 12 8.1910546202722809 
		61 7.7976222737965317;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99999117851257324;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.0042040585540235043;
	setAttr -s 3 ".kox[1:2]"  1 0.99999117851257324;
	setAttr -s 3 ".koy[1:2]"  0 -0.0042040585540235043;
createNode animCurveTA -n "animCurveTA1192";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -30.409274105849079 12 -16.680769289981995 
		61 -30.409274105849079;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.989410400390625;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.14514505863189697;
	setAttr -s 3 ".kox[1:2]"  1 0.989410400390625;
	setAttr -s 3 ".koy[1:2]"  0 -0.14514505863189697;
createNode animCurveTA -n "animCurveTA1193";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -64.859940280210893 12 -64.609749241846473 
		61 -64.859940280210893;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99999642372131348;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.0026734541170299053;
	setAttr -s 3 ".kox[1:2]"  1 0.99999642372131348;
	setAttr -s 3 ".koy[1:2]"  0 -0.0026734541170299053;
createNode animCurveTL -n "animCurveTL440";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.8448236677023373 12 -0.8448236677023373 
		61 -0.8448236677023373;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL441";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.0304014029588007 12 1.5117481219250299 
		61 1.0304014029588007;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.033913057297468185;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.99942481517791748;
	setAttr -s 3 ".kox[1:2]"  1 0.033913057297468185;
	setAttr -s 3 ".koy[1:2]"  0 -0.99942481517791748;
createNode animCurveTL -n "animCurveTL442";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.097994651149805143 12 -0.097994651149805143 
		61 -0.097994651149805143;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1194";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5.4739599453216465 12 5.4739599453216474 
		61 5.4739599453216465;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1195";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.5874521608419823 12 8.5874521608419823 
		61 8.5874521608419823;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1196";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 74.754744621954103 12 74.754744621954103 
		61 74.754744621954103;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL443";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.61083301393139333 12 0.61083301393139333 
		61 0.61083301393139333;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL444";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.0211562878106184 12 1.4644416293758407 
		61 1.0211562878106184;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.036821108311414719;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.99932187795639038;
	setAttr -s 3 ".kox[1:2]"  1 0.036821108311414719;
	setAttr -s 3 ".koy[1:2]"  0 -0.99932187795639038;
createNode animCurveTL -n "animCurveTL445";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.14314299916678522 12 0.14314299916678522 
		61 0.14314299916678522;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1197";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.226511010665412 12 16.226511010665405 
		61 16.226511010665412;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1198";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -8.5139660854992858 12 -8.513966085499284 
		61 -8.5139660854992858;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1199";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -68.213989601412422 12 -68.213989601412422 
		61 -68.213989601412422;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL446";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL447";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL448";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 12 -1 61 -1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL449";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.10167917362943303 12 -0.10167917362943303 
		61 -0.10167917362943303;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL450";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.40762644910266188 12 -0.40762644910266188 
		61 -0.40762644910266188;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL451";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.93129112588482243 12 -0.93129112588482243 
		61 -0.93129112588482243;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1200";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 12.253734489678925 8 -90.005729278608698 
		25 -93.467114565593391 36 14.418922422521037 61 12.253734489678925;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.97906523942947388 0.99758011102676392 
		0.98401868343353271 0.99897336959838867;
	setAttr -s 5 ".kiy[0:4]"  0 -0.20354679226875305 0.069526262581348419 
		0.17806518077850342 -0.045301035046577454;
	setAttr -s 5 ".kox[1:4]"  0.97906523942947388 0.99758011102676392 
		0.98401874303817749 0.99897336959838867;
	setAttr -s 5 ".koy[1:4]"  -0.20354659855365753 0.069526270031929016 
		0.17806504666805267 -0.045301035046577454;
createNode animCurveTA -n "animCurveTA1201";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -65.746751280844975 8 -0.069942733381151215 
		25 1.4293062841250359 36 -61.762998029348438 61 -65.746751280844975;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99314075708389282 0.9996153712272644 
		0.98913168907165527 0.99653732776641846;
	setAttr -s 5 ".kiy[0:4]"  0 0.11692513525485992 -0.027732782065868378 
		-0.1470324844121933 -0.083146624267101288;
	setAttr -s 5 ".kox[1:4]"  0.99314075708389282 0.9996153712272644 
		0.98913168907165527 0.99653732776641846;
	setAttr -s 5 ".koy[1:4]"  0.11692504584789276 -0.02773270383477211 
		-0.14703242480754852 -0.083146624267101288;
createNode animCurveTA -n "animCurveTA1202";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 54.789426905158599 25 56.704156536635139 
		36 2.3305587031107948 61 0;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99674636125564575 0.99420112371444702 
		0.9990394115447998 0.99881088733673096;
	setAttr -s 5 ".kiy[0:4]"  0 0.08060193806886673 -0.10753674060106277 
		-0.04382125660777092 -0.048753064125776291;
	setAttr -s 5 ".kox[1:4]"  0.99674636125564575 0.99420112371444702 
		0.9990394115447998 0.99881088733673096;
	setAttr -s 5 ".koy[1:4]"  0.080602101981639862 -0.10753679275512695 
		-0.043821267783641815 -0.048753064125776291;
createNode animCurveTA -n "animCurveTA1203";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.061808866237340665 10 -81.771152040162676 
		27 -84.760739265447768 38 38.863267594760607 61 -0.061808866237340665;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.96152293682098389 0.99173492193222046 
		0.98734778165817261 0.74843156337738037;
	setAttr -s 5 ".kiy[0:4]"  0 -0.27472460269927979 0.12830360233783722 
		0.15856964886188507 -0.66321200132369995;
	setAttr -s 5 ".kox[1:4]"  0.96152293682098389 0.99173498153686523 
		0.98734778165817261 0.74843156337738037;
	setAttr -s 5 ".koy[1:4]"  -0.27472460269927979 0.12830346822738647 
		0.15856972336769104 -0.66321200132369995;
createNode animCurveTA -n "animCurveTA1204";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -59.058178941076754 10 -3.5463797425114216 
		27 -2.0811709332847266 38 -57.882585412493874 61 -59.058178941076754;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99704438447952271 0.99730414152145386 
		0.99377197027206421 0.99964207410812378;
	setAttr -s 5 ".kiy[0:4]"  0 0.076828032732009888 -0.073378928005695343 
		-0.1114327609539032 -0.026753000915050507;
	setAttr -s 5 ".kox[1:4]"  0.99704438447952271 0.99730414152145386 
		0.99377197027206421 0.99964207410812378;
	setAttr -s 5 ".koy[1:4]"  0.076828055083751678 -0.073379024863243103 
		-0.11143285781145096 -0.026753000915050507;
createNode animCurveTA -n "animCurveTA1205";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.57914742975785 10 54.868872452761224 
		27 56.702772296813698 38 -18.866719640021529 61 16.57914742975785;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99814242124557495 0.99829530715942383 
		0.99886417388916016 0.77823072671890259;
	setAttr -s 5 ".kiy[0:4]"  0 0.060923308134078979 -0.058364830911159515 
		-0.047648422420024872 0.62797850370407104;
	setAttr -s 5 ".kox[1:4]"  0.99814242124557495 0.99829530715942383 
		0.99886417388916016 0.77823072671890259;
	setAttr -s 5 ".koy[1:4]"  0.060923304408788681 -0.058364734053611755 
		-0.047648169100284576 0.62797850370407104;
createNode animCurveTA -n "animCurveTA1206";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.5572674112203639 8 44.248403669348306 
		25 47.131996798220236 36 28.552082121692614 61 8.5572674112203639;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.98025113344192505 0.99928927421569824 
		0.8592376708984375 0.9223865270614624;
	setAttr -s 5 ".kiy[0:4]"  0 0.19775661826133728 -0.037695560604333878 
		-0.51157665252685547 -0.38626819849014282;
	setAttr -s 5 ".kox[1:4]"  0.98025113344192505 0.99928927421569824 
		0.8592376708984375 0.9223865270614624;
	setAttr -s 5 ".koy[1:4]"  0.19775666296482086 -0.037695560604333878 
		-0.51157659292221069 -0.38626819849014282;
createNode animCurveTA -n "animCurveTA1207";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 15.711328223519061 10 44.918626893145863 
		27 47.650310591871502 38 25.623538652095867 61 15.711328223519061;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99786579608917236 0.99983888864517212 
		0.99933052062988281 0.97547310590744019;
	setAttr -s 5 ".kiy[0:4]"  0 0.065297976136207581 -0.017951039597392082 
		-0.036585364490747452 -0.22011853754520416;
	setAttr -s 5 ".kox[1:4]"  0.99786579608917236 0.99983888864517212 
		0.99933052062988281 0.97547310590744019;
	setAttr -s 5 ".koy[1:4]"  0.065297938883304596 -0.017951037734746933 
		-0.036585327237844467 -0.22011853754520416;
createNode animCurveTA -n "animCurveTA1208";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 -41.52024023179203 25 -43.096335155602219 
		36 0 61 0;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.97723424434661865 0.99117159843444824 
		0.99588632583618164 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.21216326951980591 0.13258518278598785 
		0.090611234307289124 0;
	setAttr -s 5 ".kox[1:4]"  0.97723424434661865 0.99117159843444824 
		0.99588632583618164 1;
	setAttr -s 5 ".koy[1:4]"  -0.21216323971748352 0.13258524239063263 
		0.090611167252063751 0;
createNode animCurveTA -n "animCurveTA1209";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 -4.2777956276568041 25 -4.4408602814348832 
		36 0 61 0;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99968802928924561 0.99990487098693848 
		0.99993962049484253 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.024977661669254303 0.013793935067951679 
		0.010987896472215652 0;
	setAttr -s 5 ".kox[1:4]"  0.99968802928924561 0.99990487098693848 
		0.99993962049484253 1;
	setAttr -s 5 ".koy[1:4]"  -0.024977665394544601 0.013793937861919403 
		0.010987889021635056 0;
createNode animCurveTA -n "animCurveTA1210";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 15.058606036615975 25 15.627492389621372 
		36 0 61 0;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99164551496505737 0.98960483074188232 
		0.99595141410827637 1;
	setAttr -s 5 ".kiy[0:4]"  0 0.12899290025234222 -0.14381332695484161 
		-0.089892923831939697 0;
	setAttr -s 5 ".kox[1:4]"  0.99164551496505737 0.98960483074188232 
		0.99595141410827637 1;
	setAttr -s 5 ".koy[1:4]"  0.12899294495582581 -0.14381331205368042 
		-0.089892871677875519 0;
createNode animCurveTA -n "animCurveTA1211";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 -34.326489759145112 27 -35.627586597175409 
		38 0 61 0;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99312245845794678 0.99825793504714966 
		0.99886053800582886 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.11708047986030579 0.059000600129365921 
		0.047724027186632156 0;
	setAttr -s 5 ".kox[1:4]"  0.993122398853302 0.99825793504714966 
		0.99886053800582886 1;
	setAttr -s 5 ".koy[1:4]"  -0.11708056926727295 0.059000600129365921 
		0.047724075615406036 0;
createNode animCurveTA -n "animCurveTA1212";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 -3.645152809835289 27 -3.783573612556832 
		38 0 61 0;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.9997897744178772 0.99995940923690796 
		0.99998712539672852 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.020502891391515732 0.0090124532580375671 
		0.0050747450441122055 0;
	setAttr -s 5 ".kox[1:4]"  0.9997897744178772 0.99995940923690796 
		0.99998712539672852 1;
	setAttr -s 5 ".koy[1:4]"  -0.02050289697945118 0.0090124504640698433 
		0.005074747372418642 0;
createNode animCurveTA -n "animCurveTA1213";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 15.222895136731713 27 15.800968360708902 
		38 0 61 0;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99550193548202515 0.99782103300094604 
		0.99850064516067505 1;
	setAttr -s 5 ".kiy[0:4]"  0 0.094741456210613251 -0.065978884696960449 
		-0.054739564657211304 0;
	setAttr -s 5 ".kox[1:4]"  0.99550193548202515 0.99782103300094604 
		0.99850064516067505 1;
	setAttr -s 5 ".koy[1:4]"  0.094741500914096832 -0.065978899598121643 
		-0.05473964661359787 0;
createNode animCurveTA -n "animCurveTA1214";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 143.71460997127252 12 10.423754966968488 
		61 143.71460997127252;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.57461363077163696;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.81842482089996338;
	setAttr -s 3 ".kox[1:2]"  1 0.57461363077163696;
	setAttr -s 3 ".koy[1:2]"  0 0.81842482089996338;
createNode animCurveTA -n "animCurveTA1215";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.804554996454378 12 27.722848255843903 
		61 27.804554996454378;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99999964237213135;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.00087309250375255942;
	setAttr -s 3 ".kox[1:2]"  1 0.99999964237213135;
	setAttr -s 3 ".koy[1:2]"  0 0.00087309250375255942;
createNode animCurveTA -n "animCurveTA1216";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 29.452980944098744 12 21.576484776388227 
		61 29.452980944098744;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99647676944732666;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.08386925607919693;
	setAttr -s 3 ".kox[1:2]"  1 0.99647676944732666;
	setAttr -s 3 ".koy[1:2]"  0 0.08386925607919693;
createNode animCurveTA -n "animCurveTA1217";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1218";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1219";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.080064458283051 12 24.142023336040538 
		61 27.080064458283051;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99950754642486572;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.031379532068967819;
	setAttr -s 3 ".kox[1:2]"  1 0.99950754642486572;
	setAttr -s 3 ".koy[1:2]"  0 0.031379532068967819;
createNode animCurveTA -n "animCurveTA1220";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1221";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1222";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1223";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1224";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1225";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 13.994403295754109 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.98900300264358521;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.14789536595344543;
	setAttr -s 3 ".kox[1:2]"  1 0.98900300264358521;
	setAttr -s 3 ".koy[1:2]"  0 -0.14789536595344543;
createNode animCurveTA -n "animCurveTA1226";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1227";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1228";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 12 13.994403295754109 
		61 13.994403295754109;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1229";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1230";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1231";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.911632519594587 12 13.591953037160911 
		61 27.911632519594587;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.98849475383758545;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.15125516057014465;
	setAttr -s 3 ".kox[1:2]"  1 0.98849475383758545;
	setAttr -s 3 ".koy[1:2]"  0 0.15125516057014465;
createNode animCurveTA -n "animCurveTA1232";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1233";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1234";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1235";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.65073001024951671 8 0.28995767731376854 
		19 0.2873348169567555 61 -0.65073001024951671;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99999034404754639 0.99999856948852539 
		0.99993163347244263;
	setAttr -s 4 ".kiy[0:3]"  0 0.0043980446644127369 0.0016959982458502054 
		-0.011693714186549187;
	setAttr -s 4 ".kox[1:3]"  0.99999034404754639 0.99999856948852539 
		0.99993163347244263;
	setAttr -s 4 ".koy[1:3]"  0.0043980446644127369 0.0016959982458502054 
		-0.011693714186549187;
createNode animCurveTA -n "animCurveTA1236";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -4.2368721935960938 8 -0.05764371332848333 
		61 -4.2368721935960938;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 0.99971705675125122 0.99914878606796265;
	setAttr -s 3 ".kiy[0:2]"  0 0.02378566563129425 -0.041252382099628448;
	setAttr -s 3 ".kox[1:2]"  0.99971705675125122 0.99914878606796265;
	setAttr -s 3 ".koy[1:2]"  0.02378566563129425 -0.041252382099628448;
createNode animCurveTA -n "animCurveTA1237";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.6995264082587447 8 -11.105009457960078 
		19 -11.002697314036686 61 2.6995264082587447;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.98194891214370728 0.97411555051803589 
		0.9857218861579895;
	setAttr -s 4 ".kiy[0:3]"  0 -0.18914642930030823 0.22605064511299133 
		0.16838166117668152;
	setAttr -s 4 ".kox[1:3]"  0.98194891214370728 0.97411555051803589 
		0.9857218861579895;
	setAttr -s 4 ".koy[1:3]"  -0.18914638459682465 0.22605063021183014 
		0.16838166117668152;
createNode animCurveTA -n "animCurveTA1238";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 -12.232006021280865 17 -20.043030460313254 
		23 3.9348748215921283 29 -35.433553790028228 34 2.6381560942851188 40 -18.283780484097328 
		46 4.5452679091120451 52 -5.2614810286041314 61 0;
	setAttr -s 10 ".kit[0:9]"  1 9 1 3 9 3 3 
		3 3 9;
	setAttr -s 10 ".kot[0:9]"  9 9 1 3 9 3 3 
		3 3 9;
	setAttr -s 10 ".kix[0:9]"  0 0.8509209156036377 0.99849331378936768 
		1 0.99810051918029785 1 1 1 1 0.95620578527450562;
	setAttr -s 10 ".kiy[0:9]"  0 -0.52529382705688477 0.054873719811439514 
		0 -0.061606425791978836 0 0 0 0 0.29269513487815857;
	setAttr -s 10 ".kox[2:9]"  0.99849331378936768 1 0.99810051918029785 
		1 1 1 1 0.95620578527450562;
	setAttr -s 10 ".koy[2:9]"  0.054873686283826828 0 -0.061606425791978836 
		0 0 0 0 0.29269513487815857;
createNode animCurveTA -n "animCurveTA1239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 9.3988195031388226 17 8.7815889917281034 
		34 5.3236696794447811 61 0;
	setAttr -s 5 ".kit[0:4]"  1 1 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99998986721038818 0.99710899591445923 
		0.99458414316177368 0.99471300840377808;
	setAttr -s 5 ".kiy[0:4]"  0 0.0045005856081843376 -0.075984813272953033 
		-0.10393470525741577 -0.10269369184970856;
	setAttr -s 5 ".kox[1:4]"  0.99998986721038818 0.99710899591445923 
		0.99458414316177368 0.99471300840377808;
	setAttr -s 5 ".koy[1:4]"  0.0045005832798779011 -0.075984813272953033 
		-0.10393470525741577 -0.10269369184970856;
createNode animCurveTA -n "animCurveTA1240";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 -15.336112958913231 17 -28.915329755414401 
		34 20.738323067541259 61 0;
	setAttr -s 5 ".kit[1:4]"  9 1 1 9;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.74677813053131104 0.99712228775024414 
		0.99501162767410278 0.92778116464614868;
	setAttr -s 5 ".kiy[0:4]"  0 -0.6650732159614563 0.075809910893440247 
		0.099759288132190704 -0.37312474846839905;
	setAttr -s 5 ".kox[2:4]"  0.99712228775024414 0.99501162767410278 
		0.92778116464614868;
	setAttr -s 5 ".koy[2:4]"  0.075809888541698456 0.099759265780448914 
		-0.37312474846839905;
createNode animCurveTA -n "animCurveTA1241";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 -4.9367554394300077 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.9986114501953125;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.052679385989904404;
	setAttr -s 3 ".kox[1:2]"  1 0.9986114501953125;
	setAttr -s 3 ".koy[1:2]"  0 0.052679385989904404;
createNode animCurveTA -n "animCurveTA1242";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 -8.6986303327609935 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99570786952972412;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.092551901936531067;
	setAttr -s 3 ".kox[1:2]"  1 0.99570786952972412;
	setAttr -s 3 ".koy[1:2]"  0 0.092551901936531067;
createNode animCurveTA -n "animCurveTA1243";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 6.6786334979782902 12 17.455917002855632 
		61 6.6786334979782902;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99343401193618774;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.11440654844045639;
	setAttr -s 3 ".kox[1:2]"  1 0.99343401193618774;
	setAttr -s 3 ".koy[1:2]"  0 -0.11440654844045639;
createNode animCurveTA -n "animCurveTA1244";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.8903601258661935 8 -0.084403384769551629 
		61 -1.8903601258661935;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 0.99999880790710449 0.99984085559844971;
	setAttr -s 3 ".kiy[0:2]"  0 0.0015377671224996448 -0.017838608473539352;
	setAttr -s 3 ".kox[1:2]"  0.99999880790710449 0.99984085559844971;
	setAttr -s 3 ".koy[1:2]"  0.0015377666568383574 -0.017838608473539352;
createNode animCurveTA -n "animCurveTA1245";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.5597289571479038 8 -0.0096315142018246151 
		61 2.5597289571479038;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 0.99999934434890747 0.99967801570892334;
	setAttr -s 3 ".kiy[0:2]"  0 -0.0011610276997089386 0.025375109165906906;
	setAttr -s 3 ".kox[1:2]"  0.99999934434890747 0.99967801570892334;
	setAttr -s 3 ".koy[1:2]"  -0.0011610288638621569 0.025375109165906906;
createNode animCurveTA -n "animCurveTA1246";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.0168110874036049 8 3.1864510624231084 
		19 3.2879119301481907 61 2.0168110874036049;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99999326467514038 0.99997597932815552 
		0.99987447261810303;
	setAttr -s 4 ".kiy[0:3]"  0 0.0036695115268230438 0.0069313296116888523 
		-0.015844365581870079;
	setAttr -s 4 ".kox[1:3]"  0.99999326467514038 0.99997597932815552 
		0.99987447261810303;
	setAttr -s 4 ".koy[1:3]"  0.0036694819573312998 0.0069313277490437031 
		-0.015844365581870079;
createNode animCurveTA -n "animCurveTA1247";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1248";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1249";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 33.429092416277157 12 20.243850441812622 
		61 33.429092416277157;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99021989107131958;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.13951544463634491;
	setAttr -s 3 ".kox[1:2]"  1 0.99021989107131958;
	setAttr -s 3 ".koy[1:2]"  0 0.13951544463634491;
createNode animCurveTA -n "animCurveTA1250";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -121.24398976748977 12 8.2533422302317216 
		61 -121.24398976748977;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.58572608232498169;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.8105090856552124;
	setAttr -s 3 ".kox[1:2]"  1 0.58572608232498169;
	setAttr -s 3 ".koy[1:2]"  0 -0.8105090856552124;
createNode animCurveTA -n "animCurveTA1251";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 28.612774017129329 12 23.263402056531085 
		61 28.612774017129329;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99837028980255127;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.057068571448326111;
	setAttr -s 3 ".kox[1:2]"  1 0.99837028980255127;
	setAttr -s 3 ".koy[1:2]"  0 0.057068571448326111;
createNode animCurveTA -n "animCurveTA1252";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 17.632837226638049 12 20.166277752815617 
		61 17.632837226638049;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.9996337890625;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.027061644941568375;
	setAttr -s 3 ".kox[1:2]"  1 0.9996337890625;
	setAttr -s 3 ".koy[1:2]"  0 -0.027061644941568375;
createNode animCurveTA -n "animCurveTA1253";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0.53199349202236168 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99998384714126587;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.0056846253573894501;
	setAttr -s 3 ".kox[1:2]"  1 0.99998384714126587;
	setAttr -s 3 ".koy[1:2]"  0 -0.0056846253573894501;
createNode animCurveTA -n "animCurveTA1254";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0.044350394305774879 61 
		0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99999988079071045;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.00047391449334099889;
	setAttr -s 3 ".kox[1:2]"  1 0.99999988079071045;
	setAttr -s 3 ".koy[1:2]"  0 -0.00047391449334099889;
createNode animCurveTA -n "animCurveTA1255";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 17.254116939558369 12 11.759987102651889 
		61 17.254116939558369;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99828112125396729;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.058607649058103561;
	setAttr -s 3 ".kox[1:2]"  1 0.99828112125396729;
	setAttr -s 3 ".koy[1:2]"  0 0.058607649058103561;
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
connectAttr "brt_hands_in_airSource.st" "clipLibrary3.st[0]";
connectAttr "brt_hands_in_airSource.du" "clipLibrary3.du[0]";
connectAttr "animCurveTL411.a" "clipLibrary3.cel[0].cev[0].cevr";
connectAttr "animCurveTL412.a" "clipLibrary3.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX1.a" "clipLibrary3.cel[0].cev[2].cevr"
		;
connectAttr "brt_Motion_Root_translateY.a" "clipLibrary3.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ1.a" "clipLibrary3.cel[0].cev[4].cevr"
		;
connectAttr "brt_Motion_Root_rotateY.a" "clipLibrary3.cel[0].cev[5].cevr"
		;
connectAttr "animCurveTU81.a" "clipLibrary3.cel[0].cev[6].cevr";
connectAttr "animCurveTU82.a" "clipLibrary3.cel[0].cev[7].cevr";
connectAttr "animCurveTU83.a" "clipLibrary3.cel[0].cev[8].cevr";
connectAttr "animCurveTU84.a" "clipLibrary3.cel[0].cev[9].cevr";
connectAttr "animCurveTU85.a" "clipLibrary3.cel[0].cev[10].cevr";
connectAttr "animCurveTU86.a" "clipLibrary3.cel[0].cev[11].cevr";
connectAttr "animCurveTU87.a" "clipLibrary3.cel[0].cev[12].cevr";
connectAttr "animCurveTU88.a" "clipLibrary3.cel[0].cev[13].cevr";
connectAttr "animCurveTA1138.a" "clipLibrary3.cel[0].cev[14].cevr";
connectAttr "animCurveTA1139.a" "clipLibrary3.cel[0].cev[15].cevr";
connectAttr "animCurveTA1140.a" "clipLibrary3.cel[0].cev[16].cevr";
connectAttr "animCurveTL416.a" "clipLibrary3.cel[0].cev[17].cevr";
connectAttr "animCurveTL417.a" "clipLibrary3.cel[0].cev[18].cevr";
connectAttr "animCurveTL418.a" "clipLibrary3.cel[0].cev[19].cevr";
connectAttr "animCurveTL419.a" "clipLibrary3.cel[0].cev[20].cevr";
connectAttr "animCurveTL420.a" "clipLibrary3.cel[0].cev[21].cevr";
connectAttr "animCurveTL421.a" "clipLibrary3.cel[0].cev[22].cevr";
connectAttr "animCurveTA1141.a" "clipLibrary3.cel[0].cev[23].cevr";
connectAttr "animCurveTA1142.a" "clipLibrary3.cel[0].cev[24].cevr";
connectAttr "animCurveTA1143.a" "clipLibrary3.cel[0].cev[25].cevr";
connectAttr "animCurveTL422.a" "clipLibrary3.cel[0].cev[26].cevr";
connectAttr "animCurveTL423.a" "clipLibrary3.cel[0].cev[27].cevr";
connectAttr "animCurveTL424.a" "clipLibrary3.cel[0].cev[28].cevr";
connectAttr "animCurveTA1144.a" "clipLibrary3.cel[0].cev[29].cevr";
connectAttr "animCurveTA1145.a" "clipLibrary3.cel[0].cev[30].cevr";
connectAttr "animCurveTA1146.a" "clipLibrary3.cel[0].cev[31].cevr";
connectAttr "animCurveTA1147.a" "clipLibrary3.cel[0].cev[32].cevr";
connectAttr "animCurveTA1148.a" "clipLibrary3.cel[0].cev[33].cevr";
connectAttr "animCurveTA1149.a" "clipLibrary3.cel[0].cev[34].cevr";
connectAttr "animCurveTA1150.a" "clipLibrary3.cel[0].cev[35].cevr";
connectAttr "animCurveTA1151.a" "clipLibrary3.cel[0].cev[36].cevr";
connectAttr "animCurveTA1152.a" "clipLibrary3.cel[0].cev[37].cevr";
connectAttr "animCurveTA1153.a" "clipLibrary3.cel[0].cev[38].cevr";
connectAttr "animCurveTA1154.a" "clipLibrary3.cel[0].cev[39].cevr";
connectAttr "animCurveTA1155.a" "clipLibrary3.cel[0].cev[40].cevr";
connectAttr "animCurveTA1156.a" "clipLibrary3.cel[0].cev[41].cevr";
connectAttr "animCurveTA1157.a" "clipLibrary3.cel[0].cev[42].cevr";
connectAttr "animCurveTA1158.a" "clipLibrary3.cel[0].cev[43].cevr";
connectAttr "animCurveTL425.a" "clipLibrary3.cel[0].cev[44].cevr";
connectAttr "animCurveTL426.a" "clipLibrary3.cel[0].cev[45].cevr";
connectAttr "animCurveTL427.a" "clipLibrary3.cel[0].cev[46].cevr";
connectAttr "animCurveTL428.a" "clipLibrary3.cel[0].cev[47].cevr";
connectAttr "animCurveTL429.a" "clipLibrary3.cel[0].cev[48].cevr";
connectAttr "animCurveTL430.a" "clipLibrary3.cel[0].cev[49].cevr";
connectAttr "animCurveTL431.a" "clipLibrary3.cel[0].cev[50].cevr";
connectAttr "animCurveTL432.a" "clipLibrary3.cel[0].cev[51].cevr";
connectAttr "animCurveTL433.a" "clipLibrary3.cel[0].cev[52].cevr";
connectAttr "animCurveTA1159.a" "clipLibrary3.cel[0].cev[53].cevr";
connectAttr "animCurveTA1160.a" "clipLibrary3.cel[0].cev[54].cevr";
connectAttr "animCurveTA1161.a" "clipLibrary3.cel[0].cev[55].cevr";
connectAttr "animCurveTA1162.a" "clipLibrary3.cel[0].cev[56].cevr";
connectAttr "animCurveTA1163.a" "clipLibrary3.cel[0].cev[57].cevr";
connectAttr "animCurveTA1164.a" "clipLibrary3.cel[0].cev[58].cevr";
connectAttr "animCurveTA1165.a" "clipLibrary3.cel[0].cev[59].cevr";
connectAttr "animCurveTA1166.a" "clipLibrary3.cel[0].cev[60].cevr";
connectAttr "animCurveTA1167.a" "clipLibrary3.cel[0].cev[61].cevr";
connectAttr "animCurveTA1168.a" "clipLibrary3.cel[0].cev[62].cevr";
connectAttr "animCurveTA1169.a" "clipLibrary3.cel[0].cev[63].cevr";
connectAttr "animCurveTA1170.a" "clipLibrary3.cel[0].cev[64].cevr";
connectAttr "animCurveTA1171.a" "clipLibrary3.cel[0].cev[65].cevr";
connectAttr "animCurveTA1172.a" "clipLibrary3.cel[0].cev[66].cevr";
connectAttr "animCurveTA1173.a" "clipLibrary3.cel[0].cev[67].cevr";
connectAttr "animCurveTA1174.a" "clipLibrary3.cel[0].cev[68].cevr";
connectAttr "animCurveTA1175.a" "clipLibrary3.cel[0].cev[69].cevr";
connectAttr "animCurveTA1176.a" "clipLibrary3.cel[0].cev[70].cevr";
connectAttr "animCurveTA1177.a" "clipLibrary3.cel[0].cev[71].cevr";
connectAttr "animCurveTA1178.a" "clipLibrary3.cel[0].cev[72].cevr";
connectAttr "animCurveTA1179.a" "clipLibrary3.cel[0].cev[73].cevr";
connectAttr "animCurveTA1180.a" "clipLibrary3.cel[0].cev[74].cevr";
connectAttr "animCurveTA1181.a" "clipLibrary3.cel[0].cev[75].cevr";
connectAttr "animCurveTA1182.a" "clipLibrary3.cel[0].cev[76].cevr";
connectAttr "animCurveTA1183.a" "clipLibrary3.cel[0].cev[77].cevr";
connectAttr "animCurveTA1184.a" "clipLibrary3.cel[0].cev[78].cevr";
connectAttr "animCurveTA1185.a" "clipLibrary3.cel[0].cev[79].cevr";
connectAttr "animCurveTA1186.a" "clipLibrary3.cel[0].cev[80].cevr";
connectAttr "animCurveTA1187.a" "clipLibrary3.cel[0].cev[81].cevr";
connectAttr "animCurveTL434.a" "clipLibrary3.cel[0].cev[82].cevr";
connectAttr "animCurveTL435.a" "clipLibrary3.cel[0].cev[83].cevr";
connectAttr "animCurveTL436.a" "clipLibrary3.cel[0].cev[84].cevr";
connectAttr "animCurveTA1188.a" "clipLibrary3.cel[0].cev[85].cevr";
connectAttr "animCurveTA1189.a" "clipLibrary3.cel[0].cev[86].cevr";
connectAttr "animCurveTA1190.a" "clipLibrary3.cel[0].cev[87].cevr";
connectAttr "animCurveTL437.a" "clipLibrary3.cel[0].cev[88].cevr";
connectAttr "animCurveTL438.a" "clipLibrary3.cel[0].cev[89].cevr";
connectAttr "animCurveTL439.a" "clipLibrary3.cel[0].cev[90].cevr";
connectAttr "animCurveTA1191.a" "clipLibrary3.cel[0].cev[91].cevr";
connectAttr "animCurveTA1192.a" "clipLibrary3.cel[0].cev[92].cevr";
connectAttr "animCurveTA1193.a" "clipLibrary3.cel[0].cev[93].cevr";
connectAttr "animCurveTL440.a" "clipLibrary3.cel[0].cev[94].cevr";
connectAttr "animCurveTL441.a" "clipLibrary3.cel[0].cev[95].cevr";
connectAttr "animCurveTL442.a" "clipLibrary3.cel[0].cev[96].cevr";
connectAttr "animCurveTA1194.a" "clipLibrary3.cel[0].cev[97].cevr";
connectAttr "animCurveTA1195.a" "clipLibrary3.cel[0].cev[98].cevr";
connectAttr "animCurveTA1196.a" "clipLibrary3.cel[0].cev[99].cevr";
connectAttr "animCurveTL443.a" "clipLibrary3.cel[0].cev[100].cevr";
connectAttr "animCurveTL444.a" "clipLibrary3.cel[0].cev[101].cevr";
connectAttr "animCurveTL445.a" "clipLibrary3.cel[0].cev[102].cevr";
connectAttr "animCurveTA1197.a" "clipLibrary3.cel[0].cev[103].cevr";
connectAttr "animCurveTA1198.a" "clipLibrary3.cel[0].cev[104].cevr";
connectAttr "animCurveTA1199.a" "clipLibrary3.cel[0].cev[105].cevr";
connectAttr "animCurveTL446.a" "clipLibrary3.cel[0].cev[106].cevr";
connectAttr "animCurveTL447.a" "clipLibrary3.cel[0].cev[107].cevr";
connectAttr "animCurveTL448.a" "clipLibrary3.cel[0].cev[108].cevr";
connectAttr "animCurveTL449.a" "clipLibrary3.cel[0].cev[109].cevr";
connectAttr "animCurveTL450.a" "clipLibrary3.cel[0].cev[110].cevr";
connectAttr "animCurveTL451.a" "clipLibrary3.cel[0].cev[111].cevr";
connectAttr "animCurveTA1200.a" "clipLibrary3.cel[0].cev[112].cevr";
connectAttr "animCurveTA1201.a" "clipLibrary3.cel[0].cev[113].cevr";
connectAttr "animCurveTA1202.a" "clipLibrary3.cel[0].cev[114].cevr";
connectAttr "animCurveTA1203.a" "clipLibrary3.cel[0].cev[115].cevr";
connectAttr "animCurveTA1204.a" "clipLibrary3.cel[0].cev[116].cevr";
connectAttr "animCurveTA1205.a" "clipLibrary3.cel[0].cev[117].cevr";
connectAttr "animCurveTA1206.a" "clipLibrary3.cel[0].cev[118].cevr";
connectAttr "animCurveTA1207.a" "clipLibrary3.cel[0].cev[119].cevr";
connectAttr "animCurveTA1208.a" "clipLibrary3.cel[0].cev[120].cevr";
connectAttr "animCurveTA1209.a" "clipLibrary3.cel[0].cev[121].cevr";
connectAttr "animCurveTA1210.a" "clipLibrary3.cel[0].cev[122].cevr";
connectAttr "animCurveTA1211.a" "clipLibrary3.cel[0].cev[123].cevr";
connectAttr "animCurveTA1212.a" "clipLibrary3.cel[0].cev[124].cevr";
connectAttr "animCurveTA1213.a" "clipLibrary3.cel[0].cev[125].cevr";
connectAttr "animCurveTA1214.a" "clipLibrary3.cel[0].cev[126].cevr";
connectAttr "animCurveTA1215.a" "clipLibrary3.cel[0].cev[127].cevr";
connectAttr "animCurveTA1216.a" "clipLibrary3.cel[0].cev[128].cevr";
connectAttr "animCurveTA1217.a" "clipLibrary3.cel[0].cev[129].cevr";
connectAttr "animCurveTA1218.a" "clipLibrary3.cel[0].cev[130].cevr";
connectAttr "animCurveTA1219.a" "clipLibrary3.cel[0].cev[131].cevr";
connectAttr "animCurveTA1220.a" "clipLibrary3.cel[0].cev[132].cevr";
connectAttr "animCurveTA1221.a" "clipLibrary3.cel[0].cev[133].cevr";
connectAttr "animCurveTA1222.a" "clipLibrary3.cel[0].cev[134].cevr";
connectAttr "animCurveTA1223.a" "clipLibrary3.cel[0].cev[135].cevr";
connectAttr "animCurveTA1224.a" "clipLibrary3.cel[0].cev[136].cevr";
connectAttr "animCurveTA1225.a" "clipLibrary3.cel[0].cev[137].cevr";
connectAttr "animCurveTA1226.a" "clipLibrary3.cel[0].cev[138].cevr";
connectAttr "animCurveTA1227.a" "clipLibrary3.cel[0].cev[139].cevr";
connectAttr "animCurveTA1228.a" "clipLibrary3.cel[0].cev[140].cevr";
connectAttr "animCurveTA1229.a" "clipLibrary3.cel[0].cev[141].cevr";
connectAttr "animCurveTA1230.a" "clipLibrary3.cel[0].cev[142].cevr";
connectAttr "animCurveTA1231.a" "clipLibrary3.cel[0].cev[143].cevr";
connectAttr "animCurveTA1232.a" "clipLibrary3.cel[0].cev[144].cevr";
connectAttr "animCurveTA1233.a" "clipLibrary3.cel[0].cev[145].cevr";
connectAttr "animCurveTA1234.a" "clipLibrary3.cel[0].cev[146].cevr";
connectAttr "animCurveTA1235.a" "clipLibrary3.cel[0].cev[147].cevr";
connectAttr "animCurveTA1236.a" "clipLibrary3.cel[0].cev[148].cevr";
connectAttr "animCurveTA1237.a" "clipLibrary3.cel[0].cev[149].cevr";
connectAttr "animCurveTA1238.a" "clipLibrary3.cel[0].cev[150].cevr";
connectAttr "animCurveTA1239.a" "clipLibrary3.cel[0].cev[151].cevr";
connectAttr "animCurveTA1240.a" "clipLibrary3.cel[0].cev[152].cevr";
connectAttr "animCurveTA1241.a" "clipLibrary3.cel[0].cev[153].cevr";
connectAttr "animCurveTA1242.a" "clipLibrary3.cel[0].cev[154].cevr";
connectAttr "animCurveTA1243.a" "clipLibrary3.cel[0].cev[155].cevr";
connectAttr "animCurveTA1244.a" "clipLibrary3.cel[0].cev[156].cevr";
connectAttr "animCurveTA1245.a" "clipLibrary3.cel[0].cev[157].cevr";
connectAttr "animCurveTA1246.a" "clipLibrary3.cel[0].cev[158].cevr";
connectAttr "animCurveTA1247.a" "clipLibrary3.cel[0].cev[159].cevr";
connectAttr "animCurveTA1248.a" "clipLibrary3.cel[0].cev[160].cevr";
connectAttr "animCurveTA1249.a" "clipLibrary3.cel[0].cev[161].cevr";
connectAttr "animCurveTA1250.a" "clipLibrary3.cel[0].cev[162].cevr";
connectAttr "animCurveTA1251.a" "clipLibrary3.cel[0].cev[163].cevr";
connectAttr "animCurveTA1252.a" "clipLibrary3.cel[0].cev[164].cevr";
connectAttr "animCurveTA1253.a" "clipLibrary3.cel[0].cev[165].cevr";
connectAttr "animCurveTA1254.a" "clipLibrary3.cel[0].cev[166].cevr";
connectAttr "animCurveTA1255.a" "clipLibrary3.cel[0].cev[167].cevr";
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
// End of brt_hands_in_air.ma
