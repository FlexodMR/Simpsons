//Maya ASCII 4.0 scene
//Name: mrg-m_get_out_of_car.ma
//Last modified: Wed, Jul 31, 2002 05:10:09 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.9.1.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_get_out_of_car";
	setAttr ".ihi" 0;
	setAttr ".du" 26;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTL -n "animCurveTL371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTL -n "animCurveTL372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -0.98752775572053031 1 -0.97992362354106533 
		2 -0.95648178234810377 3 -0.92217568228195068 4 -0.8819787734829112 5 -0.84086450609129004 
		6 -0.79679706946513451 7 -0.74555206310488631 8 -0.68882005236444155 9 -0.62829160259769656 
		10 -0.56234870320585717 11 -0.49077932833592164 12 -0.41738302046047648 13 
		-0.345959322052108 14 -0.27090263435164746 15 -0.19018608937021547 16 -0.11297732573583179 
		17 -0.048443982076516373 18 -0.0057536970202888135 19 0.01734887720675438 
		20 0.030681008878463804 21 0.036417940116739843 22 0.036734913043482843 23 
		0.033807169780593227 24 0.029809952449971356 25 0.026918503173517631 26 0.027308064073132386;
createNode animCurveTL -n "animCurveTL373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0;
createNode animCurveTL -n "animCurveTL374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0.7862033266438363 1 0.7925859873840575 
		2 0.80391125486685455 3 0.81677577059373008 4 0.82777617606618725 5 0.83350911278572859 
		6 0.83539135097488615 7 0.83409507842602826 8 0.8251000629954135 9 0.80388607253930022 
		10 0.76262716719753609 11 0.70594098619924983 12 0.64797266603462012 13 0.60286734319382596 
		14 0.57179301987261 15 0.54621049732752969 16 0.52570411063998601 17 0.50985819489137985 
		18 0.49825708516311246 19 0.48964367799247099 20 0.48296902685398641 21 0.47812970223492557 
		22 0.47502227462255525 23 0.47354331450414222 24 0.47358939236695335 25 0.47505707869825536 
		26 0.47784294398531513;
createNode animCurveTA -n "animCurveTA1075";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 1 3.9776191368651914 2 14.317215403524822 
		3 28.628897084074975 4 44.522772462611748 5 59.608949823231214 6 71.497537450029469 
		7 77.798643627102592 8 80.262291302152207 9 82.270368629048548 10 83.880783135665936 
		11 85.151442349878735 12 86.140253799561279 13 86.905125012587916 14 87.503963516832954 
		15 87.994676840170769 16 88.435172510475709 17 88.883358055622082 18 89.433562261353515 
		19 90.062743754277406 20 90.652754823563697 21 91.085447758382344 22 91.242674847903302 
		23 91.006288381296542 24 90.25814064773202 25 88.880083936379691 26 86.753970536409511;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 26 1;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 26 1;
createNode animCurveTA -n "animCurveTA1076";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1077";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1078";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTL -n "animCurveTL375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTL -n "animCurveTL376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTL -n "animCurveTL377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTL -n "animCurveTL378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.3209532433521722 5 -1.1176925385392034 
		9 -0.44610199797929512 12 -0.45784024006829749 15 -0.46536243686868317 18 
		-0.079231172634531777 26 0.026973059925548423;
createNode animCurveTL -n "animCurveTL379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.49929236591446868 5 0.50175447028852338 
		9 0.29797983921036575 12 0.079627230210079877 15 0.063836127160069353 18 
		0.23041172308451999 26 0.10106150608198576;
createNode animCurveTL -n "animCurveTL380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.7640779368499853 5 1.6794764491018461 
		9 1.281341681094087 12 0.96443446160500135 15 0.80736426247233939 18 0.72862173265362939 
		26 0.71334405017861091;
createNode animCurveTA -n "animCurveTA1079";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -24.204848230542304 5 -22.419131681844462 
		9 -154.04663602423088 12 2.0822323229708863 15 12.914815035711696 18 31.163048056758278 
		26 24.012797569894396;
createNode animCurveTA -n "animCurveTA1080";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 -1.647110260657298 9 85.307613122646956 
		12 47.906061846067566 15 44.798473325146027 18 76.497948267072374 26 84.299783223770348;
createNode animCurveTA -n "animCurveTA1081";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 -7.792214191643243 9 -135.03194822833242 
		12 -3.7394997910725674 15 5.2325939926596039 18 16.258904422158409 26 25.856432587073389;
createNode animCurveTL -n "animCurveTL381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.0182182727496343 5 -0.6412959173910826 
		9 -0.19709392492672032 13 -0.061169252414953877 18 -0.01334837033442416 26 
		-0.01334837033442416;
	setAttr -s 6 ".kit[4:5]"  3 3;
	setAttr -s 6 ".kot[4:5]"  3 3;
createNode animCurveTL -n "animCurveTL382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.51781298511506035 5 0.52220454945856198 
		9 0.13399932785620844 13 0.13664091184861693 18 0.099792524394212101 26 0.099792524394212101;
	setAttr -s 6 ".kit[4:5]"  3 3;
	setAttr -s 6 ".kot[4:5]"  3 3;
createNode animCurveTL -n "animCurveTL383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.725016696635667 5 1.4426019109001122 
		9 0.72758270358682942 13 0.57871528283472218 18 0.48556028562852094 26 0.48556028562852094;
	setAttr -s 6 ".kit[4:5]"  3 3;
	setAttr -s 6 ".kot[4:5]"  3 3;
createNode animCurveTA -n "animCurveTA1082";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -36.819011955683756 5 -23.836081528609505 
		9 13.386608864537667 13 22.58709019965919 18 144.92877310043403 26 144.92877310043403;
	setAttr -s 6 ".kit[4:5]"  3 3;
	setAttr -s 6 ".kot[4:5]"  3 3;
createNode animCurveTA -n "animCurveTA1083";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 32.680141269224187 9 89.027410654796142 
		13 83.46897840771301 18 87.915006050863568 26 87.915006050863568;
	setAttr -s 6 ".kit[4:5]"  3 3;
	setAttr -s 6 ".kot[4:5]"  3 3;
createNode animCurveTA -n "animCurveTA1084";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 -16.694590641346085 9 2.7881658132186113 
		13 11.236123151313604 18 145.65913196895923 26 145.65913196895923;
	setAttr -s 6 ".kit[4:5]"  3 3;
	setAttr -s 6 ".kot[4:5]"  3 3;
createNode animCurveTA -n "animCurveTA1085";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1086";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1087";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1088";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1089";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1090";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1091";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1092";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1093";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1094";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1095";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1096";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTL -n "animCurveTL384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 13 0 18 0 26 0;
createNode animCurveTL -n "animCurveTL385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 13 0 18 0 26 0;
createNode animCurveTL -n "animCurveTL386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 5 1 9 1 13 1 18 1 26 1;
createNode animCurveTL -n "animCurveTL387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 13 0 18 0 26 0;
createNode animCurveTL -n "animCurveTL388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 13 0 18 0 26 0;
createNode animCurveTL -n "animCurveTL389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 5 1 9 1 13 1 18 1 26 1;
createNode animCurveTL -n "animCurveTL390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.2031997596013333 5 -1.0245058589245895 
		9 -0.76550790681676928 13 -0.42151541636540835 18 -0.0070102808063144404 
		26 0.033272033051868183;
createNode animCurveTL -n "animCurveTL391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.74320840376740638 5 0.77934557090348999 
		9 0.75727515958592351 13 0.79123212997902315 18 0.9603445891923984 26 0.99029027513321821;
createNode animCurveTL -n "animCurveTL392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.95790690250061006 5 1.015544077946021 
		9 0.97945148743735477 13 0.73453109363296221 18 0.60707438511487966 26 0.58220187939004353;
createNode animCurveTA -n "animCurveTA1097";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -47.088616656908457 5 -36.993165127080985 
		9 -21.627500680611647 13 -56.451559682499592 18 -10.524357573062732 26 12.6864720256344;
createNode animCurveTA -n "animCurveTA1098";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.0975263990809512 5 4.2213744290950981 
		9 65.203538204653469 13 86.421159446167096 18 83.991659329325273 26 87.632297593257519;
createNode animCurveTA -n "animCurveTA1099";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.53932213336905677 5 5.0547248166579246 
		9 1.3688900413213105 13 -34.132176528326823 18 -6.4564780799843575 26 14.351427973717879;
createNode animCurveTA -n "animCurveTA1100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 18 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 18 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 18 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kot[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTL -n "animCurveTL393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.5198069948790518 26 -0.5198069948790518;
createNode animCurveTL -n "animCurveTL394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 26 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 26 0.36439499068905612;
createNode animCurveTA -n "animCurveTA1126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965317 26 7.7976222737965317;
createNode animCurveTA -n "animCurveTA1127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 30.409274105849079 26 30.409274105849079;
createNode animCurveTA -n "animCurveTA1128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.859940280210893 26 64.859940280210893;
createNode animCurveTL -n "animCurveTL396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.43524234076486068 26 0.43524234076486068;
createNode animCurveTL -n "animCurveTL397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 26 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 26 0.27773886459742925;
createNode animCurveTA -n "animCurveTA1129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -28.652637602052774 26 -28.652637602052774;
createNode animCurveTA -n "animCurveTA1131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.676908227303443 26 -64.676908227303443;
createNode animCurveTL -n "animCurveTL399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -3.1112480635238988 5 -2.506404692300098 
		9 -1.7763968636959502 13 -1.1589263527876252 18 0.084090212565900185 26 0.08315331409687525;
createNode animCurveTL -n "animCurveTL400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.7424766145627919 5 1.9589453481018968 
		9 1.75451593549325 13 1.8151543176824989 18 2.2039025263406669 26 2.2340748261771268;
createNode animCurveTL -n "animCurveTL401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.8531126401564211 5 2.5219192367593042 
		9 2.5599577820306378 13 2.1913105683113021 18 1.7712672142570682 26 1.673664753965252;
createNode animCurveTA -n "animCurveTA1132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 26.27937306915485 5 -5.1331304022416511 
		9 151.43662822283284 13 90.81153931725234 18 99.53154639603973 26 99.53154639603973;
createNode animCurveTA -n "animCurveTA1133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 55.316964386970021 5 79.485943429073515 
		9 43.112977127082544 13 47.471853362890037 18 16.995570213197844 26 16.995570213197844;
createNode animCurveTA -n "animCurveTA1134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 77.201572122121519 5 14.861797571450703 
		9 114.86295160954589 13 78.562279385720728 18 85.806336390412298 26 85.806336390412298;
createNode animCurveTL -n "animCurveTL402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.0647721020251719 5 -1.2196062710911399 
		9 -1.1211549393233267 13 -0.76901978436771656 18 -0.035626302949823926 26 
		0.0075284509982356;
createNode animCurveTL -n "animCurveTL403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.7590071920447805 5 1.8595366025735192 
		9 2.1779885370581127 13 1.9472178046880699 18 2.1667916398770868 26 2.2308892076869316;
createNode animCurveTL -n "animCurveTL404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.9261547314579206 5 1.6601441055341308 
		9 1.2514546279077841 13 0.77451723076573697 18 0.77413853953571476 26 0.75264579493080264;
createNode animCurveTA -n "animCurveTA1135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 59.007910131897106 5 -19.857120233881059 
		9 16.275795097520266 13 -20.828033249452968 18 -20.775207426992168 26 -57.686752578536527;
createNode animCurveTA -n "animCurveTA1136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -71.601588453715053 5 -18.861618565170517 
		9 -2.420055214893253 13 -5.9561083159624797 18 9.6232013136425287 26 15.010180308222342;
createNode animCurveTA -n "animCurveTA1137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -90.779043014820601 5 -37.068646093410017 
		9 -32.42518102829527 13 -20.997729995609479 18 -70.554974365531166 26 -82.72145983872133;
createNode animCurveTL -n "animCurveTL405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.017571725225418906 5 0.31054502397108613 
		9 0.33308143132363349 13 0.31054502397108613 18 0.31054502397108613 26 0.041145264892337378;
createNode animCurveTL -n "animCurveTL406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.54560785950824164 5 -0.55640530640609931 
		9 -0.55723587922823647 13 -0.55640530640609931 18 -0.55640530640609931 26 
		-0.31146429538707981;
createNode animCurveTL -n "animCurveTL407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.64724218630287966 5 -0.57914122395678103 
		9 -0.57390268855197346 13 -0.57914122395678103 18 -0.57914122395678103 26 
		-0.89435116137917281;
createNode animCurveTL -n "animCurveTL408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.22996541113775407 5 -0.063331173333856433 
		9 -0.050513155306980945 13 -0.063331173333856433 18 -0.063331173333856433 
		26 -0.098479895550541749;
createNode animCurveTL -n "animCurveTL409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.71572892866406468 5 -0.69960805773293522 
		9 -0.69836799071620337 13 -0.69960805773293522 18 -0.69960805773293522 26 
		-0.58076064884528811;
createNode animCurveTL -n "animCurveTL410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.86045149817799893 5 -0.66762598980258558 
		9 -0.65279325861711623 13 -0.66762598980258558 18 -0.66762598980258558 26 
		-1.3428777128417846;
createNode animCurveTA -n "animCurveTA1138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.061808866237340665 5 -0.061808866237337522 
		9 -0.061808866237337522 13 -0.061808866237337522 18 -0.061808866237337522 
		26 -0.061808866237340665;
createNode animCurveTA -n "animCurveTA1139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -59.058178941076754 5 -59.058178941076754 
		9 -59.058178941076754 13 -59.058178941076754 18 -59.058178941076754 26 -59.058178941076754;
createNode animCurveTA -n "animCurveTA1140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 16.57914742975785 5 16.579147429757843 
		9 16.579147429757843 13 16.579147429757843 18 16.579147429757843 26 16.57914742975785;
createNode animCurveTA -n "animCurveTA1141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 12.253734489678925 5 12.253734489678925 
		9 12.253734489678925 13 12.253734489678925 18 12.253734489678925 26 12.253734489678925;
createNode animCurveTA -n "animCurveTA1142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -65.746751280844975 5 -65.746751280844961 
		9 -65.746751280844961 13 -65.746751280844961 18 -65.746751280844961 26 -65.746751280844975;
createNode animCurveTA -n "animCurveTA1143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 13 0 18 0 26 0;
createNode animCurveTA -n "animCurveTA1144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 15.711328223519061 5 15.711328223519057 
		9 15.711328223519057 13 15.711328223519057 18 15.711328223519057 26 15.711328223519061;
createNode animCurveTA -n "animCurveTA1145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.5572674112203657 5 8.5572674112203622 
		9 8.5572674112203622 13 8.5572674112203622 18 8.5572674112203622 26 8.5572674112203657;
createNode animCurveTA -n "animCurveTA1146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 13 0 18 0 26 0;
createNode animCurveTA -n "animCurveTA1147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 13 0 18 0 26 0;
createNode animCurveTA -n "animCurveTA1148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 13 0 18 0 26 0;
createNode animCurveTA -n "animCurveTA1149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 13 0 18 0 26 0;
createNode animCurveTA -n "animCurveTA1150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 13 0 18 0 26 0;
createNode animCurveTA -n "animCurveTA1151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 13 0 18 0 26 0;
createNode animCurveTA -n "animCurveTA1152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.2533422302317216 5 8.2533422302317216 
		9 8.2533422302317216 13 8.2533422302317216 18 8.2533422302317216 26 8.2533422302317216;
createNode animCurveTA -n "animCurveTA1153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 23.263402056531085 5 23.263402056531085 
		9 23.263402056531085 13 23.263402056531085 18 23.263402056531085 26 23.263402056531085;
createNode animCurveTA -n "animCurveTA1154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 20.166277752815617 5 20.166277752815617 
		9 20.166277752815617 13 20.166277752815617 18 20.166277752815617 26 20.166277752815617;
createNode animCurveTA -n "animCurveTA1155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 13 0 18 0 26 0;
createNode animCurveTA -n "animCurveTA1156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 13 0 18 0 26 0;
createNode animCurveTA -n "animCurveTA1157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 33.429092416277157 5 33.429092416277157 
		9 33.429092416277157 13 33.429092416277157 18 33.429092416277157 26 33.429092416277157;
createNode animCurveTA -n "animCurveTA1158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 26 13.994403295754109;
createNode animCurveTA -n "animCurveTA1164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA1166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 26 13.994403295754109;
createNode animCurveTA -n "animCurveTA1167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 13 0 18 0 26 0;
createNode animCurveTA -n "animCurveTA1168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 13 0 18 0 26 0;
createNode animCurveTA -n "animCurveTA1169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 17.254116939558369 5 17.254116939558369 
		9 17.254116939558369 13 17.254116939558369 18 17.254116939558369 26 17.254116939558369;
createNode animCurveTA -n "animCurveTA1170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 13 0 18 0 26 0;
createNode animCurveTA -n "animCurveTA1171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 13 0 18 0 26 0;
createNode animCurveTA -n "animCurveTA1172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 13 0 18 0 26 0;
createNode animCurveTA -n "animCurveTA1173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.3937906322123035 5 29.941806731577064 
		9 8.0478350124472975 13 -11.376404614494664 18 -17.199271747043262 26 -0.71009266045616004;
createNode animCurveTA -n "animCurveTA1174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.7843868968348546 5 -11.340589809615459 
		9 -2.4586141445864027 13 8.111397527607032 18 -0.66934234682304783 26 -0.39065484564574882;
createNode animCurveTA -n "animCurveTA1175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 13.23227595374661 5 18.197454480652105 
		9 17.830640727774405 13 35.901015039211579 18 -2.0668757821175725 26 8.1445984161934586;
createNode animCurveTA -n "animCurveTA1176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 -3.5548639269896363 13 
		-7.1097278539792699 18 -7.1097278539792699 26 0;
createNode animCurveTA -n "animCurveTA1177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 13 0 18 0 26 0;
createNode animCurveTA -n "animCurveTA1178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 13 0 18 0 26 0;
createNode animCurveTA -n "animCurveTA1179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.71032600031388204 5 -42.316228046459521 
		9 -53.927652349805115 13 -11.11460265689187 18 -0.6975661275887125 26 2.0270270270270276;
createNode animCurveTA -n "animCurveTA1180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -3.6938159239902011 5 -52.530810203051601 
		9 -42.258887725413224 13 -15.307104340522201 18 -5.3871780587216689 26 2.4108692476260059;
createNode animCurveTA -n "animCurveTA1181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 14.572231982957494 5 28.477161460610642 
		9 39.22889001239917 13 12.601406608012761 18 5.8821544464347353 26 13.0432985235726;
createNode animCurveTA -n "animCurveTA1182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.2796212519697261 5 1.9105981885565175 
		9 1.8720927646667362 13 1.8903601258661931 18 17.217050141327398 26 0;
createNode animCurveTA -n "animCurveTA1183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.2209313171847884 5 -8.7263910129402671 
		9 -6.1434799840056398 13 -2.5597289571479034 18 3.9382465325195106 26 0;
createNode animCurveTA -n "animCurveTA1184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.0401232256568242 5 1.8112931934742704 
		9 1.4349113584083817 13 2.016811087403604 18 2.7648012395766783 26 -10.382821061592265;
createNode animCurveTA -n "animCurveTA1185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 13 0 18 0 26 0;
createNode animCurveTA -n "animCurveTA1186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 13 0 18 0 26 0;
createNode animCurveTA -n "animCurveTA1187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.080064458283051 5 27.080064458283051 
		9 27.080064458283051 13 27.080064458283051 18 27.080064458283051 26 27.080064458283051;
createNode animCurveTA -n "animCurveTA1188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 10.423754966968488 5 10.423754966968488 
		9 10.423754966968488 13 10.423754966968488 18 10.423754966968488 26 10.423754966968488;
createNode animCurveTA -n "animCurveTA1189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.7228482558439 5 27.722848255843903 
		9 27.722848255843903 13 27.722848255843903 18 27.722848255843903 26 27.7228482558439;
createNode animCurveTA -n "animCurveTA1190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 21.576484776388224 5 21.576484776388227 
		9 21.576484776388227 13 21.576484776388227 18 21.576484776388227 26 21.576484776388224;
createNode animCurveTA -n "animCurveTA1191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 13 0 18 0 26 0;
createNode animCurveTA -n "animCurveTA1192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 9 0 13 0 18 0 26 0;
createNode animCurveTA -n "animCurveTA1193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.911632519594587 5 27.911632519594587 
		9 27.911632519594587 13 27.911632519594587 18 27.911632519594587 26 27.911632519594587;
createNode animCurveTA -n "animCurveTA1194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 13 0 22 0;
createNode animCurveTA -n "animCurveTA1195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 13 0 22 0;
createNode animCurveTA -n "animCurveTA1196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 13 27.500704258956837 22 0;
createNode animCurveTA -n "animCurveTA1197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 13 0 22 0;
createNode animCurveTA -n "animCurveTA1198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 13 0 22 0;
createNode animCurveTA -n "animCurveTA1199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 13 17.570838841435886 22 0;
createNode animCurveTA -n "animCurveTA1200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 13 0 22 0;
createNode animCurveTA -n "animCurveTA1201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 13 0 22 0;
createNode animCurveTA -n "animCurveTA1202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 13 11.138995619265366 22 0;
createNode clipLibrary -n "clipLibrary2";
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
	setAttr -s 22 ".lnk";
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
	setAttr -s 3 ".sol";
connectAttr "mrg_get_out_of_car.st" "clipLibrary2.st[0]";
connectAttr "mrg_get_out_of_car.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL370.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL371.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL372.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL373.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL374.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA1075.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU9.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU15.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU16.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA1076.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA1077.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA1078.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL375.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL376.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL377.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL378.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL379.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL380.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA1079.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA1080.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA1081.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL381.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL382.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL383.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA1082.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA1083.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA1084.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA1085.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA1086.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA1087.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA1088.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA1089.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA1090.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTA1091.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTA1092.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTA1093.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTA1094.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTA1095.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTA1096.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL384.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL385.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL386.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTL387.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTL388.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTL389.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTL390.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL391.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL392.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA1097.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA1098.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA1099.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA1100.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA1101.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA1102.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA1103.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA1104.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA1105.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA1106.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA1107.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA1108.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA1109.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA1110.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA1111.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA1112.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA1113.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA1114.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA1115.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA1116.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA1117.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA1118.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA1119.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTA1120.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA1121.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA1122.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA1123.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA1124.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA1125.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL393.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL394.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL395.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA1126.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA1127.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA1128.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL396.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL397.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL398.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA1129.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA1130.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA1131.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL399.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL400.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL401.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA1132.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA1133.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA1134.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL402.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL403.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL404.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTA1135.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTA1136.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTA1137.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTL405.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTL406.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTL407.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTL408.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTL409.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTL410.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA1138.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA1139.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA1140.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA1141.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA1142.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA1143.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA1144.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA1145.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA1146.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA1147.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA1148.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA1149.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA1150.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA1151.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA1152.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA1153.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA1154.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA1155.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA1156.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA1157.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA1158.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA1159.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA1160.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA1161.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA1162.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA1163.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA1164.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA1165.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA1166.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA1167.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA1168.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA1169.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA1170.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA1171.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA1172.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA1173.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA1174.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA1175.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA1176.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA1177.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA1178.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA1179.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA1180.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA1181.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA1182.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA1183.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA1184.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA1185.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA1186.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA1187.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA1188.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA1189.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA1190.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA1191.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA1192.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA1193.a" "clipLibrary2.cel[0].cev[167].cevr";
connectAttr "animCurveTA1194.a" "clipLibrary2.cel[0].cev[168].cevr";
connectAttr "animCurveTA1195.a" "clipLibrary2.cel[0].cev[169].cevr";
connectAttr "animCurveTA1196.a" "clipLibrary2.cel[0].cev[170].cevr";
connectAttr "animCurveTA1197.a" "clipLibrary2.cel[0].cev[171].cevr";
connectAttr "animCurveTA1198.a" "clipLibrary2.cel[0].cev[172].cevr";
connectAttr "animCurveTA1199.a" "clipLibrary2.cel[0].cev[173].cevr";
connectAttr "animCurveTA1200.a" "clipLibrary2.cel[0].cev[174].cevr";
connectAttr "animCurveTA1201.a" "clipLibrary2.cel[0].cev[175].cevr";
connectAttr "animCurveTA1202.a" "clipLibrary2.cel[0].cev[176].cevr";
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
// End of mrg-m_get_out_of_car.ma
