//Maya ASCII 4.0 scene
//Name: hom_hit_by_car_impact.ma
//Last modified: Wed, Jul 03, 2002 02:09:15 PM
requires maya "4.0";
requires "p3dmayaexp" "17.7";
requires "p3dSimpleShader" "17.1";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_hit_by_car_impactSource";
	setAttr ".ihi" 0;
	setAttr ".du" 8;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL83";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL84";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL85";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.038199990937406496 1 -0.026730665316643271 
		2 -0.015261339749242115 3 -0.0060979171073413472 4 -0.00052599082857335581 
		5 0.0027400324122674241 6 0.0052510298872995046 7 0.0067701129660543632 8 
		0.0071543013443626912;
createNode animCurveTL -n "animCurveTL86";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0;
createNode animCurveTL -n "animCurveTL87";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.70970776806404634 1 0.76622497254267419 
		2 0.82274217798853755 3 0.83919383360217037 4 0.81763084177224021 5 0.75600229855729795 
		6 0.60808994366270308 7 0.22839546676024086 8 -0.19310783420169883;
createNode animCurveTA -n "animCurveTA227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0;
createNode animCurveTU -n "animCurveTU17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU23";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU24";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL88";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL89";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL90";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL91";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.19763288944005308 3 -0.19763288944005308 
		6 -0.19763288944005308 8 -0.19934934560661241;
createNode animCurveTL -n "animCurveTL92";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.14552605892239473 3 0.14552605892239473 
		6 0.14552605892239473 8 1.7477299054448512;
createNode animCurveTL -n "animCurveTL93";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.1961929756633671 3 1.1961929756633671 
		6 1.1961929756633671 8 0.41624033123049026;
createNode animCurveTA -n "animCurveTA231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -19.288990945907496 3 0 6 0 8 
		-33.630440768693376;
createNode animCurveTA -n "animCurveTA232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTL -n "animCurveTL94";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.19697756422115981 3 0.16123877199057202 
		6 0.25300619704434296 8 0.29185150429015561;
createNode animCurveTL -n "animCurveTL95";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.57299516960695085 3 0.30624379531570617 
		6 0.61089537625919721 8 1.1109697034832438;
createNode animCurveTL -n "animCurveTL96";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.24226175870239405 3 0.8475425357502373 
		6 1.3239894041173907 8 0.227156072820587;
createNode animCurveTA -n "animCurveTA234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 101.83600965070561 3 48.955541083724086 
		6 -3.9320360584068554 8 -3.9320360584068554;
createNode animCurveTA -n "animCurveTA235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL97";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL98";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL99";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 3 1 6 1 8 1;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
	setAttr ".pst" 3;
createNode animCurveTL -n "animCurveTL102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 3 1 6 1 8 1;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.048692319506319935 3 -0.0077728219517184515 
		6 0.0066933216143579997 8 0.009119361506525361;
createNode animCurveTL -n "animCurveTL104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.85503661073851567 3 0.68531953232099319 
		6 0.84649195757100448 8 1.5542323161653797;
createNode animCurveTL -n "animCurveTL105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.90464203133755872 3 1.0696938211437341 
		6 0.77511300654289361 8 -0.2461484448394208;
createNode animCurveTA -n "animCurveTA243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 20.950825280283908 3 23.686988860744673 
		6 -20.451217483196501 8 -65.585535993622102;
createNode animCurveTA -n "animCurveTA244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -6.8139232258102842 3 9.3491547302982809 
		6 11.948637237067912 8 11.948637237067985;
createNode animCurveTA -n "animCurveTA245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.4726187357019898 3 -1.4726187357019898 
		6 -1.4726187357019873 8 -1.47261873570199;
createNode animCurveTA -n "animCurveTA246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482521620249;
createNode animCurveTA -n "animCurveTA249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300303494186;
createNode animCurveTA -n "animCurveTA250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA251";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA252";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733334985114;
createNode animCurveTA -n "animCurveTA253";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA254";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417477e-005;
createNode animCurveTA -n "animCurveTA256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482535121209;
createNode animCurveTA -n "animCurveTA259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300300216801;
createNode animCurveTA -n "animCurveTA260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733333057838;
createNode animCurveTA -n "animCurveTA263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA265";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417477e-005;
createNode animCurveTA -n "animCurveTA266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 2.4782236286598103;
createNode animCurveTA -n "animCurveTA269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA270";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA271";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 -26.720521212576141;
createNode animCurveTL -n "animCurveTL106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.99214331096561381;
createNode animCurveTL -n "animCurveTL107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.033841737269357866;
createNode animCurveTL -n "animCurveTL108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.027201153963313806;
createNode animCurveTA -n "animCurveTA272";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.1805546814635164e-015;
createNode animCurveTA -n "animCurveTA273";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.016273151455886e-014;
createNode animCurveTA -n "animCurveTA274";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5.3764496942944332e-016;
createNode animCurveTL -n "animCurveTL109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99214413619678865;
createNode animCurveTL -n "animCurveTL110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.033851474715545553;
createNode animCurveTL -n "animCurveTL111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.0272011762672867;
createNode animCurveTA -n "animCurveTA275";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.3611093629270264e-015;
createNode animCurveTA -n "animCurveTA276";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.5281705937149269e-014;
createNode animCurveTA -n "animCurveTA277";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.5365128437888133e-014;
createNode animCurveTL -n "animCurveTL112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.8091891372350974 8 -1.8091891372350974;
createNode animCurveTL -n "animCurveTL113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.8536629786602403 8 2.8536629786602403;
createNode animCurveTL -n "animCurveTL114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.15898405984075725 8 -0.15898405984075725;
createNode animCurveTA -n "animCurveTA278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA279";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA280";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.8091892394754774 8 1.8091892394754774;
createNode animCurveTL -n "animCurveTL116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.8536581165404047 8 2.8536581165404047;
createNode animCurveTL -n "animCurveTL117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.1589841173218719 8 -0.1589841173218719;
createNode animCurveTA -n "animCurveTA281";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA282";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTA -n "animCurveTA283";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 -1;
createNode animCurveTL -n "animCurveTL121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 0;
createNode animCurveTL -n "animCurveTL123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8 -1;
createNode animCurveTA -n "animCurveTA284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 33.632953330522966 3 -35.280552173416005 
		6 -55.670009807431882 8 -8.3722158444725991;
createNode animCurveTA -n "animCurveTA285";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -45.161034679655693 3 2.5816969024663949 
		6 -13.611207391781139 8 -23.977773843939509;
createNode animCurveTA -n "animCurveTA286";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -67.538091601379463 3 53.251722291748415 
		6 27.497501682495685 8 33.682233492227084;
createNode animCurveTA -n "animCurveTA287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -31.91693956427045 3 -29.573411147573808 
		6 -8.563012295375076 8 -25.419177015304651;
createNode animCurveTA -n "animCurveTA288";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -29.868546772813136 3 2.3677661369630982 
		6 20.507370224920166 8 -41.133378951685579;
createNode animCurveTA -n "animCurveTA289";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 68.33832602789127 3 84.877951062747869 
		6 107.09766021769482 8 27.165866266794364;
createNode animCurveTA -n "animCurveTA290";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 63.595530963034982 3 89.911651693682515 
		6 32.789921414575325 8 39.038962484432531;
createNode animCurveTA -n "animCurveTA291";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 60.185649943194235 3 60.185649943194235 
		6 3.2573665005240873 8 63.89762232629036;
createNode animCurveTA -n "animCurveTA292";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 18.476235154862632 3 -25.061733991251923 
		6 22.425089944480888 8 22.425089944480888;
createNode animCurveTA -n "animCurveTA293";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 10.082003051124275 3 10.082003051124259 
		6 28.721836935985287 8 28.721836935985287;
createNode animCurveTA -n "animCurveTA294";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -4.720189328892868 3 -4.7201893288928662 
		6 7.6266657808874898 8 7.6266657808874898;
createNode animCurveTA -n "animCurveTA295";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -13.555270109330269 3 -13.555270109330269 
		6 -18.847227132200882 8 2.0447427744579891;
createNode animCurveTA -n "animCurveTA296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 11.615881410206432 3 11.615881410206432 
		6 44.709551992010134 8 5.5429207840541244;
createNode animCurveTA -n "animCurveTA297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.32159281075535068 3 0.32159281075535068 
		6 -10.402617814119608 8 34.868956102818473;
createNode animCurveTA -n "animCurveTA298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 11.093319219895511 3 11.093319219895511 
		6 -32.123718040735945 8 -32.123718040735945;
createNode animCurveTA -n "animCurveTA299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 59.959644693642325 3 59.959644693642325 
		6 19.407819173437478 8 19.407819173437478;
createNode animCurveTA -n "animCurveTA300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 48.106469618696913 3 48.106469618696913 
		6 4.4751336445171193 8 4.4751336445171193;
createNode animCurveTA -n "animCurveTA301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA303";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 67.810939637714412 3 67.810939637714412 
		6 -11.433734901667266 8 -11.433734901667266;
createNode animCurveTA -n "animCurveTA304";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA305";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA306";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA307";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.705218915343313 3 27.705218915343313 
		8 27.705218915343313;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 43.35103828268312 3 43.35103828268312 
		8 43.35103828268312;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA309";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 54.23572299800319 3 54.23572299800319 
		8 54.23572299800319;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 39.038703285259977 3 39.038703285259977 
		8 39.038703285259977;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA311";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 72.755037061650995 3 72.755037061650995 
		8 72.755037061650995;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA312";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 38.926480273156798 3 38.926480273156798 
		8 38.926480273156798;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA313";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA314";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA315";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 40.637834425062678 3 -9.6043099083038648 
		6 -9.6043099083038648 8 -9.6043099083038648;
createNode animCurveTA -n "animCurveTA316";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.2945941069882381 3 1.2945941069882381 
		6 3.1198943483277444 8 3.1198943483277444;
createNode animCurveTA -n "animCurveTA317";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.3208811165553147 3 3.3208811165553147 
		6 1.7238169885910806 8 1.7238169885910806;
createNode animCurveTA -n "animCurveTA318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -27.525824477859967 3 -27.525824477859967 
		6 12.268388134198538 8 12.268388134198538;
createNode animCurveTA -n "animCurveTA319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -7.7966372458940265 3 6.308963718970988 
		6 6.9103069920743438 8 6.2649641345144982;
createNode animCurveTA -n "animCurveTA320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 5.7322064377030788 6 4.9896665793491746 
		8 5.780294047116163;
createNode animCurveTA -n "animCurveTA321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.59407764503375837 3 21.713029036968567 
		6 28.142527379210097 8 21.274336518663382;
createNode animCurveTA -n "animCurveTA322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 15.545129367555198;
createNode animCurveTA -n "animCurveTA325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 14.794623739018833 6 14.794623739018833 
		8 22.334659718447345;
createNode animCurveTA -n "animCurveTA326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -8.2806426894500209 3 22.395186436807986 
		6 22.395186436807986 8 14.88860504567513;
createNode animCurveTA -n "animCurveTA327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.4030948218520338 3 -0.5621560964572182 
		6 -0.5621560964572182 8 28.394145862336995;
createNode animCurveTA -n "animCurveTA328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 22.078247600383854 6 18.977509968842877 
		8 20.941119161468873;
createNode animCurveTA -n "animCurveTA329";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 -9.6389434643346714 6 -14.961349670392833 
		8 -11.985276261935251;
createNode animCurveTA -n "animCurveTA330";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 7.1941842949003796 6 21.659909015129006 
		8 13.249280848849958;
createNode animCurveTA -n "animCurveTA331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA333";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 66.910735171519136 3 21.472939016776969 
		6 21.472939016776969 8 21.472939016776969;
createNode animCurveTA -n "animCurveTA334";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 26.194612819039175 3 26.194612819039175 
		6 -15.564086868905925 8 -15.564086868905925;
createNode animCurveTA -n "animCurveTA335";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 42.116293762219605 3 42.116293762219605 
		6 5.9119201843313247 8 5.9119201843313247;
createNode animCurveTA -n "animCurveTA336";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 51.312599966148291 3 51.312599966148291 
		6 -0.89181587725581968 8 -0.89181587725581968;
createNode animCurveTA -n "animCurveTA337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 0 8 0;
createNode animCurveTA -n "animCurveTA339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 55.749331591600708 3 55.749331591600708 
		6 21.151890972437133 8 21.151890972437133;
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
connectAttr "hom_hit_by_car_impactSource.st" "clipLibrary1.st[0]";
connectAttr "hom_hit_by_car_impactSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL83.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL84.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL85.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL86.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL87.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA227.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU17.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU18.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU19.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU20.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU21.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU22.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU23.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU24.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA228.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA229.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA230.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL88.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL89.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL90.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL91.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL92.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL93.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA231.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA232.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA233.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL94.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL95.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL96.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA234.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA235.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA236.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA237.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA238.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA239.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA240.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA241.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA242.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL97.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL98.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL99.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL100.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL101.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL102.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL103.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL104.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL105.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA243.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA244.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA245.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA246.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA247.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA248.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA249.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA250.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA251.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA252.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA253.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA254.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA255.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA256.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA257.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA258.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA259.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA260.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA261.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA262.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA263.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA264.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA265.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA266.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA267.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA268.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA269.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA270.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA271.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTL106.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTL107.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTL108.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA272.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA273.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA274.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL109.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL110.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL111.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA275.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA276.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA277.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL112.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL113.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL114.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA278.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA279.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA280.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL115.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL116.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL117.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA281.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA282.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA283.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL118.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL119.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL120.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL121.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL122.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL123.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA284.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA285.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA286.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA287.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA288.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA289.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA290.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA291.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA292.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA293.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA294.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA295.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA296.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA297.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA298.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA299.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA300.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA301.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA302.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA303.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA304.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA305.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA306.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA307.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA308.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA309.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA310.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA311.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA312.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA313.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA314.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA315.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA316.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA317.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA318.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA319.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA320.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA321.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA322.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA323.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA324.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA325.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA326.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA327.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA328.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA329.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA330.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA331.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA332.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA333.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA334.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA335.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA336.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA337.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA338.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA339.a" "clipLibrary1.cel[0].cev[161].cevr";
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
// End of hom_hit_by_car_impact.ma
