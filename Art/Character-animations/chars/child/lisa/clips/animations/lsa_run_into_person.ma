//Maya ASCII 4.0 scene
//Name: lsa_run_into_person.ma
//Last modified: Fri, Oct 11, 2002 03:02:35 PM
requires maya "4.0";
requires "p3dSimpleShader" "18.6";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_run_into_personSource";
	setAttr ".ihi" 0;
	setAttr ".du" 25;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL303";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL304";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL305";
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
		24 -0.052673123841442557 25 -0.033135114381557439;
	setAttr -s 26 ".kit[0:25]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 26 ".kot[0:25]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 26 ".kix[25]"  0.033646807074546814;
	setAttr -s 26 ".kiy[25]"  0.99943381547927856;
createNode animCurveTL -n "animCurveTL306";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0;
	setAttr -s 26 ".kit[0:25]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 26 ".kot[0:25]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 26 ".kix[25]"  1;
	setAttr -s 26 ".kiy[25]"  0;
createNode animCurveTL -n "animCurveTL307";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0.50460083466800842 1 0.56901037760572193 
		2 0.72290392930031599 3 0.9072788740739719 4 1.0631325962488705 5 1.1727158876049317 
		6 1.2361542760077389 7 1.2254237450897061 8 1.1816756636823009 9 1.1388596797699877 
		10 1.09055692796868 11 1.0449290615978815 12 0.99218417780026091 13 0.92720306403687092 
		14 0.85670170859678485 15 0.78252237465321084 16 0.70143430440336585 17 0.61516298324975482 
		18 0.52427585854573733 19 0.43943942404894698 20 0.36553479482616558 21 0.32048556412293094 
		22 0.31065311684820257 23 0.30957226625576423 24 0.31199205429835641 25 0;
	setAttr -s 26 ".kit[0:25]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 26 ".kot[0:25]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 26 ".kix[25]"  0.0021322255488485098;
	setAttr -s 26 ".kiy[25]"  -0.99999773502349854;
createNode animCurveTA -n "animCurveTA824";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0;
	setAttr -s 26 ".kit[0:25]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 26 ".kot[0:25]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 26 ".kix[25]"  1;
	setAttr -s 26 ".kiy[25]"  0;
createNode animCurveTU -n "animCurveTU57";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTU -n "animCurveTU58";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTU -n "animCurveTU59";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTU -n "animCurveTU60";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTU -n "animCurveTU61";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 25 0;
createNode animCurveTU -n "animCurveTU62";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 24 1 25 0;
createNode animCurveTU -n "animCurveTU63";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 25 1;
createNode animCurveTU -n "animCurveTU64";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 25 1;
createNode animCurveTA -n "animCurveTA825";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 1 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA826";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 1 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA827";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 1 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "animCurveTL308";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 1 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "animCurveTL309";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 1 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "animCurveTL310";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 1 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "animCurveTL311";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.19763288944005308 4 -0.19763288944005308 
		6 -0.19763288944005308 8 -0.19763288944005308 10 -0.19763288944005308 12 
		-0.19763288944005308 15 -0.19763288944005308 17 -0.20394489686739534 19 -0.22835132558645202 
		21 -0.25444095628613339 25 -0.26454016861507795;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 1 9 1;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 1 9 5;
	setAttr -s 11 ".kix[8:10]"  0.020203847438097 0.055181447416543961 
		1;
	setAttr -s 11 ".kiy[8:10]"  -0.99979585409164429 -0.99847632646560669 
		0;
	setAttr -s 11 ".kox[8:10]"  0.020204050466418266 0.055181447416543961 
		0;
	setAttr -s 11 ".koy[8:10]"  -0.99979585409164429 -0.99847632646560669 
		0;
createNode animCurveTL -n "animCurveTL312";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.18919812301601746 4 0.14552605892239473 
		6 0.14552605892239473 8 0.1730601152643288 10 0.1179920025804608 12 0.15653968145916874 
		15 0.28319634063206595 17 0.26667590682690551 19 0.14001924765400822 21 0.14001924765400822 
		25 0.13806192026723146;
	setAttr -s 11 ".kit[0:10]"  3 9 3 9 9 9 9 
		9 3 3 1;
	setAttr -s 11 ".kot[0:10]"  3 9 3 9 9 9 9 
		9 3 3 5;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
createNode animCurveTL -n "animCurveTL313";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.99077043779297014 4 1.1961929756633671 
		6 1.1961929756633671 8 1.8184626489910816 10 1.9341056856272059 12 1.8404898940646288 
		15 1.1851793531265946 17 0.48030751077307954 19 0.43625302062598426 21 0.43625302062598426 
		25 0.43625302062598426;
	setAttr -s 11 ".kit[0:10]"  3 9 3 9 9 9 9 
		1 3 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 3 9 9 9 9 
		1 3 9 9;
	setAttr -s 11 ".kix[7:10]"  0.0028174612671136856 1 1 1;
	setAttr -s 11 ".kiy[7:10]"  -0.99999600648880005 0 0 0;
	setAttr -s 11 ".kox[7:10]"  0.0028174591716378927 1 1 1;
	setAttr -s 11 ".koy[7:10]"  -0.99999600648880005 0 0 0;
createNode animCurveTA -n "animCurveTA828";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -31.548014841396498 4 0.46104444544296308 
		6 0.46104444544296308 8 7.7551081793330283 10 -0.58279095637978728 12 -41.889616153138562 
		15 15.034008524188943 17 34.646432388829645 19 0 21 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 3 3 9 9 9 9 
		9 3 3 1;
	setAttr -s 11 ".kot[0:10]"  3 3 3 9 9 9 9 
		9 3 3 5;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
createNode animCurveTA -n "animCurveTA829";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 18.587332873603795 4 18.587332873603795 
		6 18.587332873603795 8 18.587332873603795 10 18.587332873603795 12 18.587332873603795 
		15 18.587332873603795 17 18.587332873603795 19 -3.6869279317052679 21 -10.92423090875635 
		25 -13.717778871715204;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA830";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -9.3021556723038969 4 -9.3021556723038969 
		6 -9.3021556723038969 8 -9.3021556723038969 10 -9.3021556723038969 12 -9.3021556723038969 
		15 -9.3021556723038969 17 -9.3021556723038969 19 -9.3021556723038969 21 -9.3021556723038969 
		25 -9.3021556723038969;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
createNode animCurveTL -n "animCurveTL314";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.19697756422115981 4 0.19697756422115981 
		6 0.19697756422115981 8 0.19697756422115981 10 0.19697756422115981 12 0.19697756422115981 
		15 0.19697756422115981 17 0.19960210987374555 19 0.20520909376790619 21 0.21344062331465252 
		25 0.21594587158542247;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
createNode animCurveTL -n "animCurveTL315";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.49095526767731257 4 0.29214779491922199 
		6 0.13800000000000001 8 0.13800000000000001 10 0.25360011604051408 12 0.19302519208825888 
		15 0.13800000000000001 17 0.13800000000000001 19 0.21505243716180653 21 0.13800000000000001 
		25 0.1380615615975922;
	setAttr -s 11 ".kit[1:10]"  9 3 3 9 9 3 3 
		9 3 1;
	setAttr -s 11 ".kot[1:10]"  9 3 3 9 9 3 3 
		9 3 5;
	setAttr -s 11 ".kix[10]"  0.99576354026794434;
	setAttr -s 11 ".kiy[10]"  0.091951221227645874;
createNode animCurveTL -n "animCurveTL316";
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
createNode animCurveTA -n "animCurveTA831";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 72.51831712904297 4 66.596702656887672 
		6 3.1599555742657675 8 3.1599555742657675 10 36.25972385798908 12 45.393511271088919 
		15 -0.52437167089126113 17 -0.52437167089126113 19 -19.066508418398907 21 
		1.3040672431773508 25 0;
	setAttr -s 11 ".kit[1:10]"  9 3 3 9 9 3 3 
		9 3 1;
	setAttr -s 11 ".kot[1:10]"  9 3 3 9 9 3 3 
		9 3 5;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
createNode animCurveTA -n "animCurveTA832";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 6 0 8 0 10 0 12 0 15 0 
		17 0 19 0 21 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
createNode animCurveTA -n "animCurveTA833";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 6 0 8 0 10 0 12 0 15 0 
		17 0 19 0 21 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
createNode animCurveTA -n "animCurveTA834";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA835";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA836";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA837";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA838";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA839";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA840";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 24 0 25 0;
	setAttr -s 4 ".kit[0:3]"  3 1 1 1;
	setAttr -s 4 ".kot[0:3]"  3 5 9 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA841";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 24 0 25 0;
	setAttr -s 4 ".kit[0:3]"  3 1 1 1;
	setAttr -s 4 ".kot[0:3]"  3 5 9 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA842";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 24 0 25 0;
	setAttr -s 4 ".kit[0:3]"  3 1 1 1;
	setAttr -s 4 ".kot[0:3]"  3 5 9 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA843";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 24 0 25 0;
	setAttr -s 4 ".kit[0:3]"  3 1 1 1;
	setAttr -s 4 ".kot[0:3]"  3 5 9 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA844";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 24 0 25 0;
	setAttr -s 4 ".kit[0:3]"  3 1 1 1;
	setAttr -s 4 ".kot[0:3]"  3 5 9 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA845";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 24 0 25 0;
	setAttr -s 4 ".kit[0:3]"  3 1 1 1;
	setAttr -s 4 ".kot[0:3]"  3 5 9 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL317";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.38111313624121829 4 -0.50297720131863477 
		6 -0.29136955967996292 8 -0.26908889351490567 10 0 12 0 15 -0.33954846911579156 
		17 -0.50361155183900197 19 -0.43021727334645249 21 -0.35560414503462617 25 
		-0.29369776993344948;
createNode animCurveTL -n "animCurveTL318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.012561822354600946 4 -1.2034710866429155e-016 
		6 -1.4573362559424926e-016 8 6.4522317234688427e-017 10 0 12 0 15 -6.2172489379008772e-017 
		17 -1.9820079751521437e-016 19 -1.7763568394002496e-017 21 -5.5900390703249465e-017 
		25 2.4019382344679115e-017;
createNode animCurveTL -n "animCurveTL319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.98780004389601173 4 1.0000000000000002 
		6 1 8 1.0000000000000002 10 1 12 1 15 1 17 0.99999999999999978 19 1 21 1 
		25 1;
createNode animCurveTL -n "animCurveTL320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 6 0 8 0 10 0 12 0 15 0 
		17 0 19 0 21 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
createNode animCurveTL -n "animCurveTL321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 6 0 8 0 10 0 12 0 15 0 
		17 0 19 0 21 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
createNode animCurveTL -n "animCurveTL322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 4 1 6 1 8 1 10 1 12 1 15 1 
		17 1 19 1 21 1 25 1;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
createNode animCurveTL -n "animCurveTL323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.033041213165890024 4 -0.048692319506319935 
		6 -0.048692319506319935 8 -0.048692319506319935 10 -0.048692319506319935 
		12 -0.048692319506319935 15 -0.048692319506319935 17 -0.048692319506319935 
		19 -0.056559187754241659 21 -0.067130291962386401 25 -0.076472881617957691;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 1 1;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 1 5;
	setAttr -s 11 ".kix[9:10]"  0.057891640812158585 1;
	setAttr -s 11 ".kiy[9:10]"  -0.99832284450531006 0;
	setAttr -s 11 ".kox[9:10]"  0.057892099022865295 0;
	setAttr -s 11 ".koy[9:10]"  -0.99832284450531006 0;
createNode animCurveTL -n "animCurveTL324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.86191433053168653 4 0.66484072301048547 
		6 0.64577778253981466 8 0.84402298820174126 10 0.80547530932303335 12 0.77055978282362581 
		15 0.86459737232356826 17 0.86605023327528874 19 0.82199574312819368 21 0.88870670921907147 
		25 0.96147551361829786;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 1 1;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 1 5;
	setAttr -s 11 ".kix[9:10]"  0.024099605157971382 0.011325543746352196;
	setAttr -s 11 ".kiy[9:10]"  0.99970954656600952 0.99993586540222168;
	setAttr -s 11 ".kox[9:10]"  0.02409985288977623 0;
	setAttr -s 11 ".koy[9:10]"  0.99970954656600952 0;
createNode animCurveTL -n "animCurveTL325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.72893957619979599 4 1.5357870437604584 
		6 1.785731834279455 8 1.7070327639408474 10 1.5754038643599586 12 1.4332959131026948 
		15 1.1304212933414186 17 0.88865616839279471 19 0.63480827918660265 21 0.46296913369876541 
		25 0.46296913369876541;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 1 9;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 1 9;
	setAttr -s 11 ".kix[9:10]"  0.014457596465945244 1;
	setAttr -s 11 ".kiy[9:10]"  -0.99989551305770874 0;
	setAttr -s 11 ".kox[9:10]"  0.014457591809332371 1;
	setAttr -s 11 ".koy[9:10]"  -0.99989551305770874 0;
createNode animCurveTA -n "animCurveTA846";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 20.950825280283915 4 31.893921676442705 
		6 1.2128078773019906 8 -22.636245182644341 10 -28.444448227445374 12 -21.539180797641826 
		15 -0.93600239830150667 17 9.656357383484508 19 9.656357383484508 21 4.802459265983229 
		25 -0.62843630316474508;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 1 
		9 9 1 1;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 1 
		9 9 1 5;
	setAttr -s 11 ".kix[6:10]"  0.24623928964138031 0.58495700359344482 
		0.8440396785736084 0.47925189137458801 1;
	setAttr -s 11 ".kiy[6:10]"  0.96920907497406006 0.81106430292129517 
		-0.53628069162368774 -0.87767738103866577 0;
	setAttr -s 11 ".kox[6:10]"  0.24623940885066986 0.58495700359344482 
		0.8440396785736084 0.47925195097923279 0;
	setAttr -s 11 ".koy[6:10]"  0.96920901536941528 0.81106430292129517 
		-0.53628069162368774 -0.87767738103866577 0;
createNode animCurveTA -n "animCurveTA847";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -7.5734518508549122 4 -6.8139232258102789 
		6 -6.8139232258102771 8 -6.8139232258102789 10 -6.8139232258102771 12 -6.8139232258102789 
		15 -6.8139232258102789 17 -6.813923225810278 19 -5.095981714050196 21 -4.5718726902584477 
		25 -5.8284402688137167;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
createNode animCurveTA -n "animCurveTA848";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0.045251426940717335 6 0.045251426940716148 
		8 0.045251426940718119 10 0.045251426940719319 12 0.045251426940725155 15 
		0.045251426940725155 17 0.04525142694072623 19 -0.30885725887313548 21 -0.93973001154335611 
		25 -1.295636019309746;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 1 1;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 1 5;
	setAttr -s 11 ".kix[9:10]"  0.99269592761993408 1;
	setAttr -s 11 ".kiy[9:10]"  -0.12064303457736969 0;
	setAttr -s 11 ".kox[9:10]"  0.99269592761993408 0;
	setAttr -s 11 ".koy[9:10]"  -0.1206430196762085 0;
createNode animCurveTA -n "animCurveTA849";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA850";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA851";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 4.0984482521620249 1 4.0984482521620249 
		1.005 4.0984482521620249 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA852";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 18.588300303494186 1 18.588300303494186 
		1.005 18.588300303494186 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA853";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA854";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA855";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -22.686733334985114 1 -22.686733334985114 
		1.005 -22.686733334985114 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA856";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA857";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA858";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.0579251312417479e-005 1 1.0579251312417479e-005 
		1.005 1.0579251312417477e-005 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA859";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA860";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA861";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 4.0984482535121209 1 4.0984482535121209 
		1.005 4.0984482535121209 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA862";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 18.588300300216805 1 18.588300300216805 
		1.005 18.588300300216801 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA863";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA864";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA865";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -22.686733333057838 1 -22.686733333057838 
		1.005 -22.686733333057838 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA866";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA867";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA868";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.0579251312417479e-005 1 1.0579251312417479e-005 
		1.005 1.0579251312417477e-005 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA869";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA870";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA871";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.4782236286598098 1 2.4782236286598098 
		1.005 2.4782236286598103 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA872";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA873";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA874";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -39.488235982334174 1 -1.4877789965049075e-015 
		1.005 0 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  0.048308800905942917 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0.99883246421813965 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTL -n "lsa_Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.45372869842366848;
createNode animCurveTL -n "lsa_Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.48341034420929002;
createNode animCurveTL -n "lsa_Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.25229533142903854;
createNode animCurveTA -n "lsa_Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.9557054376145322;
createNode animCurveTA -n "lsa_Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 15.314756789856879;
createNode animCurveTA -n "lsa_Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 33.672123365389041;
createNode animCurveTL -n "lsa_Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.50653448759043651;
createNode animCurveTL -n "lsa_Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.38121536569622144;
createNode animCurveTL -n "lsa_Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.33851248019721064;
createNode animCurveTA -n "lsa_Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.19812796569989924;
createNode animCurveTA -n "lsa_Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -17.228339209596228;
createNode animCurveTA -n "lsa_Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -33.102165847832048;
createNode animCurveTL -n "animCurveTL332";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.3705977767760478 1 -1.3705977767760478 
		1.005 -1.3705977767760478 25 -0.97384023505055983;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  5 1 5;
	setAttr -s 4 ".kix[1:3]"  1 1 0.0051672239787876606;
	setAttr -s 4 ".kiy[1:3]"  0 0 -0.99998664855957031;
	setAttr -s 4 ".kox[2:3]"  1 0;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "animCurveTL333";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.1618658070195953 1 2.1618658070195953 
		1.005 2.1618658070195953 25 1.2525965505547216;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  5 1 5;
	setAttr -s 4 ".kix[1:3]"  1 1 0.0019388512009754777;
	setAttr -s 4 ".kiy[1:3]"  0 0 0.99999809265136719;
	setAttr -s 4 ".kox[2:3]"  1 0;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "animCurveTL334";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.12044246479037771 1 -0.12044246479037771 
		1.005 -0.12044246479037771 25 0.71160976530058029;
	setAttr -s 4 ".kit[1:3]"  1 3 9;
	setAttr -s 4 ".kot[1:3]"  5 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 0.0096123330295085907;
	setAttr -s 4 ".kiy[1:3]"  0 0 0.99995380640029907;
	setAttr -s 4 ".kox[2:3]"  1 0.0096123330295085907;
	setAttr -s 4 ".koy[2:3]"  0 0.99995380640029907;
createNode animCurveTA -n "animCurveTA881";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 -12.222987645962956;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  5 1 5;
	setAttr -s 4 ".kix[1:3]"  1 1 0.22293111681938171;
	setAttr -s 4 ".kiy[1:3]"  0 0 -0.97483420372009277;
	setAttr -s 4 ".kox[2:3]"  1 0;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA882";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 -19.681044208515029;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  5 1 5;
	setAttr -s 4 ".kix[1:3]"  1 1 0.1305772066116333;
	setAttr -s 4 ".kiy[1:3]"  0 0 -0.99143815040588379;
	setAttr -s 4 ".kox[2:3]"  1 0;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA883";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 65.119655550709012;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  5 1 5;
	setAttr -s 4 ".kix[1:3]"  1 1 0.45194411277770996;
	setAttr -s 4 ".kiy[1:3]"  0 0 -0.89204627275466919;
	setAttr -s 4 ".kox[2:3]"  1 0;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "animCurveTL335";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.3705978542308779 1 1.3705978542308779 
		1.005 1.3705978542308779 20 0.69312249721407715 25 0.75854111686822778;
	setAttr -s 5 ".kit[1:4]"  1 3 9 1;
	setAttr -s 5 ".kot[1:4]"  5 1 9 5;
	setAttr -s 5 ".kix[1:4]"  1 1 0.013066845014691353 0.0045133586972951889;
	setAttr -s 5 ".kiy[1:4]"  0 0 -0.99991464614868164 0.99998980760574341;
	setAttr -s 5 ".kox[2:4]"  1 0.013066845014691353 0;
	setAttr -s 5 ".koy[2:4]"  0 -0.99991464614868164 0;
createNode animCurveTL -n "animCurveTL336";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.1618621235956237 1 2.1618621235956237 
		1.005 2.1618621235956237 20 1.2833915298234422 25 1.1932952672205326;
	setAttr -s 5 ".kit[1:4]"  1 3 9 1;
	setAttr -s 5 ".kot[1:4]"  5 1 9 5;
	setAttr -s 5 ".kix[1:4]"  1 1 0.0082576237618923187 0.0022691935300827026;
	setAttr -s 5 ".kiy[1:4]"  0 0 -0.99996590614318848 0.99999743700027466;
	setAttr -s 5 ".kox[2:4]"  1 0.0082576237618923187 0;
	setAttr -s 5 ".koy[2:4]"  0 -0.99996590614318848 0;
createNode animCurveTL -n "animCurveTL337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.12044250833667494 1 -0.12044250833667494 
		1.005 -0.12044250833667494 20 0.95598919990086506 25 0.93487838482050334;
	setAttr -s 5 ".kit[0:4]"  3 1 3 9 9;
	setAttr -s 5 ".kot[0:4]"  3 5 1 9 9;
	setAttr -s 5 ".kix[1:4]"  1 1 0.0075788358226418495 0.07870357483625412;
	setAttr -s 5 ".kiy[1:4]"  0 0 0.99997127056121826 -0.99689805507659912;
	setAttr -s 5 ".kox[2:4]"  1 0.0075788358226418495 0.07870357483625412;
	setAttr -s 5 ".koy[2:4]"  0 0.99997127056121826 -0.99689805507659912;
createNode animCurveTA -n "animCurveTA884";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 1.005 0 20 -5.7993291745893361 
		25 -5.7993291745893361;
	setAttr -s 5 ".kit[1:4]"  1 3 9 1;
	setAttr -s 5 ".kot[1:4]"  5 1 9 5;
	setAttr -s 5 ".kix[1:4]"  1 1 0.992087721824646 0.17323535680770874;
	setAttr -s 5 ".kiy[1:4]"  0 0 -0.12554681301116943 -0.98488044738769531;
	setAttr -s 5 ".kox[2:4]"  1 0.992087721824646 0;
	setAttr -s 5 ".koy[2:4]"  0 -0.12554681301116943 0;
createNode animCurveTA -n "animCurveTA885";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 1.005 0 20 -1.2282640104712745 
		25 -1.2282640104712745;
	setAttr -s 5 ".kit[1:4]"  1 3 9 1;
	setAttr -s 5 ".kot[1:4]"  5 1 9 5;
	setAttr -s 5 ".kix[1:4]"  1 1 0.99964100122451782 0.42956173419952393;
	setAttr -s 5 ".kiy[1:4]"  0 0 -0.026792526245117188 0.90303748846054077;
	setAttr -s 5 ".kox[2:4]"  1 0.99964100122451782 0;
	setAttr -s 5 ".koy[2:4]"  0 -0.026792526245117188 0;
createNode animCurveTA -n "animCurveTA886";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 1.005 0 20 -60.456694896838378 
		25 -60.456694896838378;
	setAttr -s 5 ".kit[1:4]"  1 3 9 1;
	setAttr -s 5 ".kot[1:4]"  5 1 9 5;
	setAttr -s 5 ".kix[1:4]"  1 1 0.60408002138137817 0.47741734981536865;
	setAttr -s 5 ".kiy[1:4]"  0 0 -0.79692369699478149 0.8786766529083252;
	setAttr -s 5 ".kox[2:4]"  1 0.60408002138137817 0;
	setAttr -s 5 ".koy[2:4]"  0 -0.79692369699478149 0;
createNode animCurveTL -n "animCurveTL338";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL339";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL340";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1 1 -1 1.005 -1 23.995000000000001 
		-1 24 -1 25 -1;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL341";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		-0.10167917362943303 24 -0.10167917362943303 25 -0.10167917362943303;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL342";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		-0.40762644910266188 24 -0.40762644910266188 25 -0.40762644910266188;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL343";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1 1 -1 1.005 -1 23.995000000000001 
		-0.93129112588482243 24 -0.93129112588482243 25 -0.93129112588482243;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA887";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 52.637219839343977 3 40.514666031468188 
		6 -52.253647395951099 9 -29.903266206279191 12 11.278052485068224 14 21.329592358663259 
		17 13.315812924930704 25 12.253734489678925;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 1 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 1 
		5;
	setAttr -s 8 ".kix[6:7]"  0.44265836477279663 0.20506635308265686;
	setAttr -s 8 ".kiy[6:7]"  -0.89669030904769897 0.97874808311462402;
	setAttr -s 8 ".kox[6:7]"  0.44265839457511902 0;
	setAttr -s 8 ".koy[6:7]"  -0.89669030904769897 0;
createNode animCurveTA -n "animCurveTA888";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -24.480967171432493 3 -39.445176802283065 
		6 -50.092210662671171 9 -38.738647402979851 12 -46.391953577115075 14 -51.365598175218167 
		17 -54.739758209310494 25 -65.746751280844975;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.69842571020126343;
	setAttr -s 8 ".kiy[7]"  0.71568256616592407;
createNode animCurveTA -n "animCurveTA889";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -64.344364641857084 3 -77.735295169850247 
		6 64.375191109696971 9 81.130914094540515 12 6.6414841170903225 14 -37.362644894081313 
		17 -7.3594601147207124 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.36602109670639038;
	setAttr -s 8 ".kiy[7]"  -0.93060654401779175;
createNode animCurveTA -n "animCurveTA890";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -53.609443747430014 3 -15.356018695340643 
		6 -31.063581684012128 9 -10.617703514958272 12 1.838741212999905 14 12.421120280347298 
		17 1.5892506708196732 21 -2.1372745396580126 25 -0.061808866237340665;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		1 1;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		1 5;
	setAttr -s 9 ".kix[7:8]"  0.9948461651802063 0.37821653485298157;
	setAttr -s 9 ".kiy[7:8]"  0.1013958603143692 0.92571717500686646;
	setAttr -s 9 ".kox[7:8]"  0.99484622478485107 0;
	setAttr -s 9 ".koy[7:8]"  0.101395383477211 0;
createNode animCurveTA -n "animCurveTA891";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -25.27913794042524 3 -1.6370789986654639 
		6 -27.265876981733431 9 -43.520904468685075 12 -46.613813622327669 14 -51.680677305283119 
		17 -47.004705922720575 21 -57.498708118646476 25 -59.058178941076754;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		1 1;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		1 5;
	setAttr -s 9 ".kix[7:8]"  0.77861714363098145 0.7006528377532959;
	setAttr -s 9 ".kiy[7:8]"  -0.62749922275543213 0.71350234746932983;
	setAttr -s 9 ".kox[7:8]"  0.77861720323562622 0;
	setAttr -s 9 ".koy[7:8]"  -0.62749922275543213 0;
createNode animCurveTA -n "animCurveTA892";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 57.594080128123679 3 69.61309617468136 
		6 47.284955744198868 9 25.186610416378635 12 21.197036551535628 14 3.2305679713565154 
		17 10.533416272908328 21 6.2662653992304707 25 16.57914742975785;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 1 
		1 1;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 1 
		1 5;
	setAttr -s 9 ".kix[6:8]"  0.43730229139328003 0.58263218402862549 
		0.92501348257064819;
	setAttr -s 9 ".kiy[6:8]"  -0.89931458234786987 0.81273597478866577 
		0.37993425130844116;
	setAttr -s 9 ".kox[6:8]"  0.43730241060256958 0.58263218402862549 
		0;
	setAttr -s 9 ".koy[6:8]"  -0.8993145227432251 0.81273597478866577 
		0;
createNode animCurveTA -n "animCurveTA893";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 59.468287502559065 3 48.559360783080216 
		6 48.559360783080216 9 57.53252201816786 12 64.26052977275333 14 67.589470045673536 
		17 62.920143586743741 25 8.5572674112203639;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 1 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 1 
		5;
	setAttr -s 8 ".kix[6:7]"  0.29305985569953918 0.60018056631088257;
	setAttr -s 8 ".kiy[6:7]"  -0.95609408617019653 0.79986459016799927;
	setAttr -s 8 ".kox[6:7]"  0.29305985569953918 0;
	setAttr -s 8 ".koy[6:7]"  -0.95609408617019653 0;
createNode animCurveTA -n "animCurveTA894";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 59.305463658789549 3 60.185649943194235 
		6 83.949023721627441 9 89.39290439644023 12 40.012962471887889 14 20.889584475977955 
		17 16.300985903101061 21 21.464222889398297 25 15.711328223519061;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		1 1;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		1 5;
	setAttr -s 9 ".kix[7:8]"  0.90959548950195313 0.31319519877433777;
	setAttr -s 9 ".kiy[7:8]"  -0.4154948890209198 0.94968879222869873;
	setAttr -s 9 ".kox[7:8]"  0.90959548950195313 0;
	setAttr -s 9 ".koy[7:8]"  -0.41549494862556458 0;
createNode animCurveTA -n "animCurveTA895";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 18.476235154862632 3 18.476235154862632 
		6 18.476235154862632 9 18.476235154862632 12 18.476235154862632 14 18.476235154862632 
		17 19.515523380515379 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.91321319341659546;
	setAttr -s 8 ".kiy[7]"  -0.40748211741447449;
createNode animCurveTA -n "animCurveTA896";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 10.082003051124275 3 10.082003051124275 
		6 10.082003051124275 9 10.082003051124275 12 10.082003051124275 14 10.082003051124275 
		17 10.649115719039902 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.16665671765804291;
	setAttr -s 8 ".kiy[7]"  0.9860149621963501;
createNode animCurveTA -n "animCurveTA897";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -4.720189328892868 3 -4.720189328892868 
		6 -4.720189328892868 9 -4.720189328892868 12 -4.720189328892868 14 -4.720189328892868 
		17 -4.985699992858259 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.99532532691955566;
	setAttr -s 8 ".kiy[7]"  -0.096578821539878845;
createNode animCurveTA -n "animCurveTA898";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -11.342548829337773 3 -13.555270109330269 
		6 -13.555270109330269 9 -13.555270109330269 12 -13.555270109330269 14 -13.555270109330269 
		17 -14.317753995053931 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.87405633926391602;
	setAttr -s 8 ".kiy[7]"  0.48582461476325989;
createNode animCurveTA -n "animCurveTA899";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 11.615881410206434 3 11.615881410206432 
		6 11.615881410206432 9 11.615881410206432 12 11.615881410206432 14 11.615881410206432 
		17 12.269274762865578 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.14628320932388306;
	setAttr -s 8 ".kiy[7]"  0.98924273252487183;
createNode animCurveTA -n "animCurveTA900";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.32159281075535046 3 0.32159281075535068 
		6 0.32159281075535068 9 0.32159281075535068 12 0.32159281075535068 14 0.32159281075535068 
		17 0.33968240652337872 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.3563058078289032;
	setAttr -s 8 ".kiy[7]"  -0.93436938524246216;
createNode animCurveTA -n "animCurveTA901";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 11.09331921989552 3 11.093319219895511 
		6 11.093319219895511 9 11.093319219895511 12 11.093319219895511 14 11.093319219895511 
		17 11.130982207935231 25 10.423754966968488;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.25089076161384583;
	setAttr -s 8 ".kiy[7]"  0.96801537275314331;
createNode animCurveTA -n "animCurveTA902";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 59.959644693642325 3 59.959644693642325 
		6 59.959644693642325 9 59.959644693642325 12 59.959644693642325 14 59.959644693642325 
		17 61.772964615621859 25 27.7228482558439;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.51567679643630981;
	setAttr -s 8 ".kiy[7]"  0.85678315162658691;
createNode animCurveTA -n "animCurveTA903";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 48.10646961869692 3 48.106469618696913 
		6 48.106469618696913 9 48.106469618696913 12 48.106469618696913 14 48.106469618696913 
		17 49.598781238328471 25 21.576484776388227;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.61172902584075928;
	setAttr -s 8 ".kiy[7]"  0.79106736183166504;
createNode animCurveTA -n "animCurveTA904";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA905";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA906";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 101.15442879205187 3 67.810939637714412 
		6 67.810939637714412 9 67.810939637714412 12 67.810939637714412 14 67.810939637714412 
		17 70.102051514685854 25 27.080064458283058;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.66946250200271606;
	setAttr -s 8 ".kiy[7]"  0.74284583330154419;
createNode animCurveTA -n "animCurveTA907";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA908";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA909";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[0:5]"  3 5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA910";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 27.70521891534332 1 27.70521891534332 
		1.005 27.705218915343313 5 27.705218915343313 9 27.705218915343313 13 27.705218915343313 
		17 27.705218915343313 21 27.705218915343313 23.995000000000001 0 24 0 25 
		0;
	setAttr -s 11 ".kit[0:10]"  3 1 3 9 9 9 1 
		1 1 1 1;
	setAttr -s 11 ".kot[0:10]"  3 5 1 9 9 9 9 
		9 3 9 5;
	setAttr -s 11 ".kix[1:10]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[1:10]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[2:10]"  1 1 1 1 1 0.4343411922454834 1 
		1 0;
	setAttr -s 11 ".koy[2:10]"  0 0 0 0 0 -0.90074843168258667 
		0 0 0;
createNode animCurveTA -n "animCurveTA911";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 43.35103828268312 1 43.35103828268312 
		1.005 43.35103828268312 5 43.35103828268312 9 43.35103828268312 13 43.35103828268312 
		17 43.35103828268312 21 43.35103828268312 23.995000000000001 0 24 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 1 3 9 9 9 1 
		1 1 1 1;
	setAttr -s 11 ".kot[0:10]"  3 5 1 9 9 9 9 
		9 3 9 5;
	setAttr -s 11 ".kix[1:10]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[1:10]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[2:10]"  1 1 1 1 1 0.2945023775100708 1 
		1 0;
	setAttr -s 11 ".koy[2:10]"  0 0 0 0 0 -0.95565074682235718 
		0 0 0;
createNode animCurveTA -n "animCurveTA912";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 54.235722998003197 1 54.235722998003197 
		1.005 54.23572299800319 5 54.23572299800319 9 54.23572299800319 13 54.23572299800319 
		17 54.23572299800319 21 54.23572299800319 23.995000000000001 13.994403295754109 
		24 0 25 13.994403295754109;
	setAttr -s 11 ".kit[0:10]"  3 1 3 9 9 9 1 
		1 1 1 1;
	setAttr -s 11 ".kot[0:10]"  3 5 1 9 9 9 9 
		9 3 9 5;
	setAttr -s 11 ".kix[1:10]"  1 1 1 1 1 1 1 1 0.00068244908470660448 
		0.26331382989883423;
	setAttr -s 11 ".kiy[1:10]"  0 0 0 0 0 0 0 0 -0.9999997615814209 
		0.96471023559570313;
	setAttr -s 11 ".kox[2:10]"  1 1 1 1 1 0.31507480144500732 1 
		1 0;
	setAttr -s 11 ".koy[2:10]"  0 0 0 0 0 -0.94906681776046753 
		0 0 0;
createNode animCurveTA -n "animCurveTA913";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 39.038703285259977 1 39.038703285259977 
		1.005 39.038703285259977 5 39.038703285259977 9 39.038703285259977 13 39.038703285259977 
		17 39.038703285259977 21 39.038703285259977 23.995000000000001 0 24 0 25 
		0;
	setAttr -s 11 ".kit[0:10]"  3 1 3 9 9 9 1 
		1 1 1 1;
	setAttr -s 11 ".kot[0:10]"  3 5 1 9 9 9 9 
		9 3 9 5;
	setAttr -s 11 ".kix[1:10]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[1:10]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[2:10]"  1 1 1 1 1 0.32377707958221436 1 
		1 0;
	setAttr -s 11 ".koy[2:10]"  0 0 0 0 0 -0.94613337516784668 
		0 0 0;
createNode animCurveTA -n "animCurveTA914";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 72.755037061650995 1 72.755037061650995 
		1.005 72.755037061650995 5 72.755037061650995 9 72.755037061650995 13 72.755037061650995 
		17 72.755037061650995 21 72.755037061650995 23.995000000000001 0 24 0 25 
		0;
	setAttr -s 11 ".kit[0:10]"  3 1 3 9 9 9 1 
		1 1 1 1;
	setAttr -s 11 ".kot[0:10]"  3 5 1 9 9 9 9 
		9 3 9 5;
	setAttr -s 11 ".kix[1:10]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[1:10]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[2:10]"  1 1 1 1 1 0.18060308694839478 1 
		1 0;
	setAttr -s 11 ".koy[2:10]"  0 0 0 0 0 -0.98355603218078613 
		0 0 0;
createNode animCurveTA -n "animCurveTA915";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 38.926480273156798 1 38.926480273156798 
		1.005 38.926480273156798 5 38.926480273156798 9 38.926480273156798 13 38.926480273156798 
		17 38.926480273156798 21 38.926480273156798 23.995000000000001 13.994403295754109 
		24 0 25 13.994403295754109;
	setAttr -s 11 ".kit[0:10]"  3 1 3 9 9 9 1 
		1 1 1 1;
	setAttr -s 11 ".kot[0:10]"  3 5 1 9 9 9 9 
		9 3 9 5;
	setAttr -s 11 ".kix[1:10]"  1 1 1 1 1 1 1 1 0.00068244908470660448 
		0.26331382989883423;
	setAttr -s 11 ".kiy[1:10]"  0 0 0 0 0 0 0 0 -0.9999997615814209 
		0.96471023559570313;
	setAttr -s 11 ".kox[2:10]"  1 1 1 1 1 0.47230371832847595 1 
		1 0;
	setAttr -s 11 ".koy[2:10]"  0 0 0 0 0 -0.88143587112426758 
		0 0 0;
createNode animCurveTA -n "animCurveTA916";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA917";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA918";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 81.622987204614233 3 40.637834425062678 
		6 40.637834425062678 9 40.637834425062678 12 40.637834425062678 14 40.637834425062678 
		17 41.353683247109352 25 27.911632519594587;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.40722069144248962;
	setAttr -s 8 ".kiy[7]"  0.91332978010177612;
createNode animCurveTA -n "animCurveTA919";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.2945941069882385 3 1.2945941069882381 
		6 1.2945941069882381 9 1.2945941069882381 12 1.2945941069882381 14 1.2945941069882381 
		17 1.3674150174168214 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA920";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 3.3208811165553156 3 3.3208811165553147 
		6 3.3208811165553147 9 3.3208811165553147 12 3.3208811165553147 14 3.3208811165553147 
		17 3.5076806841266883 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA921";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -27.52582447785997 3 -27.525824477859967 
		6 -27.525824477859967 9 -27.525824477859967 12 -27.525824477859967 14 -27.525824477859967 
		17 -29.074152125383112 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA922";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -8.7597363552835983 3 -21.897916030805764 
		6 -27.026607495669865 9 -3.2192397419481766 12 -1.5687377008013468 14 -0.01800229915334188 
		17 -2.6433860314125552 25 -0.65073001024951671;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA923";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 -1.8399336948780474 9 
		2.789816990309629 12 2.6335331205563497 14 -2.2120116005629544 17 2.2289899803918249 
		25 -4.2368721935960938;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA924";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -8.9349579591731985 3 0.5940776450337566 
		6 -10.116452954015815 9 -16.84450977575354 12 -19.946276829499073 14 -19.372854163739966 
		17 -14.780247566026143 25 2.6995264082587447;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 1 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 1 
		5;
	setAttr -s 8 ".kix[6:7]"  0.52487486600875854 1;
	setAttr -s 8 ".kiy[6:7]"  0.85117942094802856 0;
	setAttr -s 8 ".kox[6:7]"  0.52487492561340332 0;
	setAttr -s 8 ".koy[6:7]"  0.85117936134338379 0;
createNode animCurveTA -n "animCurveTA925";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA926";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA927";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 -8.7299801591531629 
		12 -3.7713514762097855 14 0 17 0.11785472970351051 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA928";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 1.6804018684285151 6 -22.700037150197865 
		9 -9.0824594233362035 12 -1.4716916966527929 14 -3.8819790806033372 17 -6.2893151825303244 
		25 -4.0198472869727979;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.69591563940048218;
	setAttr -s 8 ".kiy[7]"  -0.71812355518341064;
createNode animCurveTA -n "animCurveTA929";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -9.2427148064678804 3 4.0964050967290131 
		6 -22.180583921737327 9 -6.263830548737908 12 6.5834531643157783 14 0.99161045495694855 
		17 -6.5290168112633511 25 -9.1335573833666519;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.3844020664691925;
	setAttr -s 8 ".kiy[7]"  -0.92316579818725586;
createNode animCurveTA -n "animCurveTA930";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -10.062830706779264 3 -26.805484402997095 
		6 19.871662933460563 9 15.915457627956584 12 -7.0231336990779614 14 -5.1254075887366684 
		17 7.4228031599308189 25 -2.2752136084709536;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 1 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 1 
		5;
	setAttr -s 8 ".kix[6:7]"  0.94529211521148682 0.8741992712020874;
	setAttr -s 8 ".kiy[6:7]"  0.32622507214546204 -0.48556739091873169;
	setAttr -s 8 ".kox[6:7]"  0.94529211521148682 0;
	setAttr -s 8 ".koy[6:7]"  0.3262251615524292 0;
createNode animCurveTA -n "animCurveTA931";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 -0.17211839227867792 
		25 -1.8903601258661935;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA932";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0.26734204925965083 
		25 2.5597289571479038;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA933";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 5.671986885245901 3 7.9008995674020186 
		6 13.902630719132157 9 20.600371605667004 12 15.706243378753918 14 17.335957696149318 
		17 12.292629576166151 25 2.0168110874036049;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 1 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 1 
		5;
	setAttr -s 8 ".kix[6:7]"  0.62695133686065674 1;
	setAttr -s 8 ".kiy[6:7]"  -0.77905845642089844 0;
	setAttr -s 8 ".kox[6:7]"  0.62695133686065674 0;
	setAttr -s 8 ".koy[6:7]"  -0.77905845642089844 0;
createNode animCurveTA -n "animCurveTA934";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA935";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA936";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 90.838361755940937 3 66.910735171519136 
		6 66.910735171519136 9 66.910735171519136 12 66.910735171519136 14 66.910735171519136 
		17 68.794077659127268 25 33.429092416277157;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.26260718703269958;
	setAttr -s 8 ".kiy[7]"  0.96490281820297241;
createNode animCurveTA -n "animCurveTA937";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 26.194612819039182 3 26.194612819039175 
		6 26.194612819039175 9 26.194612819039175 12 26.194612819039175 14 26.194612819039175 
		17 27.203809250256043 25 8.2533422302317216;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.90945971012115479;
	setAttr -s 8 ".kiy[7]"  -0.41579201817512512;
createNode animCurveTA -n "animCurveTA938";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 42.116293762219598 3 42.116293762219605 
		6 42.116293762219605 9 42.116293762219605 12 42.116293762219605 14 42.116293762219605 
		17 43.176768890663695 25 23.263402056531085;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.70033782720565796;
	setAttr -s 8 ".kiy[7]"  0.71381151676177979;
createNode animCurveTA -n "animCurveTA939";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 51.312599966148298 3 51.312599966148291 
		6 51.312599966148291 9 51.312599966148291 12 51.312599966148291 14 51.312599966148291 
		17 53.064580629887352 25 20.166277752815617;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.37843403220176697;
	setAttr -s 8 ".kiy[7]"  0.92562824487686157;
createNode animCurveTA -n "animCurveTA940";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA941";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA942";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 86.611733534295581 3 55.749331591600708 
		6 55.749331591600708 9 55.749331591600708 12 55.749331591600708 14 55.749331591600708 
		17 57.914687334191584 25 17.254116939558369;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		1;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.41486340761184692;
	setAttr -s 8 ".kiy[7]"  -0.90988367795944214;
createNode clipLibrary -n "clipLibrary1";
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
	setAttr -s 102 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".top" 479;
	setAttr ".rght" 639;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
select -ne :defaultRenderQuality;
	setAttr ".eaa" 1;
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
connectAttr "lsa_run_into_personSource.st" "clipLibrary1.st[0]";
connectAttr "lsa_run_into_personSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL303.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL304.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL305.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL306.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL307.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA824.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU57.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU58.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU59.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU60.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU61.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU62.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU63.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU64.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA825.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA826.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA827.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL308.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL309.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL310.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL311.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL312.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL313.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA828.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA829.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA830.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL314.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL315.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL316.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA831.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA832.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA833.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA834.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA835.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA836.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA837.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA838.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA839.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA840.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA841.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA842.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA843.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA844.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA845.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL317.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL318.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL319.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL320.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL321.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL322.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL323.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL324.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL325.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA846.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA847.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA848.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA849.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA850.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA851.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA852.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA853.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA854.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA855.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA856.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA857.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA858.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA859.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA860.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA861.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA862.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA863.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA864.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA865.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA866.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA867.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA868.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA869.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA870.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA871.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA872.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA873.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA874.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "lsa_Right_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "lsa_Right_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "lsa_Left_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "animCurveTL332.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL333.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL334.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA881.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA882.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA883.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL335.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL336.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL337.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA884.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA885.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA886.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL338.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL339.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL340.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL341.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL342.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL343.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA887.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA888.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA889.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA890.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA891.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA892.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA893.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA894.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA895.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA896.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA897.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA898.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA899.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA900.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA901.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA902.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA903.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA904.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA905.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA906.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA907.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA908.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA909.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA910.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA911.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA912.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA913.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA914.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA915.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA916.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA917.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA918.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA919.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA920.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA921.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA922.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA923.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA924.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA925.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA926.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA927.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA928.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA929.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA930.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA931.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA932.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA933.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA934.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA935.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA936.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA937.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA938.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA939.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA940.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA941.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA942.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[4].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[5].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[5].olnk";
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
// End of lsa_run_into_person.ma
