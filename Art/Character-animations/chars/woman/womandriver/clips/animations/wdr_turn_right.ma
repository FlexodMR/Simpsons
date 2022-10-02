//Maya ASCII 4.0 scene
//Name: wdr_turn_right.ma
//Last modified: Mon, Aug 12, 2002 01:47:24 PM
requires maya "4.0";
requires "p3dSimpleShader" "18.0";
requires "p3dmayaexp" "18.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "wdr_turn_right";
	setAttr ".ihi" 0;
	setAttr ".du" 30;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0931321889110071;
createNode animCurveTL -n "animCurveTL4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.50990367929941149;
createNode animCurveTA -n "animCurveTA1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
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
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
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
createNode animCurveTL -n "animCurveTL6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.1468862801970878 10 1.1468862801970878 
		20 1.1468862801970878 30 1.1468862801970878;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.2464696855624631 10 1.2464696855624631 
		20 1.2464696855624631 30 1.2464696855624631;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.3883743416871892 10 1.3883743416871892 
		20 1.3883743416871892 30 1.3883743416871892;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -36.819011955683756 10 -36.819011955683756 
		20 -36.819011955683756 30 -36.819011955683756;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.4496212507996262 10 1.4496212507996262 
		20 1.4496212507996262 30 1.4496212507996262;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.2279490663618713 10 1.2279490663618713 
		20 1.2279490663618713 30 1.2279490663618713;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.4274355819015074 10 1.4274355819015074 
		20 1.4274355819015074 30 1.4274355819015074;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -24.204848230542304 10 -24.204848230542304 
		20 -24.204848230542304 30 -24.204848230542304;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
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
createNode animCurveTA -n "animCurveTA17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 10 1 20 1 30 1;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 10 1 20 1 30 1;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.3318677670487873 10 1.3318677670487873 
		20 1.3318677670487873 30 1.3318677670487873;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.4718651042148105 10 1.4718651042148105 
		20 1.4718651042148105 30 1.4718651042148105;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL23";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.62126454755213167 10 0.62126454755213167 
		20 0.62126454755213167 30 0.62126454755213167;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA23";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -47.088616656908457 10 -44.880757649305913 
		20 -44.880757649305913 30 -47.088616656908457;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA24";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.0975263990809512 10 5.9522065831735818 
		20 5.9522065831735818 30 -2.0975263990809512;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.53932213336905677 10 8.6876168045325119 
		20 8.6876168045325119 30 0.53932213336905677;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
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
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA31";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA33";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA35";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
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
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL24";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.20626769739024042 1 -0.20484257947720749 
		2 -0.18512467150030204 3 -0.15138262598072089 4 -0.10767369834801344 5 -0.05812057460404816 
		6 -0.0069779240486212762 7 0.041474837751827351 8 0.083125030449144793 9 
		0.11419042884459402 10 0.1312546670336576 11 0.13947834539837289 12 0.14650067879978679 
		13 0.15278810449310812 14 0.1587185621776436 15 0.16454525703039394 16 0.17020151706297498 
		17 0.17477133717072491 18 0.17698492302415589 19 0.17543178165800355 20 0.16864127249316282 
		21 0.14895904428645337 22 0.11212200126245307 23 0.062233814041561003 24 
		0.004133087372111959 25 -0.056705146464024948 26 -0.1145388382677254 27 -0.16389743028852991 
		28 -0.20011896419552869 29 -0.21968152015924033 30 -0.22016592465336574;
createNode animCurveTL -n "animCurveTL25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.4886122070385342 1 -0.47739289150168035 
		2 -0.47736106251069266 3 -0.48547601400507051 4 -0.49854544717625943 5 -0.51364332822173941 
		6 -0.52840954127001372 7 -0.54122682700020031 8 -0.55125353799348553 9 -0.55829627813744787 
		10 -0.56252437618021156 11 -0.56798222210831162 12 -0.57777718422561108 13 
		-0.59075633052275034 14 -0.60587483883396598 15 -0.62223073232794091 16 -0.63898854945838379 
		17 -0.65509647046510833 18 -0.66950834703150219 19 -0.68114111160110002 20 
		-0.68869275384286754 21 -0.68983766180825257 22 -0.68287675730235109 23 -0.66697063767398734 
		24 -0.64165662757472097 25 -0.60747584224219875 26 -0.56638149053771869 27 
		-0.52187423285359014 28 -0.47881875267121432 29 -0.4429536467923994 30 -0.42019888093879526;
createNode animCurveTL -n "animCurveTL26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.71257877629597177 1 0.71976848116906911 
		2 0.72018764772970756 3 0.7143335153938688 4 0.70282198537050433 5 0.68657584658134285 
		6 0.66692622801859336 7 0.64562026768963199 8 0.62474169640265276 9 0.60656984754359344 
		10 0.59341675214150569 11 0.58209055905156204 12 0.56849799173197613 13 0.55353500831437186 
		14 0.53810411639738842 15 0.5231083972518259 16 0.509500112893427 17 0.49843903286939251 
		18 0.49107244893617963 19 0.48849376096175678 20 0.49179501218831223 21 0.50421706241527797 
		22 0.52660580890763953 23 0.55647237700724139 24 0.59123131088872383 25 0.62824486617095188 
		26 0.66499194073574786 27 0.69928181710083492 28 0.72937890647677517 29 0.75390744717939673 
		30 0.77147872109363547;
createNode animCurveTA -n "animCurveTA52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -45.794489268991065 1 -39.231671211178472 
		2 -32.914490535374654 3 -27.133128397480149 4 -22.013196172571508 5 -17.568958679456355 
		6 -13.757153612550933 7 -10.50985273777159 8 -7.7479178911823396 9 -5.3840235867997599 
		10 -3.3231688848867447 11 -1.801060287629924 12 -1.0268221858535607 13 -0.89026823673213074 
		14 -1.3190968385124362 15 -2.2765189970912849 16 -3.7354410344024154 17 -5.5966121096998593 
		18 -7.7401101068742753 19 -10.034364297720998 20 -12.328245216261273 21 -14.451838563729744 
		22 -16.385203094050851 23 -18.203283906037193 24 -20.015570648825044 25 -21.972269884674287 
		26 -24.257675923369611 27 -27.077450783628095 28 -30.653596394590032 29 -35.238641502375501 
		30 -41.137548789909232;
createNode animCurveTA -n "animCurveTA53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 69.888741868854027 1 69.750532622665673 
		2 69.09156236885822 3 67.987580363465071 4 66.516981468304607 5 64.7542482048772 
		6 62.772259519577212 7 60.648711421483746 8 58.471943514854289 9 56.34258489382475 
		10 54.368723485427822 11 52.623392473854402 12 51.180849466738287 13 50.128313833226009 
		14 49.526934013398524 15 49.414417195008845 16 49.790891466344156 17 50.578459921499352 
		18 51.685316219566097 19 53.035011035739799 20 54.578349651167919 21 56.302457328939767 
		22 58.196528768345374 23 60.243369995911728 24 62.422199463157106 25 64.699410004478821 
		26 67.024244211686664 27 69.333086140848152 28 71.559197681900713 29 73.638759246745238 
		30 75.504085197048653;
createNode animCurveTA -n "animCurveTA54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 14.70557263514106 1 23.517734088297519 
		2 33.148979896225093 3 43.060196302112161 4 52.878583375772529 5 62.346509837754823 
		6 71.268323488986496 7 79.47663594490507 8 86.816991195803013 9 93.142760610995026 
		10 98.313439228996657 11 102.36631684289902 12 105.46651805420201 13 107.63741281446377 
		14 108.86051742565624 15 109.07652698707311 16 108.21778135896804 17 106.31535436632026 
		18 103.42704307356117 19 99.623822819664852 20 95.000402619115874 21 89.517989577952477 
		22 83.17431618728547 23 76.118800339465352 24 68.461959719760003 25 60.271839708270811 
		26 51.586731069419614 27 42.436140718828064 28 32.852843821484754 29 22.86007166534074 
		30 12.442092198406375;
createNode animCurveTL -n "animCurveTL27";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.24539528622847229 1 0.25654324976588894 
		2 0.28704626029326163 3 0.33234382628741799 4 0.38765667879901061 5 0.44806145498613376 
		6 0.50871564103048572 7 0.56518377899426242 8 0.61374803205990536 9 0.65155944953893818 
		10 0.67650625175831325 11 0.69240257015210827 12 0.70442292985486465 13 0.71279466813280157 
		14 0.71773382926343543 15 0.71943136716402878 16 0.71803203204416433 17 0.71360385791381109 
		18 0.70609818070456187 19 0.69530357981068081 20 0.68080241451298806 21 0.65675507014995416 
		22 0.61872907310796399 23 0.56862571504509052 24 0.50928029086677218 25 0.4446497124993124 
		26 0.37962376576688545 27 0.31957569216555554 28 0.26982366169319788 29 0.2351893233255038 
		30 0.21979629583571808;
createNode animCurveTL -n "animCurveTL28";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.44502060810624655 1 -0.44237389437361702 
		2 -0.43457216235055918 3 -0.42137099978669851 4 -0.40243593618524615 5 -0.37787312580328591 
		6 -0.34861495130340153 7 -0.31662749078110403 8 -0.28491339203263311 9 -0.25731477064089858 
		10 -0.23815707117100077 11 -0.2263245321168762 12 -0.21779940392176925 13 
		-0.21267204865003636 14 -0.21105841985540807 15 -0.2130884574831505 16 -0.2188886909234867 
		17 -0.22855639650276274 18 -0.24212222241074657 19 -0.259498125294987 20 
		-0.28040824033304135 21 -0.30697978709029927 22 -0.33907772169579403 23 -0.37282472140801487 
		24 -0.40482480452905178 25 -0.43264553077878609 26 -0.45509206623673409 27 
		-0.47226165484172133 28 -0.48538892730713579 29 -0.49651324327456253 30 -0.50802880039193865;
createNode animCurveTL -n "animCurveTL29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.67920043317323675 1 0.67841978229235567 
		2 0.67607872480645337 3 0.67205960192240255 4 0.6662582815747754 5 0.65875509750132555 
		6 0.64992063016079404 7 0.64044151171642361 8 0.63126301605847024 9 0.62346659749540079 
		10 0.61812021222599101 11 0.61531315817907006 12 0.61443573796535289 13 0.61530179935446461 
		14 0.61757502190063518 15 0.62077762545440751 16 0.62431577636222413 17 0.62752239918444963 
		18 0.62971774592889684 19 0.63028818151081278 20 0.62878394704642715 21 0.62712154441502155 
		22 0.62708284714168927 23 0.62825982639823641 24 0.63024459590806015 25 0.63256726925887874 
		26 0.6346638225656912 27 0.63586349910743689 28 0.63536330983595302 29 0.63214248215244173 
		30 0.62478339564049723;
createNode animCurveTA -n "animCurveTA55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -26.769542984158743 1 -26.844507434424418 
		2 -27.030969422403775 3 -27.254096942389651 4 -27.426674867834006 5 -27.461738396998676 
		6 -27.287983290536474 7 -26.870229047668335 8 -26.233588211531107 9 -25.483646140499591 
		10 -24.807264051750437 11 -24.19275412505452 12 -23.510542077894062 13 -22.81968396093141 
		14 -22.189393054783846 15 -21.700515793059743 16 -21.442584650027392 17 -21.50225778972538 
		18 -21.940161409475259 19 -22.761143451932522 20 -23.896852671946093 21 -25.221603056996905 
		22 -26.502856373471513 23 -27.581838160127845 24 -28.426264004988429 25 -29.066940136046284 
		26 -29.553102071008258 27 -29.939302192597079 28 -30.290995327850705 29 -30.691873107882902 
		30 -31.241849002324894;
createNode animCurveTA -n "animCurveTA56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -63.847396819970108 1 -64.048953722019732 
		2 -64.600699546685306 3 -65.420411540709111 4 -66.426714624040528 5 -67.542977995821033 
		6 -68.699134170952988 7 -69.832005874687283 8 -70.884878715033565 9 -71.806828751237049 
		10 -72.551457726598997 11 -73.267306625460179 12 -74.098855779817342 13 -74.993318037665432 
		14 -75.89444760488702 15 -76.741970530802973 16 -77.471354582571379 17 -78.013802846635613 
		18 -78.296564893236436 19 -78.243957729538437 20 -77.779692812345928 21 -76.831126355105681 
		22 -75.423688689918123 23 -73.639640441960879 24 -71.57377279769662 25 -69.328533868194256 
		26 -67.005030317451627 27 -64.693152929025516 28 -62.465510467026647 29 -60.378723264230125 
		30 -58.482037198248285;
createNode animCurveTA -n "animCurveTA57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -20.817287075694008 1 -20.231248767564455 
		2 -18.635442945501861 3 -16.289379616175967 4 -13.464805223218653 5 -10.434687960030759 
		6 -7.4595011147538077 7 -4.7682613082470278 8 -2.5350362069192864 9 -0.85798813740396784 
		10 0.24395917085271532 11 1.0060429704329499 12 1.6370840565649301 13 2.1318597046004135 
		14 2.5000469966028516 15 2.7674532178222484 16 2.9723819637412854 17 3.1530243715724797 
		18 3.3229188804124314 19 3.4394120989058075 20 3.383800000997303 21 2.8155340955655213 
		22 1.4354705938612458 23 -0.75502504808693405 24 -3.6375902900705626 25 -7.0341211899832601 
		26 -10.740767213270402 27 -14.530424953829987 28 -18.141994508842664 29 -21.276447944170577 
		30 -23.60995781844187;
createNode animCurveTL -n "animCurveTL30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.2760452972323346 10 2.2760452972323346 
		20 2.2760452972323346 30 2.2760452972323346;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL31";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.8907520938893785 10 3.8907520938893785 
		20 3.8907520938893785 30 3.8907520938893785;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.6188797842204361 10 1.6188797842204361 
		20 1.6188797842204361 30 1.6188797842204361;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 70.626908478600072 10 70.626908478600072 
		20 70.626908478600072 30 70.626908478600072;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 118.13736085477974 10 118.13736085477974 
		20 118.13736085477974 30 118.13736085477974;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 137.25600907246934 10 137.25600907246934 
		20 137.25600907246934 30 137.25600907246934;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL33";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.4012936997283774 10 3.4012936997283774 
		20 3.4012936997283774 30 3.4012936997283774;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.9492335849148859 10 3.9492335849148859 
		20 3.9492335849148859 30 3.9492335849148859;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL35";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.5749480404742857 10 1.5749480404742857 
		20 1.5749480404742857 30 1.5749480404742857;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 95.306131338095284 10 95.306131338095284 
		20 95.306131338095284 30 95.306131338095284;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -118.5838298882701 10 -118.5838298882701 
		20 -118.5838298882701 30 -118.5838298882701;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -146.79957702114922 10 -146.79957702114922 
		20 -146.79957702114922 30 -146.79957702114922;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.22996541113775407 10 0.22996541113775407 
		20 0.22996541113775407 30 0.22996541113775407;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.71572892866406468 10 -0.71572892866406468 
		20 -0.71572892866406468 30 -0.71572892866406468;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL38";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.86045149817799882 10 -0.86045149817799882 
		20 -0.86045149817799882 30 -0.86045149817799882;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL39";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.017571725225418895 10 -0.017571725225418895 
		20 -0.017571725225418895 30 -0.017571725225418895;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.54560785950824164 10 -0.54560785950824164 
		20 -0.54560785950824164 30 -0.54560785950824164;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.64724218630287966 10 -0.64724218630287966 
		20 -0.64724218630287966 30 -0.64724218630287966;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 12.253734489678925 10 12.253734489678925 
		20 12.253734489678925 30 12.253734489678925;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -65.746751280844975 10 -65.746751280844975 
		20 -65.746751280844975 30 -65.746751280844975;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.061808866237340665 10 -0.061808866237340665 
		20 -0.061808866237340665 30 -0.061808866237340665;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -59.058178941076754 10 -59.058178941076754 
		20 -59.058178941076754 30 -59.058178941076754;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 16.57914742975785 10 16.57914742975785 
		20 16.57914742975785 30 16.57914742975785;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.5572674112203657 10 8.5572674112203657 
		20 8.5572674112203657 30 8.5572674112203657;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 15.711328223519061 10 15.711328223519061 
		20 15.711328223519061 30 15.711328223519061;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA74";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA75";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA76";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -4.4857988835365301 10 -4.4857988835365301 
		20 -4.4857988835365301 30 -4.4857988835365301;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 33.296656517080201 10 33.296656517080201 
		20 33.296656517080201 30 33.296656517080201;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 11.822498430160282 10 11.822498430160282 
		20 11.822498430160282 30 11.822498430160282;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA83";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 33.321241519753315 10 33.321241519753315 
		20 33.321241519753315 30 33.321241519753315;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
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
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA87";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0997018413633617;
createNode animCurveTA -n "animCurveTA88";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 11.088235898323637;
createNode animCurveTA -n "animCurveTA89";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.7232021658234848;
createNode animCurveTA -n "animCurveTA90";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -15.715763414303195;
createNode animCurveTA -n "animCurveTA91";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.6668765941632233;
createNode animCurveTA -n "animCurveTA92";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.2620030236771775;
createNode animCurveTA -n "animCurveTA93";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA94";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA95";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 52.057610833014301 10 52.057610833014301 
		20 52.057610833014301 30 52.057610833014301;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA96";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA97";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA98";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA99";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.3937906322123035 10 -19.9364474028914 
		20 -20.480291628527503 30 2.3937906322123035;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.7843868968348546 10 9.6492047140848971 
		20 16.105164755687021 30 -1.7843868968348546;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 13.23227595374661 10 11.136190584246103 
		20 8.7001370572696892 30 13.23227595374661;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.71032600031388182 10 -10.857259503555381 
		20 -10.857259503555381 30 0.71032600031388182;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.6938159239902002 10 1.7290641876987729 
		20 1.7290641876987729 30 3.6938159239902002;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 14.572231982957494 10 0.7064799423282494 
		20 0.7064799423282494 30 14.572231982957494;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.2796212519697261 10 -2.2796212519697261 
		20 -2.2796212519697261 30 -2.2796212519697261;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.2209313171847884 10 2.2209313171847884 
		20 2.2209313171847884 30 2.2209313171847884;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.0401232256568225 10 8.0401232256568225 
		20 8.0401232256568225 30 8.0401232256568225;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 33.429092416277157 10 33.429092416277157 
		20 33.429092416277157 30 33.429092416277157;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.2533422302317216 10 8.2533422302317216 
		20 8.2533422302317216 30 8.2533422302317216;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 23.263402056531085 10 23.263402056531085 
		20 23.263402056531085 30 23.263402056531085;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 20.166277752815617 10 20.166277752815617 
		20 20.166277752815617 30 20.166277752815617;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 20 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 43.699331907638154 10 43.699331907638154 
		20 43.699331907638154 30 43.699331907638154;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA120";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 -7.4951430127659471 30 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA121";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 24.296926886768428 30 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA122";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 -11.183019653981001 30 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA123";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 -7.4951430127659471 30 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA124";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 24.296926886768428 30 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA125";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 -11.183019653981001 30 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA126";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 -7.4951430127659471 30 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA127";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 24.296926886768428 30 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA128";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 -11.183019653981001 30 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
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
	setAttr -s 21 ".lnk";
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
connectAttr "wdr_turn_right.st" "clipLibrary2.st[0]";
connectAttr "wdr_turn_right.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL1.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL2.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL3.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL4.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL5.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA1.a" "clipLibrary2.cel[0].cev[5].cevr";
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
connectAttr "animCurveTL12.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL13.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL14.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA8.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA9.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA10.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA11.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA12.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA13.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA14.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA15.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA16.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTA17.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTA18.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTA19.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTA20.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTA21.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTA22.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL15.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL16.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL17.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTL18.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTL19.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTL20.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTL21.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL22.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL23.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA23.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA24.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA25.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA26.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA27.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA28.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA29.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA30.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA31.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA32.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA33.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA34.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA35.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA36.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA37.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA38.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA39.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA40.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA41.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA42.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA43.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA44.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA45.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTA46.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA47.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA48.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA49.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA50.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA51.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL24.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL25.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL26.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA52.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA53.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA54.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL27.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL28.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL29.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA55.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA56.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA57.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL30.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL31.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL32.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA58.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA59.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA60.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL33.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL34.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL35.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTA61.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTA62.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTA63.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTL36.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTL37.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTL38.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTL39.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTL40.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTL41.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA64.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA65.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA66.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA67.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA68.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA69.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA70.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA71.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA72.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA73.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA74.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA75.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA76.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA77.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA78.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA79.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA80.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA81.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA82.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA83.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA84.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA85.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA86.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA87.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA88.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA89.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA90.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA91.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA92.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA93.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA94.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA95.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA96.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA97.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA98.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA99.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA100.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA101.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA102.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA103.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA104.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA105.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA106.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA107.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA108.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA109.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA110.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA111.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA112.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA113.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA114.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA115.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA116.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA117.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA118.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA119.a" "clipLibrary2.cel[0].cev[167].cevr";
connectAttr "animCurveTA120.a" "clipLibrary2.cel[0].cev[168].cevr";
connectAttr "animCurveTA121.a" "clipLibrary2.cel[0].cev[169].cevr";
connectAttr "animCurveTA122.a" "clipLibrary2.cel[0].cev[170].cevr";
connectAttr "animCurveTA123.a" "clipLibrary2.cel[0].cev[171].cevr";
connectAttr "animCurveTA124.a" "clipLibrary2.cel[0].cev[172].cevr";
connectAttr "animCurveTA125.a" "clipLibrary2.cel[0].cev[173].cevr";
connectAttr "animCurveTA126.a" "clipLibrary2.cel[0].cev[174].cevr";
connectAttr "animCurveTA127.a" "clipLibrary2.cel[0].cev[175].cevr";
connectAttr "animCurveTA128.a" "clipLibrary2.cel[0].cev[176].cevr";
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
// End of wdr_turn_right.ma
