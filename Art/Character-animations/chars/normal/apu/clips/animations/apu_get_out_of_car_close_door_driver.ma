//Maya ASCII 4.0 scene
//Name: apu_get_out_of_car_close_door_driver.ma
//Last modified: Wed, Oct 09, 2002 02:43:53 PM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "apu_get_out_of_car_close_door_driverSource";
	setAttr ".ihi" 0;
	setAttr ".st" 30;
	setAttr ".du" 15;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL83";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL84";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL85";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  30 -0.057346914971922874 31 -0.062382144131281313 
		32 -0.070540554703172026 33 -0.073503973828571462 34 -0.062954228648456095 
		35 -0.032819156379264303 36 0.011180223038414571 37 0.059672308377377643 
		38 0.10328549841042199 39 0.14547534235267692 40 0.18925514728996043 41 0.22458994880110228 
		42 0.24144478246493259 43 0.22329245074490689 44 0.17823348849643786 45 0.13317452988629069;
	setAttr -s 16 ".kit[15]"  1;
	setAttr -s 16 ".kot[0:15]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kix[15]"  0.0073975161649286747;
	setAttr -s 16 ".kiy[15]"  -0.9999726414680481;
	setAttr -s 16 ".kox[0:15]"  0.15494515001773834 0.050465010106563568 
		0.05983477458357811 0.087540045380592346 0.016383929178118706 0.0089923068881034851 
		0.007207685150206089 0.0072379047051072121 0.0077694980427622795 0.0077544418163597584 
		0.0084262946620583534 0.012772886082530022 0.45701292157173157 0.010546051897108555 
		0.0073975124396383762 0.0073975156992673874;
	setAttr -s 16 ".koy[0:15]"  -0.98792308568954468 -0.99872583150863647 
		-0.99820828437805176 0.99616098403930664 0.99986577033996582 0.99995958805084229 
		0.99997401237487793 0.9999738335609436 0.99996984004974365 0.9999699592590332 
		0.99996447563171387 0.99991840124130249 -0.88946008682250977 -0.99994438886642456 
		-0.9999726414680481 -0.9999726414680481;
createNode animCurveTL -n "animCurveTL86";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
createNode animCurveTL -n "animCurveTL87";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  30 0.66479001686559913 31 0.67066312818866314 
		32 0.68026501379368853 33 0.68324920059061101 34 0.66926921548936635 35 0.63328016541593279 
		36 0.58156211436079208 37 0.52075602483063488 38 0.4575028593321524 39 0.38819324134553873 
		40 0.31107875658651724 41 0.2355918109150722 42 0.17116481019118798 43 0.12713903979827446 
		44 0.097185817867551649 45 0.067232599380718724;
	setAttr -s 16 ".kit[15]"  1;
	setAttr -s 16 ".kot[0:15]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 16 ".kix[15]"  0.011127781122922897;
	setAttr -s 16 ".kiy[15]"  -0.99993807077407837;
	setAttr -s 16 ".kox[0:15]"  0.14656710624694824 0.043040324002504349 
		0.052894454449415207 0.060518089681863785 0.01334040891379118 0.0076008373871445656 
		0.0059245508164167404 0.0053736986592411995 0.0050289998762309551 0.0045529371127486229 
		0.0043686372227966785 0.0047647794708609581 0.0061469529755413532 0.0090112015604972839 
		0.011127774603664875 0.011127781122922897;
	setAttr -s 16 ".koy[0:15]"  0.98920071125030518 0.999073326587677 
		0.99860012531280518 -0.99816709756851196 -0.99991101026535034 -0.99997109174728394 
		-0.99998247623443604 -0.99998557567596436 -0.99998736381530762 -0.99998962879180908 
		-0.99999046325683594 -0.99998867511749268 -0.9999811053276062 -0.99995940923690796 
		-0.99993807077407837 -0.99993807077407837;
createNode animCurveTA -n "animCurveTA227";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  30 93.055840570244243 31 93.055840570244243 
		45 0;
	setAttr -s 3 ".kot[2]"  2;
	setAttr -s 3 ".kix[0:2]"  1 1 0.27615934610366821;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.96111184358596802;
	setAttr -s 3 ".kox[0:2]"  1 0.27615931630134583 1;
	setAttr -s 3 ".koy[0:2]"  0 -0.96111184358596802 0;
createNode animCurveTU -n "animCurveTU17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU23";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 1 45 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU24";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 1 45 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL88";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL89";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL90";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL91";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 -0.082572222922083327 34 -0.082572222922083327 
		38 -0.082572222922083327 42 0.15008354131822796 45 -0.082572222922083327;
	setAttr -s 5 ".kit[2:4]"  3 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 3 9 9;
	setAttr -s 5 ".kix[4]"  0.0042981565929949284;
	setAttr -s 5 ".kiy[4]"  -0.99999076128005981;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 0.0042981565929949284;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 -0.99999076128005981;
createNode animCurveTL -n "animCurveTL92";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0.17277252732626863 34 0.17277252732626863 
		38 0.17277252732626863 42 0.36784743311394458 45 0.14050322196901177;
	setAttr -s 5 ".kit[2:4]"  3 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 3 9 9;
	setAttr -s 5 ".kix[4]"  0.0043985745869576931;
	setAttr -s 5 ".kiy[4]"  -0.99999040365219116;
	setAttr -s 5 ".kox[0:4]"  1 1 1 0.072119846940040588 0.0043985745869576931;
	setAttr -s 5 ".koy[0:4]"  0 0 0 -0.99739599227905273 -0.99999034404754639;
createNode animCurveTL -n "animCurveTL93";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 1.1476477784383041 34 1.1476477784383041 
		38 1.1476477784383041 42 0.19954122198475013 45 0.087244380716231987;
	setAttr -s 5 ".kit[2:4]"  3 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 3 9 9;
	setAttr -s 5 ".kix[4]"  0.0089046182110905647;
	setAttr -s 5 ".kiy[4]"  -0.99996042251586914;
	setAttr -s 5 ".kox[0:4]"  1 1 1 0.0022004151251167059 0.0089046182110905647;
	setAttr -s 5 ".koy[0:4]"  0 0 0 -0.99999755620956421 -0.99996036291122437;
createNode animCurveTA -n "animCurveTA231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 30.743420846225874 34 30.743420846225874 
		38 30.743420846225874 42 27.202406741189204 45 -3.044955399029007;
	setAttr -s 5 ".kit[2:4]"  3 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 3 9 9;
	setAttr -s 5 ".kix[4]"  0.18611447513103485;
	setAttr -s 5 ".kiy[4]"  -0.98252809047698975;
	setAttr -s 5 ".kox[0:4]"  1 1 1 0.36791637539863586 0.18611447513103485;
	setAttr -s 5 ".koy[0:4]"  0 0 0 -0.92985886335372925 -0.98252809047698975;
createNode animCurveTA -n "animCurveTA232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 84.680301767248736 34 84.680301767248736 
		38 84.680301767248736 42 -6.5291221832022694 45 -15.067285461003062;
	setAttr -s 5 ".kit[2:4]"  3 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 3 9 9;
	setAttr -s 5 ".kix[4]"  0.557220458984375;
	setAttr -s 5 ".kiy[4]"  -0.83036458492279053;
	setAttr -s 5 ".kox[0:4]"  1 1 1 0.13284061849117279 0.557220458984375;
	setAttr -s 5 ".koy[0:4]"  0 0 0 -0.99113738536834717 -0.83036458492279053;
createNode animCurveTA -n "animCurveTA233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 35.462321279948334 34 35.462321279948334 
		38 35.462321279948334 42 -6.6262545909375907 45 5.6206208296418518;
	setAttr -s 5 ".kit[2:4]"  3 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 3 9 9;
	setAttr -s 5 ".kix[4]"  0.42375802993774414;
	setAttr -s 5 ".kiy[4]"  0.90577542781829834;
	setAttr -s 5 ".kox[0:4]"  1 1 1 0.40884459018707275 0.42375802993774414;
	setAttr -s 5 ".koy[0:4]"  0 0 0 -0.91260403394699097 0.90577542781829834;
createNode animCurveTL -n "animCurveTL94";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 -0.065338563288171447 34 -0.065913390085001217 
		38 0.39860079975351748 42 0.43996755531256965 45 0.43996755531256965;
	setAttr -s 5 ".kit[3:4]"  3 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 3 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  0.97754645347595215 0.0057477825321257114 
		0.0052712592296302319 1 1;
	setAttr -s 5 ".koy[0:4]"  -0.21071995794773102 0.99998348951339722 
		0.99998611211776733 0 0;
createNode animCurveTL -n "animCurveTL95";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0.19145866970800332 34 0.38813722705649717 
		38 0.27415754955282856 42 0.13821768574259088 45 0.13821768574259088;
	setAttr -s 5 ".kit[3:4]"  3 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 3 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  0.013557255268096924 0.032228745520114899 
		0.010669494047760963 1 1;
	setAttr -s 5 ".koy[0:4]"  0.99990803003311157 0.99948054552078247 
		-0.9999430775642395 0 0;
createNode animCurveTL -n "animCurveTL96";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0.71602111574135285 34 0.84067074931924024 
		38 0.2544334296681478 42 0.13524896750232329 45 0.13524896750232329;
	setAttr -s 5 ".kit[3:4]"  3 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 3 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  0.021388402208685875 0.0057770651765167713 
		0.0037802171427756548 1 1;
	setAttr -s 5 ".koy[0:4]"  0.99977123737335205 -0.99998331069946289 
		-0.99999284744262695 0 0;
createNode animCurveTA -n "animCurveTA234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 2.42459694022092 34 43.117903087065351 
		38 29.331942431316797 42 0.0086254608312396411 45 0.0086254608312396411;
	setAttr -s 5 ".kit[3:4]"  3 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 3 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  0.35150432586669922 0.4937799870967865 
		0.33406093716621399 1 1;
	setAttr -s 5 ".koy[0:4]"  0.93618625402450562 0.86958688497543335 
		-0.94255149364471436 0 0;
createNode animCurveTA -n "animCurveTA235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 86.325277849099791 34 86.325277849099919 
		38 10.120869282395603 42 0.77353921405805992 45 0.77353921405805992;
	setAttr -s 5 ".kit[3:4]"  3 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 3 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 0.19658614695072174 0.17581047117710114 
		1 1;
	setAttr -s 5 ".koy[0:4]"  0 -0.98048657178878784 -0.98442405462265015 
		0 0;
createNode animCurveTA -n "animCurveTA236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 -0.25466615102432871 34 -0.25466615102421791 
		38 -2.6465533178083231 42 -5.2246771790797677 45 -5.2246771790797677;
	setAttr -s 5 ".kit[3:4]"  3 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 3 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 0.98796701431274414 0.95095396041870117 
		1 1;
	setAttr -s 5 ".koy[0:4]"  0 -0.15466490387916565 -0.3093324601650238 
		0 0;
createNode animCurveTA -n "animCurveTA237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL97";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0.097466557943624466 34 0.097466557943624466 
		38 0.09352029034726092 42 0.09316886020268271 45 0.09352029034726092;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.94343692064285278;
	setAttr -s 5 ".kiy[4]"  0.33155211806297302;
	setAttr -s 5 ".kox[0:4]"  1 0.55989629030227661 0.52723872661590576 
		1 0.94343692064285278;
	setAttr -s 5 ".koy[0:4]"  0 -0.82856273651123047 -0.84971719980239868 
		0 0.33155211806297302;
createNode animCurveTL -n "animCurveTL98";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0.89330089714843641 34 0.89330089714843641 
		38 -0.26030039536956467 42 -0.36303297285740038 45 -0.26030039536956467;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.0097335502505302429;
	setAttr -s 5 ".kiy[4]"  0.99995255470275879;
	setAttr -s 5 ".kox[0:4]"  1 0.0023115954827517271 0.0021225730888545513 
		1 0.0097335502505302429;
	setAttr -s 5 ".koy[0:4]"  0 -0.99999731779098511 -0.99999773502349854 
		0 0.99995261430740356;
createNode animCurveTL -n "animCurveTL99";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0.80168990793572048 34 0.80168990793572048 
		38 1.4385202555133765 42 1.4952324203113958 45 1.4385202555133765;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.017630163580179214;
	setAttr -s 5 ".kiy[4]"  -0.99984455108642578;
	setAttr -s 5 ".kox[0:4]"  1 0.0041873683221638203 0.0038449654821306467 
		1 0.017630163580179214;
	setAttr -s 5 ".koy[0:4]"  0 0.99999123811721802 0.99999260902404785 
		0 -0.99984455108642578;
createNode animCurveTL -n "animCurveTL100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0.011621961304049206 34 0.011621961304049206 
		38 0.011621961304049206 42 0.011621961304049206 45 0.011621961304049206;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0.52996708264366665 34 0.52996708264366665 
		38 0.52996708264366665 42 0.52996708264366665 45 0.52996708264366665;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 1.1714982742260704 34 1.1714982742260704 
		38 1.1714982742260704 42 1.1714982742260704 45 1.1714982742260704;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 -0.081099372036568487 34 -0.089029172936957862 
		38 0.14606520796576952 42 0.34144853736245112 45 0.18833394525810626;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.0065309177152812481;
	setAttr -s 5 ".kiy[4]"  -0.99997866153717041;
	setAttr -s 5 ".kox[0:4]"  0.31874391436576843 0.011738110333681107 
		0.0061945496127009392 0.05511842668056488 0.0065309177152812481;
	setAttr -s 5 ".koy[0:4]"  -0.94784086942672729 0.99993109703063965 
		0.99998080730438232 0.99847984313964844 -0.99997866153717041;
createNode animCurveTL -n "animCurveTL104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 1.0418120243507503 34 0.97137619708026868 
		38 0.88346738546877746 42 1.0021916480593049 45 1.0019274833988185;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.96683454513549805;
	setAttr -s 5 ".kiy[4]"  -0.25540348887443542;
	setAttr -s 5 ".kox[0:4]"  0.035076376050710678 0.016838515177369118 
		0.086214460432529449 0.019693387672305107 0.96683454513549805;
	setAttr -s 5 ".koy[0:4]"  0.99938464164733887 -0.99985820055007935 
		0.9962766170501709 0.99980604648590088 -0.25540348887443542;
createNode animCurveTL -n "animCurveTL105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0.940138679306049 34 0.94647311239268406 
		38 0.64699547682622272 42 0.24205937892317511 45 0.1534490942743072;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.011284654960036278;
	setAttr -s 5 ".kiy[4]"  -0.99993634223937988;
	setAttr -s 5 ".kox[0:4]"  0.3879997730255127 0.0090964287519454956 
		0.0037856269627809525 0.0047276350669562817 0.011284654960036278;
	setAttr -s 5 ".koy[0:4]"  0.92165946960449219 -0.99995863437652588 
		-0.99999284744262695 -0.999988853931427 -0.99993634223937988;
createNode animCurveTA -n "animCurveTA243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 -10.981858231254311 34 132.32744034722876 
		38 23.32222693278915 42 -0.71006923236422259 45 0.081032076758160113;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.99060207605361938;
	setAttr -s 5 ".kiy[4]"  0.13677559792995453;
	setAttr -s 5 ".kox[0:4]"  0.10601386427879333 0.40686360001564026 
		0.11409638077020645 0.49862048029899597 0.99060207605361938;
	setAttr -s 5 ".koy[0:4]"  0.99436467885971069 0.91348892450332642 
		-0.9934697151184082 -0.86682039499282837 0.13677559792995453;
createNode animCurveTA -n "animCurveTA244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 91.112882800678761 34 92.049247286032568 
		38 77.009232177755464 42 11.959106559103589 45 -2.4435195287202482;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.36963975429534912;
	setAttr -s 5 ".kiy[4]"  -0.92917513847351074;
	setAttr -s 5 ".kox[0:4]"  0.99812734127044678 0.73480165004730225 
		0.18739151954650879 0.16593113541603088 0.36963972449302673;
	setAttr -s 5 ".koy[0:4]"  0.061170149594545364 -0.67828202247619629 
		-0.98228532075881958 -0.98613733053207397 -0.92917513847351074;
createNode animCurveTA -n "animCurveTA245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 -10.999368255871856 34 132.35909555228412 
		38 22.767367154507333 42 0.44890213374401772 45 -0.49908158266912123;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.98658716678619385;
	setAttr -s 5 ".kiy[4]"  -0.163235142827034;
	setAttr -s 5 ".kox[0:4]"  0.10597791522741318 0.41224506497383118 
		0.11505860835313797 0.49821364879608154 0.98658716678619385;
	setAttr -s 5 ".koy[0:4]"  0.99436849355697632 0.91107302904129028 
		-0.99335873126983643 -0.867054283618927 -0.163235142827034;
createNode animCurveTA -n "animCurveTA246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA251";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA252";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA253";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA254";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA265";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0 34 0 38 0 42 0 45 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0 34 0 38 0 42 0 45 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0 34 0 38 0 42 0 45 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0 34 0 38 0 42 2.0684376622124909 
		45 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.94058418273925781;
	setAttr -s 5 ".kiy[4]"  -0.33956065773963928;
	setAttr -s 5 ".kox[0:4]"  1 1 0.99096035957336426 1 0.94058418273925781;
	setAttr -s 5 ".koy[0:4]"  0 0 0.13415515422821045 0 -0.33956065773963928;
createNode animCurveTA -n "animCurveTA270";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0 34 0 38 0 42 -3.9719999785316644 
		45 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.82183164358139038;
	setAttr -s 5 ".kiy[4]"  0.56973040103912354;
	setAttr -s 5 ".kox[0:4]"  1 1 0.9678303599357605 1 0.82183164358139038;
	setAttr -s 5 ".koy[0:4]"  0 0 -0.25160375237464905 0 0.56973040103912354;
createNode animCurveTA -n "animCurveTA271";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0 34 0 38 -36.264256662861158 
		42 1.4367696798864544 45 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.96996796131134033;
	setAttr -s 5 ".kiy[4]"  -0.24323263764381409;
	setAttr -s 5 ".kox[0:4]"  1 0.38826665282249451 0.99560767412185669 
		0.34589895606040955 0.96996796131134033;
	setAttr -s 5 ".koy[0:4]"  0 -0.9215470552444458 0.093623317778110504 
		0.93827176094055176 -0.24323263764381409;
createNode animCurveTL -n "animCurveTL106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 -0.5198069948790518 34 -0.5198069948790518 
		38 -0.5198069948790518 42 -0.5198069948790518 45 -0.5198069948790518;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 -0.73321511400798201 34 -0.73321511400798201 
		38 -0.73321511400798201 42 -0.73321511400798201 45 -0.73321511400798201;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0.36439499068905612 34 0.36439499068905612 
		38 0.36439499068905612 42 0.36439499068905612 45 0.36439499068905612;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA272";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 7.7976222737965299 34 7.7976222737965299 
		38 7.7976222737965299 42 7.7976222737965299 45 7.7976222737965299;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA273";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 30.409274105849079 34 30.409274105849079 
		38 30.409274105849079 42 30.409274105849079 45 30.409274105849079;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA274";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 64.859940280210878 34 64.859940280210878 
		38 64.859940280210878 42 64.859940280210878 45 64.859940280210878;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0.43524234076486068 34 0.43524234076486068 
		38 0.43524234076486068 42 0.43524234076486068 45 0.43524234076486068;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 -0.83593047091085726 34 -0.83593047091085726 
		38 -0.83593047091085726 42 -0.83593047091085726 45 -0.83593047091085726;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0.27773886459742925 34 0.27773886459742925 
		38 0.27773886459742925 42 0.27773886459742925 45 0.27773886459742925;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA275";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0 34 0 38 0 42 0 45 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA276";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 -28.652637602052774 34 -28.652637602052774 
		38 -28.652637602052774 42 -28.652637602052774 45 -28.652637602052774;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA277";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 -64.676908227303443 34 -64.676908227303443 
		38 -64.676908227303443 42 -64.676908227303443 45 -64.676908227303443;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL112";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0.1346286544063417 34 0.25140176516354401 
		38 0.25140176516354401 42 -0.37160684089731122 45 -0.37372276788124348;
	setAttr -s 5 ".kit[0:4]"  9 3 3 9 1;
	setAttr -s 5 ".kot[0:4]"  1 3 3 9 9;
	setAttr -s 5 ".kix[4]"  0.42729011178016663;
	setAttr -s 5 ".kiy[4]"  -0.90411454439163208;
	setAttr -s 5 ".kox[0:4]"  0.0088226655498147011 1 1 0.0037325634621083736 
		0.42729011178016663;
	setAttr -s 5 ".koy[0:4]"  -0.99996107816696167 0 0 -0.99999302625656128 
		-0.90411454439163208;
createNode animCurveTL -n "animCurveTL113";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 1.6687134100320753 34 2.1101659775616897 
		38 2.1101659775616897 42 2.1661416055106941 45 1.506361042646382;
	setAttr -s 5 ".kit[0:4]"  9 3 3 9 1;
	setAttr -s 5 ".kot[0:4]"  1 3 3 9 9;
	setAttr -s 5 ".kix[4]"  0.0015156539157032967;
	setAttr -s 5 ".kiy[4]"  -0.99999886751174927;
	setAttr -s 5 ".kox[0:4]"  0.064522333443164825 1 1 0.0038643535226583481 
		0.0015156539157032967;
	setAttr -s 5 ".koy[0:4]"  0.99791622161865234 0 0 -0.99999254941940308 
		-0.99999886751174927;
createNode animCurveTL -n "animCurveTL114";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 1.9285312643244907 34 1.8804891613046311 
		38 1.8804891613046311 42 0.98399941235496613 45 0.39675617274677194;
	setAttr -s 5 ".kit[0:4]"  9 3 3 9 1;
	setAttr -s 5 ".kot[0:4]"  1 3 3 9 9;
	setAttr -s 5 ".kix[4]"  0.0017028696602210402;
	setAttr -s 5 ".kiy[4]"  -0.99999856948852539;
	setAttr -s 5 ".kox[0:4]"  0.014997471123933792 1 1 0.0015726080164313316 
		0.0017028696602210402;
	setAttr -s 5 ".koy[0:4]"  0.99988758563995361 0 0 -0.99999874830245972 
		-0.99999856948852539;
createNode animCurveTA -n "animCurveTA278";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 127.93155698441359 34 179.51411407679851 
		38 179.51411407679851 42 142.86454559201772 45 170.00466913248397;
	setAttr -s 5 ".kit[0:4]"  9 3 3 9 1;
	setAttr -s 5 ".kot[0:4]"  1 3 3 9 9;
	setAttr -s 5 ".kix[4]"  0.20655825734138489;
	setAttr -s 5 ".kiy[4]"  0.97843432426452637;
	setAttr -s 5 ".kox[0:4]"  0.16657325625419617 1 1 0.81488078832626343 
		0.20655825734138489;
	setAttr -s 5 ".koy[0:4]"  0.98602908849716187 0 0 -0.57962864637374878 
		0.97843432426452637;
createNode animCurveTA -n "animCurveTA279";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 14.298775322972585 34 21.933273374967278 
		38 21.933273374967278 42 47.259796426625591 45 155.21220731688962;
	setAttr -s 5 ".kit[0:4]"  9 3 3 9 1;
	setAttr -s 5 ".kot[0:4]"  1 3 3 9 9;
	setAttr -s 5 ".kix[4]"  0.053000446408987045;
	setAttr -s 5 ".kiy[4]"  0.99859446287155151;
	setAttr -s 5 ".kox[0:4]"  0.25970855355262756 1 1 0.099807672202587128 
		0.053000446408987045;
	setAttr -s 5 ".koy[0:4]"  0.96568703651428223 0 0 0.9950067400932312 
		0.99859446287155151;
createNode animCurveTA -n "animCurveTA280";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 108.93687351524544 34 182.11389856233805 
		38 182.11389856233805 42 140.96141764390649 45 256.24978493601725;
	setAttr -s 5 ".kit[0:4]"  9 3 3 9 1;
	setAttr -s 5 ".kot[0:4]"  1 3 3 9 9;
	setAttr -s 5 ".kix[4]"  0.049636546522378922;
	setAttr -s 5 ".kiy[4]"  0.99876737594604492;
	setAttr -s 5 ".kox[0:4]"  0.60511910915374756 1 1 0.17746871709823608 
		0.049636546522378922;
	setAttr -s 5 ".koy[0:4]"  -0.79613494873046875 0 0 0.98412644863128662 
		0.99876737594604492;
createNode animCurveTL -n "animCurveTL115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0.0083183721209911365 34 0.071556930711202144 
		38 0.83562804787812162 42 1.3210192156345211 45 0.99202369375397226;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.0030395416542887688;
	setAttr -s 5 ".kiy[4]"  -0.99999535083770752;
	setAttr -s 5 ".kox[0:4]"  0.045103032141923904 0.0032232825178653002 
		0.0021342465188354254 0.01491776667535305 0.0030395416542887688;
	setAttr -s 5 ".koy[0:4]"  -0.99898236989974976 0.99999481439590454 
		0.99999773502349854 0.99988871812820435 -0.99999535083770752;
createNode animCurveTL -n "animCurveTL116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 1.6501881857730392 34 1.6008878611251056 
		38 1.7496675521072207 42 1.7201396751474309 45 1.5488606182947475;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.0058383271098136902;
	setAttr -s 5 ".kiy[4]"  -0.99998295307159424;
	setAttr -s 5 ".kox[0:4]"  0.019477589055895805 0.026796601712703705 
		0.022356055676937103 0.011619000695645809 0.0058383271098136902;
	setAttr -s 5 ".koy[0:4]"  -0.99981027841567993 0.99964088201522827 
		0.99975007772445679 -0.99993246793746948 -0.99998295307159424;
createNode animCurveTL -n "animCurveTL117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0.7049352953668232 34 0.58714986694795601 
		38 0.35294822851503072 42 0.010432121051920961 45 0.1251616253833141;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.0087158242240548134;
	setAttr -s 5 ".kiy[4]"  0.99996209144592285;
	setAttr -s 5 ".kox[0:4]"  0.0097850626334547997 0.0075758188031613827 
		0.004623818676918745 0.010242967866361141 0.0087158242240548134;
	setAttr -s 5 ".koy[0:4]"  0.99995207786560059 -0.99997133016586304 
		-0.99998933076858521 -0.99994754791259766 0.99996203184127808;
createNode animCurveTA -n "animCurveTA281";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 -71.85952843948553 34 -42.219266303036427 
		38 -57.73770831691737 42 -44.269678971407899 45 -18.419062246226783;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.21639047563076019;
	setAttr -s 5 ".kiy[4]"  0.97630691528320313;
	setAttr -s 5 ".kox[0:4]"  0.97608441114425659 0.73436623811721802 
		0.99111509323120117 0.321917325258255 0.21639047563076019;
	setAttr -s 5 ".koy[0:4]"  -0.21739184856414795 0.67875343561172485 
		-0.13300685584545135 0.94676780700683594 0.97630691528320313;
createNode animCurveTA -n "animCurveTA282";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 21.100381668868643 34 12.770599044058409 
		38 -8.6223359866479257 42 -13.900678948012485 45 -17.553677062212497;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.84320110082626343;
	setAttr -s 5 ".kiy[4]"  -0.53759831190109253;
	setAttr -s 5 ".kox[0:4]"  0.28402692079544067 0.45718011260032654 
		0.49707412719726563 0.83151412010192871 0.84320110082626343;
	setAttr -s 5 ".koy[0:4]"  -0.9588162899017334 -0.88937413692474365 
		-0.86770808696746826 -0.55550360679626465 -0.53759831190109253;
createNode animCurveTA -n "animCurveTA283";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 -41.621372859563529 34 -28.629408208228583 
		38 -21.677548597396409 42 -37.303176912033315 45 -64.689000643641748;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.20478309690952301;
	setAttr -s 5 ".kiy[4]"  -0.97880738973617554;
	setAttr -s 5 ".kox[0:4]"  0.99364066123962402 0.60814595222473145 
		0.86963766813278198 0.29681703448295593 0.20478309690952301;
	setAttr -s 5 ".koy[0:4]"  0.11259749531745911 0.79382520914077759 
		-0.49369058012962341 -0.95493435859680176 -0.97880738973617554;
createNode animCurveTL -n "animCurveTL118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0.61370199524106794 34 0.77290696453185026 
		38 0.77290696453185026 42 0.67523920672500837 45 0.51431016321099332;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.0062137995846569538;
	setAttr -s 5 ".kiy[4]"  -0.99998068809509277;
	setAttr -s 5 ".kox[0:4]"  1 0.016747547313570976 0.027293277904391289 
		0.0090226884931325912 0.0062137995846569538;
	setAttr -s 5 ".koy[0:4]"  0 0.99985975027084351 -0.99962747097015381 
		-0.99995929002761841 -0.99998068809509277;
createNode animCurveTL -n "animCurveTL119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 -0.60952778167288313 34 -0.72161617034191983 
		38 -0.72161617034191983 42 -0.68704700568188104 45 -0.63008672717403769;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.017553392797708511;
	setAttr -s 5 ".kiy[4]"  0.99984592199325562;
	setAttr -s 5 ".kox[0:4]"  1 0.02378401905298233 0.07691153883934021 
		0.025484427809715271 0.017553392797708511;
	setAttr -s 5 ".koy[0:4]"  0 -0.999717116355896 0.99703794717788696 
		0.9996752142906189 0.99984592199325562;
createNode animCurveTL -n "animCurveTL120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 -1.0594809410537931 34 -0.35872267288917942 
		38 -0.35872267288917942 42 -0.68261236629178912 45 -1.2162916478243757;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.0018737815553322434;
	setAttr -s 5 ".kiy[4]"  -0.99999833106994629;
	setAttr -s 5 ".kox[0:4]"  1 0.0038053740281611681 0.0082329772412776947 
		0.0027208593674004078 0.0018737815553322434;
	setAttr -s 5 ".koy[0:4]"  0 0.99999278783798218 -0.9999660849571228 
		-0.99999630451202393 -0.99999827146530151;
createNode animCurveTL -n "animCurveTL121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 -0.17035258176403204 34 -0.55473831429552223 
		38 -0.20338426019301348 42 -0.69927219349984593 45 -0.20338426019301348;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.0020165808964520693;
	setAttr -s 5 ".kiy[4]"  0.99999797344207764;
	setAttr -s 5 ".kox[0:4]"  0.013342229649424553 0.080468781292438507 
		0.018446974456310272 1 0.0020165808964520693;
	setAttr -s 5 ".koy[0:4]"  0.99991101026535034 -0.9967571496963501 
		-0.99982982873916626 0 0.99999797344207764;
createNode animCurveTL -n "animCurveTL122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0.49809851355005846 34 -0.36803021915793865 
		38 -0.4270082140949466 42 -0.24365771711603501 45 -0.4270082140949466;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.0054539544507861137;
	setAttr -s 5 ".kiy[4]"  -0.99998509883880615;
	setAttr -s 5 ".kox[0:4]"  0.012598410248756409 0.0028825381305068731 
		0.021436039358377457 1 0.0054539544507861137;
	setAttr -s 5 ".koy[0:4]"  0.99992060661315918 -0.99999582767486572 
		0.99977022409439087 0 -0.99998509883880615;
createNode animCurveTL -n "animCurveTL123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 -1.3123242816818137 34 -1.2827918555567908 
		38 -0.84883719224141618 42 -0.78142738909302101 45 -0.84883719224141618;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.01483300793915987;
	setAttr -s 5 ".kiy[4]"  -0.99988996982574463;
	setAttr -s 5 ".kox[0:4]"  0.027752768248319626 0.0057533909566700459 
		0.0053187436424195766 1 0.01483300793915987;
	setAttr -s 5 ".koy[0:4]"  0.9996148943901062 0.99998342990875244 
		0.99998587369918823 0 -0.99988996982574463;
createNode animCurveTA -n "animCurveTA284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 -0.061808866237337522 34 -0.061808866237337522 
		38 -0.061808866237337522 42 -0.061808866237337522 45 -0.061808866237337522;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA285";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 -59.058178941076754 34 -59.058178941076754 
		38 -59.058178941076754 42 -59.058178941076754 45 -59.058178941076754;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA286";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 16.579147429757843 34 16.579147429757843 
		38 16.579147429757843 42 16.579147429757843 45 16.579147429757843;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 12.253734489678925 34 12.253734489678925 
		38 12.253734489678925 42 12.253734489678925 45 12.253734489678925;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA288";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 -65.746751280844961 34 -65.746751280844961 
		38 -65.746751280844961 42 -65.746751280844961 45 -65.746751280844961;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA289";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0 34 0 38 0 42 0 45 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA290";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 15.711328223519057 34 15.711328223519057 
		38 15.711328223519057 42 15.711328223519057 45 15.711328223519057;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA291";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 8.5572674112203622 34 8.5572674112203622 
		38 8.5572674112203622 42 8.5572674112203622 45 8.5572674112203622;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA292";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0 34 0 38 0 42 0 45 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA293";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0 34 0 38 0 42 0 45 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA294";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0 34 0 38 0 42 0 45 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA295";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0 34 0 38 0 42 0 45 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0 34 0 38 0 42 0 45 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0 34 0 38 0 42 0 45 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 8.2533422302317216 34 8.2533422302317216 
		38 8.2533422302317216 42 8.2533422302317216 45 8.2533422302317216;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 23.263402056531085 34 23.263402056531085 
		38 23.263402056531085 42 23.263402056531085 45 23.263402056531085;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 20.166277752815617 34 20.166277752815617 
		38 20.166277752815617 42 20.166277752815617 45 20.166277752815617;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0 34 0 38 0 42 0 45 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0 34 0 38 0 42 0 45 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA303";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 62.831333421814868 34 62.831333421814868 
		38 62.831333421814868 42 62.831333421814868 45 62.831333421814868;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA304";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA305";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA306";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA307";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA309";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 13.994403295754109 45 13.994403295754109;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA311";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 0 45 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA312";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  30 13.994403295754109 45 13.994403295754109;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA313";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0 34 0 38 0 42 0 45 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA314";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0 34 0 38 0 42 0 45 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA315";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 17.254116939558369 34 35.275586695455303 
		38 58.225806802564222 42 48.687377963035296 45 27.559304120705388;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.26173007488250732;
	setAttr -s 5 ".kiy[4]"  -0.96514111757278442;
	setAttr -s 5 ".kox[0:4]"  0.64668035507202148 0.34940844774246216 
		0.75153303146362305 0.39962473511695862 0.26173007488250732;
	setAttr -s 5 ".koy[0:4]"  0.76276111602783203 0.93697053194046021 
		0.65969544649124146 -0.91667884588241577 -0.96514111757278442;
createNode animCurveTA -n "animCurveTA316";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0 34 0 38 0 42 0 45 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA317";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0 34 0 38 0 42 0 45 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0 34 0 38 0 42 0 45 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 -1.3142242675248421 34 -3.1297765225698058 
		38 -1.3142242675248421 42 3.3551287120830531 45 7.4509356224652095;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.81351512670516968;
	setAttr -s 5 ".kiy[4]"  0.58154374361038208;
	setAttr -s 5 ".kox[0:4]"  0.99301391839981079 1 0.9205176830291748 
		0.83628475666046143 0.81351512670516968;
	setAttr -s 5 ".koy[0:4]"  -0.11799747496843338 0 0.39070090651512146 
		0.54829537868499756 0.58154374361038208;
createNode animCurveTA -n "animCurveTA320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 1.5170036283906083 34 1.0594906165205211 
		38 1.5170036283906083 42 -3.7381210511202156 45 1.517003628390609;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.7369612455368042;
	setAttr -s 5 ".kiy[4]"  0.67593502998352051;
	setAttr -s 5 ".kox[0:4]"  0.99955195188522339 1 0.95407086610794067 
		1 0.7369612455368042;
	setAttr -s 5 ".koy[0:4]"  -0.029930740594863892 0 -0.29958108067512512 
		0 0.67593502998352051;
createNode animCurveTA -n "animCurveTA321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 -10.310914718693907 34 -10.300416971909002 
		38 -10.310914718693907 42 -2.5480853234194947 45 -10.31091471869391;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.59384369850158691;
	setAttr -s 5 ".kiy[4]"  -0.8045804500579834;
	setAttr -s 5 ".kox[0:4]"  0.9999997615814209 1 0.89177596569061279 
		1 0.59384369850158691;
	setAttr -s 5 ".koy[0:4]"  0.00068707577884197235 0 0.45247724652290344 
		0 -0.8045804500579834;
createNode animCurveTA -n "animCurveTA322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 -1.2734920044837068 34 -34.739953161732302 
		38 -34.739953161732302 42 -28.843747299156103 45 -19.128455114960751;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.50798815488815308;
	setAttr -s 5 ".kiy[4]"  0.86136406660079956;
	setAttr -s 5 ".kox[0:4]"  0.41530823707580566 0.41530823707580566 
		0.93294167518615723 0.65044718980789185 0.50798815488815308;
	setAttr -s 5 ".koy[0:4]"  -0.90968072414398193 -0.90968072414398193 
		0.36002758145332336 0.75955146551132202 0.86136406660079956;
createNode animCurveTA -n "animCurveTA323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 1.71628531942149 34 5.4294076757324214 
		38 5.4294076757324214 42 1.293831252709609 45 -5.5204375414545357;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.64356034994125366;
	setAttr -s 5 ".kiy[4]"  -0.7653954029083252;
	setAttr -s 5 ".kox[0:4]"  0.97171664237976074 0.97171664237976074 
		0.96526545286178589 0.77362936735153198 0.64356034994125366;
	setAttr -s 5 ".koy[0:4]"  0.23614978790283203 0.23614978790283203 
		-0.2612711489200592 -0.63363838195800781 -0.7653954029083252;
createNode animCurveTA -n "animCurveTA324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 1.62960137906938 34 7.9326105662008661 
		38 7.9326105662008661 42 10.549531447909814 45 14.861482303626074;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.79901045560836792;
	setAttr -s 5 ".kiy[4]"  0.60131716728210449;
	setAttr -s 5 ".kox[0:4]"  0.92442852258682251 0.92442852258682251 
		0.98564708232879639 0.88784164190292358 0.79901045560836792;
	setAttr -s 5 ".koy[0:4]"  0.3813554048538208 0.3813554048538208 
		0.16881875693798065 0.46014916896820068 0.60131710767745972;
createNode animCurveTA -n "animCurveTA325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 -4.9668658878703695 34 -4.9668658878703695 
		38 -4.9668658878703695 42 -2.4497162360193876 45 1.6978395704231113;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.8100394606590271;
	setAttr -s 5 ".kiy[4]"  0.58637535572052002;
	setAttr -s 5 ".kox[0:4]"  1 1 0.98669934272766113 0.89495682716369629 
		0.8100394606590271;
	setAttr -s 5 ".koy[0:4]"  0 0 0.16255581378936768 0.44615277647972107 
		0.58637535572052002;
createNode animCurveTA -n "animCurveTA326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 -0.26727810118763035 34 -0.26727810118763035 
		38 -0.26727810118763035 42 -0.99006985171866857 45 -2.1810277158122067;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.97907257080078125;
	setAttr -s 5 ".kiy[4]"  -0.20351132750511169;
	setAttr -s 5 ".kox[0:4]"  1 1 0.99888288974761963 0.98990911245346069 
		0.97907257080078125;
	setAttr -s 5 ".koy[0:4]"  0 0 -0.047253761440515518 -0.14170365035533905 
		-0.20351132750511169;
createNode animCurveTA -n "animCurveTA327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 7.2769948266952458 34 7.2769948266952458 
		38 7.2769948266952458 42 7.3617361567699398 45 7.5013660755461613;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.99970316886901855;
	setAttr -s 5 ".kiy[4]"  0.024362780153751373;
	setAttr -s 5 ".kox[0:4]"  1 1 0.99998462200164795 0.99985921382904053 
		0.99970316886901855;
	setAttr -s 5 ".koy[0:4]"  0 0 0.0055462219752371311 0.016780566424131393 
		0.024362780153751373;
createNode animCurveTA -n "animCurveTA328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 -0.28960924554045031 34 -3.9089778276680462 
		38 -0.28960924554045031 42 10.212571474839791 45 6.2409872295913518;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.82185959815979004;
	setAttr -s 5 ".kiy[4]"  -0.56969010829925537;
	setAttr -s 5 ".kox[0:4]"  0.97307044267654419 1 0.73437273502349854 
		0.89852660894393921 0.82185959815979004;
	setAttr -s 5 ".koy[0:4]"  -0.23050786554813385 0 0.67874640226364136 
		0.43891900777816772 -0.56969010829925537;
createNode animCurveTA -n "animCurveTA329";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 1.0004288433953685 34 -0.93938225039595846 
		38 1.0004288433953685 42 -0.33691104042896436 45 1.7150038401932797;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.94144821166992188;
	setAttr -s 5 ".kiy[4]"  0.33715769648551941;
	setAttr -s 5 ".kox[0:4]"  0.99203670024871826 1 0.99922347068786621 
		0.99857461452484131 0.94144821166992188;
	setAttr -s 5 ".koy[0:4]"  -0.12594930827617645 0 0.039401032030582428 
		0.053373895585536957 0.33715769648551941;
createNode animCurveTA -n "animCurveTA330";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 1.7081671687900877 34 1.717971733762401 
		38 1.7081671687900877 42 11.426397800343507 45 0.96893438443926239;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.48049995303153992;
	setAttr -s 5 ".kiy[4]"  -0.87699472904205322;
	setAttr -s 5 ".kox[0:4]"  0.99999982118606567 1 0.8440239429473877 
		0.99847477674484253 0.48049995303153992;
	setAttr -s 5 ".koy[0:4]"  0.00064170715631917119 0 0.53630548715591431 
		-0.055210147053003311 -0.87699472904205322;
createNode animCurveTA -n "animCurveTA331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0 34 0 38 0 42 0 45 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0 34 0 38 0 42 0 45 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA333";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 27.080064458283051 34 31.562466922586957 
		38 31.562466922586957 42 31.562466922586957 45 31.562466922586957;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  0.95955878496170044 0.95955878496170044 
		1 1 1;
	setAttr -s 5 ".koy[0:4]"  0.28150823712348938 0.28150823712348938 
		0 0 0;
createNode animCurveTA -n "animCurveTA334";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 10.423754966968488 34 10.423754966968488 
		38 10.423754966968488 42 10.423754966968488 45 10.423754966968488;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA335";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 27.722848255843903 34 27.722848255843903 
		38 27.722848255843903 42 27.722848255843903 45 27.722848255843903;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA336";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 21.576484776388227 34 21.576484776388227 
		38 21.576484776388227 42 21.576484776388227 45 21.576484776388227;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0 34 0 38 0 42 0 45 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 0 34 0 38 0 42 0 45 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  30 103.10164643138992 34 103.10164643138992 
		38 103.10164643138992 42 64.452395289818625 45 0.76928092026835848;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.089608199894428253;
	setAttr -s 5 ".kiy[4]"  -0.99597710371017456;
	setAttr -s 5 ".kox[0:4]"  0.17439648509025574 1 0.36763679981231689 
		0.12954226136207581 0.089608199894428253;
	setAttr -s 5 ".koy[0:4]"  0.98467552661895752 0 -0.9299694299697876 
		-0.99157392978668213 -0.99597710371017456;
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
	setAttr ".o" 41;
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
connectAttr "apu_get_out_of_car_close_door_driverSource.st" "clipLibrary1.st[0]"
		;
connectAttr "apu_get_out_of_car_close_door_driverSource.du" "clipLibrary1.du[0]"
		;
connectAttr "animCurveTL83.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL84.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL85.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL86.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL87.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA227.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU17.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU18.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU19.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU20.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU21.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU22.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU23.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU24.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA228.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA229.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA230.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL88.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL89.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL90.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL91.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL92.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL93.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA231.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA232.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA233.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL94.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL95.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL96.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA234.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA235.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA236.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA237.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA238.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA239.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA240.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA241.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA242.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL97.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL98.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL99.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL100.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL101.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL102.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL103.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL104.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL105.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA243.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA244.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA245.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA246.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA247.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA248.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA249.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA250.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA251.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA252.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA253.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA254.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA255.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA256.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA257.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA258.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA259.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA260.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA261.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA262.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA263.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA264.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA265.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA266.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA267.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA268.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA269.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA270.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA271.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTL106.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTL107.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTL108.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA272.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA273.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA274.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL109.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL110.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL111.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA275.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA276.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA277.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL112.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL113.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL114.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA278.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA279.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA280.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL115.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL116.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL117.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA281.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA282.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA283.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL118.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL119.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL120.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL121.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL122.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL123.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA284.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA285.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA286.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA287.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA288.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA289.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA290.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA291.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA292.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA293.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA294.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA295.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA296.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA297.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA298.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA299.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA300.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA301.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA302.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA303.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA304.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA305.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA306.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA307.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA308.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA309.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA310.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA311.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA312.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA313.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA314.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA315.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA316.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA317.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA318.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA319.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA320.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA321.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA322.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA323.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA324.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA325.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA326.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA327.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA328.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA329.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA330.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA331.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA332.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA333.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA334.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA335.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA336.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA337.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA338.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA339.a" "clipLibrary1.cel[0].cev[161].cevr";
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
// End of apu_get_out_of_car_close_door_driver.ma
