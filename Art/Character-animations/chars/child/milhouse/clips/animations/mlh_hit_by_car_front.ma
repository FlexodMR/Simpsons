//Maya ASCII 4.0 scene
//Name: mlh_hit_by_car_front.ma
//Last modified: Tue, Jun 25, 2002 01:43:22 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.7";
requires "p3dDeformer" "17.1.0.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mlh_hit_by_car_frontSource";
	setAttr ".ihi" 0;
	setAttr ".du" 30;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.014912437301453059 1 0.014295036853758221 
		2 0.013677636386860934 3 0.013211436021901784 4 0.012540714615541453 5 0.013211436021901784 
		6 0.016855613063739418 7 0.021540983421681866 8 0.024924861999867744 9 0.025682695237786587 
		10 0.02513903670480289 11 0.024924861999867744 12 0.024751327089214126 13 
		0.024256174850119893 14 0.024960261248103438 15 0.028384442248683167 16 0.036523135030896103 
		17 0.048035598071086087 18 0.05943994928073159 19 0.067254306571311165 20 
		0.069987343865927101 21 0.069683673055414216 22 0.06816531900284982 23 0.067254306571311165 
		24 0.067254306571311165 25 0.067254306571311165 26 0.067254306571311165 27 
		0.067254306571311165 28 0.067254306571311165 29 0.067254306571311165 30 0.067254306571311165;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.026254147867437072 1 0.10748394239649532 
		2 0.18871373902450395 3 0.19156141924819411 4 -0.024970009945710196 5 -0.28609958578793071 
		6 -0.41243865258968443 7 -0.50003840587311055 8 -0.56677380728403093 9 -0.61364803818950198 
		10 -0.63965791356820445 11 -0.65966884548339522 12 -0.67542207073866078 13 
		-0.68478344303848337 14 -0.69680529979746431 15 -0.72053997843020423 16 -0.76469545520922821 
		17 -0.82234581062707823 18 -0.87909253842838275 19 -0.92053713235776979 20 
		-0.94109030226825097 21 -0.94901448186822768 22 -0.95068875068541281 23 -0.95249218824751924 
		24 -0.9547782757136466 25 -0.95459403971338741 26 -0.95335887798019414 27 
		-0.95249218824751924 28 -0.9520192774986832 29 -0.95136030350804301 30 -0.95102694019560574;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0;
createNode animCurveTU -n "animCurveTU25";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
createNode animCurveTU -n "animCurveTU26";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
createNode animCurveTU -n "animCurveTU27";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
createNode animCurveTU -n "animCurveTU28";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
createNode animCurveTU -n "animCurveTU29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 30 1;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 30 1;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU31";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.19763288944005308 3 -0.26100329779318865 
		5 -0.22984307513861427 8 -0.07890031622265109 11 -0.29356749040227537 15 
		-0.24988853634729297 19 -0.24988853634729297 23 -0.23484864491092097 27 -0.23484864491092097 
		30 -0.18720350650219833;
createNode animCurveTL -n "animCurveTL127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.36956228769602462 3 0.14082878674302646 
		5 0.48166791892789762 8 0.28922643113299151 11 0.25000845053648912 15 0.42007478037555551 
		19 0.62230946994555303 23 0.71033491311953201 27 0.49112642483840491 30 0.18407761067571052;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "animCurveTL128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.34271856858817051 3 0.35241875401764466 
		5 -0.032042120864177376 8 -0.59638138156064147 11 -0.7520798335358011 15 
		-0.86956602331592581 19 -1.3222117785799217 23 -1.3894239077480361 27 -1.2686042419336834 
		30 -1.2226494481474719;
createNode animCurveTA -n "animCurveTA356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 68.750149689121002 3 3.6180857726658608 
		5 4.3366230727406743 8 -57.228306706681913 11 -3.9389141797347134 15 13.040396336084999 
		19 -53.292876394065956 23 -81.527580602056773 27 -81.527580602056773 30 -14.120925422142024;
createNode animCurveTA -n "animCurveTA357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 7.5012435233160621 3 8.6515734723341939 
		5 -3.3415165699644831 8 12.62791967877172 11 5.6687226860530959 15 6.4840291755958859 
		19 5.5097074193930924 23 3.1755762055819257 27 3.1755762055819257 30 10.41569297971105;
createNode animCurveTA -n "animCurveTA358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 7.4568170664932873 5 9.3504770044768506 
		8 -4.2686102441939129 11 -1.8349578004426788 15 3.1567249586065125 19 -4.6556382838803723 
		23 -9.967377762212843 27 -9.967377762212843 30 -0.92396648882032695;
createNode animCurveTL -n "animCurveTL129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.27370329528033366 3 0.27370329528033366 
		5 0.27370329528033366 8 0.31906441089874865 11 0.38694972791979015 15 0.41013204463784009 
		19 0.41013204463784009 23 0.43672807478550374 27 0.43503966840991665 30 0.31408772304664229;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "animCurveTL130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.11742628606129618 3 0.11742628606129618 
		5 0.11742628606129618 8 0.20477701724300557 11 0.22493171487084862 15 0.3711492352326094 
		19 0.5288029693037567 23 0.65134282102848251 27 0.19067840532604188 30 0.16676410758846061;
	setAttr -s 10 ".kit[8:9]"  1 3;
	setAttr -s 10 ".kot[8:9]"  1 3;
	setAttr -s 10 ".kix[8:9]"  0.00764085678383708 1;
	setAttr -s 10 ".kiy[8:9]"  -0.99997079372406006 0;
	setAttr -s 10 ".kox[8:9]"  0.0076409797184169292 1;
	setAttr -s 10 ".koy[8:9]"  -0.99997079372406006 0;
createNode animCurveTL -n "animCurveTL131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.089378228552998554 3 -0.089378228552998554 
		5 -0.089378228552998554 8 -0.42295939547912709 11 -0.72946333364520433 15 
		-0.89838260730394648 19 -1.1544491885566186 23 -1.2999346784434611 27 -1.2077945119338895 
		30 -1.3387540959916819;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 0 8 -32.912181683227082 
		11 -13.731031561971051 15 3.1747665593958216 19 -78.189164039077127 23 -96.510156606451403 
		27 -37.267514348122283 30 -47.030685128504309;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -32.597249886621299 3 -32.597249886621299 
		5 -20.483483427354727 8 -20.483483427354713 11 -9.4507220819367124 15 -7.0310156624998585 
		19 -21.059755639399654 23 -3.6231842572067099 27 -29.540806004944898 30 -21.733570087519645;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 0 8 0 11 -5.1344106253780755 
		15 -4.3943231881368083 19 40.605453186308957 23 41.85075557884052 27 13.007345115065835 
		30 -0.22301602594868686;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 0 8 0 11 0 15 0 19 -0.40864513999961338 
		23 -0.40864513999961338 27 -0.40864513999961338 30 -0.40864513999961338;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "animCurveTL133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 0 8 0 11 0 15 0 19 0.011617857068574339 
		23 0.011617857068574339 27 0.011617857068574339 30 0.011617857068574339;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "animCurveTL134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 3 1 5 1 8 1 11 1 15 1 19 0.94963589092223599 
		23 0.94963589092223599 27 0.94963589092223599 30 0.94963589092223599;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "animCurveTL135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.61286360265336515 3 0.61286360265336515 
		5 0.61286360265336515 8 0.61286360265336515 11 0.61286360265336515 15 0.61286360265336515 
		19 0.81996708794027429 23 0.81996708794027429 27 0.81996708794027429 30 0.81996708794027429;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "animCurveTL136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 0 8 0 11 0 15 0 19 0.039118356651539815 
		23 0.039118356651539815 27 0.039118356651539815 30 0.039118356651539815;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "animCurveTL137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 3 1 5 1 8 1 11 1 15 1 19 0.79745410839398134 
		23 0.79745410839398134 27 0.79745410839398134 30 0.79745410839398134;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "animCurveTL138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.03051835782609956 3 0.027037252446569095 
		5 0.027037252446569095 8 0.051008821824450962 11 0.051008821824450962 15 
		0.058088865537437293 19 0.13763618594322471 23 0.13763618594322471 27 0.13763618594322471 
		30 0.13763618594322471;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "animCurveTL139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.76074829734573723 3 0.74020073319549839 
		5 0.72833266425152576 8 0.22164576428794394 11 0.46219315879802936 15 0.73500727855857706 
		19 0.29645936804171591 23 0.28031137988230137 27 0.28031137988230137 30 0.28031137988230137;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "animCurveTL140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.053729210245175789 3 0.39203114957755569 
		5 -0.58550385537072247 8 -1.1599046827489052 11 -1.3500147203455861 15 -1.4745877179715197 
		19 -1.8838826296200823 23 -1.9492787691164313 27 -1.9492787691164313 30 -1.946280133585006;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 20.950825280283908 3 20.468046657595618 
		5 -35.186909231752779 8 -70.764626878435507 11 -107.1045079719422 15 -97.968656908820648 
		19 -106.58297572753584 23 -91.514185928886306 27 -89.566052358770506 30 -86.635327210264862;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 -1.2199274115814716 8 
		-2.5229905542356734 11 -0.2661954676812045 15 1.4335928156981115 19 1.4335928156981128 
		23 1.4335928156981128 27 1.4335928156981157 30 1.4335928156981164;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 -3.1831570498392767 8 
		-6.1664788366876051 11 -0.59228064785724921 15 0.88505153303575546 19 0.8850515330357579 
		23 0.88505153303575512 27 0.88505153303575701 30 0.88505153303575668;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.0984482521620249 20 4.0984482521620249 
		30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 18.588300303494186 20 18.588300303494186 
		30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -22.686733334985114 20 -22.686733334985114 
		30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.0579251312417477e-005 20 1.0579251312417477e-005 
		30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.0984482535121209 20 4.0984482535121209 
		30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 18.588300300216801 20 18.588300300216801 
		30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -22.686733333057838 20 -22.686733333057838 
		30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.0579251312417477e-005 20 1.0579251312417477e-005 
		30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA397";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
createNode animCurveTA -n "animCurveTA398";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
createNode animCurveTA -n "animCurveTA399";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.21652235420099405 20 -0.21652235420099405 
		30 0;
createNode animCurveTA -n "animCurveTA400";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
createNode animCurveTA -n "animCurveTA401";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
createNode animCurveTA -n "animCurveTA402";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.0579251312417477e-005 20 1.0579251312417477e-005 
		30 1.0579251312417481e-005;
createNode animCurveTL -n "animCurveTL141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.99214331096561381 20 -0.99214331096561381 
		30 -0.99214331096561381;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.033841737269357866 20 -0.033841737269357866 
		30 -0.033841737269357866;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.027201153963313806 20 -0.027201153963313806 
		30 -0.027201153963313806;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.1805546814635164e-015 20 3.1805546814635164e-015 
		30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.016273151455886e-014 20 -1.016273151455886e-014 
		30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5.3764496942944332e-016 20 5.3764496942944332e-016 
		30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.99214413619678865 20 0.99214413619678865 
		30 0.99214413619678865;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.033851474715545553 20 -0.033851474715545553 
		30 -0.033851474715545553;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.0272011762672867 20 -0.0272011762672867 
		30 -0.0272011762672867;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 6.3611093629270264e-015 20 6.3611093629270264e-015 
		30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.5281705937149269e-014 20 1.5281705937149269e-014 
		30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.5365128437888133e-014 20 -1.5365128437888133e-014 
		30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1.3705977767760478 3 -1.3705977767760478 
		5 -1.3705977767760478 8 -1.3705977767760478 11 -1.3705977767760478 15 -1.3705977767760478 
		19 -1.3705977767760478 23 -1.3705977767760478 27 -1.3705977767760478 30 -1.2355216250307488;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "animCurveTL148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 2.1618658070195953 3 2.1618658070195953 
		5 2.1618658070195953 8 2.1618658070195953 11 2.1618658070195953 15 2.1618658070195953 
		19 2.1618658070195953 23 2.1618658070195953 27 2.1618658070195953 30 0.35282942294141945;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "animCurveTL149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.12044246479037771 3 -0.12044246479037771 
		5 -0.12044246479037771 8 -0.12044246479037771 11 -0.12044246479037771 15 
		-0.12044246479037771 19 -0.12044246479037771 23 -0.12044246479037771 27 -0.12044246479037771 
		30 -0.48416228445127502;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 0 8 0 11 0 15 0 19 0 
		23 0 27 0 30 -50.361592792450381;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 0 8 0 11 0 15 0 19 0 
		23 0 27 0 30 10.054523309489301;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 0 8 0 11 0 15 0 19 0 
		23 0 27 0 30 2.6526871509000878;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "animCurveTL150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.3705978542308779 3 1.3705978542308779 
		5 1.3705978542308779 8 1.3705978542308779 11 1.3705978542308779 15 1.3705978542308779 
		19 1.3705978542308779 23 1.3705978542308779 27 1.3705978542308779 30 1.5863752002046139;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "animCurveTL151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 2.1618621235956237 3 2.1618621235956237 
		5 2.1618621235956237 8 2.1618621235956237 11 2.1618621235956237 15 2.1618621235956237 
		19 2.1618621235956237 23 2.1618621235956237 27 2.1618621235956237 30 0.12980859841378986;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "animCurveTL152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.12044250833667494 3 -0.12044250833667494 
		5 -0.12044250833667494 8 -0.12044250833667494 11 -0.12044250833667494 15 
		-0.12044250833667494 19 -0.12044250833667494 23 -0.12044250833667494 27 -0.12044250833667494 
		30 -0.90890894826263013;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 0 8 0 11 0 15 0 19 0 
		23 0 27 0 30 -31.327774861751749;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 0 8 0 11 0 15 0 19 0 
		23 0 27 0 30 1.5331587519928691;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 0 8 0 11 0 15 0 19 0 
		23 0 27 0 30 -2.315047826080785;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "animCurveTL153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 0 8 0 11 0 15 0 19 0 
		23 0 27 0 30 0;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "animCurveTL154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 0 8 0 11 0 15 0 19 0 
		23 0 27 0 30 0;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "animCurveTL155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1 3 -1 5 -1 8 -1 11 -1 15 -1 
		19 -1 23 -1 27 -1 30 -1;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "animCurveTL156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 0 8 0 11 0 15 0 19 0 
		23 0 27 0 30 -0.44472090212388388;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "animCurveTL157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 0 8 0 11 0 15 0 19 0 
		23 0 27 0 30 1.2439946116996796;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTL -n "animCurveTL158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1 3 -1 5 -1 8 -1 11 -1 15 -1 
		19 -1 23 -1 27 -1 30 -2.3149332509255429;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -10.587124207154311 3 -25.524718457508669 
		5 -32.136477165240429 8 -13.377861165157606 11 -16.541018404830385 15 -24.055697347775201 
		19 -12.516362455261262 23 11.390651566663015 27 38.723321441716344 30 43.313055617354287;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -60.592711499848917 3 -31.804863512433617 
		5 25.757342118907136 8 0.13301071194332237 11 18.006129725403039 15 10.977859646239205 
		19 15.764457780676294 23 14.819730544747198 27 6.6922549613854576 30 5.5328457016804604;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.15003680417244822 3 14.670266066485587 
		5 56.52996592822916 8 8.7211300432757017 11 -39.353137709272197 15 -49.150671804225084 
		19 -21.852752118808052 23 -4.3345450029066317 27 -5.2478621427283301 30 1.6451165553684832;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 15.193242356562449 3 -65.921958939744698 
		5 -75.319505091592802 8 -43.473719563764668 11 2.9059806679360261 15 -13.59271083766517 
		19 0.49915946986314635 23 14.123246276223657 27 17.107919702379199 30 12.106481619659672;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -57.561344427126045 3 -12.220836808951587 
		5 -6.2256313781834436 8 -4.5024019120758281 11 12.787785143442541 15 10.897908688033123 
		19 5.3755423651902108 23 5.3478785462978555 27 14.430696843197373 30 21.161305136813468;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -21.45100553352173 3 68.240811646868792 
		5 54.619197102535765 8 1.943539100304255 11 -35.818721044703437 15 -65.272731771716451 
		19 -19.628218119829405 23 3.9692716764142464 27 0.50209528559733874 30 -21.207452285138618;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 72.938873120018542 3 40.052416930830731 
		5 40.052416930830731 8 40.052416930830731 11 40.052416930830731 15 21.083487472226977 
		19 54.205582930601544 23 27.479662735474207 27 50.185179027475691 30 9.342304586567403;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 59.305463658789549 3 20.147352157355904 
		5 20.147352157355904 8 20.147352157355904 11 20.147352157355904 15 20.147352157355904 
		19 62.430267940613589 23 14.326926958980696 27 39.452245543881432 30 14.326926958980691;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -17.955810303398234 3 -17.955810303398234 
		5 -17.955810303398234 8 -17.955810303398234 11 -17.955810303398234 15 -56.601256886501858 
		19 -56.601256886501858 23 -10.858794553148803 27 32.145951579643629 30 32.145951579643636;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 10.082003051124259 3 10.082003051124259 
		5 10.082003051124259 8 10.082003051124259 11 10.082003051124259 15 -23.614245994031467 
		19 -23.614245994031467 23 32.280238311234015 27 2.4180200242859695 30 2.4180200242859677;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -4.7201893288928654 3 -4.7201893288928654 
		5 -4.7201893288928654 8 -4.7201893288928654 11 -4.7201893288928654 15 -19.538901632475966 
		19 -19.538901632475966 23 -20.545617104936536 27 -14.081475378779396 30 -14.0814753787794;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 20.127263792592359 3 20.127263792592359 
		5 20.127263792592359 8 20.127263792592359 11 20.127263792592359 15 -3.2298967786902 
		19 -3.2298967786902 23 -30.713932163172853 27 71.390818193217299 30 71.390818193217257;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 11.615881410206432 3 11.615881410206432 
		5 11.615881410206432 8 11.615881410206432 11 11.615881410206432 15 22.782161578279986 
		19 22.782161578279986 23 7.71616624351865 27 -9.2933896978321862 30 -9.2933896978321879;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.32159281075535023 3 0.32159281075535023 
		5 0.32159281075535023 8 0.32159281075535023 11 0.32159281075535023 15 9.9856718424336908 
		19 9.9856718424336908 23 37.882987077505462 27 10.879224287148109 30 10.87922428714811;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -10.005190521057687 4 0 15 0 
		19 0 23 0 27 0 30 0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 35.147077759286937 4 0 15 0 19 
		0 23 0 27 0 30 0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.1421358835055 4 0 15 0 19 
		0 23 0 27 0 30 0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 15 0 19 0 23 0 27 0 30 
		0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 15 0 19 0 23 0 27 0 30 
		0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 62.885031326161304 4 0 15 0 19 
		0 23 0 27 0 30 0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA435";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA436";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA437";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA438";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA439";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 30 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 15 0 19 0 23 0 27 0 30 
		0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 15 0 19 0 23 0 27 0 30 
		0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 52.352413631135953 4 0 15 0 19 
		0 23 0 27 0 30 0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.2945941069882381 3 1.2945941069882381 
		5 1.2945941069882381 8 1.2945941069882381 11 1.2945941069882381 15 1.2945941069882381 
		19 1.2945941069882381 23 1.2945941069882381 27 1.2945941069882381 30 0;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 3.3208811165553147 3 3.3208811165553147 
		5 3.3208811165553147 8 3.3208811165553147 11 3.3208811165553147 15 3.3208811165553147 
		19 3.3208811165553147 23 3.3208811165553147 27 3.3208811165553147 30 0;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -27.525824477859967 3 -27.525824477859967 
		5 -27.525824477859967 8 -27.525824477859967 11 -27.525824477859967 15 -27.525824477859967 
		19 -27.525824477859967 23 -27.525824477859967 27 -27.525824477859967 30 0;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 -12.855111600967708 8 
		-16.532077709746389 11 -4.4201627002394721 15 -4.5851529176020884 19 -4.4887720394130319 
		23 -4.3577110954809113 27 -4.6297048981494919 30 -4.6297048981494955;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 13.808403839556966 8 
		9.0375228628901176 11 1.424055542772547 15 -0.73435142591604252 19 1.1897775362056582 
		23 1.605326406809757 27 0.35757313242625949 30 0.35757313242625977;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.97510462353592209 3 18.838634546566308 
		5 23.645669700883591 8 5.2492494677542547 11 5.0561461379694155 15 -21.846241100872774 
		19 -3.0211923416466639 23 4.0384817938896402 27 -8.3596211209238476 30 -8.3596211209238493;
	setAttr -s 10 ".kit[6:9]"  1 9 9 3;
	setAttr -s 10 ".kot[6:9]"  1 9 9 3;
	setAttr -s 10 ".kix[6:9]"  0.41517558693885803 0.94403499364852905 
		0.73323041200637817 1;
	setAttr -s 10 ".kiy[6:9]"  0.90974128246307373 -0.32984521985054016 
		-0.67998021841049194 0;
	setAttr -s 10 ".kox[6:9]"  0.41517564654350281 0.94403499364852905 
		0.73323041200637817 1;
	setAttr -s 10 ".koy[6:9]"  0.90974128246307373 -0.32984521985054016 
		-0.67998021841049194 0;
createNode animCurveTA -n "animCurveTA453";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 0 8 0 11 0.040577927395231195 
		15 0.040577927395231195 19 0.040577927395231195 23 0.040577927395231195 27 
		0.040577927395231195 30 0.040577927395231195;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 0 8 0 11 -0.76977674774379068 
		15 -0.76977674774379068 19 -0.76977674774379068 23 -0.76977674774379068 27 
		-0.76977674774379068 30 -0.76977674774379068;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 0 8 0 11 10.949080790025388 
		15 10.949080790025388 19 10.949080790025388 23 10.949080790025388 27 10.949080790025388 
		30 10.949080790025388;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 -1.4680370985295494 5 -16.12801845226884 
		8 -10.762355587455433 11 -4.7160677954150358 15 -11.902801028993096 19 -2.703761624118497 
		23 2.044245830239384 27 -23.51346744040535 30 -27.138591323308027;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA457";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 2.1209546558367354 5 -9.4113767097116146 
		8 -15.273036177574353 11 -34.154561059958006 15 -59.342125135635179 19 -38.322718025532126 
		23 -34.321206988389918 27 -38.486040092506308 30 -61.310693300052847;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -18.616622641828219 3 -25.619330231803964 
		5 16.38765146263756 8 -8.3106675778470311 11 17.326764017121917 15 -3.1941339271295104 
		19 -16.696396151146029 23 0.14213588563434096 27 25.859107043898931 30 16.177650372523711;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 0 8 0 11 0 15 0 19 0 
		23 0 27 0 30 0;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 0 5 0 8 0 11 0 15 0 19 0 
		23 0 27 0 30 0;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 5.671986885245901 3 5.671986885245901 
		5 18.412198326588783 8 25.883750953135394 11 0.81117129156829237 15 -1.7790740972447006 
		19 23.597107651620988 23 19.732474370873774 27 -9.9115268575895019 30 -9.9115268575895001;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[9]"  3;
createNode animCurveTA -n "animCurveTA462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 15 0 19 0 23 0 27 0 30 
		0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 15 0 19 0 23 0 27 0 30 
		0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 55.883450179029303 4 0 15 0 19 
		0 23 0 27 0 30 0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 6.142987402205569 4 0 15 0 19 
		0 23 0 27 0 30 0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 32.401919764767939 4 0 15 0 19 
		0 23 0 27 0 30 0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 7.2498182483981815 4 0 15 0 19 
		0 23 0 27 0 30 0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 15 0 19 0 23 0 27 0 30 
		0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 15 0 19 0 23 0 27 0 30 
		0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 41.434636178933715 4 0 15 0 19 
		0 23 0 27 0 30 0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
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
	setAttr -s 24 ".lnk";
select -ne :time1;
	setAttr ".o" 19;
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
connectAttr "mlh_hit_by_car_frontSource.st" "clipLibrary1.st[0]";
connectAttr "mlh_hit_by_car_frontSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL118.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL119.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU25.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU26.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU27.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU28.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU29.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU30.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU31.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU32.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA353.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA354.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA355.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL123.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL124.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL125.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL126.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL127.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL128.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA356.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA357.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA358.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL129.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL130.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL131.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA359.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA360.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA361.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA362.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA363.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA364.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA365.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA366.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA367.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA368.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA369.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA370.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA371.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA372.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA373.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL132.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL133.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL134.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL135.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL136.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL137.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL138.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL139.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL140.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA374.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA375.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA376.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA377.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA378.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA379.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA380.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA381.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA382.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA383.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA384.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA385.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA386.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA387.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA388.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA389.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA390.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA391.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA392.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA393.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA394.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA395.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA396.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA397.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA398.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA399.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA400.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA401.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA402.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL141.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL142.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL143.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA403.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA404.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA405.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL144.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL145.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL146.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA406.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA407.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA408.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL147.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL148.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL149.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA409.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA410.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA411.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL150.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL151.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL152.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA412.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA413.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA414.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL153.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL154.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL155.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL156.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL157.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL158.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA415.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA416.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA417.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA418.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA419.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA420.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA421.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA422.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA423.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA424.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA425.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA426.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA427.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA428.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA429.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA430.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA431.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA432.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA433.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA434.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA435.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA436.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA437.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA438.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA439.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA440.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA441.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA442.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA443.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA444.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA445.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA446.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA447.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA448.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA449.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA450.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA451.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA452.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA453.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA454.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA455.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA456.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA457.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA458.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA459.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA460.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA461.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA462.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA463.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA464.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA465.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA466.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA467.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA468.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA469.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA470.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of mlh_hit_by_car_front.ma
