//Maya ASCII 4.0 scene
//Name: apu_jump_dash_all.ma
//Last modified: Wed, Oct 09, 2002 02:46:48 PM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "apu_jump_dash_allSource";
	setAttr ".ihi" 0;
	setAttr ".du" 35;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL42";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 33 1 38 1;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL43";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 33 0 38 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "apu_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  35 0;
createNode animCurveTA -n "animCurveTA114";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 33 0 38 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 35 0;
	setAttr -s 3 ".kit[0:2]"  9 3 3;
	setAttr -s 3 ".kot[0:2]"  9 3 3;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 30 1 35 0;
	setAttr -s 3 ".kit[0:2]"  2 3 3;
	setAttr -s 3 ".kot[0:2]"  2 3 3;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 35 1;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 35 1;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA115";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA116";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA117";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL47";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL48";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL49";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL50";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.13256050696689195 1 -0.13256050696689195 
		4 -0.13256050696689195 6 -0.13256050696689195 8 -0.149058720375665 12 -0.23214502301254597 
		20 -0.23214502301254597 21 -0.13437745487082825 24 -0.13437745487082825 30 
		-0.13437745487082825 35 -0.13437745487082825;
	setAttr -s 11 ".kit[0:10]"  9 3 3 9 9 9 3 
		3 3 3 3;
	setAttr -s 11 ".kot[0:10]"  1 3 3 9 9 9 3 
		3 3 3 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 0.080554194748401642 0.020079394802451134 
		0.048087019473314285 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 -0.99675023555755615 -0.99979841709136963 
		-0.99884313344955444 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL51";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.16494285180908641 1 0.12819669310572168 
		4 0.12819669310572168 6 0.33485584145079045 8 0.65787311855898711 12 2.0705294745573495 
		20 0.16849595270279349 21 0.13806192026723146 24 0.13806192026723146 30 0.13806192026723146 
		35 0.13806192026723146;
	setAttr -s 11 ".kit[0:10]"  9 3 3 9 9 9 3 
		3 3 3 3;
	setAttr -s 11 ".kot[0:10]"  1 3 3 9 9 9 3 
		3 3 3 3;
	setAttr -s 11 ".kox[0:10]"  0.03626110777258873 1 1 0.0025172519963234663 
		0.0011522895656526089 0.0081733819097280502 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  -0.99934232234954834 0 0 0.9999968409538269 
		0.99999934434890747 -0.99996662139892578 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL52";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.5840630460795303 1 0.65276238626408178 
		4 0.65276238626408178 6 0.84394050822528333 8 1.5890639731499914 12 4.6900247187225022 
		20 9.2555744602934045 21 9.8846656357390934 24 9.8846656357390934 30 9.8846656357390934 
		35 9.8846656357390934;
	setAttr -s 11 ".kit[0:10]"  9 3 3 9 9 9 3 
		3 3 3 3;
	setAttr -s 11 ".kot[0:10]"  1 3 3 9 9 9 3 
		3 3 3 3;
	setAttr -s 11 ".kox[0:10]"  0.019404584541916847 1 1 0.001424041111022234 
		0.00052000931464135647 0.00052174966549500823 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0.99981170892715454 0 0 0.99999898672103882 
		0.99999988079071045 0.99999988079071045 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -30.072192405388275 1 -0.123893425901984 
		4 -0.123893425901984 6 50.024119495848225 8 76.799343260722793 12 122.77917565200983 
		17 -76.288265015044217 20 -68.340383062431542 21 -59.686560138672668 22 1.1199142771117681 
		24 0 30 0 35 0;
	setAttr -s 13 ".kit[1:12]"  3 3 9 9 9 9 9 
		9 3 3 3 3;
	setAttr -s 13 ".kot[1:12]"  3 3 9 9 9 9 9 
		9 3 3 3 3;
createNode animCurveTA -n "animCurveTA119";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 1 0 4 0 6 0 8 0 12 0 20 0 21 
		-25.948901905116401 24 -25.948901905116401 30 -25.948901905116401 35 -25.948901905116401;
	setAttr -s 11 ".kit[0:10]"  9 3 3 9 9 9 3 
		3 3 3 3;
	setAttr -s 11 ".kot[0:10]"  9 3 3 9 9 9 3 
		3 3 3 3;
createNode animCurveTA -n "animCurveTA120";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 1 0 4 0 6 0 8 0 12 0 20 0 21 
		0 24 0 30 0 35 0;
	setAttr -s 11 ".kit[0:10]"  9 3 3 9 9 9 3 
		3 3 3 3;
	setAttr -s 11 ".kot[0:10]"  9 3 3 9 9 9 3 
		3 3 3 3;
createNode animCurveTL -n "animCurveTL53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.18579966735506592 4 0.18579966735506592 
		6 0.18579966735506592 8 0.19961575648113566 12 0.25328150460548293 20 0.26312852643104828 
		24 0.26312852643104828 28 0.242106982664089 33 0.34610858532967215;
	setAttr -s 9 ".kit[6:8]"  3 3 3;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 3 
		3 3;
	setAttr -s 9 ".kox[0:8]"  1 1 0.096059560775756836 0.029624598100781441 
		0.062854930758476257 0.37634855508804321 1 1 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0.99537557363510132 0.99956107139587402 
		0.99802267551422119 0.92647814750671387 0 0 0;
createNode animCurveTL -n "animCurveTL54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.4788651046679378 4 0.40809231172964922 
		6 0.56647667401222912 8 0.87635586202102445 12 2.2393930057550953 20 0.14170194499256497 
		24 0.283013893503759 28 0.37499594917511964 33 0.1380615615975922;
	setAttr -s 9 ".kit[6:8]"  3 3 3;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 3 
		3 3;
	setAttr -s 9 ".kox[0:8]"  0.018836287781596184 0.022822089493274689 
		0.0028473879210650921 0.0011955162044614553 0.0054446598514914513 0.0020445892587304115 
		1 1 1;
	setAttr -s 9 ".koy[0:8]"  -0.99982255697250366 0.99973952770233154 
		0.99999594688415527 0.9999992847442627 -0.99998515844345093 -0.99999791383743286 
		0 0 0;
createNode animCurveTL -n "animCurveTL55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.45404353022539112 4 0.23309084385424383 
		6 0.80521394842601124 8 1.6057104121857015 12 5.3106618706865403 20 9.1854278102356322 
		24 9.3895804943344086 28 9.50132606214361 33 9.950354344962145;
	setAttr -s 9 ".kit[6:8]"  3 3 3;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 3 
		3 3;
	setAttr -s 9 ".kox[0:8]"  0.0019404221093282104 0.0015882356092333794 
		0.0009713781182654202 0.0004439069889485836 0.00052772409981116652 0.00098065158817917109 
		1 1 1;
	setAttr -s 9 ".koy[0:8]"  0.99999809265136719 0.99999874830245972 
		0.9999995231628418 0.99999988079071045 0.99999988079071045 0.9999995231628418 
		0 0 0;
createNode animCurveTA -n "animCurveTA121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 99.963052812293768 4 130.12743265542596 
		6 113.21120007869165 8 96.458941847380999 12 -20.363847816421583 20 -77.620218900003721 
		21 -0.72774079342067433 24 30.692956646090291 28 57.142929909823913 33 0;
	setAttr -s 10 ".kit[7:9]"  3 3 3;
	setAttr -s 10 ".kot[7:9]"  3 3 3;
createNode animCurveTA -n "animCurveTA122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 1.7014789694155465 
		12 8.4907908510908037 20 -1.4975653297188947 24 -3.1572950659689214 28 -3.1572950659689214 
		33 0;
	setAttr -s 9 ".kit[6:8]"  3 3 3;
	setAttr -s 9 ".kot[6:8]"  3 3 3;
createNode animCurveTA -n "animCurveTA123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0.54389970145120459 
		12 -5.2900738663810198 20 3.3911307071505439 24 1.9429771064954762 28 1.9429771064954762 
		33 0;
	setAttr -s 9 ".kit[6:8]"  3 3 3;
	setAttr -s 9 ".kot[6:8]"  3 3 3;
createNode animCurveTA -n "animCurveTA124";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA125";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA126";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA127";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA128";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA129";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 -0.20874769211918687 
		20 0.015017241321288224 24 0.015017241321288224 30 0.015017241321288224 35 
		0;
	setAttr -s 9 ".kit[8]"  3;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kox[0:8]"  1 1 1 0.0095805041491985321 0.25738644599914551 
		0.017873046919703484 1 0.23719581961631775 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 -0.99995410442352295 0.96630853414535522 
		0.99984025955200195 0 -0.97146183252334595 0;
createNode animCurveTL -n "animCurveTL57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.24354617521346231 4 0.24354617521346231 
		6 0.24354617521346231 8 0.24354617521346231 12 0.23778561366766798 20 0.49949286214571587 
		24 0.49949286214571587 30 0.49949286214571587 35 0;
	setAttr -s 9 ".kit[6:8]"  3 3 3;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 3 
		3 3;
	setAttr -s 9 ".kox[0:8]"  1 1 1 0.32798317074775696 0.015626346692442894 
		0.015282468870282173 1 1 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 -0.94468355178833008 0.9998779296875 
		0.99988323450088501 0 0 0;
createNode animCurveTL -n "animCurveTL58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.73266363114951272 4 0.73266363114951272 
		6 0.73266363114951272 8 0.73266363114951272 12 0.75296208046735535 20 0.50034176497263683 
		24 0.50034176497263683 30 0.50034176497263683 35 1;
	setAttr -s 9 ".kit[6:8]"  3 3 3;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 3 
		3 3;
	setAttr -s 9 ".kox[0:8]"  1 1 1 0.098054878413677216 0.0172149408608675 
		0.015832055360078812 1 1 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0.99518102407455444 -0.99985182285308838 
		-0.99987465143203735 0 0 0;
createNode animCurveTL -n "animCurveTL59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 0 20 0.11641540109138682 
		24 0.0025440488057127536 30 0.0025440488057127536 35 0;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 0.034339450299739838 0.8437957763671875 
		0.029260264709591866 0.8216058611869812 0.54799771308898926;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0.99941021203994751 0.53666442632675171 
		-0.99957180023193359 -0.57005602121353149 -0.83647984266281128;
createNode animCurveTL -n "animCurveTL60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.72172207365063845 4 0.72172207365063845 
		6 0.72172207365063845 8 0.72172207365063845 12 0.72172207365063845 20 0.37075848534494549 
		24 0.13658928717517019 30 0.13658928717517019 35 0;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 0.011396453715860844 0.006835895124822855 
		0.014233279041945934 0.026834798976778984 0.012201120145618916;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 -0.99993503093719482 -0.99997663497924805 
		-0.99989867210388184 -0.99963986873626709 -0.99992555379867554;
createNode animCurveTL -n "animCurveTL61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.39818034372871203 4 0.39818034372871203 
		6 0.39818034372871203 8 0.39818034372871203 12 0.39818034372871203 20 0.64196267648156669 
		24 0.64326433288199103 30 0.64326433288199103 35 1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 0.016405871137976646 0.016318762674927711 
		0.93149775266647339 0.010277842171490192 0.004671941976994276;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0.99986541271209717 0.99986684322357178 
		0.3637470006942749 0.999947190284729 0.9999890923500061;
createNode animCurveTL -n "animCurveTL62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.03056236763751306 4 0.03056236763751306 
		6 0.03056236763751306 8 0.03056236763751306 12 0.03056236763751306 20 0.054881262241978805 
		24 -0.018729974818724984 30 -0.033670191188853227 35 0.053689832126292032;
	setAttr -s 9 ".kit[8]"  3;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 0.16230036318302155 0.080882631242275238 
		0.03761625662446022 0.050565946847200394 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0.98674142360687256 -0.99672365188598633 
		-0.99929225444793701 0.99872070550918579 0;
createNode animCurveTL -n "animCurveTL63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.95976092787099887 4 0.64977533392262521 
		6 0.96397049949569225 8 1.3390723419256414 12 2.5437376982714297 20 0.75472823974568015 
		22 0.54325920519656767 24 0.68549368325153004 30 0.65810878024384045 35 0.99296149630440855;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  0.0043012350797653198 0.42913618683815002 
		0.0019343341700732708 0.0012660082429647446 0.0068451212719082832 0.0016662656562402844 
		0.019254634156823158 0.023212520405650139 0.011924519203603268 1;
	setAttr -s 10 ".koy[0:9]"  -0.99999076128005981 0.90323978662490845 
		0.99999815225601196 0.99999922513961792 -0.99997657537460327 -0.99999862909317017 
		-0.99981462955474854 0.99973052740097046 0.99992889165878296 0;
createNode animCurveTL -n "animCurveTL64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.20586259975558652 4 0.72048938776108418 
		6 1.3874094645223582 8 2.0835313204934089 12 4.8854528687766052 20 8.6187371943808539 
		24 10.066187268370378 30 10.170544010355995 32 9.9027552080442476 35 9.9495700424931091;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  0.002590865595266223 0.0016926937969401479 
		0.00097820372320711613 0.00057174806715920568 0.00061206932878121734 0.000772091094404459 
		0.0021480286959558725 0.016314497217535973 0.0075421519577503204 1;
	setAttr -s 10 ".koy[0:9]"  0.99999666213989258 0.99999856948852539 
		0.9999995231628418 0.99999982118606567 0.99999982118606567 0.99999970197677612 
		0.99999767541885376 -0.99986690282821655 -0.99997156858444214 0;
createNode animCurveTA -n "animCurveTA130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 17.005118065408293 4 17.005118065408293 
		6 17.005118065408293 8 8.3407475718963671 12 -31.489492845219729 20 -45.473032293797743 
		24 42.012626727389865 30 42.012626727389858 35 -0.62843630316474441;
	setAttr -s 9 ".kit[8]"  3;
	setAttr -s 9 ".kot[8]"  3;
createNode animCurveTA -n "animCurveTA131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 16.71413050451596 4 16.71413050451596 
		6 16.71413050451596 8 13.541680570055405 12 -1.0421192773252748 20 -0.94859926688359153 
		24 1.3035256728740072 30 1.3035256728740081 35 -5.8284402688137167;
	setAttr -s 9 ".kit[8]"  3;
	setAttr -s 9 ".kot[8]"  3;
createNode animCurveTA -n "animCurveTA132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 4.545042700459728 4 4.545042700459728 
		6 4.545042700459728 8 3.7501979423063525 12 0.096284618952130821 20 0.44210811336957551 
		24 16.6851612473451 30 16.6851612473451 35 -1.2956360193097458;
	setAttr -s 9 ".kit[8]"  3;
	setAttr -s 9 ".kot[8]"  3;
createNode animCurveTA -n "animCurveTA133";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.040709616517141577 30 0.040709616517141604 
		35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99990057945251465;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.014099335297942162;
	setAttr -s 3 ".kox[0:2]"  0 0.99999982118606567 0;
	setAttr -s 3 ".koy[0:2]"  0 -0.00060901435790583491 0;
createNode animCurveTA -n "animCurveTA134";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.8313983219776933 30 -1.831398321977693 
		35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 0.95213121175765991;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.30568972229957581;
	setAttr -s 3 ".kox[0:2]"  0 0.99962490797042847 0;
	setAttr -s 3 ".koy[0:2]"  0 0.027387378737330437 0;
createNode animCurveTA -n "animCurveTA135";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.7337164321498379 30 3.7337164321498379 
		35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 0.83656364679336548;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.54786974191665649;
	setAttr -s 3 ".kox[0:2]"  0 0.99844366312026978 0;
	setAttr -s 3 ".koy[0:2]"  0 -0.055769339203834534 0;
createNode animCurveTA -n "animCurveTA136";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.5673169553733395 30 -2.5673169553733399 
		35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 0.91181141138076782;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.41060921549797058;
	setAttr -s 3 ".kox[0:2]"  0 0.99926328659057617 0;
	setAttr -s 3 ".koy[0:2]"  0 0.038378674536943436 0;
createNode animCurveTA -n "animCurveTA137";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -5.938383166068367 30 -5.9383831660683679 
		35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 0.69254791736602783;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.72137188911437988;
	setAttr -s 3 ".kox[0:2]"  0 0.99607712030410767 0;
	setAttr -s 3 ".koy[0:2]"  0 0.088489502668380737 0;
createNode animCurveTA -n "animCurveTA138";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.00040252039393782536 30 -0.000402520393937813 
		35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99997603893280029;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.0069256974384188652;
	setAttr -s 3 ".kox[0:2]"  0 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA139";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.1571952141288733 30 -1.1571952141288731 
		35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 0.98002243041992188;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.19888712465763092;
	setAttr -s 3 ".kox[0:2]"  0 0.99985021352767944 0;
	setAttr -s 3 ".koy[0:2]"  0 0.017309008166193962 0;
createNode animCurveTA -n "animCurveTA140";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA141";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA142";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.0034456079181433771 30 0.0034456079181433771 
		35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99999982118606567;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.00060437980573624372;
	setAttr -s 3 ".kox[0:2]"  0 1 0;
	setAttr -s 3 ".koy[0:2]"  0 -5.1546176109695807e-005 0;
createNode animCurveTA -n "animCurveTA143";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.040473860579884585 30 0.040473860579884571 
		35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 0.9999011754989624;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.014058004133403301;
	setAttr -s 3 ".kox[0:2]"  0 0.99999982118606567 0;
	setAttr -s 3 ".koy[0:2]"  0 -0.0006054874393157661 0;
createNode animCurveTA -n "animCurveTA144";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.8313984519406281 30 -1.8313984519406281 
		35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 0.95213091373443604;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.30569052696228027;
	setAttr -s 3 ".kox[0:2]"  0 0.99962490797042847 0;
	setAttr -s 3 ".koy[0:2]"  0 0.027387380599975586 0;
createNode animCurveTA -n "animCurveTA145";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.7337164553688731 30 3.733716455368874 
		35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 0.8365638256072998;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.54786950349807739;
	setAttr -s 3 ".kox[0:2]"  0 0.99844366312026978 0;
	setAttr -s 3 ".koy[0:2]"  0 -0.055769339203834534 0;
createNode animCurveTA -n "animCurveTA146";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.5673170049738836 30 -2.5673170049738836 
		35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 0.91181141138076782;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.41060924530029297;
	setAttr -s 3 ".kox[0:2]"  0 0.99926328659057617 0;
	setAttr -s 3 ".koy[0:2]"  0 0.038378674536943436 0;
createNode animCurveTA -n "animCurveTA147";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -5.9383298724540099 30 -5.9383298724540099 
		35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 0.69255125522613525;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.72136867046356201;
	setAttr -s 3 ".kox[0:2]"  0 0.99607717990875244 0;
	setAttr -s 3 ".koy[0:2]"  0 0.088488712906837463 0;
createNode animCurveTA -n "animCurveTA148";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.00017158844849065358 30 -0.00017158844849065349 
		35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99997574090957642;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.0069661298766732216;
	setAttr -s 3 ".kox[0:2]"  0 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA149";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.1571951880326767 30 -1.157195188032677 
		35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 0.98002266883850098;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.19888579845428467;
	setAttr -s 3 ".kox[0:2]"  0 0.99985021352767944 0;
	setAttr -s 3 ".koy[0:2]"  0 0.017309006303548813 0;
createNode animCurveTA -n "animCurveTA150";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA151";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA152";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.0034456079182833216 30 0.0034456079182833216 
		35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99999982118606567;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.00060437980573624372;
	setAttr -s 3 ".kox[0:2]"  0 1 0;
	setAttr -s 3 ".koy[0:2]"  0 -5.1546176109695807e-005 0;
createNode animCurveTA -n "animCurveTA153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 -2.5801482445824764 8 
		-2.4438834762883364 12 -0.2770852798837723 20 -0.2770852798837723 24 -0.2770852798837723 
		30 -0.27708527988377235 35 0;
createNode animCurveTA -n "animCurveTA154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 2.2133692590006788 8 
		2.6592667151031821 12 3.387649532337587 20 3.387649532337587 24 3.387649532337587 
		30 3.3876495323375888 35 0;
createNode animCurveTA -n "animCurveTA155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.0034456079181433771 4 0.0034456079181433771 
		6 -47.102861458702762 8 -44.137031448171832 12 -2.379897363697026 20 -2.379897363697026 
		24 -2.379897363697026 30 -2.3798973636970269 35 0;
createNode animCurveTA -n "animCurveTA156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.15553530681976535 4 0.15553530681976535 
		6 0.15553530681976535 8 0.15553530681976535 12 0.15553530681976535 20 0.15553530681976535 
		24 -0.025143041533948494 30 -0.025143041533948501 35 0;
createNode animCurveTA -n "animCurveTA157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.36354176124207516 4 -0.36354176124207516 
		6 -0.36354176124207516 8 -0.36354176124207516 12 -0.36354176124207516 20 
		-0.36354176124207516 24 -0.10266268975719774 30 -0.10266268975719774 35 0;
createNode animCurveTA -n "animCurveTA158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 5.3250602596476986 4 5.3250602596476986 
		6 5.3250602596476986 8 5.3250602596476986 12 5.3250602596476986 20 5.3250602596476986 
		24 -28.550138021698764 30 -28.550138021698768 35 0;
createNode animCurveTL -n "animCurveTL65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.98872819052200589 4 -0.98872819052200589 
		6 -0.98872819052200589 8 -0.98872819052200589 12 -0.98872819052200589 20 
		-0.98872819052200589 24 -0.98872819052200589 30 -0.98872819052200589 35 -0.43524234076486068;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.0066245347261428833 
		0.0030112043023109436;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0.99997806549072266 
		0.99999547004699707;
createNode animCurveTL -n "animCurveTL66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.019519870042852914 4 -0.019519870042852914 
		6 -0.019519870042852914 8 -0.019519870042852914 12 -0.019519870042852914 
		20 -0.019519870042852914 24 -0.019519870042852914 30 -0.019519870042852914 
		35 -0.82665738350180629;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.0045427558943629265 
		0.0020649055950343609;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.99998968839645386 
		-0.99999785423278809;
createNode animCurveTL -n "animCurveTL67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.020013375596438072 4 -0.020013375596438072 
		6 -0.020013375596438072 8 -0.020013375596438072 12 -0.020013375596438072 
		20 -0.020013375596438072 24 -0.020013375596438072 30 -0.020013375596438072 
		35 0.27773886459742925;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.012313555926084518 
		0.0055974065326154232;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0.9999241828918457 
		0.99998432397842407;
createNode animCurveTA -n "animCurveTA159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 9.541664044390555e-015 4 9.541664044390555e-015 
		6 9.541664044390555e-015 8 8.5493309837739368e-015 12 0 20 0 24 0 30 0 35 
		0;
createNode animCurveTA -n "animCurveTA160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 6.6324864122366681e-015 4 6.6324864122366681e-015 
		6 6.6324864122366681e-015 8 5.9427078253640549e-015 12 0 20 0 24 0 30 0 35 
		28.652637602052774;
createNode animCurveTA -n "animCurveTA161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.4064602393618892e-014 4 1.4064602393618892e-014 
		6 1.4064602393618892e-014 8 1.2601883744682528e-014 12 0 20 0 24 0 30 0 35 
		64.676908227303443;
createNode animCurveTL -n "animCurveTL68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.98872754407817198 4 0.98872754407817198 
		6 0.98872754407817198 8 0.98872754407817198 12 0.98872754407817198 20 0.98872754407817198 
		24 0.98872754407817198 30 0.98872754407817198 35 0.5198069948790518;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.0078191384673118591 
		0.0035542394034564495;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.99996942281723022 
		-0.99999368190765381;
createNode animCurveTL -n "animCurveTL69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.019514335421655121 4 -0.019514335421655121 
		6 -0.019514335421655121 8 -0.019514335421655121 12 -0.019514335421655121 
		20 -0.019514335421655121 24 -0.019514335421655121 30 -0.019514335421655121 
		35 -0.72394202659893114;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.0052051008678972721 
		0.0023659798316657543;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 -0.99998646974563599 
		-0.99999719858169556;
createNode animCurveTL -n "animCurveTL70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.020013361448308328 4 -0.020013361448308328 
		6 -0.020013361448308328 8 -0.020013361448308328 12 -0.020013361448308328 
		20 -0.020013361448308328 24 -0.020013361448308328 30 -0.020013361448308328 
		35 0.36439499068905612;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 0.0095380330458283424 
		0.0043356260284781456;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0.99995452165603638 
		0.99999058246612549;
createNode animCurveTA -n "animCurveTA162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 9.541664044390555e-015 4 9.541664044390555e-015 
		6 9.541664044390555e-015 8 8.5493309837739368e-015 12 0 20 0 24 0 30 0 35 
		7.7976222737965317;
createNode animCurveTA -n "animCurveTA163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 6.6324864122366681e-015 4 6.6324864122366681e-015 
		6 6.6324864122366681e-015 8 5.9427078253640549e-015 12 0 20 0 24 0 30 0 35 
		-30.409274105849079;
createNode animCurveTA -n "animCurveTA164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.4064602393618892e-014 4 1.4064602393618892e-014 
		6 1.4064602393618892e-014 8 1.2601883744682528e-014 12 0 20 0 24 0 30 0 35 
		-64.859940280210893;
createNode animCurveTL -n "animCurveTL71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.75445675302081694 4 -0.80566610184141307 
		6 -0.70634147935472369 10 -0.78442163429181122 14 -0.70988431734715507 17 
		-0.761211521228914 20 -0.74907294409113789 22 -0.81012708382534937 24 -0.1081851897800248 
		31 -0.1081851897800248 35 -0.65349039835853828;
	setAttr -s 11 ".kit[8:10]"  3 3 3;
	setAttr -s 11 ".kot[8:10]"  3 3 3;
createNode animCurveTL -n "animCurveTL72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.9782558036989901 4 1.0631939790227543 
		6 1.5063348790592803 10 4.4968394647482341 14 4.7027273529564111 17 3.5148345094360467 
		20 2.240327765034531 22 1.600145050772638 24 0.13960776942855724 31 0.13960776942855724 
		35 1.5117481219250299;
	setAttr -s 11 ".kit[8:10]"  3 3 3;
	setAttr -s 11 ".kot[8:10]"  3 3 3;
createNode animCurveTL -n "animCurveTL73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.0035580153235874744 4 1.0918359105165933 
		6 2.9844518706751608 10 5.654036591998433 14 7.7105792146431575 17 9.4361765899409562 
		20 11.42008202208736 22 14.746701633220765 24 15.933368538704343 31 15.933368538704343 
		35 14.527420800281089;
	setAttr -s 11 ".kit[8:10]"  3 3 3;
	setAttr -s 11 ".kot[8:10]"  3 3 3;
createNode animCurveTA -n "animCurveTA165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 9.3870232526708541 4 -22.979098536251335 
		6 -26.064131993977409 10 -135.55674651928086 14 -79.584377961916346 20 -75.806581285896897 
		21 -132.94723059616092 22 53.291752180126245 24 51.802393214920862 31 51.802393214920862 
		32 71.952038625172094 35 5.4739599453216465;
	setAttr -s 12 ".kit[8:11]"  3 3 9 3;
	setAttr -s 12 ".kot[8:11]"  3 3 9 3;
createNode animCurveTA -n "animCurveTA166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -54.668195916590491 4 -42.478824352870419 
		6 24.007537278602197 10 -0.50845436964543567 14 -60.506224034919292 20 -46.600612617954155 
		21 75.645229117525759 22 96.264552347617681 24 77.745988998455999 31 77.745988998455999 
		32 25.739747660952396 35 8.5874521608419823;
	setAttr -s 12 ".kit[8:11]"  3 3 9 3;
	setAttr -s 12 ".kot[8:11]"  3 3 9 3;
createNode animCurveTA -n "animCurveTA167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 66.25393350935741 4 0.18699177460497859 
		6 81.602185302341567 10 -86.111062347369483 14 -88.909030057165808 20 -93.626022806939858 
		21 -128.15544987296985 22 43.589191130171344 24 55.90275020655595 31 55.90275020655595 
		32 93.846151035132564 35 74.754744621954103;
	setAttr -s 12 ".kit[8:11]"  3 3 9 3;
	setAttr -s 12 ".kot[8:11]"  3 3 9 3;
createNode animCurveTL -n "animCurveTL74";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  24 0.80216628327519235 30 0.80216628327519235 
		35 0.80216628327519235;
createNode animCurveTL -n "animCurveTL75";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  24 1.4644416293758407 30 1.4644416293758407 
		35 1.4644416293758407;
createNode animCurveTL -n "animCurveTL76";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  24 14.768558450597681 30 14.768558450597681 
		35 14.768558450597681;
createNode animCurveTA -n "animCurveTA168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 16.226511010665412 4 16.226511010665412 
		6 16.226511010665412 24 16.226511010665412 30 16.226511010665412 35 16.226511010665412;
createNode animCurveTA -n "animCurveTA169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -8.5139660854992858 4 -8.5139660854992858 
		6 -8.5139660854992858 24 -8.5139660854992858 30 -8.5139660854992858 35 -8.5139660854992858;
createNode animCurveTA -n "animCurveTA170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -68.213989601412422 4 -68.213989601412422 
		6 -68.213989601412422 24 -68.213989601412422 30 -68.213989601412422 35 -68.213989601412422;
createNode animCurveTL -n "animCurveTL77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 0 20 0 24 0 
		30 0 35 0;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 0 20 0 24 0 
		30 0 35 0;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1 4 -1 6 -1 8 -1 12 -1 20 -1 
		24 -1 30 -1 35 -1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kox[0:8]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 6 -0.49728131120044688 20 -0.95007664579860074 
		24 0.043765717356990391 30 0.043765717356990391 35 -0.10167917362943303;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kox[0:5]"  1 0.0070168045349419117 0.011088927276432514 
		0.003353967098519206 0.025201998651027679 0.011458340100944042;
	setAttr -s 6 ".koy[0:5]"  0 -0.99997538328170776 0.9999384880065918 
		0.99999439716339111 -0.99968236684799194 -0.99993437528610229;
createNode animCurveTL -n "animCurveTL81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 6 -0.38284438563142026 20 0.10218284616135791 
		24 -1.8729208810201234 30 -1.8729208810201234 35 -0.40762644910266188;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kox[0:5]"  1 0.065104112029075623 0.0040266062133014202 
		0.0016876726876944304 0.0025023333728313446 0.0011374268215149641;
	setAttr -s 6 ".koy[0:5]"  0 0.99787849187850952 -0.99999189376831055 
		-0.99999856948852539 0.9999968409538269 0.99999934434890747;
createNode animCurveTL -n "animCurveTL82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1 6 0.1253596642312792 20 -0.11765180056616498 
		24 -0.37520402208108011 30 -0.37520402208108011 35 -0.93129112588482243;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kox[0:5]"  1 0.0075553804636001587 0.011985625140368938 
		0.012941274791955948 0.0065935477614402771 0.0029971185140311718;
	setAttr -s 6 ".koy[0:5]"  0 0.99997144937515259 -0.99992817640304565 
		-0.99991625547409058 -0.99997824430465698 -0.99999552965164185;
createNode animCurveTA -n "animCurveTA171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 62.63751096393235 4 47.559968188787039 
		6 -67.792131539496978 8 -92.762398791111991 12 -92.595877449370889 20 -25.45424806295372 
		24 -28.820904527588063 30 -28.820904527588063 35 12.253734489678939;
createNode animCurveTA -n "animCurveTA172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -2.607342867407215 4 -29.625227631973953 
		6 -27.10559385654599 8 62.140006124938203 12 22.376001670689305 20 -30.640496266362231 
		24 43.107047912081455 30 43.107047912081448 35 -65.74675128084499;
createNode animCurveTA -n "animCurveTA173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -70.410339040713225 4 -66.897696128230251 
		6 69.297314869958157 8 65.356218890313173 12 -3.4309763204389219 20 51.578798483498971 
		24 52.626701457012039 30 52.626701457012032 35 0;
createNode animCurveTA -n "animCurveTA174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -84.698315806340915 4 45.865508803538361 
		6 -43.821767397958219 8 -95.437716397796393 12 -96.207851845119038 20 -43.32485505200777 
		24 -31.458196168118263 30 47.422839029895208 35 -0.061808866237342212;
createNode animCurveTA -n "animCurveTA175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.526614057559033 4 -27.369603767159667 
		6 -41.866784192438274 8 55.972564310993548 12 12.375792021016869 20 -25.713861434224221 
		24 -42.132888350155731 30 -50.757766162514436 35 -59.058178941076754;
createNode animCurveTA -n "animCurveTA176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 60.405404367098342 4 -74.992910143220058 
		6 55.020511381782029 8 59.182821014115724 12 21.335509849436715 20 16.003249533323878 
		24 0.17542045122413885 30 -41.824913531056396 35 16.579147429757857;
createNode animCurveTA -n "animCurveTA177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 43.533492033034968 4 61.257580248492559 
		6 59.885923337858159 8 13.07006849586902 12 37.37060327344804 20 24.296280820968938 
		24 -1.6636700889119254 30 -1.6636700889119254 35 8.5572674112203639;
createNode animCurveTA -n "animCurveTA178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 73.421813693602928 4 73.421813693602928 
		6 50.895849135732625 8 9.0203515410801671 12 60.617791435334176 20 71.313019451573382 
		24 17.853468941113817 30 36.714165073025576 35 15.711328223519061;
createNode animCurveTA -n "animCurveTA179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 14.849434068729675 4 14.849434068729675 
		6 14.849434068729675 8 14.849434068729675 12 14.849434068729675 20 14.849434068729675 
		24 44.239971706660228 30 44.239971706660242 35 0;
createNode animCurveTA -n "animCurveTA180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.051608316401883209 4 0.051608316401883209 
		6 0.051608316401883209 8 0.051608316401883209 12 0.051608316401883209 20 
		0.051608316401883209 24 49.536238688771149 30 49.536238688771178 35 0;
createNode animCurveTA -n "animCurveTA181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.8225462689462448 4 1.8225462689462448 
		6 1.8225462689462448 8 1.8225462689462448 12 1.8225462689462448 20 1.8225462689462448 
		24 16.375889198170615 30 16.375889198170618 35 0;
createNode animCurveTA -n "animCurveTA182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 14.859570486861982 4 14.859570486861982 
		6 14.859570486861982 8 14.859570486861982 12 14.859570486861982 20 15.825434745729005 
		24 -32.191158941693672 30 -16.403603018513106 35 0;
createNode animCurveTA -n "animCurveTA183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.052172032759606073 4 0.052172032759606073 
		6 0.052172032759606073 8 0.052172032759606073 12 0.052172032759606073 20 
		-19.883191347796444 24 41.417729073613714 30 31.916088971456983 35 0;
createNode animCurveTA -n "animCurveTA184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.8225558374727127 4 1.8225558374727127 
		6 1.8225558374727127 8 1.8225558374727127 12 1.8225558374727127 20 -3.697740306891494 
		24 -28.298115060168566 30 2.8857399375355945 35 0;
createNode animCurveTA -n "apu_Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -60.680000000000007 4 -60.680000000000007 
		6 -60.680000000000007 24 -60.680000000000007 30 -60.680000000000007;
createNode animCurveTA -n "apu_Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 12.356 4 12.356 6 12.356 24 12.356 
		30 12.356;
createNode animCurveTA -n "apu_Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.110465504305042 4 13.110465504305042 
		6 13.110465504305042 24 13.110465504305042 30 13.110465504305042;
createNode animCurveTA -n "animCurveTA188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -20.551139383726671 4 -20.551139383726671 
		6 -20.551139383726671 8 -20.551139383726671 12 -20.551139383726671 20 -20.551139383726671 
		24 -20.551139383726671 30 -20.551139383726671 35 0;
createNode animCurveTA -n "animCurveTA189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 3.0722483700821352 4 3.0722483700821352 
		6 3.0722483700821352 8 3.0722483700821352 12 3.0722483700821352 20 3.0722483700821352 
		24 3.0722483700821352 30 3.0722483700821352 35 0;
createNode animCurveTA -n "animCurveTA190";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 19.857676546395723 4 40.385087435566923 
		6 40.385087435566923 8 40.385087435566923 12 40.385087435566923 20 40.385087435566923 
		24 40.385087435566923 30 19.857676546395723 35 27.080064458283058;
	setAttr -s 9 ".kit[0:8]"  9 3 3 3 3 3 3 
		9 9;
	setAttr -s 9 ".kot[0:8]"  9 3 3 3 3 3 3 
		9 9;
createNode animCurveTA -n "animCurveTA191";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA192";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA193";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 30 0 35 0;
	setAttr -s 3 ".kot[1:2]"  9 5;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  0 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "apu_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -17.939217448485856;
createNode animCurveTA -n "apu_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 12.085861696683486;
createNode animCurveTA -n "animCurveTA200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 0 20 0 24 0 
		30 0 35 0;
createNode animCurveTA -n "animCurveTA201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 0 20 0 24 0 
		30 0 35 0;
createNode animCurveTA -n "animCurveTA202";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.43065494947832267 4 16.815115114639937 
		6 16.815115114639937 8 16.815115114639937 12 16.815115114639937 20 16.815115114639937 
		24 16.815115114639937 30 -0.43065494947832278 35 27.911632519594587;
	setAttr -s 9 ".kit[0:8]"  9 3 3 3 3 3 3 
		9 9;
	setAttr -s 9 ".kot[0:8]"  9 3 3 3 3 3 3 
		9 9;
createNode animCurveTA -n "animCurveTA203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 0 20 0 24 0 
		30 0 35 0;
createNode animCurveTA -n "animCurveTA204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 0 20 0 24 0 
		30 0 35 0;
createNode animCurveTA -n "animCurveTA205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 0 20 0 24 0 
		30 0 35 0;
createNode animCurveTA -n "animCurveTA206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -34.203514952378796 4 -7.8488318321418218 
		6 -7.8488318321418218 8 -6.7542884668359422 12 -1.722656132605406 20 -12.09775179425397 
		24 26.760692989341724 30 14.611475665000158 35 -0.65073001024951549;
	setAttr -s 9 ".kit[8]"  3;
	setAttr -s 9 ".kot[8]"  3;
createNode animCurveTA -n "animCurveTA207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 13.307201605151414 4 0.28957704637835974 
		6 0.28957704637835974 8 0.066607887862941043 12 -0.95838463759339543 20 -1.3620116247449556 
		24 0.9773974236618389 30 -2.2705296662875409 35 -4.2368721935960929;
	setAttr -s 9 ".kit[8]"  3;
	setAttr -s 9 ".kot[8]"  3;
createNode animCurveTA -n "animCurveTA208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1.6908370075741825 4 -0.19814059001683229 
		6 -0.19814059001683229 8 3.4932684931313434 12 20.462730686018006 20 5.8497271850448449 
		24 15.617456866486011 30 25.469411171686147 35 8.7398866450636881;
	setAttr -s 9 ".kit[8]"  3;
	setAttr -s 9 ".kot[8]"  3;
createNode animCurveTA -n "animCurveTA209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 13.337321651149137 4 2.1460408398897917 
		6 1.3683715055233148 8 1.4542626308673925 12 2.3133856289641028 20 2.7848723431010085 
		24 -32.359602969039308 30 -23.693467168231013 35 0;
	setAttr -s 9 ".kit[8]"  3;
	setAttr -s 9 ".kot[8]"  3;
createNode animCurveTA -n "animCurveTA210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -12.328479369915591 4 2.0624487991120239 
		6 2.3046095840573373 8 2.2465907498595747 12 1.835303679842897 20 1.0320883585182179 
		24 5.1467569471032446 30 -20.610986811594412 35 0;
	setAttr -s 9 ".kit[8]"  3;
	setAttr -s 9 ".kot[8]"  3;
createNode animCurveTA -n "animCurveTA211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -16.552212476757049 4 9.9122318299174008 
		6 -24.335372748829869 8 -21.681719082039709 12 10.963497901140434 20 42.006015419987435 
		24 -26.75559179115179 30 -48.041787203071834 35 -15.452965173287607;
	setAttr -s 9 ".kit[8]"  3;
	setAttr -s 9 ".kot[8]"  3;
createNode animCurveTA -n "animCurveTA212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 0 20 0 24 0 
		30 0 35 4.8714700432790456;
createNode animCurveTA -n "animCurveTA213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 0 20 0 24 0 
		30 0 35 11.783606204137085;
createNode animCurveTA -n "animCurveTA214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 0 20 0 24 0 
		30 0 35 7.5423825101935913;
createNode animCurveTA -n "animCurveTA215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 3.5700221305795101 4 -9.9121571890715732 
		6 -9.9121571890715732 8 -7.887787193800909 12 1.4182719624174749 20 -9.3912253173869011 
		24 18.107584945727552 30 6.2306670533216515 35 -1.8903601258661935;
	setAttr -s 9 ".kit[8]"  3;
	setAttr -s 9 ".kot[8]"  3;
createNode animCurveTA -n "animCurveTA216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 6.1183128835401384 4 6.1183128835401304 
		6 6.1183128835401304 8 5.0896412973304965 12 0.36082243316831419 20 0.70699352503150537 
		24 1.7734623400176355 30 0.023823493504021891 35 2.5597289571479038;
	setAttr -s 9 ".kit[8]"  3;
	setAttr -s 9 ".kot[8]"  3;
createNode animCurveTA -n "animCurveTA217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 20.705857363312234 4 20.705857363312237 
		6 20.705857363312237 8 21.203309525495904 12 23.490104523738605 20 8.8780090567274588 
		24 36.650258855354316 30 46.874950133770334 35 2.016811087403604;
	setAttr -s 9 ".kit[8]"  3;
	setAttr -s 9 ".kot[8]"  3;
createNode animCurveTA -n "animCurveTA218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -20.551139383726671 4 -20.551139383726671 
		6 -20.551139383726671 8 -20.551139383726671 12 -20.551139383726671 20 -20.551139383726671 
		24 -22.34629729553594 30 -22.346297295535937 35 0;
createNode animCurveTA -n "animCurveTA219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 3.0722483700821352 4 3.0722483700821352 
		6 3.0722483700821352 8 3.0722483700821352 12 3.0722483700821352 20 3.0722483700821352 
		24 -0.99415692742451189 30 -0.99415692742451134 35 0;
createNode animCurveTA -n "animCurveTA220";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 19.857676546395723 4 75.883483181626644 
		6 75.883244218680389 8 75.883244218680389 12 75.883483181626644 20 75.883244218680389 
		24 5.9343246089215027 30 5.9343246089215027 35 33.429092416277157;
	setAttr -s 9 ".kit[0:8]"  9 3 3 3 3 3 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  9 3 3 3 3 3 9 
		9 9;
createNode animCurveTA -n "animCurveTA221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -60.679962459776895 4 -60.679962459776895 
		6 -60.679962459776895 8 -60.679962459776895 12 -60.679962459776895 20 -60.679962459776895 
		24 -60.679962459776895 30 -60.679962459776895 35 -60.380679167323379;
createNode animCurveTA -n "animCurveTA222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 12.355514613247321 4 12.355514613247321 
		6 12.355514613247321 8 12.355514613247321 12 12.355514613247321 20 12.355514613247321 
		24 12.355514613247321 30 12.355514613247319 35 12.557832914655217;
createNode animCurveTA -n "animCurveTA223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 13.110465504305042 4 13.110465504305042 
		6 13.110465504305042 8 13.110465504305042 12 13.110465504305042 20 13.110465504305042 
		24 13.110465504305042 30 13.110000000000001 35 13.110000000000001;
createNode animCurveTA -n "animCurveTA224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 0 20 0 24 0 
		30 0 35 0;
createNode animCurveTA -n "animCurveTA225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 0 20 0 24 0 
		30 0 35 0;
createNode animCurveTA -n "animCurveTA226";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.43065494947832267 4 17.026486028044062 
		6 17.026486028044062 8 17.026486028044062 12 17.026486028044062 20 17.026486028044062 
		24 17.026486028044062 30 -0.43065494947832278 35 17.254116939558365;
	setAttr -s 9 ".kit[0:8]"  9 3 3 3 3 3 3 
		9 9;
	setAttr -s 9 ".kot[0:8]"  9 3 3 3 3 3 3 
		9 9;
createNode clipLibrary -n "clipLibrary1";
	setAttr -s 160 ".cel[0].cev";
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
	setAttr ".o" 35;
select -ne :renderPartition;
	setAttr -s 40 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 40 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 4 ".tx";
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
connectAttr "apu_jump_dash_allSource.st" "clipLibrary1.st[0]";
connectAttr "apu_jump_dash_allSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL42.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL43.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "apu_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "animCurveTA114.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU9.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU15.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU16.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA115.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA116.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA117.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL47.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL48.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL49.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL50.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL51.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL52.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA118.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA119.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA120.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL53.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL54.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL55.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA121.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA122.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA123.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA124.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA125.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA126.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA127.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA128.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA129.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL56.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL57.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL58.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL59.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL60.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL61.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL62.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL63.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL64.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA130.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA131.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA132.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA133.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA134.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA135.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA136.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA137.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA138.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA139.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA140.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA141.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA142.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA143.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA144.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA145.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA146.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA147.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA148.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA149.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA150.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA151.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA152.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA153.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA154.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA155.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA156.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA157.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA158.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTL65.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTL66.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTL67.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA159.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA160.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA161.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL68.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL69.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL70.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA162.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA163.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA164.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL71.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL72.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL73.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA165.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA166.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA167.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL74.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL75.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL76.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA168.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA169.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA170.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL77.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL78.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL79.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL80.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL81.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL82.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA171.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA172.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA173.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA174.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA175.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA176.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA177.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA178.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA179.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA180.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA181.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA182.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA183.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA184.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "apu_Thumb_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[120].cevr"
		;
connectAttr "apu_Thumb_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[121].cevr"
		;
connectAttr "apu_Thumb_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[122].cevr"
		;
connectAttr "animCurveTA188.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA189.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA190.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA191.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA192.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA193.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "apu_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "apu_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "apu_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "apu_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "apu_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "apu_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA200.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA201.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA202.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA203.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA204.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA205.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA206.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA207.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA208.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA209.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA210.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA211.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA212.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA213.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA214.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA215.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA216.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA217.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA218.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA219.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA220.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA221.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA222.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA223.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA224.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA225.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA226.a" "clipLibrary1.cel[0].cev[161].cevr";
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
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[38].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[39].llnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of apu_jump_dash_all.ma
