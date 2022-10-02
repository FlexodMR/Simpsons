//Maya ASCII 4.0 scene
//Name: frk_flail.ma
//Last modified: Tue, Jun 18, 2002 03:16:23 PM
requires maya "4.0";
requires "p3dmayaexp" "17.6";
requires "p3dSimpleShader" "17.1";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "frk_flailSource";
	setAttr ".ihi" 0;
	setAttr ".du" 16;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.00021489893621058292 16 -0.00021489893621058292;
createNode animCurveTL -n "frk_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.031743764295597263 16 -0.031743764295597263;
createNode animCurveTA -n "frk_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
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
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
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
createNode animCurveTL -n "animCurveTL4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL5";
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
	setAttr -s 7 ".ktv[0:6]"  0 -0.19572374722086516 4 -0.19572374722086516 
		6 -0.19572374722086516 8 -0.19572374722086516 12 -0.19572374722086516 14 
		-0.19572374722086516 16 -0.19572374722086516;
createNode animCurveTL -n "animCurveTL8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.61194445537726849 4 0.42277851584835618 
		6 0.44349657761959166 8 0.28556559220364891 12 0.1806120332413077 14 0.34353910291102613 
		16 0.61194445537726849;
	setAttr -s 7 ".kit[3:6]"  1 1 9 9;
	setAttr -s 7 ".kot[3:6]"  1 1 9 9;
	setAttr -s 7 ".kix[3:6]"  0.0096035953611135483 0.35011526942253113 
		0.0030911818612366915 0.0024837967939674854;
	setAttr -s 7 ".kiy[3:6]"  -0.99995386600494385 -0.93670660257339478 
		0.99999523162841797 0.99999690055847168;
	setAttr -s 7 ".kox[3:6]"  0.0096036670729517937 0.35011512041091919 
		0.0030911818612366915 0.0024837967939674854;
	setAttr -s 7 ".koy[3:6]"  -0.99995386600494385 -0.93670666217803955 
		0.99999523162841797 0.99999690055847168;
createNode animCurveTL -n "animCurveTL9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.66407074883320671 4 -0.33870551052191272 
		6 0.10044757556592694 8 0.33666544582353142 12 -0.060490831448172716 14 -0.40733252168578937 
		16 -0.66407074883320671;
createNode animCurveTA -n "animCurveTA5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 107.12974160247623 4 67.722256013655922 
		6 29.894488821466975 8 -30.485825810011654 12 0.52112034938689267 14 62.277164199437443 
		16 107.12974160247623;
createNode animCurveTA -n "animCurveTA6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 3.1945677128450436 4 -2.8317130488972366 
		6 -6.9475723807332015 8 -9.2745018868658651 12 -4.1529302192365218 14 -0.61055131263581786 
		16 3.1945677128450436;
createNode animCurveTA -n "animCurveTA7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -10.24886043367729 4 -3.6533199186621594 
		6 -0.35693038979098546 8 5.4199714744352505 12 0.73752908606119894 14 -5.3253388563703146 
		16 -10.24886043367729;
createNode animCurveTL -n "animCurveTL10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.2313632684111056 4 0.2313632684111056 
		6 0.2313632684111056 8 0.2313632684111056 12 0.2313632684111056 14 0.2313632684111056 
		16 0.2313632684111056;
createNode animCurveTL -n "animCurveTL11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.29361991317123443 4 0.18079156043328154 
		6 0.36484003638323875 8 0.59920851359436622 12 0.55018877818665124 14 0.50901471969157874 
		16 0.29361991317123443;
createNode animCurveTL -n "animCurveTL12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.33765526600433449 4 -0.12245734581853611 
		6 -0.45101345529319853 8 -0.61582144121643356 12 -0.26352910494840526 14 
		0.14469266471202291 16 0.33765526600433449;
createNode animCurveTA -n "animCurveTA8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -29.346680766477817 4 -1.0784065059958321 
		6 65.361612410909316 8 113.8920483619807 12 112.2836691895133 14 23.939869991849136 
		16 -29.346680766477817;
createNode animCurveTA -n "animCurveTA9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 12 0 14 0 16 0;
createNode animCurveTA -n "animCurveTA10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 12 0 14 0 16 0;
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
createNode animCurveTL -n "animCurveTL13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 -0.07656297995886778 6 -0.076562980381129728 
		8 -0.062384650873886657 12 -0.031313432888582224 14 -0.015649332366160947 
		16 0;
createNode animCurveTL -n "animCurveTL14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0.80903454133178176 6 0.80903454329867586 
		8 0.65921333530064863 12 0.33088639551485594 14 0.16536517119360183 16 0;
createNode animCurveTL -n "animCurveTL15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 4 0.59596590051784315 6 0.59596589991567617 
		8 0.67078703008563945 12 0.83475441599250277 14 0.91741617631019656 16 1;
createNode animCurveTL -n "animCurveTL16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 12 0 14 0 16 0;
createNode animCurveTL -n "animCurveTL17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0.22000691489193488 8 
		0.3911234034077023 12 1.0145327864562317 14 0.10786450194505118 16 0;
createNode animCurveTL -n "animCurveTL18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 4 1 6 0.90919018166113474 8 
		0.83856032401819802 12 0.58001893885715372 14 0.95547796333521906 16 1;
createNode animCurveTL -n "animCurveTL19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.00035844360930810788 4 -0.00035844360930810788 
		6 -0.00035844360930810788 8 -0.00035844360930810788 12 -0.00035844360930810788 
		14 -0.00035844360930810788 16 -0.00035844360930810788;
createNode animCurveTL -n "animCurveTL20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.0000000000000002 4 1.0000000000000002 
		6 1.0000000000000002 8 1.0000000000000002 12 1.0000000000000002 14 1.0000000000000002 
		16 1.0000000000000002;
createNode animCurveTL -n "animCurveTL21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.052947444262776172 4 -0.052947444262776172 
		6 -0.052947444262776172 8 -0.052947444262776172 12 -0.052947444262776172 
		14 -0.052947444262776172 16 -0.052947444262776172;
createNode animCurveTA -n "animCurveTA17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.49960331058396229 4 -0.44435219464692555 
		6 -0.44654754168314464 8 -0.45464142037176186 12 -0.44814842969259711 14 
		-0.47190912076914776 16 -0.49960331058396229;
createNode animCurveTA -n "animCurveTA18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -10.327222484787018 4 3.3977761438416834 
		6 8.5089083866081037 8 11.632775134636743 12 2.1205889415648027 14 -4.0699572563736588 
		16 -10.327222484787018;
createNode animCurveTA -n "animCurveTA19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.23015485897115476 4 -2.3179751298552427 
		6 -1.4017059255918936 8 -0.027068568356170358 12 0.26510393112494135 14 0.25123457148006983 
		16 0.23015485897115476;
createNode animCurveTA -n "animCurveTA20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.040709616517141577;
createNode animCurveTA -n "animCurveTA21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.8313983219776933;
createNode animCurveTA -n "animCurveTA22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.7337164321498379;
createNode animCurveTA -n "animCurveTA23";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.5673169553733395;
createNode animCurveTA -n "animCurveTA24";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.938383166068367;
createNode animCurveTA -n "animCurveTA25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00040252039393782536;
createNode animCurveTA -n "animCurveTA26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.1571952141288733;
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
	setAttr ".ktv[0]"  0 0.0034456079181433771;
createNode animCurveTA -n "animCurveTA30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.040473860579884585;
createNode animCurveTA -n "animCurveTA31";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.8313984519406281;
createNode animCurveTA -n "animCurveTA32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.7337164553688731;
createNode animCurveTA -n "animCurveTA33";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.5673170049738836;
createNode animCurveTA -n "animCurveTA34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.9383298724540099;
createNode animCurveTA -n "animCurveTA35";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00017158844849065358;
createNode animCurveTA -n "animCurveTA36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.1571951880326767;
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
	setAttr ".ktv[0]"  0 0.0034456079182833216;
createNode animCurveTA -n "animCurveTA40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 12 0 14 0 16 0;
createNode animCurveTA -n "animCurveTA41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 12 0 14 0 16 0;
createNode animCurveTA -n "animCurveTA42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.0034456079181433771 4 0.0034456079181433771 
		6 0.0034456079181433771 8 0.0034456079181433771 12 0.0034456079181433771 
		14 0.0034456079181433771 16 0.0034456079181433771;
createNode animCurveTA -n "animCurveTA43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 12 0 14 0 16 0;
createNode animCurveTA -n "animCurveTA44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 12 0 14 0 16 0;
createNode animCurveTA -n "animCurveTA45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.0034456079182833216 4 0.0034456079182833216 
		6 0.0034456079182833216 8 0.0034456079182833216 12 0.0034456079182833216 
		14 0.0034456079182833216 16 0.0034456079182833216;
createNode animCurveTL -n "animCurveTL22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.98872819052200589 4 -0.98872819052200589 
		6 -0.98872819052200589 8 -0.98872819052200589 12 -0.98872819052200589 14 
		-0.98872819052200589 16 -0.98872819052200589;
createNode animCurveTL -n "animCurveTL23";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.019519870042852914 4 -0.019519870042852914 
		6 -0.019519870042852914 8 -0.019519870042852914 12 -0.019519870042852914 
		14 -0.019519870042852914 16 -0.019519870042852914;
createNode animCurveTL -n "animCurveTL24";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.020013375596438072 4 -0.020013375596438072 
		6 -0.020013375596438072 8 -0.020013375596438072 12 -0.020013375596438072 
		14 -0.020013375596438072 16 -0.020013375596438072;
createNode animCurveTA -n "animCurveTA46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 9.541664044390555e-015 4 9.541664044390555e-015 
		6 9.541664044390555e-015 8 9.541664044390555e-015 12 9.541664044390555e-015 
		14 9.541664044390555e-015 16 9.541664044390555e-015;
createNode animCurveTA -n "animCurveTA47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 6.6324864122366681e-015 4 6.6324864122366681e-015 
		6 6.6324864122366681e-015 8 6.6324864122366681e-015 12 6.6324864122366681e-015 
		14 6.6324864122366681e-015 16 6.6324864122366681e-015;
createNode animCurveTA -n "animCurveTA48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.4064602393618892e-014 4 1.4064602393618892e-014 
		6 1.4064602393618892e-014 8 1.4064602393618892e-014 12 1.4064602393618892e-014 
		14 1.4064602393618892e-014 16 1.4064602393618892e-014;
createNode animCurveTL -n "animCurveTL25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.98872754407817198 4 0.98872754407817198 
		6 0.98872754407817198 8 0.98872754407817198 12 0.98872754407817198 14 0.98872754407817198 
		16 0.98872754407817198;
createNode animCurveTL -n "animCurveTL26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.019514335421655121 4 -0.019514335421655121 
		6 -0.019514335421655121 8 -0.019514335421655121 12 -0.019514335421655121 
		14 -0.019514335421655121 16 -0.019514335421655121;
createNode animCurveTL -n "animCurveTL27";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.020013361448308328 4 -0.020013361448308328 
		6 -0.020013361448308328 8 -0.020013361448308328 12 -0.020013361448308328 
		14 -0.020013361448308328 16 -0.020013361448308328;
createNode animCurveTA -n "animCurveTA49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 9.541664044390555e-015 4 9.541664044390555e-015 
		6 9.541664044390555e-015 8 9.541664044390555e-015 12 9.541664044390555e-015 
		14 9.541664044390555e-015 16 9.541664044390555e-015;
createNode animCurveTA -n "animCurveTA50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 6.6324864122366681e-015 4 6.6324864122366681e-015 
		6 6.6324864122366681e-015 8 6.6324864122366681e-015 12 6.6324864122366681e-015 
		14 6.6324864122366681e-015 16 6.6324864122366681e-015;
createNode animCurveTA -n "animCurveTA51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.4064602393618892e-014 4 1.4064602393618892e-014 
		6 1.4064602393618892e-014 8 1.4064602393618892e-014 12 1.4064602393618892e-014 
		14 1.4064602393618892e-014 16 1.4064602393618892e-014;
createNode animCurveTL -n "animCurveTL28";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.3848817703086196 4 -1.3848817703086196 
		6 -1.3848817703086196 8 -1.3848817703086196 12 -1.3848817703086196 14 -1.3848817703086196 
		16 -1.3848817703086196;
createNode animCurveTL -n "animCurveTL29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.3971606112795563 4 2.3971606112795563 
		6 2.3971606112795563 8 2.3971606112795563 12 2.3971606112795563 14 2.3971606112795563 
		16 2.3971606112795563;
createNode animCurveTL -n "animCurveTL30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.14844372651139698 4 -0.14844372651139698 
		6 -0.14844372651139698 8 -0.14844372651139698 12 -0.14844372651139698 14 
		-0.14844372651139698 16 -0.14844372651139698;
createNode animCurveTA -n "animCurveTA52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 12 0 14 0 16 0;
createNode animCurveTA -n "animCurveTA53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 12 0 14 0 16 0;
createNode animCurveTA -n "animCurveTA54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 12 0 14 0 16 0;
createNode animCurveTL -n "animCurveTL31";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.3848820121487373 4 1.3848820121487373 
		6 1.3848820121487373 8 1.3848820121487373 12 1.3848820121487373 14 1.3848820121487373 
		16 1.3848820121487373;
createNode animCurveTL -n "animCurveTL32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.397161655727015 4 2.397161655727015 
		6 2.397161655727015 8 2.397161655727015 12 2.397161655727015 14 2.397161655727015 
		16 2.397161655727015;
createNode animCurveTL -n "animCurveTL33";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.14844368205557412 4 -0.14844368205557412 
		6 -0.14844368205557412 8 -0.14844368205557412 12 -0.14844368205557412 14 
		-0.14844368205557412 16 -0.14844368205557412;
createNode animCurveTA -n "animCurveTA55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 12 0 14 0 16 0;
createNode animCurveTA -n "animCurveTA56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 12 0 14 0 16 0;
createNode animCurveTA -n "animCurveTA57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 12 0 14 0 16 0;
createNode animCurveTL -n "animCurveTL34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 12 0 14 0 16 0;
createNode animCurveTL -n "animCurveTL35";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 12 0 14 0 16 0;
createNode animCurveTL -n "animCurveTL36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1 4 -1 6 -1 8 -1 12 -1 14 -1 
		16 -1;
createNode animCurveTL -n "animCurveTL37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 12 0 14 0 16 0;
createNode animCurveTL -n "animCurveTL38";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 12 0 14 0 16 0;
createNode animCurveTL -n "animCurveTL39";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1 4 -1 6 -1 8 -1 12 -1 14 -1 
		16 -1;
createNode animCurveTA -n "animCurveTA58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -35.478222810903326 4 -17.34017383423474 
		6 14.571711685734629 8 34.398596010151614 12 -42.558065205230307 14 -39.739429160696503 
		16 -35.478222810903326;
createNode animCurveTA -n "animCurveTA59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 26.964888378996474 4 8.1140976255710004 
		6 -25.308993084799965 8 -57.6012268139268 12 -16.892991144392958 14 5.8445654497270443 
		16 26.964888378996474;
createNode animCurveTA -n "animCurveTA60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 26.685913698832319 4 -41.226280749897128 
		6 -42.802379913075015 8 -22.33419354910879 12 65.503719147013683 14 48.648006233792977 
		16 26.685913698832319;
createNode animCurveTA -n "animCurveTA61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -24.594516470061343 4 36.480817693459223 
		6 17.87480029972814 8 -26.069090511539486 12 -39.857975001413962 14 -32.611495948810038 
		16 -24.594516470061343;
createNode animCurveTA -n "animCurveTA62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 31.280345257908134 4 -17.824436474372035 
		6 -60.487537833036328 8 -53.467645497452125 12 19.336238715408182 14 26.922293512633079 
		16 31.280345257908134;
createNode animCurveTA -n "animCurveTA63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -23.937351641633775 4 -34.427205058296458 
		6 1.162769618729746 8 58.882251033726817 12 34.564166893864545 14 5.0404562676676203 
		16 -23.937351641633775;
createNode animCurveTA -n "animCurveTA64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 29.252933647125161 4 29.252933647125161 
		6 19.39866849393788 8 7.7416807042675231 12 27.739870092877794 14 30.553083498497799 
		16 29.252933647125161;
createNode animCurveTA -n "animCurveTA65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 28.461377899600361 4 0.7319028767271053 
		6 9.9936196703100073 8 -4.7005776330491917 12 24.258394000294324 14 26.588142584269455 
		16 28.461377899600361;
createNode animCurveTA -n "animCurveTA66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.611172536639883 4 19.109190164048528 
		6 54.215270163479531 8 84.993778079121 12 15.181219271745862 14 12.878323300884114 
		16 15.611172536639883;
createNode animCurveTA -n "animCurveTA67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 23.077534563546791 4 32.237722777272147 
		6 12.961459236766347 8 -8.7397166596692006 12 -24.355897636807789 14 -4.1306761272565646 
		16 23.077534563546791;
createNode animCurveTA -n "animCurveTA68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -3.0632333899936963 4 9.2383711153451884 
		6 -3.6512707407213294 8 -17.725576423866951 12 0.96989249420796508 14 -0.058934993070434559 
		16 -3.0632333899936963;
createNode animCurveTA -n "animCurveTA69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 17.164209345616278 4 43.689814078298724 
		6 2.7159275275151167 8 2.5174029788975365 12 2.9935203635564576 14 8.471362005386597 
		16 17.164209345616278;
createNode animCurveTA -n "animCurveTA70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 29.657739378084262 4 -17.490747196680001 
		6 -12.142665081248754 8 -1.927674500683797 12 19.993798140061244 14 27.087450531350555 
		16 29.657739378084262;
createNode animCurveTA -n "animCurveTA71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 10.498163151148212 4 -19.055247421547975 
		6 -14.313724397763265 8 -4.7292740198476588 12 10.876875421530237 14 11.72789388156799 
		16 10.498163151148212;
createNode animCurveTA -n "animCurveTA72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -60.679962459776895 4 -60.679962459776895 
		6 -60.679962459776895 8 -60.679962459776895 12 -60.679962459776895 14 -60.679962459776895 
		16 -60.679962459776895;
createNode animCurveTA -n "animCurveTA73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.355514613247321 4 12.355514613247321 
		6 12.355514613247321 8 12.355514613247321 12 12.355514613247321 14 12.355514613247321 
		16 12.355514613247321;
createNode animCurveTA -n "animCurveTA74";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 13.110465504305042 4 13.110465504305042 
		6 13.110465504305042 8 13.110465504305042 12 13.110465504305042 14 13.110465504305042 
		16 13.110465504305042;
createNode animCurveTA -n "animCurveTA75";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -20.551139383726671 4 -20.551139383726671 
		6 -20.551139383726671 8 -20.551139383726671 12 -20.551139383726671 14 -20.551139383726671 
		16 -20.551139383726671;
createNode animCurveTA -n "animCurveTA76";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 3.0722483700821352 4 3.0722483700821352 
		6 3.0722483700821352 8 3.0722483700821352 12 3.0722483700821352 14 3.0722483700821352 
		16 3.0722483700821352;
createNode animCurveTA -n "animCurveTA77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 19.857676546395723 4 19.857676546395723 
		6 19.857676546395723 8 19.857676546395723 12 19.857676546395723 14 19.857676546395723 
		16 19.857676546395723;
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
	setAttr ".ktv[0]"  0 12.085861696683486;
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
	setAttr ".ktv[0]"  0 12.085861696683486;
createNode animCurveTA -n "animCurveTA87";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 12 0 14 0 16 0;
createNode animCurveTA -n "animCurveTA88";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 12 0 14 0 16 0;
createNode animCurveTA -n "animCurveTA89";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.43065494947832267 4 -0.43065494947832267 
		6 -0.43065494947832267 8 -0.43065494947832267 12 -0.43065494947832267 14 
		-0.43065494947832267 16 -0.43065494947832267;
createNode animCurveTA -n "animCurveTA90";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 12 0 14 0 16 0;
createNode animCurveTA -n "animCurveTA91";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 12 0 14 0 16 0;
createNode animCurveTA -n "animCurveTA92";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 12 0 14 0 16 0;
createNode animCurveTA -n "animCurveTA93";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 7.7969752586095185 4 -2.8397079465672936 
		6 -0.67443529121434942 8 3.3250042310370662 12 5.861100805607264 14 6.8358586831306525 
		16 7.7969752586095185;
createNode animCurveTA -n "animCurveTA94";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 5.2413980566337077 4 -1.5164122053342977 
		6 -1.7471117080145453 8 -0.88961429576779083 12 1.9896016665626675 14 3.611265937681774 
		16 5.2413980566337077;
createNode animCurveTA -n "animCurveTA95";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.77489921247364857 4 -2.2698759708983016 
		6 -2.4162842668652322 8 -2.3265372647448577 12 -1.6143104816324576 14 -1.1960501367185596 
		16 -0.77489921247364857;
createNode animCurveTA -n "animCurveTA96";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -13.212690011012905 4 9.4721215593086523 
		6 6.9710370685429259 8 1.1019372520964807 12 -6.143398958665955 14 -9.8954404160333436 
		16 -13.212690011012905;
createNode animCurveTA -n "animCurveTA97";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.9842200848599729 4 0.90692438972865741 
		6 1.088228354961168 8 0.66253398570785615 12 -1.4739170673459443 14 -2.2889656479395279 
		16 -2.9842200848599729;
createNode animCurveTA -n "animCurveTA98";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 31.743010845542475 4 32.207045388873865 
		6 32.16408446902858 8 32.061596102999005 12 32.128857196077341 14 31.955347420017031 
		16 31.743010845542475;
createNode animCurveTA -n "animCurveTA99";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 12 0 14 0 16 0;
createNode animCurveTA -n "animCurveTA100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 12 0 14 0 16 0;
createNode animCurveTA -n "animCurveTA101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 12 0 14 0 16 0;
createNode animCurveTA -n "animCurveTA102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.0234458388975831 4 -3.3492192056178656 
		6 -2.3940769185271149 8 -0.68180094518071999 12 0.30945260392875629 14 0.66959989434626899 
		16 1.0234458388975831;
createNode animCurveTA -n "animCurveTA103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.11067472891396538 4 -0.2571883466131778 
		6 -0.058031716664299508 8 0.21052348942904714 12 0.20014076472519804 14 0.15630642207239018 
		16 0.11067472891396538;
createNode animCurveTA -n "animCurveTA104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -3.0886493310740302 4 -3.2426032986847568 
		6 -3.2554474963754281 8 -3.2438650367690389 12 -3.1722819442071 14 -3.1306025653236578 
		16 -3.0886493310740302;
createNode animCurveTA -n "animCurveTA105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -20.551139383726671 4 -20.551139383726671 
		6 -20.551139383726671 8 -20.551139383726671 12 -20.551139383726671 14 -20.551139383726671 
		16 -20.551139383726671;
createNode animCurveTA -n "animCurveTA106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 3.0722483700821352 4 3.0722483700821352 
		6 3.0722483700821352 8 3.0722483700821352 12 3.0722483700821352 14 3.0722483700821352 
		16 3.0722483700821352;
createNode animCurveTA -n "animCurveTA107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 19.857676546395723 4 19.857676546395723 
		6 19.857676546395723 8 19.857676546395723 12 19.857676546395723 14 19.857676546395723 
		16 19.857676546395723;
createNode animCurveTA -n "animCurveTA108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -60.679962459776895 4 -60.679962459776895 
		6 -60.679962459776895 8 -60.679962459776895 12 -60.679962459776895 14 -60.679962459776895 
		16 -60.679962459776895;
createNode animCurveTA -n "animCurveTA109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.355514613247321 4 12.355514613247321 
		6 12.355514613247321 8 12.355514613247321 12 12.355514613247321 14 12.355514613247321 
		16 12.355514613247321;
createNode animCurveTA -n "animCurveTA110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 13.110465504305042 4 13.110465504305042 
		6 13.110465504305042 8 13.110465504305042 12 13.110465504305042 14 13.110465504305042 
		16 13.110465504305042;
createNode animCurveTA -n "animCurveTA111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 12 0 14 0 16 0;
createNode animCurveTA -n "animCurveTA112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 6 0 8 0 12 0 14 0 16 0;
createNode animCurveTA -n "animCurveTA113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.43065494947832267 4 -0.43065494947832267 
		6 -0.43065494947832267 8 -0.43065494947832267 12 -0.43065494947832267 14 
		-0.43065494947832267 16 -0.43065494947832267;
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
	setAttr ".ihi" 0;
	setAttr -s 20 ".lnk";
select -ne :time1;
	setAttr ".o" 15;
select -ne :renderPartition;
	setAttr -s 20 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 20 ".s";
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
	setAttr -s 108 ".gn";
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
connectAttr "frk_flailSource.st" "clipLibrary1.st[0]";
connectAttr "frk_flailSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL1.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL2.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "frk_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "frk_Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr"
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
connectAttr "animCurveTL4.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL5.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL6.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL7.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL8.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL9.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA5.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA6.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA7.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL10.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL11.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL12.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA8.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA9.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA10.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA11.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA12.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA13.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA14.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA15.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA16.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL13.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL14.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL15.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL16.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL17.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL18.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL19.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL20.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL21.a" "clipLibrary1.cel[0].cev[46].cevr";
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
connectAttr "animCurveTL22.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTL23.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTL24.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA46.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA47.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA48.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL25.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL26.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL27.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA49.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA50.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA51.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL28.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL29.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL30.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA52.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA53.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA54.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL31.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL32.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL33.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA55.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA56.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA57.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL34.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL35.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL36.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL37.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL38.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL39.a" "clipLibrary1.cel[0].cev[105].cevr";
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
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of frk_flail.ma
