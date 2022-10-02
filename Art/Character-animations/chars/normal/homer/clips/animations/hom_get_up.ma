//Maya ASCII 4.0 scene
//Name: hom_get_up.ma
//Last modified: Tue, May 27, 2003 06:03:11 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_get_upSource";
	setAttr ".ihi" 0;
	setAttr ".du" 30;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL194";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL195";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.006132465750258006 1 0.00656958531557291 
		2 0.0074438244462027205 3 0.0080995037941750773 4 0.0078809440115176262 5 
		0.006132465750258006 6 0.0013114715644569638 7 -0.0061449189904205226 8 -0.013922809760240459 
		9 -0.019708304590868839 10 -0.021187507328171679 11 -0.016335299828499718 
		12 -0.0063329333781620882 13 0.0063239340320376414 14 0.019139644411295887 
		15 0.032669251605777605 16 0.047982253643498909 17 0.063354658806432901 18 
		0.077062475376552669 19 0.087381711635831319 20 0.093728728312044374 21 0.097252853121305285 
		22 0.098829544828094085 23 0.099334262196890774 24 0.099642463992175384 25 
		0.099491551470842335 26 0.098340717955948204 27 0.096648110311216118 28 0.094871875400369274 
		29 0.093470160087130855 30 0.092901111235224015;
createNode animCurveTL -n "animCurveTL197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0;
createNode animCurveTL -n "animCurveTL198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -3.0686168603610282 1 -3.0728708857438973 
		2 -3.0770749389608607 3 -3.0818419778744151 4 -3.0877849603470553 5 -3.0955168442412759 
		6 -3.1040726875456324 7 -3.1130438515294618 8 -3.1238777489764313 9 -3.1380217926702092 
		10 -3.1569233953944638 11 -3.1894891462155921 12 -3.2332074716795733 13 -3.2723985407894474 
		14 -3.2913825225482563 15 -3.2865341907018695 16 -3.2683899465110877 17 -3.2425124002513379 
		18 -3.2144641621980505 19 -3.1898078426266547 20 -3.1717701372843066 21 -3.1589487140070509 
		22 -3.1499635740661613 23 -3.1434347187329128 24 -3.1379821492785784 25 -3.1337096874869474 
		26 -3.1313141065650116 27 -3.1303048349188489 28 -3.1301913009545399 29 -3.1304829330781629 
		30 -3.1306891596957973;
createNode animCurveTA -n "animCurveTA539";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0;
createNode animCurveTU -n "animCurveTU41";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU42";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU43";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU44";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU45";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU46";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU47";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 25 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU48";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 25 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA540";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA541";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA542";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL199";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL200";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL201";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.13089637572580659 5 -0.13089637572580659 
		10 -0.13089637572580659 14 -0.13089637572580659 19 -0.13500263782865773 24 
		-0.10091553850717123 30 -0.10091553850717123;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kox[0:6]"  1 1 1 0.58992302417755127 0.1105012446641922 
		0.10695060342550278 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 -0.80745947360992432 0.99387598037719727 
		0.99426436424255371 0;
createNode animCurveTL -n "animCurveTL203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.25386361095716931 5 0.25386361095716931 
		10 0.25386361095716931 14 0.25386361095716931 19 0.33959970182474325 24 0.2645981327338503 
		30 0.13806192026723146;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kox[0:6]"  1 1 1 0.034969694912433624 0.29655584692955017 
		0.018190434202551842 0.015803778544068336;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0.99938839673995972 0.95501554012298584 
		-0.99983453750610352 -0.99987512826919556;
createNode animCurveTL -n "animCurveTL204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -5.2108034199590554 5 -5.2108034199590554 
		10 -5.2108034199590554 14 -5.2108034199590554 19 -5.1785840601385758 24 -4.7048440959083937 
		30 -4.7204357010992108;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kox[0:6]"  1 1 1 0.092710688710212708 0.0065880017355084419 
		0.0080029731616377831 0.12723168730735779;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0.99569308757781982 0.99997830390930176 
		0.99996799230575562 -0.99187302589416504;
createNode animCurveTA -n "animCurveTA543";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -239.7234789790609 5 -239.7234789790609 
		10 -239.7234789790609 14 -239.7234789790609 19 -253.37040445905274 24 -323.16238946858846 
		30 -360.44365467661027;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kox[0:6]"  1 1 1 0.78317630290985107 0.22312280535697937 
		0.19253534078598022 0.29380470514297485;
	setAttr -s 7 ".koy[0:6]"  0 0 0 -0.62179970741271973 -0.97479033470153809 
		-0.98129004240036011 -0.95586544275283813;
createNode animCurveTA -n "animCurveTA544";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0 14 0 19 0 24 0 30 
		-16.037604074062365;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 0.79486298561096191 0.58136332035064697;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 -0.6067889928817749 -0.81364405155181885;
createNode animCurveTA -n "animCurveTA545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0 14 0 19 0 24 0 30 
		-1.2125589139112301;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 0.99833846092224121 0.99444812536239624;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 -0.057621769607067108 
		-0.1052282452583313;
createNode animCurveTL -n "animCurveTL205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.30774412616396013 5 0.34312353490542324 
		10 0.34312353490542324 14 0.34312353490542324 19 0.34312353490542324 24 0.34312353490542324 
		30 0.34312353490542324;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kox[0:6]"  0.056439947336912155 0.093801349401473999 
		1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0.99840599298477173 0.9955909252166748 
		0 0 0 0 0;
createNode animCurveTL -n "animCurveTL206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.22297080503070818 5 0.25313198850129909 
		10 0.2617494694928964 14 0.14572133713667584 19 0.14572133713667584 24 0.14572133713667584 
		30 0.1380615615975922;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.17149074375629425;
	setAttr -s 7 ".kiy[6]"  -0.98518574237823486;
	setAttr -s 7 ".kox[0:6]"  1 0.085642106831073761 0.027919303625822067 
		0.025847159326076508 1 0.43177130818367004 0;
	setAttr -s 7 ".koy[0:6]"  0 0.99632596969604492 -0.99961018562316895 
		-0.99966591596603394 0 -0.90198314189910889 0;
createNode animCurveTL -n "animCurveTL207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -5.2136697480835563 5 -4.934224115171534 
		10 -4.8247639612848756 14 -4.7393954709948511 19 -4.7393954709948511 24 -4.7393954709948511 
		30 -4.7393954709948511;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kox[0:6]"  0.00715684425085783 0.0085707409307360649 
		0.015396322123706341 0.035120092332363129 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0.99997437000274658 0.99996328353881836 
		0.99988144636154175 0.99938309192657471 0 0 0;
createNode animCurveTA -n "animCurveTA546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -233.40027923404165 5 -233.40027923404165 
		10 -288.35995638478278 14 -357.10520496243873 19 -357.10520496243873 24 -357.10520496243873 
		30 -359.70442784698969;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kox[0:6]"  1 0.32824745774269104 0.1376272439956665 
		0.24256779253482819 1 0.99243313074111938 0.97522711753845215;
	setAttr -s 7 ".koy[0:6]"  0 -0.94459176063537598 -0.99048411846160889 
		-0.970134437084198 0 -0.12278652936220169 -0.22120587527751923;
createNode animCurveTA -n "animCurveTA547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0 14 0 19 0 24 0 30 
		0;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0 14 0 19 0 24 0 30 
		0;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA549";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA550";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA551";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA552";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA553";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA554";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0 14 0 19 0 24 0 30 
		0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0 14 0 19 0 24 0 30 
		0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 5 1 10 1 14 1 19 1 24 1 30 
		1;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0.48187139458024847 10 0.48187139458024847 
		14 0.48187139458024847 19 -0.0291368729651365 24 -0.0291368729651365 30 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.045713175088167191;
	setAttr -s 7 ".kiy[6]"  0.99895459413528442;
	setAttr -s 7 ".kox[0:6]"  0.0041504492983222008 0.0069173094816505909 
		1 0.0058706454001367092 0.0065229129977524281 0.124858058989048 0;
	setAttr -s 7 ".koy[0:6]"  0.99999135732650757 0.99997609853744507 
		0 -0.99998277425765991 -0.99997872114181519 0.99217462539672852 0;
createNode animCurveTL -n "animCurveTL212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 -3.070478361222925e-015 
		14 0 19 0 24 0 30 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 5 1.0000000000000018 10 1.0000000000000018 
		14 1.0000000000000018 19 1.0000000000000011 24 1.0000000000000011 30 1;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.0091193615065254061 5 0.0091193615065254061 
		10 -0.031507153340338628 14 0.02846185263824955 19 0.12994209016700625 24 
		0.14817459853034778 30 0.13814978382493101;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  1 0.081773437559604645 0.15326644480228424 
		0.018578484654426575 0.027833642438054085 0.40788435935974121 1;
	setAttr -s 7 ".koy[0:6]"  0 -0.99665093421936035 0.98818492889404297 
		0.99982738494873047 0.99961256980895996 0.91303360462188721 0;
createNode animCurveTL -n "animCurveTL215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.42926098354990871 5 0.45202129965825594 
		10 0.51632480643412726 14 0.62052249093824974 19 0.79875668910014552 24 0.91724736628711656 
		30 0.93105416142265018;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  0.08753494918346405 0.038258060812950134 
		0.017801206558942795 0.010621431283652782 0.011233041994273663 0.027704678475856781 
		1;
	setAttr -s 7 ".koy[0:6]"  0.99616146087646484 0.99926787614822388 
		0.99984157085418701 0.99994361400604248 0.99993687868118286 0.99961614608764648 
		0;
createNode animCurveTL -n "animCurveTL216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -4.5632258889458726 5 -4.6032278534922488 
		10 -4.6945432495564345 14 -4.8944924116558255 19 -4.7434444867529066 24 -4.6663764276369548 
		30 -4.6555312943451943;
	setAttr -s 7 ".kit[4:6]"  1 9 3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 1 9 3;
	setAttr -s 7 ".kix[4:6]"  0.010619786567986012 0.041671577841043472 
		1;
	setAttr -s 7 ".kiy[4:6]"  0.99994361400604248 0.99913138151168823 
		0;
	setAttr -s 7 ".kox[0:6]"  0.049935169517993927 0.025375623255968094 
		0.01029936783015728 0.061233017593622208 0.010619943030178547 0.041671577841043472 
		1;
	setAttr -s 7 ".koy[0:6]"  -0.99875247478485107 -0.99967801570892334 
		-0.9999469518661499 -0.99812352657318115 0.99994361400604248 0.99913138151168823 
		0;
createNode animCurveTA -n "animCurveTA555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -262.00552149884214 5 -306.17226944723944 
		10 -331.03236204269228 14 -345.14382945253328 19 -347.50357384136299 24 -353.58567944216963 
		30 -359.60000000000002;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kox[0:6]"  0.25113707780838013 0.26666468381881714 
		0.40354979038238525 0.72201603651046753 0.9146345853805542 0.8666108250617981 
		0.88545310497283936;
	setAttr -s 7 ".koy[0:6]"  -0.96795153617858887 -0.96378934383392334 
		-0.91495770215988159 -0.69187635183334351 -0.40428152680397034 -0.49898460507392883 
		-0.4647287130355835;
createNode animCurveTA -n "animCurveTA556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 4.1816836260263512 5 3.4691447059634131 
		10 -0.39568077725646172 14 -0.39568077725646267 19 1.5027982568039084 24 
		1.5027982568039115 30 -5.8284402688137167;
	setAttr -s 7 ".kit[4:6]"  1 9 3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 1 9 3;
	setAttr -s 7 ".kix[4:6]"  0.98595988750457764 0.94416230916976929 
		1;
	setAttr -s 7 ".kiy[4:6]"  0.1669822633266449 -0.32948067784309387 
		0;
	setAttr -s 7 ".kox[0:6]"  1 0.97246003150939941 0.97564184665679932 
		0.99395573139190674 0.98595988750457764 0.94416230916976929 1;
	setAttr -s 7 ".koy[0:6]"  0 -0.23306973278522491 -0.21936959028244019 
		0.10978145152330399 0.16698223352432251 -0.32948067784309387 0;
createNode animCurveTA -n "animCurveTA557";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.4726187357019644 5 -0.45191489140760738 
		10 6.8309748649578168 14 5.1298017911339002 19 -2.2604771364620886 24 -3.4853217496153106 
		30 -1.295636019309746;
	setAttr -s 7 ".kit[0:6]"  3 9 9 1 1 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 1 1 9 3;
	setAttr -s 7 ".kix[3:6]"  0.82686144113540649 0.90147966146469116 
		0.99894702434539795 1;
	setAttr -s 7 ".kiy[3:6]"  -0.56240570545196533 -0.43282142281532288 
		0.04587797075510025 0;
	setAttr -s 7 ".kox[3:6]"  0.82686138153076172 0.90147966146469116 
		0.99894702434539795 1;
	setAttr -s 7 ".koy[3:6]"  -0.56240576505661011 -0.43282145261764526 
		0.04587797075510025 0;
createNode animCurveTA -n "animCurveTA558";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA559";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA560";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.0984482521620249 25 -6.2120208622334605e-018;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.88119685649871826;
	setAttr -s 2 ".kiy[0:1]"  0 -0.47274956107139587;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA561";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.588300303494186 25 -1.5157330903849591e-015;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.38012981414794922;
	setAttr -s 2 ".kiy[0:1]"  0 -0.92493313550949097;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA562";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA563";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA564";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -22.686733334985114 25 5.8237695583438386e-016;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.3191283643245697;
	setAttr -s 2 ".kiy[0:1]"  0 0.9477115273475647;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA565";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA566";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA567";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0579251312417477e-005 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA568";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA569";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA570";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.0984482535121209 25 -3.5719119957841433e-017;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.88119685649871826;
	setAttr -s 2 ".kiy[0:1]"  0 -0.47274956107139587;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA571";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.588300300216801 25 1.7704259457365309e-016;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.38012981414794922;
	setAttr -s 2 ".kiy[0:1]"  0 -0.92493313550949097;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA572";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA573";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA574";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -22.686733333057838 25 -5.047266950564659e-016;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.3191283643245697;
	setAttr -s 2 ".kiy[0:1]"  0 0.9477115273475647;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA575";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA576";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA577";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0579251312417477e-005 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA578";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 18 0 21 0 30 0;
createNode animCurveTA -n "animCurveTA579";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 14 0 18 0 21 0 30 0;
createNode animCurveTA -n "animCurveTA580";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.4782236286598103 14 2.4782236286598103 
		18 2.4782236286598103 21 -55.467215945503916 26 -19.228463692133491 30 0;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 6 0 10 0 14 0 20 0 30 0;
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 6 0 10 0 14 0 20 0 30 0;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 6 -45.512352659627354 10 -64.071682625386529 
		14 -5.7593693879541465 20 0 30 0;
createNode animCurveTL -n "animCurveTL217";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.99214331096561381 25 -0.43524234076486068;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.0023941942490637302;
	setAttr -s 2 ".kiy[0:1]"  0 0.99999713897705078;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL218";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.033841737269357866 25 -0.82665738350180629;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.0016817669384181499;
	setAttr -s 2 ".kiy[0:1]"  0 -0.99999856948852539;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL219";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.027201153963313806 25 0.27773886459742925;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.004372401162981987;
	setAttr -s 2 ".kiy[0:1]"  0 0.99999046325683594;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 3.1805546814635164e-015 25 1.8121934161072299e-015;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.49608871340751648;
	setAttr -s 2 ".kiy[0:1]"  0 0.86827182769775391;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA585";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.016273151455886e-014 25 28.652637602052774;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.26697432994842529;
	setAttr -s 2 ".kiy[0:1]"  0 0.96370363235473633;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA586";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 5.3764496942944332e-016 25 64.676908227303443;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.10994736850261688;
	setAttr -s 2 ".kiy[0:1]"  0 0.99393743276596069;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL220";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.99214413619678865 25 0.5198069948790518;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.0028228303417563438;
	setAttr -s 2 ".kiy[0:1]"  0 -0.99999600648880005;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL221";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.033851474715545553 25 -0.72394202659893114;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.0019321093568578362;
	setAttr -s 2 ".kiy[0:1]"  0 -0.99999815225601196;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL222";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.0272011762672867 25 0.36439499068905612;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.0034048473462462425;
	setAttr -s 2 ".kiy[0:1]"  0 0.99999421834945679;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA587";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 6.3611093629270264e-015 25 7.7976222737965317;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.3220188319683075;
	setAttr -s 2 ".kiy[0:1]"  0 0.94673323631286621;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA588";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.5281705937149269e-014 25 -30.409274105849079;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.2818005383014679;
	setAttr -s 2 ".kiy[0:1]"  0 -0.95947301387786865;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA589";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.5365128437888133e-014 25 -64.859940280210893;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.10626274347305298;
	setAttr -s 2 ".kiy[0:1]"  0 -0.99433809518814087;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.95018411589314522 5 -0.95018411589314522 
		10 -0.90146915721455234 14 -1.0485667299401475 19 -0.84937173089255757 24 
		-0.80361964663869101 30 -0.73462837538235937;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kox[0:6]"  1 0.068265631794929504 0.030479025095701218 
		0.05748918280005455 0.013607122004032135 0.031939070671796799 0.028977002948522568;
	setAttr -s 7 ".koy[0:6]"  0 0.99766719341278076 -0.99953538179397583 
		0.99834614992141724 0.99990743398666382 0.99948984384536743 0.99958008527755737;
createNode animCurveTL -n "animCurveTL224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.11640789145793107 5 0.19153341412575292 
		10 0.46491239123701866 14 0.8962855459737652 19 1.5863529629799751 24 1.7762029185282304 
		30 1.7024832286802467;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kox[0:6]"  0.02661268413066864 0.009564240463078022 
		0.0042567774653434753 0.0026751209516078234 0.0037882071919739246 0.031558014452457428 
		0.027119815349578857;
	setAttr -s 7 ".koy[0:6]"  0.99964582920074463 0.99995428323745728 
		0.99999094009399414 0.99999642372131348 0.99999284744262695 0.99950194358825684 
		-0.99963217973709106;
createNode animCurveTL -n "animCurveTL225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -5.796866174114828 5 -6.8320159675715706 
		10 -6.9429983489911988 14 -7.567766417374381 19 -7.7005061404051149 24 -7.558896240067237 
		30 -7.8729923559963169;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kox[0:6]"  0.001932083978317678 0.0029083199333399534 
		0.0040774354711174965 0.0039603244513273239 0.35177257657051086 0.021252935752272606 
		0.0063673490658402443;
	setAttr -s 7 ".koy[0:6]"  -0.99999815225601196 -0.99999576807022095 
		-0.99999171495437622 -0.99999213218688965 0.93608552217483521 -0.99977415800094604 
		-0.99997973442077637;
createNode animCurveTA -n "animCurveTA590";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 139.40382898125935 5 24.407884672623275 
		10 62.725001422125793 14 42.102239030359129 19 42.102239030359129 24 5.0857178435331978 
		30 5.4739599453216483;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kox[0:6]"  0.099157258868217468 0.24168853461742401 
		0.69678425788879395 0.64025253057479858 0.45851573348045349 0.49753096699714661 
		0.99942654371261597;
	setAttr -s 7 ".koy[0:6]"  -0.99507176876068115 -0.97035390138626099 
		0.71728074550628662 -0.76816451549530029 -0.88868629932403564 -0.86744624376296997 
		0.033861085772514343;
createNode animCurveTA -n "animCurveTA591";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 73.858754308922272 5 64.037453697165446 
		10 29.549048276038643 14 22.520854519697803 19 22.520854519697803 24 21.035851339507094 
		30 8.5874521608419823;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kox[0:6]"  0.75928390026092529 0.39582204818725586 
		0.38253137469291687 0.9256141185760498 0.99699074029922485 0.8333703875541687 
		0.67726868391036987;
	setAttr -s 7 ".koy[0:6]"  -0.65075957775115967 -0.9183272123336792 
		-0.92394250631332397 -0.37846857309341431 -0.077520601451396942 -0.55271488428115845 
		-0.73573577404022217;
createNode animCurveTA -n "animCurveTA592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 140.2343461221505 5 21.890693069386145 
		10 70.843277069494931 14 74.725772228001915 19 74.725772228001915 24 67.228442240731141 
		30 74.754744621954117;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kox[0:6]"  0.096378728747367859 0.26536378264427185 
		0.30936822295188904 0.97542673349380493 0.93084579706192017 0.99999904632568359 
		0.83583939075469971;
	setAttr -s 7 ".koy[0:6]"  -0.99534475803375244 -0.96414834260940552 
		0.95094233751296997 0.22032393515110016 -0.36541217565536499 0.0013790815137326717 
		0.54897409677505493;
createNode animCurveTL -n "animCurveTL226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.3054378216977411 5 1.0568125432657025 
		10 0.9093942992135412 14 1.0703424428587549 19 1.2951313809879461 24 1.3832698555328009 
		30 1.2353274666269629;
	setAttr -s 7 ".kit[3:6]"  1 9 9 3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 1 9 9 3;
	setAttr -s 7 ".kix[3:6]"  0.0059199174866080284 0.010651492513716221 
		0.061196573078632355 1;
	setAttr -s 7 ".kiy[3:6]"  0.99998247623443604 0.99994325637817383 
		-0.99812573194503784 0;
	setAttr -s 7 ".kox[0:6]"  0.0080439746379852295 0.0084162857383489609 
		0.21647356450557709 0.0059199631214141846 0.010651492513716221 0.061196573078632355 
		1;
	setAttr -s 7 ".koy[0:6]"  -0.99996763467788696 -0.99996459484100342 
		0.97628849744796753 0.99998247623443604 0.99994325637817383 -0.99812573194503784 
		0;
createNode animCurveTL -n "animCurveTL227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.26674098167770671 5 0.64231669255976653 
		10 1.4103887691903483 14 1.4517722741099135 19 1.4864212817788376 24 1.7753438526804224 
		30 1.6450879481742289;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  0.0053250826895236969 0.0029146380256861448 
		0.00370616908185184 0.039426125586032867 0.010301141068339348 0.023103075101971626 
		1;
	setAttr -s 7 ".koy[0:6]"  0.99998581409454346 0.99999576807022095 
		0.99999314546585083 0.9992225170135498 0.9999469518661499 0.9997330904006958 
		0;
createNode animCurveTL -n "animCurveTL228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -6.0959086635870987 5 -6.6549159336340891 
		10 -7.1864646577553577 14 -8.002853420908087 19 -7.4126097076209048 24 -7.6179287705193541 
		30 -7.5546906449302433;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  0.0035777480807155371 0.0030565306078642607 
		0.0022256169468164444 0.013264655135571957 0.0086593786254525185 0.025798296555876732 
		1;
	setAttr -s 7 ".koy[0:6]"  -0.99999362230300903 -0.99999535083770752 
		-0.99999749660491943 -0.99991202354431152 0.99996250867843628 -0.99966716766357422 
		0;
createNode animCurveTA -n "animCurveTA593";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 64.330788274905572 5 71.777847934810865 
		10 73.993719266612288 14 27.122562880528896 19 21.523737354519252 24 16.287054918524053 
		30 16.226511010665412;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kox[0:6]"  0.83849012851715088 0.89229345321655273 
		0.35922709107398987 0.31131288409233093 0.86976867914199829 0.96965056657791138 
		0.99998605251312256;
	setAttr -s 7 ".koy[0:6]"  0.54491674900054932 0.45145580172538757 
		-0.93325018882751465 -0.95030748844146729 -0.49345967173576355 -0.24449485540390015 
		-0.0052833789959549904;
createNode animCurveTA -n "animCurveTA594";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -59.645241991222761 5 -12.201728287306985 
		10 -50.073340905879675 14 -61.483605269881842 19 -26.725954689634953 24 -23.447916093107228 
		30 -8.5139660854992822;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kox[0:6]"  0.23478133976459503 0.89400357007980347 
		0.32932743430137634 0.5928725004196167 0.44873073697090149 0.75560605525970459 
		0.60875916481018066;
	setAttr -s 7 ".koy[0:6]"  0.97204822301864624 0.44805988669395447 
		-0.94421577453613281 0.80529630184173584 0.89366698265075684 0.65502631664276123 
		0.79335504770278931;
createNode animCurveTA -n "animCurveTA595";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -72.130666670631953 5 -71.446703332726145 
		10 -89.644721083732975 14 -63.766277351676173 19 -79.277613882568687 24 -66.692932890179748 
		30 -68.213989601412436;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kox[0:6]"  0.99822348356246948 0.73701936006546021 
		0.91300171613693237 0.85630673170089722 0.98846167325973511 0.88480460643768311 
		0.99130517244338989;
	setAttr -s 7 ".koy[0:6]"  0.059581026434898376 -0.67587161064147949 
		0.40795570611953735 0.51646757125854492 -0.15147119760513306 0.46596226096153259 
		-0.13158309459686279;
createNode animCurveTL -n "animCurveTL229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.33160081811346798 5 0.33160081811346798 
		10 0.33160081811346798 14 0.99023975894343086 19 0.49847849378105702 24 0.49847849378105702 
		30 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.0026747956871986389;
	setAttr -s 7 ".kiy[6]"  -0.99999642372131348;
	setAttr -s 7 ".kox[0:6]"  1 1 0.0045548002235591412 0.017974335700273514 
		0.006778201088309288 0.0073555177077651024 0;
	setAttr -s 7 ".koy[0:6]"  0 0 0.99998962879180908 0.99983847141265869 
		-0.99997705221176147 -0.99997293949127197 0;
createNode animCurveTL -n "animCurveTL230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.55038394491506004 5 -0.55038394491506004 
		10 -0.55038394491506004 14 -0.74692570530360725 19 -1.1389136155239032 24 
		-1.1389136155239032 30 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.001170705072581768;
	setAttr -s 7 ".kiy[6]"  0.99999934434890747;
	setAttr -s 7 ".kox[0:6]"  1 1 0.015262152999639511 0.0050973827019333839 
		0.0085033560171723366 0.0032194256782531738 0;
	setAttr -s 7 ".koy[0:6]"  0 0 -0.99988353252410889 -0.99998700618743896 
		-0.99996381998062134 0.99999481439590454 0;
createNode animCurveTL -n "animCurveTL231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.19438099678379747 5 0.19438099678379747 
		10 0.19438099678379747 14 -0.32640303972780343 19 -1.056345283159033 24 -1.056345283159033 
		30 -1;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.023656988516449928;
	setAttr -s 7 ".kiy[6]"  0.99972015619277954;
	setAttr -s 7 ".kox[0:6]"  1 1 0.0057604494504630566 0.0023985994048416615 
		0.0045665237121284008 0.064937599003314972 0;
	setAttr -s 7 ".koy[0:6]"  0 0 -0.99998342990875244 -0.99999713897705078 
		-0.99998956918716431 0.99788933992385864 0;
createNode animCurveTL -n "animCurveTL232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.92355789693307755 5 -0.92355789693307755 
		10 -0.99203829794527365 14 -0.99203829794527365 19 -0.99203829794527365 24 
		-0.73573125289249275 30 -0.101679173629433;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.0021028714254498482;
	setAttr -s 7 ".kiy[6]"  0.99999779462814331;
	setAttr -s 7 ".kox[0:6]"  1 0.048618163913488388 0.043766174465417862 
		1 0.013004135340452194 0.0041181533597409725 0;
	setAttr -s 7 ".koy[0:6]"  0 -0.99881744384765625 -0.99904179573059082 
		0 0.99991542100906372 0.99999153614044189 0;
createNode animCurveTL -n "animCurveTL233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.83305940244565191 5 -0.83305940244565191 
		10 -0.65392237249121199 14 -0.65392237249121199 19 -0.65392237249121199 24 
		-0.50921589392830224 30 -0.40762644910266188;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.013123588636517525;
	setAttr -s 7 ".kiy[6]"  0.99991387128829956;
	setAttr -s 7 ".kox[0:6]"  1 0.01860450953245163 0.01674460805952549 
		1 0.02302902564406395 0.014885591343045235 0;
	setAttr -s 7 ".koy[0:6]"  0 0.99982690811157227 0.99985980987548828 
		0 0.99973481893539429 0.99988919496536255 0;
createNode animCurveTL -n "animCurveTL234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.0093884715350961868 5 -0.0093884715350961868 
		10 -0.33682949464129552 14 -0.33682949464129552 19 -0.33682949464129552 24 
		-0.96206129380794037 30 -0.93129112588482243;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.043291375041007996;
	setAttr -s 7 ".kiy[6]"  0.99906247854232788;
	setAttr -s 7 ".kox[0:6]"  1 0.010179422795772552 0.0091615701094269753 
		1 0.0053312806412577629 0.0061679286882281303 0;
	setAttr -s 7 ".koy[0:6]"  0 -0.99994820356369019 -0.99995803833007813 
		0 -0.99998581409454346 -0.99998098611831665 0;
createNode animCurveTA -n "animCurveTA596";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 287.57834110884949 25 12.25373448967893;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.052884899079799652;
	setAttr -s 2 ".kiy[0:1]"  0 0.99860060214996338;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA597";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.7748602616270031 25 -65.746751280844975;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.12028003484010696;
	setAttr -s 2 ".kiy[0:1]"  0 -0.9927399754524231;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA598";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 21.740523934117991 25 -1.9357246303997397e-015;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.078307434916496277;
	setAttr -s 2 ".kiy[0:1]"  0 -0.99692928791046143;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA599";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 284.36345896057048 25 -0.061808866237331381;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.062758892774581909;
	setAttr -s 2 ".kiy[0:1]"  0 0.99802869558334351;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA600";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -2.9804150894888526 25 -59.058178941076754;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.191533163189888;
	setAttr -s 2 ".kiy[0:1]"  0 -0.98148614168167114;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA601";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 53.010434986386485 25 16.579147429757843;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.085220612585544586;
	setAttr -s 2 ".kiy[0:1]"  0 -0.99636209011077881;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA602";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 54.683158598271568 25 8.5572674112203657;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.16339555382728577;
	setAttr -s 2 ".kiy[0:1]"  0 -0.9865606427192688;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA603";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 72.338252365348367 25 15.711328223519065;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.13369700312614441;
	setAttr -s 2 ".kiy[0:1]"  0 -0.99102222919464111;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA604";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 27.197261990409952 25 4.5738294919261113e-016;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.29009965062141418;
	setAttr -s 2 ".kiy[0:1]"  0 -0.95699644088745117;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA605";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 9.8426506888087779 25 2.9299942254068756e-016;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.46994063258171082;
	setAttr -s 2 ".kiy[0:1]"  0 -0.88269799947738647;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA606";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 26.10051299282949 25 4.3475871587521862e-016;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.30295959115028381;
	setAttr -s 2 ".kiy[0:1]"  0 -0.9530034065246582;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA607";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 24.555145006650083 25 1.2356536192111915e-016;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.29732465744018555;
	setAttr -s 2 ".kiy[0:1]"  0 -0.95477646589279175;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA608";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.4560769262065318 25 -9.4797030483185445e-018;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.97378522157669067;
	setAttr -s 2 ".kiy[0:1]"  0 0.22746948897838593;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA609";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -2.0905382112390241 25 -8.7987408501384969e-018;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.97209388017654419;
	setAttr -s 2 ".kiy[0:1]"  0 0.23459216952323914;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA610";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -32.123718040735945 5 -32.123718040735945 
		10 -32.123718040735945 14 -32.123718040735945 19 -32.123718040735945 24 -32.123718040735959 
		30 10.42375496696849;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.16939675807952881;
	setAttr -s 7 ".kiy[6]"  0.98554795980453491;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 0.44273549318313599 0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0.89665228128433228 0;
createNode animCurveTA -n "animCurveTA611";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 19.407819173437478 5 19.407819173437478 
		10 19.407819173437478 14 19.407819173437478 19 19.407819173437478 24 19.407819173437481 
		30 27.722848255843896;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.89763915538787842;
	setAttr -s 7 ".kiy[6]"  0.44073119759559631;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 0.92981898784637451 0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0.36801719665527344 0;
createNode animCurveTA -n "animCurveTA612";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 4.4751336445171193 5 4.4751336445171193 
		10 4.4751336445171193 14 4.4751336445171193 19 4.4751336445171193 24 4.4751336445171193 
		30 21.576484776388224;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.36014372110366821;
	setAttr -s 7 ".kiy[6]"  0.93289685249328613;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 0.77553582191467285 0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0.63130354881286621 0;
createNode animCurveTA -n "animCurveTA613";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 -13.698876899845621 10 -13.698876899845621 
		14 -13.698876899845621 19 -13.698876899845621 24 -13.698876899845619 30 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.49209344387054443;
	setAttr -s 7 ".kiy[6]"  0.87054240703582764;
	setAttr -s 7 ".kox[0:6]"  0.64161825180053711 0.81258434057235718 
		1 1 1 0.83765232563018799 0;
	setAttr -s 7 ".koy[0:6]"  -0.76702415943145752 -0.5828436017036438 
		0 0 0 0.54620379209518433 0;
createNode animCurveTA -n "animCurveTA614";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 -1.7494981951361976 10 -1.7494981951361976 
		14 -1.7494981951361976 19 -1.7494981951361976 24 -1.7494981951361972 30 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.93180406093597412;
	setAttr -s 7 ".kiy[6]"  0.36296170949935913;
	setAttr -s 7 ".kox[0:6]"  0.98854541778564453 0.99583059549331665 
		1 1 1 0.99655050039291382 0;
	setAttr -s 7 ".koy[0:6]"  -0.1509237140417099 -0.091221578419208527 
		0 0 0 0.082988657057285309 0;
createNode animCurveTA -n "animCurveTA615";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -11.433734901667266 5 40.806094161306248 
		10 40.806094161306248 14 40.806094161306248 19 40.806094161306248 24 40.806094161306248 
		30 27.080064458283047;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.49133536219596863;
	setAttr -s 7 ".kiy[6]"  -0.87097048759460449;
	setAttr -s 7 ".kox[0:6]"  0.21426238119602203 0.3433668315410614 
		1 1 1 0.83715695142745972 0;
	setAttr -s 7 ".koy[0:6]"  0.976776123046875 0.93920135498046875 
		0 0 0 -0.54696273803710938 0;
createNode animCurveTA -n "animCurveTA616";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA617";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA618";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.705218915343313 3 27.705218915343313 
		8 27.705218915343313 12 27.705218915343313 16 27.705218915343313 19 27.705218915343313 
		25 -2.8272354968843103e-017;
	setAttr -s 7 ".kit[4:6]"  1 1 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[4:6]"  1 1 0.49702879786491394;
	setAttr -s 7 ".kiy[4:6]"  0 0 -0.86773407459259033;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 0.52719438076019287 0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 -0.84974473714828491 
		0;
createNode animCurveTA -n "animCurveTA620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 43.35103828268312 3 43.35103828268312 
		8 43.35103828268312 12 43.35103828268312 16 43.35103828268312 19 43.35103828268312 
		25 -1.3656285281781275e-016;
	setAttr -s 7 ".kit[4:6]"  1 1 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[4:6]"  1 1 0.15517003834247589;
	setAttr -s 7 ".kiy[4:6]"  0 0 -0.98788779973983765;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 0.36858505010604858 0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 -0.92959403991699219 
		0;
createNode animCurveTA -n "animCurveTA621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 54.23572299800319 3 54.23572299800319 
		8 54.23572299800319 12 54.23572299800319 16 54.23572299800319 19 54.23572299800319 
		25 13.994403295754109;
	setAttr -s 7 ".kit[4:6]"  1 1 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[4:6]"  1 1 0.25722450017929077;
	setAttr -s 7 ".kiy[4:6]"  0 0 -0.96635168790817261;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 0.39280799031257629 0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 -0.91962051391601563 
		0;
createNode animCurveTA -n "animCurveTA622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 39.038703285259977 3 39.038703285259977 
		8 39.038703285259977 12 39.038703285259977 16 39.038703285259977 19 39.038703285259977 
		25 1.4202733851406303e-018;
	setAttr -s 7 ".kit[4:6]"  1 1 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[4:6]"  1 1 0.39853581786155701;
	setAttr -s 7 ".kiy[4:6]"  0 0 -0.9171527624130249;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 0.40296849608421326 0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 -0.91521382331848145 
		0;
createNode animCurveTA -n "animCurveTA623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 72.755037061650995 3 72.755037061650995 
		8 72.755037061650995 12 72.755037061650995 16 72.755037061650995 19 72.755037061650995 
		25 6.0401850405829747e-018;
	setAttr -s 7 ".kit[4:6]"  1 1 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[4:6]"  1 1 0.10169120877981186;
	setAttr -s 7 ".kiy[4:6]"  0 0 -0.99481600522994995;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 0.22992523014545441 0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 -0.97320830821990967 
		0;
createNode animCurveTA -n "animCurveTA624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 38.926480273156798 3 38.926480273156798 
		8 38.926480273156798 12 38.926480273156798 16 38.926480273156798 19 38.926480273156798 
		25 13.994403295754109;
	setAttr -s 7 ".kit[4:6]"  1 1 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[4:6]"  1 1 0.9943956732749939;
	setAttr -s 7 ".kiy[4:6]"  0 0 0.10572271794080734;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 0.56760311126708984 0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 -0.82330232858657837 
		0;
createNode animCurveTA -n "animCurveTA625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0 14 0 19 0 24 0 30 
		0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0 14 0 19 0 24 0 30 
		0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -9.6043099083038648 5 -9.6043099083038648 
		10 -36.514150092140326 14 8.0817746961760548 19 8.0817746961760548 24 8.0817746961760566 
		30 27.911632519594587;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.35949417948722839;
	setAttr -s 7 ".kiy[6]"  0.93314731121063232;
	setAttr -s 7 ".kox[0:6]"  1 0.57877296209335327 0.69695180654525757 
		0.35964345932006836 1 0.7272111177444458 0;
	setAttr -s 7 ".koy[0:6]"  0 -0.81548875570297241 0.71711796522140503 
		0.93308979272842407 0 0.68641388416290283 0;
createNode animCurveTA -n "animCurveTA628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 3.1198943483277444 5 3.1198943483277444 
		10 3.1198943483277444 14 3.1198943483277444 19 3.1198943483277444 24 0 30 
		0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 0.98691844940185547 0.98915201425552368 
		0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 -0.16122032701969147 -0.146895632147789 
		0;
createNode animCurveTA -n "animCurveTA629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.7238169885910806 5 1.7238169885910806 
		10 1.7238169885910806 14 1.7238169885910806 19 1.7238169885910806 24 0 30 
		0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 0.99595141410827637 0.99665051698684692 
		0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 -0.089893423020839691 -0.081778660416603088 
		0;
createNode animCurveTA -n "animCurveTA630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.268388134198538 5 12.268388134198538 
		10 12.268388134198538 14 12.268388134198538 19 12.268388134198538 24 0 30 
		0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 0.84136438369750977 0.86353802680969238 
		0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 -0.54046833515167236 -0.50428372621536255 
		0;
createNode animCurveTA -n "animCurveTA631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.8674066212672042 5 10.305800481618798 
		10 5.8484008084991306 14 -1.3972785350037706 19 -14.064521154990169 24 -2.7286205476714827 
		30 -0.65073001024951671;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  0.9713517427444458 0.98803699016571045 
		0.82659673690795898 0.65342843532562256 0.99757915735244751 0.84284687042236328 
		1;
	setAttr -s 7 ".koy[0:6]"  0.2376464456319809 0.15421724319458008 
		-0.56279462575912476 -0.7569882869720459 -0.069540150463581085 0.53815346956253052 
		0;
createNode animCurveTA -n "animCurveTA632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.0224690310320828 5 21.812545396909613 
		10 27.106605841335199 14 22.021081467655659 19 15.831839650394791 24 3.2853200754318528 
		30 -4.2368721935960938;
	setAttr -s 7 ".kit[5:6]"  1 3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 1 3;
	setAttr -s 7 ".kix[5:6]"  0.74044454097747803 1;
	setAttr -s 7 ".kiy[5:6]"  -0.67211741209030151 0;
	setAttr -s 7 ".kox[0:6]"  0.59812086820602417 0.7073744535446167 
		0.99992638826370239 0.83616703748703003 0.7138550877571106 0.74044454097747803 
		1;
	setAttr -s 7 ".koy[0:6]"  0.80140590667724609 0.70683902502059937 
		0.012131243944168091 -0.54847484827041626 -0.70029342174530029 -0.67211747169494629 
		0;
createNode animCurveTA -n "animCurveTA633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -6.4497274483450688 5 22.194007368120964 
		10 10.585311250585569 14 18.008913217796685 19 17.559037980306652 24 5.2195310737992937 
		30 8.7398866450636881;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  0.56765514612197876 0.74627292156219482 
		0.9716150164604187 0.9266393780708313 0.83090424537658691 0.92205101251602173 
		1;
	setAttr -s 7 ".koy[0:6]"  0.82326644659042358 0.66564005613327026 
		-0.23656776547431946 0.37595146894454956 -0.55641543865203857 -0.38706836104393005 
		0;
createNode animCurveTA -n "animCurveTA634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0 14 0 19 20.892297867999083 
		24 0 30 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 0.63533961772918701 1 0.70906424522399902 
		0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0.77223283052444458 0 -0.70514386892318726 
		0;
createNode animCurveTA -n "animCurveTA635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0 14 0 19 -3.8418101621229348 
		24 0 30 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 0.97592073678970337 1 0.98368734121322632 
		0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 -0.21812556684017181 0 0.17988663911819458 
		0;
createNode animCurveTA -n "animCurveTA636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0 14 0 19 -1.4650349387593433 
		24 0 30 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 0.99638742208480835 1 0.99757730960845947 
		0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 -0.084924370050430298 0 0.069566547870635986 
		0;
createNode animCurveTA -n "animCurveTA637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.082384738201343 5 -20.953604258104953 
		10 -26.115369614924287 14 -14.36558021865012 19 -2.1167697375088266 24 -0.12811083484438235 
		30 4.8714700432790332;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.52052193880081177;
	setAttr -s 7 ".kiy[6]"  0.85384827852249146;
createNode animCurveTA -n "animCurveTA638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -54.423343112218433 5 1.5375384333703244 
		10 23.024755313505771 14 8.4396026003630009 19 10.36356204178006 24 6.6839677023624215 
		30 11.783606204137099;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.6587788462638855;
	setAttr -s 7 ".kiy[6]"  0.75233662128448486;
createNode animCurveTA -n "animCurveTA639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.08946566869529092 5 9.1081649143651457 
		10 12.096840057683854 14 -4.6152534782065944 19 -18.430940097331831 24 -10.758785277471123 
		30 7.5423825101936588;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.98468679189682007;
	setAttr -s 7 ".kiy[6]"  0.17433282732963562;
createNode animCurveTA -n "animCurveTA640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 11.633369793509914 5 14.316368291846709 
		10 13.706307474140422 14 10.688330000502194 19 3.2261980817389748 24 -0.49324477877474848 
		30 -1.8903601258661935;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 3;
	setAttr -s 7 ".kox[0:6]"  0.97366803884506226 0.99416118860244751 
		0.97844225168228149 0.85381442308425903 0.86297684907913208 0.97159963846206665 
		1;
	setAttr -s 7 ".koy[0:6]"  0.22797052562236786 0.10790502279996872 
		-0.20652051270008087 -0.52057754993438721 -0.50524348020553589 -0.23663076758384705 
		0;
createNode animCurveTA -n "animCurveTA641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -8.7236436077397581 5 2.3066489813853672 
		10 5.7031684482757257 14 -1.160640435376306 19 0.15120617866710356 24 5.2792305877299972 
		30 2.5597289571479038;
	setAttr -s 7 ".kit[4:6]"  1 9 3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 1 9 3;
	setAttr -s 7 ".kix[4:6]"  0.87273663282394409 0.99349230527877808 
		1;
	setAttr -s 7 ".kiy[4:6]"  0.48819127678871155 0.11389933526515961 
		0;
	setAttr -s 7 ".kox[0:6]"  0.72045999765396118 0.79793232679367065 
		0.9802553653717041 0.95159190893173218 0.87273669242858887 0.99349230527877808 
		1;
	setAttr -s 7 ".koy[0:6]"  0.69349652528762817 0.60274702310562134 
		-0.19773584604263306 -0.30736425518989563 0.48819127678871155 0.11389933526515961 
		0;
createNode animCurveTA -n "animCurveTA642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.4104032148540666 5 13.067312495152285 
		10 3.1863060861799775 14 3.3278813937835672 19 6.8961462684715356 24 7.9336668090600391 
		30 2.0168110874036049;
	setAttr -s 7 ".kit[4:6]"  1 9 3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 1 9 3;
	setAttr -s 7 ".kix[4:6]"  0.92710751295089722 0.97407293319702148 
		1;
	setAttr -s 7 ".kiy[4:6]"  0.37479543685913086 -0.22623410820960999 
		0;
	setAttr -s 7 ".kox[0:6]"  0.73227500915527344 0.9991757869720459 
		0.8700406551361084 0.97749215364456177 0.92710751295089722 0.97407293319702148 
		1;
	setAttr -s 7 ".koy[0:6]"  0.68100899457931519 0.040592692792415619 
		-0.49297994375228882 0.2109718918800354 0.37479546666145325 -0.22623410820960999 
		0;
createNode animCurveTA -n "animCurveTA643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0 14 0 19 0 24 0 30 
		0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA644";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0 14 0 19 0 24 0 30 
		0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA645";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 21.472939016776969 5 21.472939016776969 
		10 0.26065045721393798 14 32.934781322602397 19 32.934781322602397 24 32.934781322602404 
		30 33.429092416277157;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.9979131817817688;
	setAttr -s 7 ".kiy[6]"  0.064570091664791107;
	setAttr -s 7 ".kox[0:6]"  1 0.66911053657531738 0.83199024200439453 
		0.46557298302650452 1 0.99972331523895264 0;
	setAttr -s 7 ".koy[0:6]"  0 -0.74316287040710449 0.554790198802948 
		0.88500946760177612 0 0.023522643372416496 0;
createNode animCurveTA -n "animCurveTA646";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -15.564086868905925 5 -15.564086868905925 
		10 -2.9265599548097003 14 -2.9265599548097003 19 -2.9265599548097003 24 -2.9265599548097008 
		30 8.2533422302317216;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.59888255596160889;
	setAttr -s 7 ".kiy[6]"  0.80083686113357544;
	setAttr -s 7 ".kox[0:6]"  1 0.83395731449127197 0.80567890405654907 
		1 1 0.88278186321258545 0;
	setAttr -s 7 ".koy[0:6]"  0 0.55182898044586182 0.59235244989395142 
		0 0 0.46978309750556946 0;
createNode animCurveTA -n "animCurveTA647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 5.9119201843313247 5 5.9119201843313247 
		10 27.969490003414418 14 27.969490003414418 19 27.969490003414418 24 27.969490003414418 
		30 23.263402056531085;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.78055912256240845;
	setAttr -s 7 ".kiy[6]"  -0.62508195638656616;
	setAttr -s 7 ".kox[0:6]"  1 0.6545788049697876 0.61467224359512329 
		1 1 0.97581636905670166 0;
	setAttr -s 7 ".koy[0:6]"  0 0.75599378347396851 0.78878265619277954 
		0 0 -0.21859189867973328 0;
createNode animCurveTA -n "animCurveTA648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.89181587725581968 5 -0.89181587725581968 
		10 -1.7164790787865265 14 -1.7164790787865265 19 -1.7164790787865265 24 -1.7164790787865265 
		30 20.166277752815617;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.33982157707214355;
	setAttr -s 7 ".kiy[6]"  0.94048994779586792;
	setAttr -s 7 ".kox[0:6]"  1 0.99906909465789795 0.99885106086730957 
		1 1 0.69254910945892334 0;
	setAttr -s 7 ".koy[0:6]"  0 -0.043139070272445679 -0.047921836376190186 
		0 0 0.72137075662612915 0;
createNode animCurveTA -n "animCurveTA649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0 14 0 19 0 24 0 30 
		0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0 14 0 19 0 24 0 30 
		0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 21.151890972437133 5 21.151890972437133 
		10 21.151890972437133 14 21.151890972437133 19 21.151890972437133 24 21.151890972437133 
		30 17.254116939558369;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  0.89075702428817749;
	setAttr -s 7 ".kiy[6]"  -0.45447990298271179;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 0.98322063684463501 0;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 -0.18242047727108002 
		0;
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
	setAttr -k on ".left";
	setAttr -k on ".bot";
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
	setAttr -k on ".soll";
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
	setAttr -k on ".rlen";
	setAttr -k on ".rlpn";
	setAttr -k on ".rgpn";
	setAttr -k on ".rlsd";
	setAttr -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
select -ne :characterPartition;
select -ne :hyperGraphLayout;
	setAttr ".cch" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".img" -type "string" "";
	setAttr ".ims" 1;
select -ne :ikSystem;
connectAttr "hom_get_upSource.st" "clipLibrary1.st[0]";
connectAttr "hom_get_upSource.du" "clipLibrary1.du[0]";
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
// End of hom_get_up.ma
