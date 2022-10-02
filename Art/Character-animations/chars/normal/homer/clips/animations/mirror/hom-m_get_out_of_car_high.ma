//Maya ASCII 4.0 scene
//Name: hom-m_get_out_of_car_high.ma
//Last modified: Tue, Jul 23, 2002 11:54:52 AM
requires maya "4.0";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dSimpleShader" "17.1";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_get_out_of_car_high";
	setAttr ".ihi" 0;
	setAttr ".du" 32;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTL -n "animCurveTL371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTL -n "animCurveTL372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -1.1049215982034806 1 -1.1230762929920588 
		2 -1.1419687308702946 3 -1.1517838213542415 4 -1.1427064739599524 5 -1.1049215982034806 
		6 -1.0091187817321106 7 -0.86330000425812414 8 -0.71361876339507069 9 -0.60622855675649856 
		10 -0.54642237682070494 11 -0.50466439322177015 12 -0.4748648693069179 13 
		-0.45093406842337191 14 -0.42678225391835589 15 -0.39631968913909371 16 -0.36448932800701783 
		17 -0.33487243983580384 18 -0.29933676106103962 19 -0.24975002811831318 20 
		-0.17318149844511335 21 -0.07755575539529512 22 0.013976475721004697 23 0.078264469593649161 
		24 0.10312001609683188 25 0.10289506230141544 26 0.094249118692266695 27 
		0.093841695754252455 28 0.10693138462732198 29 0.12470506703770802 30 0.14271468934970297 
		31 0.15651219792759918 32 0.16164953913568911;
createNode animCurveTL -n "animCurveTL373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0;
createNode animCurveTL -n "animCurveTL374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0.61375752807398076 1 0.61406100265979879 
		2 0.61466795183143474 3 0.61512316371016174 4 0.61497142641725278 5 0.61375752807398076 
		6 0.61034343911996092 7 0.60512746999304479 8 0.59995891881186059 9 0.59668708369503654 
		10 0.59658834567510888 11 0.5986471812025147 12 0.6012750315227321 13 0.60288333788123938 
		14 0.60188354152351475 15 0.59668708369503654 16 0.58577937227782584 17 0.56890390452167727 
		18 0.54635925572372934 19 0.51844400118112033 20 0.479242415156174 21 0.43059370596120067 
		22 0.38442884996831866 23 0.35267882354964614 24 0.34181620324421119 25 0.34438080760353118 
		26 0.35140447601845848 27 0.35391904787984585 28 0.35164353133856308 29 0.34933555447407072 
		30 0.34558488657010733 31 0.33898129691041151 32 0.32811455477872159;
createNode animCurveTA -n "animCurveTA1018";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 1 4.7239694100966911 2 16.858926410206593 
		3 33.349444155059452 4 51.140095799385008 5 67.175454497913023 6 78.400093405373241 
		7 84.568399264513104 8 88.075590831815532 9 89.827489282613413 10 90.729915792239623 
		11 91.688691536027036 12 93.609637689308528 13 96.718021008132297 14 100.27138729887564 
		15 103.72397631236514 16 106.53002779942736 17 108.14378151088889 18 108.10207206442394 
		19 106.76873962019209 20 104.83853224274803 21 103.00619799664641 22 101.96648494644189 
		23 101.85272877983795 24 102.22093019880829 25 102.89983478931286 26 103.71818813731167 
		27 104.50473582876468 28 105.08822344963185 29 105.2973965858732 30 104.96100082344866 
		31 103.90778174831826 32 101.96648494644189;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 32 1;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 32 1;
createNode animCurveTA -n "animCurveTA1019";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1020";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1021";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTL -n "animCurveTL375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTL -n "animCurveTL376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTL -n "animCurveTL377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTL -n "animCurveTL378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.9332537429790313 5 -1.2951535063934336 
		9 -0.91968629755595344 15 -0.52482570661563999 19 -0.52482570661563999 23 
		0.21629875058370635 27 0.26840906169891499 32 0.26840906169891499;
	setAttr -s 8 ".kit[3:7]"  3 3 1 3 9;
	setAttr -s 8 ".kot[3:7]"  3 3 1 3 9;
	setAttr -s 8 ".kix[5:7]"  0.0058816932141780853 1 1;
	setAttr -s 8 ".kiy[5:7]"  0.99998271465301514 0 0;
	setAttr -s 8 ".kox[5:7]"  0.0058816759847104549 1 1;
	setAttr -s 8 ".koy[5:7]"  0.99998271465301514 0 0;
createNode animCurveTL -n "animCurveTL379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.3102926386178941 5 1.3102926386178941 
		9 1.2410705577539192 15 0.97253491184970575 19 0.63557797121733606 23 0.17318193067379306 
		27 0.13871566434692401 32 0.13871566434692401;
	setAttr -s 8 ".kit[1:7]"  3 9 9 9 1 3 9;
	setAttr -s 8 ".kot[1:7]"  3 9 9 9 1 3 9;
	setAttr -s 8 ".kix[5:7]"  0.01196752954274416 1 1;
	setAttr -s 8 ".kiy[5:7]"  -0.99992847442626953 0 0;
	setAttr -s 8 ".kox[5:7]"  0.01196755189448595 1 1;
	setAttr -s 8 ".koy[5:7]"  -0.99992847442626953 0 0;
createNode animCurveTL -n "animCurveTL380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.4192359250534907 5 1.1941378088264036 
		9 1.1665518224449707 15 1.1458211728938759 19 1.1458211728938759 23 0.7254709773837863 
		27 0.72105209683757909 32 0.72105209683757909;
	setAttr -s 8 ".kit[3:7]"  3 3 1 9 9;
	setAttr -s 8 ".kot[3:7]"  3 3 1 9 9;
	setAttr -s 8 ".kix[5:7]"  0.075545303523540497 0.56169033050537109 
		1;
	setAttr -s 8 ".kiy[5:7]"  -0.99714237451553345 -0.8273475170135498 
		0;
	setAttr -s 8 ".kox[5:7]"  0.07554539293050766 0.56169033050537109 
		1;
	setAttr -s 8 ".koy[5:7]"  -0.99714237451553345 -0.8273475170135498 
		0;
createNode animCurveTA -n "animCurveTA1022";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -6.5046911724775329 5 -48.446759759042372 
		9 -65.836799213031767 15 -66.378866839512114 19 -66.378866839512114 23 -182.24116870371074 
		27 -182.24116870371074 32 -182.24116870371074;
	setAttr -s 8 ".kit[0:7]"  9 9 9 3 3 3 3 
		9;
	setAttr -s 8 ".kot[0:7]"  9 9 9 3 3 3 3 
		9;
createNode animCurveTA -n "animCurveTA1023";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -3.3090781707350478 5 80.344716577697753 
		9 88.026181644017299 15 84.913428870827516 19 84.913428870827516 23 73.374813696266287 
		27 73.374813696266287 32 73.374813696266287;
	setAttr -s 8 ".kit[5:7]"  3 3 9;
	setAttr -s 8 ".kot[5:7]"  3 3 9;
createNode animCurveTA -n "animCurveTA1024";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -4.2722871456273142 5 -20.627202316421727 
		9 -54.088181736704648 15 -94.902561395243225 19 -94.902561395243225 23 -182.27625436181188 
		27 -182.27625436181188 32 -182.27625436181188;
	setAttr -s 8 ".kit[0:7]"  9 1 9 3 3 3 3 
		9;
	setAttr -s 8 ".kot[0:7]"  9 1 9 3 3 3 3 
		9;
	setAttr -s 8 ".kix[1:7]"  0.2347695529460907 0.2490314394235611 
		1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  -0.97205108404159546 -0.96849542856216431 
		0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  0.2347695380449295 0.2490314394235611 
		1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  -0.97205108404159546 -0.96849542856216431 
		0 0 0 0 0;
createNode animCurveTL -n "animCurveTL381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.4091301774705804 5 -0.96343468397182419 
		9 -0.81976552790021029 15 -0.81976552790021029 19 -0.81976552790021029 23 
		0.052255406518032843 27 0.265 32 0.265;
	setAttr -s 8 ".kit[3:7]"  3 3 9 3 3;
	setAttr -s 8 ".kot[3:7]"  3 3 9 3 3;
createNode animCurveTL -n "animCurveTL382";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.2638806898773334 5 1.3766692090407664 
		9 0.91532995505486525 15 0.91532995505486525 19 0.91532995505486525 23 0.44099991840483127 
		27 0.14100239607637821 32 0.14100239607637821;
	setAttr -s 8 ".kit[0:7]"  9 9 3 3 3 9 3 
		9;
	setAttr -s 8 ".kot[0:7]"  9 9 3 3 3 9 3 
		9;
createNode animCurveTL -n "animCurveTL383";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.430750031861709 5 0.77233974323010079 
		9 0.73545372154742683 15 0.73545372154742683 19 0.73545372154742683 23 0.42501099478719179 
		27 0.20506151101608494 32 0.19886445701912597;
	setAttr -s 8 ".kit[0:7]"  9 1 3 3 3 9 3 
		3;
	setAttr -s 8 ".kot[0:7]"  9 1 3 3 3 9 3 
		3;
	setAttr -s 8 ".kix[1:7]"  0.0070611918345093727 1 1 1 0.0050276624970138073 
		1 1;
	setAttr -s 8 ".kiy[1:7]"  -0.99997508525848389 0 0 0 -0.99998736381530762 
		0 0;
	setAttr -s 8 ".kox[1:7]"  0.007061137817800045 1 1 1 0.0050276624970138073 
		1 1;
	setAttr -s 8 ".koy[1:7]"  -0.99997508525848389 0 0 0 -0.99998736381530762 
		0 0;
createNode animCurveTA -n "animCurveTA1025";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 -18.415769592449951 9 -69.435054798489091 
		15 -160.14857724216 19 -160.14857724216 23 -139.04362139142626 27 -185.39775737145624 
		32 -185.39775737145624;
	setAttr -s 8 ".kit[3:7]"  3 3 9 3 9;
	setAttr -s 8 ".kot[3:7]"  3 3 9 3 9;
createNode animCurveTA -n "animCurveTA1026";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 75.320584516701786 9 86.031117795758192 
		15 82.733936594648668 19 78.412058246968854 23 74.213697861490928 27 74.213697861490914 
		32 74.213697861490914;
createNode animCurveTA -n "animCurveTA1027";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 -35.294220969193724 9 -94.551340311235734 
		15 -175.36955519020347 19 -175.36955519020347 23 -185.11838403443602 27 -185.11838403443573 
		32 -185.11838403443573;
	setAttr -s 8 ".kit[2:7]"  1 3 3 9 9 9;
	setAttr -s 8 ".kot[2:7]"  1 3 3 9 9 9;
	setAttr -s 8 ".kix[2:7]"  0.095226027071475983 1 1 0.84301340579986572 
		1 1;
	setAttr -s 8 ".kiy[2:7]"  -0.99545568227767944 0 0 -0.53789258003234863 
		0 0;
	setAttr -s 8 ".kox[2:7]"  0.095226027071475983 1 1 0.84301340579986572 
		1 1;
	setAttr -s 8 ".koy[2:7]"  -0.99545568227767944 0 0 -0.53789258003234863 
		0 0;
createNode animCurveTA -n "animCurveTA1028";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1029";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1030";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1031";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1032";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1033";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTL -n "animCurveTL384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 9 0 15 -0.045130342964677654 
		19 -0.045130342964677654 23 -0.045130342964677654 27 -0.045130342964677654 
		32 -0.045130342964677654;
createNode animCurveTL -n "animCurveTL385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 9 0 15 -0.0036805403073630867 
		19 -0.0036805403073630867 23 -0.0036805403073630867 27 -0.0036805403073630867 
		32 -0.0036805403073630867;
createNode animCurveTL -n "animCurveTL386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 5 1 9 1 15 1.0016096054423793 
		19 1.0016096054423793 23 1.0016096054423793 27 1.0016096054423793 32 1.0016096054423793;
createNode animCurveTL -n "animCurveTL387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.034660776702225261 5 -0.034660776702225261 
		9 -0.034660776702225261 15 -0.034660776702225261 19 -0.034660776702225261 
		23 -0.034660776702225261 27 -0.034660776702225261 32 -0.034660776702225261;
createNode animCurveTL -n "animCurveTL388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 9 0 15 0 19 0 23 0 27 0 
		32 0;
createNode animCurveTL -n "animCurveTL389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 5 1 9 1 15 1 19 1 23 1 27 1 
		32 1;
createNode animCurveTL -n "animCurveTL390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.6430877726404629 5 -1.6430877726404629 
		9 -0.9014999169639184 15 -0.58935225480241937 19 -0.37139396866259888 23 
		0.11638417895948697 27 0.13954849204537248 32 0.24038301146313867;
createNode animCurveTL -n "animCurveTL391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.8165283848315497 5 1.8165283848315497 
		9 1.7221641387040634 15 1.661296380318388 19 1.4423471586030596 23 0.94923691024121981 
		27 0.82155719333971589 32 0.94561207104472544;
createNode animCurveTL -n "animCurveTL392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.91269596990779223 5 0.91269596990779223 
		9 0.8873111476016784 15 0.8873111476016784 19 0.770958772572225 23 0.52445554832654329 
		27 0.52629983975463712 32 0.48792693876095555;
createNode animCurveTA -n "animCurveTA1034";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -22.015891406447029 5 -22.684053014419629 
		9 7.2251643465905939 15 7.2251643465905939 19 -33.718405002458915 23 -243.86440529332998 
		27 -173.0361163359261 32 -180.49773634556979;
createNode animCurveTA -n "animCurveTA1035";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.3737820963010432 5 50.028200093848611 
		9 66.914280408568686 15 66.914280408568686 19 87.505291321802972 23 86.592030564295683 
		27 82.951976537734168 32 82.946272836705077;
createNode animCurveTA -n "animCurveTA1036";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.04386055886445716 5 -10.311512839811689 
		9 8.6198682792173074 15 8.6198682792173074 19 -33.307169043786899 23 -228.13663390091284 
		27 -181.25418874250573 32 -178.22608273600741;
createNode animCurveTA -n "animCurveTA1037";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1038";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1039";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1040";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1041";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1042";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1043";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1044";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1045";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1046";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1047";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1048";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1049";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1050";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1051";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1052";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1053";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1054";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1055";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1056";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1057";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1058";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1059";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1060";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1061";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1062";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTL -n "animCurveTL393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.5198069948790518 32 -0.5198069948790518;
createNode animCurveTL -n "animCurveTL394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 32 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 32 0.36439499068905612;
createNode animCurveTA -n "animCurveTA1063";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965317 32 7.7976222737965317;
createNode animCurveTA -n "animCurveTA1064";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 30.409274105849079 32 30.409274105849079;
createNode animCurveTA -n "animCurveTA1065";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.859940280210893 32 64.859940280210893;
createNode animCurveTL -n "animCurveTL396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.43524234076486068 32 0.43524234076486068;
createNode animCurveTL -n "animCurveTL397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 32 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 32 0.27773886459742925;
createNode animCurveTA -n "animCurveTA1066";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1067";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -28.652637602052774 32 -28.652637602052774;
createNode animCurveTA -n "animCurveTA1068";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.676908227303443 32 -64.676908227303443;
createNode animCurveTL -n "animCurveTL399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -3.6104881869781766 5 -3.3131385946780694 
		9 -1.1943712286013037 15 -0.7180477974154158 19 -0.58269181732078779 23 -0.1364015318029109 
		27 0.25086682566177304 32 0.50779909749143681;
createNode animCurveTL -n "animCurveTL400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 3.1559363434311183 5 3.598269296022087 
		9 3.3632243616199253 15 3.3082065752938381 19 3.2101521707158849 23 1.8490545809892625 
		27 1.6477698405768997 32 1.6689598813423481;
	setAttr -s 8 ".kit[5:7]"  1 9 1;
	setAttr -s 8 ".kot[5:7]"  1 9 1;
	setAttr -s 8 ".kix[5:7]"  0.0025830857921391726 0.016655592247843742 
		0.0090691875666379929;
	setAttr -s 8 ".kiy[5:7]"  -0.9999966025352478 -0.99986129999160767 
		0.99995893239974976;
	setAttr -s 8 ".kox[5:7]"  0.0025830578524619341 0.016655592247843742 
		0.0090692136436700821;
	setAttr -s 8 ".koy[5:7]"  -0.9999966025352478 -0.99986129999160767 
		0.99995893239974976;
createNode animCurveTL -n "animCurveTL401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.4191128409853142 5 2.6606685543799227 
		9 2.7045119624465617 15 2.5012523393874702 19 2.4385439058150271 23 1.9864149916600498 
		27 1.953855431397264 32 1.7208562191968135;
createNode animCurveTA -n "animCurveTA1069";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 18.07051120818576 5 123.05116964551512 
		9 158.42126902314601 15 158.42126902314601 19 158.42126902314601 23 70.659814901856777 
		27 113.31338906800265 32 113.31338906800265;
createNode animCurveTA -n "animCurveTA1070";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 27.042197631862905 5 50.006959673250485 
		9 13.704919858052135 15 13.704919858052135 19 13.704919858052135 23 28.759883097146474 
		27 27.774052061252021 32 27.774052061252021;
createNode animCurveTA -n "animCurveTA1071";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 44.163945774207242 5 154.41796320306653 
		9 151.61917322913928 15 151.61917322913928 19 151.61917322913928 23 64.253499184326969 
		27 108.51395313632175 32 108.51395313632175;
createNode animCurveTL -n "animCurveTL402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.7875558619441037 5 -2.1549250663786683 
		9 -1.1161759461866312 15 -1.1161759461866314 19 -1.1161759461866314 23 -0.21560937644845482 
		27 0.11265621767859692 32 0.3180497490313704;
	setAttr -s 8 ".kit[3:7]"  3 3 9 9 9;
	setAttr -s 8 ".kot[3:7]"  3 3 9 9 9;
createNode animCurveTL -n "animCurveTL403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 3.0387196944603136 5 3.6016112480237248 
		9 3.6846189122041215 15 3.2563174285671428 19 3.2563174285671428 23 1.7263217733137726 
		27 1.4761752817348073 32 1.6845379350398575;
	setAttr -s 8 ".kit[3:7]"  3 3 9 9 9;
	setAttr -s 8 ".kot[3:7]"  3 3 9 9 9;
createNode animCurveTL -n "animCurveTL404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.3530071131550769 5 0.93374474927965811 
		9 0.71696547528804033 15 0.48297335009604342 19 0.48297335009604342 23 -0.11405658750207424 
		27 -0.17370339219836856 32 -0.15334644841494655;
	setAttr -s 8 ".kit[3:7]"  3 3 9 9 9;
	setAttr -s 8 ".kot[3:7]"  3 3 9 9 9;
createNode animCurveTA -n "animCurveTA1072";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -22.721527139382605 5 -58.419308728277471 
		9 -14.174772550822054 15 3.8921739237094291 19 3.8921739237094291 23 -54.475998753962863 
		27 -77.578844113844227 32 -77.578844113844227;
createNode animCurveTA -n "animCurveTA1073";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -32.542233735493284 5 -4.2252990474631096 
		9 37.775004617502525 15 40.947140144807506 19 40.947140144807506 23 41.24925619053527 
		27 25.892023478809861 32 25.892023478809861;
createNode animCurveTA -n "animCurveTA1074";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -52.028611522488887 5 -10.408846442718591 
		9 -40.345884245834682 15 -48.668659217598091 19 -48.668659217598091 23 -74.385977711756126 
		27 -86.301269630351825 32 -86.301269630351825;
createNode animCurveTL -n "animCurveTL405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.31054502397108613 5 0.31054502397108613 
		9 0.31054502397108613 15 0.31054502397108613 19 0.31054502397108613 23 0.31054502397108613 
		27 0.31054502397108613 32 0.16192513703445957;
createNode animCurveTL -n "animCurveTL406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.55640530640609931 5 -0.55640530640609931 
		9 -0.55640530640609931 15 -0.55640530640609931 19 -0.55640530640609931 23 
		-0.55640530640609931 27 -0.55640530640609931 32 -0.60990417397691832;
createNode animCurveTL -n "animCurveTL407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.57914122395678103 5 -0.57914122395678103 
		9 -0.57914122395678103 15 -0.57914122395678103 19 -0.57914122395678103 23 
		-0.57914122395678103 27 -0.57914122395678103 32 -0.76627877032566316;
createNode animCurveTL -n "animCurveTL408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.37736680843384973 5 -0.66837432706737265 
		9 -0.66837432706737265 15 -0.66837432706737265 19 -0.66837432706737265 23 
		0.068254021509906823 27 0.068254021509906823 32 -0.11078123300644353;
createNode animCurveTL -n "animCurveTL409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.54343311259648019 5 -0.52392090245552159 
		9 -0.52392090245552159 15 -0.52392090245552159 19 -0.52392090245552159 23 
		-0.79388399939907506 27 -0.79388399939907506 32 -0.67382444426010057;
createNode animCurveTL -n "animCurveTL410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.97043124551903082 5 -1.0017862083608859 
		9 -1.0017862083608859 15 -1.0017862083608859 19 -1.0017862083608859 23 -0.90815338483928987 
		27 -0.90815338483928987 32 -0.98101339904097429;
createNode animCurveTA -n "animCurveTA1075";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.061808866237337522 5 -0.061808866237337522 
		9 -0.061808866237337522 15 -0.061808866237337522 19 -0.061808866237337522 
		23 -0.061808866237337522 27 -0.061808866237337522 32 -0.061808866237340665;
createNode animCurveTA -n "animCurveTA1076";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -59.058178941076754 5 -59.058178941076754 
		9 -59.058178941076754 15 -59.058178941076754 19 -59.058178941076754 23 -59.058178941076754 
		27 -59.058178941076754 32 -59.058178941076754;
createNode animCurveTA -n "animCurveTA1077";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 16.579147429757843 5 16.579147429757843 
		9 16.579147429757843 15 16.579147429757843 19 16.579147429757843 23 16.579147429757843 
		27 16.579147429757843 32 16.57914742975785;
createNode animCurveTA -n "animCurveTA1078";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 12.253734489678925 5 12.253734489678925 
		9 12.253734489678925 15 12.253734489678925 19 12.253734489678925 23 12.253734489678925 
		27 12.253734489678925 32 12.253734489678925;
createNode animCurveTA -n "animCurveTA1079";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -65.746751280844961 5 -65.746751280844961 
		9 -65.746751280844961 15 -65.746751280844961 19 -65.746751280844961 23 -65.746751280844961 
		27 -65.746751280844961 32 -65.746751280844975;
createNode animCurveTA -n "animCurveTA1080";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 9 0 15 0 19 0 23 0 27 0 
		32 0;
createNode animCurveTA -n "animCurveTA1081";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 15.711328223519057 5 15.711328223519057 
		9 15.711328223519057 15 15.711328223519057 19 15.711328223519057 23 15.711328223519057 
		27 15.711328223519057 32 15.711328223519061;
createNode animCurveTA -n "animCurveTA1082";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.5572674112203622 5 8.5572674112203622 
		9 8.5572674112203622 15 8.5572674112203622 19 8.5572674112203622 23 8.5572674112203622 
		27 8.5572674112203622 32 8.5572674112203657;
createNode animCurveTA -n "animCurveTA1083";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 9 0 15 0 19 0 23 0 27 0 
		32 0;
createNode animCurveTA -n "animCurveTA1084";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 9 0 15 0 19 0 23 0 27 0 
		32 0;
createNode animCurveTA -n "animCurveTA1085";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 9 0 15 0 19 0 23 0 27 0 
		32 0;
createNode animCurveTA -n "animCurveTA1086";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 9 0 15 0 19 0 23 0 27 0 
		32 0;
createNode animCurveTA -n "animCurveTA1087";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 9 0 15 0 19 0 23 0 27 0 
		32 0;
createNode animCurveTA -n "animCurveTA1088";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 9 0 15 0 19 0 23 0 27 0 
		32 0;
createNode animCurveTA -n "animCurveTA1089";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.2533422302317216 5 8.2533422302317216 
		9 8.2533422302317216 15 8.2533422302317216 19 8.2533422302317216 23 8.2533422302317216 
		27 8.2533422302317216 32 8.2533422302317216;
createNode animCurveTA -n "animCurveTA1090";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 23.263402056531085 5 23.263402056531085 
		9 23.263402056531085 15 23.263402056531085 19 23.263402056531085 23 23.263402056531085 
		27 23.263402056531085 32 23.263402056531085;
createNode animCurveTA -n "animCurveTA1091";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 20.166277752815617 5 20.166277752815617 
		9 20.166277752815617 15 20.166277752815617 19 20.166277752815617 23 20.166277752815617 
		27 20.166277752815617 32 20.166277752815617;
createNode animCurveTA -n "animCurveTA1092";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 9 0 15 0 19 0 23 0 27 0 
		32 0;
createNode animCurveTA -n "animCurveTA1093";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 9 0 15 0 19 0 23 0 27 0 
		32 0;
createNode animCurveTA -n "animCurveTA1094";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 33.429092416277157 5 33.429092416277157 
		9 33.429092416277157 15 33.429092416277157 19 33.429092416277157 23 33.429092416277157 
		27 33.429092416277157 32 33.429092416277157;
createNode animCurveTA -n "animCurveTA1095";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1096";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1097";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1098";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1099";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 32 13.994403295754109;
createNode animCurveTA -n "animCurveTA1101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "animCurveTA1103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 32 13.994403295754109;
createNode animCurveTA -n "animCurveTA1104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 9 0 15 0 19 0 23 0 27 0 
		32 0;
createNode animCurveTA -n "animCurveTA1105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 9 0 15 0 19 0 23 0 27 0 
		32 0;
createNode animCurveTA -n "animCurveTA1106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 17.254116939558369 5 17.254116939558369 
		9 17.254116939558369 15 17.254116939558369 19 17.254116939558369 23 17.254116939558369 
		27 17.254116939558369 32 17.254116939558369;
createNode animCurveTA -n "animCurveTA1107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 9 0 15 0 19 0 23 0 27 0 
		32 0;
createNode animCurveTA -n "animCurveTA1108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 9 0 15 0 19 0 23 0 27 0 
		32 0;
createNode animCurveTA -n "animCurveTA1109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 9 0 15 0 19 0 23 0 27 0 
		32 0;
createNode animCurveTA -n "animCurveTA1110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -4.5029554330710564 5 18.754571580063811 
		9 10.633481400988915 15 11.790696219522886 19 14.841116229748122 23 -4.1186419203464339 
		27 0 32 0.65073001024951671;
createNode animCurveTA -n "animCurveTA1111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.9010361189490677 5 -0.37159136750623473 
		9 -9.2780985969799232 15 -12.721632895546092 19 -5.1194991219369994 23 -3.1348215658583602 
		27 0 32 4.2368721935960938;
createNode animCurveTA -n "animCurveTA1112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 13.385293829723329 5 16.936749038313376 
		9 11.239809979539599 15 10.857282949653175 19 5.6838140911348107 23 8.6826430469889644 
		27 19.422897350263717 32 8.7398866450636881;
createNode animCurveTA -n "animCurveTA1113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 9 0 15 0 19 0 23 0 27 0 
		32 0;
createNode animCurveTA -n "animCurveTA1114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 9 0 15 0 19 0 23 0 27 0 
		32 0;
createNode animCurveTA -n "animCurveTA1115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 9 0 15 0 19 0 23 0 27 0 
		32 0;
createNode animCurveTA -n "animCurveTA1116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.193111203843999 5 -4.8789052860820226 
		9 -7.3329668717409193 15 -10.656349038082464 19 -6.8379744789592127 23 -0.54233412823661942 
		27 -6.8379744789592127 32 -4.8714700432790465;
createNode animCurveTA -n "animCurveTA1117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.3695448421264804 5 -4.509308586369742 
		9 -11.210574547937318 15 -10.607441607970456 19 -8.9605004059238293 23 -4.8366048509329334 
		27 -8.9605004059238293 32 -11.783606204137087;
createNode animCurveTA -n "animCurveTA1118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 23.978753900084683 5 6.0027783571869984 
		9 18.80536090044011 15 8.1694701105634415 19 6.5316046820399816 23 23.25211639803943 
		27 6.5316046820399816 32 7.5423825101935931;
createNode animCurveTA -n "animCurveTA1119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.2794034653486954 5 7.9165902769489644 
		9 7.9165902769489644 15 7.9165902769489644 19 7.9165902769489644 23 7.9165902769489644 
		27 0 32 1.8903601258661935;
createNode animCurveTA -n "animCurveTA1120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.220409239720234 5 0.6979506194915599 
		9 0.6979506194915599 15 0.6979506194915599 19 0.6979506194915599 23 0.6979506194915599 
		27 0 32 -2.5597289571479038;
createNode animCurveTA -n "animCurveTA1121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -7.2916773476568704 5 10.473018738919205 
		9 10.473018738919205 15 10.473018738919205 19 10.473018738919205 23 10.473018738919205 
		27 0 32 2.0168110874036049;
createNode animCurveTA -n "animCurveTA1122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 9 0 15 0 19 0 23 0 27 0 
		32 0;
createNode animCurveTA -n "animCurveTA1123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 9 0 15 0 19 0 23 0 27 0 
		32 0;
createNode animCurveTA -n "animCurveTA1124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 27.080064458283051 5 27.080064458283051 
		9 27.080064458283051 15 27.080064458283051 19 27.080064458283051 23 27.080064458283051 
		27 27.080064458283051 32 27.080064458283051;
createNode animCurveTA -n "animCurveTA1125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 10.423754966968488 5 10.423754966968488 
		9 10.423754966968488 15 10.423754966968488 19 10.423754966968488 23 10.423754966968488 
		27 10.423754966968488 32 10.423754966968488;
createNode animCurveTA -n "animCurveTA1126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 27.722848255843903 5 27.722848255843903 
		9 27.722848255843903 15 27.722848255843903 19 27.722848255843903 23 27.722848255843903 
		27 27.722848255843903 32 27.7228482558439;
createNode animCurveTA -n "animCurveTA1127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 21.576484776388227 5 21.576484776388227 
		9 21.576484776388227 15 21.576484776388227 19 21.576484776388227 23 21.576484776388227 
		27 21.576484776388227 32 21.576484776388224;
createNode animCurveTA -n "animCurveTA1128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 9 0 15 0 19 0 23 0 27 0 
		32 0;
createNode animCurveTA -n "animCurveTA1129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 9 0 15 0 19 0 23 0 27 0 
		32 0;
createNode animCurveTA -n "animCurveTA1130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 27.911632519594587 5 27.911632519594587 
		9 27.911632519594587 15 27.911632519594587 19 27.911632519594587 23 27.911632519594587 
		27 27.911632519594587 32 27.911632519594587;
createNode clipLibrary -n "clipLibrary3";
	setAttr -s 162 ".cel[0].cev";
createNode clipLibrary -n "clipLibrary4";
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
	setAttr -s 3 ".sol";
connectAttr "hom_get_out_of_car_high.st" "clipLibrary3.st[0]";
connectAttr "hom_get_out_of_car_high.du" "clipLibrary3.du[0]";
connectAttr "animCurveTL370.a" "clipLibrary3.cel[0].cev[0].cevr";
connectAttr "animCurveTL371.a" "clipLibrary3.cel[0].cev[1].cevr";
connectAttr "animCurveTL372.a" "clipLibrary3.cel[0].cev[2].cevr";
connectAttr "animCurveTL373.a" "clipLibrary3.cel[0].cev[3].cevr";
connectAttr "animCurveTL374.a" "clipLibrary3.cel[0].cev[4].cevr";
connectAttr "animCurveTA1018.a" "clipLibrary3.cel[0].cev[5].cevr";
connectAttr "animCurveTU9.a" "clipLibrary3.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary3.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary3.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary3.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary3.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary3.cel[0].cev[11].cevr";
connectAttr "animCurveTU15.a" "clipLibrary3.cel[0].cev[12].cevr";
connectAttr "animCurveTU16.a" "clipLibrary3.cel[0].cev[13].cevr";
connectAttr "animCurveTA1019.a" "clipLibrary3.cel[0].cev[14].cevr";
connectAttr "animCurveTA1020.a" "clipLibrary3.cel[0].cev[15].cevr";
connectAttr "animCurveTA1021.a" "clipLibrary3.cel[0].cev[16].cevr";
connectAttr "animCurveTL375.a" "clipLibrary3.cel[0].cev[17].cevr";
connectAttr "animCurveTL376.a" "clipLibrary3.cel[0].cev[18].cevr";
connectAttr "animCurveTL377.a" "clipLibrary3.cel[0].cev[19].cevr";
connectAttr "animCurveTL378.a" "clipLibrary3.cel[0].cev[20].cevr";
connectAttr "animCurveTL379.a" "clipLibrary3.cel[0].cev[21].cevr";
connectAttr "animCurveTL380.a" "clipLibrary3.cel[0].cev[22].cevr";
connectAttr "animCurveTA1022.a" "clipLibrary3.cel[0].cev[23].cevr";
connectAttr "animCurveTA1023.a" "clipLibrary3.cel[0].cev[24].cevr";
connectAttr "animCurveTA1024.a" "clipLibrary3.cel[0].cev[25].cevr";
connectAttr "animCurveTL381.a" "clipLibrary3.cel[0].cev[26].cevr";
connectAttr "animCurveTL382.a" "clipLibrary3.cel[0].cev[27].cevr";
connectAttr "animCurveTL383.a" "clipLibrary3.cel[0].cev[28].cevr";
connectAttr "animCurveTA1025.a" "clipLibrary3.cel[0].cev[29].cevr";
connectAttr "animCurveTA1026.a" "clipLibrary3.cel[0].cev[30].cevr";
connectAttr "animCurveTA1027.a" "clipLibrary3.cel[0].cev[31].cevr";
connectAttr "animCurveTA1028.a" "clipLibrary3.cel[0].cev[32].cevr";
connectAttr "animCurveTA1029.a" "clipLibrary3.cel[0].cev[33].cevr";
connectAttr "animCurveTA1030.a" "clipLibrary3.cel[0].cev[34].cevr";
connectAttr "animCurveTA1031.a" "clipLibrary3.cel[0].cev[35].cevr";
connectAttr "animCurveTA1032.a" "clipLibrary3.cel[0].cev[36].cevr";
connectAttr "animCurveTA1033.a" "clipLibrary3.cel[0].cev[37].cevr";
connectAttr "animCurveTL384.a" "clipLibrary3.cel[0].cev[38].cevr";
connectAttr "animCurveTL385.a" "clipLibrary3.cel[0].cev[39].cevr";
connectAttr "animCurveTL386.a" "clipLibrary3.cel[0].cev[40].cevr";
connectAttr "animCurveTL387.a" "clipLibrary3.cel[0].cev[41].cevr";
connectAttr "animCurveTL388.a" "clipLibrary3.cel[0].cev[42].cevr";
connectAttr "animCurveTL389.a" "clipLibrary3.cel[0].cev[43].cevr";
connectAttr "animCurveTL390.a" "clipLibrary3.cel[0].cev[44].cevr";
connectAttr "animCurveTL391.a" "clipLibrary3.cel[0].cev[45].cevr";
connectAttr "animCurveTL392.a" "clipLibrary3.cel[0].cev[46].cevr";
connectAttr "animCurveTA1034.a" "clipLibrary3.cel[0].cev[47].cevr";
connectAttr "animCurveTA1035.a" "clipLibrary3.cel[0].cev[48].cevr";
connectAttr "animCurveTA1036.a" "clipLibrary3.cel[0].cev[49].cevr";
connectAttr "animCurveTA1037.a" "clipLibrary3.cel[0].cev[50].cevr";
connectAttr "animCurveTA1038.a" "clipLibrary3.cel[0].cev[51].cevr";
connectAttr "animCurveTA1039.a" "clipLibrary3.cel[0].cev[52].cevr";
connectAttr "animCurveTA1040.a" "clipLibrary3.cel[0].cev[53].cevr";
connectAttr "animCurveTA1041.a" "clipLibrary3.cel[0].cev[54].cevr";
connectAttr "animCurveTA1042.a" "clipLibrary3.cel[0].cev[55].cevr";
connectAttr "animCurveTA1043.a" "clipLibrary3.cel[0].cev[56].cevr";
connectAttr "animCurveTA1044.a" "clipLibrary3.cel[0].cev[57].cevr";
connectAttr "animCurveTA1045.a" "clipLibrary3.cel[0].cev[58].cevr";
connectAttr "animCurveTA1046.a" "clipLibrary3.cel[0].cev[59].cevr";
connectAttr "animCurveTA1047.a" "clipLibrary3.cel[0].cev[60].cevr";
connectAttr "animCurveTA1048.a" "clipLibrary3.cel[0].cev[61].cevr";
connectAttr "animCurveTA1049.a" "clipLibrary3.cel[0].cev[62].cevr";
connectAttr "animCurveTA1050.a" "clipLibrary3.cel[0].cev[63].cevr";
connectAttr "animCurveTA1051.a" "clipLibrary3.cel[0].cev[64].cevr";
connectAttr "animCurveTA1052.a" "clipLibrary3.cel[0].cev[65].cevr";
connectAttr "animCurveTA1053.a" "clipLibrary3.cel[0].cev[66].cevr";
connectAttr "animCurveTA1054.a" "clipLibrary3.cel[0].cev[67].cevr";
connectAttr "animCurveTA1055.a" "clipLibrary3.cel[0].cev[68].cevr";
connectAttr "animCurveTA1056.a" "clipLibrary3.cel[0].cev[69].cevr";
connectAttr "animCurveTA1057.a" "clipLibrary3.cel[0].cev[70].cevr";
connectAttr "animCurveTA1058.a" "clipLibrary3.cel[0].cev[71].cevr";
connectAttr "animCurveTA1059.a" "clipLibrary3.cel[0].cev[72].cevr";
connectAttr "animCurveTA1060.a" "clipLibrary3.cel[0].cev[73].cevr";
connectAttr "animCurveTA1061.a" "clipLibrary3.cel[0].cev[74].cevr";
connectAttr "animCurveTA1062.a" "clipLibrary3.cel[0].cev[75].cevr";
connectAttr "animCurveTL393.a" "clipLibrary3.cel[0].cev[76].cevr";
connectAttr "animCurveTL394.a" "clipLibrary3.cel[0].cev[77].cevr";
connectAttr "animCurveTL395.a" "clipLibrary3.cel[0].cev[78].cevr";
connectAttr "animCurveTA1063.a" "clipLibrary3.cel[0].cev[79].cevr";
connectAttr "animCurveTA1064.a" "clipLibrary3.cel[0].cev[80].cevr";
connectAttr "animCurveTA1065.a" "clipLibrary3.cel[0].cev[81].cevr";
connectAttr "animCurveTL396.a" "clipLibrary3.cel[0].cev[82].cevr";
connectAttr "animCurveTL397.a" "clipLibrary3.cel[0].cev[83].cevr";
connectAttr "animCurveTL398.a" "clipLibrary3.cel[0].cev[84].cevr";
connectAttr "animCurveTA1066.a" "clipLibrary3.cel[0].cev[85].cevr";
connectAttr "animCurveTA1067.a" "clipLibrary3.cel[0].cev[86].cevr";
connectAttr "animCurveTA1068.a" "clipLibrary3.cel[0].cev[87].cevr";
connectAttr "animCurveTL399.a" "clipLibrary3.cel[0].cev[88].cevr";
connectAttr "animCurveTL400.a" "clipLibrary3.cel[0].cev[89].cevr";
connectAttr "animCurveTL401.a" "clipLibrary3.cel[0].cev[90].cevr";
connectAttr "animCurveTA1069.a" "clipLibrary3.cel[0].cev[91].cevr";
connectAttr "animCurveTA1070.a" "clipLibrary3.cel[0].cev[92].cevr";
connectAttr "animCurveTA1071.a" "clipLibrary3.cel[0].cev[93].cevr";
connectAttr "animCurveTL402.a" "clipLibrary3.cel[0].cev[94].cevr";
connectAttr "animCurveTL403.a" "clipLibrary3.cel[0].cev[95].cevr";
connectAttr "animCurveTL404.a" "clipLibrary3.cel[0].cev[96].cevr";
connectAttr "animCurveTA1072.a" "clipLibrary3.cel[0].cev[97].cevr";
connectAttr "animCurveTA1073.a" "clipLibrary3.cel[0].cev[98].cevr";
connectAttr "animCurveTA1074.a" "clipLibrary3.cel[0].cev[99].cevr";
connectAttr "animCurveTL405.a" "clipLibrary3.cel[0].cev[100].cevr";
connectAttr "animCurveTL406.a" "clipLibrary3.cel[0].cev[101].cevr";
connectAttr "animCurveTL407.a" "clipLibrary3.cel[0].cev[102].cevr";
connectAttr "animCurveTL408.a" "clipLibrary3.cel[0].cev[103].cevr";
connectAttr "animCurveTL409.a" "clipLibrary3.cel[0].cev[104].cevr";
connectAttr "animCurveTL410.a" "clipLibrary3.cel[0].cev[105].cevr";
connectAttr "animCurveTA1075.a" "clipLibrary3.cel[0].cev[106].cevr";
connectAttr "animCurveTA1076.a" "clipLibrary3.cel[0].cev[107].cevr";
connectAttr "animCurveTA1077.a" "clipLibrary3.cel[0].cev[108].cevr";
connectAttr "animCurveTA1078.a" "clipLibrary3.cel[0].cev[109].cevr";
connectAttr "animCurveTA1079.a" "clipLibrary3.cel[0].cev[110].cevr";
connectAttr "animCurveTA1080.a" "clipLibrary3.cel[0].cev[111].cevr";
connectAttr "animCurveTA1081.a" "clipLibrary3.cel[0].cev[112].cevr";
connectAttr "animCurveTA1082.a" "clipLibrary3.cel[0].cev[113].cevr";
connectAttr "animCurveTA1083.a" "clipLibrary3.cel[0].cev[114].cevr";
connectAttr "animCurveTA1084.a" "clipLibrary3.cel[0].cev[115].cevr";
connectAttr "animCurveTA1085.a" "clipLibrary3.cel[0].cev[116].cevr";
connectAttr "animCurveTA1086.a" "clipLibrary3.cel[0].cev[117].cevr";
connectAttr "animCurveTA1087.a" "clipLibrary3.cel[0].cev[118].cevr";
connectAttr "animCurveTA1088.a" "clipLibrary3.cel[0].cev[119].cevr";
connectAttr "animCurveTA1089.a" "clipLibrary3.cel[0].cev[120].cevr";
connectAttr "animCurveTA1090.a" "clipLibrary3.cel[0].cev[121].cevr";
connectAttr "animCurveTA1091.a" "clipLibrary3.cel[0].cev[122].cevr";
connectAttr "animCurveTA1092.a" "clipLibrary3.cel[0].cev[123].cevr";
connectAttr "animCurveTA1093.a" "clipLibrary3.cel[0].cev[124].cevr";
connectAttr "animCurveTA1094.a" "clipLibrary3.cel[0].cev[125].cevr";
connectAttr "animCurveTA1095.a" "clipLibrary3.cel[0].cev[126].cevr";
connectAttr "animCurveTA1096.a" "clipLibrary3.cel[0].cev[127].cevr";
connectAttr "animCurveTA1097.a" "clipLibrary3.cel[0].cev[128].cevr";
connectAttr "animCurveTA1098.a" "clipLibrary3.cel[0].cev[129].cevr";
connectAttr "animCurveTA1099.a" "clipLibrary3.cel[0].cev[130].cevr";
connectAttr "animCurveTA1100.a" "clipLibrary3.cel[0].cev[131].cevr";
connectAttr "animCurveTA1101.a" "clipLibrary3.cel[0].cev[132].cevr";
connectAttr "animCurveTA1102.a" "clipLibrary3.cel[0].cev[133].cevr";
connectAttr "animCurveTA1103.a" "clipLibrary3.cel[0].cev[134].cevr";
connectAttr "animCurveTA1104.a" "clipLibrary3.cel[0].cev[135].cevr";
connectAttr "animCurveTA1105.a" "clipLibrary3.cel[0].cev[136].cevr";
connectAttr "animCurveTA1106.a" "clipLibrary3.cel[0].cev[137].cevr";
connectAttr "animCurveTA1107.a" "clipLibrary3.cel[0].cev[138].cevr";
connectAttr "animCurveTA1108.a" "clipLibrary3.cel[0].cev[139].cevr";
connectAttr "animCurveTA1109.a" "clipLibrary3.cel[0].cev[140].cevr";
connectAttr "animCurveTA1110.a" "clipLibrary3.cel[0].cev[141].cevr";
connectAttr "animCurveTA1111.a" "clipLibrary3.cel[0].cev[142].cevr";
connectAttr "animCurveTA1112.a" "clipLibrary3.cel[0].cev[143].cevr";
connectAttr "animCurveTA1113.a" "clipLibrary3.cel[0].cev[144].cevr";
connectAttr "animCurveTA1114.a" "clipLibrary3.cel[0].cev[145].cevr";
connectAttr "animCurveTA1115.a" "clipLibrary3.cel[0].cev[146].cevr";
connectAttr "animCurveTA1116.a" "clipLibrary3.cel[0].cev[147].cevr";
connectAttr "animCurveTA1117.a" "clipLibrary3.cel[0].cev[148].cevr";
connectAttr "animCurveTA1118.a" "clipLibrary3.cel[0].cev[149].cevr";
connectAttr "animCurveTA1119.a" "clipLibrary3.cel[0].cev[150].cevr";
connectAttr "animCurveTA1120.a" "clipLibrary3.cel[0].cev[151].cevr";
connectAttr "animCurveTA1121.a" "clipLibrary3.cel[0].cev[152].cevr";
connectAttr "animCurveTA1122.a" "clipLibrary3.cel[0].cev[153].cevr";
connectAttr "animCurveTA1123.a" "clipLibrary3.cel[0].cev[154].cevr";
connectAttr "animCurveTA1124.a" "clipLibrary3.cel[0].cev[155].cevr";
connectAttr "animCurveTA1125.a" "clipLibrary3.cel[0].cev[156].cevr";
connectAttr "animCurveTA1126.a" "clipLibrary3.cel[0].cev[157].cevr";
connectAttr "animCurveTA1127.a" "clipLibrary3.cel[0].cev[158].cevr";
connectAttr "animCurveTA1128.a" "clipLibrary3.cel[0].cev[159].cevr";
connectAttr "animCurveTA1129.a" "clipLibrary3.cel[0].cev[160].cevr";
connectAttr "animCurveTA1130.a" "clipLibrary3.cel[0].cev[161].cevr";
connectAttr "hom_get_out_of_car_high.st" "clipLibrary4.st[0]";
connectAttr "hom_get_out_of_car_high.du" "clipLibrary4.du[0]";
connectAttr "animCurveTL370.a" "clipLibrary4.cel[0].cev[0].cevr";
connectAttr "animCurveTL371.a" "clipLibrary4.cel[0].cev[1].cevr";
connectAttr "animCurveTL372.a" "clipLibrary4.cel[0].cev[2].cevr";
connectAttr "animCurveTL373.a" "clipLibrary4.cel[0].cev[3].cevr";
connectAttr "animCurveTL374.a" "clipLibrary4.cel[0].cev[4].cevr";
connectAttr "animCurveTA1018.a" "clipLibrary4.cel[0].cev[5].cevr";
connectAttr "animCurveTU9.a" "clipLibrary4.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary4.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary4.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary4.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary4.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary4.cel[0].cev[11].cevr";
connectAttr "animCurveTU15.a" "clipLibrary4.cel[0].cev[12].cevr";
connectAttr "animCurveTU16.a" "clipLibrary4.cel[0].cev[13].cevr";
connectAttr "animCurveTA1019.a" "clipLibrary4.cel[0].cev[14].cevr";
connectAttr "animCurveTA1020.a" "clipLibrary4.cel[0].cev[15].cevr";
connectAttr "animCurveTA1021.a" "clipLibrary4.cel[0].cev[16].cevr";
connectAttr "animCurveTL375.a" "clipLibrary4.cel[0].cev[17].cevr";
connectAttr "animCurveTL376.a" "clipLibrary4.cel[0].cev[18].cevr";
connectAttr "animCurveTL377.a" "clipLibrary4.cel[0].cev[19].cevr";
connectAttr "animCurveTL378.a" "clipLibrary4.cel[0].cev[20].cevr";
connectAttr "animCurveTL379.a" "clipLibrary4.cel[0].cev[21].cevr";
connectAttr "animCurveTL380.a" "clipLibrary4.cel[0].cev[22].cevr";
connectAttr "animCurveTA1022.a" "clipLibrary4.cel[0].cev[23].cevr";
connectAttr "animCurveTA1023.a" "clipLibrary4.cel[0].cev[24].cevr";
connectAttr "animCurveTA1024.a" "clipLibrary4.cel[0].cev[25].cevr";
connectAttr "animCurveTL381.a" "clipLibrary4.cel[0].cev[26].cevr";
connectAttr "animCurveTL382.a" "clipLibrary4.cel[0].cev[27].cevr";
connectAttr "animCurveTL383.a" "clipLibrary4.cel[0].cev[28].cevr";
connectAttr "animCurveTA1025.a" "clipLibrary4.cel[0].cev[29].cevr";
connectAttr "animCurveTA1026.a" "clipLibrary4.cel[0].cev[30].cevr";
connectAttr "animCurveTA1027.a" "clipLibrary4.cel[0].cev[31].cevr";
connectAttr "animCurveTA1028.a" "clipLibrary4.cel[0].cev[32].cevr";
connectAttr "animCurveTA1029.a" "clipLibrary4.cel[0].cev[33].cevr";
connectAttr "animCurveTA1030.a" "clipLibrary4.cel[0].cev[34].cevr";
connectAttr "animCurveTA1031.a" "clipLibrary4.cel[0].cev[35].cevr";
connectAttr "animCurveTA1032.a" "clipLibrary4.cel[0].cev[36].cevr";
connectAttr "animCurveTA1033.a" "clipLibrary4.cel[0].cev[37].cevr";
connectAttr "animCurveTL384.a" "clipLibrary4.cel[0].cev[38].cevr";
connectAttr "animCurveTL385.a" "clipLibrary4.cel[0].cev[39].cevr";
connectAttr "animCurveTL386.a" "clipLibrary4.cel[0].cev[40].cevr";
connectAttr "animCurveTL387.a" "clipLibrary4.cel[0].cev[41].cevr";
connectAttr "animCurveTL388.a" "clipLibrary4.cel[0].cev[42].cevr";
connectAttr "animCurveTL389.a" "clipLibrary4.cel[0].cev[43].cevr";
connectAttr "animCurveTL390.a" "clipLibrary4.cel[0].cev[44].cevr";
connectAttr "animCurveTL391.a" "clipLibrary4.cel[0].cev[45].cevr";
connectAttr "animCurveTL392.a" "clipLibrary4.cel[0].cev[46].cevr";
connectAttr "animCurveTA1034.a" "clipLibrary4.cel[0].cev[47].cevr";
connectAttr "animCurveTA1035.a" "clipLibrary4.cel[0].cev[48].cevr";
connectAttr "animCurveTA1036.a" "clipLibrary4.cel[0].cev[49].cevr";
connectAttr "animCurveTA1037.a" "clipLibrary4.cel[0].cev[50].cevr";
connectAttr "animCurveTA1038.a" "clipLibrary4.cel[0].cev[51].cevr";
connectAttr "animCurveTA1039.a" "clipLibrary4.cel[0].cev[52].cevr";
connectAttr "animCurveTA1040.a" "clipLibrary4.cel[0].cev[53].cevr";
connectAttr "animCurveTA1041.a" "clipLibrary4.cel[0].cev[54].cevr";
connectAttr "animCurveTA1042.a" "clipLibrary4.cel[0].cev[55].cevr";
connectAttr "animCurveTA1043.a" "clipLibrary4.cel[0].cev[56].cevr";
connectAttr "animCurveTA1044.a" "clipLibrary4.cel[0].cev[57].cevr";
connectAttr "animCurveTA1045.a" "clipLibrary4.cel[0].cev[58].cevr";
connectAttr "animCurveTA1046.a" "clipLibrary4.cel[0].cev[59].cevr";
connectAttr "animCurveTA1047.a" "clipLibrary4.cel[0].cev[60].cevr";
connectAttr "animCurveTA1048.a" "clipLibrary4.cel[0].cev[61].cevr";
connectAttr "animCurveTA1049.a" "clipLibrary4.cel[0].cev[62].cevr";
connectAttr "animCurveTA1050.a" "clipLibrary4.cel[0].cev[63].cevr";
connectAttr "animCurveTA1051.a" "clipLibrary4.cel[0].cev[64].cevr";
connectAttr "animCurveTA1052.a" "clipLibrary4.cel[0].cev[65].cevr";
connectAttr "animCurveTA1053.a" "clipLibrary4.cel[0].cev[66].cevr";
connectAttr "animCurveTA1054.a" "clipLibrary4.cel[0].cev[67].cevr";
connectAttr "animCurveTA1055.a" "clipLibrary4.cel[0].cev[68].cevr";
connectAttr "animCurveTA1056.a" "clipLibrary4.cel[0].cev[69].cevr";
connectAttr "animCurveTA1057.a" "clipLibrary4.cel[0].cev[70].cevr";
connectAttr "animCurveTA1058.a" "clipLibrary4.cel[0].cev[71].cevr";
connectAttr "animCurveTA1059.a" "clipLibrary4.cel[0].cev[72].cevr";
connectAttr "animCurveTA1060.a" "clipLibrary4.cel[0].cev[73].cevr";
connectAttr "animCurveTA1061.a" "clipLibrary4.cel[0].cev[74].cevr";
connectAttr "animCurveTA1062.a" "clipLibrary4.cel[0].cev[75].cevr";
connectAttr "animCurveTL393.a" "clipLibrary4.cel[0].cev[76].cevr";
connectAttr "animCurveTL394.a" "clipLibrary4.cel[0].cev[77].cevr";
connectAttr "animCurveTL395.a" "clipLibrary4.cel[0].cev[78].cevr";
connectAttr "animCurveTA1063.a" "clipLibrary4.cel[0].cev[79].cevr";
connectAttr "animCurveTA1064.a" "clipLibrary4.cel[0].cev[80].cevr";
connectAttr "animCurveTA1065.a" "clipLibrary4.cel[0].cev[81].cevr";
connectAttr "animCurveTL396.a" "clipLibrary4.cel[0].cev[82].cevr";
connectAttr "animCurveTL397.a" "clipLibrary4.cel[0].cev[83].cevr";
connectAttr "animCurveTL398.a" "clipLibrary4.cel[0].cev[84].cevr";
connectAttr "animCurveTA1066.a" "clipLibrary4.cel[0].cev[85].cevr";
connectAttr "animCurveTA1067.a" "clipLibrary4.cel[0].cev[86].cevr";
connectAttr "animCurveTA1068.a" "clipLibrary4.cel[0].cev[87].cevr";
connectAttr "animCurveTL399.a" "clipLibrary4.cel[0].cev[88].cevr";
connectAttr "animCurveTL400.a" "clipLibrary4.cel[0].cev[89].cevr";
connectAttr "animCurveTL401.a" "clipLibrary4.cel[0].cev[90].cevr";
connectAttr "animCurveTA1069.a" "clipLibrary4.cel[0].cev[91].cevr";
connectAttr "animCurveTA1070.a" "clipLibrary4.cel[0].cev[92].cevr";
connectAttr "animCurveTA1071.a" "clipLibrary4.cel[0].cev[93].cevr";
connectAttr "animCurveTL402.a" "clipLibrary4.cel[0].cev[94].cevr";
connectAttr "animCurveTL403.a" "clipLibrary4.cel[0].cev[95].cevr";
connectAttr "animCurveTL404.a" "clipLibrary4.cel[0].cev[96].cevr";
connectAttr "animCurveTA1072.a" "clipLibrary4.cel[0].cev[97].cevr";
connectAttr "animCurveTA1073.a" "clipLibrary4.cel[0].cev[98].cevr";
connectAttr "animCurveTA1074.a" "clipLibrary4.cel[0].cev[99].cevr";
connectAttr "animCurveTL405.a" "clipLibrary4.cel[0].cev[100].cevr";
connectAttr "animCurveTL406.a" "clipLibrary4.cel[0].cev[101].cevr";
connectAttr "animCurveTL407.a" "clipLibrary4.cel[0].cev[102].cevr";
connectAttr "animCurveTL408.a" "clipLibrary4.cel[0].cev[103].cevr";
connectAttr "animCurveTL409.a" "clipLibrary4.cel[0].cev[104].cevr";
connectAttr "animCurveTL410.a" "clipLibrary4.cel[0].cev[105].cevr";
connectAttr "animCurveTA1075.a" "clipLibrary4.cel[0].cev[106].cevr";
connectAttr "animCurveTA1076.a" "clipLibrary4.cel[0].cev[107].cevr";
connectAttr "animCurveTA1077.a" "clipLibrary4.cel[0].cev[108].cevr";
connectAttr "animCurveTA1078.a" "clipLibrary4.cel[0].cev[109].cevr";
connectAttr "animCurveTA1079.a" "clipLibrary4.cel[0].cev[110].cevr";
connectAttr "animCurveTA1080.a" "clipLibrary4.cel[0].cev[111].cevr";
connectAttr "animCurveTA1081.a" "clipLibrary4.cel[0].cev[112].cevr";
connectAttr "animCurveTA1082.a" "clipLibrary4.cel[0].cev[113].cevr";
connectAttr "animCurveTA1083.a" "clipLibrary4.cel[0].cev[114].cevr";
connectAttr "animCurveTA1084.a" "clipLibrary4.cel[0].cev[115].cevr";
connectAttr "animCurveTA1085.a" "clipLibrary4.cel[0].cev[116].cevr";
connectAttr "animCurveTA1086.a" "clipLibrary4.cel[0].cev[117].cevr";
connectAttr "animCurveTA1087.a" "clipLibrary4.cel[0].cev[118].cevr";
connectAttr "animCurveTA1088.a" "clipLibrary4.cel[0].cev[119].cevr";
connectAttr "animCurveTA1089.a" "clipLibrary4.cel[0].cev[120].cevr";
connectAttr "animCurveTA1090.a" "clipLibrary4.cel[0].cev[121].cevr";
connectAttr "animCurveTA1091.a" "clipLibrary4.cel[0].cev[122].cevr";
connectAttr "animCurveTA1092.a" "clipLibrary4.cel[0].cev[123].cevr";
connectAttr "animCurveTA1093.a" "clipLibrary4.cel[0].cev[124].cevr";
connectAttr "animCurveTA1094.a" "clipLibrary4.cel[0].cev[125].cevr";
connectAttr "animCurveTA1095.a" "clipLibrary4.cel[0].cev[126].cevr";
connectAttr "animCurveTA1096.a" "clipLibrary4.cel[0].cev[127].cevr";
connectAttr "animCurveTA1097.a" "clipLibrary4.cel[0].cev[128].cevr";
connectAttr "animCurveTA1098.a" "clipLibrary4.cel[0].cev[129].cevr";
connectAttr "animCurveTA1099.a" "clipLibrary4.cel[0].cev[130].cevr";
connectAttr "animCurveTA1100.a" "clipLibrary4.cel[0].cev[131].cevr";
connectAttr "animCurveTA1101.a" "clipLibrary4.cel[0].cev[132].cevr";
connectAttr "animCurveTA1102.a" "clipLibrary4.cel[0].cev[133].cevr";
connectAttr "animCurveTA1103.a" "clipLibrary4.cel[0].cev[134].cevr";
connectAttr "animCurveTA1104.a" "clipLibrary4.cel[0].cev[135].cevr";
connectAttr "animCurveTA1105.a" "clipLibrary4.cel[0].cev[136].cevr";
connectAttr "animCurveTA1106.a" "clipLibrary4.cel[0].cev[137].cevr";
connectAttr "animCurveTA1107.a" "clipLibrary4.cel[0].cev[138].cevr";
connectAttr "animCurveTA1108.a" "clipLibrary4.cel[0].cev[139].cevr";
connectAttr "animCurveTA1109.a" "clipLibrary4.cel[0].cev[140].cevr";
connectAttr "animCurveTA1110.a" "clipLibrary4.cel[0].cev[141].cevr";
connectAttr "animCurveTA1111.a" "clipLibrary4.cel[0].cev[142].cevr";
connectAttr "animCurveTA1112.a" "clipLibrary4.cel[0].cev[143].cevr";
connectAttr "animCurveTA1113.a" "clipLibrary4.cel[0].cev[144].cevr";
connectAttr "animCurveTA1114.a" "clipLibrary4.cel[0].cev[145].cevr";
connectAttr "animCurveTA1115.a" "clipLibrary4.cel[0].cev[146].cevr";
connectAttr "animCurveTA1116.a" "clipLibrary4.cel[0].cev[147].cevr";
connectAttr "animCurveTA1117.a" "clipLibrary4.cel[0].cev[148].cevr";
connectAttr "animCurveTA1118.a" "clipLibrary4.cel[0].cev[149].cevr";
connectAttr "animCurveTA1119.a" "clipLibrary4.cel[0].cev[150].cevr";
connectAttr "animCurveTA1120.a" "clipLibrary4.cel[0].cev[151].cevr";
connectAttr "animCurveTA1121.a" "clipLibrary4.cel[0].cev[152].cevr";
connectAttr "animCurveTA1122.a" "clipLibrary4.cel[0].cev[153].cevr";
connectAttr "animCurveTA1123.a" "clipLibrary4.cel[0].cev[154].cevr";
connectAttr "animCurveTA1124.a" "clipLibrary4.cel[0].cev[155].cevr";
connectAttr "animCurveTA1125.a" "clipLibrary4.cel[0].cev[156].cevr";
connectAttr "animCurveTA1126.a" "clipLibrary4.cel[0].cev[157].cevr";
connectAttr "animCurveTA1127.a" "clipLibrary4.cel[0].cev[158].cevr";
connectAttr "animCurveTA1128.a" "clipLibrary4.cel[0].cev[159].cevr";
connectAttr "animCurveTA1129.a" "clipLibrary4.cel[0].cev[160].cevr";
connectAttr "animCurveTA1130.a" "clipLibrary4.cel[0].cev[161].cevr";
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
// End of hom-m_get_out_of_car_high.ma
