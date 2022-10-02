//Maya ASCII 4.0 scene
//Name: apu_jump_dash_take_off.ma
//Last modified: Wed, Oct 09, 2002 02:47:22 PM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "apu_jump_dash_take_offSource";
	setAttr ".ihi" 0;
	setAttr ".du" 6;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL42";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 38 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL43";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 38 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.021611233900292327 1 0.021611233900292327 
		2 0.021611233900292327 3 0.021611233900292327 4 0.021611233900292327 5 0.021611233900292327 
		6 0.021611233900292327;
createNode animCurveTL -n "apu_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.14556937628024244 1 0.22749371215068168 
		2 0.30338386474503387 3 0.3913423809104567 4 0.50947180749410792 5 0.72113104875911704 
		6 0.98106373200187924;
createNode animCurveTA -n "animCurveTA114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 38 
		0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "animCurveTA115";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA116";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA117";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "animCurveTL47";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "animCurveTL48";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "animCurveTL49";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "animCurveTL50";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.13256050696689195 1 -0.13256050696689195 
		4 -0.13256050696689195 6 -0.13256050696689195;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  1 3 3 9;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL51";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.16494285180908641 1 0.12819669310572168 
		4 0.12819669310572168 6 0.33485584145079045;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  1 3 3 9;
	setAttr -s 4 ".kox[0:3]"  0.03626110777258873 1 1 0.0032259072177112103;
	setAttr -s 4 ".koy[0:3]"  -0.99934232234954834 0 0 0.99999481439590454;
createNode animCurveTL -n "animCurveTL52";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.5840630460795303 1 0.65276238626408178 
		4 0.65276238626408178 6 0.84394050822528333;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  1 3 3 9;
	setAttr -s 4 ".kox[0:3]"  0.019404584541916847 1 1 0.0034871280658990145;
	setAttr -s 4 ".koy[0:3]"  0.99981170892715454 0 0 0.99999392032623291;
createNode animCurveTA -n "animCurveTA118";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -30.072192405388275 1 -0.123893425901984 
		4 -0.123893425901984 6 50.024119495848225;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  9 3 3 9;
createNode animCurveTA -n "animCurveTA119";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 4 0 6 0;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  9 3 3 9;
createNode animCurveTA -n "animCurveTA120";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 4 0 6 0;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  9 3 3 9;
createNode animCurveTL -n "animCurveTL53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.18579966735506592 4 0.18579966735506592 
		6 0.18579966735506592;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.4788651046679378 4 0.40809231172964922 
		6 0.56647667401222912;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  0.018836287781596184 0.022822089493274689 
		0.0042091328650712967;
	setAttr -s 3 ".koy[0:2]"  -0.99982255697250366 0.99973952770233154 
		0.99999111890792847;
createNode animCurveTL -n "animCurveTL55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.45404353022539112 4 0.23309084385424383 
		6 0.80521394842601124;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  0.0019404221093282104 0.0015882356092333794 
		0.0011652496177703142;
	setAttr -s 3 ".koy[0:2]"  0.99999809265136719 0.99999874830245972 
		0.99999934434890747;
createNode animCurveTA -n "animCurveTA121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 99.963052812293768 4 130.12743265542596 
		6 113.21120007869165;
createNode animCurveTA -n "animCurveTA122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 6 0;
createNode animCurveTA -n "animCurveTA123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 6 0;
createNode animCurveTA -n "animCurveTA124";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA125";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA126";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA127";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA128";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA129";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTL -n "animCurveTL56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 6 0;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.24354617521346231 4 0.24354617521346231 
		6 0.24354617521346231;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.73266363114951272 4 0.73266363114951272 
		6 0.73266363114951272;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 6 0;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.72172207365063845 4 0.72172207365063845 
		6 0.72172207365063845;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.39818034372871203 4 0.39818034372871203 
		6 0.39818034372871203;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.03056236763751306 4 0.03056236763751306 
		6 0.03056236763751306;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.95976092787099887 4 0.64977533392262521 
		6 0.96397049949569225;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  0.0043012350797653198 0.42913618683815002 
		0.0021218189503997564;
	setAttr -s 3 ".koy[0:2]"  -0.99999076128005981 0.90323978662490845 
		0.99999773502349854;
createNode animCurveTL -n "animCurveTL64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.20586259975558652 4 0.72048938776108418 
		6 1.3874094645223582;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  0.002590865595266223 0.0016926937969401479 
		0.00099961960222572088;
	setAttr -s 3 ".koy[0:2]"  0.99999666213989258 0.99999856948852539 
		0.9999995231628418;
createNode animCurveTA -n "animCurveTA130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 17.005118065408293 4 17.005118065408293 
		6 17.005118065408293;
createNode animCurveTA -n "animCurveTA131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.71413050451596 4 16.71413050451596 
		6 16.71413050451596;
createNode animCurveTA -n "animCurveTA132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.545042700459728 4 4.545042700459728 
		6 4.545042700459728;
createNode animCurveTA -n "animCurveTA133";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.040709616517141577;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA134";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.8313983219776933;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA135";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.7337164321498379;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA136";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.5673169553733395;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA137";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.938383166068367;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA138";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00040252039393782536;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA139";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.1571952141288733;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA140";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA141";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA142";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.0034456079181433771;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA143";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.040473860579884585;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA144";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.8313984519406281;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA145";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.7337164553688731;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA146";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.5673170049738836;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA147";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.9383298724540099;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA148";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00017158844849065358;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA149";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.1571951880326767;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA150";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA151";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA152";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.0034456079182833216;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 6 -2.5801482445824764;
createNode animCurveTA -n "animCurveTA154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 6 2.2133692590006788;
createNode animCurveTA -n "animCurveTA155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.0034456079181433771 4 0.0034456079181433771 
		6 -47.102861458702762;
createNode animCurveTA -n "animCurveTA156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.15553530681976535 4 0.15553530681976535 
		6 0.15553530681976535;
createNode animCurveTA -n "animCurveTA157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.36354176124207516 4 -0.36354176124207516 
		6 -0.36354176124207516;
createNode animCurveTA -n "animCurveTA158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5.3250602596476986 4 5.3250602596476986 
		6 5.3250602596476986;
createNode animCurveTL -n "animCurveTL65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.98872819052200589 4 -0.98872819052200589 
		6 -0.98872819052200589;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.019519870042852914 4 -0.019519870042852914 
		6 -0.019519870042852914;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.020013375596438072 4 -0.020013375596438072 
		6 -0.020013375596438072;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 9.541664044390555e-015 4 9.541664044390555e-015 
		6 9.541664044390555e-015;
createNode animCurveTA -n "animCurveTA160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 6.6324864122366681e-015 4 6.6324864122366681e-015 
		6 6.6324864122366681e-015;
createNode animCurveTA -n "animCurveTA161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.4064602393618892e-014 4 1.4064602393618892e-014 
		6 1.4064602393618892e-014;
createNode animCurveTL -n "animCurveTL68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.98872754407817198 4 0.98872754407817198 
		6 0.98872754407817198;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.019514335421655121 4 -0.019514335421655121 
		6 -0.019514335421655121;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.020013361448308328 4 -0.020013361448308328 
		6 -0.020013361448308328;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 9.541664044390555e-015 4 9.541664044390555e-015 
		6 9.541664044390555e-015;
createNode animCurveTA -n "animCurveTA163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 6.6324864122366681e-015 4 6.6324864122366681e-015 
		6 6.6324864122366681e-015;
createNode animCurveTA -n "animCurveTA164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.4064602393618892e-014 4 1.4064602393618892e-014 
		6 1.4064602393618892e-014;
createNode animCurveTL -n "animCurveTL71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.75445675302081694 4 -0.80566610184141307 
		6 -0.70634147935472369;
createNode animCurveTL -n "animCurveTL72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.9782558036989901 4 1.0631939790227543 
		6 1.5063348790592803;
createNode animCurveTL -n "animCurveTL73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.0035580153235874744 4 1.0918359105165933 
		6 2.9844518706751608;
createNode animCurveTA -n "animCurveTA165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 9.3870232526708541 4 -22.979098536251335 
		6 -26.064131993977409;
createNode animCurveTA -n "animCurveTA166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -54.668195916590491 4 -42.478824352870419 
		6 24.007537278602197;
createNode animCurveTA -n "animCurveTA167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 66.25393350935741 4 0.18699177460497859 
		6 81.602185302341567;
createNode animCurveTL -n "apu_Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.80216628327519235;
createNode animCurveTL -n "apu_Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.4644416293758407;
createNode animCurveTL -n "apu_Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 14.768558450597681;
createNode animCurveTA -n "animCurveTA168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.226511010665412 4 16.226511010665412 
		6 16.226511010665412;
createNode animCurveTA -n "animCurveTA169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -8.5139660854992858 4 -8.5139660854992858 
		6 -8.5139660854992858;
createNode animCurveTA -n "animCurveTA170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -68.213989601412422 4 -68.213989601412422 
		6 -68.213989601412422;
createNode animCurveTL -n "animCurveTL77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 6 0;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 6 0;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 4 -1 6 -1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 6 -0.49728131120044688;
	setAttr -s 2 ".kot[0:1]"  1 9;
	setAttr -s 2 ".kox[0:1]"  1 0.0040218359790742397;
	setAttr -s 2 ".koy[0:1]"  0 -0.99999189376831055;
createNode animCurveTL -n "animCurveTL81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 6 -0.38284438563142026;
	setAttr -s 2 ".kot[0:1]"  1 9;
	setAttr -s 2 ".kox[0:1]"  1 0.0052239834330976009;
	setAttr -s 2 ".koy[0:1]"  0 -0.99998635053634644;
createNode animCurveTL -n "animCurveTL82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1 6 0.1253596642312792;
	setAttr -s 2 ".kot[0:1]"  1 9;
	setAttr -s 2 ".kox[0:1]"  1 0.0017772068968042731;
	setAttr -s 2 ".koy[0:1]"  0 0.99999845027923584;
createNode animCurveTA -n "animCurveTA171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 62.63751096393235 4 47.559968188787039 
		6 -67.792131539496978;
createNode animCurveTA -n "animCurveTA172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.607342867407215 4 -29.625227631973953 
		6 -27.10559385654599;
createNode animCurveTA -n "animCurveTA173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -70.410339040713225 4 -66.897696128230251 
		6 69.297314869958157;
createNode animCurveTA -n "animCurveTA174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -84.698315806340915 4 45.865508803538361 
		6 -43.821767397958219;
createNode animCurveTA -n "animCurveTA175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.526614057559033 4 -27.369603767159667 
		6 -41.866784192438274;
createNode animCurveTA -n "animCurveTA176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 60.405404367098342 4 -74.992910143220058 
		6 55.020511381782029;
createNode animCurveTA -n "animCurveTA177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 43.533492033034968 4 61.257580248492559 
		6 59.885923337858159;
createNode animCurveTA -n "animCurveTA178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 73.421813693602928 4 73.421813693602928 
		6 50.895849135732625;
createNode animCurveTA -n "animCurveTA179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 14.849434068729675 4 14.849434068729675 
		6 14.849434068729675;
createNode animCurveTA -n "animCurveTA180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.051608316401883209 4 0.051608316401883209 
		6 0.051608316401883209;
createNode animCurveTA -n "animCurveTA181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.8225462689462448 4 1.8225462689462448 
		6 1.8225462689462448;
createNode animCurveTA -n "animCurveTA182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 14.859570486861982 4 14.859570486861982 
		6 14.859570486861982;
createNode animCurveTA -n "animCurveTA183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.052172032759606073 4 0.052172032759606073 
		6 0.052172032759606073;
createNode animCurveTA -n "animCurveTA184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.8225558374727127 4 1.8225558374727127 
		6 1.8225558374727127;
createNode animCurveTA -n "apu_Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -60.680000000000007 4 -60.680000000000007 
		6 -60.680000000000007;
createNode animCurveTA -n "apu_Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 12.356 4 12.356 6 12.356;
createNode animCurveTA -n "apu_Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.110465504305042 4 13.110465504305042 
		6 13.110465504305042;
createNode animCurveTA -n "animCurveTA188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -20.551139383726671 4 -20.551139383726671 
		6 -20.551139383726671;
createNode animCurveTA -n "animCurveTA189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.0722483700821352 4 3.0722483700821352 
		6 3.0722483700821352;
createNode animCurveTA -n "animCurveTA190";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 19.857676546395723 4 40.385087435566923 
		6 40.385087435566923;
	setAttr -s 3 ".kit[0:2]"  9 3 3;
	setAttr -s 3 ".kot[0:2]"  9 3 3;
createNode animCurveTA -n "animCurveTA191";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA192";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
createNode animCurveTA -n "animCurveTA193";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
	setAttr ".kox[0]"  0;
	setAttr ".koy[0]"  0;
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
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 6 0;
createNode animCurveTA -n "animCurveTA201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 6 0;
createNode animCurveTA -n "animCurveTA202";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.43065494947832267 4 16.815115114639937 
		6 16.815115114639937;
	setAttr -s 3 ".kit[0:2]"  9 3 3;
	setAttr -s 3 ".kot[0:2]"  9 3 3;
createNode animCurveTA -n "animCurveTA203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 6 0;
createNode animCurveTA -n "animCurveTA204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 6 0;
createNode animCurveTA -n "animCurveTA205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 6 0;
createNode animCurveTA -n "animCurveTA206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -34.203514952378796 4 -7.8488318321418218 
		6 -7.8488318321418218;
createNode animCurveTA -n "animCurveTA207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.307201605151414 4 0.28957704637835974 
		6 0.28957704637835974;
createNode animCurveTA -n "animCurveTA208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.6908370075741825 4 -0.19814059001683229 
		6 -0.19814059001683229;
createNode animCurveTA -n "animCurveTA209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.337321651149137 4 2.1460408398897917 
		6 1.3683715055233148;
createNode animCurveTA -n "animCurveTA210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -12.328479369915591 4 2.0624487991120239 
		6 2.3046095840573373;
createNode animCurveTA -n "animCurveTA211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -16.552212476757049 4 9.9122318299174008 
		6 -24.335372748829869;
createNode animCurveTA -n "animCurveTA212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 6 0;
createNode animCurveTA -n "animCurveTA213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 6 0;
createNode animCurveTA -n "animCurveTA214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 6 0;
createNode animCurveTA -n "animCurveTA215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.5700221305795101 4 -9.9121571890715732 
		6 -9.9121571890715732;
createNode animCurveTA -n "animCurveTA216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 6.1183128835401384 4 6.1183128835401304 
		6 6.1183128835401304;
createNode animCurveTA -n "animCurveTA217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20.705857363312234 4 20.705857363312237 
		6 20.705857363312237;
createNode animCurveTA -n "animCurveTA218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -20.551139383726671 4 -20.551139383726671 
		6 -20.551139383726671;
createNode animCurveTA -n "animCurveTA219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.0722483700821352 4 3.0722483700821352 
		6 3.0722483700821352;
createNode animCurveTA -n "animCurveTA220";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 19.857676546395723 4 75.883483181626644 
		6 75.883244218680389;
	setAttr -s 3 ".kit[0:2]"  9 3 3;
	setAttr -s 3 ".kot[0:2]"  9 3 3;
createNode animCurveTA -n "animCurveTA221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -60.679962459776895 4 -60.679962459776895 
		6 -60.679962459776895;
createNode animCurveTA -n "animCurveTA222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 12.355514613247321 4 12.355514613247321 
		6 12.355514613247321;
createNode animCurveTA -n "animCurveTA223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.110465504305042 4 13.110465504305042 
		6 13.110465504305042;
createNode animCurveTA -n "animCurveTA224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 6 0;
createNode animCurveTA -n "animCurveTA225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 6 0;
createNode animCurveTA -n "animCurveTA226";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.43065494947832267 4 17.026486028044062 
		6 17.026486028044062;
	setAttr -s 3 ".kit[0:2]"  9 3 3;
	setAttr -s 3 ".kot[0:2]"  9 3 3;
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
connectAttr "apu_jump_dash_take_offSource.st" "clipLibrary1.st[0]";
connectAttr "apu_jump_dash_take_offSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL42.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL43.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "apu_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
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
connectAttr "apu_Left_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[94].cevr"
		;
connectAttr "apu_Left_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[95].cevr"
		;
connectAttr "apu_Left_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[96].cevr"
		;
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
// End of apu_jump_dash_take_off.ma
