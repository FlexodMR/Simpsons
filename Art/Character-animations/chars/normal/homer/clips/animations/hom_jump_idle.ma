//Maya ASCII 4.0 scene
//Name: hom_jump_idle.ma
//Last modified: Wed, Jul 03, 2002 02:10:14 PM
requires maya "4.0";
requires "p3dmayaexp" "17.7";
requires "p3dSimpleShader" "17.1";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_jump_idleSource";
	setAttr ".ihi" 0;
	setAttr ".du" 35;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL83";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 25 1 25.005 0 60 0;
createNode animCurveTL -n "animCurveTL84";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 29.995000000000001 0 30 1 43 
		1 43.005000000000003 0 60 0;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 3;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 3;
createNode animCurveTL -n "animCurveTL85";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 -0.05999433615776268;
createNode animCurveTL -n "animCurveTL86";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "animCurveTL87";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "animCurveTU17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "animCurveTU18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "animCurveTU19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "animCurveTU20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "animCurveTU21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "animCurveTU22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "animCurveTU23";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 1;
createNode animCurveTU -n "animCurveTU24";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 1;
createNode animCurveTA -n "animCurveTA228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "animCurveTL88";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "animCurveTL89";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "animCurveTL90";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "animCurveTL91";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.26454016861507795 3 -0.26454016861507795 
		5 -0.26454016861507795 8 -0.26454016861507795 14 -0.31725104109498431 17 
		-0.31725104109498431 20 -0.31725104109498431 23 -0.26454016861507795 26 -0.26454016861507795 
		30 -0.26454016861507795 35 -0.26454016861507795;
createNode animCurveTL -n "animCurveTL92";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.13806192026723146 3 0.13806192026723146 
		5 0.13806192026723146 8 0.25024140676749257 14 1.6679578282415088 17 2.4521962916630424 
		20 1.6410097867262148 23 0.25024140676749257 26 0.13806192026723146 30 0.13806192026723146 
		35 0.13806192026723146;
createNode animCurveTL -n "animCurveTL93";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.064904406754016042 3 -0.064904406754016042 
		5 -0.064904406754016042 8 -0.064904406754016042 14 -0.064904406754016042 
		17 -0.064904406754016042 20 -0.064904406754016042 23 -0.064904406754016042 
		26 -0.064904406754016042 30 -0.064904406754016042 35 -0.064904406754016042;
createNode animCurveTA -n "animCurveTA231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 8 33.524587236074879 
		14 45.395482630883009 17 45.395482630883009 20 45.395482630883009 23 33.524587236074879 
		26 0 30 0 35 0;
createNode animCurveTA -n "animCurveTA232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -25.948901905116401 3 -25.948901905116401 
		5 -25.948901905116401 8 -25.948901905116436 14 -25.948901905116436 17 -25.948901905116436 
		20 -25.948901905116436 23 -25.948901905116436 26 -25.948901905116401 30 -25.948901905116401 
		35 -25.948901905116401;
createNode animCurveTA -n "animCurveTA233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 8 8.8428853630020724e-016 
		14 0 17 0 20 0 23 8.8428853630020724e-016 26 0 30 0 35 0;
createNode animCurveTL -n "animCurveTL94";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.21594587158542247 3 0.21594587158542247 
		5 0.21594587158542247 8 0.21594587158542247 14 0.097599399483146443 17 0.097599399483146443 
		20 0.097599399483146443 23 0.21594587158542247 26 0.21594587158542247 30 
		0.21594587158542247 35 0.21594587158542247;
createNode animCurveTL -n "animCurveTL95";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.1380615615975922 3 0.1380615615975922 
		5 0.1380615615975922 8 0.22706731329490368 14 1.8414764696756538 17 2.1737980381980129 
		20 1.2432919104910243 23 0.22706731329490368 26 0.1380615615975922 30 0.1380615615975922 
		35 0.1380615615975922;
createNode animCurveTL -n "animCurveTL96";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.00078430246903575811 3 0.00078430246903575811 
		5 0.00078430246903575811 8 0.00078430246903575811 14 0.012972650604716892 
		17 0.012972650604716892 20 0.012972650604716892 23 0.00078430246903575811 
		26 0.00078430246903575811 30 0.00078430246903575811 35 0.00078430246903575811;
createNode animCurveTA -n "animCurveTA234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 8 24.970444786995326 
		14 24.970444786995326 17 24.970444786995326 20 24.970444786995326 23 24.970444786995326 
		26 0 30 0 35 0;
createNode animCurveTA -n "animCurveTA235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 8 0 14 0 17 0 20 0 
		23 0 26 0 30 0 35 0;
createNode animCurveTA -n "animCurveTA236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 8 0 14 0 17 0 20 0 
		23 0 26 0 30 0 35 0;
createNode animCurveTA -n "animCurveTA237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "animCurveTL97";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 8 0 14 0 17 0 20 0 
		23 0 26 0 30 0 35 0;
createNode animCurveTL -n "animCurveTL98";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 8 0 14 0 17 0 20 0 
		23 0 26 0 30 0 35 0;
createNode animCurveTL -n "animCurveTL99";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 3 1 5 1 8 1 14 1 17 1 20 1 
		23 1 26 1 30 1 35 1;
createNode animCurveTL -n "animCurveTL100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 8 0 14 0 17 0 20 0 
		23 0 26 0 30 0 35 0;
createNode animCurveTL -n "animCurveTL101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 8 0 14 0 17 0 20 0 
		23 0 26 0 30 0 35 0;
createNode animCurveTL -n "animCurveTL102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 3 1 5 1 8 1 14 1 17 1 20 1 
		23 1 26 1 30 1 35 1;
createNode animCurveTL -n "animCurveTL103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.076472881617957691 3 -0.076472881617957691 
		5 -0.049130353703033765 8 -0.13369034892066212 14 -0.13369034892066212 17 
		-0.13369034892066212 20 -0.13369034892066212 23 -0.13369034892066212 26 -0.025431552835330554 
		30 -0.025431552835330554 35 -0.076472881617957691;
createNode animCurveTL -n "animCurveTL104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.93105416142265018 3 0.71344218427604822 
		5 0.6677327674577066 8 1.0031609249341611 14 2.375335534501736 17 2.9388623146309891 
		20 2.045180565344181 23 1.0031609249341611 26 0.63588866910214858 30 0.59632499329921007 
		35 0.93105416142265018;
createNode animCurveTL -n "animCurveTL105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 -0.063653376984358648 
		8 0.017464518480061246 14 0.017464518480061246 17 0.017464518480061246 20 
		0.017464518480061246 23 0.017464518480061246 26 0.017464518480061246 30 0.05199572936433975 
		35 0;
createNode animCurveTA -n "animCurveTA243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.62843630316474508 3 19.142693504219984 
		5 19.142693504219984 8 17.474842794356544 14 17.474842794356544 17 25.270424258286365 
		20 6.7607833940922744 23 17.474842794356544 26 33.575114746149893 30 17.338018683488958 
		35 -0.62843630316474508;
createNode animCurveTA -n "animCurveTA244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -5.8284402688137158 3 7.6363030942392074 
		5 7.6363030942392074 8 -8.8386547514521681 14 -8.8386547514521681 17 -8.8386547514521716 
		20 -8.8386547514521716 23 -8.8386547514521681 26 -8.8386547514521681 30 -8.8386547514521698 
		35 -5.8284402688137158;
createNode animCurveTA -n "animCurveTA245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.2956360193097458 3 -1.2249945638543254 
		5 -1.2249945638543254 8 -1.401700779826746 14 -1.401700779826746 17 -1.4017007798267476 
		20 -1.4017007798267447 23 -1.401700779826746 26 -1.4017007798267471 30 -1.4017007798267491 
		35 -1.2956360193097458;
createNode animCurveTA -n "animCurveTA246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA251";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA252";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA253";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA254";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA265";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA270";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA271";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "animCurveTL106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0.27773886459742925;
createNode animCurveTA -n "animCurveTA272";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 -1.8121934161072303e-015;
createNode animCurveTA -n "animCurveTA273";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 28.652637602052774;
createNode animCurveTA -n "animCurveTA274";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 64.676908227303443;
createNode animCurveTL -n "animCurveTL109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0.5198069948790518;
createNode animCurveTL -n "animCurveTL110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0.36439499068905612;
createNode animCurveTA -n "animCurveTA275";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 7.7976222737965299;
createNode animCurveTA -n "animCurveTA276";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 -30.409274105849079;
createNode animCurveTA -n "animCurveTA277";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 -64.859940280210878;
createNode animCurveTL -n "animCurveTL112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -1.11516728567985 3 -1.1205314748450237 
		5 -1.1227692941999505 6 -1.1397293398630708 7 -1.2636534136082314 8 -1.2853249866743415 
		14 -1.9111665181261563 17 -1.9111665181261563 20 -1.540996105996209 23 -1.2853249866743415 
		26 -1.2437476478930722 30 -1.094321716361091 35 -1.11516728567985;
createNode animCurveTL -n "animCurveTL113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1.680120084755256 3 1.9536402686141674 
		5 1.9887262210701602 6 1.735594985900432 7 2.1200588943097078 8 3.6262445757076431 
		14 5.9471705532119863 17 6.0909308588101716 20 5.6658095780534952 23 3.6262445757076431 
		26 1.7652460831447434 30 1.321024642644951 35 1.680120084755256;
	setAttr -s 13 ".kit[6:12]"  1 9 1 9 9 9 9;
	setAttr -s 13 ".kot[6:12]"  1 9 1 9 9 9 9;
	setAttr -s 13 ".kix[6:12]"  0.0015112899709492922 0.0071081263013184071 
		0.0011924479622393847 0.00051274633733555675 0.00101219501812011 0.035220012068748474 
		0.0046412409283220768;
	setAttr -s 13 ".kiy[6:12]"  0.99999886751174927 -0.99997472763061523 
		-0.9999992847442627 -0.99999988079071045 -0.99999946355819702 -0.99937957525253296 
		0.99998921155929565;
	setAttr -s 13 ".kox[6:12]"  0.0015112694818526506 0.0071081263013184071 
		0.0011924715945497155 0.00051274633733555675 0.00101219501812011 0.035220012068748474 
		0.0046412409283220768;
	setAttr -s 13 ".koy[6:12]"  0.99999886751174927 -0.99997472763061523 
		-0.9999992847442627 -0.99999988079071045 -0.99999946355819702 -0.99937957525253296 
		0.99998921155929565;
createNode animCurveTL -n "animCurveTL114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.12935294465776678 3 -0.19176411719111433 
		5 -0.23569578523813395 6 0.38580373137917612 7 0.77449636839406899 8 0.57373411158886212 
		14 0.4162548509484259 17 0.4162548509484259 20 0.51253030415235323 23 0.57373411158886212 
		26 1.0310709434122636 30 0.10878999362962631 35 -0.12935294465776678;
createNode animCurveTA -n "animCurveTA278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 5.4739599453216474 3 -8.1492570622197924 
		5 -10.777635442045545 6 -0.091795462720500945 7 -107.50079121419958 8 203.29616150817324 
		14 355.40682522124308 17 355.40682522124308 20 265.38664450307868 23 203.29616150817324 
		26 175.02212409329022 30 -2.2858525737155211 35 5.4739599453216474;
createNode animCurveTA -n "animCurveTA279";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 8.5874521608419823 3 -12.580131082517163 
		5 -19.60838657863221 6 60.231674491711523 7 75.519527013699744 8 18.873869297163203 
		14 -0.72966292436582514 17 -0.72966292436582514 20 26.560962870255398 23 
		18.873869297163203 26 83.206271269743183 30 21.920823039224388 35 8.5874521608419823;
createNode animCurveTA -n "animCurveTA280";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 74.754744621954103 3 52.556631640725854 
		5 47.037326449225638 6 46.781596284357242 7 -49.473271648962353 8 267.00396766839077 
		14 340.92872154180628 17 340.92872154180628 20 291.5351185432786 23 267.00396766839077 
		26 228.49607683221174 30 63.767861304119783 35 74.754744621954103;
createNode animCurveTL -n "animCurveTL115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.80629961042890586 3 0.69815742927741609 
		5 0.62972051450184174 6 0.78800293922082121 7 0.58869807023586407 8 0.61829809359839349 
		14 0.75909353512165001 17 1.0169825520239741 20 0.56460458253921064 23 0.61829809359839349 
		26 0.69942134426829916 30 0.93194804157877398 35 0.80629961042890586;
createNode animCurveTL -n "animCurveTL116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1.6227248042492379 3 1.8004874239808319 
		5 1.9392596804022271 6 2.1141710125222009 7 2.8939448135364962 8 3.8341235189290548 
		14 6.3717910800990722 17 6.4786780968545772 20 5.7590188232817479 23 3.8341235189290548 
		26 2.5263230581660348 30 1.325967448930029 35 1.6227248042492379;
	setAttr -s 13 ".kit[8:12]"  1 9 9 9 9;
	setAttr -s 13 ".kot[8:12]"  1 9 9 9 9;
	setAttr -s 13 ".kix[8:12]"  0.0009250856819562614 0.00061867857584729791 
		0.00093029788695275784 0.003320041112601757 0.0056161712855100632;
	setAttr -s 13 ".kiy[8:12]"  -0.99999958276748657 -0.99999982118606567 
		-0.99999958276748657 -0.99999451637268066 0.99998420476913452;
	setAttr -s 13 ".kox[8:12]"  0.00092509685782715678 0.00061867857584729791 
		0.00093029788695275784 0.003320041112601757 0.0056161712855100632;
	setAttr -s 13 ".koy[8:12]"  -0.99999958276748657 -0.99999982118606567 
		-0.99999958276748657 -0.99999451637268066 0.99998420476913452;
createNode animCurveTL -n "animCurveTL117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.1889487664083056 3 -0.96143904315086182 
		5 -1.2305301728485847 6 0.54615533109546821 7 1.1757229392937485 8 1.086642504636298 
		14 1.2745090011588327 17 1.2745090011588327 20 1.1628545543775513 23 1.086642504636298 
		26 1.2860539209572559 30 0.72456368922519077 35 0.1889487664083056;
createNode animCurveTA -n "animCurveTA281";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 16.226511010665405 3 5.9457908485189757 
		5 -19.373362591877175 6 -91.383673617728618 7 -141.58743247397078 8 -182.24181070835974 
		14 -77.430026311369346 17 -77.430026311369346 20 -152.95594591729687 23 -182.24181070835974 
		26 -160.94411635920375 30 41.250298172852759 35 16.226511010665405;
createNode animCurveTA -n "animCurveTA282";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -8.513966085499284 3 5.8616938525988562 
		5 33.933090428125311 6 -61.469801957534479 7 -67.790123029814836 8 -29.375901232938066 
		14 -38.909732493840295 17 -38.909732493840295 20 -20.424303661984393 23 -29.375901232938066 
		26 -60.059760037825839 30 -43.043331242595734 35 -8.513966085499284;
createNode animCurveTA -n "animCurveTA283";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -68.213989601412422 3 -64.10596261988718 
		5 -69.616952960357494 6 25.978721245217486 7 63.066444801254143 8 92.079598666897553 
		14 53.7460000944439 17 53.7460000944439 20 79.672025696994183 23 92.079598666897553 
		26 105.30114519039343 30 -101.7168232792214 35 -68.213989601412422;
createNode animCurveTL -n "animCurveTL118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 -0.32423398987773122 5 -0.32423398987773122 
		7 1.0001518491461772 8 0.61523531760745109 14 0.67669596750602257 17 0.70885369846337054 
		20 1.2822956133089491 23 0.61523531760745109 26 0.67933526102439379 30 0.42062050077166918 
		35 0;
createNode animCurveTL -n "animCurveTL119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 -0.00095820691301058095 5 
		-0.00095820691301058095 7 -1.0038543773915318 8 -0.87006811234692638 14 -0.78499816805914546 
		17 -1.5412287014031916 20 -1.0737702647066605 23 -0.87006811234692638 26 
		-0.61126418571194108 30 -1.0585314575053304 35 0;
createNode animCurveTL -n "animCurveTL120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -1 3 -0.96206547053362468 5 -0.96206547053362468 
		7 -0.53569354614727294 8 0.18230531820690549 14 -1.3091734710152256 17 -0.60383208150038292 
		20 -0.14316140068345656 23 0.18230531820690549 26 -0.28762348084839168 30 
		-0.74513704754639065 35 -1;
createNode animCurveTL -n "animCurveTL121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.10167917362943303 3 0.25645365110509866 
		5 0.25645365110509866 7 -0.094784806728103993 8 -0.54637709585077632 14 -0.56848631319616827 
		17 -0.55644711180530215 20 -1.5713487230055165 23 -0.54637709585077632 26 
		-0.54637709585077632 30 -0.42980059184464886 35 -0.10167917362943303;
createNode animCurveTL -n "animCurveTL122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.40762644910266188 3 -0.25056684984309235 
		5 -0.25056684984309235 7 -0.33790093660831649 8 -0.45018761341892499 14 -0.47220696341125107 
		17 -0.77899571473861229 20 -1.0198074617040296 23 -0.45018761341892499 26 
		-0.45018761341892499 30 -0.84908542817043764 35 -0.40762644910266188;
createNode animCurveTL -n "animCurveTL123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.93129112588482243 3 -0.77238496324136852 
		5 -0.77238496324136852 7 -0.45509428466982044 8 -0.047149139642709344 14 
		-0.91671838971814257 17 -0.6805686873559762 20 -0.24957883152698465 23 -0.047149139642709344 
		26 -0.047149139642709344 30 -0.45954040267551421 35 -0.93129112588482243;
createNode animCurveTA -n "animCurveTA284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 12.253734489678925 3 12.253734489678925 
		5 12.253734489678925 8 12.253734489678925 14 12.253734489678925 17 12.253734489678925 
		20 12.253734489678925 23 12.253734489678925 26 12.253734489678925 30 12.253734489678925 
		35 12.253734489678925;
createNode animCurveTA -n "animCurveTA285";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -65.746751280844961 3 -65.746751280844961 
		5 -65.746751280844961 8 -65.746751280844961 14 -65.746751280844961 17 -65.746751280844961 
		20 -65.746751280844961 23 -65.746751280844961 26 -65.746751280844961 30 -65.746751280844961 
		35 -65.746751280844961;
createNode animCurveTA -n "animCurveTA286";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 3.871449260799477e-015 3 3.871449260799477e-015 
		5 3.871449260799477e-015 8 0 14 0 17 0 20 0 23 0 26 0 30 0 35 3.871449260799477e-015;
createNode animCurveTA -n "animCurveTA287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.061808866237337522 3 -0.061808866237337522 
		5 -0.061808866237337522 8 -0.061808866237337522 14 -0.061808866237337522 
		17 -0.061808866237337522 20 -0.061808866237337522 23 -0.061808866237337522 
		26 -0.061808866237337522 30 -0.061808866237337522 35 -0.061808866237337522;
createNode animCurveTA -n "animCurveTA288";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -59.058178941076754 3 -59.058178941076754 
		5 -59.058178941076754 8 -59.058178941076754 14 -59.058178941076754 17 -59.058178941076754 
		20 -59.058178941076754 23 -59.058178941076754 26 -59.058178941076754 30 -59.058178941076754 
		35 -59.058178941076754;
createNode animCurveTA -n "animCurveTA289";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 16.579147429757843 3 16.579147429757843 
		5 16.579147429757843 8 16.579147429757843 14 16.579147429757843 17 16.579147429757843 
		20 16.579147429757843 23 16.579147429757843 26 16.579147429757843 30 16.579147429757843 
		35 16.579147429757843;
createNode animCurveTA -n "animCurveTA290";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.5572674112203622 3 8.5572674112203622 
		5 8.5572674112203622 8 8.5572674112203622 14 8.5572674112203622 17 8.5572674112203622 
		20 8.5572674112203622 23 8.5572674112203622 26 8.5572674112203622 30 8.5572674112203622 
		35 8.5572674112203622;
createNode animCurveTA -n "animCurveTA291";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 15.711328223519057 3 15.711328223519057 
		5 15.711328223519057 8 15.711328223519057 14 15.711328223519057 17 15.711328223519057 
		20 15.711328223519057 23 15.711328223519057 26 15.711328223519057 30 15.711328223519057 
		35 15.711328223519057;
createNode animCurveTA -n "animCurveTA292";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 8 0 14 0 17 0 20 0 
		23 0 26 0 30 0 35 0;
createNode animCurveTA -n "animCurveTA293";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 8 0 14 0 17 0 20 0 
		23 0 26 0 30 0 35 0;
createNode animCurveTA -n "animCurveTA294";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 8 0 14 0 17 0 20 0 
		23 0 26 0 30 0 35 0;
createNode animCurveTA -n "animCurveTA295";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 8 0 14 0 17 0 20 0 
		23 0 26 0 30 0 35 0;
createNode animCurveTA -n "animCurveTA296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 8 0 14 0 17 0 20 0 
		23 0 26 0 30 0 35 0;
createNode animCurveTA -n "animCurveTA297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 8 0 14 0 17 0 20 0 
		23 0 26 0 30 0 35 0;
createNode animCurveTA -n "animCurveTA298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 10.423754966968488 3 10.423754966968488 
		5 10.423754966968488 8 10.423754966968488 14 10.423754966968488 17 10.423754966968488 
		20 10.423754966968488 23 10.423754966968488 26 10.423754966968488 30 10.423754966968488 
		35 10.423754966968488;
createNode animCurveTA -n "animCurveTA299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 27.722848255843903 3 27.722848255843903 
		5 27.722848255843903 8 27.722848255843903 14 27.722848255843903 17 27.722848255843903 
		20 27.722848255843903 23 27.722848255843903 26 27.722848255843903 30 27.722848255843903 
		35 27.722848255843903;
createNode animCurveTA -n "animCurveTA300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 21.576484776388227 3 21.576484776388227 
		5 21.576484776388227 8 21.576484776388227 14 21.576484776388227 17 21.576484776388227 
		20 21.576484776388227 23 21.576484776388227 26 21.576484776388227 30 21.576484776388227 
		35 21.576484776388227;
createNode animCurveTA -n "animCurveTA301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 8 0 14 0 17 0 20 0 
		23 0 26 0 30 0 35 0;
createNode animCurveTA -n "animCurveTA302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 8 0 14 0 17 0 20 0 
		23 0 26 0 30 0 35 0;
createNode animCurveTA -n "animCurveTA303";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 27.080064458283051 3 27.080064458283051 
		5 27.080064458283051 8 27.080064458283051 14 27.080064458283051 17 27.080064458283051 
		20 27.080064458283051 23 27.080064458283051 26 27.080064458283051 30 27.080064458283051 
		35 27.080064458283051;
createNode animCurveTA -n "animCurveTA304";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA305";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA306";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA307";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA309";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 13.994403295754109;
createNode animCurveTA -n "animCurveTA310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA311";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA312";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 13.994403295754109;
createNode animCurveTA -n "animCurveTA313";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 8 0 14 0 17 0 20 0 
		23 0 26 0 30 0 35 0;
createNode animCurveTA -n "animCurveTA314";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 8 0 14 0 17 0 20 0 
		23 0 26 0 30 0 35 0;
createNode animCurveTA -n "animCurveTA315";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 27.911632519594587 3 27.911632519594587 
		5 27.911632519594587 8 27.911632519594587 14 27.911632519594587 17 27.911632519594587 
		20 27.911632519594587 23 27.911632519594587 26 27.911632519594587 30 27.911632519594587 
		35 27.911632519594587;
createNode animCurveTA -n "animCurveTA316";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 8 0 14 0 17 0 20 0 
		23 0 26 0 30 0 35 0;
createNode animCurveTA -n "animCurveTA317";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 8 0 14 0 17 0 20 0 
		23 0 26 0 30 0 35 0;
createNode animCurveTA -n "animCurveTA318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 8 0 14 0 17 0 20 0 
		23 0 26 0 30 0 35 0;
createNode animCurveTA -n "animCurveTA319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.65073001024951671 3 10.1207529814846 
		5 13.570634708036236 8 -14.425261245079325 14 -12.719363359341042 17 -11.813848109325887 
		20 -14.013510719440543 23 -14.425261245079325 26 -12.113635669577173 30 -10.714872777561876 
		35 -0.65073001024951671;
createNode animCurveTA -n "animCurveTA320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -4.2368721935960929 3 -10.365900095405532 
		5 -12.423125319679864 8 6.0239174096818653 14 9.1212108868952519 17 10.273330499649077 
		20 6.9420793778327274 23 6.0239174096818653 26 9.9165287490088936 30 11.415932672543221 
		35 -4.2368721935960929;
createNode animCurveTA -n "animCurveTA321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.7398866450636881 3 9.8053663794099535 
		5 11.390287091014176 8 -4.9590391253115795 14 7.9274634641649815 17 13.29918009143004 
		20 -1.3136040778249372 23 -4.9590391253115795 26 11.588972347563887 30 19.135082160733532 
		35 8.7398866450636881;
createNode animCurveTA -n "animCurveTA322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 9.7461015610177899 5 11.557503357550281 
		8 17.954716557186721 14 17.954716557186721 17 17.954716557186721 20 17.954716557186721 
		23 17.954716557186721 26 17.954716557186721 30 17.954716557186721 35 0;
createNode animCurveTA -n "animCurveTA323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 -1.0673844657361999 5 -3.1688412273100357 
		8 -3.2201052527817797 14 -3.2201052527817797 17 -3.2201052527817797 20 -3.2201052527817797 
		23 -3.2201052527817797 26 -3.2201052527817797 30 -3.2201052527817797 35 0;
createNode animCurveTA -n "animCurveTA324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 2.8294496030905467 5 0.76384731436420761 
		8 3.8602612853971876 14 3.8602612853971876 17 3.8602612853971876 20 3.8602612853971876 
		23 3.8602612853971876 26 3.8602612853971876 30 3.8602612853971876 35 0;
createNode animCurveTA -n "animCurveTA325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 4.8714700432790456 3 45.787345594866231 
		5 47.481744818925876 8 0.23356891390585 14 -1.8407305152480318 17 -2.3715593253856859 
		20 0.80681541565989623 23 0.23356891390585 26 0.62307498924449312 30 -1.4508369211501928 
		35 4.8714700432790456;
createNode animCurveTA -n "animCurveTA326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 11.783606204137085 3 25.461188442217729 
		5 32.082483647490513 8 4.7287576809853551 14 4.3627792002344314 17 4.098888288877288 
		20 4.6654118715856354 23 4.7287576809853551 26 4.6934236991765266 30 4.5072159811770218 
		35 11.783606204137085;
createNode animCurveTA -n "animCurveTA327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 7.5423825101935913 3 33.354445909051684 
		5 30.444399019533108 8 10.380612968600056 14 -15.352953435553008 17 -22.538802206360906 
		20 17.372370727875897 23 10.380612968600056 26 15.120399238420569 30 -10.314115268782494 
		35 7.5423825101935913;
createNode animCurveTA -n "animCurveTA328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.8903601258661931 3 5.7599069849505806 
		5 8.2807808364287752 8 2.3560095647730765 14 3.2496807738085698 17 3.5413366073599297 
		20 3.2496807738085698 23 2.3560095647730765 26 2.3560095647730765 30 3.0484110609488067 
		35 -1.8903601258661931;
createNode animCurveTA -n "animCurveTA329";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.5597289571479034 3 2.0859470332814456 
		5 1.6139456640284986 8 3.2127302554539172 14 2.3047494432413189 17 1.8247668224603051 
		20 2.3047494432413189 23 3.2127302554539172 26 3.2127302554539172 30 2.5651507124587454 
		35 2.5597289571479034;
createNode animCurveTA -n "animCurveTA330";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.016811087403604 3 3.4837084790608288 
		5 3.9896563379082441 8 -6.9673245889253659 14 11.440162439863288 17 19.521707261379131 
		20 11.440162439863288 23 -6.9673245889253659 26 -6.9673245889253659 30 6.7054476954507267 
		35 2.016811087403604;
createNode animCurveTA -n "animCurveTA331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 8 0 14 0 17 0 20 0 
		23 0 26 0 30 0 35 0;
createNode animCurveTA -n "animCurveTA332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 8 0 14 0 17 0 20 0 
		23 0 26 0 30 0 35 0;
createNode animCurveTA -n "animCurveTA333";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 33.429092416277157 3 33.429092416277157 
		5 33.429092416277157 8 33.429092416277157 14 33.429092416277157 17 33.429092416277157 
		20 33.429092416277157 23 33.429092416277157 26 33.429092416277157 30 33.429092416277157 
		35 33.429092416277157;
createNode animCurveTA -n "animCurveTA334";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.2533422302317216 3 8.2533422302317216 
		5 8.2533422302317216 8 8.2533422302317216 14 8.2533422302317216 17 8.2533422302317216 
		20 8.2533422302317216 23 8.2533422302317216 26 8.2533422302317216 30 8.2533422302317216 
		35 8.2533422302317216;
createNode animCurveTA -n "animCurveTA335";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 23.263402056531085 3 23.263402056531085 
		5 23.263402056531085 8 23.263402056531085 14 23.263402056531085 17 23.263402056531085 
		20 23.263402056531085 23 23.263402056531085 26 23.263402056531085 30 23.263402056531085 
		35 23.263402056531085;
createNode animCurveTA -n "animCurveTA336";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 20.166277752815617 3 20.166277752815617 
		5 20.166277752815617 8 20.166277752815617 14 20.166277752815617 17 20.166277752815617 
		20 20.166277752815617 23 20.166277752815617 26 20.166277752815617 30 20.166277752815617 
		35 20.166277752815617;
createNode animCurveTA -n "animCurveTA337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 8 0 14 0 17 0 20 0 
		23 0 26 0 30 0 35 0;
createNode animCurveTA -n "animCurveTA338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 5 0 8 0 14 0 17 0 20 0 
		23 0 26 0 30 0 35 0;
createNode animCurveTA -n "animCurveTA339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 17.254116939558369 3 17.254116939558369 
		5 17.254116939558369 8 17.254116939558369 14 17.254116939558369 17 17.254116939558369 
		20 17.254116939558369 23 17.254116939558369 26 17.254116939558369 30 17.254116939558369 
		35 17.254116939558369;
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
connectAttr "hom_jump_idleSource.st" "clipLibrary1.st[0]";
connectAttr "hom_jump_idleSource.du" "clipLibrary1.du[0]";
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
// End of hom_jump_idle.ma
