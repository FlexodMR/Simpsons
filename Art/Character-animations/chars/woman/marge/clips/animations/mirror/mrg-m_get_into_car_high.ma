//Maya ASCII 4.0 scene
//Name: mrg-m_get_into_car_high.ma
//Last modified: Wed, Jul 31, 2002 05:08:14 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.9.1.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_get_into_car_high";
	setAttr ".ihi" 0;
	setAttr ".du" 23;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL329";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL330";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0.079815982092630827 1 0.06370402406527996 
		2 0.046456344944454331 3 0.027437583779940135 4 0.006012379621523645 5 -0.018454628481008921 
		6 -0.053372689709998575 7 -0.095563616016828348 8 -0.12978161250527515 9 
		-0.14091154234303133 10 -0.14406854555461057 11 -0.16935224252902129 12 -0.22584871931141101 
		13 -0.2973868557162711 14 -0.37618046278662504 15 -0.45444335156549692 16 
		-0.53159495765663256 17 -0.6112893278059931 18 -0.69209218976994646 19 -0.77256927130486019 
		20 -0.8655587814042548 21 -0.96741877413124133 22 -1.0519947448465741 23 
		-1.0931321889110071;
createNode animCurveTL -n "animCurveTL332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0;
createNode animCurveTL -n "animCurveTL333";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 1 0.0087098727955436019 2 0.018414888592065224 
		3 0.030778359170330429 4 0.047463596311104757 5 0.070133911795153797 6 0.10887328886874524 
		7 0.16115767665250844 8 0.20973833573875142 9 0.24597912784127168 10 0.27851619110507808 
		11 0.31600920076929556 12 0.36468929041555503 13 0.41910955876936379 14 0.47041262878566076 
		15 0.50974112341938504 16 0.53454630884003951 17 0.54961437640833011 18 0.55709033686600407 
		19 0.5591192009548086 20 0.5523081306382831 21 0.53683473382117197 22 0.52019969015702994 
		23 0.50990367929941149;
createNode animCurveTA -n "animCurveTA965";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 23 1;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 23 1;
createNode animCurveTA -n "animCurveTA966";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA967";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA968";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL334";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL335";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL336";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.072059567379697237 5 -0.071941272964125794 
		8 -0.071941272964125794 11 -0.068838022665507662 15 -0.69433309417422484 
		19 -1.3874241306665449 23 -1.4496212507996262;
createNode animCurveTL -n "animCurveTL338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.10860528941614173 5 0.10631349696451076 
		8 0.10631349696451076 11 0.22044809106996244 15 1.0957648766208137 19 0.9915476893602394 
		23 1.2279490663618713;
createNode animCurveTL -n "animCurveTL339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.00088390886240813306 5 0.00078430246903575811 
		8 0.00078430246903575811 11 0.06225095438633 15 0.63127460760279963 19 1.1050823071750968 
		23 1.4274355819015074;
createNode animCurveTA -n "animCurveTA969";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 44.740695510269994 
		15 5.9527805521417916 19 4.6237364519497488 23 -24.204848230542304;
createNode animCurveTA -n "animCurveTA970";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 -16.254341796023379 11 
		-41.561752269563186 15 -41.561752269563179 19 -15.713598145141304 23 0;
createNode animCurveTA -n "animCurveTA971";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 -3.0068693545511653 
		15 -3.0068693545511573 19 -0.30443393062337659 23 0;
createNode animCurveTL -n "animCurveTL340";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.17655026201706334 5 0.18429167489704937 
		8 -0.20461046828876445 11 -0.44714610110398917 15 -0.56570727510012808 19 
		-0.86072929347168581 21 -1.1920862347788435 23 -1.1468862801970878;
	setAttr -s 8 ".kit[1:7]"  1 9 9 9 9 9 9;
	setAttr -s 8 ".kot[1:7]"  1 9 9 9 9 9 9;
	setAttr -s 8 ".kix[1:7]"  0.081157185137271881 0.0031673586927354336 
		0.0064616589806973934 0.0064475811086595058 0.0031929388642311096 0.0046593965962529182 
		0.014747669920325279;
	setAttr -s 8 ".kiy[1:7]"  -0.99670130014419556 -0.99999499320983887 
		-0.99997913837432861 -0.99997919797897339 -0.99999487400054932 -0.99998915195465088 
		0.99989122152328491;
	setAttr -s 8 ".kox[1:7]"  0.0811571404337883 0.0031673586927354336 
		0.0064616589806973934 0.0064475811086595058 0.0031929388642311096 0.0046593965962529182 
		0.014747669920325279;
	setAttr -s 8 ".koy[1:7]"  -0.99670130014419556 -0.99999499320983887 
		-0.99997913837432861 -0.99997919797897339 -0.99999487400054932 -0.99998915195465088 
		0.99989122152328491;
createNode animCurveTL -n "animCurveTL341";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.10676264329452093 5 0.18167640604744542 
		8 0.48611788621772883 11 0.73446018014250969 15 0.90113586866324968 19 0.92691208538109604 
		21 1.4110198692203186 23 1.2464696855624631;
createNode animCurveTL -n "animCurveTL342";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.073147264740539078 5 -0.074657598490611779 
		8 0.65117010410211162 11 0.72965954157862167 15 0.87203797724319099 19 1.2385123117962507 
		21 1.1873975420815428 23 1.3883743416871892;
	setAttr -s 8 ".kit[1:7]"  1 9 9 9 9 9 9;
	setAttr -s 8 ".kot[1:7]"  1 9 9 9 9 9 9;
	setAttr -s 8 ".kix[1:7]"  0.097951710224151611 0.0024865737650543451 
		0.010563795454800129 0.0052404743619263172 0.006341839674860239 0.0088967205956578255 
		0.0033171137329190969;
	setAttr -s 8 ".kiy[1:7]"  0.99519121646881104 0.99999690055847168 
		0.99994421005249023 0.99998629093170166 0.99997991323471069 0.99996042251586914 
		0.99999451637268066;
	setAttr -s 8 ".kox[1:7]"  0.097951769828796387 0.0024865737650543451 
		0.010563795454800129 0.0052404743619263172 0.006341839674860239 0.0088967205956578255 
		0.0033171137329190969;
	setAttr -s 8 ".koy[1:7]"  0.99519121646881104 0.99999690055847168 
		0.99994421005249023 0.99998629093170166 0.99997991323471069 0.99996042251586914 
		0.99999451637268066;
createNode animCurveTA -n "animCurveTA972";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 15.829425701546842 8 11.551659140552948 
		11 -31.438653416305232 15 5.105122828475678 19 -1.2213759682185823 21 -13.102951162071571 
		23 -36.819011955683756;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0.95625519752502441 0.79767590761184692 
		0.23560445010662079 0.900748610496521 0.45123112201690674 0.53264057636260986 
		0.2098277360200882 0.15901118516921997;
	setAttr -s 8 ".kiy[0:7]"  0.29253369569778442 0.60308635234832764 
		-0.97184902429580688 -0.43434080481529236 0.8924071192741394 -0.84634155035018921 
		-0.97773838043212891 -0.98727679252624512;
	setAttr -s 8 ".kox[0:7]"  0.95625525712966919 0.79767590761184692 
		0.23560445010662079 0.900748610496521 0.45123112201690674 0.53264057636260986 
		0.2098277360200882 0.15901118516921997;
	setAttr -s 8 ".koy[0:7]"  0.29253360629081726 0.60308635234832764 
		-0.97184902429580688 -0.43434080481529236 0.8924071192741394 -0.84634155035018921 
		-0.97773838043212891 -0.98727679252624512;
createNode animCurveTA -n "animCurveTA973";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 25.948901905116401 5 25.948901905116429 
		8 -25.004763674638017 11 -60.38658136148976 15 -60.386581361489611 19 -20.018501535504324 
		21 24.858040419747997 23 0;
	setAttr -s 8 ".kit[1:7]"  1 9 9 9 9 9 9;
	setAttr -s 8 ".kot[1:7]"  1 9 9 9 9 9 9;
	setAttr -s 8 ".kix[1:7]"  0.97193270921707153 0.13157433271408081 
		0.35345959663391113 0.3539825975894928 0.1332283616065979 0.35653901100158691 
		0.15187866985797882;
	setAttr -s 8 ".kiy[1:7]"  -0.23525899648666382 -0.99130630493164063 
		-0.93544977903366089 0.93525201082229614 0.99108535051345825 0.93428045511245728 
		-0.98839914798736572;
	setAttr -s 8 ".kox[1:7]"  0.97193259000778198 0.13157433271408081 
		0.35345959663391113 0.3539825975894928 0.1332283616065979 0.35653901100158691 
		0.15187866985797882;
	setAttr -s 8 ".koy[1:7]"  -0.23525959253311157 -0.99130630493164063 
		-0.93544977903366089 0.93525201082229614 0.99108535051345825 0.93428045511245728 
		-0.98839914798736572;
createNode animCurveTA -n "animCurveTA974";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 8 3.1267797350188666 11 
		-9.2934847617002632 15 -9.2934847617002259 19 1.8799358321697104 21 8.0407791275060312 
		23 0;
createNode animCurveTA -n "animCurveTA975";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA976";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA977";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA978";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA979";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA980";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA981";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA982";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA983";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA984";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA985";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA986";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTL -n "animCurveTL344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTL -n "animCurveTL345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.1269999742507935 5 1 8 1 11 
		1 15 1 19 1 23 1;
createNode animCurveTL -n "animCurveTL346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 -0.034660776702225261 
		15 -0.034660776702225261 19 -0.034660776702225261 23 0;
createNode animCurveTL -n "animCurveTL347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0.43236842264083392 
		15 0.43236842264083392 19 0.43236842264083392 23 0;
createNode animCurveTL -n "animCurveTL348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.1269999742507935 5 1 8 1 11 
		1.022596790343715 15 1.022596790343715 19 1.022596790343715 23 1;
createNode animCurveTL -n "animCurveTL349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.097247464600251146 5 -0.022485043507137373 
		8 -0.1581253833752615 11 -0.20633807639177926 15 -0.5536919121398044 19 -0.94129522550093114 
		23 -1.3318677670487873;
createNode animCurveTL -n "animCurveTL350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.9825577053607899 5 0.88408344618939172 
		8 0.95563808341791601 11 1.0156351840051061 15 1.6898929831649385 19 1.4425027488988211 
		23 1.4718651042148105;
createNode animCurveTL -n "animCurveTL351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0.085450869935559656 8 0.25554432640318248 
		11 0.38502431166605966 15 0.62106649013588522 19 0.68122853689967378 23 0.62126454755213167;
createNode animCurveTA -n "animCurveTA987";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.62843630316474508 5 -4.0647210446877668 
		8 -1.8959560750666928 11 -6.5835611357400694 15 -0.75709958982557779 19 -40.376891559609589 
		23 -47.088616656908457;
createNode animCurveTA -n "animCurveTA988";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 5.8284402688137167 5 -6.129632983176454 
		8 -35.293888980825663 11 -45.796217878461412 15 -35.938490860670036 19 -23.878340451837946 
		23 2.0975263990809512;
createNode animCurveTA -n "animCurveTA989";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.295636019309746 5 1.7490863204697844 
		8 -0.66128241588913117 11 0.9955869126685768 15 -7.3091291775340625 19 -7.8533058613822568 
		23 -0.53932213336905677;
createNode animCurveTA -n "animCurveTA990";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA991";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA992";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA993";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA994";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA995";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA996";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA997";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA998";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA999";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA1000";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA1001";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA1002";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA1003";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA1004";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA1005";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA1006";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA1007";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA1008";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA1009";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA1010";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 11 0 15 0 23 0;
	setAttr -s 5 ".kit[1:4]"  3 9 1 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1011";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 11 0 15 0 23 0;
	setAttr -s 5 ".kit[1:4]"  3 9 1 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1012";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 11 -24.501661700242042 
		15 0 23 0;
	setAttr -s 5 ".kit[1:4]"  3 9 1 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[3:4]"  0.29765972495079041 1;
	setAttr -s 5 ".kiy[3:4]"  0.95467203855514526 0;
	setAttr -s 5 ".kox[1:4]"  1 1 0.68311583995819092 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0.73031002283096313 0;
createNode animCurveTA -n "animCurveTA1013";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA1014";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA1015";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.5198069948790518 23 -0.5198069948790518;
createNode animCurveTL -n "animCurveTL353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 23 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 23 0.36439499068905612;
createNode animCurveTA -n "animCurveTA1016";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965317 23 7.7976222737965317;
createNode animCurveTA -n "animCurveTA1017";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 30.409274105849079 23 30.409274105849079;
createNode animCurveTA -n "animCurveTA1018";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.859940280210893 23 64.859940280210893;
createNode animCurveTL -n "animCurveTL355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.43524234076486068 23 0.43524234076486068;
createNode animCurveTL -n "animCurveTL356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 23 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 23 0.27773886459742925;
createNode animCurveTA -n "animCurveTA1019";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA1020";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -28.652637602052774 23 -28.652637602052774;
createNode animCurveTA -n "animCurveTA1021";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.676908227303443 23 -64.676908227303443;
createNode animCurveTL -n "animCurveTL358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.25368378509166484 5 -1.0277441190612262 
		8 -1.1622292898925384 11 -1.046618566909935 15 -1.5701742145419937 19 -2.4600907287590754 
		23 -3.3854287601577617;
createNode animCurveTL -n "animCurveTL359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.2026421011163611 5 2.5883676298501026 
		8 2.602891643908853 11 2.6467518067728908 15 3.7910441997271205 19 3.2517516468345349 
		23 3.2951827277525036;
createNode animCurveTL -n "animCurveTL360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.0085295933619701936 5 0.51267248257513465 
		8 0.41304150212496782 11 0.30586366303224605 15 0.64829928910831547 19 1.2097747119200417 
		23 1.1357561097544726;
createNode animCurveTA -n "animCurveTA1022";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.226511010665412 5 -31.75730752317039 
		8 12.446821488604941 11 17.578216977008857 15 29.401460204593494 19 4.6613644930380378 
		23 26.279373069154861;
createNode animCurveTA -n "animCurveTA1023";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.5139660854992858 5 18.084704295217712 
		8 16.647597226726852 11 37.36166010901858 15 0.064445386663593049 19 36.108857241373819 
		23 55.316964386970028;
createNode animCurveTA -n "animCurveTA1024";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 68.213989601412422 5 -22.773049448146136 
		8 -42.971337046971009 11 -48.871336699981519 15 7.5697157981896019 19 2.913287519114713 
		23 77.201572122121547;
createNode animCurveTL -n "animCurveTL361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.65311611999272123 5 0.91837917750249576 
		8 0.18423138944120077 11 -0.13734969896423507 15 -0.71211689083423524 19 
		-0.92995142452873636 23 -2.1478091564096489;
createNode animCurveTL -n "animCurveTL362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.222264083594911 5 2.3808329383109275 
		8 2.7155514786122592 11 2.9448302269096547 15 3.8833388374561166 19 3.4208813023383717 
		23 3.2428528854844094;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0.019648261368274689 0.0054058297537267208 
		0.0035460938233882189 0.001998076681047678 0.0056015518493950367 0.0041634691879153252 
		0.0074892309494316578;
	setAttr -s 7 ".kiy[0:6]"  -0.99980694055557251 0.99998539686203003 
		0.99999374151229858 0.99999803304672241 0.99998432397842407 -0.99999135732650757 
		-0.99997192621231079;
	setAttr -s 7 ".kox[0:6]"  0.019648203626275063 0.0054058297537267208 
		0.0035460938233882189 0.001998076681047678 0.0056015518493950367 0.0041634691879153252 
		0.0074892309494316578;
	setAttr -s 7 ".koy[0:6]"  -0.99980694055557251 0.99998539686203003 
		0.99999374151229858 0.99999803304672241 0.99998432397842407 -0.99999135732650757 
		-0.99997192621231079;
createNode animCurveTL -n "animCurveTL363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.097994651149805143 5 0.25669475715425083 
		8 1.2283776922477336 11 1.538601033102601 15 1.9176543108744739 19 1.5485013526627536 
		23 1.2087400184371315;
createNode animCurveTA -n "animCurveTA1025";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 5.4739599453216465 5 -6.8408848116811125 
		8 -103.2974264137501 11 -195.94161016242975 15 -166.81562693844464 19 -28.627794043562027 
		23 59.007910131897077;
createNode animCurveTA -n "animCurveTA1026";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -8.5874521608419823 5 -30.714124774991525 
		8 -44.545544782782869 11 -42.618115440744987 15 -64.640282392072066 19 -43.905939096238889 
		23 -71.601588453715053;
createNode animCurveTA -n "animCurveTA1027";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -74.754744621954103 5 -52.637498007569562 
		8 95.741248345221535 11 126.03015986292631 15 165.05975398489667 19 17.619748157748248 
		23 -90.779043014820601;
createNode animCurveTL -n "animCurveTL364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.062337280601809833 5 0.31054502397108613 
		8 0.31054502397108613 11 0.31054502397108613 15 0.31054502397108613 19 0.31054502397108613 
		23 0.017571725225418895;
createNode animCurveTL -n "animCurveTL365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.40762644910266188 5 -0.55640530640609931 
		8 -0.55640530640609931 11 -0.55640530640609931 15 -0.55640530640609931 19 
		-0.55640530640609931 23 -0.54560785950824164;
createNode animCurveTL -n "animCurveTL366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.93129112588482243 5 -0.57914122395678103 
		8 -0.57914122395678103 11 -0.57914122395678103 15 -0.57914122395678103 19 
		-0.57914122395678103 23 -0.64724218630287966;
createNode animCurveTL -n "animCurveTL367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.245189189189189 5 -0.17523930523423681 
		8 -0.0081422950894450806 11 -0.063331173333856433 15 -0.063331173333856433 
		19 -0.37736680843384973 23 -0.22996541113775407;
createNode animCurveTL -n "animCurveTL368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 -0.00072435787012014696 8 
		-0.69388626071362391 11 -0.69960805773293522 15 -0.69960805773293522 19 -0.54343311259648019 
		23 -0.71572892866406468;
createNode animCurveTL -n "animCurveTL369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1 5 -0.80201435285893019 8 -0.75622028871403923 
		11 -0.66762598980258558 15 -0.66762598980258558 19 -0.97043124551903082 23 
		-0.86045149817799893;
createNode animCurveTA -n "animCurveTA1028";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.061808866237340665 5 -0.061808866237337522 
		8 -0.061808866237337522 11 -0.061808866237337522 15 -0.061808866237337522 
		19 -0.061808866237337522 23 -0.061808866237340665;
createNode animCurveTA -n "animCurveTA1029";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -59.058178941076754 5 -59.058178941076754 
		8 -59.058178941076754 11 -59.058178941076754 15 -59.058178941076754 19 -59.058178941076754 
		23 -59.058178941076754;
createNode animCurveTA -n "animCurveTA1030";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.57914742975785 5 16.579147429757843 
		8 16.579147429757843 11 16.579147429757843 15 16.579147429757843 19 16.579147429757843 
		23 16.57914742975785;
createNode animCurveTA -n "animCurveTA1031";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.253734489678925 5 12.253734489678925 
		8 12.253734489678925 11 12.253734489678925 15 12.253734489678925 19 12.253734489678925 
		23 12.253734489678925;
createNode animCurveTA -n "animCurveTA1032";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -65.746751280844975 5 -65.746751280844961 
		8 -65.746751280844961 11 -65.746751280844961 15 -65.746751280844961 19 -65.746751280844961 
		23 -65.746751280844975;
createNode animCurveTA -n "animCurveTA1033";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1034";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.711328223519061 5 15.711328223519057 
		8 15.711328223519057 11 15.711328223519057 15 15.711328223519057 19 15.711328223519057 
		23 15.711328223519061;
createNode animCurveTA -n "animCurveTA1035";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.5572674112203657 5 8.5572674112203622 
		8 8.5572674112203622 11 8.5572674112203622 15 8.5572674112203622 19 8.5572674112203622 
		23 8.5572674112203657;
createNode animCurveTA -n "animCurveTA1036";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1037";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1038";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1039";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1040";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1041";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1042";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.2533422302317216 5 8.2533422302317216 
		8 8.2533422302317216 11 8.2533422302317216 15 8.2533422302317216 19 8.2533422302317216 
		23 8.2533422302317216;
createNode animCurveTA -n "animCurveTA1043";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 23.263402056531085 5 23.263402056531085 
		8 23.263402056531085 11 23.263402056531085 15 23.263402056531085 19 23.263402056531085 
		23 23.263402056531085;
createNode animCurveTA -n "animCurveTA1044";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 20.166277752815617 5 20.166277752815617 
		8 20.166277752815617 11 20.166277752815617 15 20.166277752815617 19 20.166277752815617 
		23 20.166277752815617;
createNode animCurveTA -n "animCurveTA1045";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1046";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1047";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 33.429092416277157 5 33.429092416277157 
		8 33.429092416277157 11 33.429092416277157 15 33.429092416277157 19 33.429092416277157 
		23 33.429092416277157;
createNode animCurveTA -n "animCurveTA1048";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA1049";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA1050";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA1051";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA1052";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA1053";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 23 13.994403295754109;
createNode animCurveTA -n "animCurveTA1054";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA1055";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA1056";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 23 13.994403295754109;
createNode animCurveTA -n "animCurveTA1057";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1058";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1059";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 17.254116939558369 5 17.254116939558369 
		8 17.254116939558369 11 17.254116939558369 15 17.254116939558369 19 17.254116939558369 
		23 17.254116939558369;
createNode animCurveTA -n "animCurveTA1060";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1061";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1062";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1063";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.71009266045616004 5 -7.8430056866173823 
		8 -7.8430056866173823 11 -7.8430056866173823 15 0.30472023265933834 19 21.997309557398737 
		23 -2.3937906322123035;
createNode animCurveTA -n "animCurveTA1064";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.39065484564574893 5 2.4212113907903019 
		8 2.4212113907903019 11 2.4212113907903019 15 14.036813544292096 19 0.59125802058123311 
		23 1.7843868968348546;
createNode animCurveTA -n "animCurveTA1065";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.1445984161934586 5 14.868855041301886 
		8 14.868855041301886 11 14.868855041301886 15 28.799747256025494 19 21.508301617803916 
		23 13.23227595374661;
createNode animCurveTA -n "animCurveTA1066";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 -7.1097278539792699 8 -7.1097278539792699 
		11 -7.1097278539792699 15 -7.1097278539792699 19 -7.1097278539792699 23 0;
createNode animCurveTA -n "animCurveTA1067";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1068";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1069";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.0270270270270276 5 6.2272449612176421 
		8 7.3663639372530634 11 5.8315373789181599 15 5.8315373789181599 19 -10.463084104227804 
		23 -0.71032600031388182;
createNode animCurveTA -n "animCurveTA1070";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.4108692476260059 5 16.084189774853822 
		8 7.5697738916433828 11 5.3829029886559372 15 5.3829029886559372 19 -36.330829705456274 
		23 -3.6938159239902002;
createNode animCurveTA -n "animCurveTA1071";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 13.0432985235726 5 11.614998532466354 
		8 -3.5020434651152947 11 21.978188033309632 15 21.978188033309632 19 23.327061326652228 
		23 14.572231982957494;
createNode animCurveTA -n "animCurveTA1072";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 1.8903601258661931 8 1.8903601258661931 
		11 11.522116577312191 15 4.1049932982243744 19 1.8903601258661931 23 2.2796212519697261;
createNode animCurveTA -n "animCurveTA1073";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 -2.5597289571479034 8 1.1805096098759942 
		11 6.1569315864085237 15 1.9782530517974559 19 -2.5597289571479034 23 -2.2209313171847884;
createNode animCurveTA -n "animCurveTA1074";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -10.382821061592265 5 -11.227196463948573 
		8 -14.140513089538416 11 -14.715230675259965 15 -21.454364795520821 19 2.016811087403604 
		23 8.0401232256568225;
createNode animCurveTA -n "animCurveTA1075";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1076";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1077";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.080064458283051 5 27.080064458283051 
		8 27.080064458283051 11 27.080064458283051 15 27.080064458283051 19 27.080064458283051 
		23 27.080064458283051;
createNode animCurveTA -n "animCurveTA1078";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 10.423754966968488 5 10.423754966968488 
		8 10.423754966968488 11 10.423754966968488 15 10.423754966968488 19 10.423754966968488 
		23 10.423754966968488;
createNode animCurveTA -n "animCurveTA1079";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.7228482558439 5 27.722848255843903 
		8 27.722848255843903 11 27.722848255843903 15 27.722848255843903 19 27.722848255843903 
		23 27.7228482558439;
createNode animCurveTA -n "animCurveTA1080";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 21.576484776388224 5 21.576484776388227 
		8 21.576484776388227 11 21.576484776388227 15 21.576484776388227 19 21.576484776388227 
		23 21.576484776388224;
createNode animCurveTA -n "animCurveTA1081";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1082";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1083";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.911632519594587 5 27.911632519594587 
		8 27.911632519594587 11 27.911632519594587 15 27.911632519594587 19 27.911632519594587 
		23 27.911632519594587;
createNode animCurveTA -n "animCurveTA1084";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 7 0 13 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1085";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 7 0 13 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1086";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 7 14.605790794123042 13 29.652980450111979 
		19 -2.0670662189630473 23 0;
createNode animCurveTA -n "animCurveTA1087";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 7 0 13 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1088";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 7 0 13 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1089";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 7 14.605790794123042 13 29.652980450111979 
		19 -2.0670662189630473 23 0;
createNode animCurveTA -n "animCurveTA1090";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 7 0 13 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1091";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 7 0 13 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1092";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 7 14.605790794123042 13 29.652980450111979 
		19 -2.0670662189630473 23 0;
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
connectAttr "mrg_get_into_car_high.st" "clipLibrary2.st[0]";
connectAttr "mrg_get_into_car_high.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL329.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL330.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL331.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL332.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL333.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA965.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU9.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU15.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU16.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA966.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA967.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA968.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL334.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL335.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL336.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL337.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL338.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL339.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA969.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA970.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA971.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL340.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL341.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL342.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA972.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA973.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA974.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA975.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA976.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA977.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA978.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA979.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA980.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTA981.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTA982.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTA983.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTA984.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTA985.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTA986.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL343.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL344.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL345.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTL346.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTL347.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTL348.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTL349.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL350.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL351.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA987.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA988.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA989.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA990.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA991.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA992.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA993.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA994.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA995.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA996.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA997.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA998.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA999.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA1000.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA1001.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA1002.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA1003.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA1004.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA1005.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA1006.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA1007.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA1008.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA1009.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTA1010.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA1011.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA1012.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA1013.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA1014.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA1015.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL352.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL353.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL354.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA1016.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA1017.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA1018.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL355.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL356.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL357.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA1019.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA1020.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA1021.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL358.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL359.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL360.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA1022.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA1023.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA1024.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL361.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL362.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL363.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTA1025.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTA1026.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTA1027.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTL364.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTL365.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTL366.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTL367.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTL368.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTL369.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA1028.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA1029.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA1030.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA1031.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA1032.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA1033.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA1034.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA1035.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA1036.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA1037.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA1038.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA1039.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA1040.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA1041.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA1042.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA1043.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA1044.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA1045.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA1046.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA1047.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA1048.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA1049.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA1050.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA1051.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA1052.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA1053.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA1054.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA1055.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA1056.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA1057.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA1058.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA1059.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA1060.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA1061.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA1062.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA1063.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA1064.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA1065.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA1066.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA1067.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA1068.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA1069.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA1070.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA1071.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA1072.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA1073.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA1074.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA1075.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA1076.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA1077.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA1078.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA1079.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA1080.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA1081.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA1082.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA1083.a" "clipLibrary2.cel[0].cev[167].cevr";
connectAttr "animCurveTA1084.a" "clipLibrary2.cel[0].cev[168].cevr";
connectAttr "animCurveTA1085.a" "clipLibrary2.cel[0].cev[169].cevr";
connectAttr "animCurveTA1086.a" "clipLibrary2.cel[0].cev[170].cevr";
connectAttr "animCurveTA1087.a" "clipLibrary2.cel[0].cev[171].cevr";
connectAttr "animCurveTA1088.a" "clipLibrary2.cel[0].cev[172].cevr";
connectAttr "animCurveTA1089.a" "clipLibrary2.cel[0].cev[173].cevr";
connectAttr "animCurveTA1090.a" "clipLibrary2.cel[0].cev[174].cevr";
connectAttr "animCurveTA1091.a" "clipLibrary2.cel[0].cev[175].cevr";
connectAttr "animCurveTA1092.a" "clipLibrary2.cel[0].cev[176].cevr";
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
// End of mrg-m_get_into_car_high.ma
