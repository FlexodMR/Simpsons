//Maya ASCII 4.0 scene
//Name: hom-m_get_into_car_high.ma
//Last modified: Tue, Jul 23, 2002 11:52:58 AM
requires maya "4.0";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dSimpleShader" "17.1";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_get_into_car_high";
	setAttr ".ihi" 0;
	setAttr ".du" 23;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL288";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL289";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL290";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0.051425456377630012 1 0.012437225089560076 
		2 0.018124941383413754 3 0.025691209663425491 4 0.029074766691110625 5 0.022214349227984511 
		6 -0.0082943208891033734 7 -0.05603391464543634 8 -0.097333284512698445 9 
		-0.11798685245650932 10 -0.13220019472082228 11 -0.15891889519482169 12 -0.19990754814845468 
		13 -0.24672042933253749 14 -0.30298764485755841 15 -0.37233930083400585 16 
		-0.4615733049802393 17 -0.56681030770574492 18 -0.67566452915770003 19 -0.77575018948328212 
		20 -0.87516133093354653 21 -0.97670473093254861 22 -1.0600637123869669 23 
		-1.1049215982034806;
createNode animCurveTL -n "animCurveTL291";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0;
createNode animCurveTL -n "animCurveTL292";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 1 -0.0021810618437259279 2 
		0.026828283202522632 3 0.060343396540576473 4 0.094884783635195216 5 0.1269729499511385 
		6 0.15604986267661913 7 0.184755784748345 8 0.21440866525381849 9 0.24171473758861328 
		10 0.26996776792636906 11 0.31036700452168781 12 0.37141552840768649 13 0.44424761329270906 
		14 0.51400929644419735 15 0.56584661512959322 16 0.59354192942696049 17 0.60576954712644326 
		18 0.61001342706359807 19 0.61375752807398076 20 0.61712626435083329 21 0.61675196032007196 
		22 0.61488044016626497 23 0.61375752807398076;
createNode animCurveTA -n "animCurveTA792";
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
createNode animCurveTA -n "animCurveTA793";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA794";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA795";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL293";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL294";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL295";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.21594587158542247 5 -0.21594587158542247 
		8 -0.21594587158542247 11 -0.21284262128680437 15 -0.76815878452853115 19 
		-1.5356147326459362 23 -1.9332537429790313;
createNode animCurveTL -n "animCurveTL297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.1380615615975922 5 0.1380615615975922 
		8 0.1380615615975922 11 0.25219615570304388 15 1.2966642023082973 19 1.3102926386178941 
		23 1.3102926386178941;
createNode animCurveTL -n "animCurveTL298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.00078430246903575811 5 0.00078430246903575811 
		8 0.00078430246903575811 11 0.06225095438633 15 0.60468704449766641 19 1.2941152378780334 
		23 1.4192359250534907;
createNode animCurveTA -n "animCurveTA796";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 44.740695510269994 
		15 5.9527805521417916 19 4.6237364519497488 23 -6.5046911724775329;
createNode animCurveTA -n "animCurveTA797";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 -16.254341796023379 11 
		-41.561752269563186 15 -41.561752269563179 19 -15.713598145141304 23 -3.3090781707350478;
createNode animCurveTA -n "animCurveTA798";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 -3.0068693545511653 
		15 -3.0068693545511573 19 -0.30443393062337659 23 -4.2722871456273142;
createNode animCurveTL -n "animCurveTL299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.26454016861507795 5 0.26454016861507795 
		8 0.13616587697871449 11 -0.56570727510012808 15 -0.56570727510012808 19 
		-0.64881650410267755 21 -1.1920862347788435 23 -1.4091301774705804;
createNode animCurveTL -n "animCurveTL300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.13806192026723146 5 0.21218793707500705 
		8 0.31138798106548571 11 0.93708288941788209 15 0.93708288941788209 19 1.0954029161109535 
		21 1.4110198692203186 23 1.2638806898773334;
createNode animCurveTL -n "animCurveTL301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.064904406754016042 5 -0.064904406754016042 
		8 0.65491302204052726 11 0.87203797724319099 15 0.87203797724319099 19 0.87203797724319099 
		21 1.1873975420815428 23 1.430750031861709;
createNode animCurveTA -n "animCurveTA799";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 15.829425701546842 8 11.551659140552948 
		11 5.105122828475678 15 5.105122828475678 19 48.368392823509119 21 -13.102951162071571 
		23 0;
createNode animCurveTA -n "animCurveTA800";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 25.948901905116401 5 25.948901905116429 
		8 -25.004763674638017 11 -60.386581361489611 15 -60.386581361489611 19 -60.386581361489711 
		21 24.858040419747997 23 0;
createNode animCurveTA -n "animCurveTA801";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 8 3.1267797350188666 11 
		-9.2934847617002259 15 -9.2934847617002259 19 -9.2934847617002792 21 8.0407791275060312 
		23 0;
createNode animCurveTA -n "animCurveTA802";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA803";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA804";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA805";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA806";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA807";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTL -n "animCurveTL303";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTL -n "animCurveTL304";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 5 1 8 1 11 1 15 1 19 1 23 1;
createNode animCurveTL -n "animCurveTL305";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 -0.034660776702225261 
		15 -0.034660776702225261 19 -0.034660776702225261 23 -0.034660776702225261;
createNode animCurveTL -n "animCurveTL306";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0.43236842264083392 
		15 0.43236842264083392 19 0.43236842264083392 23 0.43236842264083392;
createNode animCurveTL -n "animCurveTL307";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 5 1 8 1 11 1.022596790343715 
		15 1.022596790343715 19 1.022596790343715 23 1.022596790343715;
createNode animCurveTL -n "animCurveTL308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.076472881617957691 5 0.033034131700396582 
		8 -0.14474070369678685 11 -0.236322372520096 15 -0.55369191213980451 19 -1.1535892257296343 
		23 -1.6430877726404629;
createNode animCurveTL -n "animCurveTL309";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.93105416142265018 5 0.9224657007074174 
		8 0.91524338550816797 11 1.0156351840051061 15 1.7272125181209907 19 1.7698265540884552 
		23 1.8165283848315497;
createNode animCurveTL -n "animCurveTL310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0.18881674669046031 8 0.31883914369988964 
		11 0.46153521751207466 15 0.84144943498353997 19 0.91269596990779223 23 0.91269596990779223;
createNode animCurveTA -n "animCurveTA808";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.62843630316474508 5 -4.0647210446877668 
		8 -1.8959560750666928 11 -6.5835611357400694 15 -0.75709958982557779 19 -7.8826714955125015 
		23 -22.015891406447029;
createNode animCurveTA -n "animCurveTA809";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 5.8284402688137167 5 -6.129632983176454 
		8 -35.293888980825663 11 -45.796217878461412 15 -35.938490860670036 19 -26.434023462293165 
		23 1.3737820963010432;
createNode animCurveTA -n "animCurveTA810";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.295636019309746 5 1.7490863204697844 
		8 -0.66128241588913117 11 0.9955869126685768 15 -7.3091291775340625 19 1.3148835681179702 
		23 0.04386055886445716;
createNode animCurveTA -n "animCurveTA811";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA812";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA813";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA814";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA815";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA816";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA817";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA818";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA819";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA820";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA821";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA822";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA823";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA824";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA825";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA826";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA827";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA828";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA829";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA830";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA831";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 11 0 15 0 23 0;
	setAttr -s 5 ".kit[1:4]"  3 9 1 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA832";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 8 0 11 0 15 0 23 0;
	setAttr -s 5 ".kit[1:4]"  3 9 1 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA833";
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
createNode animCurveTA -n "animCurveTA834";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA835";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA836";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTL -n "animCurveTL311";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.5198069948790518 23 -0.5198069948790518;
createNode animCurveTL -n "animCurveTL312";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 23 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL313";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 23 0.36439499068905612;
createNode animCurveTA -n "animCurveTA837";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965299 23 7.7976222737965299;
createNode animCurveTA -n "animCurveTA838";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 30.409274105849079 23 30.409274105849079;
createNode animCurveTA -n "animCurveTA839";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.859940280210878 23 64.859940280210878;
createNode animCurveTL -n "animCurveTL314";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.43524234076486068 23 0.43524234076486068;
createNode animCurveTL -n "animCurveTL315";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 23 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL316";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 23 0.27773886459742925;
createNode animCurveTA -n "animCurveTA840";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA841";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -28.652637602052774 23 -28.652637602052774;
createNode animCurveTA -n "animCurveTA842";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.676908227303443 23 -64.676908227303443;
createNode animCurveTL -n "animCurveTL317";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.76309120872911718 5 -0.94848699834070749 
		8 -1.2225023812587541 11 -1.2225023812587541 15 -2.0726300455543467 19 -3.1317666955966854 
		23 -3.576063470533156;
createNode animCurveTL -n "animCurveTL318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.6150490657878991 5 2.1108205881739668 
		8 2.9975437253528492 11 2.9975437253528492 15 3.8656608283838412 19 3.438005139495369 
		23 3.1500943872743385;
createNode animCurveTL -n "animCurveTL319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.14314299916678522 5 0.6732361872224315 
		8 0.55007022102571512 11 0.55007022102571512 15 0.8557550956276273 19 1.5644522641181953 
		23 1.4810695043531394;
createNode animCurveTA -n "animCurveTA843";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.226511010665412 5 55.598837649680043 
		8 17.578216977008857 11 17.578216977008857 15 29.401460204593494 19 4.6613644930380378 
		23 14.341505413034501;
createNode animCurveTA -n "animCurveTA844";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.5139660854992858 5 30.973734338623142 
		8 37.36166010901858 11 37.36166010901858 15 0.064445386663593049 19 36.108857241373819 
		23 44.172784492399941;
createNode animCurveTA -n "animCurveTA845";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 68.213989601412422 5 82.208920420259716 
		8 -48.871336699981519 11 -48.871336699981519 15 7.5697157981896019 19 2.913287519114713 
		23 63.810826203087203;
createNode animCurveTL -n "animCurveTL320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.98071836797454492 5 1.2122605624741991 
		8 0.3738440275907785 11 -0.32570369773933783 15 -0.93999433325320791 19 -0.99606183101944024 
		23 -1.8068573853041325;
createNode animCurveTL -n "animCurveTL321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.6432964864655397 5 1.7972635077597787 
		8 2.4282273746417049 11 2.9984901809003617 15 3.7736279267038597 19 3.742451076804735 
		23 3.1644413576129944;
createNode animCurveTL -n "animCurveTL322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.097994651149805143 5 0.33883709290778696 
		8 1.6282819817488861 11 1.7851215730144698 15 2.531303790939277 19 2.1822776699718696 
		23 1.5030626595891841;
createNode animCurveTA -n "animCurveTA846";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 5.4739599453216465 5 -6.8408848116811125 
		8 -178.71153037370181 11 -178.71153037370181 15 -166.81562693844464 19 -166.81562693844464 
		23 -2.1807744810933176;
createNode animCurveTA -n "animCurveTA847";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -8.5874521608419823 5 -30.714124774991525 
		8 -65.402991895939863 11 -65.402991895939863 15 -64.640282392072066 19 -64.640282392072066 
		23 -33.611906574651975;
createNode animCurveTA -n "animCurveTA848";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -74.754744621954103 5 -52.637498007569562 
		8 97.890271845644079 11 97.890271845644079 15 165.05975398489667 19 165.05975398489667 
		23 -58.701760039742901;
createNode animCurveTL -n "animCurveTL323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.10167917362943303 5 0.31054502397108613 
		8 0.31054502397108613 11 0.31054502397108613 15 0.31054502397108613 19 0.31054502397108613 
		23 0.31054502397108613;
createNode animCurveTL -n "animCurveTL324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.40762644910266188 5 -0.55640530640609931 
		8 -0.55640530640609931 11 -0.55640530640609931 15 -0.55640530640609931 19 
		-0.55640530640609931 23 -0.55640530640609931;
createNode animCurveTL -n "animCurveTL325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.93129112588482243 5 -0.57914122395678103 
		8 -0.57914122395678103 11 -0.57914122395678103 15 -0.57914122395678103 19 
		-0.57914122395678103 23 -0.57914122395678103;
createNode animCurveTL -n "animCurveTL326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 -0.17523930523423681 8 -0.0081422950894450806 
		11 -0.063331173333856433 15 -0.063331173333856433 19 -0.37736680843384973 
		23 -0.37736680843384973;
createNode animCurveTL -n "animCurveTL327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 -0.00072435787012014696 8 
		-0.69388626071362391 11 -0.69960805773293522 15 -0.69960805773293522 19 -0.54343311259648019 
		23 -0.54343311259648019;
createNode animCurveTL -n "animCurveTL328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1 5 -0.80201435285893019 8 -0.75622028871403923 
		11 -0.66762598980258558 15 -0.66762598980258558 19 -0.97043124551903082 23 
		-0.97043124551903082;
createNode animCurveTA -n "animCurveTA849";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.061808866237340665 5 -0.061808866237337522 
		8 -0.061808866237337522 11 -0.061808866237337522 15 -0.061808866237337522 
		19 -0.061808866237337522 23 -0.061808866237337522;
createNode animCurveTA -n "animCurveTA850";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -59.058178941076754 5 -59.058178941076754 
		8 -59.058178941076754 11 -59.058178941076754 15 -59.058178941076754 19 -59.058178941076754 
		23 -59.058178941076754;
createNode animCurveTA -n "animCurveTA851";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.57914742975785 5 16.579147429757843 
		8 16.579147429757843 11 16.579147429757843 15 16.579147429757843 19 16.579147429757843 
		23 16.579147429757843;
createNode animCurveTA -n "animCurveTA852";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.253734489678925 5 12.253734489678925 
		8 12.253734489678925 11 12.253734489678925 15 12.253734489678925 19 12.253734489678925 
		23 12.253734489678925;
createNode animCurveTA -n "animCurveTA853";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -65.746751280844975 5 -65.746751280844961 
		8 -65.746751280844961 11 -65.746751280844961 15 -65.746751280844961 19 -65.746751280844961 
		23 -65.746751280844961;
createNode animCurveTA -n "animCurveTA854";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA855";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.711328223519061 5 15.711328223519057 
		8 15.711328223519057 11 15.711328223519057 15 15.711328223519057 19 15.711328223519057 
		23 15.711328223519057;
createNode animCurveTA -n "animCurveTA856";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.5572674112203657 5 8.5572674112203622 
		8 8.5572674112203622 11 8.5572674112203622 15 8.5572674112203622 19 8.5572674112203622 
		23 8.5572674112203622;
createNode animCurveTA -n "animCurveTA857";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA858";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA859";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA860";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA861";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA862";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA863";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.2533422302317216 5 8.2533422302317216 
		8 8.2533422302317216 11 8.2533422302317216 15 8.2533422302317216 19 8.2533422302317216 
		23 8.2533422302317216;
createNode animCurveTA -n "animCurveTA864";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 23.263402056531085 5 23.263402056531085 
		8 23.263402056531085 11 23.263402056531085 15 23.263402056531085 19 23.263402056531085 
		23 23.263402056531085;
createNode animCurveTA -n "animCurveTA865";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 20.166277752815617 5 20.166277752815617 
		8 20.166277752815617 11 20.166277752815617 15 20.166277752815617 19 20.166277752815617 
		23 20.166277752815617;
createNode animCurveTA -n "animCurveTA866";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA867";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA868";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 33.429092416277157 5 33.429092416277157 
		8 33.429092416277157 11 33.429092416277157 15 33.429092416277157 19 33.429092416277157 
		23 33.429092416277157;
createNode animCurveTA -n "animCurveTA869";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA870";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA871";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA872";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA873";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA874";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 23 13.994403295754109;
createNode animCurveTA -n "animCurveTA875";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA876";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
createNode animCurveTA -n "animCurveTA877";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 23 13.994403295754109;
createNode animCurveTA -n "animCurveTA878";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA879";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA880";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 17.254116939558369 5 17.254116939558369 
		8 17.254116939558369 11 17.254116939558369 15 17.254116939558369 19 17.254116939558369 
		23 17.254116939558369;
createNode animCurveTA -n "animCurveTA881";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA882";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA883";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA884";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.65073001024951671 5 -7.8430056866173823 
		8 -7.8430056866173823 11 -7.8430056866173823 15 0.30472023265933834 19 25.890727135803381 
		23 0;
createNode animCurveTA -n "animCurveTA885";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 4.2368721935960938 5 2.4212113907903019 
		8 2.4212113907903019 11 2.4212113907903019 15 14.036813544292096 19 1.1313888543542436 
		23 0;
createNode animCurveTA -n "animCurveTA886";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.7398866450636881 5 14.868855041301886 
		8 14.868855041301886 11 14.868855041301886 15 28.799747256025494 19 16.15457756926455 
		23 10.842908218073994;
createNode animCurveTA -n "animCurveTA887";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 -7.1097278539792699 8 -7.1097278539792699 
		11 -7.1097278539792699 15 -7.1097278539792699 19 -7.1097278539792699 23 0;
createNode animCurveTA -n "animCurveTA888";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA889";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA890";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -4.8714700432790465 5 6.2272449612176421 
		8 7.3663639372530634 11 5.8315373789181599 15 5.8315373789181599 19 23.846512789232317 
		23 0;
createNode animCurveTA -n "animCurveTA891";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -11.783606204137087 5 16.084189774853822 
		8 7.5697738916433828 11 5.3829029886559372 15 5.3829029886559372 19 42.637998316794274 
		23 0;
createNode animCurveTA -n "animCurveTA892";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 7.5423825101935931 5 11.614998532466354 
		8 -3.5020434651152947 11 21.978188033309632 15 21.978188033309632 19 17.099736619293381 
		23 21.122873819731893;
createNode animCurveTA -n "animCurveTA893";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.8903601258661935 5 1.8903601258661931 
		8 1.8903601258661931 11 1.8903601258661931 15 1.8903601258661931 19 1.8903601258661931 
		23 0;
createNode animCurveTA -n "animCurveTA894";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.5597289571479038 5 -2.5597289571479034 
		8 -2.5597289571479034 11 -2.5597289571479034 15 -2.5597289571479034 19 -2.5597289571479034 
		23 0;
createNode animCurveTA -n "animCurveTA895";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.0168110874036049 5 2.016811087403604 
		8 2.016811087403604 11 2.016811087403604 15 2.016811087403604 19 2.016811087403604 
		23 0;
createNode animCurveTA -n "animCurveTA896";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA897";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA898";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.080064458283051 5 27.080064458283051 
		8 27.080064458283051 11 27.080064458283051 15 27.080064458283051 19 27.080064458283051 
		23 27.080064458283051;
createNode animCurveTA -n "animCurveTA899";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 10.423754966968488 5 10.423754966968488 
		8 10.423754966968488 11 10.423754966968488 15 10.423754966968488 19 10.423754966968488 
		23 10.423754966968488;
createNode animCurveTA -n "animCurveTA900";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.7228482558439 5 27.722848255843903 
		8 27.722848255843903 11 27.722848255843903 15 27.722848255843903 19 27.722848255843903 
		23 27.722848255843903;
createNode animCurveTA -n "animCurveTA901";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 21.576484776388224 5 21.576484776388227 
		8 21.576484776388227 11 21.576484776388227 15 21.576484776388227 19 21.576484776388227 
		23 21.576484776388227;
createNode animCurveTA -n "animCurveTA902";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA903";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 11 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA904";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.911632519594587 5 27.911632519594587 
		8 27.911632519594587 11 27.911632519594587 15 27.911632519594587 19 27.911632519594587 
		23 27.911632519594587;
createNode clipLibrary -n "clipLibrary3";
	setAttr -s 162 ".cel[0].cev";
createNode clipLibrary -n "clipLibrary4";
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
	setAttr -s 3 ".sol";
connectAttr "hom_get_into_car_high.st" "clipLibrary3.st[0]";
connectAttr "hom_get_into_car_high.du" "clipLibrary3.du[0]";
connectAttr "animCurveTL288.a" "clipLibrary3.cel[0].cev[0].cevr";
connectAttr "animCurveTL289.a" "clipLibrary3.cel[0].cev[1].cevr";
connectAttr "animCurveTL290.a" "clipLibrary3.cel[0].cev[2].cevr";
connectAttr "animCurveTL291.a" "clipLibrary3.cel[0].cev[3].cevr";
connectAttr "animCurveTL292.a" "clipLibrary3.cel[0].cev[4].cevr";
connectAttr "animCurveTA792.a" "clipLibrary3.cel[0].cev[5].cevr";
connectAttr "animCurveTU9.a" "clipLibrary3.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary3.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary3.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary3.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary3.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary3.cel[0].cev[11].cevr";
connectAttr "animCurveTU15.a" "clipLibrary3.cel[0].cev[12].cevr";
connectAttr "animCurveTU16.a" "clipLibrary3.cel[0].cev[13].cevr";
connectAttr "animCurveTA793.a" "clipLibrary3.cel[0].cev[14].cevr";
connectAttr "animCurveTA794.a" "clipLibrary3.cel[0].cev[15].cevr";
connectAttr "animCurveTA795.a" "clipLibrary3.cel[0].cev[16].cevr";
connectAttr "animCurveTL293.a" "clipLibrary3.cel[0].cev[17].cevr";
connectAttr "animCurveTL294.a" "clipLibrary3.cel[0].cev[18].cevr";
connectAttr "animCurveTL295.a" "clipLibrary3.cel[0].cev[19].cevr";
connectAttr "animCurveTL296.a" "clipLibrary3.cel[0].cev[20].cevr";
connectAttr "animCurveTL297.a" "clipLibrary3.cel[0].cev[21].cevr";
connectAttr "animCurveTL298.a" "clipLibrary3.cel[0].cev[22].cevr";
connectAttr "animCurveTA796.a" "clipLibrary3.cel[0].cev[23].cevr";
connectAttr "animCurveTA797.a" "clipLibrary3.cel[0].cev[24].cevr";
connectAttr "animCurveTA798.a" "clipLibrary3.cel[0].cev[25].cevr";
connectAttr "animCurveTL299.a" "clipLibrary3.cel[0].cev[26].cevr";
connectAttr "animCurveTL300.a" "clipLibrary3.cel[0].cev[27].cevr";
connectAttr "animCurveTL301.a" "clipLibrary3.cel[0].cev[28].cevr";
connectAttr "animCurveTA799.a" "clipLibrary3.cel[0].cev[29].cevr";
connectAttr "animCurveTA800.a" "clipLibrary3.cel[0].cev[30].cevr";
connectAttr "animCurveTA801.a" "clipLibrary3.cel[0].cev[31].cevr";
connectAttr "animCurveTA802.a" "clipLibrary3.cel[0].cev[32].cevr";
connectAttr "animCurveTA803.a" "clipLibrary3.cel[0].cev[33].cevr";
connectAttr "animCurveTA804.a" "clipLibrary3.cel[0].cev[34].cevr";
connectAttr "animCurveTA805.a" "clipLibrary3.cel[0].cev[35].cevr";
connectAttr "animCurveTA806.a" "clipLibrary3.cel[0].cev[36].cevr";
connectAttr "animCurveTA807.a" "clipLibrary3.cel[0].cev[37].cevr";
connectAttr "animCurveTL302.a" "clipLibrary3.cel[0].cev[38].cevr";
connectAttr "animCurveTL303.a" "clipLibrary3.cel[0].cev[39].cevr";
connectAttr "animCurveTL304.a" "clipLibrary3.cel[0].cev[40].cevr";
connectAttr "animCurveTL305.a" "clipLibrary3.cel[0].cev[41].cevr";
connectAttr "animCurveTL306.a" "clipLibrary3.cel[0].cev[42].cevr";
connectAttr "animCurveTL307.a" "clipLibrary3.cel[0].cev[43].cevr";
connectAttr "animCurveTL308.a" "clipLibrary3.cel[0].cev[44].cevr";
connectAttr "animCurveTL309.a" "clipLibrary3.cel[0].cev[45].cevr";
connectAttr "animCurveTL310.a" "clipLibrary3.cel[0].cev[46].cevr";
connectAttr "animCurveTA808.a" "clipLibrary3.cel[0].cev[47].cevr";
connectAttr "animCurveTA809.a" "clipLibrary3.cel[0].cev[48].cevr";
connectAttr "animCurveTA810.a" "clipLibrary3.cel[0].cev[49].cevr";
connectAttr "animCurveTA811.a" "clipLibrary3.cel[0].cev[50].cevr";
connectAttr "animCurveTA812.a" "clipLibrary3.cel[0].cev[51].cevr";
connectAttr "animCurveTA813.a" "clipLibrary3.cel[0].cev[52].cevr";
connectAttr "animCurveTA814.a" "clipLibrary3.cel[0].cev[53].cevr";
connectAttr "animCurveTA815.a" "clipLibrary3.cel[0].cev[54].cevr";
connectAttr "animCurveTA816.a" "clipLibrary3.cel[0].cev[55].cevr";
connectAttr "animCurveTA817.a" "clipLibrary3.cel[0].cev[56].cevr";
connectAttr "animCurveTA818.a" "clipLibrary3.cel[0].cev[57].cevr";
connectAttr "animCurveTA819.a" "clipLibrary3.cel[0].cev[58].cevr";
connectAttr "animCurveTA820.a" "clipLibrary3.cel[0].cev[59].cevr";
connectAttr "animCurveTA821.a" "clipLibrary3.cel[0].cev[60].cevr";
connectAttr "animCurveTA822.a" "clipLibrary3.cel[0].cev[61].cevr";
connectAttr "animCurveTA823.a" "clipLibrary3.cel[0].cev[62].cevr";
connectAttr "animCurveTA824.a" "clipLibrary3.cel[0].cev[63].cevr";
connectAttr "animCurveTA825.a" "clipLibrary3.cel[0].cev[64].cevr";
connectAttr "animCurveTA826.a" "clipLibrary3.cel[0].cev[65].cevr";
connectAttr "animCurveTA827.a" "clipLibrary3.cel[0].cev[66].cevr";
connectAttr "animCurveTA828.a" "clipLibrary3.cel[0].cev[67].cevr";
connectAttr "animCurveTA829.a" "clipLibrary3.cel[0].cev[68].cevr";
connectAttr "animCurveTA830.a" "clipLibrary3.cel[0].cev[69].cevr";
connectAttr "animCurveTA831.a" "clipLibrary3.cel[0].cev[70].cevr";
connectAttr "animCurveTA832.a" "clipLibrary3.cel[0].cev[71].cevr";
connectAttr "animCurveTA833.a" "clipLibrary3.cel[0].cev[72].cevr";
connectAttr "animCurveTA834.a" "clipLibrary3.cel[0].cev[73].cevr";
connectAttr "animCurveTA835.a" "clipLibrary3.cel[0].cev[74].cevr";
connectAttr "animCurveTA836.a" "clipLibrary3.cel[0].cev[75].cevr";
connectAttr "animCurveTL311.a" "clipLibrary3.cel[0].cev[76].cevr";
connectAttr "animCurveTL312.a" "clipLibrary3.cel[0].cev[77].cevr";
connectAttr "animCurveTL313.a" "clipLibrary3.cel[0].cev[78].cevr";
connectAttr "animCurveTA837.a" "clipLibrary3.cel[0].cev[79].cevr";
connectAttr "animCurveTA838.a" "clipLibrary3.cel[0].cev[80].cevr";
connectAttr "animCurveTA839.a" "clipLibrary3.cel[0].cev[81].cevr";
connectAttr "animCurveTL314.a" "clipLibrary3.cel[0].cev[82].cevr";
connectAttr "animCurveTL315.a" "clipLibrary3.cel[0].cev[83].cevr";
connectAttr "animCurveTL316.a" "clipLibrary3.cel[0].cev[84].cevr";
connectAttr "animCurveTA840.a" "clipLibrary3.cel[0].cev[85].cevr";
connectAttr "animCurveTA841.a" "clipLibrary3.cel[0].cev[86].cevr";
connectAttr "animCurveTA842.a" "clipLibrary3.cel[0].cev[87].cevr";
connectAttr "animCurveTL317.a" "clipLibrary3.cel[0].cev[88].cevr";
connectAttr "animCurveTL318.a" "clipLibrary3.cel[0].cev[89].cevr";
connectAttr "animCurveTL319.a" "clipLibrary3.cel[0].cev[90].cevr";
connectAttr "animCurveTA843.a" "clipLibrary3.cel[0].cev[91].cevr";
connectAttr "animCurveTA844.a" "clipLibrary3.cel[0].cev[92].cevr";
connectAttr "animCurveTA845.a" "clipLibrary3.cel[0].cev[93].cevr";
connectAttr "animCurveTL320.a" "clipLibrary3.cel[0].cev[94].cevr";
connectAttr "animCurveTL321.a" "clipLibrary3.cel[0].cev[95].cevr";
connectAttr "animCurveTL322.a" "clipLibrary3.cel[0].cev[96].cevr";
connectAttr "animCurveTA846.a" "clipLibrary3.cel[0].cev[97].cevr";
connectAttr "animCurveTA847.a" "clipLibrary3.cel[0].cev[98].cevr";
connectAttr "animCurveTA848.a" "clipLibrary3.cel[0].cev[99].cevr";
connectAttr "animCurveTL323.a" "clipLibrary3.cel[0].cev[100].cevr";
connectAttr "animCurveTL324.a" "clipLibrary3.cel[0].cev[101].cevr";
connectAttr "animCurveTL325.a" "clipLibrary3.cel[0].cev[102].cevr";
connectAttr "animCurveTL326.a" "clipLibrary3.cel[0].cev[103].cevr";
connectAttr "animCurveTL327.a" "clipLibrary3.cel[0].cev[104].cevr";
connectAttr "animCurveTL328.a" "clipLibrary3.cel[0].cev[105].cevr";
connectAttr "animCurveTA849.a" "clipLibrary3.cel[0].cev[106].cevr";
connectAttr "animCurveTA850.a" "clipLibrary3.cel[0].cev[107].cevr";
connectAttr "animCurveTA851.a" "clipLibrary3.cel[0].cev[108].cevr";
connectAttr "animCurveTA852.a" "clipLibrary3.cel[0].cev[109].cevr";
connectAttr "animCurveTA853.a" "clipLibrary3.cel[0].cev[110].cevr";
connectAttr "animCurveTA854.a" "clipLibrary3.cel[0].cev[111].cevr";
connectAttr "animCurveTA855.a" "clipLibrary3.cel[0].cev[112].cevr";
connectAttr "animCurveTA856.a" "clipLibrary3.cel[0].cev[113].cevr";
connectAttr "animCurveTA857.a" "clipLibrary3.cel[0].cev[114].cevr";
connectAttr "animCurveTA858.a" "clipLibrary3.cel[0].cev[115].cevr";
connectAttr "animCurveTA859.a" "clipLibrary3.cel[0].cev[116].cevr";
connectAttr "animCurveTA860.a" "clipLibrary3.cel[0].cev[117].cevr";
connectAttr "animCurveTA861.a" "clipLibrary3.cel[0].cev[118].cevr";
connectAttr "animCurveTA862.a" "clipLibrary3.cel[0].cev[119].cevr";
connectAttr "animCurveTA863.a" "clipLibrary3.cel[0].cev[120].cevr";
connectAttr "animCurveTA864.a" "clipLibrary3.cel[0].cev[121].cevr";
connectAttr "animCurveTA865.a" "clipLibrary3.cel[0].cev[122].cevr";
connectAttr "animCurveTA866.a" "clipLibrary3.cel[0].cev[123].cevr";
connectAttr "animCurveTA867.a" "clipLibrary3.cel[0].cev[124].cevr";
connectAttr "animCurveTA868.a" "clipLibrary3.cel[0].cev[125].cevr";
connectAttr "animCurveTA869.a" "clipLibrary3.cel[0].cev[126].cevr";
connectAttr "animCurveTA870.a" "clipLibrary3.cel[0].cev[127].cevr";
connectAttr "animCurveTA871.a" "clipLibrary3.cel[0].cev[128].cevr";
connectAttr "animCurveTA872.a" "clipLibrary3.cel[0].cev[129].cevr";
connectAttr "animCurveTA873.a" "clipLibrary3.cel[0].cev[130].cevr";
connectAttr "animCurveTA874.a" "clipLibrary3.cel[0].cev[131].cevr";
connectAttr "animCurveTA875.a" "clipLibrary3.cel[0].cev[132].cevr";
connectAttr "animCurveTA876.a" "clipLibrary3.cel[0].cev[133].cevr";
connectAttr "animCurveTA877.a" "clipLibrary3.cel[0].cev[134].cevr";
connectAttr "animCurveTA878.a" "clipLibrary3.cel[0].cev[135].cevr";
connectAttr "animCurveTA879.a" "clipLibrary3.cel[0].cev[136].cevr";
connectAttr "animCurveTA880.a" "clipLibrary3.cel[0].cev[137].cevr";
connectAttr "animCurveTA881.a" "clipLibrary3.cel[0].cev[138].cevr";
connectAttr "animCurveTA882.a" "clipLibrary3.cel[0].cev[139].cevr";
connectAttr "animCurveTA883.a" "clipLibrary3.cel[0].cev[140].cevr";
connectAttr "animCurveTA884.a" "clipLibrary3.cel[0].cev[141].cevr";
connectAttr "animCurveTA885.a" "clipLibrary3.cel[0].cev[142].cevr";
connectAttr "animCurveTA886.a" "clipLibrary3.cel[0].cev[143].cevr";
connectAttr "animCurveTA887.a" "clipLibrary3.cel[0].cev[144].cevr";
connectAttr "animCurveTA888.a" "clipLibrary3.cel[0].cev[145].cevr";
connectAttr "animCurveTA889.a" "clipLibrary3.cel[0].cev[146].cevr";
connectAttr "animCurveTA890.a" "clipLibrary3.cel[0].cev[147].cevr";
connectAttr "animCurveTA891.a" "clipLibrary3.cel[0].cev[148].cevr";
connectAttr "animCurveTA892.a" "clipLibrary3.cel[0].cev[149].cevr";
connectAttr "animCurveTA893.a" "clipLibrary3.cel[0].cev[150].cevr";
connectAttr "animCurveTA894.a" "clipLibrary3.cel[0].cev[151].cevr";
connectAttr "animCurveTA895.a" "clipLibrary3.cel[0].cev[152].cevr";
connectAttr "animCurveTA896.a" "clipLibrary3.cel[0].cev[153].cevr";
connectAttr "animCurveTA897.a" "clipLibrary3.cel[0].cev[154].cevr";
connectAttr "animCurveTA898.a" "clipLibrary3.cel[0].cev[155].cevr";
connectAttr "animCurveTA899.a" "clipLibrary3.cel[0].cev[156].cevr";
connectAttr "animCurveTA900.a" "clipLibrary3.cel[0].cev[157].cevr";
connectAttr "animCurveTA901.a" "clipLibrary3.cel[0].cev[158].cevr";
connectAttr "animCurveTA902.a" "clipLibrary3.cel[0].cev[159].cevr";
connectAttr "animCurveTA903.a" "clipLibrary3.cel[0].cev[160].cevr";
connectAttr "animCurveTA904.a" "clipLibrary3.cel[0].cev[161].cevr";
connectAttr "hom_get_into_car_high.st" "clipLibrary4.st[0]";
connectAttr "hom_get_into_car_high.du" "clipLibrary4.du[0]";
connectAttr "animCurveTL288.a" "clipLibrary4.cel[0].cev[0].cevr";
connectAttr "animCurveTL289.a" "clipLibrary4.cel[0].cev[1].cevr";
connectAttr "animCurveTL290.a" "clipLibrary4.cel[0].cev[2].cevr";
connectAttr "animCurveTL291.a" "clipLibrary4.cel[0].cev[3].cevr";
connectAttr "animCurveTL292.a" "clipLibrary4.cel[0].cev[4].cevr";
connectAttr "animCurveTA792.a" "clipLibrary4.cel[0].cev[5].cevr";
connectAttr "animCurveTU9.a" "clipLibrary4.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary4.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary4.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary4.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary4.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary4.cel[0].cev[11].cevr";
connectAttr "animCurveTU15.a" "clipLibrary4.cel[0].cev[12].cevr";
connectAttr "animCurveTU16.a" "clipLibrary4.cel[0].cev[13].cevr";
connectAttr "animCurveTA793.a" "clipLibrary4.cel[0].cev[14].cevr";
connectAttr "animCurveTA794.a" "clipLibrary4.cel[0].cev[15].cevr";
connectAttr "animCurveTA795.a" "clipLibrary4.cel[0].cev[16].cevr";
connectAttr "animCurveTL293.a" "clipLibrary4.cel[0].cev[17].cevr";
connectAttr "animCurveTL294.a" "clipLibrary4.cel[0].cev[18].cevr";
connectAttr "animCurveTL295.a" "clipLibrary4.cel[0].cev[19].cevr";
connectAttr "animCurveTL296.a" "clipLibrary4.cel[0].cev[20].cevr";
connectAttr "animCurveTL297.a" "clipLibrary4.cel[0].cev[21].cevr";
connectAttr "animCurveTL298.a" "clipLibrary4.cel[0].cev[22].cevr";
connectAttr "animCurveTA796.a" "clipLibrary4.cel[0].cev[23].cevr";
connectAttr "animCurveTA797.a" "clipLibrary4.cel[0].cev[24].cevr";
connectAttr "animCurveTA798.a" "clipLibrary4.cel[0].cev[25].cevr";
connectAttr "animCurveTL299.a" "clipLibrary4.cel[0].cev[26].cevr";
connectAttr "animCurveTL300.a" "clipLibrary4.cel[0].cev[27].cevr";
connectAttr "animCurveTL301.a" "clipLibrary4.cel[0].cev[28].cevr";
connectAttr "animCurveTA799.a" "clipLibrary4.cel[0].cev[29].cevr";
connectAttr "animCurveTA800.a" "clipLibrary4.cel[0].cev[30].cevr";
connectAttr "animCurveTA801.a" "clipLibrary4.cel[0].cev[31].cevr";
connectAttr "animCurveTA802.a" "clipLibrary4.cel[0].cev[32].cevr";
connectAttr "animCurveTA803.a" "clipLibrary4.cel[0].cev[33].cevr";
connectAttr "animCurveTA804.a" "clipLibrary4.cel[0].cev[34].cevr";
connectAttr "animCurveTA805.a" "clipLibrary4.cel[0].cev[35].cevr";
connectAttr "animCurveTA806.a" "clipLibrary4.cel[0].cev[36].cevr";
connectAttr "animCurveTA807.a" "clipLibrary4.cel[0].cev[37].cevr";
connectAttr "animCurveTL302.a" "clipLibrary4.cel[0].cev[38].cevr";
connectAttr "animCurveTL303.a" "clipLibrary4.cel[0].cev[39].cevr";
connectAttr "animCurveTL304.a" "clipLibrary4.cel[0].cev[40].cevr";
connectAttr "animCurveTL305.a" "clipLibrary4.cel[0].cev[41].cevr";
connectAttr "animCurveTL306.a" "clipLibrary4.cel[0].cev[42].cevr";
connectAttr "animCurveTL307.a" "clipLibrary4.cel[0].cev[43].cevr";
connectAttr "animCurveTL308.a" "clipLibrary4.cel[0].cev[44].cevr";
connectAttr "animCurveTL309.a" "clipLibrary4.cel[0].cev[45].cevr";
connectAttr "animCurveTL310.a" "clipLibrary4.cel[0].cev[46].cevr";
connectAttr "animCurveTA808.a" "clipLibrary4.cel[0].cev[47].cevr";
connectAttr "animCurveTA809.a" "clipLibrary4.cel[0].cev[48].cevr";
connectAttr "animCurveTA810.a" "clipLibrary4.cel[0].cev[49].cevr";
connectAttr "animCurveTA811.a" "clipLibrary4.cel[0].cev[50].cevr";
connectAttr "animCurveTA812.a" "clipLibrary4.cel[0].cev[51].cevr";
connectAttr "animCurveTA813.a" "clipLibrary4.cel[0].cev[52].cevr";
connectAttr "animCurveTA814.a" "clipLibrary4.cel[0].cev[53].cevr";
connectAttr "animCurveTA815.a" "clipLibrary4.cel[0].cev[54].cevr";
connectAttr "animCurveTA816.a" "clipLibrary4.cel[0].cev[55].cevr";
connectAttr "animCurveTA817.a" "clipLibrary4.cel[0].cev[56].cevr";
connectAttr "animCurveTA818.a" "clipLibrary4.cel[0].cev[57].cevr";
connectAttr "animCurveTA819.a" "clipLibrary4.cel[0].cev[58].cevr";
connectAttr "animCurveTA820.a" "clipLibrary4.cel[0].cev[59].cevr";
connectAttr "animCurveTA821.a" "clipLibrary4.cel[0].cev[60].cevr";
connectAttr "animCurveTA822.a" "clipLibrary4.cel[0].cev[61].cevr";
connectAttr "animCurveTA823.a" "clipLibrary4.cel[0].cev[62].cevr";
connectAttr "animCurveTA824.a" "clipLibrary4.cel[0].cev[63].cevr";
connectAttr "animCurveTA825.a" "clipLibrary4.cel[0].cev[64].cevr";
connectAttr "animCurveTA826.a" "clipLibrary4.cel[0].cev[65].cevr";
connectAttr "animCurveTA827.a" "clipLibrary4.cel[0].cev[66].cevr";
connectAttr "animCurveTA828.a" "clipLibrary4.cel[0].cev[67].cevr";
connectAttr "animCurveTA829.a" "clipLibrary4.cel[0].cev[68].cevr";
connectAttr "animCurveTA830.a" "clipLibrary4.cel[0].cev[69].cevr";
connectAttr "animCurveTA831.a" "clipLibrary4.cel[0].cev[70].cevr";
connectAttr "animCurveTA832.a" "clipLibrary4.cel[0].cev[71].cevr";
connectAttr "animCurveTA833.a" "clipLibrary4.cel[0].cev[72].cevr";
connectAttr "animCurveTA834.a" "clipLibrary4.cel[0].cev[73].cevr";
connectAttr "animCurveTA835.a" "clipLibrary4.cel[0].cev[74].cevr";
connectAttr "animCurveTA836.a" "clipLibrary4.cel[0].cev[75].cevr";
connectAttr "animCurveTL311.a" "clipLibrary4.cel[0].cev[76].cevr";
connectAttr "animCurveTL312.a" "clipLibrary4.cel[0].cev[77].cevr";
connectAttr "animCurveTL313.a" "clipLibrary4.cel[0].cev[78].cevr";
connectAttr "animCurveTA837.a" "clipLibrary4.cel[0].cev[79].cevr";
connectAttr "animCurveTA838.a" "clipLibrary4.cel[0].cev[80].cevr";
connectAttr "animCurveTA839.a" "clipLibrary4.cel[0].cev[81].cevr";
connectAttr "animCurveTL314.a" "clipLibrary4.cel[0].cev[82].cevr";
connectAttr "animCurveTL315.a" "clipLibrary4.cel[0].cev[83].cevr";
connectAttr "animCurveTL316.a" "clipLibrary4.cel[0].cev[84].cevr";
connectAttr "animCurveTA840.a" "clipLibrary4.cel[0].cev[85].cevr";
connectAttr "animCurveTA841.a" "clipLibrary4.cel[0].cev[86].cevr";
connectAttr "animCurveTA842.a" "clipLibrary4.cel[0].cev[87].cevr";
connectAttr "animCurveTL317.a" "clipLibrary4.cel[0].cev[88].cevr";
connectAttr "animCurveTL318.a" "clipLibrary4.cel[0].cev[89].cevr";
connectAttr "animCurveTL319.a" "clipLibrary4.cel[0].cev[90].cevr";
connectAttr "animCurveTA843.a" "clipLibrary4.cel[0].cev[91].cevr";
connectAttr "animCurveTA844.a" "clipLibrary4.cel[0].cev[92].cevr";
connectAttr "animCurveTA845.a" "clipLibrary4.cel[0].cev[93].cevr";
connectAttr "animCurveTL320.a" "clipLibrary4.cel[0].cev[94].cevr";
connectAttr "animCurveTL321.a" "clipLibrary4.cel[0].cev[95].cevr";
connectAttr "animCurveTL322.a" "clipLibrary4.cel[0].cev[96].cevr";
connectAttr "animCurveTA846.a" "clipLibrary4.cel[0].cev[97].cevr";
connectAttr "animCurveTA847.a" "clipLibrary4.cel[0].cev[98].cevr";
connectAttr "animCurveTA848.a" "clipLibrary4.cel[0].cev[99].cevr";
connectAttr "animCurveTL323.a" "clipLibrary4.cel[0].cev[100].cevr";
connectAttr "animCurveTL324.a" "clipLibrary4.cel[0].cev[101].cevr";
connectAttr "animCurveTL325.a" "clipLibrary4.cel[0].cev[102].cevr";
connectAttr "animCurveTL326.a" "clipLibrary4.cel[0].cev[103].cevr";
connectAttr "animCurveTL327.a" "clipLibrary4.cel[0].cev[104].cevr";
connectAttr "animCurveTL328.a" "clipLibrary4.cel[0].cev[105].cevr";
connectAttr "animCurveTA849.a" "clipLibrary4.cel[0].cev[106].cevr";
connectAttr "animCurveTA850.a" "clipLibrary4.cel[0].cev[107].cevr";
connectAttr "animCurveTA851.a" "clipLibrary4.cel[0].cev[108].cevr";
connectAttr "animCurveTA852.a" "clipLibrary4.cel[0].cev[109].cevr";
connectAttr "animCurveTA853.a" "clipLibrary4.cel[0].cev[110].cevr";
connectAttr "animCurveTA854.a" "clipLibrary4.cel[0].cev[111].cevr";
connectAttr "animCurveTA855.a" "clipLibrary4.cel[0].cev[112].cevr";
connectAttr "animCurveTA856.a" "clipLibrary4.cel[0].cev[113].cevr";
connectAttr "animCurveTA857.a" "clipLibrary4.cel[0].cev[114].cevr";
connectAttr "animCurveTA858.a" "clipLibrary4.cel[0].cev[115].cevr";
connectAttr "animCurveTA859.a" "clipLibrary4.cel[0].cev[116].cevr";
connectAttr "animCurveTA860.a" "clipLibrary4.cel[0].cev[117].cevr";
connectAttr "animCurveTA861.a" "clipLibrary4.cel[0].cev[118].cevr";
connectAttr "animCurveTA862.a" "clipLibrary4.cel[0].cev[119].cevr";
connectAttr "animCurveTA863.a" "clipLibrary4.cel[0].cev[120].cevr";
connectAttr "animCurveTA864.a" "clipLibrary4.cel[0].cev[121].cevr";
connectAttr "animCurveTA865.a" "clipLibrary4.cel[0].cev[122].cevr";
connectAttr "animCurveTA866.a" "clipLibrary4.cel[0].cev[123].cevr";
connectAttr "animCurveTA867.a" "clipLibrary4.cel[0].cev[124].cevr";
connectAttr "animCurveTA868.a" "clipLibrary4.cel[0].cev[125].cevr";
connectAttr "animCurveTA869.a" "clipLibrary4.cel[0].cev[126].cevr";
connectAttr "animCurveTA870.a" "clipLibrary4.cel[0].cev[127].cevr";
connectAttr "animCurveTA871.a" "clipLibrary4.cel[0].cev[128].cevr";
connectAttr "animCurveTA872.a" "clipLibrary4.cel[0].cev[129].cevr";
connectAttr "animCurveTA873.a" "clipLibrary4.cel[0].cev[130].cevr";
connectAttr "animCurveTA874.a" "clipLibrary4.cel[0].cev[131].cevr";
connectAttr "animCurveTA875.a" "clipLibrary4.cel[0].cev[132].cevr";
connectAttr "animCurveTA876.a" "clipLibrary4.cel[0].cev[133].cevr";
connectAttr "animCurveTA877.a" "clipLibrary4.cel[0].cev[134].cevr";
connectAttr "animCurveTA878.a" "clipLibrary4.cel[0].cev[135].cevr";
connectAttr "animCurveTA879.a" "clipLibrary4.cel[0].cev[136].cevr";
connectAttr "animCurveTA880.a" "clipLibrary4.cel[0].cev[137].cevr";
connectAttr "animCurveTA881.a" "clipLibrary4.cel[0].cev[138].cevr";
connectAttr "animCurveTA882.a" "clipLibrary4.cel[0].cev[139].cevr";
connectAttr "animCurveTA883.a" "clipLibrary4.cel[0].cev[140].cevr";
connectAttr "animCurveTA884.a" "clipLibrary4.cel[0].cev[141].cevr";
connectAttr "animCurveTA885.a" "clipLibrary4.cel[0].cev[142].cevr";
connectAttr "animCurveTA886.a" "clipLibrary4.cel[0].cev[143].cevr";
connectAttr "animCurveTA887.a" "clipLibrary4.cel[0].cev[144].cevr";
connectAttr "animCurveTA888.a" "clipLibrary4.cel[0].cev[145].cevr";
connectAttr "animCurveTA889.a" "clipLibrary4.cel[0].cev[146].cevr";
connectAttr "animCurveTA890.a" "clipLibrary4.cel[0].cev[147].cevr";
connectAttr "animCurveTA891.a" "clipLibrary4.cel[0].cev[148].cevr";
connectAttr "animCurveTA892.a" "clipLibrary4.cel[0].cev[149].cevr";
connectAttr "animCurveTA893.a" "clipLibrary4.cel[0].cev[150].cevr";
connectAttr "animCurveTA894.a" "clipLibrary4.cel[0].cev[151].cevr";
connectAttr "animCurveTA895.a" "clipLibrary4.cel[0].cev[152].cevr";
connectAttr "animCurveTA896.a" "clipLibrary4.cel[0].cev[153].cevr";
connectAttr "animCurveTA897.a" "clipLibrary4.cel[0].cev[154].cevr";
connectAttr "animCurveTA898.a" "clipLibrary4.cel[0].cev[155].cevr";
connectAttr "animCurveTA899.a" "clipLibrary4.cel[0].cev[156].cevr";
connectAttr "animCurveTA900.a" "clipLibrary4.cel[0].cev[157].cevr";
connectAttr "animCurveTA901.a" "clipLibrary4.cel[0].cev[158].cevr";
connectAttr "animCurveTA902.a" "clipLibrary4.cel[0].cev[159].cevr";
connectAttr "animCurveTA903.a" "clipLibrary4.cel[0].cev[160].cevr";
connectAttr "animCurveTA904.a" "clipLibrary4.cel[0].cev[161].cevr";
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
// End of hom-m_get_into_car_high.ma
