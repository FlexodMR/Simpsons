//Maya ASCII 4.0 scene
//Name: brt_run_into_object.ma
//Last modified: Tue, May 27, 2003 01:53:00 PM
requires maya "4.0";
requires "p3dDeformer" "2.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_run_into_objectSource";
	setAttr ".ihi" 0;
	setAttr ".du" 30;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.014638358985086029 1 -0.014638358985086029 
		2 -0.014638358985086029 3 -0.014638358985086029 4 -0.014638358985086029 5 
		-0.014638358985086029 6 -0.014638358985086029 7 -0.014638358985086029 8 -0.014638358985086029 
		9 -0.014638358985086029 10 -0.014818627851416371 11 -0.01499889671774671 
		12 -0.014638358985086029 13 -0.013275642370007392 14 -0.01058230967146034 
		15 -0.0047939433400725961 16 -0.00074859090406696695 17 -0.0048245112850136837 
		18 -0.010636652572672997 19 -0.012901643413216552 20 -0.014692701886298688 
		21 -0.017409432748537471 22 -0.020789303726944 23 -0.024923484189057443 24 
		-0.028761783057018646 25 -0.03213908037206413 26 -0.033880036066693167 27 
		-0.033880036066693167 28 -0.033880036066693167 29 -0.033880036066693167 30 
		-0.033880036066693167;
createNode animCurveTL -n "animCurveTL154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.32294453418752544 1 0.37350198317665884 
		2 0.43334041805627577 3 0.49000228648782296 4 0.55035658260252651 5 0.60753431369074262 
		6 0.62847094715261353 7 0.58637409242914829 8 0.50803613961756822 9 0.44076972710233264 
		10 0.40906901220467179 11 0.38843983646790087 12 0.35271236460960836 13 0.27053862828315323 
		14 0.18077023753871191 15 0.13688842954634636 16 0.083955515333272751 17 
		-0.029877928623935283 18 -0.16039541196245494 19 -0.28567057554420855 20 
		-0.39068249917774012 21 -0.44347429922329634 22 -0.47292748972312559 23 -0.49935122498111129 
		24 -0.51650569710536198 25 -0.52964577856342299 26 -0.53632722082505524 27 
		-0.53632722082505524 28 -0.53632722082505524 29 -0.53632722082505524 30 -0.53632722082505524;
createNode animCurveTA -n "animCurveTA378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0;
createNode animCurveTU -n "animCurveTU25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU27";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU28";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU31";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.19763288944005308 3 -0.19763288944005308 
		6 -0.19763288944005308 9 -0.19763288944005308 12 -0.19763288944005308 14 
		-0.19763288944005308 16 -0.19763288944005308 18 -0.19763288944005308 20 -0.20188184663993877 
		22 -0.2156909575395676 24 -0.2411847007388819 26 -0.26454016861507795;
	setAttr -s 12 ".kit[11]"  3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kox[0:11]"  1 1 1 1 1 1 1 0.29940694570541382 
		0.07363542914390564 0.033905088901519775 0.027284717187285423 1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 -0.95412552356719971 
		-0.99728524684906006 -0.99942505359649658 -0.99962770938873291 0;
createNode animCurveTL -n "animCurveTL160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.26240534224675016 3 0.21784167811230343 
		6 0.21784167811230343 9 0.31199121176028222 12 0.40614074540826112 14 0.30676068211317264 
		16 0.21957337863059806 18 0.209 20 0.209 22 0.209 24 0.209 26 0.209;
	setAttr -s 12 ".kit[6:11]"  1 9 9 9 9 3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 1 
		9 9 9 9 3;
	setAttr -s 12 ".kix[6:11]"  0.021346244961023331 0.12511202692985535 
		1 1 1 1;
	setAttr -s 12 ".kiy[6:11]"  -0.99977213144302368 -0.99214261770248413 
		0 0 0 0;
	setAttr -s 12 ".kox[0:11]"  0.029906356707215309 0.044834483414888382 
		0.021238010376691818 0.010620801709592342 0.30360183119773865 0.0071464767679572105 
		0.02134767547249794 0.12511202692985535 1 1 1 1;
	setAttr -s 12 ".koy[0:11]"  -0.99955272674560547 -0.99899441003799438 
		0.99977445602416992 0.99994361400604248 -0.95279902219772339 -0.99997448921203613 
		-0.99977213144302368 -0.99214261770248413 0 0 0 0;
createNode animCurveTL -n "animCurveTL161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.99077043779297014 3 0.99077043779297014 
		6 0.99077043779297014 9 1.1686084457947072 12 0.49387012131752633 14 -0.11914465855768581 
		16 -0.40632858922895798 18 -0.67006255961953853 20 -0.90662572704967048 22 
		-1.134233985851967 24 -1.275 26 -1.275;
	setAttr -s 12 ".kit[10:11]"  3 3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 3 3;
	setAttr -s 12 ".kox[0:11]"  1 1 0.011245478875935078 0.0040249195881187916 
		0.0012942429166287184 0.0014811528380960226 0.0024201963096857071 0.0026650733780115843 
		0.0028724900912493467 0.0036194834392517805 1 1;
	setAttr -s 12 ".koy[0:11]"  0 0 0.99993675947189331 -0.99999189376831055 
		-0.99999916553497314 -0.99999892711639404 -0.99999707937240601 -0.99999642372131348 
		-0.9999958872795105 -0.99999344348907471 0 0;
createNode animCurveTA -n "animCurveTA382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -31.548014841396505 3 -0.53304691491522027 
		6 -0.53304691491522027 9 22.621094043737155 12 68.824051617253687 14 104.49130482412818 
		16 145.2163385977403 18 175.09288070602076 20 181.08979608619347 22 180.56651008919007 
		24 180.56651008919007 26 180.56651008919007;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 12 ".kox[0:11]"  0.23916614055633545 0.34657302498817444 
		0.44355848431587219 0.16300974786281586 0.11585403233766556 0.099506407976150513 
		0.10757696628570557 0.2082846611738205 0.81288266181945801 0.9976622462272644 
		1 1;
	setAttr -s 12 ".koy[0:11]"  0.97097867727279663 0.93802297115325928 
		0.89624541997909546 0.98662447929382324 0.99326622486114502 0.99503690004348755 
		0.99419677257537842 0.97806823253631592 0.5824275016784668 -0.06833784282207489 
		0 0;
createNode animCurveTA -n "animCurveTA383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 9 0 12 0 14 -68.362223720600639 
		16 -88.981233948379568 18 -107.87165597838055 20 -133.26814693205785 22 -149.93845224766164 
		24 -149.93845224766164 26 -149.93845224766164;
	setAttr -s 12 ".kit[9:11]"  3 3 3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 3 3 3;
	setAttr -s 12 ".kox[0:11]"  1 1 1 1 0.13834355771541595 0.085539795458316803 
		0.18984107673168182 0.16998821496963501 0.17868006229400635 1 1 1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 -0.99038428068161011 -0.9963347315788269 
		-0.98181486129760742 -0.98544609546661377 -0.98390722274780273 0 0 0;
createNode animCurveTA -n "animCurveTA384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 9 0 12 0 14 -81.316724271465802 
		16 -144.43403444118093 18 -175.30543128109275 20 -181.16133641088786 22 -180.47184260617811 
		24 -180.47184260617811 26 -180.47184260617811;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 12 ".kox[0:11]"  1 1 1 1 0.11663190275430679 0.05281839519739151 
		0.081013210117816925 0.20364551246166229 0.82835602760314941 0.99595177173614502 
		1 1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 -0.993175208568573 -0.99860411882400513 
		-0.99671304225921631 -0.97904467582702637 -0.56020200252532959 0.089889161288738251 
		0 0;
createNode animCurveTL -n "animCurveTL162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.19697756422115981 3 0.19697756422115981 
		6 0.19697756422115981 9 0.19697756422115981 12 0.19697756422115981 14 0.22285064946623714 
		16 0.19697756422115981 18 0.16803298641173797 20 0.15747928107417436 22 0.17342073655394113 
		24 0.20395132069309113 26 0.21594587158542247;
	setAttr -s 12 ".kit[9:11]"  1 9 3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 1 9 3;
	setAttr -s 12 ".kix[9:11]"  0.017504701390862465 0.031338606029748917 
		1;
	setAttr -s 12 ".kiy[9:11]"  0.99984675645828247 0.99950879812240601 
		0;
	setAttr -s 12 ".kox[0:11]"  1 1 1 1 0.064283765852451324 1 
		0.024315869435667992 0.033737525343894958 0.24022804200649261 0.01750442199409008 
		0.031338606029748917 1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0.99793165922164917 0 -0.99970430135726929 
		-0.99943071603775024 0.97071647644042969 0.99984675645828247 0.99950879812240601 
		0;
createNode animCurveTL -n "animCurveTL163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.56416248690804527 3 0.28992455377298898 
		6 0.24335939456752909 9 0.21720674633197948 12 0.35843104680394783 14 0.44920985310757061 
		16 0.43354423156548061 18 0.52615826155990153 20 0.36193541733957746 22 0.2578386177777407 
		24 0.21251077954266293 26 0.20927213942423276;
	setAttr -s 12 ".kit[10:11]"  1 3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 1 3;
	setAttr -s 12 ".kix[10:11]"  0.036768846213817596 1;
	setAttr -s 12 ".kiy[10:11]"  -0.99932378530502319 0;
	setAttr -s 12 ".kox[0:11]"  0.0048619001172482967 0.0062342323362827301 
		0.027493180707097054 0.017377849668264389 0.0071836267597973347 0.017748193815350533 
		0.017325026914477348 0.018616454675793648 0.0049691363237798214 0.0089227603748440742 
		0.036768846213817596 1;
	setAttr -s 12 ".koy[0:11]"  -0.99998819828033447 -0.99998056888580322 
		-0.99962198734283447 0.99984902143478394 0.99997419118881226 0.99984246492385864 
		0.99984991550445557 -0.99982666969299316 -0.99998766183853149 -0.99996018409729004 
		-0.99932378530502319 0;
createNode animCurveTL -n "animCurveTL164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.092819338422239051 3 0.81954986123013751 
		6 1.4001855779957431 9 1.4001855779957431 12 1.274652866465104 14 0.91720487778884274 
		16 0.66117055145127868 18 -0.052430078362726576 20 -0.79818568184199612 22 
		-1.1636301047837108 24 -1.21 26 -1.21;
	setAttr -s 12 ".kit[10:11]"  3 3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 3 3;
	setAttr -s 12 ".kox[0:11]"  0.0018346980214118958 0.0015297915088012815 
		0.0034444797784090042 0.015930080786347389 0.0034507729578763247 0.0021733799949288368 
		0.0013750867219641805 0.00091364444233477116 0.0011999030830338597 0.0032376879826188087 
		1 1;
	setAttr -s 12 ".koy[0:11]"  0.99999833106994629 0.99999880790710449 
		0.99999403953552246 -0.99987310171127319 -0.99999403953552246 -0.99999761581420898 
		-0.99999904632568359 -0.99999958276748657 -0.9999992847442627 -0.99999475479125977 
		0 0;
createNode animCurveTA -n "animCurveTA385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 72.51831712904297 3 47.005425904340179 
		6 -13.581397083491124 9 1.0120070703013659 12 25.389014014477404 14 -12.549277268234711 
		16 -39.529429389048211 18 -39.529429389048211 20 9.8512978022437903 22 14.221886143155237 
		24 3.1626003140528236 26 0;
	setAttr -s 12 ".kit[9:11]"  1 1 3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 1 1 3;
	setAttr -s 12 ".kix[9:11]"  0.51392239332199097 0.61449289321899414 
		1;
	setAttr -s 12 ".kiy[9:11]"  -0.85783666372299194 -0.78892236948013306 
		0;
	setAttr -s 12 ".kox[0:11]"  0.28685075044631958 0.13192836940288544 
		0.24175721406936646 0.28210446238517761 0.57574218511581421 0.11687102168798447 
		0.27243950963020325 0.15288609266281128 0.14071153104305267 0.51392233371734619 
		0.61449295282363892 1;
	setAttr -s 12 ".koy[0:11]"  -0.95797526836395264 -0.99125927686691284 
		-0.97033679485321045 0.95938366651535034 -0.8176313042640686 -0.99314707517623901 
		-0.96217292547225952 0.98824381828308105 0.99005061388015747 -0.85783672332763672 
		-0.78892230987548828 0;
createNode animCurveTA -n "animCurveTA386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 9 0 12 0 14 -55.802302129514253 
		16 -54.944135507137361 18 -54.944135507137361 20 -33.52421238544536 22 -3.4728071369851357 
		24 9.9382704887241236 26 0;
	setAttr -s 12 ".kit[11]"  3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kox[0:11]"  1 1 1 1 0.16867531836032867 0.13771529495716095 
		0.99374967813491821 0.33592551946640015 0.14681296050548553 0.17311692237854004 
		0.91035139560699463 1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 -0.98567163944244385 -0.99047183990478516 
		0.11163162440061569 0.94188857078552246 0.98916429281234741 0.98490124940872192 
		0.41383609175682068 0;
createNode animCurveTA -n "animCurveTA387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 9 0 12 0 14 59.445644153443361 
		16 68.260936670903646 18 68.260936670903646 20 -2.6247371328706324 22 -0.4085330006910407 
		24 -0.36859120229385878 26 0;
	setAttr -s 12 ".kit[11]"  3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kox[0:11]"  1 1 1 1 0.15860575437545776 0.11122085154056549 
		0.65490686893463135 0.10715077817440033 0.11056729406118393 0.95905047655105591 
		0.9985731840133667 1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0.98734200000762939 0.99379569292068481 
		0.75570958852767944 -0.99424278736114502 -0.99386864900588989 0.28323525190353394 
		0.053400542587041855 0;
createNode animCurveTA -n "animCurveTA388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 9 0 12 0 14 0 16 0 
		18 0 20 0 22 0 24 0 26 0;
	setAttr -s 12 ".kit[11]"  3;
	setAttr -s 12 ".kot[0:11]"  1 1 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kox[0:11]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 9 0 12 0 14 0 16 0 
		18 0 20 0 22 0 24 0 26 0;
	setAttr -s 12 ".kit[11]"  3;
	setAttr -s 12 ".kot[0:11]"  1 1 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kox[0:11]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 3 1 6 1 9 1 12 1 14 1 16 1 
		18 1 20 1 22 1 24 1 26 1;
	setAttr -s 12 ".kit[11]"  3;
	setAttr -s 12 ".kot[0:11]"  1 1 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kox[0:11]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 9 0 12 0 14 0 16 0 
		18 0 20 0 22 0 24 0 26 0;
	setAttr -s 12 ".kit[11]"  3;
	setAttr -s 12 ".kot[0:11]"  1 1 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kox[0:11]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 9 0 12 0 14 0 16 0 
		18 0 20 0 22 0 24 0 26 0;
	setAttr -s 12 ".kit[11]"  3;
	setAttr -s 12 ".kot[0:11]"  1 1 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kox[0:11]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 3 1 6 1 9 1 12 1 14 1 16 1 
		18 1 20 1 22 1 24 1 26 1;
	setAttr -s 12 ".kit[11]"  3;
	setAttr -s 12 ".kot[0:11]"  1 1 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kox[0:11]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.033041213165890024 3 -0.033041213165890024 
		6 -0.033041213165890024 9 -0.033041213165890024 12 -0.033041213165890024 
		14 -0.023886034629866385 16 -0.001689694292954766 18 -0.024008695604696265 
		20 -0.033163874140719904 22 -0.046924919433402712 24 -0.064920132508449482 
		26 -0.076472881617957691;
	setAttr -s 12 ".kit[9:11]"  1 9 3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 1 9 3;
	setAttr -s 12 ".kix[9:11]"  0.038186632096767426 0.045078501105308533 
		1;
	setAttr -s 12 ".kiy[9:11]"  -0.99927061796188354 -0.99898344278335571 
		0;
	setAttr -s 12 ".kox[0:11]"  1 1 1 1 0.17910270392894745 0.042490098625421524 
		0.99579507112503052 0.042324807494878769 0.058084707707166672 0.038186598569154739 
		0.045078501105308533 1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0.98383039236068726 0.99909687042236328 
		-0.091608896851539612 -0.99910390377044678 -0.99831163883209229 -0.99927061796188354 
		-0.99898344278335571 0;
createNode animCurveTL -n "animCurveTL172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.93512154976241957 3 0.77743473820976183 
		6 0.73933597158711239 9 0.87532974241196981 12 0.9642487464128382 14 0.95378768711861839 
		16 0.86391633075171093 18 0.88198421497262569 20 0.88599073185105337 22 0.91171322562305634 
		24 0.96510324566225536 26 0.97579359655002906;
	setAttr -s 12 ".kit[11]"  3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kox[0:11]"  0.0084552764892578125 0.010214723646640778 
		0.020425789058208466 0.0088919848203659058 0.021238010376691818 0.013287984766066074 
		0.018566003069281578 0.060291904956102371 0.04480452835559845 0.016851240769028664 
		0.020802700892090797 1;
	setAttr -s 12 ".koy[0:11]"  -0.99996423721313477 -0.99994784593582153 
		0.99979138374328613 0.99996048212051392 0.99977445602416992 -0.99991172552108765 
		-0.99982762336730957 0.9981808066368103 0.99899578094482422 0.99985802173614502 
		0.99978357553482056 0;
createNode animCurveTL -n "animCurveTL173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.72893957619979599 3 1.1060167342604983 
		6 1.4185635531000929 9 0.99489065168418922 12 0.79613052509401228 14 0.40802852004452689 
		16 0.18950157469187867 18 -0.3620391467979206 20 -0.88183543993326252 22 
		-1.0674760754174264 24 -1.1658393442080621 26 -1.2105798230528828;
	setAttr -s 12 ".kit[10:11]"  1 3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 1 3;
	setAttr -s 12 ".kix[10:11]"  0.011431834660470486 1;
	setAttr -s 12 ".kiy[10:11]"  -0.99993467330932617 0;
	setAttr -s 12 ".kox[0:11]"  0.0035359472967684269 0.0029001189395785332 
		0.017994660884141922 0.0032131804618984461 0.0028399513103067875 0.002197933616116643 
		0.0017314468277618289 0.001244549872353673 0.0018900781869888306 0.0046947193332016468 
		0.011431830003857613 1;
	setAttr -s 12 ".koy[0:11]"  0.99999374151229858 0.99999576807022095 
		-0.99983805418014526 -0.99999481439590454 -0.99999594688415527 -0.99999755620956421 
		-0.99999850988388062 -0.99999922513961792 -0.99999821186065674 -0.99998897314071655 
		-0.99993467330932617 0;
createNode animCurveTA -n "animCurveTA400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 20.950825280283908 3 38.78912947386064 
		6 -24.056306679615695 9 -38.595332607777387 12 -41.199507989374851 14 -31.820320933670455 
		16 -31.563695462015268 18 -35.205213548764547 20 -32.466372753003427 22 -13.272841751325615 
		24 -2.2813788381523414 26 -0.62843630316474497;
	setAttr -s 12 ".kit[5:11]"  1 9 1 1 1 9 3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 1 9 
		1 1 1 9 3;
	setAttr -s 12 ".kix[5:11]"  0.63554662466049194 0.91427344083786011 
		0.62596231698989868 0.33087083697319031 0.2291850745677948 0.51712101697921753 
		1;
	setAttr -s 12 ".kiy[5:11]"  0.77206248044967651 -0.40509757399559021 
		-0.77985328435897827 0.94367605447769165 0.97338289022445679 0.85591226816177368 
		0;
	setAttr -s 12 ".kox[0:11]"  0.39367762207984924 0.24673579633235931 
		0.14648349583148956 0.55571889877319336 0.81558406352996826 0.63554686307907104 
		0.91427344083786011 0.62596231698989868 0.33087080717086792 0.22918505966663361 
		0.51712101697921753 1;
	setAttr -s 12 ".koy[0:11]"  0.91924858093261719 -0.96908277273178101 
		-0.98921310901641846 -0.83137023448944092 0.57863861322402954 0.77206230163574219 
		-0.40509757399559021 -0.77985334396362305 0.94367605447769165 0.97338289022445679 
		0.85591226816177368 0;
createNode animCurveTA -n "animCurveTA401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -7.5734518508549122 3 -7.5734518508549282 
		6 -7.5734518508549282 9 -7.5734518508549309 12 -15.19846882241484 14 -45.455475074056551 
		16 -53.369835832189949 18 -52.794557151445304 20 -41.092842745835533 22 -15.715075474249252 
		24 -6.5025994051645073 26 -5.8284402688137167;
	setAttr -s 12 ".kit[11]"  3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kox[0:11]"  1 1 1 0.83253353834152222 0.24443332850933075 
		0.19624368846416473 0.72114098072052002 0.52832275629043579 0.20179042220115662 
		0.2156582772731781 0.61143571138381958 1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 -0.5539746880531311 -0.96966612339019775 
		-0.98055517673492432 -0.69278830289840698 0.84904360771179199 0.97942870855331421 
		0.97646892070770264 0.79129409790039063 0;
createNode animCurveTA -n "animCurveTA402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 9 0 12 6.6406016833075396 
		14 26.347932762940403 16 32.350713313806736 18 33.867487411773276 20 24.51191587032563 
		22 8.2149405126135857 24 -0.074213449246045213 26 -1.2956360193097458;
	setAttr -s 12 ".kit[3:11]"  1 9 9 9 1 9 1 
		1 3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 1 9 9 9 
		1 9 1 1 3;
	setAttr -s 12 ".kix[3:11]"  0.98699665069580078 0.34074163436889648 
		0.28482946753501892 0.7126765251159668 0.9670872688293457 0.28541663289070129 
		0.30538013577461243 0.80882960557937622 1;
	setAttr -s 12 ".kiy[3:11]"  0.16074065864086151 0.94015699625015259 
		0.95857822895050049 0.7014927864074707 -0.25444501638412476 -0.95840352773666382 
		-0.95223051309585571 -0.58804309368133545 0;
	setAttr -s 12 ".kox[0:11]"  1 1 1 0.98699665069580078 0.34074163436889648 
		0.28482946753501892 0.7126765251159668 0.96708720922470093 0.28541663289070129 
		0.30538022518157959 0.80882942676544189 1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0.16074065864086151 0.94015699625015259 
		0.95857822895050049 0.7014927864074707 -0.25444513559341431 -0.95840352773666382 
		-0.95223051309585571 -0.58804333209991455 0;
createNode animCurveTA -n "animCurveTA403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.0984482521620249 29.995000000000001 
		4.0984482521620249 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 0.0023301220498979092;
	setAttr -s 3 ".kiy[1:2]"  0 -0.99999725818634033;
createNode animCurveTA -n "animCurveTA406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 18.588300303494186 29.995000000000001 
		18.588300303494186 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 0.00051375915063545108;
	setAttr -s 3 ".kiy[1:2]"  0 -0.99999988079071045;
createNode animCurveTA -n "animCurveTA407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -22.686733334985114 29.995000000000001 
		-22.686733334985114 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 0.00042094686068594456;
	setAttr -s 3 ".kiy[1:2]"  0 0.99999994039535522;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.0579251312417477e-005 29.995000000000001 
		1.0579251312417477e-005 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 0.99999940395355225;
	setAttr -s 3 ".kiy[1:2]"  0 -0.0011077848030254245;
createNode animCurveTA -n "animCurveTA413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.0984482535121209 29.995000000000001 
		4.0984482535121209 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 0.0023301220498979092;
	setAttr -s 3 ".kiy[1:2]"  0 -0.99999725818634033;
createNode animCurveTA -n "animCurveTA416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 18.588300300216801 29.995000000000001 
		18.588300300216801 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 0.00051375915063545108;
	setAttr -s 3 ".kiy[1:2]"  0 -0.99999988079071045;
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -22.686733333057838 29.995000000000001 
		-22.686733333057838 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 0.00042094686068594456;
	setAttr -s 3 ".kiy[1:2]"  0 0.99999994039535522;
createNode animCurveTA -n "animCurveTA420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.0579251312417477e-005 29.995000000000001 
		1.0579251312417477e-005 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 0.99999940395355225;
	setAttr -s 3 ".kiy[1:2]"  0 -0.0011077848030254245;
createNode animCurveTA -n "animCurveTA423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.4782236286598103 29.995000000000001 
		2.4782236286598103 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 0.0038535019848495722;
	setAttr -s 3 ".kiy[1:2]"  0 -0.99999254941940308;
createNode animCurveTA -n "animCurveTA426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.99214331096561381 29.995000000000001 
		-0.99214331096561381 30 -0.99214331096561381;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.033841737269357866 29.995000000000001 
		-0.033841737269357866 30 -0.033841737269357866;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.027201153963313806 29.995000000000001 
		-0.027201153963313806 30 -0.027201153963313806;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.1805546814635164e-015 29.995000000000001 
		0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.016273151455886e-014 29.995000000000001 
		0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5.3764496942944332e-016 29.995000000000001 
		0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.99214413619678865 29.995000000000001 
		0.99214413619678865 30 0.99214413619678865;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.033851474715545553 29.995000000000001 
		-0.033851474715545553 30 -0.033851474715545553;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.0272011762672867 29.995000000000001 
		-0.0272011762672867 30 -0.0272011762672867;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 6.3611093629270264e-015 29.995000000000001 
		0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.5281705937149269e-014 29.995000000000001 
		0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.5365128437888133e-014 29.995000000000001 
		0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.3705977767760478 29.995000000000001 
		-1.3705977767760478 30 -1.3705977767760478;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.1618658070195953 29.995000000000001 
		2.1618658070195953 30 2.1618658070195953;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.12044246479037771 29.995000000000001 
		-0.12044246479037771 30 -0.12044246479037771;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA435";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA436";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA437";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.3705978542308779 29.995000000000001 
		1.3705978542308779 30 1.3705978542308779;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.1618621235956237 29.995000000000001 
		2.1618621235956237 30 2.1618621235956237;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.12044250833667494 29.995000000000001 
		-0.12044250833667494 30 -0.12044250833667494;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA438";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA439";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 29.995000000000001 -1 30 -1;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 29.995000000000001 -1 30 -1;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 52.63721983934397 3 -17.009190312104128 
		7 11.695538374215145 11 57.806214433872654 15 30.066153750675518 19 44.189081984213693 
		22 31.769079194638014 26 26.63420083898901;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.10903491079807281 0.31040814518928528 
		0.20009106397628784 0.63944381475448608 0.74653744697570801 0.9919847846031189 
		0.60586738586425781 1;
	setAttr -s 8 ".koy[0:7]"  -0.994037926197052 -0.95060336589813232 
		0.97977727651596069 0.76883780956268311 -0.66534340381622314 0.1263575553894043 
		-0.79556566476821899 0;
createNode animCurveTA -n "animCurveTA442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -24.480967171432489 3 -43.081660482765194 
		7 -38.242944922927258 11 4.3601120098486588 15 -33.461948271127255 19 -51.47604202550437 
		22 -61.706022647822032 26 -68.169688810027651;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.37991315126419067 0.69679200649261475 
		0.30654981732368469 0.95436704158782959 0.26393461227416992 0.42783132195472717 
		0.62509685754776001 1;
	setAttr -s 8 ".koy[0:7]"  -0.9250221848487854 -0.71727323532104492 
		0.95185458660125732 0.29863622784614563 -0.96454060077667236 -0.90385860204696655 
		-0.78054714202880859 0;
createNode animCurveTA -n "animCurveTA443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -64.344364641857069 3 30.580012932326245 
		7 13.504179699422727 11 9.0509533540905469 15 -32.773211455332905 19 -14.816157361053175 
		22 -16.897629292092258 26 -25.970494035879817;
	setAttr -s 8 ".kit[5:7]"  1 1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 1 1 
		3;
	setAttr -s 8 ".kix[5:7]"  0.58660346269607544 0.58637207746505737 
		1;
	setAttr -s 8 ".kiy[5:7]"  0.80987429618835449 -0.81004184484481812 
		0;
	setAttr -s 8 ".kox[0:7]"  0.080219820141792297 0.16925343871116638 
		0.57875168323516846 0.31351318955421448 0.53915190696716309 0.58660352230072021 
		0.58637213706970215 1;
	setAttr -s 8 ".koy[0:7]"  0.99677717685699463 0.98557257652282715 
		-0.81550383567810059 -0.94958382844924927 -0.84220850467681885 0.80987423658370972 
		-0.81004184484481812 0;
createNode animCurveTA -n "animCurveTA444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -53.609443747430014 3 -36.692203131982104 
		7 -14.984114326074126 11 52.704286999244907 15 1.1206034477928351 19 1.5064567959488886 
		22 22.115241545390127 26 31.735857389407798;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.41155952215194702 0.32708233594894409 
		0.16846852004528046 0.68826138973236084 0.28596577048301697 0.53712683916091919 
		0.40446346998214722 1;
	setAttr -s 8 ".koy[0:7]"  0.91138285398483276 0.94499582052230835 
		0.98570704460144043 0.72546279430389404 -0.9582398533821106 0.84350144863128662 
		0.9145541787147522 0;
createNode animCurveTA -n "animCurveTA445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -25.279137940425237 3 -17.68311390981307 
		7 -44.555375968100115 11 -26.444332242805189 15 -12.943099608315489 19 -36.390248505967804 
		22 -54.95360354934013 26 -63.76964278851267;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.70911878347396851 0.56989926099777222 
		0.86749786138534546 0.43515962362289429 0.83807629346847534 0.30324560403823853 
		0.43877390027046204 1;
	setAttr -s 8 ".koy[0:7]"  0.7050890326499939 -0.82171458005905151 
		-0.49744096398353577 0.90035331249237061 -0.54555308818817139 -0.95291244983673096 
		-0.89859747886657715 0;
createNode animCurveTA -n "animCurveTA446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 57.594080128123693 3 33.0557659297192 
		7 49.124168406475917 11 -15.930009871539117 15 -0.25001882766762529 19 -37.004366636531394 
		22 -32.77059476071593 26 -29.585363300515361;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.29725438356399536 0.84473711252212524 
		0.2977568507194519 0.29561993479728699 0.58696669340133667 0.38021937012672424 
		0.87438559532165527 1;
	setAttr -s 8 ".koy[0:7]"  -0.95479834079742432 -0.53518146276473999 
		-0.95464175939559937 -0.95530563592910767 -0.80961108207702637 -0.92489635944366455 
		0.48523169755935669 0;
createNode animCurveTA -n "animCurveTA447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 59.468287502559065 3 37.725579003586212 
		7 87.975937699049197 11 87.975937699049197 15 87.975937699049197 19 87.975937699049197 
		22 31.037796811562739 26 12.670039063265145;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.33149012923240662 0.42459148168563843 
		0.29090523719787598 1 1 0.22858253121376038 0.17479631304740906 1;
	setAttr -s 8 ".koy[0:7]"  -0.9434586763381958 0.90538501739501953 
		0.95675188302993774 0 0 -0.97352451086044312 -0.9846045970916748 0;
createNode animCurveTA -n "animCurveTA448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 59.305463658789549 3 30.478021056980502 
		7 88.409827319160556 11 104.25650710177078 15 27.155372573899257 19 35 22 
		36.044400599222477 26 31.526437289979079;
	setAttr -s 8 ".kit[5:7]"  1 9 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 1 9 
		3;
	setAttr -s 8 ".kix[5:7]"  0.59850049018859863 0.96786445379257202 
		1;
	setAttr -s 8 ".kiy[5:7]"  0.80112242698669434 -0.25147238373756409 
		0;
	setAttr -s 8 ".kox[0:7]"  0.25616338849067688 0.41741612553596497 
		0.20278836786746979 0.24201768636703491 0.21543256938457489 0.59850043058395386 
		0.96786445379257202 1;
	setAttr -s 8 ".koy[0:7]"  -0.96663349866867065 0.90871542692184448 
		0.97922259569168091 -0.97027182579040527 -0.97651869058609009 0.80112248659133911 
		-0.25147238373756409 0;
createNode animCurveTA -n "animCurveTA449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 18.476235154862632 3 18.476235154862632 
		7 18.476235154862632 11 18.476235154862632 15 18.476235154862632 19 18.476235154862632 
		22 18.476235154862632 26 -8.8764668469284551;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.43911954760551453 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 -0.89842861890792847 
		0;
createNode animCurveTA -n "animCurveTA450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 10.082003051124275 3 10.082003051124275 
		7 10.082003051124275 11 10.082003051124275 15 10.082003051124275 19 10.082003051124275 
		22 10.082003051124275 26 -3.083799684470474;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.7125011682510376 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 -0.70167094469070435 
		0;
createNode animCurveTA -n "animCurveTA451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -4.720189328892868 3 -4.720189328892868 
		7 -4.720189328892868 11 -4.720189328892868 15 -4.720189328892868 19 -4.720189328892868 
		22 -4.720189328892868 26 7.0307679244346089;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.75109726190567017 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0.66019159555435181 
		0;
createNode animCurveTA -n "animCurveTA452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -11.342548829337769 3 -11.342548829337769 
		7 -11.342548829337769 11 -11.342548829337769 15 -11.342548829337769 19 -11.342548829337769 
		22 -11.342548829337769 26 -12.759477638136943;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.99443036317825317 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 -0.10539572685956955 
		0;
createNode animCurveTA -n "animCurveTA453";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 11.615881410206432 3 11.615881410206432 
		7 11.615881410206432 11 11.615881410206432 15 11.615881410206432 19 11.615881410206432 
		22 11.615881410206432 26 -16.585100467812619;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.42836514115333557 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 -0.90360569953918457 
		0;
createNode animCurveTA -n "animCurveTA454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.32159281075535068 3 0.32159281075535068 
		7 0.32159281075535068 11 0.32159281075535068 15 0.32159281075535068 19 0.32159281075535068 
		22 0.32159281075535068 26 6.2748567152687365;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.9135202169418335 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0.40679338574409485 
		0;
createNode animCurveTA -n "animCurveTA455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 130.15946707981766 3 130.15946707981766 
		7 130.15946707981766 11 130.15946707981766 15 130.15946707981766 19 130.15946707981766 
		22 130.15946707981766 26 129.42403189018472;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.99849033355712891 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 -0.054927375167608261 
		0;
createNode animCurveTA -n "animCurveTA456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 59.959644693642325 3 59.959644693642325 
		7 59.959644693642325 11 59.959644693642325 15 59.959644693642325 19 59.959644693642325 
		22 59.959644693642325 26 29.679154136731796;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.40389245748519897 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 -0.91480648517608643 
		0;
createNode animCurveTA -n "animCurveTA457";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 48.106469618696913 3 48.106469618696913 
		7 48.106469618696913 11 48.106469618696913 15 48.106469618696913 19 48.106469618696913 
		22 48.106469618696913 26 6.8494453790684258;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.30826181173324585 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 -0.95130157470703125 
		0;
createNode animCurveTA -n "animCurveTA458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 7 0 11 0 15 0 19 0 22 0 
		26 1.8235857614974054;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.99082481861114502 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0.13515236973762512 
		0;
createNode animCurveTA -n "animCurveTA459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 7 0 11 0 15 0 19 0 22 0 
		26 -1.9398674485571947;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.9896361231803894 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 -0.14359791576862335 
		0;
createNode animCurveTA -n "animCurveTA460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 101.15442879205187 3 101.15442879205187 
		7 101.15442879205187 11 38.236258404805319 15 38.236258404805319 19 38.236258404805319 
		22 38.236258404805319 26 20.977554168152949;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[0:7]"  1 1 0.23597905039787292 0.23597905039787292 
		1 1 0.61238616704940796 1;
	setAttr -s 8 ".koy[0:7]"  0 0 -0.97175812721252441 -0.97175812721252441 
		0 0 -0.79055875539779663 0;
createNode animCurveTA -n "animCurveTA461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 29.995000000000001 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.705218915343313 29.995000000000001 
		27.705218915343313 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 0.00034469712409190834;
	setAttr -s 3 ".kiy[1:2]"  0 -0.99999994039535522;
createNode animCurveTA -n "animCurveTA465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 43.35103828268312 29.995000000000001 
		43.35103828268312 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 0.00022029252431821078;
	setAttr -s 3 ".kiy[1:2]"  0 -1;
createNode animCurveTA -n "animCurveTA466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 54.23572299800319 29.995000000000001 
		54.23572299800319 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 0.00017608155030757189;
	setAttr -s 3 ".kiy[1:2]"  0 -1;
createNode animCurveTA -n "animCurveTA467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 39.038703285259977 29.995000000000001 
		39.038703285259977 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 0.00024462671717628837;
	setAttr -s 3 ".kiy[1:2]"  0 -0.99999994039535522;
createNode animCurveTA -n "animCurveTA468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 72.755037061650995 29.995000000000001 
		72.755037061650995 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 0.00013126115663908422;
	setAttr -s 3 ".kiy[1:2]"  0 -1;
createNode animCurveTA -n "animCurveTA469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 38.926480273156798 29.995000000000001 
		38.926480273156798 30 0;
	setAttr -s 3 ".kit[1:2]"  1 1;
	setAttr -s 3 ".kix[1:2]"  1 0.00024533196119591594;
	setAttr -s 3 ".kiy[1:2]"  0 -0.99999994039535522;
createNode animCurveTA -n "animCurveTA470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 7 0 11 0 15 0 19 0 22 0 
		26 0;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA471";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 7 0 11 0 15 0 19 0 22 0 
		26 0;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA472";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 81.622987204614219 3 81.622987204614219 
		7 81.622987204614219 11 32.274512460396629 15 32.274512460396629 19 32.274512460396629 
		22 32.274512460396629 26 29.379673520910071;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[0:7]"  1 1 0.29576051235198975 0.29576051235198975 
		1 1 0.97735005617141724 1;
	setAttr -s 8 ".koy[0:7]"  0 0 -0.95526212453842163 -0.95526212453842163 
		0 0 -0.2116289883852005 0;
createNode animCurveTA -n "animCurveTA473";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.2945941069882381 3 1.2945941069882381 
		7 1.2945941069882381 11 2.5947641478829016 15 2.5947641478829016 19 2.5947641478829016 
		22 2.5947641478829016 26 0;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[0:7]"  1 1 0.99639886617660522 0.99639886617660522 
		1 1 0.98168092966079712 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0.084789492189884186 0.084789492189884186 
		0 0 -0.190532386302948 0;
createNode animCurveTA -n "animCurveTA474";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 3.3208811165553147 3 3.3208811165553147 
		7 3.3208811165553147 11 2.4441014616704209 15 2.4441014616704209 19 2.4441014616704209 
		22 2.4441014616704209 26 0;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[0:7]"  1 1 0.99835753440856934 0.99835753440856934 
		1 1 0.98369628190994263 1;
	setAttr -s 8 ".koy[0:7]"  0 0 -0.057290840893983841 -0.057290840893983841 
		0 0 -0.17983774840831757 0;
createNode animCurveTA -n "animCurveTA475";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -27.525824477859967 3 -27.525824477859967 
		7 -27.525824477859967 11 -2.0966670888177723 15 -2.0966670888177723 19 -2.0966670888177723 
		22 -2.0966670888177723 26 0;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[0:7]"  1 1 0.5150255560874939 0.5150255560874939 
		1 1 0.98792445659637451 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0.85717481374740601 0.85717481374740601 
		0 0 0.1549365222454071 0;
createNode animCurveTA -n "animCurveTA476";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -8.7597363552835983 3 -7.6211566029282967 
		7 -28.525938048110056 11 -28.525938048110056 15 -29.971542093729582 19 -8.0542780460752681 
		22 -2.2660973848602057 26 -0.65073001024951671;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 1 
		3;
	setAttr -s 8 ".kix[6:7]"  0.93928611278533936 1;
	setAttr -s 8 ".kiy[6:7]"  0.34313496947288513 0;
	setAttr -s 8 ".kox[0:7]"  0.98907524347305298 0.56024497747421265 
		0.59007459878921509 0.99555385112762451 0.59812253713607788 0.43459016084671021 
		0.90868079662322998 1;
	setAttr -s 8 ".koy[0:7]"  0.1474115252494812 -0.82832694053649902 
		-0.80734872817993164 -0.094193898141384125 0.80140465497970581 0.90062832832336426 
		0.41749155521392822 0;
createNode animCurveTA -n "animCurveTA477";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 -4.3314864942542082 7 -3.8888401465252769 
		11 -3.8888401465252769 15 -19.677160539692284 19 -31.905629240188237 22 -10.391115218389208 
		26 -4.2368721935960938;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.86990141868591309 0.96020162105560303 
		0.99958062171936035 0.69541800022125244 0.47877943515777588 0.82131218910217285 
		0.43505740165710449 1;
	setAttr -s 8 ".koy[0:7]"  -0.49322566390037537 -0.27930781245231628 
		0.028958985581994057 -0.71860545873641968 -0.87793523073196411 0.57047897577285767 
		0.9004027247428894 0;
createNode animCurveTA -n "animCurveTA478";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -8.9349579591731985 3 -38.37779140619169 
		7 -45.059572496862415 11 -45.059572496862415 15 -11.43955781937162 19 -1.6612840884125357 
		22 1.0533931037385307 26 2.6995264082587442;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.25115033984184265 0.34707528352737427 
		0.9162173867225647 0.4137367308139801 0.33208233118057251 0.73064064979553223 
		0.95070153474807739 1;
	setAttr -s 8 ".koy[0:7]"  -0.96794807910919189 -0.93783724308013916 
		-0.40068158507347107 0.91039657592773438 0.94325041770935059 0.68276220560073853 
		0.31010732054710388 0;
createNode animCurveTA -n "animCurveTA479";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 7 0 11 0 15 21.219713545303954 
		19 21.219713545303954 22 13.117639752430737 26 0;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 1 
		3;
	setAttr -s 8 ".kix[6:7]"  0.47245970368385315 1;
	setAttr -s 8 ".kiy[6:7]"  -0.88135224580764771 0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 0.58432185649871826 0.58432185649871826 
		0.85520803928375244 0.47245976328849792 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0.81152200698852539 0.81152200698852539 
		-0.51828485727310181 -0.88135224580764771 0;
createNode animCurveTA -n "animCurveTA480";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 7 0 11 0 15 -0.90036510881463927 
		19 -0.90036510881463927 22 -0.33922828583126574 26 0;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 1 
		3;
	setAttr -s 8 ".kix[6:7]"  0.99732184410095215 1;
	setAttr -s 8 ".kiy[6:7]"  0.073137767612934113 0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 0.99826818704605103 0.99826818704605103 
		0.99912029504776001 0.99732184410095215 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 -0.058826707303524017 -0.058826707303524017 
		0.041936010122299194 0.073137767612934113 0;
createNode animCurveTA -n "animCurveTA481";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 7 0 11 0 15 -0.74557320336010247 
		19 -0.74557320336010247 22 -0.1711116888683484 26 0;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 1 
		3;
	setAttr -s 8 ".kix[6:7]"  0.99807703495025635 1;
	setAttr -s 8 ".kiy[6:7]"  0.061985451728105545 0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 0.99881154298782349 0.99881154298782349 
		0.99907809495925903 0.99807703495025635 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 -0.048739656805992126 -0.048739656805992126 
		0.042930006980895996 0.061985451728105545 0;
createNode animCurveTA -n "animCurveTA482";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 35.126403998396675 7 15.300232190981333 
		11 -13.972770964910845 15 -17.31022929437901 19 -14.670240350220025 22 -2.8276394363643762 
		26 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.21251629292964935 0.65798354148864746 
		0.29712992906570435 0.42426812648773193 0.99895972013473511 0.67829298973083496 
		0.67356699705123901 1;
	setAttr -s 8 ".koy[0:7]"  0.97715753316879272 0.75303232669830322 
		-0.95483702421188354 -0.90553659200668335 -0.045601774007081985 0.73479157686233521 
		0.73912620544433594 0;
createNode animCurveTA -n "animCurveTA483";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -9.2427148064678804 3 10.85770605423096 
		7 11.199189830245531 11 -16.509362056677617 15 -21.769449738919892 19 -29.046540194286042 
		22 -4.4747822866043236 26 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.3552696704864502 0.5473397970199585 
		0.48746907711029053 0.42047744989395142 0.77305686473846436 0.61158937215805054 
		0.41810193657875061 1;
	setAttr -s 8 ".koy[0:7]"  0.93476384878158569 0.83691048622131348 
		-0.87314021587371826 -0.90730297565460205 -0.63433676958084106 0.79117536544799805 
		0.90840011835098267 0;
createNode animCurveTA -n "animCurveTA484";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -10.062830706779266 3 10.153058572960317 
		7 -2.6678925205867472 11 4.4314269963232062 15 6.0462489820881684 19 17.413454471576326 
		22 3.0776087077524976 26 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.35349461436271667 0.87505310773849487 
		0.93648922443389893 0.86865043640136719 0.76206272840499878 0.97622185945510864 
		0.60896790027618408 1;
	setAttr -s 8 ".koy[0:7]"  0.93543654680252075 0.48402696847915649 
		-0.35069641470909119 0.49542546272277832 0.64750319719314575 -0.21677376329898834 
		-0.79319489002227783 0;
createNode animCurveTA -n "animCurveTA485";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 7 0 11 0 15 0 19 -0.36393614420791787 
		22 -1.2887770620182317 26 -1.8903601258661935;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 0.99971646070480347 0.99538564682006836 
		0.99354493618011475 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 -0.023812811821699142 -0.095955468714237213 
		-0.11343923956155777 0;
createNode animCurveTA -n "animCurveTA486";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 7 0 11 0 15 0 19 0.63842298031101774 
		22 1.6843499906077908 26 2.5597289571479038;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 1 
		3;
	setAttr -s 8 ".kix[6:7]"  0.9878847599029541 1;
	setAttr -s 8 ".kiy[6:7]"  0.15518906712532043 0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 0.99912816286087036 0.99215662479400635 
		0.9878847599029541 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0.041748255491256714 0.12500089406967163 
		0.15518906712532043 0;
createNode animCurveTA -n "animCurveTA487";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 5.671986885245901 3 20.055113077823957 
		7 7.2512678476453303 11 7.2512678476453303 15 7.2512678476453303 19 6.2132045973451442 
		22 3.791057013311387 26 2.0168110874036045;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.46907863020896912 0.99309486150741577 
		0.76645565032958984 1 0.99769997596740723 0.96809935569763184 0.9541018009185791 
		1;
	setAttr -s 8 ".koy[0:7]"  0.883156418800354 0.11731423437595367 
		-0.64229726791381836 0 -0.067784816026687622 -0.25056654214859009 -0.29948252439498901 
		0;
createNode animCurveTA -n "animCurveTA488";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 7 0 11 0 15 0 19 0 22 0 
		26 0;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA489";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 7 0 11 0 15 0 19 0 22 0 
		26 0;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA490";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 90.838361755940937 3 90.838361755940937 
		7 90.838361755940937 11 27.97018980266445 15 27.97018980266445 19 27.97018980266445 
		22 27.97018980266445 26 29.32675972834824;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[0:7]"  1 1 0.23615626990795135 0.23615626990795135 
		1 1 0.99489122629165649 1;
	setAttr -s 8 ".koy[0:7]"  0 0 -0.97171509265899658 -0.97171509265899658 
		0 0 0.10095279663801193 0;
createNode animCurveTA -n "animCurveTA491";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 145.26076067896133 3 145.26076067896133 
		7 145.26076067896133 11 145.26076067896133 15 145.26076067896133 19 145.26076067896133 
		22 145.26076067896133 26 142.50700831843537;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.97943812608718872 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 -0.20174485445022583 
		0;
createNode animCurveTA -n "animCurveTA492";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 42.116293762219605 3 42.116293762219605 
		7 42.116293762219605 11 42.116293762219605 15 42.116293762219605 19 42.116293762219605 
		22 42.116293762219605 26 35.273589309985994;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.89017409086227417 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 -0.45562058687210083 
		0;
createNode animCurveTA -n "animCurveTA493";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 51.312599966148291 3 51.312599966148291 
		7 51.312599966148291 11 51.312599966148291 15 51.312599966148291 19 51.312599966148291 
		22 51.312599966148291 26 7.4609265833240919;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.29161784052848816 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 -0.95653492212295532 
		0;
createNode animCurveTA -n "animCurveTA494";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 7 0 11 0 15 0 19 0 22 0 
		26 0;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA495";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 7 0 11 0 15 0 19 0 22 0 
		26 0;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA496";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 86.611733534295581 3 86.611733534295581 
		7 86.611733534295581 11 25.539407792504793 15 25.539407792504793 19 25.539407792504793 
		22 25.539407792504793 26 9.5339583829151504;
	setAttr -s 8 ".kit[6:7]"  1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[0:7]"  1 1 0.24269697070121765 0.24269697070121765 
		1 1 0.64106523990631104 1;
	setAttr -s 8 ".koy[0:7]"  0 0 -0.97010213136672974 -0.97010213136672974 
		0 0 -0.76748639345169067 0;
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
connectAttr "brt_run_into_objectSource.st" "clipLibrary1.st[0]";
connectAttr "brt_run_into_objectSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL151.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL152.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL154.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA378.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU25.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU26.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU27.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU28.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU29.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU30.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU31.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU32.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA379.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA380.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA381.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL156.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL157.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL158.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL159.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL160.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL161.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA382.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA383.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA384.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL162.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL163.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL164.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA385.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA386.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA387.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA388.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA389.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA390.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA391.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA392.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA393.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA394.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA395.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA396.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA397.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA398.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA399.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL165.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL166.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL167.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL168.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL169.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL170.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL171.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL172.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL173.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA400.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA401.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA402.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA403.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA404.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA405.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA406.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA407.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA408.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA409.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA410.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA411.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA412.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA413.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA414.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA415.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA416.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA417.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA418.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA419.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA420.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA421.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA422.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA423.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA424.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA425.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA426.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA427.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA428.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL174.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL175.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL176.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA429.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA430.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA431.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL177.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL178.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL179.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA432.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA433.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA434.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL180.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL181.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL182.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA435.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA436.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA437.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL183.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL184.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL185.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA438.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA439.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA440.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL186.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL187.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL188.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL189.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL190.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL191.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA441.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA442.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA443.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA444.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA445.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA446.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA447.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA448.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA449.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA450.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA451.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA452.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA453.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA454.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA455.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA456.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA457.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA458.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA459.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA460.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA461.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA462.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA463.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA464.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA465.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA466.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA467.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA468.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA469.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA470.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA471.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA472.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA473.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA474.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA475.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA476.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA477.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA478.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA479.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA480.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA481.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA482.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA483.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA484.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA485.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA486.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA487.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA488.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA489.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA490.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA491.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA492.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA493.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA494.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA495.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA496.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of brt_run_into_object.ma
