//Maya ASCII 4.0 scene
//Name: mrg_hands_in_air.ma
//Last modified: Wed, Feb 19, 2003 11:03:08 AM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_hands_in_airSource";
	setAttr ".ihi" 0;
	setAttr ".du" 61;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL329";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 1 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.016331154853105545;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.99986666440963745;
	setAttr -s 3 ".kox[1:2]"  1 0.016331154853105545;
	setAttr -s 3 ".koy[1:2]"  0 -0.99986666440963745;
createNode animCurveTL -n "animCurveTL330";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 62 ".ktv[0:61]"  0 -0.079815982092630827 1 -0.075868137035490099 
		2 -0.071374939353957972 3 -0.066663600655263389 4 -0.062061332546635262 5 
		-0.057895346635302575 6 -0.054492854528494256 7 -0.052181067833439246 8 -0.051287198157366508 
		9 -0.05123431324100463 10 -0.051226465216974174 11 -0.05126234233110754 12 
		-0.051340632829237121 13 -0.051460024957195316 14 -0.051619206960814526 15 
		-0.051816867085927143 16 -0.052051693578365567 17 -0.052322374683962211 18 
		-0.052627598648549441 19 -0.05296605371795967 20 -0.053336428138025305 21 
		-0.053737410154578731 22 -0.054167688013452349 23 -0.054625949960478558 24 
		-0.055110884241489758 25 -0.055621179102318341 26 -0.056155522788796708 27 
		-0.056712603546757244 28 -0.05729110962203237 29 -0.057889729260454471 30 
		-0.058507150707855934 31 -0.059142062210069173 32 -0.059793152012926579 33 
		-0.060459108362260545 34 -0.061138619503903487 35 -0.061830373683687781 36 
		-0.062533059147445821 37 -0.063245364141010035 38 -0.063965976910212788 39 
		-0.064693585700886513 40 -0.065426878758863549 41 -0.066164544329976357 42 
		-0.066905270660057289 43 -0.067647745994938779 44 -0.068390658580453206 45 
		-0.069132696662432935 46 -0.069872548486710442 47 -0.070608902299118051 48 
		-0.071340446345488182 49 -0.072065868871653241 50 -0.072783858123445636 51 
		-0.073493102346697731 52 -0.074192289787241961 53 -0.074880108690910704 54 
		-0.075555247303536355 55 -0.076216393870951318 56 -0.076862236638987974 57 
		-0.077491463853478743 58 -0.07810276376025603 59 -0.078694824605152189 60 
		-0.079266334633999652 61 -0.079815982092630827;
createNode animCurveTL -n "animCurveTL332";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 62 ".ktv[0:61]"  0 0 1 -1.5294310717517287e-006 
		2 -3.274274936571028e-006 3 -5.1052839087143983e-006 4 -6.8932103024383368e-006 
		5 -8.5088064319993463e-006 6 -9.8228246116539219e-006 7 -1.0706017155658567e-005 
		8 -1.1029136378269791e-005 9 -1.1021357746687712e-005 10 -1.0998318180767389e-005 
		11 -1.0960462173747688e-005 12 -1.0908234218867477e-005 13 -1.0842078809365618e-005 
		14 -1.0762440438480979e-005 15 -1.066976359945243e-005 16 -1.0564492785518831e-005 
		17 -1.0447072489919054e-005 18 -1.0317947205891961e-005 19 -1.0177561426676419e-005 
		20 -1.0026359645511297e-005 21 -9.8647863556354591e-006 22 -9.6932860502877727e-006 
		23 -9.5123032227071001e-006 24 -9.3222823661323136e-006 25 -9.1236679738022751e-006 
		26 -8.9169045389558549e-006 27 -8.7024365548319136e-006 28 -8.480708514669323e-006 
		29 -8.2521649117069454e-006 30 -8.0172502391836493e-006 31 -7.776408990338302e-006 
		32 -7.5300856584097661e-006 33 -7.2787247366369114e-006 34 -7.0227707182586015e-006 
		35 -6.7626680965137043e-006 36 -6.4988613646410851e-006 37 -6.2317950158796111e-006 
		38 -5.9619135434681485e-006 39 -5.6896614406455634e-006 40 -5.4154832006507213e-006 
		41 -5.1398233167224901e-006 42 -4.8631262820997342e-006 43 -4.5858365900213217e-006 
		44 -4.308398733726117e-006 45 -4.0312572064529897e-006 46 -3.7548565014407992e-006 
		47 -3.4796411119284204e-006 48 -3.2060555311547129e-006 49 -2.9345442523585457e-006 
		50 -2.665551768778787e-006 51 -2.3995225736542996e-006 52 -2.1369011602239494e-006 
		53 -1.8781320217266061e-006 54 -1.6236596514011343e-006 55 -1.3739285424864001e-006 
		56 -1.129383188221271e-006 57 -8.9046808184461152e-007 58 -6.5762771659528779e-007 
		59 -4.3130658571216621e-007 60 -2.1194918243411602e-007 61 0;
createNode animCurveTA -n "animCurveTA920";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU61";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU62";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU63";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU64";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU65";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 54 1 61 0;
	setAttr -s 4 ".kit[0:3]"  1 2 2 1;
	setAttr -s 4 ".kot[0:3]"  9 2 2 5;
	setAttr -s 4 ".kix[0:3]"  0 0.16439899802207947 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0.98639392852783203 0 0;
createNode animCurveTU -n "animCurveTU66";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 54 1 61 0;
	setAttr -s 4 ".kit[0:3]"  1 2 2 1;
	setAttr -s 4 ".kot[0:3]"  9 2 2 5;
	setAttr -s 4 ".kix[0:3]"  0 0.16439899802207947 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0.98639392852783203 0 0;
createNode animCurveTU -n "animCurveTU67";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 61 1;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU68";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 61 1;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA921";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA922";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA923";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL334";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL335";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL336";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.17655026201706334 61 -0.17655026201706334;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.10676264329452093 61 0.10676264329452093;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.073147264740539078 61 -0.073147264740539078;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA924";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA925";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -25.948901905116401 61 -25.948901905116401;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA926";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL340";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.072059567379697237 61 0.072059567379697237;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL341";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.10860528941614173 61 0.10860528941614173;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL342";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.00088390886240813306 61 0.00088390886240813306;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA927";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA928";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA929";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA930";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA931";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA932";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA933";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA934";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA935";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA936";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA937";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA938";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA939";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA940";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA941";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL343";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL344";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL345";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.1269999742507935 12 1 61 1.1269999742507935;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.12755835056304932;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99183106422424316;
	setAttr -s 3 ".kox[1:2]"  1 0.12755835056304932;
	setAttr -s 3 ".koy[1:2]"  0 0.99183106422424316;
createNode animCurveTL -n "animCurveTL346";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL347";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL348";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.1269999742507935 12 1 61 1.1269999742507935;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.12755835056304932;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99183106422424316;
	setAttr -s 3 ".kox[1:2]"  1 0.12755835056304932;
	setAttr -s 3 ".koy[1:2]"  0 0.99183106422424316;
createNode animCurveTL -n "animCurveTL349";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.097247464600251146 8 -0.0624881114845676 
		61 -0.097247464600251146;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 0.96365845203399658 0.45309218764305115;
	setAttr -s 3 ".kiy[0:2]"  0 0.26713743805885315 -0.89146363735198975;
	setAttr -s 3 ".kox[1:2]"  0.96365845203399658 0.45309218764305115;
	setAttr -s 3 ".koy[1:2]"  0.26713737845420837 -0.89146363735198975;
createNode animCurveTL -n "animCurveTL350";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.9825577053607899 12 0.93887706450668817 
		61 0.9825577053607899;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.35024145245552063;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.93665945529937744;
	setAttr -s 3 ".kox[1:2]"  1 0.35024145245552063;
	setAttr -s 3 ".koy[1:2]"  0 0.93665945529937744;
createNode animCurveTL -n "animCurveTL351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 -1.3437854442138843e-005 
		61 0;
	setAttr -s 3 ".kit[0:2]"  1 3 9;
	setAttr -s 3 ".kot[1:2]"  3 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99999970197677612;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.00076063303276896477;
createNode animCurveTA -n "animCurveTA942";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.62843630316474508 8 0 61 -0.62843630316474508;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 0.99999964237213135 0.99998074769973755;
	setAttr -s 3 ".kiy[0:2]"  0 0.00082834408385679126 -0.0062083425000309944;
	setAttr -s 3 ".kox[1:2]"  0.99999964237213135 0.99998074769973755;
	setAttr -s 3 ".koy[1:2]"  0.000828344258479774 -0.0062083425000309944;
createNode animCurveTA -n "animCurveTA943";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -5.8284402688137167 12 -1.4988364009460737 
		61 -5.8284402688137167;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99893152713775635;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.046215370297431946;
	setAttr -s 3 ".kox[1:2]"  1 0.99893152713775635;
	setAttr -s 3 ".koy[1:2]"  0 -0.046215370297431946;
createNode animCurveTA -n "animCurveTA944";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.295636019309746 12 -0.16644135264068233 
		61 -1.295636019309746;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99992722272872925;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.012065344490110874;
	setAttr -s 3 ".kox[1:2]"  1 0.99992722272872925;
	setAttr -s 3 ".koy[1:2]"  0 -0.012065344490110874;
createNode animCurveTA -n "animCurveTA945";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA946";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA947";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA948";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA949";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA950";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA951";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA952";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA953";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA954";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA955";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA956";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA957";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA958";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA959";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA960";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA961";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA962";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA963";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA964";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA965";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA966";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA967";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA968";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA969";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA970";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL352";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.43524234076486068 12 -0.22164053326398034 
		61 -0.43524234076486068;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.076243698596954346;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.9970892071723938;
	setAttr -s 3 ".kox[1:2]"  1 0.076243698596954346;
	setAttr -s 3 ".koy[1:2]"  0 -0.9970892071723938;
createNode animCurveTL -n "animCurveTL353";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.82665738350180629 12 -0.9417076481617882 
		61 -0.82665738350180629;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.14055755734443665;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99007248878479004;
	setAttr -s 3 ".kox[1:2]"  1 0.14055755734443665;
	setAttr -s 3 ".koy[1:2]"  0 0.99007248878479004;
createNode animCurveTL -n "animCurveTL354";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.27773886459742925 12 0.038362195289875119 
		61 0.27773886459742925;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.068074487149715424;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99768024682998657;
	setAttr -s 3 ".kox[1:2]"  1 0.068074487149715424;
	setAttr -s 3 ".koy[1:2]"  0 0.99768024682998657;
createNode animCurveTA -n "animCurveTA971";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.8121934161072299e-015 12 6.7230119492284173 
		61 1.8121934161072299e-015;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99742943048477173;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.071655347943305969;
	setAttr -s 3 ".kox[1:2]"  1 0.99742943048477173;
	setAttr -s 3 ".koy[1:2]"  0 -0.071655347943305969;
createNode animCurveTA -n "animCurveTA972";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 28.652637602052774 12 19.839511008631867 
		61 28.652637602052774;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99559485912322998;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.093759477138519287;
	setAttr -s 3 ".kox[1:2]"  1 0.99559485912322998;
	setAttr -s 3 ".koy[1:2]"  0 0.093759477138519287;
createNode animCurveTA -n "animCurveTA973";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 64.676908227303443 12 76.90743997913691 
		61 64.676908227303443;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99156773090362549;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.12958963215351105;
	setAttr -s 3 ".kox[1:2]"  1 0.99156773090362549;
	setAttr -s 3 ".koy[1:2]"  0 -0.12958963215351105;
createNode animCurveTL -n "animCurveTL355";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.5198069948790518 12 0.20623790699604494 
		61 0.5198069948790518;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.052017945796251297;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99864614009857178;
	setAttr -s 3 ".kox[1:2]"  1 0.052017945796251297;
	setAttr -s 3 ".koy[1:2]"  0 0.99864614009857178;
createNode animCurveTL -n "animCurveTL356";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.72394202659893114 12 -0.94615818397708606 
		61 -0.72394202659893114;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.073304258286952972;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99730962514877319;
	setAttr -s 3 ".kox[1:2]"  1 0.073304258286952972;
	setAttr -s 3 ".koy[1:2]"  0 0.99730962514877319;
createNode animCurveTL -n "animCurveTL357";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.36439499068905612 12 0.023808763748733922 
		61 0.36439499068905612;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.047901473939418793;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99885207414627075;
	setAttr -s 3 ".kox[1:2]"  1 0.047901473939418793;
	setAttr -s 3 ".koy[1:2]"  0 0.99885207414627075;
createNode animCurveTA -n "animCurveTA974";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.7976222737965317 12 8.1910546202722809 
		61 7.7976222737965317;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99999117851257324;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.0042040585540235043;
	setAttr -s 3 ".kox[1:2]"  1 0.99999117851257324;
	setAttr -s 3 ".koy[1:2]"  0 -0.0042040585540235043;
createNode animCurveTA -n "animCurveTA975";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -30.409274105849079 12 -16.680769289981995 
		61 -30.409274105849079;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.989410400390625;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.14514505863189697;
	setAttr -s 3 ".kox[1:2]"  1 0.989410400390625;
	setAttr -s 3 ".koy[1:2]"  0 -0.14514505863189697;
createNode animCurveTA -n "animCurveTA976";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -64.859940280210893 12 -64.609749241846473 
		61 -64.859940280210893;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99999642372131348;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.0026734541170299053;
	setAttr -s 3 ".kox[1:2]"  1 0.99999642372131348;
	setAttr -s 3 ".koy[1:2]"  0 -0.0026734541170299053;
createNode animCurveTL -n "animCurveTL358";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.65311611999272123 12 -0.8448236677023373 
		61 -0.65311611999272123;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.084891662001609802;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99639016389846802;
	setAttr -s 3 ".kox[1:2]"  1 0.084891662001609802;
	setAttr -s 3 ".koy[1:2]"  0 0.99639016389846802;
createNode animCurveTL -n "animCurveTL359";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.222264083594911 12 1.5117481219250299 
		61 2.222264083594911;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.022981917485594749;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99973589181900024;
	setAttr -s 3 ".kox[1:2]"  1 0.022981917485594749;
	setAttr -s 3 ".koy[1:2]"  0 0.99973589181900024;
createNode animCurveTL -n "animCurveTL360";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.097994651149805143 12 -0.097994651149805143 
		61 -0.097994651149805143;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA977";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5.4739599453216465 12 5.4739599453216474 
		61 5.4739599453216465;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA978";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.5874521608419823 12 8.5874521608419823 
		61 8.5874521608419823;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA979";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 74.754744621954103 12 74.754744621954103 
		61 74.754744621954103;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL361";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.25368378509166484 12 0.61083301393139333 
		61 0.25368378509166484;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.04568476602435112;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.99895590543746948;
	setAttr -s 3 ".kox[1:2]"  1 0.04568476602435112;
	setAttr -s 3 ".koy[1:2]"  0 -0.99895590543746948;
createNode animCurveTL -n "animCurveTL362";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.2026421011163611 12 1.4644416293758407 
		61 2.2026421011163611;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.022120464593172073;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99975532293319702;
	setAttr -s 3 ".kox[1:2]"  1 0.022120464593172073;
	setAttr -s 3 ".koy[1:2]"  0 0.99975532293319702;
createNode animCurveTL -n "animCurveTL363";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.0085295933619701936 12 0.14314299916678522 
		61 0.0085295933619701936;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.12045169621706009;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.99271917343139648;
	setAttr -s 3 ".kox[1:2]"  1 0.12045169621706009;
	setAttr -s 3 ".koy[1:2]"  0 -0.99271917343139648;
createNode animCurveTA -n "animCurveTA980";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.226511010665412 12 16.226511010665405 
		61 16.226511010665412;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA981";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -8.5139660854992858 12 -8.513966085499284 
		61 -8.5139660854992858;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA982";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -68.213989601412422 12 -68.213989601412422 
		61 -68.213989601412422;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL364";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.245189189189189 12 0 61 -0.245189189189189;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.066467911005020142;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.99778854846954346;
	setAttr -s 3 ".kox[1:2]"  1 0.066467911005020142;
	setAttr -s 3 ".koy[1:2]"  0 -0.99778854846954346;
createNode animCurveTL -n "animCurveTL365";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL366";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 12 -1 61 -1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL367";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.062337280601809833 12 -0.10167917362943303 
		61 0.062337280601809833;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.099093370139598846;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99507814645767212;
	setAttr -s 3 ".kox[1:2]"  1 0.099093370139598846;
	setAttr -s 3 ".koy[1:2]"  0 0.99507814645767212;
createNode animCurveTL -n "animCurveTL368";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.40762644910266188 12 -0.40762644910266188 
		61 -0.40762644910266188;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL369";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.93129112588482243 12 -0.93129112588482243 
		61 -0.93129112588482243;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA983";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 12.253734489678925 8 -90.005729278608698 
		25 -93.467114565593391 36 14.418922422521037 61 12.253734489678925;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.97906523942947388 0.99758011102676392 
		0.98401868343353271 0.99897336959838867;
	setAttr -s 5 ".kiy[0:4]"  0 -0.20354679226875305 0.069526262581348419 
		0.17806518077850342 -0.045301035046577454;
	setAttr -s 5 ".kox[1:4]"  0.97906523942947388 0.99758011102676392 
		0.98401874303817749 0.99897336959838867;
	setAttr -s 5 ".koy[1:4]"  -0.20354659855365753 0.069526270031929016 
		0.17806504666805267 -0.045301035046577454;
createNode animCurveTA -n "animCurveTA984";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -65.746751280844975 8 -0.069942733381192959 
		25 1.4293062841249904 36 -75.32683890878009 61 -79.310592160276627;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99314075708389282 0.9996153712272644 
		0.98913168907165527 0.99653732776641846;
	setAttr -s 5 ".kiy[0:4]"  0 0.11692513525485992 -0.027732782065868378 
		-0.1470324844121933 -0.083146624267101288;
	setAttr -s 5 ".kox[1:4]"  0.99314075708389282 0.9996153712272644 
		0.98913168907165527 0.99653732776641846;
	setAttr -s 5 ".koy[1:4]"  0.11692504584789276 -0.02773270383477211 
		-0.14703242480754852 -0.083146624267101288;
createNode animCurveTA -n "animCurveTA985";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 54.789426905158599 25 56.704156536635139 
		36 2.3305587031107948 61 0;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99674636125564575 0.99420112371444702 
		0.9990394115447998 0.99881088733673096;
	setAttr -s 5 ".kiy[0:4]"  0 0.08060193806886673 -0.10753674060106277 
		-0.04382125660777092 -0.048753064125776291;
	setAttr -s 5 ".kox[1:4]"  0.99674636125564575 0.99420112371444702 
		0.9990394115447998 0.99881088733673096;
	setAttr -s 5 ".koy[1:4]"  0.080602101981639862 -0.10753679275512695 
		-0.043821267783641815 -0.048753064125776291;
createNode animCurveTA -n "animCurveTA986";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.061808866237340665 10 -81.771152040162676 
		27 -84.760739265447768 38 38.863267594760607 61 -0.061808866237340665;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.96152293682098389 0.99173492193222046 
		0.98734778165817261 0.74843156337738037;
	setAttr -s 5 ".kiy[0:4]"  0 -0.27472460269927979 0.12830360233783722 
		0.15856964886188507 -0.66321200132369995;
	setAttr -s 5 ".kox[1:4]"  0.96152293682098389 0.99173498153686523 
		0.98734778165817261 0.74843156337738037;
	setAttr -s 5 ".koy[1:4]"  -0.27472460269927979 0.12830346822738647 
		0.15856972336769104 -0.66321200132369995;
createNode animCurveTA -n "animCurveTA987";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -59.058178941076754 10 -3.5463797425114216 
		27 -2.0811709332847266 38 -75.511718276405674 61 -76.687311804988553;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99704438447952271 0.99730414152145386 
		0.99377197027206421 0.99964207410812378;
	setAttr -s 5 ".kiy[0:4]"  0 0.076828032732009888 -0.073378928005695343 
		-0.1114327609539032 -0.026753000915050507;
	setAttr -s 5 ".kox[1:4]"  0.99704438447952271 0.99730414152145386 
		0.99377197027206421 0.99964207410812378;
	setAttr -s 5 ".koy[1:4]"  0.076828055083751678 -0.073379024863243103 
		-0.11143285781145096 -0.026753000915050507;
createNode animCurveTA -n "animCurveTA988";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.57914742975785 10 54.868872452761224 
		27 56.702772296813698 38 -18.866719640021529 61 16.57914742975785;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99814242124557495 0.99829530715942383 
		0.99886417388916016 0.77823072671890259;
	setAttr -s 5 ".kiy[0:4]"  0 0.060923308134078979 -0.058364830911159515 
		-0.047648422420024872 0.62797850370407104;
	setAttr -s 5 ".kox[1:4]"  0.99814242124557495 0.99829530715942383 
		0.99886417388916016 0.77823072671890259;
	setAttr -s 5 ".koy[1:4]"  0.060923304408788681 -0.058364734053611755 
		-0.047648169100284576 0.62797850370407104;
createNode animCurveTA -n "animCurveTA989";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.5572674112203639 8 44.248403669348306 
		25 47.131996798220236 36 28.552082121692614 61 8.5572674112203639;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.98025113344192505 0.99928927421569824 
		0.8592376708984375 0.9223865270614624;
	setAttr -s 5 ".kiy[0:4]"  0 0.19775661826133728 -0.037695560604333878 
		-0.51157665252685547 -0.38626819849014282;
	setAttr -s 5 ".kox[1:4]"  0.98025113344192505 0.99928927421569824 
		0.8592376708984375 0.9223865270614624;
	setAttr -s 5 ".koy[1:4]"  0.19775666296482086 -0.037695560604333878 
		-0.51157659292221069 -0.38626819849014282;
createNode animCurveTA -n "animCurveTA990";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 15.711328223519061 10 44.918626893145863 
		27 47.650310591871502 38 25.623538652095867 61 15.711328223519061;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99786579608917236 0.99983888864517212 
		0.99933052062988281 0.97547310590744019;
	setAttr -s 5 ".kiy[0:4]"  0 0.065297976136207581 -0.017951039597392082 
		-0.036585364490747452 -0.22011853754520416;
	setAttr -s 5 ".kox[1:4]"  0.99786579608917236 0.99983888864517212 
		0.99933052062988281 0.97547310590744019;
	setAttr -s 5 ".koy[1:4]"  0.065297938883304596 -0.017951037734746933 
		-0.036585327237844467 -0.22011853754520416;
createNode animCurveTA -n "animCurveTA991";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 -41.52024023179203 25 -43.096335155602219 
		36 0 61 0;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.97723424434661865 0.99117159843444824 
		0.99588632583618164 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.21216326951980591 0.13258518278598785 
		0.090611234307289124 0;
	setAttr -s 5 ".kox[1:4]"  0.97723424434661865 0.99117159843444824 
		0.99588632583618164 1;
	setAttr -s 5 ".koy[1:4]"  -0.21216323971748352 0.13258524239063263 
		0.090611167252063751 0;
createNode animCurveTA -n "animCurveTA992";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 -4.2777956276568041 25 -4.4408602814348832 
		36 0 61 0;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99968802928924561 0.99990487098693848 
		0.99993962049484253 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.024977661669254303 0.013793935067951679 
		0.010987896472215652 0;
	setAttr -s 5 ".kox[1:4]"  0.99968802928924561 0.99990487098693848 
		0.99993962049484253 1;
	setAttr -s 5 ".koy[1:4]"  -0.024977665394544601 0.013793937861919403 
		0.010987889021635056 0;
createNode animCurveTA -n "animCurveTA993";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 15.058606036615975 25 15.627492389621372 
		36 0 61 0;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99164551496505737 0.98960483074188232 
		0.99595141410827637 1;
	setAttr -s 5 ".kiy[0:4]"  0 0.12899290025234222 -0.14381332695484161 
		-0.089892923831939697 0;
	setAttr -s 5 ".kox[1:4]"  0.99164551496505737 0.98960483074188232 
		0.99595141410827637 1;
	setAttr -s 5 ".koy[1:4]"  0.12899294495582581 -0.14381331205368042 
		-0.089892871677875519 0;
createNode animCurveTA -n "animCurveTA994";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 -34.326489759145112 27 -35.627586597175409 
		38 0 61 0;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99312245845794678 0.99825793504714966 
		0.99886053800582886 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.11708047986030579 0.059000600129365921 
		0.047724027186632156 0;
	setAttr -s 5 ".kox[1:4]"  0.993122398853302 0.99825793504714966 
		0.99886053800582886 1;
	setAttr -s 5 ".koy[1:4]"  -0.11708056926727295 0.059000600129365921 
		0.047724075615406036 0;
createNode animCurveTA -n "animCurveTA995";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 -3.645152809835289 27 -3.783573612556832 
		38 0 61 0;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.9997897744178772 0.99995940923690796 
		0.99998712539672852 1;
	setAttr -s 5 ".kiy[0:4]"  0 -0.020502891391515732 0.0090124532580375671 
		0.0050747450441122055 0;
	setAttr -s 5 ".kox[1:4]"  0.9997897744178772 0.99995940923690796 
		0.99998712539672852 1;
	setAttr -s 5 ".koy[1:4]"  -0.02050289697945118 0.0090124504640698433 
		0.005074747372418642 0;
createNode animCurveTA -n "animCurveTA996";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 15.222895136731713 27 15.800968360708902 
		38 0 61 0;
	setAttr -s 5 ".kit[4]"  9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99550193548202515 0.99782103300094604 
		0.99850064516067505 1;
	setAttr -s 5 ".kiy[0:4]"  0 0.094741456210613251 -0.065978884696960449 
		-0.054739564657211304 0;
	setAttr -s 5 ".kox[1:4]"  0.99550193548202515 0.99782103300094604 
		0.99850064516067505 1;
	setAttr -s 5 ".koy[1:4]"  0.094741500914096832 -0.065978899598121643 
		-0.05473964661359787 0;
createNode animCurveTA -n "animCurveTA997";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 10.423754966968488 12 10.423754966968488 
		61 10.423754966968488;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA998";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.7228482558439 12 27.722848255843903 
		61 27.7228482558439;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA999";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 21.576484776388224 12 21.576484776388227 
		61 21.576484776388224;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1000";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1001";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1002";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.080064458283051 12 24.142023336040538 
		61 27.080064458283051;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99950754642486572;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.031379532068967819;
	setAttr -s 3 ".kox[1:2]"  1 0.99950754642486572;
	setAttr -s 3 ".koy[1:2]"  0 0.031379532068967819;
createNode animCurveTA -n "animCurveTA1003";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1004";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1005";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1006";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1007";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1008";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 12 13.994403295754109 
		61 13.994403295754109;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1009";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1010";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1011";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 12 13.994403295754109 
		61 13.994403295754109;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1012";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1013";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1014";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.911632519594587 12 13.591953037160911 
		61 27.911632519594587;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.98849475383758545;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.15125516057014465;
	setAttr -s 3 ".kox[1:2]"  1 0.98849475383758545;
	setAttr -s 3 ".koy[1:2]"  0 0.15125516057014465;
createNode animCurveTA -n "animCurveTA1015";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1016";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1017";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1018";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.71009266045615993 8 0.28995767731376854 
		19 0.2873348169567555 61 0.71009266045615993;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99999034404754639 0.99999856948852539 
		0.99998611211776733;
	setAttr -s 4 ".kiy[0:3]"  0 0.0043980446644127369 0.0016959982458502054 
		0.0052702957764267921;
	setAttr -s 4 ".kox[1:3]"  0.99999034404754639 0.99999856948852539 
		0.99998611211776733;
	setAttr -s 4 ".koy[1:3]"  0.0043980446644127369 0.0016959982458502054 
		0.0052702957764267921;
createNode animCurveTA -n "animCurveTA1019";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.39065484564574893 8 -0.05764371332848333 
		61 0.39065484564574893;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 0.99971705675125122 0.99999016523361206;
	setAttr -s 3 ".kiy[0:2]"  0 0.02378566563129425 0.0044287978671491146;
	setAttr -s 3 ".kox[1:2]"  0.99971705675125122 0.99999016523361206;
	setAttr -s 3 ".koy[1:2]"  0.02378566563129425 0.0044287978671491146;
createNode animCurveTA -n "animCurveTA1020";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.1445984161934586 8 -11.105009457960078 
		19 -11.002697314036686 61 8.1445984161934586;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.98194891214370728 0.97411555051803589 
		0.97267299890518188;
	setAttr -s 4 ".kiy[0:3]"  0 -0.18914642930030823 0.22605064511299133 
		0.23217938840389252;
	setAttr -s 4 ".kox[1:3]"  0.98194891214370728 0.97411555051803589 
		0.97267299890518188;
	setAttr -s 4 ".koy[1:3]"  -0.18914638459682465 0.22605063021183014 
		0.23217938840389252;
createNode animCurveTA -n "animCurveTA1021";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 6 -12.232006021280865 17 -20.043030460313254 
		23 3.9348748215921283 29 -35.433553790028228 34 2.6381560942851188 40 -18.283780484097328 
		46 4.5452679091120451 52 -5.2614810286041314 61 0;
	setAttr -s 10 ".kit[0:9]"  1 9 1 3 9 3 3 
		3 3 9;
	setAttr -s 10 ".kot[0:9]"  9 9 1 3 9 3 3 
		3 3 9;
	setAttr -s 10 ".kix[0:9]"  0 0.8509209156036377 0.99849331378936768 
		1 0.99810051918029785 1 1 1 1 0.95620578527450562;
	setAttr -s 10 ".kiy[0:9]"  0 -0.52529382705688477 0.054873719811439514 
		0 -0.061606425791978836 0 0 0 0 0.29269513487815857;
	setAttr -s 10 ".kox[2:9]"  0.99849331378936768 1 0.99810051918029785 
		1 1 1 1 0.95620578527450562;
	setAttr -s 10 ".koy[2:9]"  0.054873686283826828 0 -0.061606425791978836 
		0 0 0 0 0.29269513487815857;
createNode animCurveTA -n "animCurveTA1022";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 9.3988195031388226 17 8.7815889917281034 
		34 5.3236696794447811 61 0;
	setAttr -s 5 ".kit[0:4]"  1 1 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99998986721038818 0.99710899591445923 
		0.99458414316177368 0.99471300840377808;
	setAttr -s 5 ".kiy[0:4]"  0 0.0045005856081843376 -0.075984813272953033 
		-0.10393470525741577 -0.10269369184970856;
	setAttr -s 5 ".kox[1:4]"  0.99998986721038818 0.99710899591445923 
		0.99458414316177368 0.99471300840377808;
	setAttr -s 5 ".koy[1:4]"  0.0045005832798779011 -0.075984813272953033 
		-0.10393470525741577 -0.10269369184970856;
createNode animCurveTA -n "animCurveTA1023";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 -15.336112958913231 17 -28.915329755414401 
		34 20.738323067541259 61 0;
	setAttr -s 5 ".kit[1:4]"  9 1 1 9;
	setAttr -s 5 ".kot[0:4]"  9 9 1 1 9;
	setAttr -s 5 ".kix[0:4]"  0 0.74677813053131104 0.99712228775024414 
		0.99501162767410278 0.92778116464614868;
	setAttr -s 5 ".kiy[0:4]"  0 -0.6650732159614563 0.075809910893440247 
		0.099759288132190704 -0.37312474846839905;
	setAttr -s 5 ".kox[2:4]"  0.99712228775024414 0.99501162767410278 
		0.92778116464614868;
	setAttr -s 5 ".koy[2:4]"  0.075809888541698456 0.099759265780448914 
		-0.37312474846839905;
createNode animCurveTA -n "animCurveTA1024";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.0270270270270276 12 -4.9367554394300077 
		61 -2.0270270270270276;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99951696395874023;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.031077435240149498;
	setAttr -s 3 ".kox[1:2]"  1 0.99951696395874023;
	setAttr -s 3 ".koy[1:2]"  0 0.031077435240149498;
createNode animCurveTA -n "animCurveTA1025";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.4108692476260059 12 -8.6986303327609935 
		61 -2.4108692476260059;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99775040149688721;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.067037917673587799;
	setAttr -s 3 ".kox[1:2]"  1 0.99775040149688721;
	setAttr -s 3 ".koy[1:2]"  0 0.067037917673587799;
createNode animCurveTA -n "animCurveTA1026";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.0432985235726 12 17.455917002855632 
		61 13.0432985235726;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.998890221118927;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.047099541872739792;
	setAttr -s 3 ".kox[1:2]"  1 0.998890221118927;
	setAttr -s 3 ".koy[1:2]"  0 -0.047099541872739792;
createNode animCurveTA -n "animCurveTA1027";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 -0.084403384769551629 61 
		0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 0.99999880790710449 0.99999964237213135;
	setAttr -s 3 ".kiy[0:2]"  0 0.0015377671224996448 0.00083383946912363172;
	setAttr -s 3 ".kox[1:2]"  0.99999880790710449 0.99999964237213135;
	setAttr -s 3 ".koy[1:2]"  0.0015377666568383574 0.00083383946912363172;
createNode animCurveTA -n "animCurveTA1028";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 -0.0096315142018246151 61 
		0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 0.99999934434890747 1;
	setAttr -s 3 ".kiy[0:2]"  0 -0.0011610276997089386 9.5151866844389588e-005;
	setAttr -s 3 ".kox[1:2]"  0.99999934434890747 1;
	setAttr -s 3 ".koy[1:2]"  -0.0011610288638621569 9.5151866844389588e-005;
createNode animCurveTA -n "animCurveTA1029";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -10.382821061592265 8 3.1864510624231084 
		19 3.2879119301481907 61 -10.382821061592265;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99999326467514038 0.99997597932815552 
		0.98578602075576782;
	setAttr -s 4 ".kiy[0:3]"  0 0.0036695115268230438 0.0069313296116888523 
		-0.16800561547279358;
	setAttr -s 4 ".kox[1:3]"  0.99999326467514038 0.99997597932815552 
		0.98578602075576782;
	setAttr -s 4 ".koy[1:3]"  0.0036694819573312998 0.0069313277490437031 
		-0.16800561547279358;
createNode animCurveTA -n "animCurveTA1030";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1031";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1032";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 33.429092416277157 12 20.243850441812622 
		61 33.429092416277157;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99021989107131958;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.13951544463634491;
	setAttr -s 3 ".kox[1:2]"  1 0.99021989107131958;
	setAttr -s 3 ".koy[1:2]"  0 0.13951544463634491;
createNode animCurveTA -n "animCurveTA1033";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.2533422302317216 12 8.2533422302317216 
		61 8.2533422302317216;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1034";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 23.263402056531085 12 23.263402056531085 
		61 23.263402056531085;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1035";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20.166277752815617 12 20.166277752815617 
		61 20.166277752815617;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1036";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0.53199349202236168 61 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99998384714126587;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.0056846253573894501;
	setAttr -s 3 ".kox[1:2]"  1 0.99998384714126587;
	setAttr -s 3 ".koy[1:2]"  0 -0.0056846253573894501;
createNode animCurveTA -n "animCurveTA1037";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0.044350394305774879 61 
		0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99999988079071045;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.00047391449334099889;
	setAttr -s 3 ".kox[1:2]"  1 0.99999988079071045;
	setAttr -s 3 ".koy[1:2]"  0 -0.00047391449334099889;
createNode animCurveTA -n "animCurveTA1038";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 17.254116939558369 12 11.759987102651889 
		61 17.254116939558369;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99828112125396729;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.058607649058103561;
	setAttr -s 3 ".kox[1:2]"  1 0.99828112125396729;
	setAttr -s 3 ".koy[1:2]"  0 0.058607649058103561;
createNode animCurveTA -n "animCurveTA1039";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1040";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1041";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1042";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1043";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1044";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1045";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1046";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1047";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 61 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode clipLibrary -n "clipLibrary3";
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
connectAttr "mrg_hands_in_airSource.st" "clipLibrary3.st[0]";
connectAttr "mrg_hands_in_airSource.du" "clipLibrary3.du[0]";
connectAttr "animCurveTL329.a" "clipLibrary3.cel[0].cev[0].cevr";
connectAttr "animCurveTL330.a" "clipLibrary3.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX1.a" "clipLibrary3.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL332.a" "clipLibrary3.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ1.a" "clipLibrary3.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA920.a" "clipLibrary3.cel[0].cev[5].cevr";
connectAttr "animCurveTU61.a" "clipLibrary3.cel[0].cev[6].cevr";
connectAttr "animCurveTU62.a" "clipLibrary3.cel[0].cev[7].cevr";
connectAttr "animCurveTU63.a" "clipLibrary3.cel[0].cev[8].cevr";
connectAttr "animCurveTU64.a" "clipLibrary3.cel[0].cev[9].cevr";
connectAttr "animCurveTU65.a" "clipLibrary3.cel[0].cev[10].cevr";
connectAttr "animCurveTU66.a" "clipLibrary3.cel[0].cev[11].cevr";
connectAttr "animCurveTU67.a" "clipLibrary3.cel[0].cev[12].cevr";
connectAttr "animCurveTU68.a" "clipLibrary3.cel[0].cev[13].cevr";
connectAttr "animCurveTA921.a" "clipLibrary3.cel[0].cev[14].cevr";
connectAttr "animCurveTA922.a" "clipLibrary3.cel[0].cev[15].cevr";
connectAttr "animCurveTA923.a" "clipLibrary3.cel[0].cev[16].cevr";
connectAttr "animCurveTL334.a" "clipLibrary3.cel[0].cev[17].cevr";
connectAttr "animCurveTL335.a" "clipLibrary3.cel[0].cev[18].cevr";
connectAttr "animCurveTL336.a" "clipLibrary3.cel[0].cev[19].cevr";
connectAttr "animCurveTL337.a" "clipLibrary3.cel[0].cev[20].cevr";
connectAttr "animCurveTL338.a" "clipLibrary3.cel[0].cev[21].cevr";
connectAttr "animCurveTL339.a" "clipLibrary3.cel[0].cev[22].cevr";
connectAttr "animCurveTA924.a" "clipLibrary3.cel[0].cev[23].cevr";
connectAttr "animCurveTA925.a" "clipLibrary3.cel[0].cev[24].cevr";
connectAttr "animCurveTA926.a" "clipLibrary3.cel[0].cev[25].cevr";
connectAttr "animCurveTL340.a" "clipLibrary3.cel[0].cev[26].cevr";
connectAttr "animCurveTL341.a" "clipLibrary3.cel[0].cev[27].cevr";
connectAttr "animCurveTL342.a" "clipLibrary3.cel[0].cev[28].cevr";
connectAttr "animCurveTA927.a" "clipLibrary3.cel[0].cev[29].cevr";
connectAttr "animCurveTA928.a" "clipLibrary3.cel[0].cev[30].cevr";
connectAttr "animCurveTA929.a" "clipLibrary3.cel[0].cev[31].cevr";
connectAttr "animCurveTA930.a" "clipLibrary3.cel[0].cev[32].cevr";
connectAttr "animCurveTA931.a" "clipLibrary3.cel[0].cev[33].cevr";
connectAttr "animCurveTA932.a" "clipLibrary3.cel[0].cev[34].cevr";
connectAttr "animCurveTA933.a" "clipLibrary3.cel[0].cev[35].cevr";
connectAttr "animCurveTA934.a" "clipLibrary3.cel[0].cev[36].cevr";
connectAttr "animCurveTA935.a" "clipLibrary3.cel[0].cev[37].cevr";
connectAttr "animCurveTA936.a" "clipLibrary3.cel[0].cev[38].cevr";
connectAttr "animCurveTA937.a" "clipLibrary3.cel[0].cev[39].cevr";
connectAttr "animCurveTA938.a" "clipLibrary3.cel[0].cev[40].cevr";
connectAttr "animCurveTA939.a" "clipLibrary3.cel[0].cev[41].cevr";
connectAttr "animCurveTA940.a" "clipLibrary3.cel[0].cev[42].cevr";
connectAttr "animCurveTA941.a" "clipLibrary3.cel[0].cev[43].cevr";
connectAttr "animCurveTL343.a" "clipLibrary3.cel[0].cev[44].cevr";
connectAttr "animCurveTL344.a" "clipLibrary3.cel[0].cev[45].cevr";
connectAttr "animCurveTL345.a" "clipLibrary3.cel[0].cev[46].cevr";
connectAttr "animCurveTL346.a" "clipLibrary3.cel[0].cev[47].cevr";
connectAttr "animCurveTL347.a" "clipLibrary3.cel[0].cev[48].cevr";
connectAttr "animCurveTL348.a" "clipLibrary3.cel[0].cev[49].cevr";
connectAttr "animCurveTL349.a" "clipLibrary3.cel[0].cev[50].cevr";
connectAttr "animCurveTL350.a" "clipLibrary3.cel[0].cev[51].cevr";
connectAttr "animCurveTL351.a" "clipLibrary3.cel[0].cev[52].cevr";
connectAttr "animCurveTA942.a" "clipLibrary3.cel[0].cev[53].cevr";
connectAttr "animCurveTA943.a" "clipLibrary3.cel[0].cev[54].cevr";
connectAttr "animCurveTA944.a" "clipLibrary3.cel[0].cev[55].cevr";
connectAttr "animCurveTA945.a" "clipLibrary3.cel[0].cev[56].cevr";
connectAttr "animCurveTA946.a" "clipLibrary3.cel[0].cev[57].cevr";
connectAttr "animCurveTA947.a" "clipLibrary3.cel[0].cev[58].cevr";
connectAttr "animCurveTA948.a" "clipLibrary3.cel[0].cev[59].cevr";
connectAttr "animCurveTA949.a" "clipLibrary3.cel[0].cev[60].cevr";
connectAttr "animCurveTA950.a" "clipLibrary3.cel[0].cev[61].cevr";
connectAttr "animCurveTA951.a" "clipLibrary3.cel[0].cev[62].cevr";
connectAttr "animCurveTA952.a" "clipLibrary3.cel[0].cev[63].cevr";
connectAttr "animCurveTA953.a" "clipLibrary3.cel[0].cev[64].cevr";
connectAttr "animCurveTA954.a" "clipLibrary3.cel[0].cev[65].cevr";
connectAttr "animCurveTA955.a" "clipLibrary3.cel[0].cev[66].cevr";
connectAttr "animCurveTA956.a" "clipLibrary3.cel[0].cev[67].cevr";
connectAttr "animCurveTA957.a" "clipLibrary3.cel[0].cev[68].cevr";
connectAttr "animCurveTA958.a" "clipLibrary3.cel[0].cev[69].cevr";
connectAttr "animCurveTA959.a" "clipLibrary3.cel[0].cev[70].cevr";
connectAttr "animCurveTA960.a" "clipLibrary3.cel[0].cev[71].cevr";
connectAttr "animCurveTA961.a" "clipLibrary3.cel[0].cev[72].cevr";
connectAttr "animCurveTA962.a" "clipLibrary3.cel[0].cev[73].cevr";
connectAttr "animCurveTA963.a" "clipLibrary3.cel[0].cev[74].cevr";
connectAttr "animCurveTA964.a" "clipLibrary3.cel[0].cev[75].cevr";
connectAttr "animCurveTA965.a" "clipLibrary3.cel[0].cev[76].cevr";
connectAttr "animCurveTA966.a" "clipLibrary3.cel[0].cev[77].cevr";
connectAttr "animCurveTA967.a" "clipLibrary3.cel[0].cev[78].cevr";
connectAttr "animCurveTA968.a" "clipLibrary3.cel[0].cev[79].cevr";
connectAttr "animCurveTA969.a" "clipLibrary3.cel[0].cev[80].cevr";
connectAttr "animCurveTA970.a" "clipLibrary3.cel[0].cev[81].cevr";
connectAttr "animCurveTL352.a" "clipLibrary3.cel[0].cev[82].cevr";
connectAttr "animCurveTL353.a" "clipLibrary3.cel[0].cev[83].cevr";
connectAttr "animCurveTL354.a" "clipLibrary3.cel[0].cev[84].cevr";
connectAttr "animCurveTA971.a" "clipLibrary3.cel[0].cev[85].cevr";
connectAttr "animCurveTA972.a" "clipLibrary3.cel[0].cev[86].cevr";
connectAttr "animCurveTA973.a" "clipLibrary3.cel[0].cev[87].cevr";
connectAttr "animCurveTL355.a" "clipLibrary3.cel[0].cev[88].cevr";
connectAttr "animCurveTL356.a" "clipLibrary3.cel[0].cev[89].cevr";
connectAttr "animCurveTL357.a" "clipLibrary3.cel[0].cev[90].cevr";
connectAttr "animCurveTA974.a" "clipLibrary3.cel[0].cev[91].cevr";
connectAttr "animCurveTA975.a" "clipLibrary3.cel[0].cev[92].cevr";
connectAttr "animCurveTA976.a" "clipLibrary3.cel[0].cev[93].cevr";
connectAttr "animCurveTL358.a" "clipLibrary3.cel[0].cev[94].cevr";
connectAttr "animCurveTL359.a" "clipLibrary3.cel[0].cev[95].cevr";
connectAttr "animCurveTL360.a" "clipLibrary3.cel[0].cev[96].cevr";
connectAttr "animCurveTA977.a" "clipLibrary3.cel[0].cev[97].cevr";
connectAttr "animCurveTA978.a" "clipLibrary3.cel[0].cev[98].cevr";
connectAttr "animCurveTA979.a" "clipLibrary3.cel[0].cev[99].cevr";
connectAttr "animCurveTL361.a" "clipLibrary3.cel[0].cev[100].cevr";
connectAttr "animCurveTL362.a" "clipLibrary3.cel[0].cev[101].cevr";
connectAttr "animCurveTL363.a" "clipLibrary3.cel[0].cev[102].cevr";
connectAttr "animCurveTA980.a" "clipLibrary3.cel[0].cev[103].cevr";
connectAttr "animCurveTA981.a" "clipLibrary3.cel[0].cev[104].cevr";
connectAttr "animCurveTA982.a" "clipLibrary3.cel[0].cev[105].cevr";
connectAttr "animCurveTL364.a" "clipLibrary3.cel[0].cev[106].cevr";
connectAttr "animCurveTL365.a" "clipLibrary3.cel[0].cev[107].cevr";
connectAttr "animCurveTL366.a" "clipLibrary3.cel[0].cev[108].cevr";
connectAttr "animCurveTL367.a" "clipLibrary3.cel[0].cev[109].cevr";
connectAttr "animCurveTL368.a" "clipLibrary3.cel[0].cev[110].cevr";
connectAttr "animCurveTL369.a" "clipLibrary3.cel[0].cev[111].cevr";
connectAttr "animCurveTA983.a" "clipLibrary3.cel[0].cev[112].cevr";
connectAttr "animCurveTA984.a" "clipLibrary3.cel[0].cev[113].cevr";
connectAttr "animCurveTA985.a" "clipLibrary3.cel[0].cev[114].cevr";
connectAttr "animCurveTA986.a" "clipLibrary3.cel[0].cev[115].cevr";
connectAttr "animCurveTA987.a" "clipLibrary3.cel[0].cev[116].cevr";
connectAttr "animCurveTA988.a" "clipLibrary3.cel[0].cev[117].cevr";
connectAttr "animCurveTA989.a" "clipLibrary3.cel[0].cev[118].cevr";
connectAttr "animCurveTA990.a" "clipLibrary3.cel[0].cev[119].cevr";
connectAttr "animCurveTA991.a" "clipLibrary3.cel[0].cev[120].cevr";
connectAttr "animCurveTA992.a" "clipLibrary3.cel[0].cev[121].cevr";
connectAttr "animCurveTA993.a" "clipLibrary3.cel[0].cev[122].cevr";
connectAttr "animCurveTA994.a" "clipLibrary3.cel[0].cev[123].cevr";
connectAttr "animCurveTA995.a" "clipLibrary3.cel[0].cev[124].cevr";
connectAttr "animCurveTA996.a" "clipLibrary3.cel[0].cev[125].cevr";
connectAttr "animCurveTA997.a" "clipLibrary3.cel[0].cev[126].cevr";
connectAttr "animCurveTA998.a" "clipLibrary3.cel[0].cev[127].cevr";
connectAttr "animCurveTA999.a" "clipLibrary3.cel[0].cev[128].cevr";
connectAttr "animCurveTA1000.a" "clipLibrary3.cel[0].cev[129].cevr";
connectAttr "animCurveTA1001.a" "clipLibrary3.cel[0].cev[130].cevr";
connectAttr "animCurveTA1002.a" "clipLibrary3.cel[0].cev[131].cevr";
connectAttr "animCurveTA1003.a" "clipLibrary3.cel[0].cev[132].cevr";
connectAttr "animCurveTA1004.a" "clipLibrary3.cel[0].cev[133].cevr";
connectAttr "animCurveTA1005.a" "clipLibrary3.cel[0].cev[134].cevr";
connectAttr "animCurveTA1006.a" "clipLibrary3.cel[0].cev[135].cevr";
connectAttr "animCurveTA1007.a" "clipLibrary3.cel[0].cev[136].cevr";
connectAttr "animCurveTA1008.a" "clipLibrary3.cel[0].cev[137].cevr";
connectAttr "animCurveTA1009.a" "clipLibrary3.cel[0].cev[138].cevr";
connectAttr "animCurveTA1010.a" "clipLibrary3.cel[0].cev[139].cevr";
connectAttr "animCurveTA1011.a" "clipLibrary3.cel[0].cev[140].cevr";
connectAttr "animCurveTA1012.a" "clipLibrary3.cel[0].cev[141].cevr";
connectAttr "animCurveTA1013.a" "clipLibrary3.cel[0].cev[142].cevr";
connectAttr "animCurveTA1014.a" "clipLibrary3.cel[0].cev[143].cevr";
connectAttr "animCurveTA1015.a" "clipLibrary3.cel[0].cev[144].cevr";
connectAttr "animCurveTA1016.a" "clipLibrary3.cel[0].cev[145].cevr";
connectAttr "animCurveTA1017.a" "clipLibrary3.cel[0].cev[146].cevr";
connectAttr "animCurveTA1018.a" "clipLibrary3.cel[0].cev[147].cevr";
connectAttr "animCurveTA1019.a" "clipLibrary3.cel[0].cev[148].cevr";
connectAttr "animCurveTA1020.a" "clipLibrary3.cel[0].cev[149].cevr";
connectAttr "animCurveTA1021.a" "clipLibrary3.cel[0].cev[150].cevr";
connectAttr "animCurveTA1022.a" "clipLibrary3.cel[0].cev[151].cevr";
connectAttr "animCurveTA1023.a" "clipLibrary3.cel[0].cev[152].cevr";
connectAttr "animCurveTA1024.a" "clipLibrary3.cel[0].cev[153].cevr";
connectAttr "animCurveTA1025.a" "clipLibrary3.cel[0].cev[154].cevr";
connectAttr "animCurveTA1026.a" "clipLibrary3.cel[0].cev[155].cevr";
connectAttr "animCurveTA1027.a" "clipLibrary3.cel[0].cev[156].cevr";
connectAttr "animCurveTA1028.a" "clipLibrary3.cel[0].cev[157].cevr";
connectAttr "animCurveTA1029.a" "clipLibrary3.cel[0].cev[158].cevr";
connectAttr "animCurveTA1030.a" "clipLibrary3.cel[0].cev[159].cevr";
connectAttr "animCurveTA1031.a" "clipLibrary3.cel[0].cev[160].cevr";
connectAttr "animCurveTA1032.a" "clipLibrary3.cel[0].cev[161].cevr";
connectAttr "animCurveTA1033.a" "clipLibrary3.cel[0].cev[162].cevr";
connectAttr "animCurveTA1034.a" "clipLibrary3.cel[0].cev[163].cevr";
connectAttr "animCurveTA1035.a" "clipLibrary3.cel[0].cev[164].cevr";
connectAttr "animCurveTA1036.a" "clipLibrary3.cel[0].cev[165].cevr";
connectAttr "animCurveTA1037.a" "clipLibrary3.cel[0].cev[166].cevr";
connectAttr "animCurveTA1038.a" "clipLibrary3.cel[0].cev[167].cevr";
connectAttr "animCurveTA1039.a" "clipLibrary3.cel[0].cev[168].cevr";
connectAttr "animCurveTA1040.a" "clipLibrary3.cel[0].cev[169].cevr";
connectAttr "animCurveTA1041.a" "clipLibrary3.cel[0].cev[170].cevr";
connectAttr "animCurveTA1042.a" "clipLibrary3.cel[0].cev[171].cevr";
connectAttr "animCurveTA1043.a" "clipLibrary3.cel[0].cev[172].cevr";
connectAttr "animCurveTA1044.a" "clipLibrary3.cel[0].cev[173].cevr";
connectAttr "animCurveTA1045.a" "clipLibrary3.cel[0].cev[174].cevr";
connectAttr "animCurveTA1046.a" "clipLibrary3.cel[0].cev[175].cevr";
connectAttr "animCurveTA1047.a" "clipLibrary3.cel[0].cev[176].cevr";
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
// End of mrg_hands_in_air.ma
