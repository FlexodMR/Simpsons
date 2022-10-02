//Maya ASCII 4.0 scene
//Name: hom_run_into_person.ma
//Last modified: Wed, Jul 03, 2002 02:11:52 PM
requires maya "4.0";
requires "p3dmayaexp" "17.7";
requires "p3dSimpleShader" "17.1";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_run_into_personSource";
	setAttr ".ihi" 0;
	setAttr ".du" 23;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL194";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL195";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 -0.032743957069742133 1 -0.032743957069742133 
		2 -0.032743957069742133 3 -0.032743957069742133 4 -0.032743957069742133 5 
		-0.032743957069742133 6 -0.032743957069742133 7 -0.032743957069742133 8 -0.032743957069742133 
		9 -0.032743957069742133 10 -0.032743957069742133 11 -0.032743957069742133 
		12 -0.032743957069742133 13 -0.032743957069742133 14 -0.032743957069742133 
		15 -0.032743957069742133 16 -0.032743957069742133 17 -0.032743957069742133 
		18 -0.032743957069742133 19 -0.031809882144275825 20 -0.032743957069742133 
		21 -0.037864071537313269 22 -0.044644763827616014 23 -0.051425456377630012;
createNode animCurveTL -n "animCurveTL197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0;
createNode animCurveTL -n "animCurveTL198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0.6083415236309837 1 0.69204386950493402 
		2 0.87006264237776165 3 1.0327654451259323 4 1.1392330606348551 5 1.2008449610236596 
		6 1.1904209352914963 7 1.1479224671535222 8 1.106329472225396 9 1.0594064325773791 
		10 1.0150818733560256 11 0.96384358606658804 12 0.90071858254640969 13 0.8322310166586101 
		14 0.76017052946285624 15 0.68139864601062594 16 0.5975915652126299 17 0.50670720390581725 
		18 0.42688734592947647 19 0.37455793387732689 20 0.35282441625539235 21 0.35282441625539235 
		22 0.35282441625539235 23 0.35282441625539235;
createNode animCurveTA -n "animCurveTA539";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0;
createNode animCurveTU -n "animCurveTU41";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  21 0 23 0;
createNode animCurveTU -n "animCurveTU42";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  21 0 23 0;
createNode animCurveTU -n "animCurveTU43";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  21 0 23 0;
createNode animCurveTU -n "animCurveTU44";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  21 0 23 0;
createNode animCurveTU -n "animCurveTU45";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  21 1 23 0;
createNode animCurveTU -n "animCurveTU46";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  21 1 23 0;
createNode animCurveTU -n "animCurveTU47";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  21 0 23 1;
createNode animCurveTU -n "animCurveTU48";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  21 0 23 1;
createNode animCurveTA -n "animCurveTA540";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  21 0 23 0;
createNode animCurveTA -n "animCurveTA541";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  21 0 23 0;
createNode animCurveTA -n "animCurveTA542";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  21 0 23 0;
createNode animCurveTL -n "animCurveTL199";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  21 0 23 0;
createNode animCurveTL -n "animCurveTL200";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  21 0 23 0;
createNode animCurveTL -n "animCurveTL201";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  21 0 23 0;
createNode animCurveTL -n "animCurveTL202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.19763288944005308 3 -0.19763288944005308 
		5 -0.19763288944005308 7 -0.19763288944005308 9 -0.19763288944005308 11 -0.19763288944005308 
		14 -0.19763288944005308 16 -0.19763288944005308 18 -0.19763288944005308 20 
		-0.19763288944005308 23 -0.26454016861507795;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTL -n "animCurveTL203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.14552605892239473 3 0.14552605892239473 
		5 0.14552605892239473 7 0.1730601152643288 9 0.1179920025804608 11 0.15653968145916874 
		14 0.28319634063206595 16 0.26667590682690551 18 0.14001924765400822 20 0.14001924765400822 
		23 0.13806192026723146;
	setAttr -s 11 ".kit[0:10]"  3 9 3 9 9 9 9 
		9 3 3 9;
	setAttr -s 11 ".kot[0:10]"  3 9 3 9 9 9 9 
		9 3 3 9;
createNode animCurveTL -n "animCurveTL204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.1961929756633671 3 1.1961929756633671 
		5 1.1961929756633671 7 1.8184626489910816 9 1.9341056856272059 11 1.8404898940646288 
		14 1.1851793531265946 16 0.48030751077307954 18 0.43625302062598426 20 0.43625302062598426 
		23 0.43625302062598426;
	setAttr -s 11 ".kit[0:10]"  3 9 3 9 9 9 9 
		1 3 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 3 9 9 9 9 
		1 3 9 9;
	setAttr -s 11 ".kix[7:10]"  0.0028174612671136856 1 1 1;
	setAttr -s 11 ".kiy[7:10]"  -0.99999600648880005 0 0 0;
	setAttr -s 11 ".kox[7:10]"  0.0028174591716378927 1 1 1;
	setAttr -s 11 ".koy[7:10]"  -0.99999600648880005 0 0 0;
createNode animCurveTA -n "animCurveTA543";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -19.288990945907496 3 0.46104444544296308 
		5 0.46104444544296308 7 7.7551081793330283 9 -0.58279095637978728 11 -41.889616153138562 
		14 15.034008524188943 16 34.646432388829645 18 1.0242955470480299 20 1.0242955470480299 
		23 0;
	setAttr -s 11 ".kit[3:10]"  9 9 9 9 9 3 3 
		3;
	setAttr -s 11 ".kot[3:10]"  9 9 9 9 9 3 3 
		3;
createNode animCurveTA -n "animCurveTA544";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 7 0 9 0 11 0 14 0 16 
		0 18 0 20 0 23 -25.948901905116401;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 7 0 9 0 11 0 14 0 16 
		0 18 0 20 0 23 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.19697756422115981 3 0.19697756422115981 
		5 0.19697756422115981 7 0.19697756422115981 9 0.19697756422115981 11 0.19697756422115981 
		14 0.19697756422115981 16 0.19697756422115981 18 0.19697756422115981 20 0.19697756422115981 
		23 0.21594587158542247;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTL -n "animCurveTL206";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.57299516960695085 3 0.29214779491922199 
		5 0.12143664559922999 7 0.12143664559922999 9 0.25360011604051408 11 0.19302519208825888 
		14 0.12694345686761693 16 0.12694345686761693 18 0.21505243716180653 20 0.13245026813600391 
		23 0.1380615615975922;
	setAttr -s 11 ".kit[1:10]"  9 3 3 9 9 3 3 
		9 3 9;
	setAttr -s 11 ".kot[1:10]"  9 3 3 9 9 3 3 
		9 3 9;
createNode animCurveTL -n "animCurveTL207";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.24226175870239405 3 1.2445014095487996 
		5 2.0209617983913453 7 2.0209617983913453 9 1.6189645757991042 11 1.2885558996958926 
		14 1.1674060517913818 16 1.1674060517913818 18 0.87003824329849266 20 0.47354783197463968 
		23 0.47354783197463968;
	setAttr -s 11 ".kit[1:10]"  9 3 3 9 9 3 3 
		9 3 9;
	setAttr -s 11 ".kot[1:10]"  9 3 3 9 9 3 3 
		9 3 9;
createNode animCurveTA -n "animCurveTA546";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 101.83600965070561 3 66.596702656887672 
		5 3.1599555742657675 7 3.1599555742657675 9 36.25972385798908 11 45.393511271088919 
		14 -0.52437167089126113 16 -0.52437167089126113 18 -19.066508418398907 20 
		1.3040672431773508 23 0;
	setAttr -s 11 ".kit[1:10]"  9 3 3 9 9 3 3 
		9 3 3;
	setAttr -s 11 ".kot[1:10]"  9 3 3 9 9 3 3 
		9 3 3;
createNode animCurveTA -n "animCurveTA547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 7 0 9 0 11 0 14 0 16 
		0 18 0 20 0 23 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 7 0 9 0 11 0 14 0 16 
		0 18 0 20 0 23 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA549";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA550";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA551";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA552";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA553";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA554";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 7 0 9 0 11 0 14 0 16 
		0 18 0 20 0 23 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 7 0 9 0 11 0 14 0 16 
		0 18 0 20 0 23 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 3 1 5 1 7 1 9 1 11 1 14 1 16 
		1 18 1 20 1 23 1;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 7 0 9 0 11 0 14 0 16 
		0 18 0 20 0 23 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 7 0 9 0 11 0 14 0 16 
		0 18 0 20 0 23 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 3 1 5 1 7 1 9 1 11 1 14 1 16 
		1 18 1 20 1 23 1;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.048692319506319935 3 -0.048692319506319935 
		5 -0.048692319506319935 7 -0.048692319506319935 9 -0.048692319506319935 11 
		-0.048692319506319935 14 -0.048692319506319935 16 -0.048692319506319935 18 
		-0.048692319506319935 20 -0.048692319506319935 23 -0.076472881617957691;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTL -n "animCurveTL215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.85503661073851567 3 0.66484072301048547 
		5 0.64577778253981466 7 0.84402298820174126 9 0.80547530932303335 11 0.77055978282362581 
		14 0.86459737232356826 16 0.86605023327528874 18 0.82199574312819368 20 0.92662515722754346 
		23 0.93105416142265018;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 9;
createNode animCurveTL -n "animCurveTL216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.90464203133755872 3 1.5357870437604584 
		5 1.785731834279455 7 1.7070327639408474 9 1.5754038643599586 11 1.4332959131026948 
		14 1.1304212933414186 16 0.88865616839279471 18 0.63480827918660265 20 0.52467205381886617 
		23 0.52467205381886617;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 3 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 3 9;
createNode animCurveTA -n "animCurveTA555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 20.950825280283908 3 31.893921676442705 
		5 1.2128078773019906 7 -22.636245182644341 9 -28.444448227445374 11 -21.539180797641826 
		14 -0.93600239830150667 16 9.656357383484508 18 9.656357383484508 20 4.802459265983229 
		23 -0.62843630316474497;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 1 
		9 9 1 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 1 
		9 9 1 3;
	setAttr -s 11 ".kix[6:10]"  0.24623928964138031 0.58495700359344482 
		0.8440396785736084 0.47925189137458801 1;
	setAttr -s 11 ".kiy[6:10]"  0.96920907497406006 0.81106430292129517 
		-0.53628069162368774 -0.87767738103866577 0;
	setAttr -s 11 ".kox[6:10]"  0.24623940885066986 0.58495700359344482 
		0.8440396785736084 0.47925195097923279 1;
	setAttr -s 11 ".koy[6:10]"  0.96920901536941528 0.81106430292129517 
		-0.53628069162368774 -0.87767738103866577 0;
createNode animCurveTA -n "animCurveTA556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -6.8139232258102842 3 -6.8139232258102789 
		5 -6.8139232258102771 7 -6.8139232258102789 9 -6.8139232258102771 11 -6.8139232258102789 
		14 -6.8139232258102789 16 -6.813923225810278 18 -5.095981714050196 20 -0.15955804330378326 
		23 -5.8284402688137167;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA557";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.045251426940718487 3 0.045251426940717335 
		5 0.045251426940716148 7 0.045251426940718119 9 0.045251426940719319 11 0.045251426940725155 
		14 0.045251426940725155 16 0.04525142694072623 18 0.34681922893850214 20 
		1.3471416410679662 23 -1.295636019309746;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA558";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA559";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA560";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.0984482521620249 23 0;
createNode animCurveTA -n "animCurveTA561";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.588300303494186 23 0;
createNode animCurveTA -n "animCurveTA562";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA563";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA564";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -22.686733334985114 23 0;
createNode animCurveTA -n "animCurveTA565";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA566";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA567";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0579251312417477e-005 23 0;
createNode animCurveTA -n "animCurveTA568";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA569";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA570";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.0984482535121209 23 0;
createNode animCurveTA -n "animCurveTA571";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.588300300216801 23 0;
createNode animCurveTA -n "animCurveTA572";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA573";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA574";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -22.686733333057838 23 0;
createNode animCurveTA -n "animCurveTA575";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA576";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA577";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0579251312417477e-005 23 0;
createNode animCurveTA -n "animCurveTA578";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA579";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA580";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.4782236286598103 23 0;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL217";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.99214331096561381 23 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL218";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.033841737269357866 23 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL219";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.027201153963313806 23 0.27773886459742925;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 3.1805546814635164e-015 23 0;
createNode animCurveTA -n "animCurveTA585";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.016273151455886e-014 23 28.652637602052774;
createNode animCurveTA -n "animCurveTA586";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 5.3764496942944332e-016 23 64.676908227303443;
createNode animCurveTL -n "animCurveTL220";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.99214413619678865 23 0.5198069948790518;
createNode animCurveTL -n "animCurveTL221";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.033851474715545553 23 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL222";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.0272011762672867 23 0.36439499068905612;
createNode animCurveTA -n "animCurveTA587";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 6.3611093629270264e-015 23 7.7976222737965317;
createNode animCurveTA -n "animCurveTA588";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.5281705937149269e-014 23 -30.409274105849079;
createNode animCurveTA -n "animCurveTA589";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.5365128437888133e-014 23 -64.859940280210893;
createNode animCurveTL -n "animCurveTL223";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.8091891372350974 23 -1.11516728567985;
createNode animCurveTL -n "animCurveTL224";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.8536629786602403 23 1.680120084755256;
createNode animCurveTL -n "animCurveTL225";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.15898405984075725 23 0.74375932398182587;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTA -n "animCurveTA590";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 5.4739599453216465;
createNode animCurveTA -n "animCurveTA591";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 8.5874521608419823;
createNode animCurveTA -n "animCurveTA592";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 74.754744621954103;
createNode animCurveTL -n "animCurveTL226";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.8091892394754774 23 0.80629961042890586;
createNode animCurveTL -n "animCurveTL227";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.8536581165404047 23 1.6227248042492379;
createNode animCurveTL -n "animCurveTL228";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.1589841173218719 23 1.0620610350478976;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTA -n "animCurveTA593";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 16.226511010665412;
createNode animCurveTA -n "animCurveTA594";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 -8.5139660854992858;
createNode animCurveTA -n "animCurveTA595";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 -68.213989601412422;
createNode animCurveTL -n "animCurveTL229";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL230";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL231";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1 23 -1;
createNode animCurveTL -n "animCurveTL232";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 -0.10167917362943303;
createNode animCurveTL -n "animCurveTL233";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 -0.40762644910266188;
createNode animCurveTL -n "animCurveTL234";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1 23 -0.93129112588482243;
createNode animCurveTA -n "animCurveTA596";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 33.632953330522966 2 40.514666031468188 
		5 -52.253647395951099 8 -5.9371385513586654 11 18.373174825447986 13 23.677481275671326 
		16 13.315812924930704 23 12.253734489678919;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 1 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 1 
		3;
	setAttr -s 8 ".kix[6:7]"  0.44265836477279663 1;
	setAttr -s 8 ".kiy[6:7]"  -0.89669030904769897 0;
	setAttr -s 8 ".kox[6:7]"  0.44265839457511902 1;
	setAttr -s 8 ".koy[6:7]"  -0.89669030904769897 0;
createNode animCurveTA -n "animCurveTA597";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -45.161034679655693 2 -39.445176802283065 
		5 -50.092210662671171 8 -40.157929232513396 11 -32.783345972495788 13 -36.862739397501421 
		16 -54.739758209310494 23 -65.746751280844961;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA598";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -67.538091601379463 2 -77.735295169850247 
		5 64.375191109696971 8 27.905261068332628 11 -19.335491282235122 13 -21.864958121807085 
		16 -7.3594601147207124 23 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA599";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -31.91693956427045 2 -15.356018695340643 
		5 -31.063581684012128 8 2.758511905845431 11 30.054965806077725 13 16.249014210073508 
		16 1.5892506708196732 20 -2.1372745396580126 23 -0.061808866237339131;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 1 9 
		1 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 1 9 
		1 3;
	setAttr -s 9 ".kix[5:8]"  0.19127798080444336 0.58809024095535278 
		0.9948461651802063 1;
	setAttr -s 9 ".kiy[5:8]"  -0.98153591156005859 -0.80879533290863037 
		0.1013958603143692 0;
	setAttr -s 9 ".kox[5:8]"  0.19127802550792694 0.58809024095535278 
		0.99484622478485107 1;
	setAttr -s 9 ".koy[5:8]"  -0.98153591156005859 -0.80879533290863037 
		0.101395383477211 0;
createNode animCurveTA -n "animCurveTA600";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -29.868546772813136 2 -1.6370789986654639 
		5 -27.265876981733431 8 -50.677678556589058 11 -41.050490158471881 13 -38.875683908859571 
		16 -47.004705922720575 20 -57.498708118646476 23 -59.058178941076768;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		1 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		1 3;
	setAttr -s 9 ".kix[7:8]"  0.77861714363098145 1;
	setAttr -s 9 ".kiy[7:8]"  -0.62749922275543213 0;
	setAttr -s 9 ".kox[7:8]"  0.77861720323562622 1;
	setAttr -s 9 ".koy[7:8]"  -0.62749922275543213 0;
createNode animCurveTA -n "animCurveTA601";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 68.33832602789127 2 69.61309617468136 
		5 47.284955744198868 8 -7.708488939042204 11 -5.2479547699104101 13 14.428872173177181 
		16 10.533416272908328 20 6.2662653992304707 23 16.57914742975785;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 1 
		1 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 1 
		1 3;
	setAttr -s 9 ".kix[6:8]"  0.43730229139328003 0.58263218402862549 
		1;
	setAttr -s 9 ".kiy[6:8]"  -0.89931458234786987 0.81273597478866577 
		0;
	setAttr -s 9 ".kox[6:8]"  0.43730241060256958 0.58263218402862549 
		1;
	setAttr -s 9 ".koy[6:8]"  -0.8993145227432251 0.81273597478866577 
		0;
createNode animCurveTA -n "animCurveTA602";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 63.595530963034982 2 48.559360783080216 
		5 48.559360783080216 8 57.53252201816786 11 64.26052977275333 13 67.589470045673536 
		16 62.920143586743741 23 8.5572674112203657;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 1 1 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 1 1 
		3;
	setAttr -s 8 ".kix[5:7]"  0.82648175954818726 0.29305985569953918 
		1;
	setAttr -s 8 ".kiy[5:7]"  0.56296348571777344 -0.95609408617019653 
		0;
	setAttr -s 8 ".kox[5:7]"  0.82648175954818726 0.29305985569953918 
		1;
	setAttr -s 8 ".koy[5:7]"  0.56296348571777344 -0.95609408617019653 
		0;
createNode animCurveTA -n "animCurveTA603";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 60.185649943194235 2 60.185649943194235 
		5 83.949023721627441 8 89.39290439644023 11 40.012962471887889 13 20.889584475977955 
		16 16.300985903101061 20 21.464222889398297 23 15.711328223519061;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		1 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		1 3;
	setAttr -s 9 ".kix[7:8]"  0.90959548950195313 1;
	setAttr -s 9 ".kiy[7:8]"  -0.4154948890209198 0;
	setAttr -s 9 ".kox[7:8]"  0.90959548950195313 1;
	setAttr -s 9 ".koy[7:8]"  -0.41549494862556458 0;
createNode animCurveTA -n "animCurveTA604";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 18.476235154862632 2 18.476235154862632 
		5 18.476235154862632 8 18.476235154862632 11 18.476235154862632 13 18.476235154862632 
		16 19.515523380515379 23 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA605";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 10.082003051124275 2 10.082003051124275 
		5 10.082003051124275 8 10.082003051124275 11 10.082003051124275 13 10.082003051124275 
		16 10.649115719039902 23 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA606";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -4.720189328892868 2 -4.720189328892868 
		5 -4.720189328892868 8 -4.720189328892868 11 -4.720189328892868 13 -4.720189328892868 
		16 -4.985699992858259 23 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA607";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -13.555270109330269 2 -13.555270109330269 
		5 -13.555270109330269 8 -13.555270109330269 11 -13.555270109330269 13 -13.555270109330269 
		16 -14.317753995053931 23 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA608";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 11.615881410206432 2 11.615881410206432 
		5 11.615881410206432 8 11.615881410206432 11 11.615881410206432 13 11.615881410206432 
		16 12.269274762865578 23 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA609";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.32159281075535068 2 0.32159281075535068 
		5 0.32159281075535068 8 0.32159281075535068 11 0.32159281075535068 13 0.32159281075535068 
		16 0.33968240652337872 23 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA610";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 11.093319219895511 2 11.093319219895511 
		5 11.093319219895511 8 11.093319219895511 11 11.093319219895511 13 11.093319219895511 
		16 11.130982207935231 23 10.423754966968488;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA611";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 59.959644693642325 2 59.959644693642325 
		5 59.959644693642325 8 59.959644693642325 11 59.959644693642325 13 59.959644693642325 
		16 61.772964615621859 23 27.722848255843903;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA612";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 48.106469618696913 2 48.106469618696913 
		5 48.106469618696913 8 48.106469618696913 11 48.106469618696913 13 48.106469618696913 
		16 49.598781238328471 23 21.576484776388231;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA613";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 5 0 8 0 11 0 13 0 16 0 
		23 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA614";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 5 0 8 0 11 0 13 0 16 0 
		23 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA615";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 67.810939637714412 2 67.810939637714412 
		5 67.810939637714412 8 67.810939637714412 11 67.810939637714412 13 67.810939637714412 
		16 70.102051514685854 23 27.080064458283051;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA616";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA617";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA618";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.705218915343313 4 27.705218915343313 
		8 27.705218915343313 12 27.705218915343313 16 27.705218915343313 20 27.705218915343313 
		23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 1 1 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kix[4:6]"  1 1 1;
	setAttr -s 7 ".kiy[4:6]"  0 0 0;
createNode animCurveTA -n "animCurveTA620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 43.35103828268312 4 43.35103828268312 
		8 43.35103828268312 12 43.35103828268312 16 43.35103828268312 20 43.35103828268312 
		23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 1 1 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kix[4:6]"  1 1 1;
	setAttr -s 7 ".kiy[4:6]"  0 0 0;
createNode animCurveTA -n "animCurveTA621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 54.23572299800319 4 54.23572299800319 
		8 54.23572299800319 12 54.23572299800319 16 54.23572299800319 20 54.23572299800319 
		23 13.994403295754109;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 1 1 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kix[4:6]"  1 1 1;
	setAttr -s 7 ".kiy[4:6]"  0 0 0;
createNode animCurveTA -n "animCurveTA622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 39.038703285259977 4 39.038703285259977 
		8 39.038703285259977 12 39.038703285259977 16 39.038703285259977 20 39.038703285259977 
		23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 1 1 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kix[4:6]"  1 1 1;
	setAttr -s 7 ".kiy[4:6]"  0 0 0;
createNode animCurveTA -n "animCurveTA623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 72.755037061650995 4 72.755037061650995 
		8 72.755037061650995 12 72.755037061650995 16 72.755037061650995 20 72.755037061650995 
		23 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 1 1 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kix[4:6]"  1 1 1;
	setAttr -s 7 ".kiy[4:6]"  0 0 0;
createNode animCurveTA -n "animCurveTA624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 38.926480273156798 4 38.926480273156798 
		8 38.926480273156798 12 38.926480273156798 16 38.926480273156798 20 38.926480273156798 
		23 13.994403295754109;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 1 1 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kix[4:6]"  1 1 1;
	setAttr -s 7 ".kiy[4:6]"  0 0 0;
createNode animCurveTA -n "animCurveTA625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 5 0 8 0 11 0 13 0 16 0 
		23 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 5 0 8 0 11 0 13 0 16 0 
		23 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 40.637834425062678 2 40.637834425062678 
		5 40.637834425062678 8 40.637834425062678 11 40.637834425062678 13 40.637834425062678 
		16 41.353683247109352 23 27.911632519594587;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.2945941069882381 2 1.2945941069882381 
		5 1.2945941069882381 8 1.2945941069882381 11 1.2945941069882381 13 1.2945941069882381 
		16 1.3674150174168214 23 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 3.3208811165553147 2 3.3208811165553147 
		5 3.3208811165553147 8 3.3208811165553147 11 3.3208811165553147 13 3.3208811165553147 
		16 3.5076806841266883 23 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -27.525824477859967 2 -27.525824477859967 
		5 -27.525824477859967 8 -27.525824477859967 11 -27.525824477859967 13 -27.525824477859967 
		16 -29.074152125383112 23 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -7.7966372458940265 2 -21.897916030805764 
		5 -27.026607495669865 8 -3.2192397419481766 11 -1.5687377008013468 13 -0.01800229915334188 
		16 -2.6433860314125552 23 -0.65073001024951671;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 5 -1.8399336948780474 8 
		2.789816990309629 11 2.6335331205563497 13 -2.2120116005629544 16 2.2289899803918249 
		23 -4.2368721935960938;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.59407764503375837 2 0.5940776450337566 
		5 -10.116452954015815 8 -16.84450977575354 11 -19.946276829499073 13 -19.372854163739966 
		16 -14.780247566026143 23 8.7398866450636881;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 1 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 1 
		3;
	setAttr -s 8 ".kix[6:7]"  0.52487486600875854 1;
	setAttr -s 8 ".kiy[6:7]"  0.85117942094802856 0;
	setAttr -s 8 ".kox[6:7]"  0.52487492561340332 1;
	setAttr -s 8 ".koy[6:7]"  0.85117936134338379 0;
createNode animCurveTA -n "animCurveTA634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 5 0 8 0 11 0 13 0 16 0 
		23 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 5 0 8 0 11 0 13 0 16 0 
		23 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 5 0 8 -8.7299801591531629 
		11 -3.7713514762097855 13 0 16 0.11785472970351051 23 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 3.0795085576620211 5 -9.0453627006818138 
		8 -0.27085368690292605 11 -1.4716916966527929 13 -3.8819790806033372 16 -6.2893151825303244 
		23 4.8714700432790332;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 1 1 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 1 1 9 
		3;
	setAttr -s 8 ".kix[4:7]"  0.86255466938018799 0.85810190439224243 
		0.90906614065170288 1;
	setAttr -s 8 ".kiy[4:7]"  -0.50596392154693604 -0.51347941160202026 
		0.41665184497833252 0;
	setAttr -s 8 ".kox[4:7]"  0.86255466938018799 0.85810196399688721 
		0.90906614065170288 1;
	setAttr -s 8 ".koy[4:7]"  -0.50596392154693604 -0.51347935199737549 
		0.41665184497833252 0;
createNode animCurveTA -n "animCurveTA638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -8.2806426894500209 2 24.795574194960771 
		5 -27.168266729928344 8 -1.1787356823051625 11 6.5834531643157783 13 0.99161045495694855 
		16 -6.5290168112633511 23 11.783606204137101;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.4030948218520338 2 -19.713013998044485 
		5 18.737481670184192 8 4.8419352903929154 11 -7.0231336990779614 13 -5.1254075887366684 
		16 7.4228031599308189 23 7.5423825101936588;
	setAttr -s 8 ".kit[0:7]"  3 9 9 1 9 9 1 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 1 9 9 1 
		3;
	setAttr -s 8 ".kix[3:7]"  0.29572877287864685 0.69180184602737427 
		0.55144459009170532 0.94529211521148682 1;
	setAttr -s 8 ".kiy[3:7]"  -0.95527195930480957 -0.72208738327026367 
		0.83421152830123901 0.32622507214546204 0;
	setAttr -s 8 ".kox[3:7]"  0.29572880268096924 0.69180184602737427 
		0.55144459009170532 0.94529211521148682 1;
	setAttr -s 8 ".koy[3:7]"  -0.95527195930480957 -0.72208738327026367 
		0.83421152830123901 0.3262251615524292 0;
createNode animCurveTA -n "animCurveTA640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 5 0 8 0 11 0 13 0 16 0.10633275776453374 
		23 -1.8903601258661931;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 5 0 8 0 11 0 13 0 16 -0.14398475666619143 
		23 2.5597289571479034;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 7.9008995674020186 5 13.902630719132157 
		8 32.999877464068796 11 25.723884979038182 13 20.201647746547522 16 12.292629576166151 
		23 2.0168110874036045;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 5 0 8 0 11 0 13 0 16 0 
		23 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA644";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 5 0 8 0 11 0 13 0 16 0 
		23 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA645";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 66.910735171519136 2 66.910735171519136 
		5 66.910735171519136 8 66.910735171519136 11 66.910735171519136 13 66.910735171519136 
		16 68.794077659127268 23 33.429092416277157;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA646";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 26.194612819039175 2 26.194612819039175 
		5 26.194612819039175 8 26.194612819039175 11 26.194612819039175 13 26.194612819039175 
		16 27.203809250256043 23 8.2533422302317216;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 42.116293762219605 2 42.116293762219605 
		5 42.116293762219605 8 42.116293762219605 11 42.116293762219605 13 42.116293762219605 
		16 43.176768890663695 23 23.263402056531085;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 51.312599966148291 2 51.312599966148291 
		5 51.312599966148291 8 51.312599966148291 11 51.312599966148291 13 51.312599966148291 
		16 53.064580629887352 23 20.166277752815617;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 5 0 8 0 11 0 13 0 16 0 
		23 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 2 0 5 0 8 0 11 0 13 0 16 0 
		23 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 55.749331591600708 2 55.749331591600708 
		5 55.749331591600708 8 55.749331591600708 11 55.749331591600708 13 55.749331591600708 
		16 57.914687334191584 23 17.254116939558376;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
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
select -ne :characterPartition;
select -ne :hyperGraphLayout;
	setAttr ".cch" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".img" -type "string" "";
	setAttr ".ims" 1;
select -ne :ikSystem;
connectAttr "hom_run_into_personSource.st" "clipLibrary1.st[0]";
connectAttr "hom_run_into_personSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL194.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL195.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL196.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL197.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL198.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA539.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU41.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU42.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU43.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU44.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU45.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU46.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU47.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU48.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA540.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA541.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA542.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL199.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL200.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL201.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL202.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL203.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL204.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA543.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA544.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA545.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL205.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL206.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL207.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA546.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA547.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA548.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA549.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA550.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA551.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA552.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA553.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA554.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL208.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL209.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL210.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL211.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL212.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL213.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL214.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL215.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL216.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA555.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA556.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA557.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA558.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA559.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA560.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA561.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA562.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA563.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA564.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA565.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA566.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA567.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA568.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA569.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA570.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA571.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA572.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA573.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA574.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA575.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA576.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA577.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA578.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA579.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA580.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA581.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA582.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA583.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTL217.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTL218.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTL219.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA584.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA585.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA586.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL220.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL221.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL222.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA587.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA588.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA589.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL223.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL224.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL225.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA590.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA591.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA592.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL226.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL227.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL228.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA593.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA594.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA595.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL229.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL230.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL231.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL232.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL233.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL234.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA596.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA597.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA598.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA599.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA600.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA601.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA602.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA603.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA604.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA605.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA606.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA607.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA608.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA609.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA610.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA611.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA612.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA613.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA614.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA615.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA616.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA617.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA618.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA619.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA620.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA621.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA622.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA623.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA624.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA625.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA626.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA627.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA628.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA629.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA630.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA631.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA632.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA633.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA634.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA635.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA636.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA637.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA638.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA639.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA640.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA641.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA642.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA643.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA644.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA645.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA646.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA647.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA648.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA649.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA650.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA651.a" "clipLibrary1.cel[0].cev[161].cevr";
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
// End of hom_run_into_person.ma
