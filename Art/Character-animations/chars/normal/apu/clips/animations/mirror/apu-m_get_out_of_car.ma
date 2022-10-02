//Maya ASCII 4.0 scene
//Name: apu-m_get_out_of_car.ma
//Last modified: Tue, Jul 23, 2002 12:37:54 PM
requires maya "4.0";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dSimpleShader" "17.1";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "apu_get_out_of_car";
	setAttr ".ihi" 0;
	setAttr ".st" 15;
	setAttr ".du" 15;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  15 -1.0066066117144004 16 -0.98569501965594941 
		17 -0.92529418508235661 18 -0.83347298514418766 19 -0.71830029699200804 20 
		-0.55601444257850519 21 -0.35094981962212529 22 -0.15331941892207296 23 -0.013336231277553186 
		24 0.018616052692615157 25 -0.022159760280644644 26 -0.057346914971922874 
		27 -0.060752066332929414 28 -0.060140078126122758 29 -0.05813150834221615 
		30 -0.057346914971922874;
	setAttr -s 16 ".kit[15]"  1;
	setAttr -s 16 ".kot[0:15]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kix[15]"  0.15494515001773834;
	setAttr -s 16 ".kiy[15]"  -0.98792308568954468;
	setAttr -s 16 ".kox[0:15]"  0.024779144674539566 0.0081985527649521828 
		0.0043795253150165081 0.003220690181478858 0.0024027545005083084 0.0018147943774238229 
		0.0016555102774873376 0.0019746401812881231 0.003877394599840045 0.075340822339057922 
		0.0087758684530854225 0.017272023484110832 0.23215693235397339 0.24654574692249298 
		0.23215693235397339 0.39102265238761902;
	setAttr -s 16 ".koy[0:15]"  -0.99969297647476196 0.99996638298034668 
		0.99999040365219116 0.99999481439590454 0.99999713897705078 0.99999833106994629 
		0.99999862909317017 0.99999803304672241 0.9999924898147583 -0.99715781211853027 
		-0.9999614953994751 -0.9998508095741272 -0.97267836332321167 0.96913117170333862 
		0.97267836332321167 0.92038106918334961;
createNode animCurveTL -n "animCurveTL45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
createNode animCurveTL -n "animCurveTL46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  15 0.8220940684186907 16 0.82725843700289137 
		17 0.83586571797655906 18 0.83758717417129258 19 0.8220940684186907 20 0.7763853417948845 
		21 0.70938523135007459 22 0.64365294387696481 23 0.60174768616825847 24 0.60610309160814613 
		25 0.63944924202228959 26 0.66479001686559913 27 0.6697509370174477 28 0.66901309039433288 
		29 0.66616370700685112 30 0.66479001686559913;
	setAttr -s 16 ".kit[15]"  1;
	setAttr -s 16 ".kot[0:15]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kix[15]"  0.14656710624694824;
	setAttr -s 16 ".kiy[15]"  0.98920071125030518;
	setAttr -s 16 ".kox[0:15]"  0.12802734971046448 0.048352006822824478 
		0.064410805702209473 0.048352006822824478 0.010892273858189583 0.0059148422442376614 
		0.0050225737504661083 0.0061935069970786572 0.017751377075910568 0.017679972574114799 
		0.011358981020748615 0.021995646879076958 0.15593189001083374 0.18271586298942566 
		0.15593189001083374 0.23581226170063019;
	setAttr -s 16 ".koy[0:15]"  0.99177062511444092 0.99883037805557251 
		0.99792349338531494 -0.99883037805557251 -0.99994069337844849 -0.99998253583908081 
		-0.99998736381530762 -0.99998080730438232 -0.99984240531921387 0.99984371662139893 
		0.99993550777435303 0.99975806474685669 0.98776781558990479 -0.98316574096679688 
		-0.98776781558990479 -0.97179865837097168;
createNode animCurveTA -n "animCurveTA114";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  15 0 26 93.055840570244243 30 93.055840570244243;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  0.22021941840648651 1;
	setAttr -s 3 ".kiy[1:2]"  0.97545033693313599 0;
	setAttr -s 3 ".kox[0:2]"  0.22021938860416412 1 1;
	setAttr -s 3 ".koy[0:2]"  0.97545033693313599 0 0;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 1 30 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 1 30 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -1.5631069085862914 19 -1.02056045291905 
		23 -0.18521171855222782 26 -0.082572222922083327 30 -0.082572222922083327;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  0.0049150348640978336 0.0019353153184056282 
		0.0024875856470316648 0.022727416828274727 1;
	setAttr -s 5 ".koy[0:4]"  0.9999879002571106 0.99999815225601196 
		0.99999690055847168 0.99974167346954346 0;
createNode animCurveTL -n "animCurveTL51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0.84361014269386181 19 0.68587647571867949 
		23 0.53581928681121527 26 0.17277252732626863 30 0.17277252732626863;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  0.017567526549100876 0.0086635667830705643 
		0.0045474395155906677 0.0064269546419382095 1;
	setAttr -s 5 ".koy[0:4]"  -0.99984568357467651 -0.9999624490737915 
		-0.99998968839645386 -0.99997931718826294 0;
createNode animCurveTL -n "animCurveTL52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 1.7600134902800444 19 1.7064908425666909 
		23 1.0349862254504378 26 1.1476477784383041 30 1.1476477784383041;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  0.049761418253183365 0.0036779977381229401 
		0.004175256472080946 0.020706558600068092 1;
	setAttr -s 5 ".koy[0:4]"  -0.99876111745834351 -0.99999326467514038 
		-0.99999129772186279 0.99978560209274292 0;
createNode animCurveTA -n "animCurveTA118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0 19 -3.0723822000984811 23 
		30.743420846225778 26 30.743420846225874 30 30.743420846225874;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  0.98037523031234741 0.44504895806312561 
		0.3676583468914032 1 1;
	setAttr -s 5 ".koy[0:4]"  -0.19714066386222839 0.89550626277923584 
		0.92996090650558472 0 0;
createNode animCurveTA -n "animCurveTA119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -14.260733409455984 19 18.767616714195086 
		23 84.680301767248679 26 84.680301767248736 30 84.680301767248736;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  0.41985136270523071 0.15261507034301758 
		0.19878147542476654 1 1;
	setAttr -s 5 ".koy[0:4]"  0.90759289264678955 0.98828572034835815 
		0.98004382848739624 0 0;
createNode animCurveTA -n "animCurveTA120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0 19 -38.983315436725491 23 
		-6.9674255821939708 26 35.462321279948334 30 35.462321279948334;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  0.36490741372108459 0.90986144542694092 
		0.1767534464597702 0.30052110552787781 1;
	setAttr -s 5 ".koy[0:4]"  -0.93104380369186401 -0.41491225361824036 
		0.98425513505935669 0.95377516746520996 0;
createNode animCurveTL -n "animCurveTL53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -1.0836749058650765 19 -0.41981423785774502 
		23 -0.065338563288171447 26 -0.065338563288171447 30 -0.065338563288171447;
	setAttr -s 5 ".kit[2:4]"  3 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 3 9 9;
	setAttr -s 5 ".kix[4]"  0.97754645347595215;
	setAttr -s 5 ".kiy[4]"  -0.21071995794773102;
	setAttr -s 5 ".kox[0:4]"  0.0040168748237192631 0.0026186411269009113 
		1 1 1;
	setAttr -s 5 ".koy[0:4]"  0.99999195337295532 0.99999654293060303 
		0 0 0;
createNode animCurveTL -n "animCurveTL54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0.79279446241859197 19 0.52523712780142806 
		23 0.19145866970800332 26 0.19145866970800332 30 0.19145866970800332;
	setAttr -s 5 ".kit[2:4]"  3 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 3 9 9;
	setAttr -s 5 ".kix[4]"  0.013557255268096924;
	setAttr -s 5 ".kiy[4]"  0.99990803003311157;
	setAttr -s 5 ".kox[0:4]"  0.010193326510488987 0.0044345278292894363 
		1 1 1;
	setAttr -s 5 ".koy[0:4]"  -0.99994802474975586 -0.99999016523361206 
		0 0 0;
createNode animCurveTL -n "animCurveTL55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 1.7068065819859761 19 1.1100817683205366 
		23 0.71602111574135285 26 0.71602111574135285 30 0.71602111574135285;
	setAttr -s 5 ".kit[2:4]"  3 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 3 9 9;
	setAttr -s 5 ".kix[4]"  0.021388402208685875;
	setAttr -s 5 ".kiy[4]"  0.99977123737335205;
	setAttr -s 5 ".kox[0:4]"  0.0044687935151159763 0.0026914575137197971 
		1 1 1;
	setAttr -s 5 ".koy[0:4]"  -0.99998998641967773 -0.9999963641166687 
		0 0 0;
createNode animCurveTA -n "animCurveTA121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -22.297768645241412 19 32.649627614254918 
		23 2.42459694022092 26 2.42459694022092 30 2.42459694022092;
	setAttr -s 5 ".kit[2:4]"  3 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 3 9 9;
	setAttr -s 5 ".kix[4]"  0.35150432586669922;
	setAttr -s 5 ".kiy[4]"  0.93618625402450562;
	setAttr -s 5 ".kox[0:4]"  0.26789957284927368 0.52572149038314819 
		1 1 1;
	setAttr -s 5 ".koy[0:4]"  0.96344685554504395 0.85065674781799316 
		0 0 0;
createNode animCurveTA -n "animCurveTA122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -11.632534303065597 19 102.57869904324221 
		23 86.325277849099791 26 86.325277849099791 30 86.325277849099791;
	setAttr -s 5 ".kit[2:4]"  3 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 3 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  0.13259610533714294 0.15411069989204407 
		1 1 1;
	setAttr -s 5 ".koy[0:4]"  0.99117016792297363 0.98805356025695801 
		0 0 0;
createNode animCurveTA -n "animCurveTA123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 2.0818063674069247 19 25.713510304666467 
		23 -0.25466615102432871 26 -0.25466615102432871 30 -0.25466615102432871;
	setAttr -s 5 ".kit[2:4]"  3 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 3 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  0.54294496774673462 0.98850864171981812 
		1 1 1;
	setAttr -s 5 ".koy[0:4]"  0.83976829051971436 -0.15116448700428009 
		0 0 0;
createNode animCurveTA -n "animCurveTA124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0.097466557943624466 19 0.097466557943624466 
		23 0.097466557943624466 26 0.097466557943624466 30 0.097466557943624466;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0.89926276112817349 19 0.89268767681710204 
		23 0.89330089714843641 26 0.89330089714843641 30 0.89330089714843641;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  0.97456419467926025 0.40830445289611816 
		0.96715760231018066 1 1;
	setAttr -s 5 ".koy[0:4]"  -0.22410848736763 -0.91284579038619995 
		0.25417745113372803 0 0;
createNode animCurveTL -n "animCurveTL58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0.80168990793572048 19 0.80168990793572048 
		23 0.80168990793572048 26 0.80168990793572048 30 0.80168990793572048;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0.011621961304049206 19 -0.12162098943406136 
		23 0.011621961304049206 26 0.011621961304049206 30 0.011621961304049206;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  0.020009562373161316 1 0.017509186640381813 
		1 1;
	setAttr -s 5 ".koy[0:4]"  -0.99979978799819946 0 0.9998466968536377 
		0 0;
createNode animCurveTL -n "animCurveTL60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0.53592894662340362 19 1.0552844590114183 
		23 0.52996708264366665 26 0.52996708264366665 30 0.52996708264366665;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  0.0050762309692800045 0.40830445289611816 
		0.0044417153112590313 1 1;
	setAttr -s 5 ".koy[0:4]"  0.99998712539672852 -0.91284579038619995 
		-0.99999016523361206 0 0;
createNode animCurveTL -n "animCurveTL61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 1.1714982742260704 19 1.2186912398007588 
		23 1.1714982742260704 26 1.1714982742260704 30 1.1714982742260704;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  0.056415602564811707 1 0.049382071942090988 
		1 1;
	setAttr -s 5 ".koy[0:4]"  0.99840730428695679 0 -0.99877995252609253 
		0 0;
createNode animCurveTL -n "animCurveTL62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -1.4235319221245726 19 -1.0158123248347988 
		23 -0.018859950574037682 26 -0.081099372036568487 30 -0.081099372036568487;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.31874391436576843;
	setAttr -s 5 ".kiy[4]"  -0.94784086942672729;
	setAttr -s 5 ".kox[0:4]"  0.15297754108905792 0.0018984230700880289 
		0.0024963021278381348 0.037463318556547165 1;
	setAttr -s 5 ".koy[0:4]"  -0.98822969198226929 0.99999821186065674 
		0.99999690055847168 -0.99929797649383545 0;
createNode animCurveTL -n "animCurveTL63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0.96452787963755071 19 1.0177670360889248 
		23 1.0519026939948195 26 0.89539840286905859 30 1.0418120243507503;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.035076376050710678;
	setAttr -s 5 ".kiy[4]"  0.99938464164733887;
	setAttr -s 5 ".kox[0:4]"  0.10806472599506378 0.030505649745464325 
		0.019064601510763168 0.22529193758964539 0.0091062439605593681;
	setAttr -s 5 ".koy[0:4]"  -0.99414384365081787 0.99953460693359375 
		-0.99981826543807983 -0.97429132461547852 0.99995851516723633;
createNode animCurveTL -n "animCurveTL64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 1.1625963268710435 19 1.1625963268710435 
		23 0.85098491342728833 26 0.940138679306049 30 0.940138679306049;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.3879997730255127;
	setAttr -s 5 ".kiy[4]"  0.92165946960449219;
	setAttr -s 5 ".kox[0:4]"  1 0.0085573531687259674 0.01048831082880497 
		0.026163052767515182 1;
	setAttr -s 5 ".koy[0:4]"  0 -0.99996340274810791 -0.99994498491287231 
		0.99965769052505493 0;
createNode animCurveTA -n "animCurveTA130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -19.688418588621186 19 -4.8052859678773805 
		23 -45.957542689457682 26 -10.981858231254311 30 -10.981858231254311;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.10601386427879333;
	setAttr -s 5 ".kiy[4]"  0.99436467885971069;
	setAttr -s 5 ".kox[0:4]"  0.99915444850921631 0.50277113914489746 
		0.90779763460159302 0.35704329609870911 1;
	setAttr -s 5 ".koy[0:4]"  -0.041114594787359238 -0.86441957950592041 
		-0.41940844058990479 0.93408781290054321 0;
createNode animCurveTA -n "animCurveTA131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 1.6085540494966297 19 61.776889105810099 
		23 91.571612904029067 26 91.112882800678761 30 91.112882800678761;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.99812734127044678;
	setAttr -s 5 ".kiy[4]"  0.061170149594545364;
	setAttr -s 5 ".kox[0:4]"  0.38193878531455994 0.1674373596906662 
		0.41468894481658936 0.99941182136535645 1;
	setAttr -s 5 ".koy[0:4]"  0.92418760061264038 0.98588269948959351 
		0.90996325016021729 -0.034292750060558319 0;
createNode animCurveTA -n "animCurveTA132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 4.1348769634669011 19 -1.3141368216190727 
		23 -45.98380373337104 26 -10.999368255871856 30 -10.999368255871856;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.10597791522741318;
	setAttr -s 5 ".kiy[4]"  0.99436849355697632;
	setAttr -s 5 ".kox[0:4]"  0.71247464418411255 0.29160460829734802 
		0.80982065200805664 0.35696539282798767 1;
	setAttr -s 5 ".koy[0:4]"  0.70169782638549805 -0.95653897523880005 
		-0.58667749166488647 0.93411761522293091 0;
createNode animCurveTA -n "animCurveTA133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0 19 0 23 0 26 0 30 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0 19 0 23 0 26 0 30 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0 19 0 23 0 26 0 30 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0 19 0 23 0 26 0 30 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0 19 0 23 0 26 0 30 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -37.313732430097119 19 0 23 
		0 26 0 30 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  0.37893378734588623 0.37893378734588623 
		1 1 1;
	setAttr -s 5 ".koy[0:4]"  0.92542380094528198 0.92542380094528198 
		0 0 0;
createNode animCurveTL -n "animCurveTL65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -0.5198069948790518 19 -0.5198069948790518 
		23 -0.5198069948790518 26 -0.5198069948790518 30 -0.5198069948790518;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -0.72394202659893114 19 -0.73416891728637179 
		23 -0.73321511400798201 26 -0.73321511400798201 30 -0.73321511400798201;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  0.94158273935317993 0.27637001872062683 
		0.92565011978149414 1 1;
	setAttr -s 5 ".koy[0:4]"  -0.33678176999092102 -0.96105128526687622 
		0.37838059663772583 0 0;
createNode animCurveTL -n "animCurveTL67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0.36439499068905612 19 0.36439499068905612 
		23 0.36439499068905612 26 0.36439499068905612 30 0.36439499068905612;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 7.7976222737965299 19 7.7976222737965299 
		23 7.7976222737965299 26 7.7976222737965299 30 7.7976222737965299;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 30.409274105849079 19 30.409274105849079 
		23 30.409274105849079 26 30.409274105849079 30 30.409274105849079;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 64.859940280210878 19 64.859940280210878 
		23 64.859940280210878 26 64.859940280210878 30 64.859940280210878;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0.43524234076486068 19 0.43524234076486068 
		23 0.43524234076486068 26 0.43524234076486068 30 0.43524234076486068;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -0.82665738350180629 19 -0.83688427418924705 
		23 -0.83593047091085726 26 -0.83593047091085726 30 -0.83593047091085726;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  0.94158273935317993 0.27637001872062683 
		0.92565011978149414 1 1;
	setAttr -s 5 ".koy[0:4]"  -0.33678176999092102 -0.96105128526687622 
		0.37838059663772583 0 0;
createNode animCurveTL -n "animCurveTL70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0.27773886459742925 19 0.27773886459742925 
		23 0.27773886459742925 26 0.27773886459742925 30 0.27773886459742925;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0 19 0 23 0 26 0 30 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -28.652637602052774 19 -28.652637602052774 
		23 -28.652637602052774 26 -28.652637602052774 30 -28.652637602052774;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -64.676908227303443 19 -64.676908227303443 
		23 -64.676908227303443 26 -64.676908227303443 30 -64.676908227303443;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -2.8614370767228712 19 -1.0166553122598263 
		23 0.43205909459876291 26 0.55364184418482543 30 0.1346286544063417;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.0088226655498147011;
	setAttr -s 5 ".kiy[4]"  -0.99996107816696167;
	setAttr -s 5 ".kox[0:4]"  0.0019959518685936928 0.00080967630492523313 
		0.0014859166694805026 0.0078447302803397179 0.0031820638105273247;
	setAttr -s 5 ".koy[0:4]"  0.99999803304672241 0.99999970197677612 
		0.99999886751174927 -0.9999692440032959 -0.99999493360519409;
createNode animCurveTL -n "animCurveTL72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 1.7861655623246184 19 2.1223398357664895 
		23 2.338738631180374 26 2.0689227387490825 30 1.6687134100320753;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.064522333443164825;
	setAttr -s 5 ".kiy[4]"  0.99791622161865234;
	setAttr -s 5 ".kox[0:4]"  0.018321936950087547 0.0048258514143526554 
		0.043639782816171646 0.0034824348986148834 0.0033315715845674276;
	setAttr -s 5 ".koy[0:4]"  -0.9998321533203125 0.9999883770942688 
		-0.99904733896255493 -0.99999392032623291 -0.99999445676803589;
createNode animCurveTL -n "animCurveTL73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 1.971761516402895 19 2.4072324477514537 
		23 2.0503007186915152 26 1.7027014023397717 30 1.9285312643244907;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.014997471123933792;
	setAttr -s 5 ".kiy[4]"  0.99988758563995361;
	setAttr -s 5 ".kox[0:4]"  0.0071047642268240452 0.033933766186237335 
		0.0033118773717433214 0.019158376380801201 0.005904046818614006;
	setAttr -s 5 ".koy[0:4]"  0.99997484683990479 0.99942409992218018 
		-0.99999451637268066 -0.99981647729873657 0.99998259544372559;
createNode animCurveTA -n "animCurveTA165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -88.808544236675544 19 163.90812781611541 
		23 147.83171177432195 26 89.070933383400217 30 127.93155698441359;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.16657325625419617;
	setAttr -s 5 ".kiy[4]"  0.98602908849716187;
	setAttr -s 5 ".kox[0:4]"  0.081726536154747009 0.064431667327880859 
		0.1758573055267334 0.55764931440353394 0.1928936243057251;
	setAttr -s 5 ".koy[0:4]"  0.99665480852127075 0.99792212247848511 
		-0.98441565036773682 -0.83007663488388062 0.98121964931488037;
createNode animCurveTA -n "animCurveTA166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 83.878009663660919 19 6.3629436337075393 
		23 -12.135252380234574 26 -34.878916341879048 30 14.298775322972585;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.25970855355262756;
	setAttr -s 5 ".kiy[4]"  0.96568703651428223;
	setAttr -s 5 ".kox[0:4]"  0.8492811918258667 0.15715554356575012 
		0.3083643913269043 0.45131391286849976 0.15350246429443359;
	setAttr -s 5 ".koy[0:4]"  -0.52794075012207031 -0.98757386207580566 
		-0.95126831531524658 0.89236527681350708 0.9881482720375061;
createNode animCurveTA -n "animCurveTA167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -39.173779852465344 19 182.89742585879551 
		23 194.79939573556138 26 202.21580227804509 30 108.93687351524544;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.60511910915374756;
	setAttr -s 5 ".kiy[4]"  -0.79613494873046875;
	setAttr -s 5 ".kox[0:4]"  0.090447641909122467 0.065163031220436096 
		0.56905907392501831 0.15384884178638458 0.081625565886497498;
	setAttr -s 5 ".koy[0:4]"  0.99590122699737549 0.99787461757659912 
		0.82229667901992798 -0.98809438943862915 -0.99666309356689453;
createNode animCurveTL -n "animCurveTL74";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -1.6254521627659528 19 -1.177649036721381 
		23 0.08016494458459146 26 0.13062064378283397 30 0.0083183721209911365;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.045103032141923904;
	setAttr -s 5 ".kiy[4]"  -0.99898236989974976;
	setAttr -s 5 ".kox[0:4]"  0.0022073430009186268 0.001563459518365562 
		0.001783523359335959 0.032459497451782227 0.01090130303055048;
	setAttr -s 5 ".koy[0:4]"  -0.99999755620956421 0.99999874830245972 
		0.99999839067459106 -0.99947303533554077 -0.99994057416915894;
createNode animCurveTL -n "animCurveTL75";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 1.7744259866497851 19 2.2111652103795323 
		23 1.77010747487071 26 1.7377713761949891 30 1.6501881857730392;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.019477589055895805;
	setAttr -s 5 ".kiy[4]"  -0.99981027841567993;
	setAttr -s 5 ".kox[0:4]"  0.016445241868495941 0.52540022134780884 
		0.0049288873560726643 0.019453849643468857 0.015221858397126198;
	setAttr -s 5 ".koy[0:4]"  0.99986475706100464 -0.85085523128509521 
		-0.99998784065246582 -0.99981075525283813 -0.99988412857055664;
createNode animCurveTL -n "animCurveTL76";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 2.0732108715169613 19 0.62125899149193009 
		23 0.25318734465992448 26 0.3146386897144286 30 0.7049352953668232;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.0097850626334547997;
	setAttr -s 5 ".kiy[4]"  0.99995207786560059;
	setAttr -s 5 ".kox[0:4]"  0.001980253029614687 0.0014651808887720108 
		0.0076096253469586372 0.0051650530658662319 0.0034161857329308987;
	setAttr -s 5 ".koy[0:4]"  -0.99999803304672241 -0.99999892711639404 
		-0.99997103214263916 0.99998664855957031 0.99999415874481201;
createNode animCurveTA -n "animCurveTA168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -39.296899878223357 19 9.2890131734494048 
		23 -46.4443135833667 26 -38.816381542114222 30 -71.85952843948553;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.97608441114425659;
	setAttr -s 5 ".kiy[4]"  -0.21739184856414795;
	setAttr -s 5 ".kox[0:4]"  0.3727872371673584 0.90579032897949219 
		0.26776295900344849 0.46554425358772278 0.22525410354137421;
	setAttr -s 5 ".koy[0:4]"  0.92791682481765747 -0.42372614145278931 
		-0.96348482370376587 -0.88502460718154907 -0.97430002689361572;
createNode animCurveTA -n "animCurveTA169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -77.756094215389751 19 32.06233825356405 
		23 33.640445538934749 26 64.348927139618965 30 21.100381668868643;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.28402692079544067;
	setAttr -s 5 ".kiy[4]"  -0.9588162899017334;
	setAttr -s 5 ".kox[0:4]"  0.19490526616573334 0.13588534295558929 
		0.38257282972335815 0.72935718297958374 0.17394743859767914;
	setAttr -s 5 ".koy[0:4]"  0.98082208633422852 0.99072456359863281 
		0.92392534017562866 -0.68413311243057251 -0.98475492000579834;
createNode animCurveTA -n "animCurveTA170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 22.376629620485513 19 -32.512081388624914 
		23 -44.425232028811557 26 -30.360781621175704 30 -41.621372859563529;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.99364066123962402;
	setAttr -s 5 ".kiy[4]"  0.11259749531745911;
	setAttr -s 5 ".kox[0:4]"  0.28000196814537048 0.22296176850795746 
		0.98729902505874634 0.978706955909729 0.56141698360443115;
	setAttr -s 5 ".koy[0:4]"  -0.9599994421005249 -0.97482717037200928 
		0.158873051404953 0.2052624374628067 -0.8275330662727356;
createNode animCurveTL -n "animCurveTL77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0.77290696453185026 19 0.5339687543497551 
		23 0.87726891091103198 26 0.77290696453185026 30 0.61370199524106794;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  0.011159792542457581 0.025543760508298874 
		0.0097649600356817245 0.0088525600731372833 0.0083746546879410744;
	setAttr -s 5 ".koy[0:4]"  -0.99993771314620972 0.99967372417449951 
		0.99995231628417969 -0.99996083974838257 -0.99996495246887207;
createNode animCurveTL -n "animCurveTL78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -0.71234308293286885 19 -0.20995201472142022 
		23 -0.60563428511103445 26 -0.72161617034191983 30 -0.60952778167288313;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  0.0052116811275482178 0.024982329457998276 
		0.0045602354221045971 0.51404786109924316 0.011894533410668373;
	setAttr -s 5 ".koy[0:4]"  0.99998641014099121 0.99968791007995605 
		-0.99998962879180908 -0.85776150226593018 0.99992924928665161;
createNode animCurveTL -n "animCurveTL79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -0.35872267288917942 19 -1.3562107444189653 
		23 -1.0712725765080791 26 -0.35872267288917942 30 -1.0594809410537931;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  0.0026733723934739828 0.0037424017209559679 
		0.0023392026778310537 0.19411641359329224 0.0019026973750442266;
	setAttr -s 5 ".koy[0:4]"  -0.99999642372131348 -0.99999302625656128 
		0.99999725818634033 0.98097848892211914 -0.99999821186065674;
createNode animCurveTL -n "animCurveTL80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -0.35039089098226439 19 -1.2932720390914942 
		23 -0.54014246473274841 26 -0.75458717076450743 30 -0.17035258176403204;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.013342229649424553;
	setAttr -s 5 ".kiy[4]"  0.99991101026535034;
	setAttr -s 5 ".kox[0:4]"  0.0024467278271913528 0.014052075333893299 
		0.0043314960785210133 0.00630976352840662 0.0022821824532002211;
	setAttr -s 5 ".koy[0:4]"  -0.99999701976776123 -0.99990123510360718 
		0.99999064207077026 0.99998009204864502 0.99999737739562988;
createNode animCurveTL -n "animCurveTL81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -0.40854033940183732 19 -0.69898988538069451 
		23 -0.42964229594936287 26 -0.57968033518128437 30 0.49809851355005846;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.012598410248756409;
	setAttr -s 5 ".kiy[4]"  0.99992060661315918;
	setAttr -s 5 ".kox[0:4]"  0.00980411097407341 0.1253734827041626 
		0.019553231075406075 0.0025150622241199017 0.0012371112825348973;
	setAttr -s 5 ".koy[0:4]"  -0.99995189905166626 -0.99210959672927856 
		0.99980878829956055 0.9999968409538269 0.99999922513961792;
createNode animCurveTL -n "animCurveTL82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -0.82408995422063858 19 -0.14541946648150139 
		23 -0.99086839459527176 26 -1.3788413519522593 30 -1.3123242816818137;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.027752768248319626;
	setAttr -s 5 ".kiy[4]"  0.9996148943901062;
	setAttr -s 5 ".kox[0:4]"  0.0037909871898591518 0.015987232327461243 
		0.0018917527049779892 0.0072584510780870914 0.020040955394506454;
	setAttr -s 5 ".koy[0:4]"  0.99999278783798218 -0.99987220764160156 
		-0.99999821186065674 -0.99997365474700928 0.99979913234710693;
createNode animCurveTA -n "animCurveTA171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -0.061808866237337522 19 -0.061808866237337522 
		23 -0.061808866237337522 26 -0.061808866237337522 30 -0.061808866237337522;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -59.058178941076754 19 -59.058178941076754 
		23 -59.058178941076754 26 -59.058178941076754 30 -59.058178941076754;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 16.579147429757843 19 16.579147429757843 
		23 16.579147429757843 26 16.579147429757843 30 16.579147429757843;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 12.253734489678925 19 12.253734489678925 
		23 12.253734489678925 26 12.253734489678925 30 12.253734489678925;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -65.746751280844961 19 -65.746751280844961 
		23 -65.746751280844961 26 -65.746751280844961 30 -65.746751280844961;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0 19 0 23 0 26 0 30 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 15.711328223519057 19 15.711328223519057 
		23 15.711328223519057 26 15.711328223519057 30 15.711328223519057;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 8.5572674112203622 19 8.5572674112203622 
		23 8.5572674112203622 26 8.5572674112203622 30 8.5572674112203622;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0 19 0 23 0 26 0 30 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0 19 0 23 0 26 0 30 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0 19 0 23 0 26 0 30 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0 19 0 23 0 26 0 30 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0 19 0 23 0 26 0 30 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0 19 0 23 0 26 0 30 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 8.2533422302317216 19 8.2533422302317216 
		23 8.2533422302317216 26 8.2533422302317216 30 8.2533422302317216;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 23.263402056531085 19 23.263402056531085 
		23 23.263402056531085 26 23.263402056531085 30 23.263402056531085;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 20.166277752815617 19 20.166277752815617 
		23 20.166277752815617 26 20.166277752815617 30 20.166277752815617;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0 19 0 23 0 26 0 30 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0 19 0 23 0 26 0 30 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 33.429092416277157 19 30.454927495835033 
		23 62.831333421814868 26 62.831333421814868 30 62.831333421814868;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  0.42677825689315796 0.46110823750495911 
		0.38166630268096924 1 1;
	setAttr -s 5 ".koy[0:4]"  -0.90435630083084106 0.8873438835144043 
		0.92430019378662109 0 0;
createNode animCurveTA -n "animCurveTA191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 13.994403295754109 30 13.994403295754109;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 0 30 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  15 13.994403295754109 30 13.994403295754109;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0 19 0 23 0 26 0 30 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0 19 0 23 0 26 0 30 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 17.254116939558369 19 17.254116939558369 
		23 17.254116939558369 26 17.254116939558369 30 17.254116939558369;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.64668035507202148;
	setAttr -s 5 ".kiy[4]"  0.76276111602783203;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0 19 0 23 0 26 0 30 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0 19 0 23 0 26 0 30 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0 19 0 23 0 26 0 30 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0.87902215066922906 19 4.0440560465475537 
		23 -3.1852494214752829 26 -1.3142242675248421 30 -1.3142242675248421;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.99301391839981079;
	setAttr -s 5 ".kiy[4]"  -0.11799747496843338;
	setAttr -s 5 ".kox[0:4]"  0.99990791082382202 0.96639370918273926 
		0.92822092771530151 0.990348219871521 1;
	setAttr -s 5 ".koy[0:4]"  0.013570141047239304 -0.25706648826599121 
		-0.37202948331832886 0.13860157132148743 0;
createNode animCurveTA -n "animCurveTA207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 4.7952631452849266 19 0.92670473916694418 
		23 -2.2547148230857936 26 1.5170036283906083 30 1.5170036283906083;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.99955195188522339;
	setAttr -s 5 ".kiy[4]"  -0.029930740594863892;
	setAttr -s 5 ".kox[0:4]"  0.99998992681503296 0.90800029039382935 
		0.9990265965461731 0.96243143081665039 1;
	setAttr -s 5 ".koy[0:4]"  -0.0044869938865303993 -0.41896948218345642 
		0.044111274182796478 0.27152490615844727 0;
createNode animCurveTA -n "animCurveTA208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 7.5470594542643701 19 7.487726147753377 
		23 -10.298739325990905 26 -10.310914718693907 30 -10.310914718693907;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.9999997615814209;
	setAttr -s 5 ".kiy[4]"  0.00068707577884197235;
	setAttr -s 5 ".kox[0:4]"  0.96073716878890991 0.65036123991012573 
		0.60057586431503296 0.99999958276748657 1;
	setAttr -s 5 ".koy[0:4]"  -0.27746012806892395 -0.75962507724761963 
		-0.79956775903701782 -0.00091071688802912831 0;
createNode animCurveTA -n "animCurveTA209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -1.2734920044837068 19 -1.2734920044837068 
		23 -1.2734920044837068 26 -1.2734920044837068 30 -1.2734920044837068;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.41530823707580566;
	setAttr -s 5 ".kiy[4]"  -0.90968072414398193;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 1.71628531942149 19 1.71628531942149 
		23 1.71628531942149 26 1.71628531942149 30 1.71628531942149;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.97171664237976074;
	setAttr -s 5 ".kiy[4]"  0.23614978790283203;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 1.62960137906938 19 1.62960137906938 
		23 1.62960137906938 26 1.62960137906938 30 1.62960137906938;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.92442852258682251;
	setAttr -s 5 ".kiy[4]"  0.3813554048538208;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -4.8714700432790456 19 -4.8714700432790456 
		23 -4.9668658878703695 26 -4.9668658878703695 30 -4.9668658878703695;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 0.99998050928115845 0.99997454881668091 
		1 1;
	setAttr -s 5 ".koy[0:4]"  0 -0.0062435218133032322 -0.0071354107931256294 
		0 0;
createNode animCurveTA -n "animCurveTA213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -11.783606204137085 19 -11.783606204137085 
		23 -0.26727810118763035 26 -0.26727810118763035 30 -0.26727810118763035;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 0.79856342077255249 0.75765335559844971 
		1 1;
	setAttr -s 5 ".koy[0:4]"  0 0.60191071033477783 0.65265721082687378 
		0 0;
createNode animCurveTA -n "animCurveTA214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 7.5423825101935913 19 7.5423825101935913 
		23 7.2769948266952458 26 7.2769948266952458 30 7.2769948266952458;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 0.99984920024871826 0.99980300664901733 
		1 1;
	setAttr -s 5 ".koy[0:4]"  0 -0.017366964370012283 -0.019847042858600616 
		0 0;
createNode animCurveTA -n "animCurveTA215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0.62622119873454107 19 4.7838059370963188 
		23 0.9485196283156887 26 -0.28960924554045031 30 -0.28960924554045031;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.97307044267654419;
	setAttr -s 5 ".kiy[4]"  -0.23050786554813385;
	setAttr -s 5 ".kox[0:4]"  0.99782782793045044 0.99977761507034302 
		0.93494164943695068 0.9957389235496521 1;
	setAttr -s 5 ".koy[0:4]"  0.065876014530658722 0.021089691668748856 
		-0.35480153560638428 -0.092217199504375458 0;
createNode animCurveTA -n "animCurveTA216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 -3.8840070108449005 19 -6.6740110437877931 
		23 -2.4259545709794383 26 1.0004288433953685 30 1.0004288433953685;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.99203670024871826;
	setAttr -s 5 ".kiy[4]"  -0.12594930827617645;
	setAttr -s 5 ".kox[0:4]"  0.99996769428253174 0.99547749757766724 
		0.8672633171081543 0.96869122982025146 1;
	setAttr -s 5 ".koy[0:4]"  0.0080380002036690712 0.094997726380825043 
		0.4978497326374054 0.24826866388320923 0;
createNode animCurveTA -n "animCurveTA217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 1.9840981620606046 19 1.9534211533472889 
		23 1.8040343908369185 26 1.7081671687900877 30 1.7081671687900877;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.99999982118606567;
	setAttr -s 5 ".kiy[4]"  0.00064170715631917119;
	setAttr -s 5 ".kox[0:4]"  0.94290262460708618 0.99993056058883667 
		0.99983179569244385 0.99997431039810181 1;
	setAttr -s 5 ".koy[0:4]"  -0.33306857943534851 -0.011784328147768974 
		-0.018341869115829468 -0.007170666940510273 0;
createNode animCurveTA -n "animCurveTA218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0 19 0 23 0 26 0 30 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0 19 0 23 0 26 0 30 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 27.080064458283051 19 27.080064458283051 
		23 27.080064458283051 26 27.080064458283051 30 27.080064458283051;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.95955878496170044;
	setAttr -s 5 ".kiy[4]"  0.28150823712348938;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 10.423754966968488 19 10.423754966968488 
		23 10.423754966968488 26 10.423754966968488 30 10.423754966968488;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 27.722848255843903 19 27.722848255843903 
		23 27.722848255843903 26 27.722848255843903 30 27.722848255843903;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 21.576484776388227 19 21.576484776388227 
		23 21.576484776388227 26 21.576484776388227 30 21.576484776388227;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0 19 0 23 0 26 0 30 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 0 19 0 23 0 26 0 30 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  15 27.911632519594587 19 46.371881031363458 
		23 103.10164643138992 26 16.834236237468577 30 103.10164643138992;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.17439648509025574;
	setAttr -s 5 ".kiy[4]"  0.98467552661895752;
	setAttr -s 5 ".kox[0:4]"  0.8654751181602478 0.19913381338119507 
		0.41234061121940613 1 0.088210113346576691;
	setAttr -s 5 ".koy[0:4]"  0.50095194578170776 0.97997230291366577 
		-0.91102975606918335 0 0.99610191583633423;
createNode clipLibrary -n "clipLibrary2";
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
connectAttr "apu_get_out_of_car.st" "clipLibrary2.st[0]";
connectAttr "apu_get_out_of_car.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL42.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL43.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL44.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL45.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL46.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA114.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU9.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU15.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU16.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA115.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA116.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA117.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL47.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL48.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL49.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL50.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL51.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL52.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA118.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA119.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA120.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL53.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL54.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL55.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA121.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA122.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA123.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA124.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA125.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA126.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA127.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA128.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA129.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTL56.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTL57.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTL58.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTL59.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTL60.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTL61.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL62.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL63.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL64.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTA130.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTA131.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTA132.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTA133.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTA134.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTA135.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA136.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA137.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA138.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA139.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA140.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA141.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA142.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA143.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA144.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA145.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA146.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA147.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA148.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA149.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA150.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA151.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA152.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA153.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA154.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA155.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA156.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA157.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA158.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTL65.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTL66.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTL67.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA159.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA160.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA161.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL68.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL69.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL70.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA162.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA163.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA164.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL71.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL72.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL73.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA165.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA166.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA167.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL74.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL75.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL76.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA168.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA169.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA170.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL77.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL78.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL79.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTL80.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTL81.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTL82.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTA171.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTA172.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTA173.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTA174.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTA175.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTA176.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA177.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA178.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA179.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA180.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA181.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA182.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA183.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA184.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA185.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA186.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA187.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA188.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA189.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA190.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA191.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA192.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA193.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA194.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA195.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA196.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA197.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA198.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA199.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA200.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA201.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA202.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA203.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA204.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA205.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA206.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA207.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA208.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA209.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA210.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA211.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA212.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA213.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA214.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA215.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA216.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA217.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA218.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA219.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA220.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA221.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA222.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA223.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA224.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA225.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA226.a" "clipLibrary2.cel[0].cev[161].cevr";
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
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of apu-m_get_out_of_car.ma
