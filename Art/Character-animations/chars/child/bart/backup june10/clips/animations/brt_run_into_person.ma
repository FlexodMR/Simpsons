//Maya ASCII 4.0 scene
//Name: brt_run_into_person.ma
//Last modified: Tue, May 28, 2002 03:14:28 PM
requires maya "4.0";
requires "p3dSimpleShader" "16.4";
requires "p3dDeformer" "16.0.0.1";
requires "p3dmayaexp" "16.15";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_run_into_personSource";
	setAttr ".ihi" 0;
	setAttr ".du" 25;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL180";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL181";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -0.02287243591419692 1 -0.024226725347697035 
		2 -0.027386734025543778 3 -0.030998172513756753 4 -0.033706751378355555 5 
		-0.034158181188721791 6 -0.033706751378355555 7 -0.033706751378355555 8 -0.033706751378355555 
		9 -0.033706751378355555 10 -0.033706751378355555 11 -0.033706751378355555 
		12 -0.033706751378355555 13 -0.033706751378355555 14 -0.033706751378355555 
		15 -0.033706751378355555 16 -0.033366391522942081 17 -0.033706751378355555 
		18 -0.035972271648175312 19 -0.039152509042961373 20 -0.042614308358167569 
		21 -0.046470245904775387 22 -0.049719017397374249 23 -0.051693460449380634 
		24 -0.052673123841442557 25 -0.052937556354208076;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0.50460083466800842 1 0.56901037760572193 
		2 0.72290392930031599 3 0.9072788740739719 4 1.0631325962488705 5 1.1727158876049317 
		6 1.2361542760077389 7 1.2254237450897061 8 1.1816756636823009 9 1.1388596797699877 
		10 1.09055692796868 11 1.0449290615978815 12 0.99218417780026091 13 0.92720306403687092 
		14 0.85670170859678485 15 0.78252237465321084 16 0.70143430440336585 17 0.61516298324975482 
		18 0.52427585854573733 19 0.43943942404894698 20 0.36553479482616558 21 0.32048556412293094 
		22 0.31065311684820257 23 0.30957226625576423 24 0.31199205429835641 25 0.31266152292871935;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0;
createNode animCurveTU -n "animCurveTU33";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU34";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU35";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU36";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU37";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU38";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU39";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU40";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA468";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 1 0 1.005 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 5 1;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "animCurveTA469";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 1 0 1.005 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 5 1;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "animCurveTA470";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 1 0 1.005 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 5 1;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "animCurveTL185";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 1 0 1.005 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 5 1;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "animCurveTL186";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 1 0 1.005 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 5 1;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "animCurveTL187";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 1 0 1.005 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 5 1;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "animCurveTL188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.19763288944005308 4 -0.19763288944005308 
		6 -0.19763288944005308 8 -0.19763288944005308 10 -0.19763288944005308 12 
		-0.19763288944005308 15 -0.19763288944005308 17 -0.20394489686739534 19 -0.22835132558645202 
		21 -0.25444095628613339 25 -0.26454016861507795;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 1 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 1 9 3;
	setAttr -s 11 ".kix[8:10]"  0.020203847438097 0.055181447416543961 
		1;
	setAttr -s 11 ".kiy[8:10]"  -0.99979585409164429 -0.99847632646560669 
		0;
	setAttr -s 11 ".kox[8:10]"  0.020204050466418266 0.055181447416543961 
		1;
	setAttr -s 11 ".koy[8:10]"  -0.99979585409164429 -0.99847632646560669 
		0;
createNode animCurveTL -n "animCurveTL189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.18919812301601746 4 0.14552605892239473 
		6 0.14552605892239473 8 0.1730601152643288 10 0.1179920025804608 12 0.15653968145916874 
		15 0.28319634063206595 17 0.26667590682690551 19 0.14001924765400822 21 0.14001924765400822 
		25 0.13806192026723146;
	setAttr -s 11 ".kit[0:10]"  3 9 3 9 9 9 9 
		9 3 3 3;
	setAttr -s 11 ".kot[0:10]"  3 9 3 9 9 9 9 
		9 3 3 3;
createNode animCurveTL -n "animCurveTL190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.99077043779297014 4 1.1961929756633671 
		6 1.1961929756633671 8 1.8184626489910816 10 1.9341056856272059 12 1.8404898940646288 
		15 1.1851793531265946 17 0.48030751077307954 19 0.43625302062598426 21 0.43625302062598426 
		25 0.38676222231050589;
	setAttr -s 11 ".kit[0:10]"  3 9 3 9 9 9 9 
		1 3 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 3 9 9 9 9 
		1 3 9 9;
	setAttr -s 11 ".kix[7:10]"  0.0028174612671136856 1 0.040378592908382416 
		0.026931261643767357;
	setAttr -s 11 ".kiy[7:10]"  -0.99999600648880005 0 -0.99918442964553833 
		-0.99963730573654175;
	setAttr -s 11 ".kox[7:10]"  0.0028174591716378927 1 0.040378592908382416 
		0.026931261643767357;
	setAttr -s 11 ".koy[7:10]"  -0.99999600648880005 0 -0.99918442964553833 
		-0.99963730573654175;
createNode animCurveTA -n "animCurveTA471";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -31.548014841396498 4 0.46104444544296308 
		6 0.46104444544296308 8 7.7551081793330283 10 -0.58279095637978728 12 -41.889616153138562 
		15 15.034008524188943 17 34.646432388829645 19 1.0242955470480299 21 1.0242955470480299 
		25 0;
	setAttr -s 11 ".kit[3:10]"  9 9 9 9 9 3 3 
		3;
	setAttr -s 11 ".kot[3:10]"  9 9 9 9 9 3 3 
		3;
createNode animCurveTA -n "animCurveTA472";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 6 0 8 0 10 0 12 0 15 0 
		17 0 19 0 21 0 25 -25.948901905116401;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA473";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 6 0 8 0 10 0 12 0 15 0 
		17 0 19 0 21 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.19697756422115981 4 0.19697756422115981 
		6 0.19697756422115981 8 0.19697756422115981 10 0.19697756422115981 12 0.19697756422115981 
		15 0.19697756422115981 17 0.19960210987374555 19 0.20520909376790619 21 0.21344062331465252 
		25 0.21594587158542247;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL192";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.49095526767731257 4 0.29214779491922199 
		6 0.13800000000000001 8 0.13800000000000001 10 0.25360011604051408 12 0.19302519208825888 
		15 0.13800000000000001 17 0.13800000000000001 19 0.21505243716180653 21 0.13800000000000001 
		25 0.13800000000000001;
	setAttr -s 11 ".kit[1:10]"  9 3 3 9 9 3 3 
		9 3 3;
	setAttr -s 11 ".kot[1:10]"  9 3 3 9 9 3 3 
		9 3 3;
createNode animCurveTL -n "animCurveTL193";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.092819338422239051 4 1.2445014095487996 
		6 2.0209617983913453 8 2.0209617983913453 10 1.6189645757991042 12 1.2885558996958926 
		15 1.1674060517913818 17 1.1674060517913818 19 0.87003824329849266 21 0.45200000000000001 
		25 0.45200000000000001;
	setAttr -s 11 ".kit[1:10]"  9 3 3 9 9 3 3 
		9 3 9;
	setAttr -s 11 ".kot[1:10]"  9 3 3 9 9 3 3 
		9 3 9;
createNode animCurveTA -n "animCurveTA474";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 72.51831712904297 4 66.596702656887672 
		6 3.1599555742657675 8 3.1599555742657675 10 36.25972385798908 12 45.393511271088919 
		15 -0.52437167089126113 17 -0.52437167089126113 19 -19.066508418398907 21 
		1.3040672431773508 25 0;
	setAttr -s 11 ".kit[1:10]"  9 3 3 9 9 3 3 
		9 3 3;
	setAttr -s 11 ".kot[1:10]"  9 3 3 9 9 3 3 
		9 3 3;
createNode animCurveTA -n "animCurveTA475";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 6 0 8 0 10 0 12 0 15 0 
		17 0 19 0 21 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA476";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 6 0 8 0 10 0 12 0 15 0 
		17 0 19 0 21 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA477";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA478";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA479";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA480";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA481";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA482";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA483";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 24 0 25 0;
	setAttr -s 4 ".kot[0:3]"  9 5 9 5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA484";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 24 0 25 0;
	setAttr -s 4 ".kot[0:3]"  9 5 9 5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA485";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 24 0 25 0;
	setAttr -s 4 ".kot[0:3]"  9 5 9 5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA486";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 24 0 25 0;
	setAttr -s 4 ".kot[0:3]"  9 5 9 5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA487";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 24 0 25 0;
	setAttr -s 4 ".kot[0:3]"  9 5 9 5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA488";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 24 0 25 0;
	setAttr -s 4 ".kot[0:3]"  9 5 9 5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 6 0 8 0 10 0 12 0 15 0 
		17 0 19 0 21 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 6 0 8 0 10 0 12 0 15 0 
		17 0 19 0 21 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 4 1 6 1 8 1 10 1 12 1 15 1 
		17 1 19 1 21 1 25 1;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 6 0 8 0 10 0 12 0 15 0 
		17 0 19 0 21 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 6 0 8 0 10 0 12 0 15 0 
		17 0 19 0 21 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 4 1 6 1 8 1 10 1 12 1 15 1 
		17 1 19 1 21 1 25 1;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.033041213165890024 4 -0.048692319506319935 
		6 -0.048692319506319935 8 -0.048692319506319935 10 -0.048692319506319935 
		12 -0.048692319506319935 15 -0.048692319506319935 17 -0.048692319506319935 
		19 -0.056559187754241659 21 -0.067130291962386401 25 -0.076472881617957691;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 1 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 1 3;
	setAttr -s 11 ".kix[9:10]"  0.057891640812158585 1;
	setAttr -s 11 ".kiy[9:10]"  -0.99832284450531006 0;
	setAttr -s 11 ".kox[9:10]"  0.057892099022865295 1;
	setAttr -s 11 ".koy[9:10]"  -0.99832284450531006 0;
createNode animCurveTL -n "animCurveTL201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.86191433053168653 4 0.66484072301048547 
		6 0.64577778253981466 8 0.84402298820174126 10 0.80547530932303335 12 0.77055978282362581 
		15 0.86459737232356826 17 0.86605023327528874 19 0.82199574312819368 21 0.88870670921907147 
		25 0.90261532541629597;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 1 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 1 3;
	setAttr -s 11 ".kix[9:10]"  0.024099605157971382 1;
	setAttr -s 11 ".kiy[9:10]"  0.99970954656600952 0;
	setAttr -s 11 ".kox[9:10]"  0.02409985288977623 1;
	setAttr -s 11 ".koy[9:10]"  0.99970954656600952 0;
createNode animCurveTL -n "animCurveTL202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.72893957619979599 4 1.5357870437604584 
		6 1.785731834279455 8 1.7070327639408474 10 1.5754038643599586 12 1.4332959131026948 
		15 1.1304212933414186 17 0.88865616839279471 19 0.63480827918660265 21 0.46296913369876541 
		25 0.45166662906452182;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 1 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 1 9;
	setAttr -s 11 ".kix[9:10]"  0.014457596465945244 0.11715556681156158;
	setAttr -s 11 ".kiy[9:10]"  -0.99989551305770874 -0.99311357736587524;
	setAttr -s 11 ".kox[9:10]"  0.014457591809332371 0.11715556681156158;
	setAttr -s 11 ".koy[9:10]"  -0.99989551305770874 -0.99311357736587524;
createNode animCurveTA -n "animCurveTA489";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 20.950825280283915 4 31.893921676442705 
		6 1.2128078773019906 8 -22.636245182644341 10 -28.444448227445374 12 -21.539180797641826 
		15 -0.93600239830150667 17 9.656357383484508 19 9.656357383484508 21 4.802459265983229 
		25 -0.62843630316474508;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 1 
		9 9 1 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 1 
		9 9 1 3;
	setAttr -s 11 ".kix[6:10]"  0.24623928964138031 0.58495700359344482 
		0.8440396785736084 0.47925189137458801 1;
	setAttr -s 11 ".kiy[6:10]"  0.96920907497406006 0.81106430292129517 
		-0.53628069162368774 -0.87767738103866577 0;
	setAttr -s 11 ".kox[6:10]"  0.24623940885066986 0.58495700359344482 
		0.8440396785736084 0.47925195097923279 1;
	setAttr -s 11 ".koy[6:10]"  0.96920901536941528 0.81106430292129517 
		-0.53628069162368774 -0.87767738103866577 0;
createNode animCurveTA -n "animCurveTA490";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -7.5734518508549122 4 -6.8139232258102789 
		6 -6.8139232258102771 8 -6.8139232258102789 10 -6.8139232258102771 12 -6.8139232258102789 
		15 -6.8139232258102789 17 -6.813923225810278 19 -5.095981714050196 21 -4.5718726902584468 
		25 -5.8284402688137167;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA491";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0.045251426940717335 6 0.045251426940716148 
		8 0.045251426940718119 10 0.045251426940719319 12 0.045251426940725155 15 
		0.045251426940725155 17 0.04525142694072623 19 -0.30885725887313548 21 -0.93973001154335611 
		25 -1.295636019309746;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 1 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 1 3;
	setAttr -s 11 ".kix[9:10]"  0.99269592761993408 1;
	setAttr -s 11 ".kiy[9:10]"  -0.12064303457736969 0;
	setAttr -s 11 ".kox[9:10]"  0.99269592761993408 1;
	setAttr -s 11 ".koy[9:10]"  -0.1206430196762085 0;
createNode animCurveTA -n "animCurveTA492";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA493";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA494";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 4.0984482521620249 1 4.0984482521620249 
		1.005 4.0984482521620249 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA495";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 18.588300303494186 1 18.588300303494186 
		1.005 18.588300303494186 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA496";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA497";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA498";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -22.686733334985114 1 -22.686733334985114 
		1.005 -22.686733334985114 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA499";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA500";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA501";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.0579251312417479e-005 1 1.0579251312417479e-005 
		1.005 1.0579251312417477e-005 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA502";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA503";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA504";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 4.0984482535121209 1 4.0984482535121209 
		1.005 4.0984482535121209 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA505";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 18.588300300216805 1 18.588300300216805 
		1.005 18.588300300216801 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA506";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA507";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA508";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -22.686733333057838 1 -22.686733333057838 
		1.005 -22.686733333057838 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA509";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA510";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA511";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.0579251312417479e-005 1 1.0579251312417479e-005 
		1.005 1.0579251312417477e-005 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA512";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA513";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA514";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.4782236286598098 1 2.4782236286598098 
		1.005 2.4782236286598103 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA515";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA516";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA517";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -39.488235982334174 1 -1.4877789965049075e-015 
		1.005 0 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 0.048308800905942917 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0.99883246421813965 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL203";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.99214331096561381 1 -0.99214331096561381 
		1.005 -0.99214331096561381 23.995000000000001 -0.43524234076486068 24 -0.43524234076486068 
		25 -0.43524234076486068;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL204";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.033841737269357866 1 -0.033841737269357866 
		1.005 -0.033841737269357866 23.995000000000001 -0.82665738350180629 24 -0.82665738350180629 
		25 -0.82665738350180629;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL205";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.027201153963313806 1 -0.027201153963313806 
		1.005 -0.027201153963313806 23.995000000000001 0.27773886459742925 24 0.27773886459742925 
		25 0.27773886459742925;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA518";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA519";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		28.652637602052774 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 0.00033331906888633966 
		1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 -0.99999994039535522 0;
	setAttr -s 6 ".kox[2:5]"  1 1 0.06683909147977829 1;
	setAttr -s 6 ".koy[2:5]"  0 0 -0.99776375293731689 0;
createNode animCurveTA -n "animCurveTA520";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		64.676908227303443 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 0.00014766430831514299 
		1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 -1 0;
	setAttr -s 6 ".kox[2:5]"  1 1 0.029663816094398499 1;
	setAttr -s 6 ".koy[2:5]"  0 0 -0.99955993890762329 0;
createNode animCurveTL -n "animCurveTL206";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.99214413619678865 1 0.99214413619678865 
		1.005 0.99214413619678865 23.995000000000001 0.5198069948790518 24 0.5198069948790518 
		25 0.5198069948790518;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL207";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.033851474715545553 1 -0.033851474715545553 
		1.005 -0.033851474715545553 23.995000000000001 -0.72394202659893114 24 -0.72394202659893114 
		25 -0.72394202659893114;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL208";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.0272011762672867 1 -0.0272011762672867 
		1.005 -0.0272011762672867 23.995000000000001 0.36439499068905612 24 0.36439499068905612 
		25 0.36439499068905612;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA521";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		7.7976222737965317 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 0.0012247917475178838 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 -0.99999922513961792 0;
	setAttr -s 6 ".kox[2:5]"  1 1 0.23901833593845367 1;
	setAttr -s 6 ".koy[2:5]"  0 0 -0.97101503610610962 0;
createNode animCurveTA -n "animCurveTA522";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		-30.409274105849079 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 0.0003140644112136215 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0.99999994039535522 0;
	setAttr -s 6 ".kox[2:5]"  1 1 0.062993824481964111 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0.99801391363143921 0;
createNode animCurveTA -n "animCurveTA523";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		-64.859940280210893 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 0.00014724759967066348 
		1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 1 0;
	setAttr -s 6 ".kox[2:5]"  1 1 0.029580181464552879 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0.99956238269805908 0;
createNode animCurveTL -n "animCurveTL209";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.3705977767760478 1 -1.3705977767760478 
		1.005 -1.3705977767760478 25 -0.8448236677023373;
	setAttr -s 4 ".kit[2:3]"  3 1;
	setAttr -s 4 ".kot[0:3]"  9 5 1 5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 0;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "animCurveTL210";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.1618658070195953 1 2.1618658070195953 
		1.005 2.1618658070195953 25 0.90875111933027442;
	setAttr -s 4 ".kit[2:3]"  3 1;
	setAttr -s 4 ".kot[0:3]"  9 5 1 5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 0.00091558153508231044;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 -0.99999958276748657;
	setAttr -s 4 ".kox[2:3]"  1 0;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "animCurveTL211";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.12044246479037771 1 -0.12044246479037771 
		1.005 -0.12044246479037771 25 0.4861666997292457;
	setAttr -s 4 ".kit[2:3]"  3 9;
	setAttr -s 4 ".kot[0:3]"  9 5 1 9;
	setAttr -s 4 ".kix[0:3]"  0 1 1 0.013184169307351112;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0.99991309642791748;
	setAttr -s 4 ".kox[2:3]"  1 0.013184169307351112;
	setAttr -s 4 ".koy[2:3]"  0 0.99991309642791748;
createNode animCurveTA -n "animCurveTA524";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 5.4739599453216465;
	setAttr -s 4 ".kit[2:3]"  3 1;
	setAttr -s 4 ".kot[0:3]"  9 5 1 5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 0;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA525";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 8.5874521608419823;
	setAttr -s 4 ".kit[2:3]"  3 1;
	setAttr -s 4 ".kot[0:3]"  9 5 1 5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 0;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA526";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 74.754744621954103;
	setAttr -s 4 ".kit[2:3]"  3 1;
	setAttr -s 4 ".kot[0:3]"  9 5 1 5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 0;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "animCurveTL212";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.3705978542308779 1 1.3705978542308779 
		1.005 1.3705978542308779 25 0.61083301393139333;
	setAttr -s 4 ".kit[2:3]"  3 1;
	setAttr -s 4 ".kot[0:3]"  9 5 1 5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 0;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "animCurveTL213";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.1618621235956237 1 2.1618621235956237 
		1.005 2.1618621235956237 25 0.89950600418209226;
	setAttr -s 4 ".kit[2:3]"  3 1;
	setAttr -s 4 ".kot[0:3]"  9 5 1 5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 0.0010106179397553205;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 -0.99999946355819702;
	setAttr -s 4 ".kox[2:3]"  1 0;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "animCurveTL214";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.12044250833667494 1 -0.12044250833667494 
		1.005 -0.12044250833667494 25 0.72730435004583616;
	setAttr -s 4 ".kit[2:3]"  3 9;
	setAttr -s 4 ".kot[0:3]"  9 5 1 9;
	setAttr -s 4 ".kix[0:3]"  0 1 1 0.0094343926757574081;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0.99995547533035278;
	setAttr -s 4 ".kox[2:3]"  1 0.0094343926757574081;
	setAttr -s 4 ".koy[2:3]"  0 0.99995547533035278;
createNode animCurveTA -n "animCurveTA527";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 16.226511010665412;
	setAttr -s 4 ".kit[2:3]"  3 1;
	setAttr -s 4 ".kot[0:3]"  9 5 1 5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 0;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA528";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 -8.5139660854992858;
	setAttr -s 4 ".kit[2:3]"  3 1;
	setAttr -s 4 ".kot[0:3]"  9 5 1 5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 0;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA529";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 -68.213989601412422;
	setAttr -s 4 ".kit[2:3]"  3 1;
	setAttr -s 4 ".kot[0:3]"  9 5 1 5;
	setAttr -s 4 ".kix[0:3]"  0 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 0;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "animCurveTL215";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL216";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL217";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1 1 -1 1.005 -1 23.995000000000001 
		-1 24 -1 25 -1;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL218";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		-0.10167917362943303 24 -0.10167917362943303 25 -0.10167917362943303;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL219";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		-0.40762644910266188 24 -0.40762644910266188 25 -0.40762644910266188;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL220";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1 1 -1 1.005 -1 23.995000000000001 
		-0.93129112588482243 24 -0.93129112588482243 25 -0.93129112588482243;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 52.637219839343977 3 40.514666031468188 
		6 -52.253647395951099 9 -29.903266206279191 12 11.278052485068224 14 21.329592358663259 
		17 13.315812924930704 25 -7.1579209330746911;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 1 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 1 
		9;
	setAttr -s 8 ".kix[6:7]"  0.44265836477279663 0.59808361530303955;
	setAttr -s 8 ".kiy[6:7]"  -0.89669030904769897 -0.8014337420463562;
	setAttr -s 8 ".kox[6:7]"  0.44265839457511902 0.59808361530303955;
	setAttr -s 8 ".koy[6:7]"  -0.89669030904769897 -0.8014337420463562;
createNode animCurveTA -n "animCurveTA531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -24.480967171432493 3 -39.445176802283065 
		6 -50.092210662671171 9 -38.738647402979851 12 -46.391953577115075 14 -51.365598175218167 
		17 -54.739758209310494 25 -69.309928421784974;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -64.344364641857084 3 -77.735295169850247 
		6 64.375191109696971 9 81.130914094540515 12 6.6414841170903225 14 -37.362644894081313 
		17 -7.3594601147207124 25 10.918626968317751;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -53.609443747430014 3 -15.356018695340643 
		6 -31.063581684012128 9 -10.617703514958272 12 1.838741212999905 14 12.421120280347298 
		17 1.5892506708196732 21 -2.1372745396580126 25 -9.6623769575952902;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		1 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		1 9;
	setAttr -s 9 ".kix[7:8]"  0.9948461651802063 0.7124178409576416;
	setAttr -s 9 ".kiy[7:8]"  0.1013958603143692 -0.70175552368164063;
	setAttr -s 9 ".kox[7:8]"  0.99484622478485107 0.7124178409576416;
	setAttr -s 9 ".koy[7:8]"  0.101395383477211 -0.70175552368164063;
createNode animCurveTA -n "animCurveTA534";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -25.27913794042524 3 -1.6370789986654639 
		6 -27.265876981733431 9 -43.520904468685075 12 -46.613813622327669 14 -51.680677305283119 
		17 -47.004705922720575 21 -57.498708118646476 25 -62.973893113754968;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		1 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		1 9;
	setAttr -s 9 ".kix[7:8]"  0.77861714363098145 0.81280428171157837;
	setAttr -s 9 ".kiy[7:8]"  -0.62749922275543213 -0.58253687620162964;
	setAttr -s 9 ".kox[7:8]"  0.77861720323562622 0.81280428171157837;
	setAttr -s 9 ".koy[7:8]"  -0.62749922275543213 -0.58253687620162964;
createNode animCurveTA -n "animCurveTA535";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 57.594080128123679 3 69.61309617468136 
		6 47.284955744198868 9 25.186610416378631 12 21.197036551535628 14 3.2305679713565154 
		17 10.533416272908328 21 6.2662653992304707 25 15.309788671631248;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 1 
		1 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 1 
		1 9;
	setAttr -s 9 ".kix[6:8]"  0.43730229139328003 0.58263218402862549 
		0.64531314373016357;
	setAttr -s 9 ".kiy[6:8]"  -0.89931458234786987 0.81273597478866577 
		0.76391816139221191;
	setAttr -s 9 ".kox[6:8]"  0.43730241060256958 0.58263218402862549 
		0.64531314373016357;
	setAttr -s 9 ".koy[6:8]"  -0.8993145227432251 0.81273597478866577 
		0.76391816139221191;
createNode animCurveTA -n "animCurveTA536";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 59.468287502559065 3 48.559360783080216 
		6 48.559360783080216 9 57.53252201816786 12 64.26052977275333 14 67.589470045673536 
		17 62.920143586743741 25 3.4667051477389319;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 1 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 1 
		9;
	setAttr -s 8 ".kix[6:7]"  0.29305985569953918 0.24890117347240448;
	setAttr -s 8 ".kiy[6:7]"  -0.95609408617019653 -0.9685288667678833;
	setAttr -s 8 ".kox[6:7]"  0.29305985569953918 0.24890117347240448;
	setAttr -s 8 ".koy[6:7]"  -0.95609408617019653 -0.9685288667678833;
createNode animCurveTA -n "animCurveTA537";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 59.305463658789549 3 60.185649943194235 
		6 83.949023721627441 9 89.39290439644023 12 40.012962471887889 14 20.889584475977955 
		17 16.300985903101061 21 21.464222889398297 25 4.1289587399976755;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		1 9;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		1 9;
	setAttr -s 9 ".kix[7:8]"  0.90959548950195313 0.40326574444770813;
	setAttr -s 9 ".kiy[7:8]"  -0.4154948890209198 -0.91508293151855469;
	setAttr -s 9 ".kox[7:8]"  0.90959548950195313 0.40326574444770813;
	setAttr -s 9 ".koy[7:8]"  -0.41549494862556458 -0.91508293151855469;
createNode animCurveTA -n "animCurveTA538";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 18.476235154862632 3 18.476235154862632 
		6 18.476235154862632 9 18.476235154862632 12 18.476235154862632 14 18.476235154862632 
		17 19.515523380515379 25 1.7180421941863964;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA539";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 10.082003051124275 3 10.082003051124275 
		6 10.082003051124275 9 10.082003051124275 12 10.082003051124275 14 10.082003051124275 
		17 10.649115719039902 25 -22.600629206193322;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA540";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -4.720189328892868 3 -4.720189328892868 
		6 -4.720189328892868 9 -4.720189328892868 12 -4.720189328892868 14 -4.720189328892868 
		17 -4.985699992858259 25 0.20127803854801343;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA541";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -11.342548829337773 3 -13.555270109330269 
		6 -13.555270109330269 9 -13.555270109330269 12 -13.555270109330269 14 -13.555270109330269 
		17 -14.317753995053931 25 -3.4463864474985448;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA542";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 11.615881410206434 3 11.615881410206432 
		6 11.615881410206432 9 11.615881410206432 12 11.615881410206432 14 11.615881410206432 
		17 12.269274762865578 25 -25.677860944946293;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA543";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.32159281075535046 3 0.32159281075535068 
		6 0.32159281075535068 9 0.32159281075535068 12 0.32159281075535068 14 0.32159281075535068 
		17 0.33968240652337872 25 10.689698540047642;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA544";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 11.09331921989552 3 11.093319219895511 
		6 11.093319219895511 9 11.093319219895511 12 11.093319219895511 14 11.093319219895511 
		17 11.130982207935231 25 -3.9845972779367602;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 59.959644693642325 3 59.959644693642325 
		6 59.959644693642325 9 59.959644693642325 12 59.959644693642325 14 59.959644693642325 
		17 61.772964615621859 25 21.123634438577128;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 48.10646961869692 3 48.106469618696913 
		6 48.106469618696913 9 48.106469618696913 12 48.106469618696913 14 48.106469618696913 
		17 49.598781238328471 25 17.151618517077846;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA549";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 101.15442879205187 3 67.810939637714412 
		6 67.810939637714412 9 67.810939637714412 12 67.810939637714412 14 67.810939637714412 
		17 70.102051514685854 25 22.841647934245472;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA550";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA551";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA552";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[2:5]"  3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  9 5 1 3 9 5;
	setAttr -s 6 ".kix[0:5]"  0 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 27.70521891534332 1 27.70521891534332 
		1.005 27.705218915343313 5 27.705218915343313 9 27.705218915343313 13 27.705218915343313 
		17 27.705218915343313 21 27.705218915343313 23.995000000000001 0 24 0 25 
		0;
	setAttr -s 11 ".kit[0:10]"  1 1 3 9 9 9 1 
		1 1 1 1;
	setAttr -s 11 ".kot[1:10]"  5 1 9 9 9 9 9 
		3 9 5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[2:10]"  1 1 1 1 1 0.4343411922454834 1 
		1 1;
	setAttr -s 11 ".koy[2:10]"  0 0 0 0 0 -0.90074843168258667 
		0 0 0;
createNode animCurveTA -n "animCurveTA554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 43.35103828268312 1 43.35103828268312 
		1.005 43.35103828268312 5 43.35103828268312 9 43.35103828268312 13 43.35103828268312 
		17 43.35103828268312 21 43.35103828268312 23.995000000000001 0 24 0 25 0;
	setAttr -s 11 ".kit[0:10]"  1 1 3 9 9 9 1 
		1 1 1 1;
	setAttr -s 11 ".kot[1:10]"  5 1 9 9 9 9 9 
		3 9 5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[2:10]"  1 1 1 1 1 0.2945023775100708 1 
		1 1;
	setAttr -s 11 ".koy[2:10]"  0 0 0 0 0 -0.95565074682235718 
		0 0 0;
createNode animCurveTA -n "animCurveTA555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 54.235722998003197 1 54.235722998003197 
		1.005 54.23572299800319 5 54.23572299800319 9 54.23572299800319 13 54.23572299800319 
		17 54.23572299800319 21 54.23572299800319 23.995000000000001 13.994403295754109 
		24 0 25 0;
	setAttr -s 11 ".kit[0:10]"  1 1 3 9 9 9 1 
		1 1 1 1;
	setAttr -s 11 ".kot[1:10]"  5 1 9 9 9 9 9 
		3 9 5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 1 0.00068244908470660448 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 -0.9999997615814209 
		0;
	setAttr -s 11 ".kox[2:10]"  1 1 1 1 1 0.31507480144500732 1 
		0.13588330149650574 1;
	setAttr -s 11 ".koy[2:10]"  0 0 0 0 0 -0.94906681776046753 
		0 -0.99072486162185669 0;
createNode animCurveTA -n "animCurveTA556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 39.038703285259977 1 39.038703285259977 
		1.005 39.038703285259977 5 39.038703285259977 9 39.038703285259977 13 39.038703285259977 
		17 39.038703285259977 21 39.038703285259977 23.995000000000001 0 24 0 25 
		0;
	setAttr -s 11 ".kit[0:10]"  1 1 3 9 9 9 1 
		1 1 1 1;
	setAttr -s 11 ".kot[1:10]"  5 1 9 9 9 9 9 
		3 9 5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[2:10]"  1 1 1 1 1 0.32377707958221436 1 
		1 1;
	setAttr -s 11 ".koy[2:10]"  0 0 0 0 0 -0.94613337516784668 
		0 0 0;
createNode animCurveTA -n "animCurveTA557";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 72.755037061650995 1 72.755037061650995 
		1.005 72.755037061650995 5 72.755037061650995 9 72.755037061650995 13 72.755037061650995 
		17 72.755037061650995 21 72.755037061650995 23.995000000000001 0 24 0 25 
		0;
	setAttr -s 11 ".kit[0:10]"  1 1 3 9 9 9 1 
		1 1 1 1;
	setAttr -s 11 ".kot[1:10]"  5 1 9 9 9 9 9 
		3 9 5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[2:10]"  1 1 1 1 1 0.18060308694839478 1 
		1 1;
	setAttr -s 11 ".koy[2:10]"  0 0 0 0 0 -0.98355603218078613 
		0 0 0;
createNode animCurveTA -n "animCurveTA558";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 38.926480273156798 1 38.926480273156798 
		1.005 38.926480273156798 5 38.926480273156798 9 38.926480273156798 13 38.926480273156798 
		17 38.926480273156798 21 38.926480273156798 23.995000000000001 13.994403295754109 
		24 0 25 0;
	setAttr -s 11 ".kit[0:10]"  1 1 3 9 9 9 1 
		1 1 1 1;
	setAttr -s 11 ".kot[1:10]"  5 1 9 9 9 9 9 
		3 9 5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 1 0.00068244908470660448 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 -0.9999997615814209 
		0;
	setAttr -s 11 ".kox[2:10]"  1 1 1 1 1 0.47230371832847595 1 
		0.13588330149650574 1;
	setAttr -s 11 ".koy[2:10]"  0 0 0 0 0 -0.88143587112426758 
		0 -0.99072486162185669 0;
createNode animCurveTA -n "animCurveTA559";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA560";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA561";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 81.622987204614233 3 40.637834425062678 
		6 40.637834425062678 9 40.637834425062678 12 40.637834425062678 14 40.637834425062678 
		17 41.353683247109352 25 19.344628019947208;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA562";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.2945941069882385 3 1.2945941069882381 
		6 1.2945941069882381 9 1.2945941069882381 12 1.2945941069882381 14 1.2945941069882381 
		17 1.3674150174168214 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA563";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 3.3208811165553156 3 3.3208811165553147 
		6 3.3208811165553147 9 3.3208811165553147 12 3.3208811165553147 14 3.3208811165553147 
		17 3.5076806841266883 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA564";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -27.52582447785997 3 -27.525824477859967 
		6 -27.525824477859967 9 -27.525824477859967 12 -27.525824477859967 14 -27.525824477859967 
		17 -29.074152125383112 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA565";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -8.7597363552835983 3 -21.897916030805764 
		6 -27.026607495669865 9 -3.2192397419481766 12 -1.5687377008013468 14 -0.01800229915334188 
		17 -2.6433860314125552 25 -0.65073001024951671;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA566";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 -1.8399336948780474 9 
		2.789816990309629 12 2.6335331205563497 14 -2.2120116005629544 17 2.2289899803918249 
		25 -4.2368721935960938;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA567";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -8.9349579591731985 3 0.5940776450337566 
		6 -10.116452954015815 9 -16.84450977575354 12 -19.946276829499073 14 -19.372854163739966 
		17 -14.780247566026143 25 2.6995264082587442;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 1 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 1 
		9;
	setAttr -s 8 ".kix[6:7]"  0.52487486600875854 0.6581159234046936;
	setAttr -s 8 ".kiy[6:7]"  0.85117942094802856 0.75291663408279419;
	setAttr -s 8 ".kox[6:7]"  0.52487492561340332 0.6581159234046936;
	setAttr -s 8 ".koy[6:7]"  0.85117936134338379 0.75291663408279419;
createNode animCurveTA -n "animCurveTA568";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA569";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA570";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 -8.7299801591531629 
		12 -3.7713514762097855 14 0 17 0.11785472970351051 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA571";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 1.6804018684285151 6 -22.700037150197865 
		9 -9.0824594233362035 12 -1.4716916966527929 14 -3.8819790806033372 17 -6.2893151825303244 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA572";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -9.2427148064678804 3 4.0964050967290131 
		6 -22.180583921737327 9 -6.263830548737908 12 6.5834531643157783 14 0.99161045495694855 
		17 -6.5290168112633511 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA573";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -10.062830706779264 3 -26.805484402997095 
		6 19.871662933460563 9 15.915457627956584 12 -7.0231336990779614 14 -5.1254075887366684 
		17 7.4228031599308189 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 1 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 1 
		9;
	setAttr -s 8 ".kix[6:7]"  0.94529211521148682 0.89947032928466797;
	setAttr -s 8 ".kiy[6:7]"  0.32622507214546204 -0.43698188662528992;
	setAttr -s 8 ".kox[6:7]"  0.94529211521148682 0.89947032928466797;
	setAttr -s 8 ".koy[6:7]"  0.3262251615524292 -0.43698188662528992;
createNode animCurveTA -n "animCurveTA574";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0.10633275776453374 
		25 -1.8903601258661935;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA575";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 -0.14398475666619143 
		25 2.5597289571479038;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA576";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 5.671986885245901 3 7.9008995674020186 
		6 13.902630719132157 9 32.999877464068796 12 25.723884979038182 14 20.201647746547522 
		17 12.292629576166151 25 2.0168110874036049;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA577";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA578";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA579";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 90.838361755940937 3 66.910735171519136 
		6 66.910735171519136 9 66.910735171519136 12 66.910735171519136 14 66.910735171519136 
		17 68.794077659127268 25 19.394230159182946;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA580";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 26.194612819039182 3 26.194612819039175 
		6 26.194612819039175 9 26.194612819039175 12 26.194612819039175 14 26.194612819039175 
		17 27.203809250256043 25 10.154145749336747;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 42.116293762219598 3 42.116293762219605 
		6 42.116293762219605 9 42.116293762219605 12 42.116293762219605 14 42.116293762219605 
		17 43.176768890663695 25 19.442227502470431;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 51.312599966148298 3 51.312599966148291 
		6 51.312599966148291 9 51.312599966148291 12 51.312599966148291 14 51.312599966148291 
		17 53.064580629887352 25 10.850145439254158;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA585";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 86.611733534295581 3 55.749331591600708 
		6 55.749331591600708 9 55.749331591600708 12 55.749331591600708 14 55.749331591600708 
		17 57.914687334191584 25 25.631569251182707;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
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
	setAttr ".o" 25;
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
connectAttr "brt_run_into_personSource.st" "clipLibrary4.st[0]";
connectAttr "brt_run_into_personSource.du" "clipLibrary4.du[0]";
connectAttr "animCurveTL180.a" "clipLibrary4.cel[0].cev[0].cevr";
connectAttr "animCurveTL181.a" "clipLibrary4.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary4.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary4.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary4.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary4.cel[0].cev[5].cevr";
connectAttr "animCurveTU33.a" "clipLibrary4.cel[0].cev[6].cevr";
connectAttr "animCurveTU34.a" "clipLibrary4.cel[0].cev[7].cevr";
connectAttr "animCurveTU35.a" "clipLibrary4.cel[0].cev[8].cevr";
connectAttr "animCurveTU36.a" "clipLibrary4.cel[0].cev[9].cevr";
connectAttr "animCurveTU37.a" "clipLibrary4.cel[0].cev[10].cevr";
connectAttr "animCurveTU38.a" "clipLibrary4.cel[0].cev[11].cevr";
connectAttr "animCurveTU39.a" "clipLibrary4.cel[0].cev[12].cevr";
connectAttr "animCurveTU40.a" "clipLibrary4.cel[0].cev[13].cevr";
connectAttr "animCurveTA468.a" "clipLibrary4.cel[0].cev[14].cevr";
connectAttr "animCurveTA469.a" "clipLibrary4.cel[0].cev[15].cevr";
connectAttr "animCurveTA470.a" "clipLibrary4.cel[0].cev[16].cevr";
connectAttr "animCurveTL185.a" "clipLibrary4.cel[0].cev[17].cevr";
connectAttr "animCurveTL186.a" "clipLibrary4.cel[0].cev[18].cevr";
connectAttr "animCurveTL187.a" "clipLibrary4.cel[0].cev[19].cevr";
connectAttr "animCurveTL188.a" "clipLibrary4.cel[0].cev[20].cevr";
connectAttr "animCurveTL189.a" "clipLibrary4.cel[0].cev[21].cevr";
connectAttr "animCurveTL190.a" "clipLibrary4.cel[0].cev[22].cevr";
connectAttr "animCurveTA471.a" "clipLibrary4.cel[0].cev[23].cevr";
connectAttr "animCurveTA472.a" "clipLibrary4.cel[0].cev[24].cevr";
connectAttr "animCurveTA473.a" "clipLibrary4.cel[0].cev[25].cevr";
connectAttr "animCurveTL191.a" "clipLibrary4.cel[0].cev[26].cevr";
connectAttr "animCurveTL192.a" "clipLibrary4.cel[0].cev[27].cevr";
connectAttr "animCurveTL193.a" "clipLibrary4.cel[0].cev[28].cevr";
connectAttr "animCurveTA474.a" "clipLibrary4.cel[0].cev[29].cevr";
connectAttr "animCurveTA475.a" "clipLibrary4.cel[0].cev[30].cevr";
connectAttr "animCurveTA476.a" "clipLibrary4.cel[0].cev[31].cevr";
connectAttr "animCurveTA477.a" "clipLibrary4.cel[0].cev[32].cevr";
connectAttr "animCurveTA478.a" "clipLibrary4.cel[0].cev[33].cevr";
connectAttr "animCurveTA479.a" "clipLibrary4.cel[0].cev[34].cevr";
connectAttr "animCurveTA480.a" "clipLibrary4.cel[0].cev[35].cevr";
connectAttr "animCurveTA481.a" "clipLibrary4.cel[0].cev[36].cevr";
connectAttr "animCurveTA482.a" "clipLibrary4.cel[0].cev[37].cevr";
connectAttr "animCurveTA483.a" "clipLibrary4.cel[0].cev[38].cevr";
connectAttr "animCurveTA484.a" "clipLibrary4.cel[0].cev[39].cevr";
connectAttr "animCurveTA485.a" "clipLibrary4.cel[0].cev[40].cevr";
connectAttr "animCurveTA486.a" "clipLibrary4.cel[0].cev[41].cevr";
connectAttr "animCurveTA487.a" "clipLibrary4.cel[0].cev[42].cevr";
connectAttr "animCurveTA488.a" "clipLibrary4.cel[0].cev[43].cevr";
connectAttr "animCurveTL194.a" "clipLibrary4.cel[0].cev[44].cevr";
connectAttr "animCurveTL195.a" "clipLibrary4.cel[0].cev[45].cevr";
connectAttr "animCurveTL196.a" "clipLibrary4.cel[0].cev[46].cevr";
connectAttr "animCurveTL197.a" "clipLibrary4.cel[0].cev[47].cevr";
connectAttr "animCurveTL198.a" "clipLibrary4.cel[0].cev[48].cevr";
connectAttr "animCurveTL199.a" "clipLibrary4.cel[0].cev[49].cevr";
connectAttr "animCurveTL200.a" "clipLibrary4.cel[0].cev[50].cevr";
connectAttr "animCurveTL201.a" "clipLibrary4.cel[0].cev[51].cevr";
connectAttr "animCurveTL202.a" "clipLibrary4.cel[0].cev[52].cevr";
connectAttr "animCurveTA489.a" "clipLibrary4.cel[0].cev[53].cevr";
connectAttr "animCurveTA490.a" "clipLibrary4.cel[0].cev[54].cevr";
connectAttr "animCurveTA491.a" "clipLibrary4.cel[0].cev[55].cevr";
connectAttr "animCurveTA492.a" "clipLibrary4.cel[0].cev[56].cevr";
connectAttr "animCurveTA493.a" "clipLibrary4.cel[0].cev[57].cevr";
connectAttr "animCurveTA494.a" "clipLibrary4.cel[0].cev[58].cevr";
connectAttr "animCurveTA495.a" "clipLibrary4.cel[0].cev[59].cevr";
connectAttr "animCurveTA496.a" "clipLibrary4.cel[0].cev[60].cevr";
connectAttr "animCurveTA497.a" "clipLibrary4.cel[0].cev[61].cevr";
connectAttr "animCurveTA498.a" "clipLibrary4.cel[0].cev[62].cevr";
connectAttr "animCurveTA499.a" "clipLibrary4.cel[0].cev[63].cevr";
connectAttr "animCurveTA500.a" "clipLibrary4.cel[0].cev[64].cevr";
connectAttr "animCurveTA501.a" "clipLibrary4.cel[0].cev[65].cevr";
connectAttr "animCurveTA502.a" "clipLibrary4.cel[0].cev[66].cevr";
connectAttr "animCurveTA503.a" "clipLibrary4.cel[0].cev[67].cevr";
connectAttr "animCurveTA504.a" "clipLibrary4.cel[0].cev[68].cevr";
connectAttr "animCurveTA505.a" "clipLibrary4.cel[0].cev[69].cevr";
connectAttr "animCurveTA506.a" "clipLibrary4.cel[0].cev[70].cevr";
connectAttr "animCurveTA507.a" "clipLibrary4.cel[0].cev[71].cevr";
connectAttr "animCurveTA508.a" "clipLibrary4.cel[0].cev[72].cevr";
connectAttr "animCurveTA509.a" "clipLibrary4.cel[0].cev[73].cevr";
connectAttr "animCurveTA510.a" "clipLibrary4.cel[0].cev[74].cevr";
connectAttr "animCurveTA511.a" "clipLibrary4.cel[0].cev[75].cevr";
connectAttr "animCurveTA512.a" "clipLibrary4.cel[0].cev[76].cevr";
connectAttr "animCurveTA513.a" "clipLibrary4.cel[0].cev[77].cevr";
connectAttr "animCurveTA514.a" "clipLibrary4.cel[0].cev[78].cevr";
connectAttr "animCurveTA515.a" "clipLibrary4.cel[0].cev[79].cevr";
connectAttr "animCurveTA516.a" "clipLibrary4.cel[0].cev[80].cevr";
connectAttr "animCurveTA517.a" "clipLibrary4.cel[0].cev[81].cevr";
connectAttr "animCurveTL203.a" "clipLibrary4.cel[0].cev[82].cevr";
connectAttr "animCurveTL204.a" "clipLibrary4.cel[0].cev[83].cevr";
connectAttr "animCurveTL205.a" "clipLibrary4.cel[0].cev[84].cevr";
connectAttr "animCurveTA518.a" "clipLibrary4.cel[0].cev[85].cevr";
connectAttr "animCurveTA519.a" "clipLibrary4.cel[0].cev[86].cevr";
connectAttr "animCurveTA520.a" "clipLibrary4.cel[0].cev[87].cevr";
connectAttr "animCurveTL206.a" "clipLibrary4.cel[0].cev[88].cevr";
connectAttr "animCurveTL207.a" "clipLibrary4.cel[0].cev[89].cevr";
connectAttr "animCurveTL208.a" "clipLibrary4.cel[0].cev[90].cevr";
connectAttr "animCurveTA521.a" "clipLibrary4.cel[0].cev[91].cevr";
connectAttr "animCurveTA522.a" "clipLibrary4.cel[0].cev[92].cevr";
connectAttr "animCurveTA523.a" "clipLibrary4.cel[0].cev[93].cevr";
connectAttr "animCurveTL209.a" "clipLibrary4.cel[0].cev[94].cevr";
connectAttr "animCurveTL210.a" "clipLibrary4.cel[0].cev[95].cevr";
connectAttr "animCurveTL211.a" "clipLibrary4.cel[0].cev[96].cevr";
connectAttr "animCurveTA524.a" "clipLibrary4.cel[0].cev[97].cevr";
connectAttr "animCurveTA525.a" "clipLibrary4.cel[0].cev[98].cevr";
connectAttr "animCurveTA526.a" "clipLibrary4.cel[0].cev[99].cevr";
connectAttr "animCurveTL212.a" "clipLibrary4.cel[0].cev[100].cevr";
connectAttr "animCurveTL213.a" "clipLibrary4.cel[0].cev[101].cevr";
connectAttr "animCurveTL214.a" "clipLibrary4.cel[0].cev[102].cevr";
connectAttr "animCurveTA527.a" "clipLibrary4.cel[0].cev[103].cevr";
connectAttr "animCurveTA528.a" "clipLibrary4.cel[0].cev[104].cevr";
connectAttr "animCurveTA529.a" "clipLibrary4.cel[0].cev[105].cevr";
connectAttr "animCurveTL215.a" "clipLibrary4.cel[0].cev[106].cevr";
connectAttr "animCurveTL216.a" "clipLibrary4.cel[0].cev[107].cevr";
connectAttr "animCurveTL217.a" "clipLibrary4.cel[0].cev[108].cevr";
connectAttr "animCurveTL218.a" "clipLibrary4.cel[0].cev[109].cevr";
connectAttr "animCurveTL219.a" "clipLibrary4.cel[0].cev[110].cevr";
connectAttr "animCurveTL220.a" "clipLibrary4.cel[0].cev[111].cevr";
connectAttr "animCurveTA530.a" "clipLibrary4.cel[0].cev[112].cevr";
connectAttr "animCurveTA531.a" "clipLibrary4.cel[0].cev[113].cevr";
connectAttr "animCurveTA532.a" "clipLibrary4.cel[0].cev[114].cevr";
connectAttr "animCurveTA533.a" "clipLibrary4.cel[0].cev[115].cevr";
connectAttr "animCurveTA534.a" "clipLibrary4.cel[0].cev[116].cevr";
connectAttr "animCurveTA535.a" "clipLibrary4.cel[0].cev[117].cevr";
connectAttr "animCurveTA536.a" "clipLibrary4.cel[0].cev[118].cevr";
connectAttr "animCurveTA537.a" "clipLibrary4.cel[0].cev[119].cevr";
connectAttr "animCurveTA538.a" "clipLibrary4.cel[0].cev[120].cevr";
connectAttr "animCurveTA539.a" "clipLibrary4.cel[0].cev[121].cevr";
connectAttr "animCurveTA540.a" "clipLibrary4.cel[0].cev[122].cevr";
connectAttr "animCurveTA541.a" "clipLibrary4.cel[0].cev[123].cevr";
connectAttr "animCurveTA542.a" "clipLibrary4.cel[0].cev[124].cevr";
connectAttr "animCurveTA543.a" "clipLibrary4.cel[0].cev[125].cevr";
connectAttr "animCurveTA544.a" "clipLibrary4.cel[0].cev[126].cevr";
connectAttr "animCurveTA545.a" "clipLibrary4.cel[0].cev[127].cevr";
connectAttr "animCurveTA546.a" "clipLibrary4.cel[0].cev[128].cevr";
connectAttr "animCurveTA547.a" "clipLibrary4.cel[0].cev[129].cevr";
connectAttr "animCurveTA548.a" "clipLibrary4.cel[0].cev[130].cevr";
connectAttr "animCurveTA549.a" "clipLibrary4.cel[0].cev[131].cevr";
connectAttr "animCurveTA550.a" "clipLibrary4.cel[0].cev[132].cevr";
connectAttr "animCurveTA551.a" "clipLibrary4.cel[0].cev[133].cevr";
connectAttr "animCurveTA552.a" "clipLibrary4.cel[0].cev[134].cevr";
connectAttr "animCurveTA553.a" "clipLibrary4.cel[0].cev[135].cevr";
connectAttr "animCurveTA554.a" "clipLibrary4.cel[0].cev[136].cevr";
connectAttr "animCurveTA555.a" "clipLibrary4.cel[0].cev[137].cevr";
connectAttr "animCurveTA556.a" "clipLibrary4.cel[0].cev[138].cevr";
connectAttr "animCurveTA557.a" "clipLibrary4.cel[0].cev[139].cevr";
connectAttr "animCurveTA558.a" "clipLibrary4.cel[0].cev[140].cevr";
connectAttr "animCurveTA559.a" "clipLibrary4.cel[0].cev[141].cevr";
connectAttr "animCurveTA560.a" "clipLibrary4.cel[0].cev[142].cevr";
connectAttr "animCurveTA561.a" "clipLibrary4.cel[0].cev[143].cevr";
connectAttr "animCurveTA562.a" "clipLibrary4.cel[0].cev[144].cevr";
connectAttr "animCurveTA563.a" "clipLibrary4.cel[0].cev[145].cevr";
connectAttr "animCurveTA564.a" "clipLibrary4.cel[0].cev[146].cevr";
connectAttr "animCurveTA565.a" "clipLibrary4.cel[0].cev[147].cevr";
connectAttr "animCurveTA566.a" "clipLibrary4.cel[0].cev[148].cevr";
connectAttr "animCurveTA567.a" "clipLibrary4.cel[0].cev[149].cevr";
connectAttr "animCurveTA568.a" "clipLibrary4.cel[0].cev[150].cevr";
connectAttr "animCurveTA569.a" "clipLibrary4.cel[0].cev[151].cevr";
connectAttr "animCurveTA570.a" "clipLibrary4.cel[0].cev[152].cevr";
connectAttr "animCurveTA571.a" "clipLibrary4.cel[0].cev[153].cevr";
connectAttr "animCurveTA572.a" "clipLibrary4.cel[0].cev[154].cevr";
connectAttr "animCurveTA573.a" "clipLibrary4.cel[0].cev[155].cevr";
connectAttr "animCurveTA574.a" "clipLibrary4.cel[0].cev[156].cevr";
connectAttr "animCurveTA575.a" "clipLibrary4.cel[0].cev[157].cevr";
connectAttr "animCurveTA576.a" "clipLibrary4.cel[0].cev[158].cevr";
connectAttr "animCurveTA577.a" "clipLibrary4.cel[0].cev[159].cevr";
connectAttr "animCurveTA578.a" "clipLibrary4.cel[0].cev[160].cevr";
connectAttr "animCurveTA579.a" "clipLibrary4.cel[0].cev[161].cevr";
connectAttr "animCurveTA580.a" "clipLibrary4.cel[0].cev[162].cevr";
connectAttr "animCurveTA581.a" "clipLibrary4.cel[0].cev[163].cevr";
connectAttr "animCurveTA582.a" "clipLibrary4.cel[0].cev[164].cevr";
connectAttr "animCurveTA583.a" "clipLibrary4.cel[0].cev[165].cevr";
connectAttr "animCurveTA584.a" "clipLibrary4.cel[0].cev[166].cevr";
connectAttr "animCurveTA585.a" "clipLibrary4.cel[0].cev[167].cevr";
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
// End of brt_run_into_person.ma
