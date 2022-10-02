//Maya ASCII 4.0 scene
//Name: brt_hit_by_car_land.ma
//Last modified: Tue, May 28, 2002 03:13:44 PM
requires maya "4.0";
requires "p3dSimpleShader" "16.4";
requires "p3dDeformer" "16.0.0.1";
requires "p3dmayaexp" "16.15";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_hit_by_car_landSource";
	setAttr ".ihi" 0;
	setAttr ".du" 19;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 12 0 15 0;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 12 0 15 0;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0.0063127830866611615 1 0.0063127830866611615 
		2 0.0063127830866611615 3 0.0063127830866611615 4 0.0063127830866611615 5 
		0.0063127830866611615 6 0.0063127830866611615 7 0.0063127830866611615 8 0.0063127830866611615 
		9 0.0063127830866611615 10 0.0065465898649951764 11 0.0067803966433291904 
		12 0.0063127830866611615 13 0.0044089278734785525 14 0.0018036523093732837 
		15 0 16 -0.00050727720756885445 17 -0.00045091307339453741 18 -0.00016909240252295136 
		19 0;
createNode animCurveTL -n "brt_Motion_Root_translateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 -1.9854600546537347 1 -1.9743927956814427 
		2 -1.9854600546537347 3 -2.0500716131814576 4 -2.1343583002344007 5 -2.2068052406847296 
		6 -2.2544423126244908 7 -2.2920494550973052 8 -2.3297368844027018 9 -2.3776148168402087 
		10 -2.4418041774878749 11 -2.5181187465749764 12 -2.6012080231278834 13 -2.7035918484000714 
		14 -2.8127503834282628 15 -2.885773606913701 16 -2.908640484759343 17 -2.9060997205542716 
		18 -2.8933958995289153 19 -2.885773606913701;
createNode animCurveTA -n "brt_Motion_Root_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 12 0 15 0;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "animCurveTU26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 12 0 15 0;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "animCurveTU27";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 12 0 15 0;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "animCurveTU28";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 12 0 15 0;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "animCurveTU29";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 1 12 1 15 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[0:2]"  1 0.16439898312091827 1;
	setAttr -s 3 ".kiy[0:2]"  0 -0.98639392852783203 0;
	setAttr -s 3 ".kox[0:2]"  1 0.16439898312091827 1;
	setAttr -s 3 ".koy[0:2]"  0 -0.98639392852783203 0;
createNode animCurveTU -n "animCurveTU30";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 1 12 1 15 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[0:2]"  1 0.16439898312091827 1;
	setAttr -s 3 ".kiy[0:2]"  0 -0.98639392852783203 0;
	setAttr -s 3 ".kox[0:2]"  1 0.16439898312091827 1;
	setAttr -s 3 ".koy[0:2]"  0 -0.98639392852783203 0;
createNode animCurveTU -n "animCurveTU31";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 12 0 15 1;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[0:2]"  1 0.16439898312091827 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.98639392852783203 0;
	setAttr -s 3 ".kox[0:2]"  1 0.16439898312091827 1;
	setAttr -s 3 ".koy[0:2]"  0 0.98639392852783203 0;
createNode animCurveTU -n "animCurveTU32";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 12 0 15 1;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr -s 3 ".kix[0:2]"  1 0.16439898312091827 1;
	setAttr -s 3 ".kiy[0:2]"  0 0.98639392852783203 0;
	setAttr -s 3 ".kox[0:2]"  1 0.16439898312091827 1;
	setAttr -s 3 ".koy[0:2]"  0 0.98639392852783203 0;
createNode animCurveTA -n "animCurveTA570";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA571";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA572";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTL -n "animCurveTL193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 12 0 15 0;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 12 0 15 0;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0 12 0 15 0;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.17437811750381982 2 -0.17645694635008677 
		5 -0.17645694635008677 9 -0.17645694635008677 12 -0.17645694635008677 15 
		-0.34830366363129989 19 -0.34830366363129989;
createNode animCurveTL -n "animCurveTL197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.1428006031135964 2 0.73730070866316066 
		5 0.89717684739909342 9 1.1584407225476501 12 0.28983332092491493 15 0.19118070920231398 
		19 0.19118070920231398;
createNode animCurveTL -n "animCurveTL198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.3849574794155526 2 -2.3594745823643239 
		5 -2.5421901694911035 9 -2.798615824729505 12 -3.2787505693450867 15 -3.5550835573549859 
		19 -3.5550835573549859;
createNode animCurveTA -n "animCurveTA573";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -89.675227039431803 2 -27.595959067019745 
		5 0.21801381617811239 9 -22.535152420394311 12 -22.535152420394311 15 -3.3595522507325413 
		19 -3.3595522507325413;
createNode animCurveTA -n "animCurveTA574";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 -4.9396511688497009 
		19 -4.9396511688497009;
createNode animCurveTA -n "animCurveTA575";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 1.4972445100027125 
		19 1.4972445100027125;
createNode animCurveTL -n "animCurveTL199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.29185150429015561 2 0.31758716802195641 
		5 0.31758716802195641 9 0.31758716802195641 12 0.31758716802195641 15 0.29827657820566539 
		19 0.29827657820566539;
createNode animCurveTL -n "animCurveTL200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.55491014289282381 2 0.41273784791994272 
		5 0.89236626412774001 9 0.75205788673314433 12 0.22390966765600395 15 0.19600000000000001 
		19 0.19600000000000001;
createNode animCurveTL -n "animCurveTL201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.2722692717494399 2 -2.4210529919365769 
		5 -2.7236756831153053 9 -3.0236453175451334 12 -3.4644963103285322 15 -3.5996665602180626 
		19 -3.5996665602180626;
createNode animCurveTA -n "animCurveTA576";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -39.2252513343742 2 5.4760876434928472 
		5 5.6175156500276104 9 25.211350838126936 12 1.4415482405103193 15 -0.022973885644723264 
		19 -0.022973885644723264;
createNode animCurveTA -n "animCurveTA577";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 -4.6882558815768478 
		19 -4.6882558815768478;
createNode animCurveTA -n "animCurveTA578";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 -0.16613472175511138 
		19 -0.16613472175511138;
createNode animCurveTA -n "animCurveTA579";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA580";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA585";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA586";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA587";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA588";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA589";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA590";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTL -n "animCurveTL202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 -0.22333560679749456 
		19 -0.22333560679749456;
createNode animCurveTL -n "animCurveTL203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 0.0047180449320975452 
		19 0.0047180449320975452;
createNode animCurveTL -n "animCurveTL204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 2 1 5 1 9 1 12 1 15 1.0196125091168922 
		19 1.0196125091168922;
createNode animCurveTL -n "animCurveTL205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 0.22315575876557764 
		19 0.22315575876557764;
createNode animCurveTL -n "animCurveTL206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 0.0006565739970363771 
		19 0.0006565739970363771;
createNode animCurveTL -n "animCurveTL207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 2 1 5 1 9 1 12 1 15 0.98169956815627235 
		19 0.98169956815627235;
createNode animCurveTL -n "animCurveTL208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.0091193615065254061 2 0.0091193615065254061 
		5 0.0091193615065254061 9 0.0091193615065254061 12 0.0091193615065254061 
		15 0 19 0;
createNode animCurveTL -n "animCurveTL209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.52907504014839257 2 0.52907504014839257 
		5 1.1514500087989867 9 1.2869201662834238 12 0.73258277931816107 15 0.33680928523177694 
		19 0.37858032454604201;
createNode animCurveTL -n "animCurveTL210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.8681688799685099 2 -2.8681688799685099 
		5 -3.1879211574403725 9 -3.4346703728584571 12 -3.7576701101453058 15 -4.1687497235636153 
		19 -4.1687497235636153;
createNode animCurveTA -n "animCurveTA591";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -117.84381686362197 2 -122.35138681083153 
		5 -99.171606951449704 9 -68.522598721536568 12 -55.788555672989702 15 -46.5808052095866 
		19 -51.320485913586595;
createNode animCurveTA -n "animCurveTA592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 11.948637237067985 2 11.948637237067981 
		5 5.7219641580000298 9 5.7219641580000413 12 5.721964158000044 15 0.8849959245695731 
		19 0.8849959245695731;
createNode animCurveTA -n "animCurveTA593";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.47261873570199 2 -1.47261873570199 
		5 -0.44683864569923853 9 -0.44683864569924076 12 -0.4468386456992412 15 0.88511203159019169 
		19 0.88511203159019147;
createNode animCurveTA -n "animCurveTA594";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA595";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA596";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 4.0984482521620249;
createNode animCurveTA -n "animCurveTA597";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 18.588300303494186;
createNode animCurveTA -n "animCurveTA598";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA599";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA600";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 -22.686733334985114;
createNode animCurveTA -n "animCurveTA601";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA602";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA603";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 1.0579251312417479e-005;
createNode animCurveTA -n "animCurveTA604";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA605";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA606";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 4.0984482535121209;
createNode animCurveTA -n "animCurveTA607";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 18.588300300216805;
createNode animCurveTA -n "animCurveTA608";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA609";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA610";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 -22.686733333057838;
createNode animCurveTA -n "animCurveTA611";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA612";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA613";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 1.0579251312417479e-005;
createNode animCurveTA -n "animCurveTA614";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA615";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA616";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 2.4782236286598103;
createNode animCurveTA -n "animCurveTA617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTL -n "animCurveTL211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 -0.99214331096561381 12 -0.99214331096561381 
		15 -0.69163884744780491;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  1 0.0055461442098021507 0.0033277194015681744;
	setAttr -s 3 ".kiy[0:2]"  0 0.99998462200164795 0.99999445676803589;
	setAttr -s 3 ".kox[0:2]"  1 0.0055461442098021507 0.0033277194015681744;
	setAttr -s 3 ".koy[0:2]"  0 0.99998462200164795 0.99999445676803589;
createNode animCurveTL -n "animCurveTL212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 -0.033841737269357866 12 -0.033841737269357866 
		15 0.24376503020897994;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  1 0.0060035879723727703 0.0036021943669766188;
	setAttr -s 3 ".kiy[0:2]"  0 0.99998199939727783 0.99999350309371948;
	setAttr -s 3 ".kox[0:2]"  1 0.0060035879723727703 0.0036021943669766188;
	setAttr -s 3 ".koy[0:2]"  0 0.99998199939727783 0.99999350309371948;
createNode animCurveTL -n "animCurveTL213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 -0.027201153963313806 12 -0.027201153963313806 
		15 0.44841910314659961;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  1 0.0035041745286434889 0.0021025130990892649;
	setAttr -s 3 ".kiy[0:2]"  0 0.99999386072158813 0.99999779462814331;
	setAttr -s 3 ".kox[0:2]"  1 0.0035041745286434889 0.0021025130990892649;
	setAttr -s 3 ".koy[0:2]"  0 0.99999386072158813 0.99999779462814331;
createNode animCurveTA -n "animCurveTA620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 -70.759742713658738;
createNode animCurveTA -n "animCurveTA621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 26.623081280451803;
createNode animCurveTA -n "animCurveTA622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 -49.096653183739235;
createNode animCurveTL -n "animCurveTL214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 0.99214413619678865 12 0.99214413619678865 
		15 0.71012400136723108;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  1 0.0059096403419971466 0.003545823972672224;
	setAttr -s 3 ".kiy[0:2]"  0 -0.99998253583908081 -0.99999374151229858;
	setAttr -s 3 ".kox[0:2]"  1 0.0059096403419971466 0.003545823972672224;
	setAttr -s 3 ".koy[0:2]"  0 -0.99998253583908081 -0.99999374151229858;
createNode animCurveTL -n "animCurveTL215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 -0.033851474715545553 12 -0.033851474715545553 
		15 0.47076628974155943;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  1 0.0033028118778020144 0.0019816940184682608;
	setAttr -s 3 ".kiy[0:2]"  0 0.99999451637268066 0.99999803304672241;
	setAttr -s 3 ".kox[0:2]"  1 0.0033028118778020144 0.0019816940184682608;
	setAttr -s 3 ".koy[0:2]"  0 0.99999451637268066 0.99999803304672241;
createNode animCurveTL -n "animCurveTL216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  10 -0.0272011762672867 12 -0.0272011762672867 
		15 0.075519476331700294;
	setAttr -s 3 ".kit[0:2]"  1 9 9;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[0:2]"  1 0.016223099082708359 0.0097346799448132515;
	setAttr -s 3 ".kiy[0:2]"  0 0.99986839294433594 0.99995261430740356;
	setAttr -s 3 ".kox[0:2]"  1 0.016223099082708359 0.0097346799448132515;
	setAttr -s 3 ".koy[0:2]"  0 0.99986839294433594 0.99995261430740356;
createNode animCurveTA -n "animCurveTA623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 -78.560435502307485;
createNode animCurveTA -n "animCurveTA624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 -29.584258420035471;
createNode animCurveTA -n "animCurveTA625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 60.92594460387344;
createNode animCurveTL -n "animCurveTL217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 -1.3705977767760478 12 -1.6965247282561242 
		15 -1.0734194700796693 19 -0.69415268877966596;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 0.0056082168594002724 0.0023278053849935532 
		0.0035155334044247866;
	setAttr -s 4 ".kiy[0:3]"  0 0.9999842643737793 0.99999731779098511 
		0.99999380111694336;
	setAttr -s 4 ".kox[0:3]"  1 0.0056082168594002724 0.0023278053849935532 
		0.0035155334044247866;
	setAttr -s 4 ".koy[0:3]"  0 0.9999842643737793 0.99999731779098511 
		0.99999380111694336;
createNode animCurveTL -n "animCurveTL218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 2.1618658070195953 12 1.4709436604587629 
		15 0.5669314000074378 19 0.25677228768617882;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 0.0010449745459482074 0.0019217459484934807 
		0.0042988290078938007;
	setAttr -s 4 ".kiy[0:3]"  0 -0.99999946355819702 -0.99999815225601196 
		-0.99999076128005981;
	setAttr -s 4 ".kox[0:3]"  1 0.0010449745459482074 0.0019217459484934807 
		0.0042988290078938007;
	setAttr -s 4 ".koy[0:3]"  0 -0.99999946355819702 -0.99999815225601196 
		-0.99999076128005981;
createNode animCurveTL -n "animCurveTL219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 -0.12044246479037771 12 -4.8858104665343749 
		15 -5.513803357309877 19 -5.8749380799072348;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 0.00030902188154868782 0.0023589744232594967 
		0.0036920409183949232;
	setAttr -s 4 ".kiy[0:3]"  0 -0.99999994039535522 -0.99999719858169556 
		-0.99999320507049561;
	setAttr -s 4 ".kox[0:3]"  1 0.00030902188154868782 0.0023589744232594967 
		0.0036920409183949232;
	setAttr -s 4 ".koy[0:3]"  0 -0.99999994039535522 -0.99999719858169556 
		-0.99999320507049561;
createNode animCurveTA -n "animCurveTA626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 -9.821242700822749 19 -9.821242700822749;
	setAttr -s 3 ".kit[1:2]"  3 9;
	setAttr -s 3 ".kot[1:2]"  3 9;
createNode animCurveTA -n "animCurveTA627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 8.8589084522817085 19 8.8589084522817085;
	setAttr -s 3 ".kit[1:2]"  3 9;
	setAttr -s 3 ".kot[1:2]"  3 9;
createNode animCurveTA -n "animCurveTA628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 4.296053949957793 19 4.296053949957793;
	setAttr -s 3 ".kit[1:2]"  3 9;
	setAttr -s 3 ".kot[1:2]"  3 9;
createNode animCurveTL -n "animCurveTL220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 1.3705978542308779 12 1.3705978542308779 
		15 0.83980188004008882 19 0.83980188004008882;
	setAttr -s 4 ".kit[0:3]"  1 9 3 9;
	setAttr -s 4 ".kot[0:3]"  1 9 3 9;
	setAttr -s 4 ".kix[0:3]"  1 0.0031399228610098362 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 -0.99999505281448364 0 0;
	setAttr -s 4 ".kox[0:3]"  1 0.0031399228610098362 1 1;
	setAttr -s 4 ".koy[0:3]"  0 -0.99999505281448364 0 0;
createNode animCurveTL -n "animCurveTL221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 2.1618621235956237 12 2.1618621235956237 
		15 0.18904845089899255 19 0.18904845089899255;
	setAttr -s 4 ".kit[0:3]"  1 9 3 9;
	setAttr -s 4 ".kot[0:3]"  1 9 3 9;
	setAttr -s 4 ".kix[0:3]"  1 0.00084481673547998071 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 -0.99999964237213135 0 0;
	setAttr -s 4 ".kox[0:3]"  1 0.00084481673547998071 1 1;
	setAttr -s 4 ".koy[0:3]"  0 -0.99999964237213135 0 0;
createNode animCurveTL -n "animCurveTL222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 -0.12044250833667494 12 -0.12044250833667494 
		15 -5.983030082292613 19 -5.983030082292613;
	setAttr -s 4 ".kit[0:3]"  1 9 3 9;
	setAttr -s 4 ".kot[0:3]"  1 9 3 9;
	setAttr -s 4 ".kix[0:3]"  1 0.00028428857331164181 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 -0.99999994039535522 0 0;
	setAttr -s 4 ".kox[0:3]"  1 0.00028428857331164181 1 1;
	setAttr -s 4 ".koy[0:3]"  0 -0.99999994039535522 0 0;
createNode animCurveTA -n "animCurveTA629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 -47.334284439592878 19 
		-47.334284439592878;
	setAttr -s 3 ".kit[1:2]"  3 9;
	setAttr -s 3 ".kot[1:2]"  3 9;
createNode animCurveTA -n "animCurveTA630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 37.043101738907701 19 37.043101738907701;
	setAttr -s 3 ".kit[1:2]"  3 9;
	setAttr -s 3 ".kot[1:2]"  3 9;
createNode animCurveTA -n "animCurveTA631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 -52.740024725895566 19 
		-52.740024725895566;
	setAttr -s 3 ".kit[1:2]"  3 9;
	setAttr -s 3 ".kot[1:2]"  3 9;
createNode animCurveTL -n "animCurveTL223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 0 12 0 15 0.99925943057965894 
		19 0.99925943057965894;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 0.0016678995452821255 0.002335056196898222 
		1;
	setAttr -s 4 ".kiy[0:3]"  0 0.99999862909317017 0.99999725818634033 
		0;
	setAttr -s 4 ".kox[0:3]"  1 0.0016678995452821255 0.002335056196898222 
		1;
	setAttr -s 4 ".koy[0:3]"  0 0.99999862909317017 0.99999725818634033 
		0;
createNode animCurveTL -n "animCurveTL224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 0 12 0 15 -1.1241231302067372 
		19 -1.1241231302067372;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 0.0014826355036348104 0.0020756875164806843 
		1;
	setAttr -s 4 ".kiy[0:3]"  0 -0.99999892711639404 -0.99999785423278809 
		0;
	setAttr -s 4 ".kox[0:3]"  1 0.0014826355036348104 0.0020756875164806843 
		1;
	setAttr -s 4 ".koy[0:3]"  0 -0.99999892711639404 -0.99999785423278809 
		0;
createNode animCurveTL -n "animCurveTL225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 -1 12 -1 15 -2.0075305717115923 
		19 -2.0075305717115923;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 0.0016542071243748069 0.0023158870171755552 
		1;
	setAttr -s 4 ".kiy[0:3]"  0 -0.99999862909317017 -0.99999731779098511 
		0;
	setAttr -s 4 ".kox[0:3]"  1 0.0016542071243748069 0.0023158870171755552 
		1;
	setAttr -s 4 ".koy[0:3]"  0 -0.99999862909317017 -0.99999731779098511 
		0;
createNode animCurveTL -n "animCurveTL226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 0 12 0 15 -0.59788775323863297 
		19 -0.59788775323863297;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 0.0027875802479684353 0.0039025980513542891 
		1;
	setAttr -s 4 ".kiy[0:3]"  0 -0.9999961256980896 -0.99999237060546875 
		0;
	setAttr -s 4 ".kox[0:3]"  1 0.0027875802479684353 0.0039025980513542891 
		1;
	setAttr -s 4 ".koy[0:3]"  0 -0.9999961256980896 -0.99999237060546875 
		0;
createNode animCurveTL -n "animCurveTL227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 0 12 0 15 -1.6361478719279683 
		19 -1.6361478719279683;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 0.0010186523431912065 0.0014261124888435006 
		1;
	setAttr -s 4 ".kiy[0:3]"  0 -0.99999946355819702 -0.99999898672103882 
		0;
	setAttr -s 4 ".kox[0:3]"  1 0.0010186523431912065 0.0014261124888435006 
		1;
	setAttr -s 4 ".koy[0:3]"  0 -0.99999946355819702 -0.99999898672103882 
		0;
createNode animCurveTL -n "animCurveTL228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 -1 12 -1 15 -2.2967427684127548 
		19 -2.2967427684127548;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 0.0012852705549448729 0.0017993773799389601 
		1;
	setAttr -s 4 ".kiy[0:3]"  0 -0.99999916553497314 -0.99999839067459106 
		0;
	setAttr -s 4 ".kox[0:3]"  1 0.0012852705549448729 0.0017993773799389601 
		1;
	setAttr -s 4 ".koy[0:3]"  0 -0.99999916553497314 -0.99999839067459106 
		0;
createNode animCurveTA -n "animCurveTA632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -8.3722158444725991 2 6.8619270713577576 
		5 11.910122171492144 9 8.719760997765631 12 -0.86682362046053774 15 80.425561779386882 
		19 80.425561779386882;
createNode animCurveTA -n "animCurveTA633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -23.977773843939509 2 26.271568733472723 
		5 34.847436509543812 9 -19.172371927598537 12 -36.420165432649057 15 -30.44506412614497 
		19 -30.44506412614497;
createNode animCurveTA -n "animCurveTA634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 33.682233492227084 2 -28.478653283920352 
		5 -57.340025714492775 9 -15.284065710194218 12 -37.142136265893669 15 -71.256105225350495 
		19 -71.256105225350495;
createNode animCurveTA -n "animCurveTA635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -25.419177015304651 2 35.50840155485146 
		5 26.194228625572833 9 30.531553251488187 12 -13.873454918735659 15 43.141146641774462 
		19 43.141146641774462;
createNode animCurveTA -n "animCurveTA636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -41.133378951685579 2 18.534260088769848 
		5 1.6125065100282923 9 -38.582935464452937 12 -57.65471620728129 15 -34.275123249513904 
		19 -34.275123249513904;
createNode animCurveTA -n "animCurveTA637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.165866266794364 2 2.2170566423766038 
		5 -44.957460230307618 9 -32.931696609933702 12 5.2163725894863555 15 -49.798186726856571 
		19 -49.798186726856571;
createNode animCurveTA -n "animCurveTA638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 39.038962484432531 2 12.874514918270977 
		5 12.874514918270977 9 60.256622455879089 12 79.642588495982807 15 23.279099769107543 
		19 23.279099769107543;
createNode animCurveTA -n "animCurveTA639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 63.89762232629036 2 18.197981956320611 
		5 45.248375301206067 9 45.248375301206067 12 87.940749370014572 15 21.701008910528319 
		19 21.701008910528319;
createNode animCurveTA -n "animCurveTA640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -54.236822617544803 2 -54.236822617544803 
		5 23.823134639673615 9 23.823134639673615 12 23.823134639673619 15 -11.431503848920924 
		19 -11.431503848920924;
createNode animCurveTA -n "animCurveTA641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -21.870691107419802 2 -21.870691107419802 
		5 -6.0806429538034328 9 -6.0806429538034328 12 -6.0806429538034346 15 56.613259276433965 
		19 56.613259276433965;
createNode animCurveTA -n "animCurveTA642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.410846653408855 2 15.410846653408855 
		5 10.96112701689211 9 10.96112701689211 12 10.961127016892112 15 13.131642679464067 
		19 13.131642679464067;
createNode animCurveTA -n "animCurveTA643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.0447427744579891 2 75.754739033432756 
		5 24.991091773627122 9 24.991091773627122 12 24.991091773627122 15 -35.828077252198852 
		19 -35.828077252198852;
createNode animCurveTA -n "animCurveTA644";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 5.5429207840541244 2 -8.1079546283831778 
		5 -8.107954628383192 9 -8.107954628383192 12 -8.1079546283831938 15 7.8286751959834691 
		19 7.8286751959834691;
createNode animCurveTA -n "animCurveTA645";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 34.868956102818473 2 -15.142398251678113 
		5 -15.142398251678118 9 -15.142398251678118 12 -15.142398251678118 15 -17.722466912710736 
		19 -17.722466912710736;
createNode animCurveTA -n "animCurveTA646";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -32.123718040735945 2 -32.123718040735945 
		5 -32.123718040735945 9 -32.123718040735945 12 -32.123718040735959 15 -36.628454700917274 
		19 -36.628454700917274;
createNode animCurveTA -n "animCurveTA647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 19.407819173437478 2 19.407819173437478 
		5 19.407819173437478 9 19.407819173437478 12 19.407819173437481 15 15.180891733866945 
		19 15.180891733866945;
createNode animCurveTA -n "animCurveTA648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 4.4751336445171193 2 4.4751336445171193 
		5 4.4751336445171193 9 4.4751336445171193 12 4.4751336445171193 15 -0.072787087017037025 
		19 -0.072787087017037025;
createNode animCurveTA -n "animCurveTA649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 0 19 0;
createNode animCurveTA -n "animCurveTA650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 0 19 0;
createNode animCurveTA -n "animCurveTA651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -11.433734901667266 2 -11.433734901667266 
		5 -11.433734901667266 9 -11.433734901667266 12 -11.43373490166727 15 -19.69381977483518 
		19 -19.69381977483518;
createNode animCurveTA -n "animCurveTA652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 15 0;
createNode animCurveTA -n "animCurveTA655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 27.70521891534332 15 27.70521891534332;
createNode animCurveTA -n "animCurveTA656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 43.35103828268312 15 43.35103828268312;
createNode animCurveTA -n "animCurveTA657";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 54.235722998003197 15 54.235722998003197;
createNode animCurveTA -n "animCurveTA658";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 39.038703285259977 15 39.038703285259977;
createNode animCurveTA -n "animCurveTA659";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 72.755037061650995 15 72.755037061650995;
createNode animCurveTA -n "animCurveTA660";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 38.926480273156798 15 38.926480273156798;
createNode animCurveTA -n "animCurveTA661";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 0 19 0;
createNode animCurveTA -n "animCurveTA662";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 0 19 0;
createNode animCurveTA -n "animCurveTA663";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -9.6043099083038648 2 -9.6043099083038648 
		5 -9.6043099083038648 9 -9.6043099083038648 12 -9.6043099083038648 15 -14.841309524368915 
		19 -14.841309524368915;
createNode animCurveTA -n "animCurveTA664";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 3.1198943483277444 2 3.1198943483277444 
		5 3.1198943483277444 9 3.1198943483277444 12 3.1198943483277444 15 3.1198943483277448 
		19 3.1198943483277448;
createNode animCurveTA -n "animCurveTA665";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.7238169885910806 2 1.7238169885910806 
		5 1.7238169885910806 9 1.7238169885910806 12 1.723816988591081 15 1.7238169885910808 
		19 1.7238169885910808;
createNode animCurveTA -n "animCurveTA666";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.268388134198538 2 12.268388134198538 
		5 12.268388134198538 9 12.268388134198538 12 12.268388134198538 15 12.268388134198538 
		19 12.268388134198538;
createNode animCurveTA -n "animCurveTA667";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 6.2649641345144982 2 4.3792227256952083 
		5 -6.174601823043262 9 5.5003912180703773 12 0.41771815725513101 15 4.3455899438596957 
		19 4.5487561292321317;
createNode animCurveTA -n "animCurveTA668";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 5.780294047116163 2 7.3112839305619053 
		5 5.3349485649520059 9 7.3427228592247538 12 1.4517181918272679 15 -2.0211929929175145 
		19 -1.5083553877193399;
createNode animCurveTA -n "animCurveTA669";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 21.274336518663382 2 4.8458125891459387 
		5 -18.053793752528659 9 5.3515714667445593 12 16.50991249947349 15 9.1303904739519428 
		19 2.540615508187559;
createNode animCurveTA -n "animCurveTA670";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 0 19 0;
createNode animCurveTA -n "animCurveTA671";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 0 19 0;
createNode animCurveTA -n "animCurveTA672";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 14.898647627575579 5 14.898647627575579 
		9 14.898647627575579 12 14.898647627575579 15 0 19 0;
createNode animCurveTA -n "animCurveTA673";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 22.334659718447345 2 22.338466481041845 
		5 11.456752355681559 9 3.5955899922493053 12 3.5955899922493062 15 4.5948127575308488 
		19 3.9837240428089111;
createNode animCurveTA -n "animCurveTA674";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 14.88860504567513 2 14.882720778967039 
		5 24.202881440026243 9 4.6959726176734558 12 4.6959726176734575 15 6.2727765341536816 
		19 6.676633875432838;
createNode animCurveTA -n "animCurveTA675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 28.394145862336995 2 28.408964454747306 
		5 -3.2783717394768646 9 10.032621196260985 12 10.032621196260987 15 27.984443909870059 
		19 22.569305093982329;
createNode animCurveTA -n "animCurveTA676";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 10.848910062280096 2 11.98685505624049 
		5 13.464379261934385 9 0.82664351209015052 12 0.8266435120901503 15 7.1522494975013187 
		19 7.1522494975013187;
createNode animCurveTA -n "animCurveTA677";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -9.6857689857774592 2 -8.2276460027505074 
		5 -5.4447707464457205 9 -5.4419935515154378 12 -5.4419935515154378 15 -1.4349096479040127 
		19 -1.4349096479040127;
createNode animCurveTA -n "animCurveTA678";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 7.31134628381818 2 0.012452880661499691 
		5 -12.349286551846276 9 5.8122340998814881 12 5.8122340998814881 15 26.122606478441046 
		19 26.122606478441046;
createNode animCurveTA -n "animCurveTA679";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 0 19 0;
createNode animCurveTA -n "animCurveTA680";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 0 19 0;
createNode animCurveTA -n "animCurveTA681";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 21.472939016776969 2 21.472939016776969 
		5 21.472939016776969 9 21.472939016776969 12 21.472939016776973 15 16.736721183175977 
		19 16.736721183175977;
createNode animCurveTA -n "animCurveTA682";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -15.564086868905925 2 -15.564086868905925 
		5 -15.564086868905925 9 -15.564086868905925 12 -15.564086868905928 15 -19.916813043140671 
		19 -19.916813043140671;
createNode animCurveTA -n "animCurveTA683";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 5.9119201843313247 2 5.9119201843313247 
		5 5.9119201843313247 9 5.9119201843313247 12 5.9119201843313265 15 2.1381503000571311 
		19 2.1381503000571311;
createNode animCurveTA -n "animCurveTA684";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.89181587725581968 2 -0.89181587725581968 
		5 -0.89181587725581968 9 -0.89181587725581968 12 -0.89181587725581979 15 
		-6.3333534086058831 19 -6.3333534086058831;
createNode animCurveTA -n "animCurveTA685";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 0 19 0;
createNode animCurveTA -n "animCurveTA686";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 0 19 0;
createNode animCurveTA -n "animCurveTA687";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 21.151890972437133 2 21.151890972437133 
		5 21.151890972437133 9 21.151890972437133 12 21.151890972437133 15 17.545620107018433 
		19 17.545620107018433;
createNode clipLibrary -n "clipLibrary4";
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
	setAttr -s 218 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".top" 478;
	setAttr ".rght" 638;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
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
connectAttr "brt_hit_by_car_landSource.st" "clipLibrary4.st[0]";
connectAttr "brt_hit_by_car_landSource.du" "clipLibrary4.du[0]";
connectAttr "animCurveTL188.a" "clipLibrary4.cel[0].cev[0].cevr";
connectAttr "animCurveTL189.a" "clipLibrary4.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary4.cel[0].cev[2].cevr"
		;
connectAttr "brt_Motion_Root_translateY1.a" "clipLibrary4.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary4.cel[0].cev[4].cevr"
		;
connectAttr "brt_Motion_Root_rotateY1.a" "clipLibrary4.cel[0].cev[5].cevr"
		;
connectAttr "animCurveTU25.a" "clipLibrary4.cel[0].cev[6].cevr";
connectAttr "animCurveTU26.a" "clipLibrary4.cel[0].cev[7].cevr";
connectAttr "animCurveTU27.a" "clipLibrary4.cel[0].cev[8].cevr";
connectAttr "animCurveTU28.a" "clipLibrary4.cel[0].cev[9].cevr";
connectAttr "animCurveTU29.a" "clipLibrary4.cel[0].cev[10].cevr";
connectAttr "animCurveTU30.a" "clipLibrary4.cel[0].cev[11].cevr";
connectAttr "animCurveTU31.a" "clipLibrary4.cel[0].cev[12].cevr";
connectAttr "animCurveTU32.a" "clipLibrary4.cel[0].cev[13].cevr";
connectAttr "animCurveTA570.a" "clipLibrary4.cel[0].cev[14].cevr";
connectAttr "animCurveTA571.a" "clipLibrary4.cel[0].cev[15].cevr";
connectAttr "animCurveTA572.a" "clipLibrary4.cel[0].cev[16].cevr";
connectAttr "animCurveTL193.a" "clipLibrary4.cel[0].cev[17].cevr";
connectAttr "animCurveTL194.a" "clipLibrary4.cel[0].cev[18].cevr";
connectAttr "animCurveTL195.a" "clipLibrary4.cel[0].cev[19].cevr";
connectAttr "animCurveTL196.a" "clipLibrary4.cel[0].cev[20].cevr";
connectAttr "animCurveTL197.a" "clipLibrary4.cel[0].cev[21].cevr";
connectAttr "animCurveTL198.a" "clipLibrary4.cel[0].cev[22].cevr";
connectAttr "animCurveTA573.a" "clipLibrary4.cel[0].cev[23].cevr";
connectAttr "animCurveTA574.a" "clipLibrary4.cel[0].cev[24].cevr";
connectAttr "animCurveTA575.a" "clipLibrary4.cel[0].cev[25].cevr";
connectAttr "animCurveTL199.a" "clipLibrary4.cel[0].cev[26].cevr";
connectAttr "animCurveTL200.a" "clipLibrary4.cel[0].cev[27].cevr";
connectAttr "animCurveTL201.a" "clipLibrary4.cel[0].cev[28].cevr";
connectAttr "animCurveTA576.a" "clipLibrary4.cel[0].cev[29].cevr";
connectAttr "animCurveTA577.a" "clipLibrary4.cel[0].cev[30].cevr";
connectAttr "animCurveTA578.a" "clipLibrary4.cel[0].cev[31].cevr";
connectAttr "animCurveTA579.a" "clipLibrary4.cel[0].cev[32].cevr";
connectAttr "animCurveTA580.a" "clipLibrary4.cel[0].cev[33].cevr";
connectAttr "animCurveTA581.a" "clipLibrary4.cel[0].cev[34].cevr";
connectAttr "animCurveTA582.a" "clipLibrary4.cel[0].cev[35].cevr";
connectAttr "animCurveTA583.a" "clipLibrary4.cel[0].cev[36].cevr";
connectAttr "animCurveTA584.a" "clipLibrary4.cel[0].cev[37].cevr";
connectAttr "animCurveTA585.a" "clipLibrary4.cel[0].cev[38].cevr";
connectAttr "animCurveTA586.a" "clipLibrary4.cel[0].cev[39].cevr";
connectAttr "animCurveTA587.a" "clipLibrary4.cel[0].cev[40].cevr";
connectAttr "animCurveTA588.a" "clipLibrary4.cel[0].cev[41].cevr";
connectAttr "animCurveTA589.a" "clipLibrary4.cel[0].cev[42].cevr";
connectAttr "animCurveTA590.a" "clipLibrary4.cel[0].cev[43].cevr";
connectAttr "animCurveTL202.a" "clipLibrary4.cel[0].cev[44].cevr";
connectAttr "animCurveTL203.a" "clipLibrary4.cel[0].cev[45].cevr";
connectAttr "animCurveTL204.a" "clipLibrary4.cel[0].cev[46].cevr";
connectAttr "animCurveTL205.a" "clipLibrary4.cel[0].cev[47].cevr";
connectAttr "animCurveTL206.a" "clipLibrary4.cel[0].cev[48].cevr";
connectAttr "animCurveTL207.a" "clipLibrary4.cel[0].cev[49].cevr";
connectAttr "animCurveTL208.a" "clipLibrary4.cel[0].cev[50].cevr";
connectAttr "animCurveTL209.a" "clipLibrary4.cel[0].cev[51].cevr";
connectAttr "animCurveTL210.a" "clipLibrary4.cel[0].cev[52].cevr";
connectAttr "animCurveTA591.a" "clipLibrary4.cel[0].cev[53].cevr";
connectAttr "animCurveTA592.a" "clipLibrary4.cel[0].cev[54].cevr";
connectAttr "animCurveTA593.a" "clipLibrary4.cel[0].cev[55].cevr";
connectAttr "animCurveTA594.a" "clipLibrary4.cel[0].cev[56].cevr";
connectAttr "animCurveTA595.a" "clipLibrary4.cel[0].cev[57].cevr";
connectAttr "animCurveTA596.a" "clipLibrary4.cel[0].cev[58].cevr";
connectAttr "animCurveTA597.a" "clipLibrary4.cel[0].cev[59].cevr";
connectAttr "animCurveTA598.a" "clipLibrary4.cel[0].cev[60].cevr";
connectAttr "animCurveTA599.a" "clipLibrary4.cel[0].cev[61].cevr";
connectAttr "animCurveTA600.a" "clipLibrary4.cel[0].cev[62].cevr";
connectAttr "animCurveTA601.a" "clipLibrary4.cel[0].cev[63].cevr";
connectAttr "animCurveTA602.a" "clipLibrary4.cel[0].cev[64].cevr";
connectAttr "animCurveTA603.a" "clipLibrary4.cel[0].cev[65].cevr";
connectAttr "animCurveTA604.a" "clipLibrary4.cel[0].cev[66].cevr";
connectAttr "animCurveTA605.a" "clipLibrary4.cel[0].cev[67].cevr";
connectAttr "animCurveTA606.a" "clipLibrary4.cel[0].cev[68].cevr";
connectAttr "animCurveTA607.a" "clipLibrary4.cel[0].cev[69].cevr";
connectAttr "animCurveTA608.a" "clipLibrary4.cel[0].cev[70].cevr";
connectAttr "animCurveTA609.a" "clipLibrary4.cel[0].cev[71].cevr";
connectAttr "animCurveTA610.a" "clipLibrary4.cel[0].cev[72].cevr";
connectAttr "animCurveTA611.a" "clipLibrary4.cel[0].cev[73].cevr";
connectAttr "animCurveTA612.a" "clipLibrary4.cel[0].cev[74].cevr";
connectAttr "animCurveTA613.a" "clipLibrary4.cel[0].cev[75].cevr";
connectAttr "animCurveTA614.a" "clipLibrary4.cel[0].cev[76].cevr";
connectAttr "animCurveTA615.a" "clipLibrary4.cel[0].cev[77].cevr";
connectAttr "animCurveTA616.a" "clipLibrary4.cel[0].cev[78].cevr";
connectAttr "animCurveTA617.a" "clipLibrary4.cel[0].cev[79].cevr";
connectAttr "animCurveTA618.a" "clipLibrary4.cel[0].cev[80].cevr";
connectAttr "animCurveTA619.a" "clipLibrary4.cel[0].cev[81].cevr";
connectAttr "animCurveTL211.a" "clipLibrary4.cel[0].cev[82].cevr";
connectAttr "animCurveTL212.a" "clipLibrary4.cel[0].cev[83].cevr";
connectAttr "animCurveTL213.a" "clipLibrary4.cel[0].cev[84].cevr";
connectAttr "animCurveTA620.a" "clipLibrary4.cel[0].cev[85].cevr";
connectAttr "animCurveTA621.a" "clipLibrary4.cel[0].cev[86].cevr";
connectAttr "animCurveTA622.a" "clipLibrary4.cel[0].cev[87].cevr";
connectAttr "animCurveTL214.a" "clipLibrary4.cel[0].cev[88].cevr";
connectAttr "animCurveTL215.a" "clipLibrary4.cel[0].cev[89].cevr";
connectAttr "animCurveTL216.a" "clipLibrary4.cel[0].cev[90].cevr";
connectAttr "animCurveTA623.a" "clipLibrary4.cel[0].cev[91].cevr";
connectAttr "animCurveTA624.a" "clipLibrary4.cel[0].cev[92].cevr";
connectAttr "animCurveTA625.a" "clipLibrary4.cel[0].cev[93].cevr";
connectAttr "animCurveTL217.a" "clipLibrary4.cel[0].cev[94].cevr";
connectAttr "animCurveTL218.a" "clipLibrary4.cel[0].cev[95].cevr";
connectAttr "animCurveTL219.a" "clipLibrary4.cel[0].cev[96].cevr";
connectAttr "animCurveTA626.a" "clipLibrary4.cel[0].cev[97].cevr";
connectAttr "animCurveTA627.a" "clipLibrary4.cel[0].cev[98].cevr";
connectAttr "animCurveTA628.a" "clipLibrary4.cel[0].cev[99].cevr";
connectAttr "animCurveTL220.a" "clipLibrary4.cel[0].cev[100].cevr";
connectAttr "animCurveTL221.a" "clipLibrary4.cel[0].cev[101].cevr";
connectAttr "animCurveTL222.a" "clipLibrary4.cel[0].cev[102].cevr";
connectAttr "animCurveTA629.a" "clipLibrary4.cel[0].cev[103].cevr";
connectAttr "animCurveTA630.a" "clipLibrary4.cel[0].cev[104].cevr";
connectAttr "animCurveTA631.a" "clipLibrary4.cel[0].cev[105].cevr";
connectAttr "animCurveTL223.a" "clipLibrary4.cel[0].cev[106].cevr";
connectAttr "animCurveTL224.a" "clipLibrary4.cel[0].cev[107].cevr";
connectAttr "animCurveTL225.a" "clipLibrary4.cel[0].cev[108].cevr";
connectAttr "animCurveTL226.a" "clipLibrary4.cel[0].cev[109].cevr";
connectAttr "animCurveTL227.a" "clipLibrary4.cel[0].cev[110].cevr";
connectAttr "animCurveTL228.a" "clipLibrary4.cel[0].cev[111].cevr";
connectAttr "animCurveTA632.a" "clipLibrary4.cel[0].cev[112].cevr";
connectAttr "animCurveTA633.a" "clipLibrary4.cel[0].cev[113].cevr";
connectAttr "animCurveTA634.a" "clipLibrary4.cel[0].cev[114].cevr";
connectAttr "animCurveTA635.a" "clipLibrary4.cel[0].cev[115].cevr";
connectAttr "animCurveTA636.a" "clipLibrary4.cel[0].cev[116].cevr";
connectAttr "animCurveTA637.a" "clipLibrary4.cel[0].cev[117].cevr";
connectAttr "animCurveTA638.a" "clipLibrary4.cel[0].cev[118].cevr";
connectAttr "animCurveTA639.a" "clipLibrary4.cel[0].cev[119].cevr";
connectAttr "animCurveTA640.a" "clipLibrary4.cel[0].cev[120].cevr";
connectAttr "animCurveTA641.a" "clipLibrary4.cel[0].cev[121].cevr";
connectAttr "animCurveTA642.a" "clipLibrary4.cel[0].cev[122].cevr";
connectAttr "animCurveTA643.a" "clipLibrary4.cel[0].cev[123].cevr";
connectAttr "animCurveTA644.a" "clipLibrary4.cel[0].cev[124].cevr";
connectAttr "animCurveTA645.a" "clipLibrary4.cel[0].cev[125].cevr";
connectAttr "animCurveTA646.a" "clipLibrary4.cel[0].cev[126].cevr";
connectAttr "animCurveTA647.a" "clipLibrary4.cel[0].cev[127].cevr";
connectAttr "animCurveTA648.a" "clipLibrary4.cel[0].cev[128].cevr";
connectAttr "animCurveTA649.a" "clipLibrary4.cel[0].cev[129].cevr";
connectAttr "animCurveTA650.a" "clipLibrary4.cel[0].cev[130].cevr";
connectAttr "animCurveTA651.a" "clipLibrary4.cel[0].cev[131].cevr";
connectAttr "animCurveTA652.a" "clipLibrary4.cel[0].cev[132].cevr";
connectAttr "animCurveTA653.a" "clipLibrary4.cel[0].cev[133].cevr";
connectAttr "animCurveTA654.a" "clipLibrary4.cel[0].cev[134].cevr";
connectAttr "animCurveTA655.a" "clipLibrary4.cel[0].cev[135].cevr";
connectAttr "animCurveTA656.a" "clipLibrary4.cel[0].cev[136].cevr";
connectAttr "animCurveTA657.a" "clipLibrary4.cel[0].cev[137].cevr";
connectAttr "animCurveTA658.a" "clipLibrary4.cel[0].cev[138].cevr";
connectAttr "animCurveTA659.a" "clipLibrary4.cel[0].cev[139].cevr";
connectAttr "animCurveTA660.a" "clipLibrary4.cel[0].cev[140].cevr";
connectAttr "animCurveTA661.a" "clipLibrary4.cel[0].cev[141].cevr";
connectAttr "animCurveTA662.a" "clipLibrary4.cel[0].cev[142].cevr";
connectAttr "animCurveTA663.a" "clipLibrary4.cel[0].cev[143].cevr";
connectAttr "animCurveTA664.a" "clipLibrary4.cel[0].cev[144].cevr";
connectAttr "animCurveTA665.a" "clipLibrary4.cel[0].cev[145].cevr";
connectAttr "animCurveTA666.a" "clipLibrary4.cel[0].cev[146].cevr";
connectAttr "animCurveTA667.a" "clipLibrary4.cel[0].cev[147].cevr";
connectAttr "animCurveTA668.a" "clipLibrary4.cel[0].cev[148].cevr";
connectAttr "animCurveTA669.a" "clipLibrary4.cel[0].cev[149].cevr";
connectAttr "animCurveTA670.a" "clipLibrary4.cel[0].cev[150].cevr";
connectAttr "animCurveTA671.a" "clipLibrary4.cel[0].cev[151].cevr";
connectAttr "animCurveTA672.a" "clipLibrary4.cel[0].cev[152].cevr";
connectAttr "animCurveTA673.a" "clipLibrary4.cel[0].cev[153].cevr";
connectAttr "animCurveTA674.a" "clipLibrary4.cel[0].cev[154].cevr";
connectAttr "animCurveTA675.a" "clipLibrary4.cel[0].cev[155].cevr";
connectAttr "animCurveTA676.a" "clipLibrary4.cel[0].cev[156].cevr";
connectAttr "animCurveTA677.a" "clipLibrary4.cel[0].cev[157].cevr";
connectAttr "animCurveTA678.a" "clipLibrary4.cel[0].cev[158].cevr";
connectAttr "animCurveTA679.a" "clipLibrary4.cel[0].cev[159].cevr";
connectAttr "animCurveTA680.a" "clipLibrary4.cel[0].cev[160].cevr";
connectAttr "animCurveTA681.a" "clipLibrary4.cel[0].cev[161].cevr";
connectAttr "animCurveTA682.a" "clipLibrary4.cel[0].cev[162].cevr";
connectAttr "animCurveTA683.a" "clipLibrary4.cel[0].cev[163].cevr";
connectAttr "animCurveTA684.a" "clipLibrary4.cel[0].cev[164].cevr";
connectAttr "animCurveTA685.a" "clipLibrary4.cel[0].cev[165].cevr";
connectAttr "animCurveTA686.a" "clipLibrary4.cel[0].cev[166].cevr";
connectAttr "animCurveTA687.a" "clipLibrary4.cel[0].cev[167].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
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
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[11].olnk";
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
// End of brt_hit_by_car_land.ma
