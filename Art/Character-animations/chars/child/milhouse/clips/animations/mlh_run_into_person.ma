//Maya ASCII 4.0 scene
//Name: mlh_run_into_person.ma
//Last modified: Tue, Jun 25, 2002 01:45:12 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.7";
requires "p3dDeformer" "17.1.0.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mlh_run_into_personSource";
	setAttr ".ihi" 0;
	setAttr ".du" 25;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL344";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "animCurveTL345";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -0.016145200947834018 1 -0.017101167121590606 
		2 -0.019331754860129967 3 -0.021880997989356485 4 -0.023792930335174548 5 
		-0.024111585725861705 6 -0.023792930335174548 7 -0.023792930335174548 8 -0.023792930335174548 
		9 -0.023792930335174548 10 -0.023792930335174548 11 -0.023792930335174548 
		12 -0.023792930335174548 13 -0.023792930335174548 14 -0.023792930335174548 
		15 -0.023792930335174548 16 -0.023552677032866006 17 -0.023792930335174548 
		18 -0.025392116366117913 19 -0.027636983156574934 20 -0.030080598947859607 
		21 -0.03280242913533167 22 -0.03509567279238554 23 -0.036489393161929173 
		24 -0.037180918209169946 25 -0.037367575899315227;
createNode animCurveTL -n "animCurveTL347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0.35618776700137117 1 0.40165319174181419 
		2 0.51028361160640268 3 0.64043024506002599 4 0.75044431056757288 5 0.82779699246405958 
		6 0.87257689839154018 7 0.86500242846632092 8 0.83412152150676333 9 0.80389856376685542 
		10 0.7698026048978045 11 0.73759479484464752 12 0.70036322269914775 13 0.65449433739721996 
		14 0.60472882248027393 15 0.55236709515099935 16 0.49512862726034423 17 0.43423140488816908 
		18 0.37007597791825886 19 0.31019161370857434 20 0.25802379501829004 21 0.22622443245902699 
		22 0.21869254793950002 23 0.21676668872290297 24 0.21765703849214479 25 0.21857378093013449;
createNode animCurveTA -n "animCurveTA943";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0;
createNode animCurveTU -n "animCurveTU65";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTU -n "animCurveTU66";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTU -n "animCurveTU67";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTU -n "animCurveTU68";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTU -n "animCurveTU69";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 1 25 0;
createNode animCurveTU -n "animCurveTU70";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 1 25 0;
createNode animCurveTU -n "animCurveTU71";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 25 1;
createNode animCurveTU -n "animCurveTU72";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  19 0 25 1;
createNode animCurveTA -n "animCurveTA944";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 1 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA945";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 1 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA946";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 1 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "animCurveTL349";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 1 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "animCurveTL350";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 1 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "animCurveTL351";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 1 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "animCurveTL352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.19763288944005308 4 -0.19763288944005308 
		6 -0.19763288944005308 8 -0.19763288944005308 10 -0.19763288944005308 12 
		-0.19763288944005308 15 -0.19763288944005308 17 -0.20394489686739534 19 -0.21251663620439265 
		21 -0.21809314656822423 25 -0.21764441145149604;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 1 3 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 1 3 3;
	setAttr -s 11 ".kix[8:10]"  0.11342454701662064 1 1;
	setAttr -s 11 ".kiy[8:10]"  -0.99354660511016846 0 0;
	setAttr -s 11 ".kox[8:10]"  0.11342407763004303 1 1;
	setAttr -s 11 ".koy[8:10]"  -0.99354666471481323 0 0;
createNode animCurveTL -n "animCurveTL353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.21502383793527094 4 0.17135177384164826 
		6 0.17135177384164826 8 0.19888583018358241 10 0.14381771749971439 12 0.18236539637842236 
		15 0.30902205555131951 17 0.29250162174615901 19 0.15253497742852534 21 0.15253497742852534 
		25 0.1521050350093231;
	setAttr -s 11 ".kit[0:10]"  3 9 3 9 9 9 9 
		9 3 3 3;
	setAttr -s 11 ".kot[0:10]"  3 9 3 9 9 9 9 
		9 3 3 3;
createNode animCurveTL -n "animCurveTL354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.99077043779297014 4 1.1961929756633671 
		6 1.1961929756633671 8 1.8184626489910816 10 1.9341056856272059 12 1.8404898940646288 
		15 1.1851793531265946 17 0.42350036790571621 19 0.37944587775862093 21 0.37944587775862093 
		25 0.38240764043087772;
	setAttr -s 11 ".kit[0:10]"  3 9 3 9 9 9 9 
		1 3 9 9;
	setAttr -s 11 ".kot[0:10]"  3 9 3 9 9 9 9 
		1 3 9 9;
	setAttr -s 11 ".kix[7:10]"  0.0028174612671136856 1 0.55962860584259033 
		0.41050297021865845;
	setAttr -s 11 ".kiy[7:10]"  -0.99999600648880005 0 0.82874351739883423 
		0.91185927391052246;
	setAttr -s 11 ".kox[7:10]"  0.0028174591716378927 1 0.55962860584259033 
		0.41050297021865845;
	setAttr -s 11 ".koy[7:10]"  -0.99999600648880005 0 0.82874351739883423 
		0.91185927391052246;
createNode animCurveTA -n "animCurveTA947";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -31.548014841396498 4 0.46104444544296308 
		6 0.46104444544296308 8 7.7551081793330283 10 -0.58279095637978728 12 -41.889616153138562 
		15 15.034008524188943 17 34.646432388829645 19 0.041057802742786149 21 0.041057802742786149 
		25 0;
	setAttr -s 11 ".kit[3:10]"  9 9 9 9 9 3 3 
		3;
	setAttr -s 11 ".kot[3:10]"  9 9 9 9 9 3 3 
		3;
createNode animCurveTA -n "animCurveTA948";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -16.458817548714002 4 -16.458817548714002 
		6 -16.458817548714002 8 -16.458817548714002 10 -16.458817548714002 12 -16.458817548714002 
		15 -16.458817548714002 17 -17.509380370972345 19 -20.836162641457097 21 -24.338038715651571 
		25 -25.948901905116401;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 1 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 1 3;
	setAttr -s 11 ".kix[9:10]"  0.85103946924209595 1;
	setAttr -s 11 ".kiy[9:10]"  -0.52510172128677368 0;
	setAttr -s 11 ".kox[9:10]"  0.85103946924209595 1;
	setAttr -s 11 ".koy[9:10]"  -0.52510172128677368 0;
createNode animCurveTA -n "animCurveTA949";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 6 0 8 0 10 0 12 0 15 0 
		17 0 19 0 21 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.19697756422115981 4 0.19697756422115981 
		6 0.19697756422115981 8 0.19697756422115981 10 0.19697756422115981 12 0.19697756422115981 
		15 0.19697756422115981 17 0.19021310652358048 19 0.16617060615406207 21 0.14425849336606802 
		25 0.1393832443869546;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 1 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 1 3;
	setAttr -s 11 ".kix[9:10]"  0.087523587048053741 1;
	setAttr -s 11 ".kiy[9:10]"  -0.99616247415542603 0;
	setAttr -s 11 ".kox[9:10]"  0.087523199617862701 1;
	setAttr -s 11 ".koy[9:10]"  -0.99616247415542603 0;
createNode animCurveTL -n "animCurveTL356";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.51678098259656613 4 0.31797350983847561 
		6 0.16382571491925355 8 0.16382571491925355 10 0.27942583095976764 12 0.21885090700751242 
		15 0.16382571491925355 17 0.16382571491925355 19 0.24087815208106014 21 0.152 
		25 0.1521046763396838;
	setAttr -s 11 ".kit[1:10]"  9 3 3 9 9 3 3 
		9 3 3;
	setAttr -s 11 ".kot[1:10]"  9 3 3 9 9 3 3 
		9 3 3;
createNode animCurveTL -n "animCurveTL357";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.092819338422239051 4 1.2445014095487996 
		6 2.0209617983913453 8 2.0209617983913453 10 1.6189645757991042 12 1.2885558996958926 
		15 1.1674060517913818 17 1.1674060517913818 19 0.87003824329849266 21 0.45200000000000001 
		25 0.44809634965392958;
	setAttr -s 11 ".kit[1:10]"  1 3 3 9 9 3 3 
		9 3 9;
	setAttr -s 11 ".kot[1:10]"  1 3 3 9 9 3 3 
		9 3 9;
	setAttr -s 11 ".kix[1:10]"  0.0007341299788095057 1 1 0.001820481033064425 
		0.0036908953916281462 1 1 0.0018637401517480612 1 0.32322624325752258;
	setAttr -s 11 ".kiy[1:10]"  0.99999970197677612 0 0 -0.99999833106994629 
		-0.99999320507049561 0 0 -0.99999827146530151 0 -0.94632172584533691;
	setAttr -s 11 ".kox[1:10]"  0.00073413492646068335 1 1 0.001820481033064425 
		0.0036908953916281462 1 1 0.0018637401517480612 1 0.32322624325752258;
	setAttr -s 11 ".koy[1:10]"  0.99999970197677612 0 0 -0.99999833106994629 
		-0.99999320507049561 0 0 -0.99999827146530151 0 -0.94632172584533691;
createNode animCurveTA -n "animCurveTA950";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 72.51831712904297 4 66.596702656887672 
		6 3.1599555742657675 8 3.1599555742657675 10 36.25972385798908 12 45.393511271088919 
		15 -0.52437167089126113 17 -0.52437167089126113 19 -19.066508418398907 21 
		0.072720037914692892 25 0;
	setAttr -s 11 ".kit[1:10]"  9 3 3 9 9 3 3 
		9 3 3;
	setAttr -s 11 ".kot[1:10]"  9 3 3 9 9 3 3 
		9 3 3;
createNode animCurveTA -n "animCurveTA951";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 6 0 8 0 10 0 12 0 15 0 
		17 0 19 0 21 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA952";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 6 0 8 0 10 0 12 0 15 0 
		17 0 19 0 21 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA953";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA954";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA955";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA956";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA957";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA958";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA959";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 1 0 25 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  5 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA960";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 1 0 25 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  5 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA961";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 1 0 25 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  5 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA962";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 1 0 25 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  5 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA963";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 1 0 25 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  5 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA964";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 1 0 25 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  5 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 6 0 8 0 10 0 12 0 15 0 
		17 0 19 0 21 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 6 0 8 0 10 0 12 0 15 0 
		17 0 19 0 21 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 4 1 6 1 8 1 10 1 12 1 15 1 
		17 1 19 1 21 1 25 1;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 6 0 8 0 10 0 12 0 15 0 
		17 0 19 0 21 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0 6 0 8 0 10 0 12 0 15 0 
		17 0 19 0 21 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 4 1 6 1 8 1 10 1 12 1 15 1 
		17 1 19 1 21 1 25 1;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL364";
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
createNode animCurveTL -n "animCurveTL365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.93372358359745611 4 0.73664997607625493 
		6 0.71758703560558401 8 0.91583224126751095 10 0.87728456238880304 12 0.84236903588939538 
		15 0.93640662538933794 17 0.9378594863410582 19 0.89380499619396336 21 0.94459858369566274 
		25 0.96474337111153452;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 1 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 1 3;
	setAttr -s 11 ".kix[9:10]"  0.024099605157971382 1;
	setAttr -s 11 ".kiy[9:10]"  0.99970954656600952 0;
	setAttr -s 11 ".kox[9:10]"  0.02409985288977623 1;
	setAttr -s 11 ".koy[9:10]"  0.99970954656600952 0;
createNode animCurveTL -n "animCurveTL366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.72893957619979599 4 1.5357870437604584 
		6 1.785731834279455 8 1.7070327639408474 10 1.5754038643599586 12 1.4332959131026948 
		15 1.1304212933414186 17 0.88865616839279471 19 0.63480827918660265 21 0.46296913369876541 
		25 0.44731204718489381;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 1 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 1 3;
	setAttr -s 11 ".kix[9:10]"  0.014457596465945244 1;
	setAttr -s 11 ".kiy[9:10]"  -0.99989551305770874 0;
	setAttr -s 11 ".kox[9:10]"  0.014457591809332371 1;
	setAttr -s 11 ".koy[9:10]"  -0.99989551305770874 0;
createNode animCurveTA -n "animCurveTA965";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 20.950825280283915 4 31.893921676442705 
		6 1.2128078773019906 8 -22.636245182644341 10 -28.444448227445374 12 -21.539180797641826 
		15 -0.93600239830150667 17 9.656357383484508 19 9.656357383484508 21 3.6199350586723997 
		25 -0.62843630316474508;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 1 
		9 9 1 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 1 
		9 9 1 3;
	setAttr -s 11 ".kix[6:10]"  0.24623928964138031 0.58495700359344482 
		0.7846185564994812 0.47925189137458801 1;
	setAttr -s 11 ".kiy[6:10]"  0.96920907497406006 0.81106430292129517 
		-0.61997878551483154 -0.87767738103866577 0;
	setAttr -s 11 ".kox[6:10]"  0.24623940885066986 0.58495700359344482 
		0.7846185564994812 0.47925195097923279 1;
	setAttr -s 11 ".koy[6:10]"  0.96920901536941528 0.81106430292129517 
		-0.61997878551483154 -0.87767738103866577 0;
createNode animCurveTA -n "animCurveTA966";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -7.5734518508549122 4 -6.8139232258102789 
		6 -6.8139232258102771 8 -6.8139232258102789 10 -6.8139232258102771 12 -6.8139232258102789 
		15 -6.8139232258102789 17 -6.813923225810278 19 -6.3503858664446922 21 -5.919889092831637 
		25 -5.8284402688137167;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA967";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 4 0.045251426940717335 6 0.045251426940716148 
		8 0.045251426940718119 10 0.045251426940719319 12 0.045251426940725155 15 
		0.045251426940725155 17 -0.022760179378487875 19 -0.30885725887313548 21 
		-0.93973001154335611 25 -1.295636019309746;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 1 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 1 3;
	setAttr -s 11 ".kix[9:10]"  0.99269592761993408 1;
	setAttr -s 11 ".kiy[9:10]"  -0.12064303457736969 0;
	setAttr -s 11 ".kox[9:10]"  0.99269592761993408 1;
	setAttr -s 11 ".koy[9:10]"  -0.1206430196762085 0;
createNode animCurveTA -n "animCurveTA968";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA969";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA970";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 4.0984482521620249 1 4.0984482521620249 
		1.005 4.0984482521620249 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA971";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 18.588300303494186 1 18.588300303494186 
		1.005 18.588300303494186 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA972";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA973";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA974";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -22.686733334985114 1 -22.686733334985114 
		1.005 -22.686733334985114 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA975";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA976";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA977";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.0579251312417479e-005 1 1.0579251312417479e-005 
		1.005 1.0579251312417477e-005 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA978";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA979";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA980";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 4.0984482535121209 1 4.0984482535121209 
		1.005 4.0984482535121209 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA981";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 18.588300300216805 1 18.588300300216805 
		1.005 18.588300300216801 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA982";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA983";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA984";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -22.686733333057838 1 -22.686733333057838 
		1.005 -22.686733333057838 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA985";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA986";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA987";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.0579251312417479e-005 1 1.0579251312417479e-005 
		1.005 1.0579251312417477e-005 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA988";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA989";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA990";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.4782236286598098 1 2.4782236286598098 
		1.005 2.4782236286598103 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA991";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA992";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA993";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -39.488235982334174 1 -1.4877789965049075e-015 
		1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  0.048308800905942917 1 1;
	setAttr -s 4 ".kiy[1:3]"  0.99883246421813965 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "animCurveTL373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  21 -0.92845767063536788 25 -0.84654347043021561;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTL -n "animCurveTL374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  21 1.2156629191541577 25 1.2151450287453427;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTL -n "animCurveTL375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  21 0.71300053963812493 25 0.60916309903576404;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA1000";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  21 -11.480504039655003 25 -13.607468531903837;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA1001";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  21 4.4925227857463561 25 5.3248413331634152;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA1002";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  21 48.019154597677044 25 56.915544200805968;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTL -n "animCurveTL376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  21 0.72959080006826948 25 0.61083301393139333;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTL -n "animCurveTL377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  21 1.2078805796274974 25 1.205921556906836;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTL -n "animCurveTL378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  21 0.88253393924945966 25 0.85030074935235433;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA1003";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  21 -0.12445606935410647 25 -0.14751373646059329;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA1004";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  21 -7.1831598808323447 25 -8.513966085499284;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTA -n "animCurveTA1005";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  21 -49.18042032734725 25 -58.29195475029789;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTL -n "animCurveTL379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTL -n "animCurveTL380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTL -n "animCurveTL381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.29902719377514003 25 -0.29902719377514003;
createNode animCurveTL -n "animCurveTL382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.10167917362943303 25 -0.10167917362943303;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTL -n "animCurveTL383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.40762644910266188 25 -0.40762644910266188;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTL -n "animCurveTL384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.23031831965996258 25 -0.23031831965996258;
createNode animCurveTA -n "animCurveTA1006";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 52.637219839343977 3 40.514666031468188 
		6 -52.253647395951099 9 -29.903266206279191 12 0.16592688899203345 14 10.217466762587065 
		17 13.315812924930704 25 12.253734489678925;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 1 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 1 
		3;
	setAttr -s 8 ".kix[6:7]"  0.99654346704483032 1;
	setAttr -s 8 ".kiy[6:7]"  0.083072654902935028 0;
	setAttr -s 8 ".kox[6:7]"  0.99654346704483032 1;
	setAttr -s 8 ".koy[6:7]"  0.083072885870933533 0;
createNode animCurveTA -n "animCurveTA1007";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -24.480967171432493 3 -39.445176802283065 
		6 -50.092210662671171 9 -38.738647402979851 12 -46.391953577115075 14 -51.365598175218167 
		17 -54.739758209310494 25 -65.746751280844975;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1008";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -64.344364641857084 3 -77.735295169850247 
		6 64.375191109696971 9 81.130914094540515 12 26.261147607242439 14 6.4930734956704743 
		17 -7.3594601147207124 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1009";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -53.609443747430014 3 -15.356018695340643 
		6 -31.063581684012128 9 -10.617703514958272 12 -0.56844285555232488 14 0.7863972823448554 
		17 0.38565863654355653 21 -0.13128781586447885 25 -0.061808866237340665;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		1 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		1 3;
	setAttr -s 9 ".kix[7:8]"  0.9948461651802063 1;
	setAttr -s 9 ".kiy[7:8]"  0.1013958603143692 0;
	setAttr -s 9 ".kox[7:8]"  0.99484622478485107 1;
	setAttr -s 9 ".koy[7:8]"  0.101395383477211 0;
createNode animCurveTA -n "animCurveTA1010";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -25.27913794042524 3 -1.6370789986654639 
		6 -27.265876981733431 9 -43.520904468685075 12 -46.613813622327669 14 -47.789817136990678 
		17 -51.249280651766888 21 -57.498708118646476 25 -59.058178941076754;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		1 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		1 3;
	setAttr -s 9 ".kix[7:8]"  0.77861714363098145 1;
	setAttr -s 9 ".kiy[7:8]"  -0.62749922275543213 0;
	setAttr -s 9 ".kox[7:8]"  0.77861720323562622 1;
	setAttr -s 9 ".koy[7:8]"  -0.62749922275543213 0;
createNode animCurveTA -n "animCurveTA1011";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 57.594080128123679 3 69.61309617468136 
		6 47.284955744198868 9 25.186610416378635 12 12.240140414568286 14 9.201832062668073 
		17 7.1212653635874457 21 10.10493517221647 25 16.57914742975785;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 1 
		1 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 1 
		1 3;
	setAttr -s 9 ".kix[6:8]"  0.99958294630050659 0.58263218402862549 
		1;
	setAttr -s 9 ".kiy[6:8]"  -0.028877103701233864 0.81273597478866577 
		0;
	setAttr -s 9 ".kox[6:8]"  0.99958300590515137 0.58263218402862549 
		1;
	setAttr -s 9 ".koy[6:8]"  -0.028876792639493942 0.81273597478866577 
		0;
createNode animCurveTA -n "animCurveTA1012";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 59.468287502559065 3 48.559360783080216 
		6 48.559360783080216 9 57.53252201816786 12 64.26052977275333 14 67.589470045673536 
		17 62.920143586743741 25 8.5572674112203639;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 1 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 1 
		3;
	setAttr -s 8 ".kix[6:7]"  0.29305985569953918 1;
	setAttr -s 8 ".kiy[6:7]"  -0.95609408617019653 0;
	setAttr -s 8 ".kox[6:7]"  0.29305985569953918 1;
	setAttr -s 8 ".koy[6:7]"  -0.95609408617019653 0;
createNode animCurveTA -n "animCurveTA1013";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 59.305463658789549 3 60.185649943194235 
		6 83.949023721627441 9 89.39290439644023 12 40.012962471887889 14 20.889584475977955 
		17 16.300985903101061 21 21.464222889398297 25 15.711328223519061;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		1 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		1 3;
	setAttr -s 9 ".kix[7:8]"  0.90959548950195313 1;
	setAttr -s 9 ".kiy[7:8]"  -0.4154948890209198 0;
	setAttr -s 9 ".kox[7:8]"  0.90959548950195313 1;
	setAttr -s 9 ".koy[7:8]"  -0.41549494862556458 0;
createNode animCurveTA -n "animCurveTA1014";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 18.476235154862632 3 18.476235154862632 
		6 18.476235154862632 9 18.476235154862632 12 18.476235154862632 14 18.476235154862632 
		17 19.515523380515379 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1015";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 10.082003051124275 3 10.082003051124275 
		6 10.082003051124275 9 10.082003051124275 12 10.082003051124275 14 10.082003051124275 
		17 10.649115719039902 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1016";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -4.720189328892868 3 -4.720189328892868 
		6 -4.720189328892868 9 -4.720189328892868 12 -4.720189328892868 14 -4.720189328892868 
		17 -4.985699992858259 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1017";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -11.342548829337773 3 -13.555270109330269 
		6 -13.555270109330269 9 -13.555270109330269 12 -13.555270109330269 14 -13.555270109330269 
		17 -14.317753995053931 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1018";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 11.615881410206434 3 11.615881410206432 
		6 11.615881410206432 9 11.615881410206432 12 11.615881410206432 14 11.615881410206432 
		17 12.269274762865578 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1019";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.32159281075535046 3 0.32159281075535068 
		6 0.32159281075535068 9 0.32159281075535068 12 0.32159281075535068 14 0.32159281075535068 
		17 0.33968240652337872 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1020";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 34.490899663921283 0.035000000000000003 
		34.490899663921283 3.0350000000000001 34.490899663921262 6.035 34.490899663921262 
		9.035 34.490899663921262 12.035 34.490899663921262 14.035 34.490899663921262 
		17.035 34.528562651961018 25 143.71460997127252;
	setAttr -s 9 ".kit[0:8]"  3 3 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 3 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1021";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 59.959644693642325 3 59.959644693642325 
		6 59.959644693642325 9 59.959644693642325 12 59.959644693642325 14 59.959644693642325 
		17 61.772964615621859 25 27.804554996454382;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1022";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 48.10646961869692 3 48.106469618696913 
		6 48.106469618696913 9 48.106469618696913 12 48.106469618696913 14 48.106469618696913 
		17 49.598781238328471 25 29.452980944098744;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1023";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1024";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1025";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 101.15442879205187 3 67.810939637714412 
		6 67.810939637714412 9 67.810939637714412 12 67.810939637714412 14 67.810939637714412 
		17 70.102051514685854 25 27.080064458283058;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1026";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1027";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1028";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[1:3]"  1 3 3;
	setAttr -s 4 ".kot[1:3]"  5 1 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA1029";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1030";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1031";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1032";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1033";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA1034";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 13.994403295754109;
createNode animCurveTA -n "animCurveTA1035";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1036";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1037";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 81.622987204614233 3 40.637834425062678 
		6 40.637834425062678 9 40.637834425062678 12 40.637834425062678 14 40.637834425062678 
		17 41.353683247109352 25 27.911632519594587;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1038";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.2945941069882385 3 1.2945941069882381 
		6 1.2945941069882381 9 1.2945941069882381 12 1.2945941069882381 14 1.2945941069882381 
		17 1.3674150174168214 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1039";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 3.3208811165553156 3 3.3208811165553147 
		6 3.3208811165553147 9 3.3208811165553147 12 3.3208811165553147 14 3.3208811165553147 
		17 3.5076806841266883 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1040";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -27.52582447785997 3 -27.525824477859967 
		6 -27.525824477859967 9 -27.525824477859967 12 -27.525824477859967 14 -27.525824477859967 
		17 -29.074152125383112 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1041";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -8.7597363552835983 3 -21.897916030805764 
		6 -27.026607495669865 9 -3.2192397419481766 12 -1.5687377008013468 14 -0.01800229915334188 
		17 -2.6433860314125552 25 -0.65073001024951671;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1042";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 -1.8399336948780474 9 
		2.789816990309629 12 2.6335331205563497 14 -2.2120116005629544 17 2.2289899803918249 
		25 -4.2368721935960938;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1043";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -8.9349579591731985 3 0.5940776450337566 
		6 -10.116452954015815 9 -16.84450977575354 12 -19.946276829499073 14 -19.372854163739966 
		17 -14.780247566026143 25 2.6995264082587447;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 1 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 1 
		3;
	setAttr -s 8 ".kix[6:7]"  0.52487486600875854 1;
	setAttr -s 8 ".kiy[6:7]"  0.85117942094802856 0;
	setAttr -s 8 ".kox[6:7]"  0.52487492561340332 1;
	setAttr -s 8 ".koy[6:7]"  0.85117936134338379 0;
createNode animCurveTA -n "animCurveTA1044";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1045";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1046";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 -8.7299801591531629 
		12 -3.7713514762097855 14 0 17 0.11785472970351051 25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1047";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 1.6804018684285151 6 -22.700037150197865 
		9 -9.0824594233362035 12 -1.4716916966527929 14 -3.8819790806033372 17 -6.2893151825303244 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1048";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -9.2427148064678804 3 4.0964050967290131 
		6 -22.180583921737327 9 -6.263830548737908 12 6.5834531643157783 14 0.99161045495694855 
		17 -6.5290168112633511 25 -5.2836650271627628;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1049";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -10.062830706779264 3 -26.805484402997095 
		6 19.871662933460563 9 15.915457627956584 12 -7.0231336990779614 14 -5.1254075887366684 
		17 7.4228031599308189 25 6.6786334979782911;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 1 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 1 
		3;
	setAttr -s 8 ".kix[6:7]"  0.94529211521148682 1;
	setAttr -s 8 ".kiy[6:7]"  0.32622507214546204 0;
	setAttr -s 8 ".kox[6:7]"  0.94529211521148682 1;
	setAttr -s 8 ".koy[6:7]"  0.3262251615524292 0;
createNode animCurveTA -n "animCurveTA1050";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0.10633275776453374 
		25 -1.8903601258661935;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1051";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 -0.14398475666619143 
		25 2.5597289571479038;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1052";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 5.671986885245901 3 7.9008995674020186 
		6 13.902630719132157 9 32.999877464068796 12 25.723884979038182 14 20.201647746547522 
		17 12.292629576166151 25 2.0168110874036049;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1053";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1054";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1055";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 90.838361755940937 3 66.910735171519136 
		6 66.910735171519136 9 66.910735171519136 12 66.910735171519136 14 66.910735171519136 
		17 68.794077659127268 25 33.429092416277157;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1056";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 49.592193263064928 0.035000000000000003 
		49.592193263064928 3.0350000000000001 49.5921932630649 6.035 49.5921932630649 
		9.035 49.5921932630649 12.035 49.5921932630649 14.035 49.5921932630649 17.035 
		50.601389694281735 25 106.91515461315004;
	setAttr -s 9 ".kit[0:8]"  3 3 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 3 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA1057";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 42.116293762219598 3 42.116293762219605 
		6 42.116293762219605 9 42.116293762219605 12 42.116293762219605 14 42.116293762219605 
		17 43.176768890663695 25 28.612774017129322;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1058";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 51.312599966148298 3 51.312599966148291 
		6 51.312599966148291 9 51.312599966148291 12 51.312599966148291 14 51.312599966148291 
		17 53.064580629887352 25 17.632837226638053;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1059";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1060";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 6 0 9 0 12 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1061";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 86.611733534295581 3 55.749331591600708 
		6 55.749331591600708 9 55.749331591600708 12 55.749331591600708 14 55.749331591600708 
		17 57.914687334191584 25 17.254116939558369;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode clipLibrary -n "clipLibrary1";
	setAttr -s 156 ".cel[0].cev";
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
	setAttr -s 24 ".lnk";
select -ne :time1;
	setAttr ".o" 25;
select -ne :renderPartition;
	setAttr -s 24 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 24 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 4 ".tx";
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
	setAttr -s 678 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".top" 478;
	setAttr ".rght" 638;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
select -ne :defaultResolution;
	setAttr ".w" 720;
	setAttr ".h" 486;
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
connectAttr "mlh_run_into_personSource.st" "clipLibrary1.st[0]";
connectAttr "mlh_run_into_personSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL344.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL345.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL347.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA943.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU65.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU66.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU67.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU68.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU69.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU70.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU71.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU72.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA944.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA945.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA946.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL349.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL350.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL351.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL352.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL353.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL354.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA947.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA948.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA949.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL355.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL356.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL357.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA950.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA951.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA952.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA953.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA954.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA955.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA956.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA957.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA958.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA959.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA960.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA961.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA962.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA963.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA964.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL358.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL359.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL360.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL361.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL362.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL363.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL364.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL365.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL366.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA965.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA966.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA967.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA968.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA969.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA970.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA971.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA972.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA973.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA974.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA975.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA976.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA977.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA978.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA979.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA980.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA981.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA982.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA983.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA984.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA985.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA986.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA987.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA988.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA989.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA990.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA991.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA992.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA993.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL373.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL374.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL375.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1000.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1001.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1002.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL376.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL377.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL378.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1003.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1004.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1005.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL379.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL380.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL381.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL382.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL383.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL384.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1006.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1007.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1008.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1009.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1010.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1011.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1012.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1013.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1014.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1015.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1016.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1017.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1018.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1019.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1020.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1021.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1022.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1023.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1024.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1025.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1026.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1027.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1028.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1029.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1030.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1031.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1032.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1033.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1034.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1035.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1036.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1037.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1038.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1039.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1040.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1041.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1042.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1043.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1044.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1045.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1046.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1047.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1048.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1049.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1050.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1051.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1052.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1053.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1054.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1055.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1056.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1057.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1058.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1059.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1060.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1061.a" "clipLibrary1.cel[0].cev[167].cevr";
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
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of mlh_run_into_person.ma
