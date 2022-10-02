//Maya ASCII 4.0 scene
//Name: mrg_stomp_in_air.ma
//Last modified: Thu, Jan 30, 2003 11:36:16 AM
requires maya "4.0";
requires "p3dmayaexp" "18.5";
requires "p3dSimpleShader" "18.5";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_stomp_in_airSource";
	setAttr ".ihi" 0;
	setAttr ".du" 7;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "animCurveTL43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "animCurveTL44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.0094415514826023238 1 -0.0094415514826023238 
		2 -0.0094415514826023238 3 -0.0094415514826023238 4 -0.0094415514826023238 
		5 -0.0094415514826023238 6 -0.0094415514826023238 7 -0.0094415514826023238;
createNode animCurveTL -n "animCurveTL45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "animCurveTL46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.50691111817032386 1 0.50545101059854392 
		2 0.50301749797891071 3 0.50253079545498403 4 0.50691111817032386 5 0.52374742138765806 
		6 0.54750571704548467 7 0.56142180530101859;
createNode animCurveTA -n "animCurveTA129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 1;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 1;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "animCurveTL47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "animCurveTL48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "animCurveTL49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "animCurveTL50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.74870188002941362 1 -0.62773619099804689 
		2 -0.50883053901981434 3 -0.3858048164144961 4 -0.25247891550187268 5 -0.043848313749776331 
		6 0.094514275022478667 7 -0.1798575049233741;
createNode animCurveTL -n "animCurveTL51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.26053650441635906 1 0.31480272826059219 
		2 0.43418842071790181 3 0.55357411317521277 4 0.60784033701944529 5 -1.0226112585376501 
		6 -1.6110623851908998 7 0.16898309013118218;
createNode animCurveTL -n "animCurveTL52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.442752315637595 1 1.4056973567468962 
		2 1.3632525851194479 3 1.3194603601017685 4 1.278363041040375 5 1.2440029872817864 
		6 1.2204225581725201 7 1.2116641130590937;
createNode animCurveTA -n "animCurveTA133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -26.37374737372533 1 -25.749154135927615 
		2 -25.033157014798853 3 -24.317159896510788 4 -23.692566667235212 5 -23.250781213143913 
		6 -23.083207420408623 7 -11.146327595429028;
createNode animCurveTA -n "animCurveTA134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -6.6356540421061805 1 -2.5899729705336485 
		2 2.0477590340298084 3 6.6854910632310025 4 10.731172208716751 5 13.592751562133881 
		6 14.678178215129178 7 14.655207914648136;
createNode animCurveTA -n "animCurveTA135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -41.102350972354316 1 -32.778551533927299 
		2 -23.236635115607381 3 -13.69471870343552 4 -5.3709192834525705 5 0.51664615830053262 
		6 2.7498606357828796 7 2.7513825725827443;
createNode animCurveTL -n "animCurveTL53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.69157277474033318 1 0.59969948873078371 
		2 0.50607785557462193 3 0.41595292714585042 4 0.334569755318472 5 0.26846344688918888 
		6 0.2399891099109131 7 0.2399891099109131;
createNode animCurveTL -n "animCurveTL54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.33321990747572949 1 0.38748613131996257 
		2 0.50687182377727225 3 0.62625751623458326 4 0.68052374007881566 5 -0.89560350644471398 
		6 -1.4297302840643975 7 0.10777353673698997;
createNode animCurveTL -n "animCurveTL55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.4198122414469547 1 1.4471436784422003 
		2 1.4784748376218939 3 1.5098059966338975 4 1.5371374331260705 5 1.5564694247462769 
		6 1.5638022491423764 7 1.5638022491423764;
createNode animCurveTA -n "animCurveTA136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -17.935675747740234 1 -13.926582031006939 
		2 -9.3307917569807586 3 -4.7350015295949968 4 -0.72590795278297804 5 2.1097923695219949 
		6 3.1854028333866129 7 3.1854028333866129;
createNode animCurveTA -n "animCurveTA137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -4.6947134066376632 1 -6.300019393907565 
		2 -8.1402482514088152 3 -9.9804771326379775 4 -11.585783191091625 5 -12.721243580266341 
		6 -13.151935453658675 7 -13.151935453658675;
createNode animCurveTA -n "animCurveTA138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 35.687226003007616 1 29.354143001367543 
		2 22.094267276123968 3 14.834391501449288 4 8.5013083515158634 5 4.0218105004960716 
		6 2.3226906225622859 7 2.3226906225622859;
createNode animCurveTA -n "animCurveTA139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "animCurveTL56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "animCurveTL57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "animCurveTL58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 1;
createNode animCurveTL -n "animCurveTL59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "animCurveTL60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "animCurveTL61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 1;
createNode animCurveTL -n "animCurveTL62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.021790256719945673 1 -0.021790256719945673 
		2 -0.021790256719945673 3 -0.021790256719945673 4 -0.021790256719945673 5 
		-0.021790256719945673 6 -0.021790256719945673 7 -0.021790256719945673;
createNode animCurveTL -n "animCurveTL63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.98090503722356814 1 0.98090503722356892 
		2 0.98090503722356814 3 0.98090503722356892 4 0.98090503722356892 5 0.98090503722356814 
		6 0.98090503722356859 7 0.9809050372235687;
createNode animCurveTL -n "animCurveTL64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.169905541422902 1 1.166535743685057 
		2 1.1609194141219816 3 1.1597961482093666 4 1.169905541422902 5 1.208762224034502 
		6 1.2635942463526941 7 1.2957113339080888;
createNode animCurveTA -n "animCurveTA151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 9.1004399387362884 1 4.2177725815220741 
		2 -0.91640068664127861 3 -5.5475614990180819 4 -8.921191488872644 5 -11.0610895168209 
		6 -11.412499266732802 7 -8.3530696067536532;
createNode animCurveTA -n "animCurveTA152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0;
createNode animCurveTA -n "animCurveTA153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0;
createNode animCurveTA -n "animCurveTA154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 -32.384275978337953;
createNode animCurveTA -n "animCurveTA155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 -0.70864834584946501;
createNode animCurveTA -n "animCurveTA156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 3.8828303308528316;
createNode animCurveTA -n "animCurveTA157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 8.3905148505663032;
createNode animCurveTA -n "animCurveTA158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 -3.9270382826366852;
createNode animCurveTA -n "animCurveTA159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0.0002313879170239069;
createNode animCurveTA -n "animCurveTA160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 -12.067569721914007;
createNode animCurveTA -n "animCurveTA161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 1.5044939868890123e-005;
createNode animCurveTA -n "animCurveTA164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 -32.384043432290923;
createNode animCurveTA -n "animCurveTA165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 -0.7086489030849682;
createNode animCurveTA -n "animCurveTA166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 3.8828306846003731;
createNode animCurveTA -n "animCurveTA167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 8.3905148506080582;
createNode animCurveTA -n "animCurveTA168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 -3.927081978016147;
createNode animCurveTA -n "animCurveTA169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 3.838851329449858e-007;
createNode animCurveTA -n "animCurveTA170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 -12.067569722157153;
createNode animCurveTA -n "animCurveTA171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 1.5071230941373042e-005;
createNode animCurveTA -n "animCurveTA174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 1.5044939868890123e-005;
createNode animCurveTA -n "animCurveTA177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 1.5071230941373042e-005;
createNode animCurveTL -n "animCurveTL65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 -0.99999847794082519;
createNode animCurveTL -n "animCurveTL66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 -4.2764297558738764e-016;
createNode animCurveTL -n "animCurveTL67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 -0.012139325813195843;
createNode animCurveTA -n "animCurveTA180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 9.5416640443905503e-015;
createNode animCurveTA -n "animCurveTA181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 2.6281747985426208e-014;
createNode animCurveTA -n "animCurveTA182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 -5.5280123116775972e-015;
createNode animCurveTL -n "animCurveTL68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0.99999945546674651;
createNode animCurveTL -n "animCurveTL69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 -4.2500828984594127e-016;
createNode animCurveTL -n "animCurveTL70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 -0.012139321127644518;
createNode animCurveTA -n "animCurveTA183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 9.5416640443905503e-015;
createNode animCurveTA -n "animCurveTA184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 2.6281747985426208e-014;
createNode animCurveTA -n "animCurveTA185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 -5.5280123116775972e-015;
createNode animCurveTL -n "animCurveTL71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 -1.4592482512335383;
createNode animCurveTL -n "animCurveTL72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 2.156877751797786;
createNode animCurveTL -n "animCurveTL73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 -0.001744739531608719;
createNode animCurveTA -n "animCurveTA186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "animCurveTL74";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 1.4592480700724053;
createNode animCurveTL -n "animCurveTL75";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 2.1568771257434891;
createNode animCurveTL -n "animCurveTL76";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 -0.0017447383560332686;
createNode animCurveTA -n "animCurveTA189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "animCurveTL77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "animCurveTL78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "animCurveTL79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 -1;
createNode animCurveTL -n "animCurveTL80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "animCurveTL81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "animCurveTL82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 -1;
createNode animCurveTA -n "animCurveTA192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 7.1611757732995267 4 -29.36528019587205 
		7 -29.36528019587205 13 -19.50213748830727;
createNode animCurveTA -n "animCurveTA193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 39.106052185342023 4 33.632007487098846 
		7 33.632007487098846 13 -69.574158095917497;
createNode animCurveTA -n "animCurveTA194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 14.066152560716034 4 39.422732467651393 
		7 39.422732467651393 13 28.598378749739105;
createNode animCurveTA -n "animCurveTA195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 -25.529060186380654 7 -25.529060186380654 
		13 23.681772127870062;
createNode animCurveTA -n "animCurveTA196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 37.525689716151184 4 50.62639581678782 
		7 50.62639581678782 13 -61.470368281768877;
createNode animCurveTA -n "animCurveTA197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.0597808782407443 4 24.80593687315482 
		7 24.80593687315482 13 10.594914666638035;
createNode animCurveTA -n "animCurveTA198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.248227116322052 4 29.042311109011226 
		7 29.042311109011226 13 17.234676788191269;
createNode animCurveTA -n "animCurveTA199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.2482271173120236 4 24.630572274382583 
		7 24.630572274382583;
createNode animCurveTA -n "animCurveTA200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.88151870345166106 7 -0.88151870345166106;
createNode animCurveTA -n "animCurveTA201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.46073804718986588 7 0.46073804718986588;
createNode animCurveTA -n "animCurveTA202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 3.9345312869804405 7 3.9345312869804405;
createNode animCurveTA -n "animCurveTA203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.67157876673030503 7 -0.67157876673030503;
createNode animCurveTA -n "animCurveTA204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 10.104445238337728 7 10.104445238337728;
createNode animCurveTA -n "animCurveTA205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 3.6267440159587703 7 3.6267440159587703;
createNode animCurveTA -n "animCurveTA206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 44.329806040211842;
createNode animCurveTA -n "animCurveTA207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 4.7279029152413283;
createNode animCurveTA -n "animCurveTA208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 12.811735915032374;
createNode animCurveTA -n "animCurveTA209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 -11.117540570592482;
createNode animCurveTA -n "animCurveTA210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0.91177011360845972;
createNode animCurveTA -n "animCurveTA211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 12.970331010713402;
createNode animCurveTA -n "animCurveTA212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 8.3848495590963843;
createNode animCurveTA -n "animCurveTA218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 8.3848495590963843;
createNode animCurveTA -n "animCurveTA221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 1.4931336274179972;
createNode animCurveTA -n "animCurveTA224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.12154099681323684 7 -0.047226054332544974 
		12 -0.047226054332544974 20 -0.02433915282028646;
createNode animCurveTA -n "animCurveTA228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.15295858546161678 7 -0.1895737735291782 
		12 -0.1895737735291782 20 -0.19384559726617526;
createNode animCurveTA -n "animCurveTA229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.2135206810466403 4 18.01010636550637 
		7 -6.4720002589201107 12 -6.4720002589201107 16 16.781775900362437 20 12.059721447739031 
		24 14.590214877561186 30 -3.5265808437064718;
createNode animCurveTA -n "animCurveTA230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 20.673337039191988 4 30.469922723651706 
		7 38.742651009536402 12 38.742651009536402 20 31.910632582892767;
createNode animCurveTA -n "animCurveTA233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTA -n "animCurveTA235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 9.7965856844597248 7 18.069313970344396 
		12 18.069313970344396 20 11.237295543700732;
createNode animCurveTA -n "animCurveTA236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.12154099681323684 7 -0.047226054332544974 
		12 -0.047226054332544974 20 -0.02433915282028646;
createNode animCurveTA -n "animCurveTA237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.15295858546161678 7 -0.1895737735291782 
		12 -0.1895737735291782 20 -0.19384559726617526;
createNode animCurveTA -n "animCurveTA238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.2135206810466403 4 18.01010636550637 
		7 -6.4720002589201107 12 -6.4720002589201107 16 16.781775900362437 20 12.059721447739031 
		24 14.590214877561186 30 -3.5265808437064718;
createNode animCurveTA -n "animCurveTA239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 -11.117540570592482;
createNode animCurveTA -n "animCurveTA240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0.91177011360845972;
createNode animCurveTA -n "animCurveTA241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 12.970331010713402;
createNode animCurveTA -n "animCurveTA242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 44.329806040211842;
createNode animCurveTA -n "animCurveTA243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 4.7279029152413283;
createNode animCurveTA -n "animCurveTA244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 12.811735915032374;
createNode animCurveTA -n "animCurveTA245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 1.4931336274179972;
createNode animCurveTA -n "mrg_hair_1_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "mrg_hair_1_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "mrg_hair_1_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "mrg_hair_2_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "mrg_hair_2_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "mrg_hair_2_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "mrg_hair_3_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "mrg_hair_3_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "mrg_hair_3_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode clipLibrary -n "clipLibrary1";
	setAttr -s 177 ".cel[0].cev";
	setAttr ".cd[0].cm" -type "characterMapping" 177 "Extra_Attributes.translateX" 
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
		2 118 "Middle_L.rotateZ" 2 119 "hair_1.rotateX" 2 120 "hair_1.rotateY" 
		2 121 "hair_1.rotateZ" 2 122 "hair_2.rotateX" 2 123 "hair_2.rotateY" 
		2 124 "hair_2.rotateZ" 2 125 "hair_3.rotateX" 2 126 "hair_3.rotateY" 
		2 127 "hair_3.rotateZ" 2 128  ;
	setAttr ".cd[0].cim" -type "Int32Array" 177 0 1 2 3
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
		 158 159 160 161 162 163 164 165 166 167 168
		 169 170 171 172 173 174 175 176 ;
createNode lightLinker -n "lightLinker1";
	setAttr ".ihi" 0;
	setAttr -s 21 ".lnk";
select -ne :time1;
	setAttr ".o" 7;
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
	setAttr ".outf" 23;
	setAttr ".an" yes;
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
connectAttr "mrg_stomp_in_airSource.st" "clipLibrary1.st[0]";
connectAttr "mrg_stomp_in_airSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL42.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL43.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL44.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL45.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL46.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA129.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU9.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU15.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU16.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA130.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA131.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA132.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL47.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL48.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL49.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL50.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL51.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL52.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA133.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA134.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA135.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL53.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL54.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL55.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA136.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA137.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA138.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA139.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA140.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA141.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA142.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA143.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA144.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA145.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA146.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA147.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA148.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA149.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA150.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL56.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL57.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL58.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL59.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL60.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL61.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL62.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL63.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL64.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA151.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA152.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA153.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA154.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA155.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA156.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA157.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA158.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA159.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA160.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA161.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA162.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA163.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA164.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA165.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA166.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA167.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA168.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA169.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA170.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA171.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA172.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA173.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA174.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA175.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA176.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA177.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA178.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA179.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL65.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL66.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL67.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA180.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA181.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA182.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL68.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL69.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL70.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA183.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA184.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA185.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL71.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL72.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL73.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA186.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA187.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA188.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL74.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL75.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL76.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA189.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA190.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA191.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL77.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL78.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL79.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL80.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL81.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL82.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA192.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA193.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA194.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA195.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA196.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA197.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA198.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA199.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA200.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA201.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA202.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA203.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA204.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA205.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA206.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA207.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA208.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA209.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA210.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA211.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA212.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA213.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA214.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA215.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA216.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA217.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA218.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA219.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA220.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA221.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA222.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA223.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA224.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA225.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA226.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA227.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA228.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA229.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA230.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA231.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA232.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA233.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA234.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA235.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA236.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA237.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA238.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA239.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA240.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA241.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA242.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA243.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA244.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA245.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA246.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA247.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr "mrg_hair_1_rotateX.a" "clipLibrary1.cel[0].cev[168].cevr";
connectAttr "mrg_hair_1_rotateY.a" "clipLibrary1.cel[0].cev[169].cevr";
connectAttr "mrg_hair_1_rotateZ.a" "clipLibrary1.cel[0].cev[170].cevr";
connectAttr "mrg_hair_2_rotateX.a" "clipLibrary1.cel[0].cev[171].cevr";
connectAttr "mrg_hair_2_rotateY.a" "clipLibrary1.cel[0].cev[172].cevr";
connectAttr "mrg_hair_2_rotateZ.a" "clipLibrary1.cel[0].cev[173].cevr";
connectAttr "mrg_hair_3_rotateX.a" "clipLibrary1.cel[0].cev[174].cevr";
connectAttr "mrg_hair_3_rotateY.a" "clipLibrary1.cel[0].cev[175].cevr";
connectAttr "mrg_hair_3_rotateZ.a" "clipLibrary1.cel[0].cev[176].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[8].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[13].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[21].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[22].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[23].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[24].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[25].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[26].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[27].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[28].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[29].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[30].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[31].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[32].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[33].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[34].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[35].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[36].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[37].llnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of mrg_stomp_in_air.ma
